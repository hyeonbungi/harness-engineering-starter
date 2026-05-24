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
