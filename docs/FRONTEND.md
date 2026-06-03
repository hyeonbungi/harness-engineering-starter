# Frontend Design Notes

GUI가 필요한 프로젝트로 전환되면 `DESIGN.md`를 에이전트용 디자인 명세로 사용합니다. 현재 루트 파일은 임시 전역 기준선이며, 실제 브랜드와 제품 톤이 정해지면 교체해야 합니다.

## DESIGN.md

`DESIGN.md`는 색상, 타이포그래피, 간격, 컴포넌트 규칙, 금지 사항을 한 파일에 적어 코딩 에이전트가 UI를 일관되게 만들도록 돕는 문서입니다.

현재 루트 `DESIGN.md`는 Google `design.md` 형식에 맞춘 한국어 단일 원천입니다. YAML frontmatter는 기계가 읽는 토큰이고, Markdown 본문은 사람이 읽는 적용 기준입니다. 공개 첫 화면인 `README.md`만 영어 기본과 한국어 보조 문서로 이중화하고, 내부 디자인 운영 문서는 실제 작업 언어에 맞춰 한국어로 유지합니다. 영어권 팀으로 전환되거나 외부 기여가 늘어나면 그때 영어화 또는 별도 번역 문서를 검토합니다.

기본 위치는 프로젝트 루트입니다.

```text
./DESIGN.md
```

## Global And Scoped DESIGN.md

루트 `DESIGN.md`는 전역 기본값입니다. 애플리케이션, 라이브러리, 패키지, 서비스, 특정 GUI 표면마다 별도 규칙이 필요하면 해당 경로에 전용 `DESIGN.md`를 둘 수 있습니다.

```text
DESIGN.md
path/to/app/DESIGN.md
path/to/library/DESIGN.md
path/to/surface/DESIGN.md
```

에이전트는 루트에서 작업 대상 경로까지 발견되는 모든 `DESIGN.md`를 순서대로 읽습니다. 전용 `DESIGN.md`는 전역 명세를 반복하지 않고, 해당 범위의 차이, 추가 토큰, 컴포넌트 제약, 플랫폼 차이만 기록합니다.

GUI를 만들거나 수정하는 작업은 `DESIGN.md` 없이 시작하지 않습니다. 전역 명세만으로 충분한 작은 프로젝트라면 전용 파일은 만들지 않아도 되지만, 그 판단은 작업 문서나 결정 기록에 남깁니다.

충돌 시 우선순위는 `루트 DESIGN.md -> 스코프별 DESIGN.md -> docs/DESIGN_SOURCES.md -> 구현 토큰/컴포넌트 -> 화면별 임시 판단`입니다. 기술 스택과 패키지가 생기기 전에는 구현 토큰/컴포넌트 계층을 만들지 않습니다.

스코프별 `DESIGN.md`는 다음만 기록합니다.

- 해당 표면의 목적과 주요 사용자
- 루트와 다른 화면 밀도, 정보 구조, interaction, 플랫폼 제약
- 추가 또는 override token의 이유
- 적용할 reference model과 배제할 reference 요소
- 검증 방법과 rollback 기준

루트 문서를 그대로 복사한 스코프 문서는 drift를 만들기 때문에 금지합니다.

## Google design.md Compatibility

이 스타터는 `google-labs-code/design.md`를 1차 형식 기준으로 봅니다. 기본 구조는 다음과 같습니다.

- YAML frontmatter: `colors`, `typography`, `spacing`, `rounded`, `components` 같은 machine-readable token
- Markdown body: `Overview`, `Colors`, `Typography`, `Layout`, `Elevation & Depth`, `Shapes`, `Components`, `Do's and Don'ts` 순서의 human-readable rationale

선택 검증으로 Google CLI를 사용할 수 있습니다. 기술 스택이 아직 정해지지 않았으므로 npm 패키지를 저장소 의존성으로 추가하지는 않습니다.

```bash
npx @google/design.md lint DESIGN.md
```

두 버전을 비교할 때는 다음 명령을 사용합니다.

```bash
npx @google/design.md diff DESIGN.md DESIGN-next.md
```

검증 도구가 실행되지 않으면 수동으로 frontmatter token, section order, token reference, 접근성 기준을 확인합니다. 자세한 기준은 `docs/references/design-md.md`와 `.codex/skills/design-md/SKILL.md`를 따릅니다.

## External DESIGN.md References

외부 디자인 명세와 샘플은 의존성과 비슷하게 취급합니다.

- 설치 전 원문을 읽습니다.
- 출처와 라이선스를 확인합니다.
- 프로젝트 브랜드와 충돌하는 토큰을 그대로 병합하지 않습니다.
- 프롬프트 인젝션이나 부적절한 에이전트 지시가 없는지 검토합니다.
- VoltAgent 샘플은 참고 자료로만 사용하고, 유명 제품의 시각 정체성을 그대로 복제하지 않습니다.

외부 reference를 실제 프로젝트에 쓰려면 `docs/DESIGN_SOURCES.md`에 `Adopt`와 `Do Not Adopt`를 함께 기록합니다. 섹션 구성, token naming, component/state/checklist 방식은 참고할 수 있지만 색상, 로고, 폰트, 브랜드 copy, 고유 layout signature는 가져오지 않습니다.

## Design Source Evidence

실제 브랜드 자산, 폰트, screenshot, Figma 파일, 외부 디자인 시스템을 사용하기 전에는 `docs/DESIGN_SOURCES.md`를 갱신합니다. 이 스타터는 아직 기술 스택과 앱 경로가 없으므로 runtime asset directory를 미리 만들지 않습니다.

기록할 항목:

- 출처와 라이선스
- 저장소에 둘 파일과 두지 않을 파일
- self-host 또는 외부 delivery 판단
- 참고할 요소와 배제할 요소
- 검증 방법

## When To Replace This Baseline

- 실제 브랜드 색상과 톤이 정해졌을 때
- 주요 사용자와 화면 밀도가 정해졌을 때
- UI 컴포넌트 라이브러리를 선택했을 때
- 외부 디자인 시스템을 가져오기로 결정했을 때

## Verification

UI 구현이 생긴 뒤에는 다음 검증을 추가합니다.

- 주요 화면 스크린샷 확인
- 모바일과 데스크톱 viewport 확인
- 텍스트 overflow, 겹침, focus state 확인
- 접근성 기본 점검
- 가능하면 `npx @google/design.md lint DESIGN.md`
