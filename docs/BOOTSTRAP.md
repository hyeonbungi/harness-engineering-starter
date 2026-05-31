# Bootstrap

이 문서는 이 스타터를 새 프로젝트로 복제한 뒤 처음 정리할 순서를 설명합니다.

## Baseline Check

```bash
./init.sh
```

이 명령은 현재 스타터 문서가 빠지지 않았는지와 기본 형식이 유효한지만 확인합니다. 실제 빌드나 테스트는 기술 스택을 고른 뒤 추가합니다.

## First Project-Specific Pass

1. `docs/README_MIGRATION.md`를 따라 `README.md`를 실제 프로젝트 이름, 목적, 배지, 현재 상태로 갱신합니다.
2. `docs/CLONE_CLEANUP.md`를 따라 스타터 제작 이력과 진행 문서를 실제 프로젝트 상태로 초기화합니다.
3. `CONTRIBUTING.md`, `SECURITY.md`, `CHANGELOG.md`가 실제 공개 운영 방식과 맞는지 확인합니다.
4. `docs/product-specs/project-foundation.md`에 문제 정의, 대상 사용자, 첫 성공 기준을 작성합니다.
5. `feature_list.json`의 `PROD-001` 상태와 증거를 갱신합니다.
6. 저장소 구조가 필요한 경우 `ARCHITECTURE.md`에 선택지를 비교합니다.
7. 기술 스택을 선택할 준비가 되면 `docs/design-docs/`에 결정 기록을 작성합니다.
8. GUI 범위가 생기면 전역 `DESIGN.md`로 충분한지, 전용 `DESIGN.md`가 필요한지 결정합니다.

## Do Not Start With

- 제품 문제가 불명확한 상태에서 프레임워크부터 설치하기
- 실제 필요가 확인되지 않은 공통 패키지나 서비스 분리 만들기
- 브랜드가 없는 상태에서 완성된 디자인 시스템처럼 꾸미기
- GUI 작업을 하면서 `DESIGN.md` 계층을 읽지 않기
- 검증 명령 없이 완료 상태로 표시하기

## Safe Migration Path

스타터에서 실제 프로젝트로 전환할 때는 작은 순서로 바꿉니다.

1. 문서의 `TBD`를 실제 값으로 교체합니다.
2. README의 스타터 전용 설명과 배지를 실제 프로젝트 상태로 바꿉니다.
3. 스타터 제작 이력이 새 프로젝트 진행 상태처럼 남지 않게 정리합니다.
4. 기여, 보안, 변경 기록 문서를 실제 운영 방식에 맞게 바꿉니다.
5. 첫 실행 표면을 하나만 정합니다.
6. 최소 스택을 선택합니다.
7. 실행 가능한 skeleton을 만듭니다.
8. 검증 명령을 연결합니다.
9. 그 다음에 저장소 구조를 확장합니다.
