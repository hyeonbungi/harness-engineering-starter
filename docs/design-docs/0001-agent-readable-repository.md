# 0001. Agent-Readable Repository Baseline

- Status: Accepted
- Date: 2026-05-20

## Context

빈 저장소에서 바로 기술 스택을 고르면 제품 문제와 맞지 않는 구조가 먼저 굳어질 수 있습니다. 반대로 하네스가 없으면 에이전트 세션마다 프로젝트 상태, 결정, 검증 방법을 다시 추측해야 합니다.

## Decision

이 저장소는 애플리케이션 코드보다 에이전트가 읽을 수 있는 문서 하네스를 먼저 둡니다.

- 루트에 `AGENTS.md`, `CLAUDE.md`, `README.md`, `ARCHITECTURE.md`를 둡니다.
- 진행 상태는 `feature_list.json`과 `claude-progress.md`에 나눠 기록합니다.
- 제품 정의는 `docs/product-specs/`에서 시작합니다.
- 긴 작업은 `docs/exec-plans/`에 실행 계획으로 관리합니다.
- 기본 검증은 `./init.sh`로 수행합니다.

## Consequences

- 장점: 새 세션이 빠르게 문맥을 회복하고, 미정 항목이 숨겨지지 않습니다.
- 장점: 기술 선택 전에 제품 문제와 성공 기준을 먼저 정리할 수 있습니다.
- 단점: 초기에는 실행 가능한 앱이 없으므로 제품 데모는 만들 수 없습니다.
- 단점: 문서가 실제 구현보다 앞서 나가지 않도록 지속적으로 갱신해야 합니다.

## Alternatives

- 프레임워크를 먼저 설치한다: 빠르게 화면을 만들 수 있지만, 잘못된 구조가 굳을 수 있어 보류합니다.
- 아무 문서 없이 시작한다: 초기 속도는 빠르지만 에이전트 세션 간 손실이 커져 보류합니다.

## Rollback

실제 프로젝트가 간단한 단일 앱으로 확정되면 문서 일부를 축소할 수 있습니다. 다만 `README.md`, `AGENTS.md`, `feature_list.json`, 기본 검증 명령은 유지하는 것이 좋습니다.
