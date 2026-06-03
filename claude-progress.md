# Harness Starter Progress

## Snapshot

- 저장소 목적: 하네스 엔지니어링 스타터
- 스타터 저장소 이름: `harness-engineering-starter`
- 복제 후 프로젝트 이름: TBD
- 제품 또는 도메인: TBD
- 기술 스택: TBD
- 저장소 구조: TBD
- 구현 코드: 없음
- 기본 검증: `./init.sh`

## Current State

이 저장소는 복제용 스타터입니다. 제품 고유 정보, 레거시 맥락, 특정 저장소 구조, 특정 앱 이름은 포함하지 않습니다.

남아 있는 것은 다음을 위한 최소 문서와 검증 표면입니다.

- 에이전트 시작 순서
- 제품 정의 템플릿
- 실행 계획 규칙
- 아키텍처 결정 기록 위치
- 기본 디자인 명세 템플릿
- 세션 인계와 품질 점검 방식

## Done

- [x] 루트 에이전트 지침 작성
- [x] Claude Code 지침 작성
- [x] 기본 아키텍처 문서 작성
- [x] 하네스 원칙 문서 작성
- [x] 제품 정의 템플릿 작성
- [x] 실행 계획과 인계 문서 작성
- [x] 기본 검증 스크립트 작성
- [x] 전역/스코프 `AGENTS.md`, `CLAUDE.md`, `DESIGN.md` 해석 규칙 작성
- [x] Karpathy-inspired 에이전트 행동 기준을 하네스 스타터 방식으로 적용
- [x] Avid의 Codex 운영 article에서 장기적으로 유효한 agent workflow 기준을 추출해 적용
- [x] 복제 후 README를 실제 프로젝트용으로 바꾸는 migration 체크리스트 추가
- [x] 루트 README를 영어 기본 `README.md`와 한국어 `README.ko.md`로 이중화
- [x] MIT 라이선스를 루트 `LICENSE` 원천 파일로 추가
- [x] 내부 디자인 기준인 `DESIGN.md`를 한국어 단일 원천으로 전환
- [x] 복제 후 스타터 제작 이력을 정리하는 `docs/CLONE_CLEANUP.md` 추가
- [x] 공개 OSS 지원 전 보강용 `CONTRIBUTING.md`, `SECURITY.md`, `CHANGELOG.md` 추가
- [x] README에 대상/비대상과 maintenance signal 섹션 추가
- [x] 스타터 복사 시뮬레이션 문서 `docs/STARTER_COPY_SIMULATION.md` 추가
- [x] 루트 `DESIGN.md`를 Google `design.md` 형식과 호환되는 token/rationale 구조로 정리
- [x] `DESIGN.md` 작성과 검증을 돕는 project-local Codex skill `.codex/skills/design-md/SKILL.md` 추가
- [x] 성숙한 downstream 프로젝트의 디자인 에이전트 문서화 패턴을 브랜드 중립 방식으로 역반영
- [x] 향후 브랜드 자산, 폰트, screenshot, reference model을 기록하는 `docs/DESIGN_SOURCES.md` 추가

## Not Started

- [ ] 복제 후 실제 프로젝트 이름 확정
- [ ] 제품 문제와 대상 사용자 정의
- [ ] 저장소 구조 결정
- [ ] 기술 스택 선택
- [ ] 첫 실행 가능한 앱 또는 서비스 작성
- [ ] 실제 빌드, 테스트, 린트 명령 연결

## Next Recommended Step

복제 후 첫 작업은 `docs/product-specs/project-foundation.md`를 채우는 것입니다. 제품 문제가 정리되기 전에는 저장소 구조와 기술 스택을 확정하지 않는 편이 안전합니다.

## Validation Log

- 2026-05-20: 스타터를 제품 중립 하네스 기준선으로 재정리했습니다. 검증은 변경 후 실행해야 합니다.
- 2026-05-20: GUI 작업의 `DESIGN.md` 필수 사용과 전역/스코프 문서 계층 규칙을 추가했습니다.
- 2026-05-25: `multica-ai/andrej-karpathy-skills`의 네 가지 원칙을 `docs/AGENT_BEHAVIOR.md`, 평가 루브릭, 검증 목록에 맞게 적용했습니다. `./init.sh`가 통과했습니다.
- 2026-05-25: Avid의 `How to Master Codex in 2026 (Builder's Course)` article에서 task brief, single-change, plan-first, skill 후보, 병렬화, 검증 ladder, tool hygiene 원칙을 `docs/AGENT_WORKFLOWS.md`로 적용했습니다. `./init.sh`와 `git diff --check`가 통과했습니다.
- 2026-05-25: `docs/README_MIGRATION.md`를 추가하고 `README.md`, `docs/BOOTSTRAP.md`, `init.sh`, `feature_list.json`에 연결했습니다. `./init.sh`, `git diff --check`, GitHub Markdown 렌더링이 통과했습니다.
- 2026-05-31: `README.md`를 영어 기본 문서로 바꾸고, 한국어 문서는 `README.ko.md`로 분리했습니다. `docs/README_MIGRATION.md`와 `init.sh`도 이중화 기준에 맞게 갱신했습니다.
- 2026-05-31: 루트 `LICENSE`에 MIT 라이선스를 추가하고, `README.md`, `README.ko.md`, `docs/README_MIGRATION.md`, `init.sh`에 연결했습니다.
- 2026-05-31: `DESIGN.md` 본문을 한국어로 전환하고, `docs/FRONTEND.md`와 `docs/README_MIGRATION.md`에 내부 디자인 문서는 한국어 단일 원천이라는 기준을 추가했습니다.
- 2026-05-31: `docs/CLONE_CLEANUP.md`를 추가하고, 복제 후 keep/reset/decide/remove 기준과 sensitive-information check, simulation check를 문서화했습니다.
- 2026-05-31: OpenAI Codex OSS 프로그램 지원 전 보강으로 `CONTRIBUTING.md`, `SECURITY.md`, `CHANGELOG.md`, `docs/STARTER_COPY_SIMULATION.md`를 추가하고 README 대상/비대상/운영 신호를 보강했습니다.
- 2026-06-03: `DESIGN.md`를 Google `design.md` 형식에 맞춰 frontmatter token과 Markdown rationale 구조로 정리하고, `.codex/skills/design-md/SKILL.md`와 결정 기록 `0005`를 추가했습니다.
- 2026-06-04: `seoul-game-town`의 성숙한 디자인 에이전트 문서화에서 source-of-truth, scoped DESIGN.md, design source evidence, Adopt/Do Not Adopt reference model 패턴만 일반화해 반영했습니다. 브랜드, 앱, 자산, 패키지 결정은 가져오지 않았습니다.
