# Harness Starter Agent Instructions

이 저장소는 특정 제품을 넣기 전의 하네스 엔지니어링 스타터입니다. 에이전트의 목적은 구현을 서두르는 것이 아니라, 새 프로젝트가 추측 없이 시작될 수 있도록 문맥, 결정, 검증 방법을 정리하는 것입니다.

> **교차 에이전트 작업 전제**: 이 저장소는 Claude Code·Codex 등 여러 에이전트가 함께 작업할 수 있습니다. `AGENTS.md`는 모든 에이전트의 공통 정본이고 `CLAUDE.md`는 Claude 전용입니다. 한 에이전트의 작업물(문서·코드·결정)은 다른 에이전트가 리뷰할 수 있으니, 에이전트 전용 맥락(세션·메모리)에만 기대지 말고 판단 근거·결정을 공유 문서(`AGENTS.md`·`CLAUDE.md`·`docs/`)에 남겨 검증·인계가 되게 작업합니다.

## Startup Order

1. `README.md`에서 현재 프로젝트 상태를, [`docs/ENVIRONMENT.md`](docs/ENVIRONMENT.md)에서 계정·git·클라우드·에이전트 실행 규약을 확인합니다.
2. `ARCHITECTURE.md`에서 구조와 의존성 원칙을 확인합니다.
3. `docs/INSTRUCTION_HIERARCHY.md`에서 전역/스코프 문서 해석 규칙을 확인합니다.
4. `docs/AGENT_BEHAVIOR.md`에서 에이전트 행동 기준을 확인합니다.
5. `docs/AGENT_WORKFLOWS.md`에서 작업 단위, 표면 선택, 검증 기준을 확인합니다.
6. 작업 대상 경로가 정해져 있으면 루트에서 대상 경로까지의 `AGENTS.md`, `CLAUDE.md`, `DESIGN.md`를 순서대로 찾습니다.
7. 제품 범위 작업이면 `docs/product-specs/`를 먼저 읽습니다.
8. 실행 계획이 필요한 작업이면 `docs/PLANS.md`와 `docs/exec-plans/`를 확인합니다.
9. GUI 또는 디자인 작업이면 적용 가능한 모든 `DESIGN.md`와 `docs/FRONTEND.md`를 확인합니다.
10. `feature_list.json`, `claude-progress.md`, `docs/session-handoff.md`에서 현재 진행 상태를 확인합니다.
11. 변경 후 가능한 경우 `./init.sh`를 실행합니다.

## Core Rules

- 제품명, 기술 스택, 저장소 구조를 임의로 확정하지 않습니다.
- 사용자의 문장을 그대로 붙여넣지 않고, 의도, 결정, 비목표, 검증 기준으로 정제해서 기록합니다.
- 모호한 요구는 가정을 명시하고, 되돌리기 어려운 선택이면 먼저 확인합니다.
- 요청을 만족하는 가장 작은 변경을 선호하고, 미래 확장을 위한 추상화는 보류합니다.
- 모든 변경은 사용자 요청, 문서화된 결정, 검증 기준 중 하나로 추적 가능해야 합니다.
- 하나의 프롬프트에는 하나의 주요 변경만 두고, 공유 파일을 건드리는 작업은 직렬화합니다.
- 한 번에 하나의 주요 작업만 진행합니다.
- `feature_list.json`에서 동시에 하나의 `in_progress` 항목만 허용합니다.
- 완료 여부는 문서 체크박스가 아니라 재현 가능한 검증 증거로 판단합니다.
- `passing` 상태는 검증 절차와 증거가 있을 때만 사용합니다.
- GUI를 만들거나 수정하는 모든 작업은 전역 또는 전용 `DESIGN.md`를 읽어야 합니다.
- 새 의존성, 런타임, 프레임워크를 추가할 때는 이유와 대안을 기록합니다.
- 비밀값은 문서나 코드에 쓰지 않습니다. 환경 변수와 최소 권한 원칙을 사용합니다.
- 파괴적 작업은 실행 전 범위와 되돌림 방법을 명확히 합니다.
- 커밋과 푸시는 사용자가 명시적으로 요청하거나 승인한 경우에만 수행합니다(완료·검증·관례만으로 자동 커밋·푸시하지 않음).
- 스킬·MCP·서브에이전트·훅 등 에이전트 확장을 설치·변경할 때는 [`docs/EXTENSIONS.md`](docs/EXTENSIONS.md) 규약(팀 공유·프로젝트-로컬·Claude+Codex)을 따릅니다.
- 계정·git·클라우드 CLI·에이전트 실행 규약은 [`docs/ENVIRONMENT.md`](docs/ENVIRONMENT.md)를 따릅니다.

## Important Files

| File | Role |
| --- | --- |
| `README.md` | 저장소의 현재 목적과 진입점 |
| `ARCHITECTURE.md` | 구조, 경계, 의존성 원칙 |
| `feature_list.json` | 기능과 결정 상태의 기계 판독용 목록 |
| `claude-progress.md` | 사람이 읽는 진행 상태 |
| `docs/HARNESS.md` | 하네스 엔지니어링 적용 원칙 |
| `docs/ENVIRONMENT.md` | 계정·git·클라우드·에이전트 실행 규약 (템플릿) |
| `docs/EXTENSIONS.md` | 스킬·MCP·서브에이전트·훅 설치 규약 (팀 공유·크로스 에이전트) |
| `docs/README_STYLE.md` | README 표현 패턴 (뱃지·경고블록·Mermaid 등) |
| `docs/AGENT_BEHAVIOR.md` | 에이전트 행동 기준과 완료 전 점검 |
| `docs/AGENT_WORKFLOWS.md` | 작업 단위, 프롬프트 구조, skill/병렬화/검증 운영 기준 |
| `docs/BOOTSTRAP.md` | 복제 후 첫 정리 절차 |
| `docs/INSTRUCTION_HIERARCHY.md` | 전역/스코프 지침 문서 해석 규칙 |
| `docs/PLANS.md` | 실행 계획 작성 규칙 |
| `docs/product-specs/` | 제품 정의와 사용자 여정 |
| `docs/design-docs/` | 중요한 구조 결정 기록 |
| `docs/session-handoff.md` | 다음 세션 인계 문서 |

## Documentation Policy

- 새 결정은 가능한 한 하나의 원천 문서에 기록하고, 다른 문서에서는 링크나 요약만 둡니다.
- 임시 아이디어는 `docs/exec-plans/active/` 또는 작업 중인 명세에 명시적으로 `TBD`로 둡니다.
- 오래된 내용은 조용히 남기지 말고 삭제하거나 `superseded` 이유를 기록합니다.
- 제품 고유 정보는 복제 후 실제 프로젝트에서만 채웁니다.
- 하위 경로 지침 파일은 전역 규칙과 충돌하는 부분만 명시적으로 오버라이드합니다.

## Validation

기본 검증은 다음 명령입니다.

```bash
./init.sh
```

기술 스택이 추가되면 빌드, 타입 체크, 린트, 테스트 명령을 `init.sh` 또는 별도 검증 문서에 연결합니다.
