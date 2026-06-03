---
version: "alpha"
name: "Project Design Baseline"
description: "Product-neutral DESIGN.md baseline for projects that have not chosen a brand, interface density, or product identity yet."
colors:
  background: "#FAFAF8"
  surface: "#FFFFFF"
  surfaceMuted: "#F1F3F1"
  textPrimary: "#1E2420"
  textSecondary: "#5D675F"
  border: "#D8DED8"
  primary: "#2F6F5E"
  primaryHover: "#275B4E"
  accent: "#B8793A"
  danger: "#B54343"
  warning: "#B88728"
  success: "#3E7C49"
  onPrimary: "#FFFFFF"
  onDanger: "#FFFFFF"
typography:
  pageTitle:
    fontFamily: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
    fontSize: 32px
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: 0px
  sectionTitle:
    fontFamily: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
    fontSize: 22px
    fontWeight: 650
    lineHeight: 1.3
    letterSpacing: 0px
  panelTitle:
    fontFamily: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
    fontSize: 16px
    fontWeight: 650
    lineHeight: 1.4
    letterSpacing: 0px
  body:
    fontFamily: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
    fontSize: 15px
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: 0px
  small:
    fontFamily: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
    fontSize: 13px
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: 0px
  label:
    fontFamily: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif
    fontSize: 12px
    fontWeight: 650
    lineHeight: 1.4
    letterSpacing: 0px
spacing:
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
rounded:
  none: 0px
  sm: 4px
  md: 8px
  lg: 12px
  full: 9999px
components:
  buttonPrimary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.onPrimary}"
    rounded: "{rounded.md}"
    padding: 12px
    typography: "{typography.label}"
  buttonPrimaryHover:
    backgroundColor: "{colors.primaryHover}"
    textColor: "{colors.onPrimary}"
    rounded: "{rounded.md}"
    padding: 12px
    typography: "{typography.label}"
  buttonSecondary:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.textPrimary}"
    rounded: "{rounded.md}"
    padding: 12px
    typography: "{typography.label}"
  buttonDanger:
    backgroundColor: "{colors.danger}"
    textColor: "{colors.onDanger}"
    rounded: "{rounded.md}"
    padding: 12px
    typography: "{typography.label}"
  input:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.textPrimary}"
    rounded: "{rounded.md}"
    padding: 12px
    typography: "{typography.body}"
  panel:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.textPrimary}"
    rounded: "{rounded.md}"
    padding: 16px
    typography: "{typography.body}"
---

# 프로젝트 디자인 기준선

이 파일은 GUI 작업이 생겼을 때 에이전트가 먼저 읽는 전역 `DESIGN.md`입니다. Google `design.md` 형식에 맞춰 YAML frontmatter에는 기계가 읽을 수 있는 디자인 토큰을, 본문에는 사람이 읽는 적용 기준과 맥락을 둡니다.

아직 실제 브랜드, 제품 톤, 주요 화면이 정해지지 않았으므로 이 문서는 완성된 디자인 시스템이 아니라 임시 기준선입니다. 실제 프로젝트로 전환한 뒤 브랜드와 인터페이스가 정해지면 이 문서를 교체하거나 확장합니다.

## Overview

### Source Of Truth

- 루트 `DESIGN.md`: 제품/스택이 정해지기 전의 전역 디자인 기준선입니다. semantic token, 접근성, 레이아웃 원칙, 콘텐츠 원칙의 기본값을 둡니다.
- 스코프별 `DESIGN.md`: 앱, 패키지, 표면이 생긴 뒤 해당 경로에 둡니다. 루트 내용을 반복하지 않고, 그 범위의 밀도, 정보 구조, interaction, 플랫폼 제약, 예외만 기록합니다.
- 디자인 근거 문서: 실제 브랜드 자산, 참고 이미지, 폰트, 외부 reference model이 생기면 `docs/DESIGN_SOURCES.md`에 출처와 사용 범위를 먼저 기록합니다.
- 구현 토큰과 컴포넌트: 기술 스택과 패키지가 정해진 뒤에만 생성합니다. 이 단계에서는 `libs/design-tokens`, `tailwind-config`, UI package 같은 경로를 만들지 않습니다.
- 화면별 임시 판단: 문서화된 기준이 없을 때만 사용하고, 반복되면 루트 또는 스코프별 `DESIGN.md`로 승격합니다.

