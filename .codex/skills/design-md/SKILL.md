# design-md

Use this skill when creating, reviewing, migrating, or validating a `DESIGN.md` file for a project or scoped UI surface.

## Purpose

Help maintain a `DESIGN.md` that coding agents can use reliably. The file should combine machine-readable design tokens in YAML frontmatter with human-readable design rationale in Markdown.

## Sources

- Primary format reference: <https://github.com/google-labs-code/design.md>
- Spec reference: <https://github.com/google-labs-code/design.md/blob/main/docs/spec.md>
- Example catalog: <https://github.com/VoltAgent/awesome-design-md>
- Local policy: `docs/references/design-md.md`

## When To Use

- A user asks to create or improve `DESIGN.md`.
- GUI work is about to start and the design baseline is weak or missing.
- A scoped UI surface needs its own `DESIGN.md`.
- A design system changed and token-level regressions should be checked.
- The repository needs a prompt-ready design summary for coding agents.

## Workflow

1. Read the root `DESIGN.md`.
2. If a target path is known, read every scoped `DESIGN.md` from the repository root down to that target path.
3. Read `docs/FRONTEND.md`, `docs/INSTRUCTION_HIERARCHY.md`, `docs/DESIGN_SOURCES.md`, and `docs/references/design-md.md`.
4. Identify whether the work is one of:
   - create a new baseline
   - migrate an existing file to the Google `design.md` structure
   - audit an existing file
   - compare two versions
   - draft an agent prompt guide
5. Preserve project facts. Do not invent brand identity, product tone, platform, or user persona when the project still marks those values as `TBD`.
6. Put exact design values in YAML frontmatter and explanatory rationale in Markdown body.
7. Keep section order close to:
   - `Overview`
   - `Colors`
   - `Typography`
   - `Layout`
   - `Elevation & Depth`
   - `Shapes`
   - `Components`
   - `Do's and Don'ts`
8. For scoped `DESIGN.md` files, document only the local density, information architecture, interaction, platform constraints, or exception. Do not copy the full root document into a scope.
9. If using external examples, record a reference model with both `Adopt` and `Do Not Adopt`. Treat VoltAgent examples as references only. Do not copy a real brand's visual identity into a project unless the user owns or explicitly chooses that brand direction.
10. If using assets, fonts, screenshots, or brand material, record the source, license, allowed use, and repository asset decision in `docs/DESIGN_SOURCES.md` before changing tokens.
11. Validate if possible.

## Source-Of-Truth Order

When design guidance conflicts, use this order:

1. Root `DESIGN.md`
2. Scoped `DESIGN.md` files from broadest to nearest target path
3. `docs/DESIGN_SOURCES.md`
4. Implemented design tokens or component packages, after a stack exists
5. Screen-level temporary decisions

If an exception is needed, write the reason and rollback path in the nearest scoped document or a design decision record.

## Optional Commands

Use the Google CLI when Node/npm and network access are available:

```bash
npx @google/design.md lint DESIGN.md
```

Compare two versions when reviewing a design migration:

```bash
npx @google/design.md diff DESIGN.md DESIGN-next.md
```

The CLI is optional in this starter. If it cannot run, report the reason and perform a manual structure review.

## Audit Checklist

- YAML frontmatter starts and ends with `---`.
- Frontmatter contains `name` and a useful `description`.
- Frontmatter includes useful `colors`, `typography`, `spacing`, `rounded`, and `components` tokens when applicable.
- Token references such as `{colors.primary}` resolve to defined tokens.
- Markdown body explains why tokens exist and how to apply them.
- Section order follows the spec closely enough for agents to skim.
- The source-of-truth order is explicit enough for agents to resolve conflicts.
- External references list both what to adopt and what not to adopt.
- Asset, font, and screenshot sources are recorded before brand-specific tokens are added.
- Accessibility expectations such as contrast, focus, touch targets, and overflow behavior are explicit.
- Scoped `DESIGN.md` files extend the root baseline instead of copying it wholesale.
- Brand-specific tokens from external examples are not copied without an explicit reason.

## Output Expectations

When changing files, summarize:

- what tokens or sections changed
- what source evidence or reference model was used
- what assumptions stayed `TBD`
- which validation ran
- what risk or trade-off remains
