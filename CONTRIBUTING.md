# Contributing

Thank you for considering a contribution to `harness-engineering-starter`.

This repository is a product-neutral starter. Contributions should improve the way new projects capture context, decisions, validation, handoff, and agent instructions before application code exists.

## Good Contributions

- Clearer bootstrap, migration, or cleanup guidance
- Better agent instruction hierarchy or verification rules
- Safer defaults for public starter reuse
- Documentation fixes that reduce ambiguity
- Small validation script improvements that do not assume a technical stack

## Out Of Scope

- Choosing a default application framework
- Adding product-specific implementation code
- Adding runtime dependencies before a real project needs them
- Turning the starter into a complete app scaffold
- Adding secrets, private contact details, or environment-specific values

## Before Opening A Pull Request

Run the baseline checks:

```bash
./init.sh
git diff --check
```

If you change `feature_list.json`, also run:

```bash
python3 -m json.tool feature_list.json
```

## Pull Request Expectations

- Keep each PR focused on one main change.
- Explain the problem being solved and the validation performed.
- Update `feature_list.json` when the change affects tracked starter behavior.
- Update `claude-progress.md` and `docs/session-handoff.md` when the change affects future handoff context.
- Do not mark a tracked item as `passing` without evidence.

## Working With Agents

Agent-assisted contributions are welcome when they leave reviewable evidence.

Before editing, agents should read:

1. `README.md`
2. `ARCHITECTURE.md`
3. `docs/INSTRUCTION_HIERARCHY.md`
4. `docs/AGENT_BEHAVIOR.md`
5. `docs/AGENT_WORKFLOWS.md`
6. Applicable scoped `AGENTS.md`, `CLAUDE.md`, and `DESIGN.md` files

Do not paste raw user prompts into project documents. Rewrite them into intent, decisions, non-goals, and validation criteria.

## Reporting Problems

Use GitHub issues for public bugs, documentation gaps, or unclear starter behavior. For security-sensitive reports, follow `SECURITY.md` instead.
