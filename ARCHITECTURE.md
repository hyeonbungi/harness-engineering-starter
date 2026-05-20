# Architecture

이 문서는 이 스타터를 복제한 프로젝트의 최상위 구조를 기록하는 자리입니다. 현재는 제품, 저장소 구조, 기술 스택이 모두 미정이므로 특정 프레임워크나 디렉터리 규칙을 강제하지 않습니다.

## Current Assumptions

- 제품 또는 서비스 범위: TBD
- 주요 사용자: TBD
- 런타임 표면: TBD
- 데이터 저장소: TBD
- 외부 연동: TBD
- 저장소 구조: TBD

## Layer Model

아래 계층은 구현 기술과 무관하게 유지할 기본 사고 틀입니다.

| Layer | Responsibility | Current Status |
| --- | --- | --- |
| Product Definition | 해결할 문제, 대상 사용자, 성공 기준 정의 | 템플릿만 있음 |
| Domain Model | 핵심 개념, 상태, 규칙 정의 | 미정 |
| Application Use Cases | 사용자 흐름과 시스템 동작 정의 | 미정 |
| Interface Adapters | UI, API, CLI, worker 등 진입점 연결 | 미정 |
| Runtime and Infrastructure | 배포, 데이터, 인증, 관측성, 보안 | 미정 |
| Verification | 테스트, 평가, 운영 점검 | 기본 문서만 있음 |

## Dependency Principles

- 제품 명세가 기술 선택보다 먼저입니다.
- 도메인 규칙은 UI나 인프라 세부 사항에 종속되지 않게 설계합니다.
- 공유 코드나 공통 도구는 실제 중복이 생긴 뒤 추출합니다.
- 자동화는 반복되는 수동 절차가 확인된 뒤 추가합니다.
- 구조가 커질수록 되돌림 경로와 마이그레이션 전략을 함께 기록합니다.

## Repository Shape Decision

저장소 구조는 아직 결정하지 않습니다. 단일 앱, 멀티 패키지, 여러 서비스 분리 중 무엇이 맞는지는 다음 정보가 정해진 뒤 판단합니다.

- 첫 실행 가능한 제품 표면
- 배포 단위
- 팀 규모와 소유권 경계
- 공유 코드의 실제 필요성
- 테스트와 릴리스 전략

결정되면 `docs/design-docs/`에 결정 기록을 추가하고 이 문서를 갱신합니다.

## Architecture Decision Template

새 구조 결정을 남길 때는 다음 항목을 포함합니다.

- Context: 왜 지금 결정이 필요한가
- Decision: 무엇을 선택했는가
- Consequences: 얻는 것과 잃는 것은 무엇인가
- Alternatives: 고려했지만 선택하지 않은 대안
- Rollback: 틀렸을 때 되돌리는 방법
