# Harness Starter Claude Instructions

이 저장소는 Claude Code가 새 프로젝트의 문맥을 안정적으로 이어받도록 만든 하네스 엔지니어링 스타터입니다. 제품과 기술 스택은 복제 후 결정합니다.

## Read First

1. `README.md`
2. `ARCHITECTURE.md`
3. `docs/HARNESS.md`
4. `docs/INSTRUCTION_HIERARCHY.md`
5. `docs/AGENT_BEHAVIOR.md`
6. `docs/AGENT_WORKFLOWS.md`
7. 작업 대상 경로의 `AGENTS.md`, `CLAUDE.md`, `DESIGN.md` 계층
8. `feature_list.json`
9. `claude-progress.md`
10. 작업 유형에 따라 `docs/product-specs/`, `docs/PLANS.md`, `DESIGN.md`, `docs/FRONTEND.md`

## Working Rules

- 사용자 입력은 그대로 문서화하지 말고, 의도와 결정으로 정리한 뒤 반영합니다.
- 가정, 해석, 트레이드오프를 숨기지 않습니다.
- 요청을 만족하는 가장 작은 변경을 먼저 선택합니다.
- 주변 정리나 추측 기반 확장은 하지 않습니다.
- 작업 지시는 결과, 예시, 제약, 기존 규칙을 기준으로 해석합니다.
- 하나의 주요 변경만 한 번에 처리하고, 병렬화는 독립 작업에만 사용합니다.
- 기술 스택이 미정이면 프레임워크, 패키지 매니저, 배포 플랫폼을 만들지 않습니다.
- 구현보다 제품 문제, 성공 기준, 검증 방법이 먼저입니다.
- 변경 범위가 커지면 실행 계획을 작성합니다.
- `feature_list.json`에서 동시에 하나의 `in_progress` 항목만 둡니다.
- `passing` 상태는 검증 절차와 증거가 있을 때만 사용합니다.
- GUI를 만들거나 수정하는 모든 작업은 전역 또는 전용 `DESIGN.md`를 읽고 따라야 합니다.
- 완료 시 `claude-progress.md`와 필요하면 `docs/session-handoff.md`를 갱신합니다.
- 가능한 경우 `./init.sh`를 실행하고 결과를 기록합니다.

## Definition Of Done

- 변경 이유가 문서에 남아 있습니다.
- 변경 범위가 이번 요청과 직접 연결됩니다.
- 다음 세션이 추가 설명 없이 이어받을 수 있습니다.
- 미정 항목은 숨겨져 있지 않고 `TBD`, `not_started`, `blocked` 등으로 표시되어 있습니다.
- 검증 명령 또는 검증하지 못한 이유가 명확합니다.
- 사용자 행동이 바뀌는 작업은 행동 검증이나 그에 준하는 관찰 증거가 있습니다.
- 필요한 검증 증거가 `feature_list.json`, `claude-progress.md`, 또는 `docs/session-handoff.md` 중 적절한 위치에 남아 있습니다.
