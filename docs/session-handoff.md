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
- 복제 후 공개 README를 실제 프로젝트용으로 바꾸는 `docs/README_MIGRATION.md` 체크리스트를 추가했습니다.
- 루트 README를 영어 기본 `README.md`와 한국어 `README.ko.md`로 나눴습니다.
- MIT 라이선스를 루트 `LICENSE` 파일로 추가하고 README는 해당 파일에 링크합니다.
- 내부 디자인 기준인 `DESIGN.md`는 한국어 단일 원천으로 전환했습니다.
- 복제 후 스타터 제작 이력을 정리하는 `docs/CLONE_CLEANUP.md`를 추가했습니다.
- 공개 OSS 지원 전 보강으로 `CONTRIBUTING.md`, `SECURITY.md`, `CHANGELOG.md`, `docs/STARTER_COPY_SIMULATION.md`를 추가했습니다.
- README에 이 스타터의 대상/비대상과 maintenance signal 링크를 추가했습니다.
- 루트 `DESIGN.md`를 Google `design.md` 호환 token/rationale 구조로 정리했습니다.
- `DESIGN.md` 작성, 감사, migration, 선택 검증을 위한 `.codex/skills/design-md/SKILL.md`를 추가했습니다.
- 성숙한 downstream 프로젝트의 디자인 에이전트 문서화 패턴을 분석해 source-of-truth order, scoped `DESIGN.md`, design source evidence, Adopt/Do Not Adopt reference model 규칙으로 일반화했습니다.
- 향후 브랜드 자산, 폰트, screenshot, 외부 reference model을 기록하는 `docs/DESIGN_SOURCES.md`를 추가했습니다.
- `.codex/skills`를 project-local skill 단일 정본으로 두고 `.claude/skills` symlink로 Claude Code에도 노출했습니다.
- 복제 후 실제 프로젝트가 성장할 때 사용할 `docs/TECHNICAL_DECISIONS.md`, `docs/TECHNICAL_DECISION_BACKLOG.md`, `docs/VALIDATION.md`, `docs/VISUAL_VALIDATION.md` 템플릿을 추가했습니다.
- downstream 프로젝트의 앱, 스택, 클라우드, 브랜드, 자산 값은 스타터에 복사하지 않았습니다.
- `AGENTS.md`를 에이전트 지침의 단일 진실 원천으로 두고, `CLAUDE.md`는 `@AGENTS.md` 포인터와 최소 Claude Code 메모만 남겼습니다.

## Next Best Task

`docs/product-specs/project-foundation.md`를 실제 프로젝트 정보로 채웁니다.

## Passing Condition

- 복제 후 프로젝트 이름과 문제 정의가 기록되어 있습니다.
- `docs/README_MIGRATION.md` 기준으로 README의 제목, 배지, 상태, 소유권, 검증 명령이 갱신되어 있습니다.
- `README.md`와 `README.ko.md`가 같은 프로젝트 상태를 설명하고 서로 링크됩니다.
- 라이선스 정보의 원천은 루트 `LICENSE` 파일입니다.
- 공개 기여, 보안 신고, 변경 기록은 루트 `CONTRIBUTING.md`, `SECURITY.md`, `CHANGELOG.md`를 기준으로 확인합니다.
- 스타터 복사 검증은 `docs/STARTER_COPY_SIMULATION.md` 기준으로 재현합니다.
- GUI 범위가 생기면 한국어 `DESIGN.md` 기준을 먼저 읽고, 필요한 경우 `.codex/skills/design-md/SKILL.md`를 사용합니다.
- 실제 브랜드 자산이나 외부 reference를 적용하기 전에는 `docs/DESIGN_SOURCES.md`에 출처, 라이선스, Adopt/Do Not Adopt, 저장소 반입 여부를 기록합니다.
- 앱, 패키지, UI 라이브러리, design token package는 기술 스택과 repository shape가 정해진 뒤에만 추가합니다.
- 기술 선택이 구체화되면 `docs/TECHNICAL_DECISIONS.md`와 `docs/TECHNICAL_DECISION_BACKLOG.md`를 갱신합니다.
- 검증 명령이 생기면 `docs/VALIDATION.md`, `feature_list.json`, `init.sh`가 같은 검증 표면을 말해야 합니다.
- GUI scaffold가 생기면 `docs/VISUAL_VALIDATION.md`의 screenshot, overflow, focus, 상태 표현 기준을 실제 명령과 artifact에 연결합니다.
- 복제 후 `docs/CLONE_CLEANUP.md` 기준으로 스타터 제작 로그와 진행 상태를 정리합니다.
- 첫 사용자와 첫 성공 기준이 정해져 있습니다.
- `feature_list.json`에서 `PROD-001` 상태가 갱신되어 있습니다.
- `./init.sh`가 성공합니다.
- GUI 범위가 생기면 적용 가능한 `DESIGN.md` 계층이 정해져 있습니다.
- 에이전트 작업은 가정 명시, 최소 변경, 추적 가능한 diff, 검증 증거 기준을 따릅니다.
- 에이전트 작업은 task-first, single-change, plan-first, 행동 검증, tool hygiene 기준을 따릅니다.
- 공유 에이전트 규칙은 `AGENTS.md`에만 추가하고, `CLAUDE.md`에는 중복 정의하지 않습니다.

## Known Unknowns

- 실제 제품명
- 대상 사용자
- 첫 실행 표면
- 기술 스택
- 저장소 구조
- 배포 전략
