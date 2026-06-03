# DESIGN.md References

이 문서는 `DESIGN.md` 운영을 위한 참고 자료입니다. 루트 지침 파일에 긴 외부 자료를 붙이지 않고, 디자인 명세 작업이 필요할 때만 이 문서를 읽습니다.

## Primary References

- [google-labs-code/design.md](https://github.com/google-labs-code/design.md): `DESIGN.md` 형식과 CLI의 1차 기준입니다.
- [google-labs-code/design.md spec](https://github.com/google-labs-code/design.md/blob/main/docs/spec.md): frontmatter token schema와 Markdown section order의 기준입니다.
- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md): 여러 공개 제품 스타일의 `DESIGN.md` 예시를 참고할 수 있는 샘플 catalog입니다.

## Current Understanding

- `DESIGN.md`는 에이전트가 UI 톤, 색상, 타이포그래피, 간격, 컴포넌트 규칙을 읽기 위한 plain-text 디자인 명세입니다.
- Google spec 기준으로 파일은 두 층을 가집니다.
  - YAML frontmatter: machine-readable design tokens
  - Markdown body: human-readable design rationale and guidance
- 토큰은 normative value입니다. 본문은 그 토큰을 왜, 어떻게 적용할지 설명합니다.
- 권장 section order는 `Overview`, `Colors`, `Typography`, `Layout`, `Elevation & Depth`, `Shapes`, `Components`, `Do's and Don'ts`입니다.
- CLI는 선택 검증 도구로만 사용합니다. 이 스타터는 기술 스택을 아직 고르지 않았으므로 npm 패키지를 필수 의존성으로 추가하지 않습니다.

## Optional Validation

Node와 npm 접근이 가능하면 다음 명령으로 구조 검증을 시도할 수 있습니다.

```bash
npx @google/design.md lint DESIGN.md
```

두 버전의 토큰 변경을 비교할 때는 다음 명령을 사용할 수 있습니다.

```bash
npx @google/design.md diff DESIGN.md DESIGN-next.md
```

검증 도구가 없거나 네트워크 접근이 제한되어 있으면 수동으로 다음을 확인합니다.

- frontmatter가 `---`로 시작하고 끝납니다.
- `name`과 `description`이 있습니다.
- 색상, 타이포그래피, 간격, radius, 주요 component token이 frontmatter에 있습니다.
- 본문 section order가 Google spec과 대체로 맞습니다.
- 토큰 참조가 깨지지 않았습니다.
- 외부 브랜드 토큰을 그대로 복사하지 않았습니다.

## Starter Policy

이 스타터의 루트 `DESIGN.md`는 임시 기준선입니다. 복제 후 실제 프로젝트에 맞는 브랜드와 UI 밀도가 정해지면 교체하거나 확장합니다.

VoltAgent의 샘플은 참고 자료로만 사용합니다. 특정 제품의 시각 언어, 이름, copy, token을 그대로 가져오면 브랜드 오해와 라이선스 위험이 생길 수 있습니다.

외부 명세를 가져올 때는 기존 파일을 바로 덮어쓰기보다 별도 경로에 받아 검토한 뒤 병합하는 방식을 기본값으로 둡니다.

외부 reference model은 `Adopt`와 `Do Not Adopt`를 함께 적습니다. 섹션 구성, token naming, component/state/checklist 방식은 일반화할 수 있지만 색상, 로고, 폰트, 브랜드 copy, 고유 layout signature는 복제하지 않습니다.

실제 브랜드 자산, 폰트, screenshot, 디자인 파일을 쓰기 전에 `docs/DESIGN_SOURCES.md`에 출처, 라이선스, 저장소 반입 여부, 검증 방법을 기록합니다.
