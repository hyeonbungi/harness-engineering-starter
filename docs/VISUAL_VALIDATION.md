# Visual Validation

이 문서는 GUI가 생긴 뒤 시각 검증을 어떻게 추가할지 정리하는 템플릿입니다.

현재 스타터에는 실행 가능한 프론트엔드 앱이 없으므로 자동 시각 검증은 없습니다. GUI 작업 전에는 `DESIGN.md`, `docs/FRONTEND.md`, `docs/DESIGN_SOURCES.md`를 먼저 갱신합니다.

## Current Baseline

현재 확인 범위:

- 루트 `DESIGN.md`가 YAML frontmatter로 시작합니다.
- `DESIGN.md`에 `version`, `name`, `description`이 있습니다.
- 선택적으로 Google `design.md` lint를 실행할 수 있습니다.

```bash
npx -y @google/design.md lint DESIGN.md
```

## First Frontend Scaffold

첫 GUI surface가 생기면 다음 검증을 추가합니다.

- desktop viewport screenshot
- mobile viewport screenshot
- text overflow와 겹침 확인
- focus state 확인
- loading, empty, disabled, error 상태 확인
- 주요 상태가 color-only 표현에만 의존하지 않는지 확인
- keyboard navigation 기본 흐름 확인
- 첫 viewport에서 제품명, 현재 상태, 주요 행동이 보이는지 확인

실제 명령 이름은 스택 선택 후 정합니다.

```text
design:check
test
e2e
```

## Browser Matrix

처음에는 가장 저렴한 실제 browser 하나로 시작합니다. 공개 web, desktop shell, mobile web 호환성 요구가 확인되면 Safari/WebKit, Firefox, mobile viewport를 추가합니다.

## Artifacts

초기에는 실패 시점 screenshot과 trace만 보관합니다. 전체 screenshot snapshot suite는 UI가 안정되고 review 비용보다 회귀 방지 가치가 커진 뒤 도입합니다.

## Do Not Add Yet

- 제품/브랜드가 없는 상태의 hero screenshot gate
- 실제 화면이 없는 snapshot suite
- 외부 디자인 시스템의 visual identity 복제
- 런타임 asset directory를 추측해서 미리 만드는 일
