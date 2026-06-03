# Harness Engineering Starter

<p align="center">
  <a href="https://github.com/hyeonbungi/harness-engineering-starter/commits/main">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/hyeonbungi/harness-engineering-starter?style=flat-square&label=last%20commit">
  </a>
  <img alt="Status: starter template" src="https://img.shields.io/badge/status-starter_template-2f80ed?style=flat-square">
  <img alt="Stack: TBD" src="https://img.shields.io/badge/stack-TBD-lightgrey?style=flat-square">
  <img alt="Validation: ./init.sh" src="https://img.shields.io/badge/validation-.%2Finit.sh-2ea44f?style=flat-square">
  <img alt="Agent docs: AGENTS.md plus CLAUDE.md" src="https://img.shields.io/badge/agent_docs-AGENTS.md%20%2B%20CLAUDE.md-7c3aed?style=flat-square">
  <a href="./LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-111827?style=flat-square">
  </a>
</p>

<p align="center">
  English | <a href="./README.ko.md">한국어</a>
</p>

> A starter for setting down project context, decisions, plans, and validation before writing application code.

`harness-engineering-starter` is a template for projects that have not chosen a product name, technical stack, or repository shape yet. It focuses on giving humans and coding agents the same starting context before implementation begins.

There is no application code in this repository. Product scope, repository structure, technical stack, and deployment target are meant to be decided after cloning this starter into a real project.

## At A Glance

