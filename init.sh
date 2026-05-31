#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

required_files=(
  "AGENTS.md"
  "CLAUDE.md"
  "DESIGN.md"
  "README.md"
  "README.ko.md"
  "LICENSE"
  "ARCHITECTURE.md"
  "feature_list.json"
  "claude-progress.md"
  "docs/HARNESS.md"
  "docs/AGENT_BEHAVIOR.md"
  "docs/AGENT_WORKFLOWS.md"
  "docs/BOOTSTRAP.md"
  "docs/CLONE_CLEANUP.md"
  "docs/README_MIGRATION.md"
  "docs/INSTRUCTION_HIERARCHY.md"
  "docs/FRONTEND.md"
  "docs/OBSERVABILITY.md"
  "docs/PLANS.md"
  "docs/RELIABILITY.md"
  "docs/SECURITY.md"
  "docs/QUALITY_SCORE.md"
  "docs/clean-state-checklist.md"
  "docs/evaluator-rubric.md"
  "docs/session-handoff.md"
  "docs/product-specs/index.md"
  "docs/product-specs/project-foundation.md"
  "docs/design-docs/index.md"
  "docs/design-docs/0001-agent-readable-repository.md"
  "docs/design-docs/0002-scoped-agent-and-design-docs.md"
  "docs/design-docs/0003-agent-behavior-guardrails.md"
  "docs/design-docs/0004-agent-workflow-operating-model.md"
  "docs/references/README.md"
  "docs/references/avid-codex-builder-course.md"
  "docs/references/design-md.md"
  "docs/references/karpathy-guidelines.md"
  "scripts/README.md"
  "tests/README.md"
)

missing=0

for file in "${required_files[@]}"; do
  if [[ ! -s "$file" ]]; then
    echo "ERROR: required file is missing or empty: $file" >&2
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  exit 1
fi

if command -v python3 >/dev/null 2>&1; then
  python3 -m json.tool feature_list.json >/dev/null
  python3 - <<'PY'
import json
import sys

with open("feature_list.json", encoding="utf-8") as fh:
    data = json.load(fh)

errors = []
features = data.get("features")
rules = data.get("rules", {})
status_legend = data.get("status_legend", {})

if not isinstance(features, list) or not features:
    errors.append("feature_list.json must contain a non-empty features array.")

for required_rule in (
    "single_active_feature",
    "passing_requires_verification",
    "passing_requires_evidence",
):
    if rules.get(required_rule) is not True:
        errors.append(f"feature_list.json rules.{required_rule} must be true.")

allowed_statuses = set(status_legend)
active_ids = []

for index, feature in enumerate(features or []):
    label = feature.get("id", f"features[{index}]")
    for key in ("id", "title", "status", "user_visible_behavior", "verification", "evidence"):
        if key not in feature:
            errors.append(f"{label} is missing required key: {key}.")

    status = feature.get("status")
    if status not in allowed_statuses:
        errors.append(f"{label} has unknown status: {status}.")
    if status == "in_progress":
        active_ids.append(label)

    verification = feature.get("verification")
    if not isinstance(verification, list) or not verification:
        errors.append(f"{label} must have non-empty verification steps.")

    evidence = feature.get("evidence")
    if not isinstance(evidence, list):
        errors.append(f"{label} evidence must be an array.")
    elif status == "passing" and not evidence:
        errors.append(f"{label} is passing but has no evidence.")

if rules.get("single_active_feature") is True and len(active_ids) > 1:
    errors.append("Only one feature may be in_progress: " + ", ".join(active_ids))

if errors:
    for error in errors:
        print(f"ERROR: {error}", file=sys.stderr)
    sys.exit(1)
PY
else
  echo "WARN: python3 not found; skipped JSON syntax validation" >&2
fi

if [[ "$(head -n 1 DESIGN.md)" != "---" ]]; then
  echo "ERROR: DESIGN.md must start with YAML frontmatter." >&2
  exit 1
fi

for key in "version:" "name:" "description:"; do
  if ! grep -q "^${key}" DESIGN.md; then
    echo "ERROR: DESIGN.md frontmatter is missing ${key}" >&2
    exit 1
  fi
done

while IFS= read -r design_file; do
  if [[ "$(head -n 1 "$design_file")" != "---" ]]; then
    echo "ERROR: $design_file must start with YAML frontmatter." >&2
    exit 1
  fi
done < <(find . -name DESIGN.md -type f | sort)

echo "Harness starter baseline OK"
echo "Tech stack is not selected yet; app setup/build/test commands are intentionally undefined."
