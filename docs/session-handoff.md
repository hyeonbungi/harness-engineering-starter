# Session Handoff

## Current State

- 저장소는 `harness-engineering-starter`라는 제품 중립 하네스 엔지니어링 스타터입니다.
- 복제 후 프로젝트 이름, 기술 스택, 저장소 구조는 아직 정하지 않았습니다.
- 애플리케이션 코드는 없습니다.
- 기본 검증 명령은 `./init.sh`입니다.

## What Changed Recently

- 제품 고유 정보와 레거시 맥락을 제거했습니다.
- 특정 저장소 구조 전제와 앱/라이브러리 자리표시자를 제거했습니다.
- 남은 문서를 복제용 스타터 템플릿으로 정리했습니다.
- 전역/스코프 에이전트 문서와 `DESIGN.md` 계층 규칙을 추가했습니다.
- `multica-ai/andrej-karpathy-skills`의 행동 원칙을 `docs/AGENT_BEHAVIOR.md`로 재구성하고, 출처와 결정 기록을 추가했습니다.
- Avid의 Codex 운영 article에서 장기적으로 유효한 workflow 원칙만 `docs/AGENT_WORKFLOWS.md`로 재구성했습니다.

## Next Best Task

`docs/product-specs/project-foundation.md`를 실제 프로젝트 정보로 채웁니다.

## Passing Condition

- 복제 후 프로젝트 이름과 문제 정의가 기록되어 있습니다.
- 첫 사용자와 첫 성공 기준이 정해져 있습니다.
- `feature_list.json`에서 `PROD-001` 상태가 갱신되어 있습니다.
- `./init.sh`가 성공합니다.
- GUI 범위가 생기면 적용 가능한 `DESIGN.md` 계층이 정해져 있습니다.
- 에이전트 작업은 가정 명시, 최소 변경, 추적 가능한 diff, 검증 증거 기준을 따릅니다.
- 에이전트 작업은 task-first, single-change, plan-first, 행동 검증, tool hygiene 기준을 따릅니다.

## Known Unknowns

- 실제 제품명
- 대상 사용자
- 첫 실행 표면
- 기술 스택
- 저장소 구조
- 배포 전략
