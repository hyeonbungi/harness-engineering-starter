---
version: "starter"
name: "Project Design Baseline"
description: "Generic frontend design baseline for projects that have not chosen a product identity yet."
---

# 프로젝트 디자인 기준선

이 파일은 GUI 작업이 생겼을 때 에이전트가 먼저 읽는 전역 디자인 기준선입니다. 아직 실제 브랜드, 제품 톤, 주요 화면이 정해지지 않았으므로 완성된 디자인 시스템이 아니라 임시 기준으로 사용합니다.

실제 프로젝트로 전환한 뒤 브랜드와 인터페이스가 정해지면 이 문서를 교체하거나 확장합니다. 하위 경로에 전용 `DESIGN.md`를 둘 수 있지만, 전역 문서를 반복하지 말고 해당 범위의 차이만 기록합니다.

## 시각 톤

- 조용하고 실용적이며 빠르게 훑어볼 수 있는 화면을 기본값으로 둡니다.
- 마케팅용 구성보다 실제 작업 흐름을 우선합니다.
- 명확한 위계, 안정적인 간격, 절제된 색을 사용합니다.
- 장식용 그라디언트, 배경 블롭, 한 가지 색조만 반복하는 팔레트는 피합니다.
- 이 기준선을 최종 브랜드처럼 사용하지 않습니다.

## 색상 토큰

| Token | Hex | Role |
| --- | --- | --- |
| `background` | `#FAFAF8` | 앱 배경 |
| `surface` | `#FFFFFF` | 주요 패널과 콘텐츠 표면 |
| `surface-muted` | `#F1F3F1` | 보조 표면 |
| `text-primary` | `#1E2420` | 주요 텍스트 |
| `text-secondary` | `#5D675F` | 보조 텍스트 |
| `border` | `#D8DED8` | 구분선과 컨트롤 경계 |
| `primary` | `#2F6F5E` | 주요 액션 |
| `primary-hover` | `#275B4E` | 주요 액션 hover |
| `accent` | `#B8793A` | 드문 강조 |
| `danger` | `#B54343` | 파괴적 액션 또는 오류 |
| `warning` | `#B88728` | 경고 상태 |
| `success` | `#3E7C49` | 성공 상태 |

## 타이포그래피

- 프로젝트 전용 서체가 정해질 때까지 시스템 폰트를 사용합니다.
- 본문 문구는 직접적이고 작업 중심으로 씁니다.
- 글자 간격은 `0`을 유지합니다.
- viewport 폭에 따라 글자 크기를 자동 확대/축소하지 않습니다.
- 큰 display type은 실제 hero 화면이 있을 때만 사용합니다.

| Role | Size | Weight | Line height |
| --- | --- | --- | --- |
| Page title | 32px | 700 | 1.2 |
| Section title | 22px | 650 | 1.3 |
| Panel title | 16px | 650 | 1.4 |
| Body | 15px | 400 | 1.6 |
| Small | 13px | 400 | 1.5 |
| Label | 12px | 650 | 1.4 |

## 컴포넌트 스타일

### Buttons

- Primary button은 `primary` 배경과 흰색 텍스트를 사용합니다.
- Secondary button은 흰색 배경, border, `text-primary`를 사용합니다.
- Destructive button은 `danger`를 사용합니다.
- 아이콘만 있는 액션은 익숙한 아이콘과 접근 가능한 label을 함께 둡니다.
- 버튼 텍스트는 모바일에서도 잘리지 않아야 합니다.

### Inputs

- Input은 흰색 배경, `border`, 8px 이하 radius를 사용합니다.
- Focus 상태는 border color와 outline으로 분명히 보이게 합니다.
- Validation message는 필드 가까이에 두고 사용자 언어로 씁니다.

### Cards And Panels

- Card는 반복 항목, modal, 실제로 프레임이 필요한 도구에만 사용합니다.
- Card 안에 또 다른 card를 넣지 않습니다.
- 프로젝트별 디자인 시스템이 바꾸지 않는 한 radius는 8px 이하로 유지합니다.
- 장식용 shadow보다 border와 spacing을 먼저 사용합니다.

### Navigation

- 현재 위치가 분명히 보이게 합니다.
- 병렬 view에는 tab을, 계층 이동에는 breadcrumb를 사용합니다.
- 핵심 작업 흐름을 모호한 label 뒤에 숨기지 않습니다.

## 레이아웃 원칙

- landing page부터 만들지 말고 실제 작업 흐름에서 시작합니다.
- board, grid, toolbar, counter, tile처럼 형식이 고정된 요소는 responsive constraint를 명확히 둡니다.
- 운영형 화면은 훑기, 비교, 반복 작업을 우선합니다.
- 모바일과 데스크톱 모두에서 텍스트와 컨트롤이 겹치면 안 됩니다.
- Empty state는 제품 비전이 아니라 다음에 할 수 있는 유용한 행동을 알려줍니다.

## 깊이와 레이어

- 기본 표면은 shadow보다 border를 사용합니다.
- Elevation은 popover, menu, dialog, floating toolbar에만 제한적으로 사용합니다.
- 제품상 필요한 이유가 없으면 blur가 강하거나 반투명한 표면을 쓰지 않습니다.

## Do And Don't

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

## 반응형 동작

- 모바일에서도 주요 액션과 현재 상태가 유지되어야 합니다.
- 비교가 핵심인 표는 무리하게 stacked list로 바꾸지 않습니다.
- 모바일 중심 인터페이스의 touch target은 최소 44px를 권장합니다.
- 긴 label은 overflow 전에 자연스럽게 줄바꿈되어야 합니다.

## 에이전트 프롬프트 기준

실제 브랜드가 정해지기 전 GUI를 만들 때는 다음 기준으로 지시합니다.

```text
적용 가능한 DESIGN.md 계층을 임시 디자인 기준선으로 사용한다. 루트 DESIGN.md를 먼저 읽고, 대상 경로에 전용 DESIGN.md가 있으면 그 차이를 적용한다. 조용하고 작업 중심인 화면을 만들고, 중립적인 표면, 절제된 주요 액션, 명확한 위계, 안정적인 반응형 동작을 유지한다. 최종 브랜드 정체성을 임의로 만들지 않는다.
```