충돌 시 우선순위는 `루트 DESIGN.md -> 스코프별 DESIGN.md -> 디자인 근거 문서 -> 구현 토큰/컴포넌트 -> 화면별 임시 판단`입니다. 예외가 필요하면 가까운 스코프 문서나 결정 기록에 이유와 되돌림 방법을 남깁니다.

### Reference Model

현재 스타터는 특정 브랜드나 제품 reference model을 채택하지 않습니다. 외부 제품의 `DESIGN.md`를 참고할 때는 다음 표 형식으로 `Adopt`와 `Do Not Adopt`를 함께 기록합니다.

| Reference | Adopt | Do Not Adopt |
| --- | --- | --- |
| TBD | 섹션 구성, 토큰 표기, 검증 checklist처럼 일반화 가능한 운영 방식 | 색상, 로고, 폰트, 브랜드 copy, 고유 layout signature |

- 조용하고 실용적이며 빠르게 훑어볼 수 있는 화면을 기본값으로 둡니다.
- 마케팅용 구성보다 실제 작업 흐름을 우선합니다.
- 명확한 위계, 안정적인 간격, 절제된 색을 사용합니다.
- 이 기준선을 최종 브랜드처럼 사용하지 않습니다.
- 하위 경로에 전용 `DESIGN.md`를 둘 수 있지만, 전역 문서를 반복하지 말고 해당 범위의 차이만 기록합니다.

## Colors

색상은 제품 정체성을 확정하지 않는 중립 팔레트입니다. 토큰 값은 frontmatter의 `colors`를 원천으로 삼고, 본문은 사용 의도를 설명합니다.

| Token | Role |
| --- | --- |
| `background` | 앱 배경 |
| `surface` | 주요 패널과 콘텐츠 표면 |
| `surfaceMuted` | 보조 표면 |
| `textPrimary` | 주요 텍스트 |
| `textSecondary` | 보조 텍스트 |
| `border` | 구분선과 컨트롤 경계 |
| `primary` | 주요 액션 |
| `primaryHover` | 주요 액션 hover |
| `accent` | 드문 강조 |
| `danger` | 파괴적 액션 또는 오류 |
| `warning` | 경고 상태 |
| `success` | 성공 상태 |

장식용 그라디언트, 배경 블롭, 한 가지 색조만 반복하는 팔레트는 피합니다. 제품 브랜드가 정해지면 색상 토큰을 교체하되 역할 이름은 가능한 한 유지합니다.

## Typography

프로젝트 전용 서체가 정해질 때까지 시스템 폰트를 사용합니다. 본문 문구는 직접적이고 작업 중심으로 씁니다.

| Token | Role |
| --- | --- |
| `pageTitle` | 페이지 최상위 제목 |
| `sectionTitle` | 주요 섹션 제목 |
| `panelTitle` | 패널, 사이드바, 카드 안의 작은 제목 |
| `body` | 일반 본문 |
| `small` | 보조 설명과 metadata |
| `label` | 버튼, form label, table label |

글자 간격은 `0px`을 기본값으로 유지합니다. viewport 폭에 따라 글자 크기를 자동 확대/축소하지 않습니다. 큰 display type은 실제 hero 화면이 있을 때만 사용합니다.

## Layout

- landing page부터 만들지 말고 실제 작업 흐름에서 시작합니다.
- board, grid, toolbar, counter, tile처럼 형식이 고정된 요소는 responsive constraint를 명확히 둡니다.
- 운영형 화면은 훑기, 비교, 반복 작업을 우선합니다.
- 모바일과 데스크톱 모두에서 텍스트와 컨트롤이 겹치면 안 됩니다.
- Empty state는 제품 비전이 아니라 다음에 할 수 있는 유용한 행동을 알려줍니다.

