# Design.md Spec-Compatible Baseline

## Status

Accepted

## Context

The starter already required `DESIGN.md` for GUI work, but the root file used mostly prose and a small custom frontmatter shape. That made it useful for humans, but weaker for coding agents and external validators that expect structured design tokens.

Two external references matter for future work:

- `google-labs-code/design.md` defines a structured `DESIGN.md` format with YAML design tokens and Markdown rationale.
- `VoltAgent/awesome-design-md` provides sample `DESIGN.md` files extracted from public product styles.

The starter must support these references without inventing a product brand or copying a real company's visual identity.

## Decision

Keep `DESIGN.md` as a required root artifact, but make the baseline compatible with the Google `design.md` structure.

- Put machine-readable tokens in YAML frontmatter.
- Keep the Markdown body in Korean for the current working language.
- Use the Google section order where practical.
- Treat the Google CLI as optional validation, not a required project dependency.
- Treat VoltAgent examples as references only, not reusable brand assets.
- Add a project-local Codex skill at `.codex/skills/design-md/SKILL.md` to guide creation, audit, migration, and optional validation.

## Consequences

- Coding agents can consume exact color, typography, spacing, radius, and component tokens.
- The starter remains product-neutral because all token values are explicitly temporary.
- `DESIGN.md` becomes easier to lint or diff when Node/npm access is available.
- The repository now contains one project-local Codex skill, so extension hygiene matters more.

## Alternatives

- Keep the old prose-first `DESIGN.md`: simpler, but weaker for automated validation.
- Add `@google/design.md` as a package dependency: stronger validation, but premature because the starter has no selected stack.
- Copy a sample from `awesome-design-md`: faster, but risks brand confusion and violates the starter's product-neutral stance.

## Rollback

Remove `.codex/skills/design-md/SKILL.md`, revert `DESIGN.md` to the previous prose-first baseline, and remove the `docs/FRONTEND.md`, `docs/EXTENSIONS.md`, `feature_list.json`, and `init.sh` references added for this decision.
