# Observability

이 문서는 에이전트 작업과 런타임 동작을 관측 가능하게 만들기 위한 스타터 템플릿입니다. 기술 스택이 정해지기 전에는 구체적인 도구보다 어떤 신호를 남길지 먼저 정의합니다.

## Two Layers

| Layer | Purpose | Starter Artifact |
| --- | --- | --- |
| Runtime signals | 시스템에서 실제로 무슨 일이 일어났는지 확인 | logs, traces, screenshots, test output |
| Process artifacts | 왜 그런 결정을 했는지 확인 | execution plan, feature evidence, handoff, evaluator notes |

## Minimum Signals After A Stack Is Selected

- Local start command and output
- Build or type-check result
- Test result
- Error logs with timestamps
- User journey screenshots or recordings for GUI changes
- External service request IDs when available
- Migration or data operation dry-run output when relevant

## Task Trace Template

긴 작업이나 실패가 반복되는 작업은 다음 형식으로 기록합니다.

```text
Task:
Scope:
Expected signal:
Command run:
Observed result:
Failure layer:
Next correction:
```

## Failure Layers

실패를 "모델 문제"로 뭉뚱그리지 않고 아래 레이어 중 하나에 귀속합니다.

- Task specification
- Context provided
- Execution environment
- Verification feedback
- State management
- Runtime or external dependency

## GUI Observability

GUI 변경에는 화면 증거가 필요합니다.

- Desktop viewport screenshot
- Mobile or narrow viewport screenshot when applicable
- Console error check
- Text overflow and overlap check
- Loading, empty, error, disabled states when changed

## Starter Limitation

현재 저장소에는 앱 런타임이 없으므로 실제 로그, trace, screenshot 자동화는 없습니다. 첫 실행 가능한 앱이나 서비스가 생기면 이 문서에 구체적인 명령과 산출물 위치를 추가합니다.