## Elevation & Depth

- 기본 표면은 shadow보다 border를 사용합니다.
- Elevation은 popover, menu, dialog, floating toolbar에만 제한적으로 사용합니다.
- 제품상 필요한 이유가 없으면 blur가 강하거나 반투명한 표면을 쓰지 않습니다.

## Shapes

- 프로젝트별 디자인 시스템이 바꾸지 않는 한 radius는 8px 이하를 기본값으로 둡니다.
- Card는 반복 항목, modal, 실제로 프레임이 필요한 도구에만 사용합니다.
- Card 안에 또 다른 card를 넣지 않습니다.
- 장식용 shadow보다 border와 spacing을 먼저 사용합니다.

## Components

### Buttons

- Primary button은 `primary` 배경과 `onPrimary` 텍스트를 사용합니다.
- Secondary button은 `surface` 배경, `border`, `textPrimary`를 사용합니다.
- Destructive button은 `danger`와 `onDanger`를 사용합니다.
- 아이콘만 있는 액션은 익숙한 아이콘과 접근 가능한 label을 함께 둡니다.
- 버튼 텍스트는 모바일에서도 잘리지 않아야 합니다.

### Inputs

- Input은 `surface` 배경, `border`, 8px 이하 radius를 사용합니다.
- Focus 상태는 border color와 outline으로 분명히 보이게 합니다.
- Validation message는 필드 가까이에 두고 사용자 언어로 씁니다.

### Navigation

- 현재 위치가 분명히 보이게 합니다.
- 병렬 view에는 tab을, 계층 이동에는 breadcrumb를 사용합니다.
- 핵심 작업 흐름을 모호한 label 뒤에 숨기지 않습니다.

### Responsive Behavior

- 모바일에서도 주요 액션과 현재 상태가 유지되어야 합니다.
- 비교가 핵심인 표는 무리하게 stacked list로 바꾸지 않습니다.
- 모바일 중심 인터페이스의 touch target은 최소 44px를 권장합니다.
- 긴 label은 overflow 전에 자연스럽게 줄바꿈되어야 합니다.

## Do's and Don'ts

Do:

- UI copy는 구체적이고 행동 중심으로 씁니다.
- 간격과 컨트롤 위치를 예측 가능하게 유지합니다.
- 완료, loading, disabled, error 상태를 준비합니다.
- 낯선 비유보다 익숙한 컨트롤을 우선합니다.

Don't:

- 장식용 orb, bokeh blob, 임시 브랜드 그라디언트를 쓰지 않습니다.
- 사용자가 앱이나 도구를 요청했는데 marketing page부터 만들지 않습니다.
- 미완성 동작을 시각적 polish로 가리지 않습니다.
- 제품 안의 텍스트로 UI 기능, 단축키, 디자인 요소를 설명하지 않습니다.

## Agent Prompt Guide

실제 브랜드가 정해지기 전 GUI를 만들 때는 다음 기준으로 지시합니다.

```text
적용 가능한 DESIGN.md 계층을 임시 디자인 기준선으로 사용한다. 루트 DESIGN.md를 먼저 읽고, 대상 경로에 전용 DESIGN.md가 있으면 루트 기준을 유지하면서 그 범위의 밀도, 정보 구조, interaction, 플랫폼 제약만 추가 적용한다. YAML frontmatter의 토큰을 우선 적용하고, 본문 기준은 토큰을 어떻게 써야 하는지 설명하는 맥락으로 사용한다. 브랜드 자산이나 외부 reference가 필요하면 먼저 docs/DESIGN_SOURCES.md에 출처, 사용 범위, Adopt / Do Not Adopt를 기록한다. 조용하고 작업 중심인 화면을 만들고, 중립적인 표면, 절제된 주요 액션, 명확한 위계, 안정적인 반응형 동작을 유지한다. 최종 브랜드 정체성, 앱 구조, 구현 패키지는 임의로 만들지 않는다.
```
