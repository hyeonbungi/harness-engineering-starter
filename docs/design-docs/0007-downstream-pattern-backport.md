# Downstream Pattern Backport

## Status

Accepted on 2026-06-04.

## Context

`seoul-game-town`은 이 스타터에서 파생된 실제 프로젝트입니다. 해당 프로젝트가 제품 정의, 스택 결정, 디자인 문서, 검증 스크립트, 프로젝트 로컬 skill을 성장시키는 과정에서 스타터로 되가져올 만한 패턴이 생겼습니다.

스타터는 템플릿이므로 downstream 프로젝트의 앱 이름, 기술 스택, 브랜드 토큰, 운영 계정, 자산, vendored reference 전체를 복사하면 안 됩니다. 가져올 대상은 특정 선택이 아니라 복제 후 성장 단계에서 재사용 가능한 운영 패턴입니다.

## Decision

다음 패턴만 product-neutral 형태로 반영합니다.

- `.codex/skills`를 skill 단일 정본으로 두고 `.claude/skills` symlink로 Claude Code에 노출하는 cross-agent skill bridge
- 기술 결정 요약 문서 `docs/TECHNICAL_DECISIONS.md`
- 열린 기술 결정을 상태별로 추적하는 `docs/TECHNICAL_DECISION_BACKLOG.md`
- baseline, product foundation, stack selection, executable skeleton, runtime, release path로 나누는 `docs/VALIDATION.md`
- GUI scaffold 이후 screenshot, overflow, focus, 상태 표현을 확인하는 `docs/VISUAL_VALIDATION.md`

다음 항목은 의도적으로 제외합니다.

- `apps/*`, `libs/*`, `package.json`, lockfile, monorepo 설정
- 특정 framework, runtime, database, cloud provider, CI/CD 선택
- 서울게임타운 브랜드 색상, 폰트, 캐릭터, 행사 자산
- downstream 프로젝트의 계정, 지역, 비용, stage naming
- vendored `awesome-design-md` 전체 복사본

## Consequences

- 복제 후 실제 프로젝트가 스택 선택 단계로 넘어갈 때 판단과 검증 위치가 더 분명해집니다.
- 스타터는 여전히 실행 가능한 앱 scaffold를 포함하지 않습니다.
- `.claude/skills` symlink는 macOS/Linux/git 환경에서는 단순하지만 Windows 또는 `core.symlinks=false` 환경에서는 fallback이 필요할 수 있습니다.
- 새 문서가 늘어나는 만큼 `init.sh`, README, progress/handoff, feature state를 함께 갱신해야 합니다.

## Alternatives

- 서울게임타운의 모노레포 scaffold를 그대로 가져오기: 바로 실행 가능한 예시는 생기지만 starter의 stack-neutral 목적을 깨므로 제외했습니다.
- 기술 결정 문서를 추가하지 않고 `ARCHITECTURE.md`만 유지하기: 파일 수는 줄지만 스택 선택 후 결정 요약과 backlog가 흩어질 수 있습니다.
- `.claude/skills`를 실제 복사본으로 커밋하기: symlink 호환성 문제는 줄지만 skill drift가 생기므로 제외했습니다.
- 시각 검증 문서를 `docs/FRONTEND.md`에만 합치기: 문서는 줄지만 GUI scaffold 이후 검증 evidence 위치가 약해집니다.

## Rollback

1. `.claude/skills` symlink를 제거합니다.
2. `docs/TECHNICAL_DECISIONS.md`, `docs/TECHNICAL_DECISION_BACKLOG.md`, `docs/VALIDATION.md`, `docs/VISUAL_VALIDATION.md`를 삭제합니다.
3. `init.sh`, README 파일, `docs/BOOTSTRAP.md`, `docs/FRONTEND.md`, `docs/EXTENSIONS.md`, `docs/design-docs/index.md`, `feature_list.json`, progress/handoff 문서의 링크를 되돌립니다.
4. `.codex/skills/design-md/SKILL.md` frontmatter가 문제를 만들면 기존 Markdown-only skill로 되돌립니다.

## Validation

- `./init.sh`
- `python3 -m json.tool feature_list.json >/dev/null`
- `git diff --check`
- `npx -y @google/design.md lint DESIGN.md`
