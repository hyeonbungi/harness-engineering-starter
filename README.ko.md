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
  <a href="./README.md">English</a> | 한국어
</p>

> 새 프로젝트를 시작하기 전에 맥락, 결정, 계획, 검증 방법을 먼저 정리해두는 스타터입니다.

`harness-engineering-starter`는 아직 제품명도, 기술 스택도 정하지 않은 상태에서 시작하는 프로젝트용 템플릿입니다. 코드를 먼저 만들기보다 에이전트와 사람이 같은 문맥을 읽고, 무엇을 만들지와 어떻게 검증할지를 먼저 정리하는 데 초점을 둡니다.

현재 이 저장소에는 애플리케이션 코드가 없습니다. 제품명, 저장소 구조, 기술 스택, 배포 대상은 이 스타터를 복사한 뒤 실제 프로젝트에 맞게 정합니다.

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

- 현재 저장소 이름: `harness-engineering-starter`
- 복제 후 프로젝트 이름: TBD
- 제품 또는 도메인: TBD
- 기술 스택: TBD
- 저장소 구조: TBD
- 구현 코드: 없음
- 기본 검증 명령: `./init.sh`

## Who This Is For

- 코딩 에이전트를 함께 사용하며 새 프로젝트를 시작하는 maintainer
- 스택을 고르기 전에 프로젝트 맥락, 결정 기록, 검증 습관을 먼저 세우고 싶은 팀
- 처음부터 `AGENTS.md`, `CLAUDE.md`, `DESIGN.md` 계층을 명확히 두고 싶은 저장소
- 제품이나 구조를 추측으로 채우기보다 `TBD`를 명시적으로 남기고 싶은 스타터 사용자

## Not For

- 바로 실행되는 웹앱, API 서버, CLI, 패키지 scaffold가 필요한 프로젝트
- 이미 기술 스택이 정해져 있고 프레임워크 전용 generator를 원하는 팀
- 계획, 인계, 에이전트 workflow 문서를 공개 저장소에 두면 안 되는 프로젝트

## Repository Map

| Path | Purpose |
| --- | --- |
| `README.md` | 영어 기본 프로젝트 진입점 |
| `README.ko.md` | 한국어 프로젝트 진입점 |
| `LICENSE` | MIT 라이선스 전문과 저작권 고지 |
| `CONTRIBUTING.md` | 이 스타터에 대한 공개 기여 가이드 |
| `SECURITY.md` | 이 스타터에 대한 공개 보안 신고 정책 |
| `CHANGELOG.md` | 태그 릴리스 전까지의 공개 변경 기록 |
| `.codex/skills/design-md/SKILL.md` | `DESIGN.md` 작성, 감사, 검증을 돕는 Codex skill |
| `.claude/skills` | 커밋된 Codex skill을 Claude Code에 노출하는 symlink |
| `AGENTS.md` | Codex와 범용 코드 에이전트가 먼저 읽는 작업 지침 |
| `CLAUDE.md` | Claude Code용 작업 지침 |
| `ARCHITECTURE.md` | 구조와 의존성 원칙을 기록하는 자리 |
| `DESIGN.md` | GUI 작업이 생겼을 때 읽는 전역 디자인 기준 |
| `feature_list.json` | 기능, 문서, 결정 상태를 기계가 읽을 수 있게 추적 |
| `claude-progress.md` | 사람이 읽는 진행 상태와 다음 세션 인계 |
| `init.sh` | 현재 문서 세트와 기본 형식을 확인하는 검증 스크립트 |
| `docs/HARNESS.md` | 이 스타터가 따르는 하네스 운영 원칙 |
| `docs/ENVIRONMENT.md` | 계정, git, cloud CLI, 에이전트 실행 규약 템플릿 |
| `docs/EXTENSIONS.md` | skill, MCP, subagent, hook을 팀 공유 방식으로 설치하는 규약 |
| `docs/README_STYLE.md` | README 표현 패턴과 시각 요소 기준 |
| `docs/DESIGN_SOURCES.md` | 향후 브랜드 자산, 폰트, screenshot, reference model을 기록하는 템플릿 |
| `docs/TECHNICAL_DECISIONS.md` | 스택과 아키텍처 결정 요약을 모으는 템플릿 |
| `docs/TECHNICAL_DECISION_BACKLOG.md` | open, accepted, deferred 기술 결정을 추적하는 템플릿 |
| `docs/VALIDATION.md` | 스타터 기준선부터 runtime/release까지의 검증 ladder |
| `docs/AGENT_BEHAVIOR.md` | 에이전트가 가정, 범위, 검증을 다루는 기준 |
| `docs/AGENT_WORKFLOWS.md` | 작업 단위, 프롬프트 구조, skill, 병렬화, 검증 기준 |
| `docs/BOOTSTRAP.md` | 새 프로젝트로 복사한 뒤 처음 정리할 순서 |
| `docs/CLONE_CLEANUP.md` | 복제 후 스타터 제작 이력을 정리하는 체크리스트 |
| `docs/README_MIGRATION.md` | 공개 README를 실제 프로젝트용으로 바꾸는 체크리스트 |
| `docs/STARTER_COPY_SIMULATION.md` | 스타터가 깨끗하게 복사되는지 확인하는 증거 템플릿 |
| `docs/INSTRUCTION_HIERARCHY.md` | 전역/스코프 지침 문서를 해석하는 방법 |
| `docs/FRONTEND.md` | Frontend와 scoped `DESIGN.md` 운영 기준 |
| `docs/VISUAL_VALIDATION.md` | 향후 GUI scaffold의 시각 검증 템플릿 |
| `docs/OBSERVABILITY.md` | 런타임 신호와 에이전트 작업 흔적을 남기는 템플릿 |
| `docs/PLANS.md` | 실행 계획을 쓸 때의 최소 기준 |
| `docs/product-specs/` | 제품 문제, 사용자, 성공 기준을 적는 위치 |
| `docs/design-docs/` | 되돌리기 어려운 구조적 결정을 남기는 위치 |
| `docs/references/` | 긴 참고 자료와 외부 링크 요약 |
| `docs/exec-plans/` | 활성 계획, 완료 계획, 기술 부채 기록 |
| `docs/generated/` | 다시 만들 수 있는 에이전트 산출물 위치 |
| `scripts/` | 스택이 정해진 뒤 운영 스크립트를 둘 위치 |
| `tests/` | 스택이 정해진 뒤 테스트를 둘 위치 |

