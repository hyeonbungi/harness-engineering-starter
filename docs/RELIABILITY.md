# Reliability

이 스타터에서 신뢰성의 기준은 "완료처럼 보이는가"가 아니라 "다음 사람이 재현할 수 있는 증거가 있는가"입니다.

## Current Reliability Surface

- `./init.sh`: 문서와 기본 형식 검증
- `feature_list.json`: 상태와 증거 기록
- `claude-progress.md`: 사람이 읽는 진행 요약
- `docs/session-handoff.md`: 세션 간 인계
- `docs/clean-state-checklist.md`: 종료 전 점검
- `docs/OBSERVABILITY.md`: 실패 귀속과 관측 신호 기록 템플릿

## After A Stack Is Selected

다음 항목을 실제 명령으로 연결합니다.

- 로컬 실행
- 빌드
- 타입 체크
- 린트
- 단위 테스트
- 통합 테스트
- 핵심 사용자 여정 smoke test
- 런타임 로그, trace, screenshot 또는 동등한 관측 증거

## Evidence Rule

작업을 완료로 표시하려면 다음 중 하나가 있어야 합니다.

- 검증 명령과 성공 결과
- 수동 검증 절차와 관찰 결과
- 검증하지 못한 이유와 남은 위험

검증이 없으면 `passing`이 아니라 `blocked` 또는 `needs_verification`으로 둡니다.
