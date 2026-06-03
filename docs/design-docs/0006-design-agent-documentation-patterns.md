# Design Agent Documentation Patterns

## Status

Accepted

## Context

The starter already has a Google `design.md` compatible root `DESIGN.md` and a project-local `design-md` skill. A downstream project, `seoul-game-town`, has more mature design-agent documentation because it already has real app surfaces, official visual assets, scoped `DESIGN.md` files, and project-local UI skills.

The useful patterns should be back-ported without copying Seoul Game Town's brand, app model, technology stack, assets, or package structure.

## Decision

Generalize the documentation patterns, not the brand.

- Add a source-of-truth order to root `DESIGN.md`.
- Add `docs/DESIGN_SOURCES.md` as a neutral template for future assets, fonts, screenshots, and external reference models.
- Require external reference models to record both `Adopt` and `Do Not Adopt`.
- Clarify that scoped `DESIGN.md` files should record only local density, information architecture, interaction, platform constraints, and exceptions.
- Update the `design-md` skill so agents check design sources and source-of-truth order before changing tokens.
- Keep implementation packages, app directories, runtime asset paths, UI libraries, and stack-specific checks out of the starter until a real downstream project selects them.

## Consequences

- Future projects have a clearer path from product-neutral baseline to real design system.
- Agents get stronger conflict-resolution rules when root, scoped, source, and implementation documents disagree.
- External design examples can be used safely without silently copying brand identity.
- The starter remains stack-neutral and does not create placeholder packages.

## Alternatives

- Copy the mature downstream design system: rejected because it would import a specific brand and app model.
- Add app-specific `DESIGN.md` templates now: rejected because the starter has no repository shape or app surfaces yet.
- Add UI/UX third-party skills now: rejected because the current starter only needs the `design-md` maintenance skill; broader UI implementation skills belong in downstream projects with selected stacks.

## Rollback

Remove `docs/DESIGN_SOURCES.md`, remove the source-of-truth and reference-model additions from `DESIGN.md`, and revert the `docs/FRONTEND.md`, `docs/references/design-md.md`, `.codex/skills/design-md/SKILL.md`, `feature_list.json`, and `init.sh` references added by this decision.
