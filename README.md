# Harness Engineering Starter

`harness-engineering-starter`는 특정 제품, 브랜드, 기술 스택을 넣기 전의 하네스 엔지니어링 스타터입니다. 목표는 새 프로젝트를 복제했을 때 에이전트와 사람이 같은 문맥에서 시작하고, 제품 정의, 실행 계획, 검증 증거를 한곳에서 관리할 수 있게 하는 것입니다.

현재 결론: 이 저장소에는 애플리케이션 코드가 없습니다. 제품명, 저장소 구조, 기술 스택, 배포 대상은 복제 후 프로젝트에 맞게 결정합니다.

## Current State

- 스타터 저장소 이름: `harness-engineering-starter`
- 복제 후 프로젝트 이름: TBD
- 제품 또는 도메인: TBD
- 기술 스택: TBD
- 저장소 구조: TBD
- 구현 코드: 없음
- 표준 검증 명령: `./init.sh`

## Repository Map

| Path | Purpose |
| --- | --- |
| `AGENTS.md` | Codex 및 범용 코드 에이전트 작업 지침 |
| `CLAUDE.md` | Claude Code 작업 지침 |
| `ARCHITECTURE.md` | 프로젝트 구조와 의존성 원칙을 기록하는 최상위 문서 |
| `DESIGN.md` | GUI가 있는 프로젝트에서 반드시 읽는 전역 디자인 명세 기준선 |
| `feature_list.json` | 기능, 문서, 결정 상태를 기계가 읽을 수 있게 추적 |
| `claude-progress.md` | 현재 진행 상태와 다음 세션 인계 요약 |
| `init.sh` | 스타터 문서와 기본 형식을 검증하는 초기화 스크립트 |
| `docs/HARNESS.md` | 하네스 엔지니어링 원칙과 적용 방식 |
| `docs/BOOTSTRAP.md` | 새 프로젝트로 복제한 뒤 첫 정리 순서 |
| `docs/INSTRUCTION_HIERARCHY.md` | 전역/스코프 에이전트 문서와 DESIGN.md 해석 규칙 |
| `docs/OBSERVABILITY.md` | 런타임 신호와 에이전트 작업 추적 템플릿 |
| `docs/PLANS.md` | 실행 계획 작성 규칙 |
| `docs/product-specs/` | 제품 문제, 사용자, 성공 기준 템플릿 |
| `docs/design-docs/` | 구조적 의사결정 기록 |
| `docs/references/` | 외부 자료와 참고 링크 요약 |
| `docs/exec-plans/` | 활성 계획, 완료 계획, 기술 부채 추적 |
| `docs/generated/` | 에이전트 산출물 중 재생성 가능한 파일 위치 |
| `scripts/` | 프로젝트 스택이 정해진 뒤 추가할 운영 스크립트 위치 |
| `tests/` | 프로젝트 스택이 정해진 뒤 추가할 테스트 위치 |

## Bootstrap

```bash
./init.sh
```

`init.sh`는 문서가 존재하는지, `feature_list.json`이 유효한 JSON인지, `DESIGN.md`가 기본 frontmatter를 갖췄는지 확인합니다. 실제 빌드, 테스트, 린트 명령은 기술 스택이 결정된 뒤 추가합니다.

## How To Start A Real Project

1. `README.md`의 `Current State`에서 복제 후 프로젝트 이름과 도메인을 실제 값으로 바꿉니다.
2. `docs/product-specs/project-foundation.md`에 문제 정의, 대상 사용자, 첫 성공 기준을 작성합니다.
3. 저장소 구조가 필요해지는 시점에 `ARCHITECTURE.md`에 결정 근거와 경계를 기록합니다.
4. 기술 스택을 선택하면 `feature_list.json`, `init.sh`, `docs/QUALITY_SCORE.md`를 함께 갱신합니다.
5. GUI 작업이 시작되면 `DESIGN.md`를 실제 브랜드와 제품 톤에 맞게 개정합니다.

## Instruction And Design Hierarchy

루트의 `AGENTS.md`, `CLAUDE.md`, `DESIGN.md`는 전역 기본값입니다. 프로젝트가 여러 애플리케이션, 라이브러리, 패키지, 서비스로 확장되면 각 하위 경로에 같은 이름의 문서를 둘 수 있습니다.

```text
AGENTS.md
CLAUDE.md
DESIGN.md
path/to/scope/AGENTS.md
path/to/scope/CLAUDE.md
path/to/scope/DESIGN.md
```

에이전트는 작업 대상 파일 경로를 기준으로 루트에서 대상 경로까지의 문서를 순서대로 읽습니다. 하위 경로 문서는 전역 문서를 대체하는 것이 아니라, 해당 범위에 필요한 규칙을 추가하거나 명시적으로 오버라이드합니다.

GUI를 만들거나 수정하는 모든 범위는 `DESIGN.md`를 사용해야 합니다. 전역 `DESIGN.md`만으로 충분하면 그 이유를 기록하고, 범위별 차이가 있으면 해당 경로에 전용 `DESIGN.md`를 둡니다.

## Operating Rule

사용자 프롬프트는 그대로 문서화하지 않습니다. 에이전트는 입력을 정리, 보강, 구조화한 뒤 제품 명세, 실행 계획, 결정 기록 중 알맞은 위치에 반영합니다.
