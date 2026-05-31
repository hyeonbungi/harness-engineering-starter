# Starter Copy Simulation

This document records how the starter is checked as a clean copy target before it is used for a real project.

## Purpose

The simulation answers one question: if someone copies this repository without Git history, does the resulting workspace still contain the documents and validation hooks needed to start a new project?

It does not prove that a downstream product is ready. It only checks that the starter itself can be copied without hidden setup assumptions.

## Current Simulation

- Date: 2026-05-31
- Source repository: `hyeonbungi/harness-engineering-starter`
- Method: copy the working tree to a temporary directory while excluding `.git`
- Expected result: the copied workspace passes baseline validation and contains no obvious committed secrets

## Commands

```bash
tmp_dir="$(mktemp -d)"
rsync -a --exclude .git ./ "$tmp_dir/harness-engineering-starter-copy/"
cd "$tmp_dir/harness-engineering-starter-copy"
./init.sh
python3 -m json.tool feature_list.json >/dev/null
git init -q
git add .
git diff --check --cached
if rg -n --glob '!SECURITY.md' --glob '!docs/CLONE_CLEANUP.md' --glob '!docs/STARTER_COPY_SIMULATION.md' "(token|secret|password|api[_-]?key|credential)\\s*[:=]|BEGIN .*PRIVATE KEY" .; then
  echo "Review matches before committing."
else
  echo "No obvious secrets found."
fi
```

## What To Inspect Manually

- `README.md` and `README.ko.md` still describe the starter, not a downstream product.
- `docs/README_MIGRATION.md` explains how to replace the public README content.
- `docs/CLONE_CLEANUP.md` explains which starter history to keep, reset, decide, or remove.
- `CONTRIBUTING.md`, `SECURITY.md`, and `CHANGELOG.md` are appropriate for a public starter before a product stack exists.

## Known Limits

- The simulation does not create a new GitHub repository.
- The simulation does not publish a release.
- The simulation does not choose a technical stack or run application tests.
- Downstream projects must replace starter-specific progress and feature history before presenting the copy as a real product.