## Bootstrap

```bash
./init.sh
```

`init.sh`는 필요한 문서가 빠지지 않았는지, `feature_list.json`이 유효한 JSON인지, `DESIGN.md`가 기본 frontmatter를 갖췄는지 확인합니다. 빌드, 테스트, 린트 명령은 기술 스택이 정해진 뒤 추가합니다.

## How To Start A Real Project

1. `docs/README_MIGRATION.md`를 따라 공개 README에서 스타터 흔적을 실제 프로젝트 정보로 바꿉니다.
2. `docs/CLONE_CLEANUP.md`를 따라 스타터 제작 이력, 진행 기록, feature history를 초기화합니다.
3. `docs/product-specs/project-foundation.md`에 문제 정의, 대상 사용자, 첫 성공 기준을 적습니다.
4. 저장소 구조가 필요해지는 시점에 `ARCHITECTURE.md`에 선택 이유와 경계를 기록합니다.
5. 기술 선택이 구체화되면 `docs/TECHNICAL_DECISIONS.md`와 `docs/TECHNICAL_DECISION_BACKLOG.md`를 갱신합니다.
6. 기술 스택을 고르면 `feature_list.json`, `init.sh`, `docs/VALIDATION.md`, `docs/QUALITY_SCORE.md`도 함께 갱신합니다.
7. GUI 작업이 시작되면 `DESIGN.md`를 실제 브랜드와 제품 톤에 맞게 고치고, `docs/VISUAL_VALIDATION.md`를 실제 검증에 연결합니다.

## Maintenance Signals

- 기본 검증: `./init.sh`
- 기여 가이드: [CONTRIBUTING.md](./CONTRIBUTING.md)
- 보안 정책: [SECURITY.md](./SECURITY.md)
- 변경 기록: [CHANGELOG.md](./CHANGELOG.md)
- 스타터 복사 시뮬레이션: [docs/STARTER_COPY_SIMULATION.md](./docs/STARTER_COPY_SIMULATION.md)

## Instruction And Design Hierarchy

루트의 `AGENTS.md`, `CLAUDE.md`, `DESIGN.md`는 저장소 전체에 적용되는 기본값입니다. 프로젝트가 여러 앱, 라이브러리, 패키지, 서비스로 나뉘면 하위 경로에 같은 이름의 문서를 둘 수 있습니다.

```text
AGENTS.md
CLAUDE.md
DESIGN.md
path/to/scope/AGENTS.md
path/to/scope/CLAUDE.md
path/to/scope/DESIGN.md
```

에이전트는 작업 대상 파일을 기준으로 루트에서 대상 경로까지의 문서를 순서대로 읽습니다. 하위 경로 문서는 전역 문서를 통째로 대체하지 않고, 그 범위에 필요한 규칙만 추가하거나 명시적으로 덮어씁니다.

GUI를 만들거나 수정할 때는 `DESIGN.md`를 읽습니다. 전역 `DESIGN.md`만으로 충분하면 그 이유를 남기고, 범위별 차이가 있으면 해당 경로에 전용 `DESIGN.md`를 둡니다.

## Operating Rule

사용자 프롬프트를 그대로 붙여 넣지 않습니다. 의도, 결정, 비목표, 검증 기준으로 정리한 뒤 제품 명세, 실행 계획, 결정 기록 중 맞는 위치에 반영합니다.

## Author

- Original author and maintainer: [hyeonbungi](https://github.com/hyeonbungi)

This starter is maintained as a public project template. Project-specific forks should replace this section only when ownership is intentionally transferred.

## License

MIT. 자세한 내용은 [LICENSE](./LICENSE)를 참고하세요.
