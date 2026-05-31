# README Migration

이 문서는 이 스타터를 복사해서 실제 프로젝트를 시작할 때 루트 README를 바꾸는 기준입니다. 목표는 공개 저장소 첫 화면에 스타터 흔적이 어색하게 남지 않게 하고, 사람과 에이전트가 같은 프로젝트 상태를 읽게 만드는 것입니다.

## When To Use

- 이 저장소를 새 프로젝트로 복제하거나 fork한 직후
- 제품명, 도메인, 첫 사용자, 검증 명령이 정해졌을 때
- 기술 스택이나 실행 가능한 skeleton이 생겨 README의 상태가 바뀔 때

## Language Policy

- `README.md`는 영어 기본 문서입니다.
- `README.ko.md`는 한국어 문서입니다.
- 두 문서는 같은 섹션 구조를 유지합니다.
- 루트 README만 이중화합니다. `docs/` 전체 번역은 실제 필요가 생긴 뒤 결정합니다.
- `DESIGN.md`는 내부 디자인 작업 기준이므로 한국어 단일 원천으로 유지합니다.
- 두 README 상단에는 서로 이동할 수 있는 언어 링크를 둡니다.

## Required Changes

| README area | What to change | Keep until known |
| --- | --- | --- |
| Title | 실제 프로젝트 이름으로 교체합니다. | `Harness Engineering Starter` |
| Language links | `README.md`와 `README.ko.md`가 서로 연결되게 둡니다. | 영어 기본, 한국어 보조 |
| Badges | 저장소 경로, status, stack, validation 값을 실제 값으로 바꿉니다. | `TBD` 배지 |
| License | 루트 `LICENSE`를 라이선스 원천으로 두고 README는 링크만 둡니다. | MIT |
| Tagline | 한 문장으로 프로젝트가 무엇을 하는지 설명합니다. | product-neutral 설명 |
| Opening paragraph | 스타터 설명을 실제 제품/서비스 설명으로 바꿉니다. | "애플리케이션 코드 없음" 문장 |
| `At A Glance` | 목적, 제품 범위, 스택, 저장소 구조, 검증 명령을 실제 값으로 갱신합니다. | 모르는 값은 `TBD` |
| `Current State` | 프로젝트 이름, 도메인, 스택, 구조, 구현 상태를 갱신합니다. | 불확실한 항목은 숨기지 않음 |
| `Repository Map` | 실제로 존재하고 중요한 경로만 남깁니다. | 스타터 전용 경로는 실제로 쓰는 경우만 유지 |
| `Bootstrap` | 새 프로젝트의 설치, 실행, 검증 명령으로 교체합니다. | 기술 스택이 없으면 `./init.sh` |
| `How To Start A Real Project` | 실제 프로젝트에서는 제거하거나 `Development`/`Contributing`로 바꿉니다. | 스타터 상태일 때만 유지 |
| `Author` | 원저작자와 현재 maintainer를 구분합니다. | 소유권이 바뀌지 않았으면 원저작자 유지 |

## Badge Rules

- 배지는 4-6개 이하로 유지합니다.
- 실제 파일이나 서비스가 없으면 배지를 만들지 않습니다.
- 라이선스 배지는 루트 `LICENSE` 파일과 같은 값만 표시합니다.
- CI 배지는 실제 workflow가 있고 통과 기준이 정해진 뒤 추가합니다.
- 배지의 GitHub 경로는 새 저장소 경로로 바꿉니다.

예시로 바꿔야 하는 경로:

```text
hyeonbungi/harness-engineering-starter -> owner/new-project
```

## Author And Ownership

이 스타터를 그대로 복제해 새 프로젝트를 시작했다면 다음 중 하나를 선택합니다.

- 원저작자와 현재 maintainer가 같으면 기존 `Author` 섹션을 유지합니다.
- 현재 maintainer가 다르면 `Original starter author`와 `Current maintainer`를 나눕니다.
- 회사나 팀 프로젝트면 개인 이름 대신 조직 또는 팀 링크를 사용합니다.

비공개 이메일, 개인 토큰, 내부 연락처는 README에 넣지 않습니다.

## Done Criteria

README 전환은 다음을 만족해야 합니다.

- 첫 화면만 읽어도 프로젝트 이름, 목적, 현재 상태를 알 수 있습니다.
- `README.md`는 영어로, `README.ko.md`는 한국어로 같은 상태를 설명합니다.
- 두 README가 서로 링크됩니다.
- 스타터 저장소 이름이 실제 프로젝트 이름 자리에 남아 있지 않습니다.
- 배지가 실제 저장소와 실제 검증 상태를 가리킵니다.
- 라이선스 정보의 원천은 루트 `LICENSE` 파일이고 README는 그 파일로 연결됩니다.
- 아직 모르는 값은 `TBD`로 남아 있고, 추측한 값으로 채우지 않았습니다.
- `docs/product-specs/project-foundation.md`와 README의 제품 설명이 충돌하지 않습니다.
- `./init.sh` 또는 새 검증 명령이 성공합니다.

## Follow-Up

README를 바꾼 뒤 함께 확인할 문서입니다.

- `docs/CLONE_CLEANUP.md`
- `docs/product-specs/project-foundation.md`
- `feature_list.json`
- `claude-progress.md`
- `docs/session-handoff.md`
- `ARCHITECTURE.md`
- `DESIGN.md` if GUI work exists