| Area | Current Value |
| --- | --- |
| Purpose | Start new projects with shared context and validation habits |
| Product scope | TBD after cloning |
| Technical stack | TBD |
| Repository shape | TBD |
| Application code | None yet |
| Baseline validation | `./init.sh` |
| License | MIT |
| Primary author | [hyeonbungi](https://github.com/hyeonbungi) |

## Current State

- Current repository name: `harness-engineering-starter`
- Project name after cloning: TBD
- Product or domain: TBD
- Technical stack: TBD
- Repository shape: TBD
- Application code: none
- Baseline validation command: `./init.sh`

## Who This Is For

- Maintainers starting a new project with coding agents in the loop
- Teams that want project context, decision records, and validation habits before selecting a stack
- Repositories that need clear `AGENTS.md`, `CLAUDE.md`, and `DESIGN.md` hierarchy from day one
- Starter users who prefer explicit `TBD` fields over guessed product or architecture defaults

## Not For

- Projects that need a ready-made web app, API server, CLI, or package scaffold
- Teams that already know their stack and want framework-specific generators
- Repositories that should hide planning, handoff, or agent workflow documents from public view

## Repository Map

| Path | Purpose |
| --- | --- |
| `README.md` | Default English project entry point |
| `README.ko.md` | Korean version of the project entry point |
| `LICENSE` | MIT license text and copyright notice |
| `CONTRIBUTING.md` | Public contribution guidance for this starter |
| `SECURITY.md` | Public security reporting policy for this starter |
| `CHANGELOG.md` | Public change log before tagged releases exist |
| `.codex/skills/design-md/SKILL.md` | Codex skill for creating, auditing, and validating DESIGN.md files |
| `AGENTS.md` | Instructions read first by Codex and general coding agents |
| `CLAUDE.md` | Instructions for Claude Code |
| `ARCHITECTURE.md` | Place to record structure and dependency principles |
| `DESIGN.md` | Global design baseline for future GUI work |
| `feature_list.json` | Machine-readable tracking for features, documents, and decisions |
| `claude-progress.md` | Human-readable progress and handoff notes |
| `init.sh` | Baseline script that checks required files and document format |
| `docs/HARNESS.md` | Harness operating principles used by this starter |
| `docs/ENVIRONMENT.md` | Account, git, cloud CLI, and agent-execution conventions (template) |
| `docs/EXTENSIONS.md` | How to install skills, MCP, subagents, and hooks (team-shared, cross-agent) |
| `docs/README_STYLE.md` | README presentation patterns (badges, alerts, Mermaid, collapsibles) |
| `docs/DESIGN_SOURCES.md` | Template for future brand assets, fonts, screenshots, and reference models |
| `docs/AGENT_BEHAVIOR.md` | Rules for how agents handle assumptions, scope, and verification |
| `docs/AGENT_WORKFLOWS.md` | Task units, prompt structure, skills, parallelism, and verification rules |
| `docs/BOOTSTRAP.md` | First cleanup steps after copying this starter |
| `docs/CLONE_CLEANUP.md` | Cleanup checklist for removing starter-specific history after cloning |
| `docs/README_MIGRATION.md` | Checklist for turning the public README into a project-specific README |
| `docs/STARTER_COPY_SIMULATION.md` | Evidence template for checking whether the starter copies cleanly |
| `docs/INSTRUCTION_HIERARCHY.md` | How to resolve global and scoped instruction files |
| `docs/OBSERVABILITY.md` | Template for runtime signals and agent work traces |
| `docs/PLANS.md` | Minimum rules for writing execution plans |
| `docs/product-specs/` | Place to define product problem, users, and success criteria |
| `docs/design-docs/` | Place to record structural decisions that are hard to reverse |
| `docs/references/` | Long references and external link summaries |
| `docs/exec-plans/` | Active plans, completed plans, and technical debt notes |
| `docs/generated/` | Regenerable agent artifacts |
| `scripts/` | Future home for operational scripts after a stack is chosen |
| `tests/` | Future home for tests after a stack is chosen |

## Bootstrap

```bash
./init.sh
```

`init.sh` checks that required documents exist, `feature_list.json` is valid JSON, and `DESIGN.md` has the expected frontmatter. Build, test, and lint commands should be added after the technical stack is selected.

## How To Start A Real Project

1. Follow `docs/README_MIGRATION.md` and replace starter-specific README content with real project information.
2. Follow `docs/CLONE_CLEANUP.md` and reset starter-specific progress, handoff, and feature history.
3. Fill out `docs/product-specs/project-foundation.md` with the problem statement, target users, and first success criteria.
4. When repository structure becomes necessary, record the choice and boundaries in `ARCHITECTURE.md`.
5. When a technical stack is chosen, update `feature_list.json`, `init.sh`, and `docs/QUALITY_SCORE.md` together.
6. When GUI work begins, revise `DESIGN.md` for the actual brand and product tone.

## Maintenance Signals

- Baseline validation: `./init.sh`
- Contribution guide: [CONTRIBUTING.md](./CONTRIBUTING.md)
- Security policy: [SECURITY.md](./SECURITY.md)
- Change log: [CHANGELOG.md](./CHANGELOG.md)
- Starter copy simulation: [docs/STARTER_COPY_SIMULATION.md](./docs/STARTER_COPY_SIMULATION.md)

## Instruction And Design Hierarchy

Root-level `AGENTS.md`, `CLAUDE.md`, and `DESIGN.md` are the defaults for the whole repository. If the project grows into multiple apps, packages, libraries, or services, the same file names can be added under narrower paths.

```text
AGENTS.md
CLAUDE.md
DESIGN.md
path/to/scope/AGENTS.md
path/to/scope/CLAUDE.md
path/to/scope/DESIGN.md
```

Agents read the files from the repository root down to the target path. A scoped file does not replace the root document wholesale; it only adds or explicitly overrides rules for that scope.

Read `DESIGN.md` before creating or changing GUI surfaces. If the global design document is enough, note why. If a scope needs different design rules, add a scoped `DESIGN.md` there.

## Operating Rule

Do not paste user prompts directly into project documents. Rewrite them into intent, decisions, non-goals, and validation criteria, then place them in the relevant product spec, execution plan, or decision record.

## Author

- Original author and maintainer: [hyeonbungi](https://github.com/hyeonbungi)

This starter is maintained as a public project template. Project-specific forks should replace this section only when ownership is intentionally transferred.

## License

MIT. See [LICENSE](./LICENSE).
