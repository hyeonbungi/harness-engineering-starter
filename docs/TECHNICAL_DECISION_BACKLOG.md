# Technical Decision Backlog

이 문서는 스타터를 실제 프로젝트로 전환한 뒤 아직 정해야 할 기술 결정을 추적하는 템플릿입니다. 세부 결정은 `docs/design-docs/`에 남기고, 이 문서는 우선순위와 상태를 관리합니다.

## Status Legend

| Status | Meaning |
| --- | --- |
| Accepted | 결정했고 근거 문서와 검증 증거가 있습니다. |
| Direction | 큰 방향은 정했지만 설정, 검증, 경계가 남아 있습니다. |
| Candidate | 기본 후보가 있지만 아직 확정하지 않았습니다. |
| Open | 후보 비교부터 필요합니다. |
| Deferred | 지금 확정하면 과설계 위험이 있어 보류합니다. |

## Immediate Decisions

| Priority | Area | Decision | Status | Default direction |
| --- | --- | --- | --- | --- |
| 1 | Product surface | 첫 실행 가능한 표면 | Open | 제품 문제와 첫 사용자를 먼저 정합니다. |
| 2 | Repository shape | 단일 앱, 모노레포, 여러 서비스 분리 | Open | 실제 배포 단위와 공유 코드 필요성을 기준으로 비교합니다. |
| 3 | Runtime | 언어, framework, runtime | Open | 첫 표면과 운영 제약에서 출발합니다. |
| 4 | Data | 데이터 저장소와 migration 전략 | Open | 도메인 모델과 개인정보 요구를 확인합니다. |
| 5 | Validation | setup, build, lint, test, smoke check | Open | 반복 가능한 명령부터 `docs/VALIDATION.md`에 연결합니다. |
| 6 | Security | secret, auth, authorization, reporting | Open | 최소 권한과 환경 변수 원칙을 유지합니다. |
| 7 | Delivery | CI/CD, preview, staging, production | Deferred | 실행 가능한 skeleton과 검증 명령이 생긴 뒤 결정합니다. |
| 8 | Observability | error, log, metric, trace, analytics | Deferred | 런타임과 운영 책임이 정해진 뒤 결정합니다. |

## Open After Product Foundation

제품 정의가 들어온 뒤 아래 질문을 닫습니다.

- 첫 사용자는 누구인가?
- 첫 성공 기준은 무엇인가?
- local-only skeleton이면 충분한가, 배포 가능한 표면이 필요한가?
- 데이터가 필요한가, 정적 콘텐츠나 fixture로 시작해도 되는가?
- 사용자 계정, 권한, 개인정보가 초기 범위에 포함되는가?
- 어떤 검증이 완료 판단에 충분한가?

## Deferred By Default

아래 항목은 실제 필요가 확인될 때까지 보류합니다.

- 공통 UI 패키지
- generated artifact commit policy
- remote cache
- preview environment
- native mobile/desktop E2E
- product analytics
- distributed tracing
- multi-cloud 또는 mixed-provider deployment

## Decision Rules

- 제품 정의 없이 stack을 먼저 확정하지 않습니다.
- 공유 라이브러리는 실제 중복이 생긴 뒤 추출합니다.
- generated artifact는 commit과 drift check를 함께 설계합니다.
- 배포 credential은 long-lived secret보다 OIDC 또는 scoped token을 우선 검토합니다.
- 보류 항목은 숨기지 말고 `Deferred`로 남깁니다.
