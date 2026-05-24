# Harness Engineering

이 스타터의 목표는 에이전트가 매 세션마다 프로젝트 상태를 추측하지 않게 만드는 것입니다. 제품이 정해지기 전에는 구현보다 문맥, 결정, 검증, 인계가 먼저입니다.

## Core Loop

1. Context: 현재 상태와 제약을 읽습니다.
2. Scope: 이번 세션에서 끝낼 수 있는 단위를 정합니다.
3. Plan: 필요하면 실행 계획을 작성합니다.
4. Change: 문서나 코드를 작게 변경합니다.
5. Verify: 가능한 검증을 실행합니다.
6. Handoff: 남은 일과 증거를 기록합니다.

## Starter Principles

| Principle | Meaning | Where It Lives |
| --- | --- | --- |
| Single source of truth | 같은 결정을 여러 문서에 흩뿌리지 않습니다. | `README.md`, `ARCHITECTURE.md`, `docs/product-specs/` |
| Machine-readable progress | 에이전트가 상태를 파싱할 수 있어야 합니다. | `feature_list.json` |
| Human-readable handoff | 사람이 빠르게 이어받을 수 있어야 합니다. | `claude-progress.md`, `docs/session-handoff.md` |
| Verification before done | 완료는 증거로 판단합니다. | `init.sh`, `docs/clean-state-checklist.md` |
| Agent behavior guardrails | 모호함, 과한 추상화, 관련 없는 변경, 약한 검증을 줄입니다. | `docs/AGENT_BEHAVIOR.md` |
| Agent workflow model | 작업 단위, 표면 선택, skill, 병렬화, 검증 ladder를 정합니다. | `docs/AGENT_WORKFLOWS.md` |
| Scoped instructions | 작업 경로별 규칙과 디자인 명세를 계층적으로 해석합니다. | `docs/INSTRUCTION_HIERARCHY.md` |
| Observability | 실패를 레이어에 귀속하고 재현 가능한 신호를 남깁니다. | `docs/OBSERVABILITY.md` |
| Explicit unknowns | 모르는 것은 숨기지 않고 `TBD`로 둡니다. | 모든 주요 문서 |
| Safe evolution | 큰 결정은 되돌림 경로를 같이 둡니다. | `docs/design-docs/`, `docs/exec-plans/` |

## What This Starter Does Not Decide

- 제품명
- 사용자군
- 기술 스택
- 저장소 구조
- 배포 플랫폼
- 인증, 결제, 데이터베이스 같은 외부 서비스

이 항목들은 실제 프로젝트 정보가 들어온 뒤 결정합니다. 섣부른 기본값은 이후 리팩터링 비용을 키울 수 있습니다.

## Agent Behavior

- 사용자 입력을 그대로 저장하지 말고 정제합니다.
- 큰 변경은 먼저 목적, 범위, 제외 사항, 검증 방법으로 나눕니다.
- 구현 전 제품 문제와 성공 기준을 확인합니다.
- 요청을 만족하는 가장 작은 변경을 기본값으로 둡니다.
- 모든 변경이 요청, 결정, 검증 기준 중 하나로 추적되는지 확인합니다.
- 작업 표면과 검증 깊이는 위험도와 감시 필요도에 맞춥니다.
- 작업 대상 경로에 적용되는 전역/스코프 지침 파일을 확인합니다.
- 반복 작업이 두 번 이상 나타나면 자동화 후보로 기록합니다.
- 확정되지 않은 내용은 추측하지 않고 미정 상태로 둡니다.
