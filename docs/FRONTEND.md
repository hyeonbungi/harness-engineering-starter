# Frontend Design Notes

GUI가 필요한 프로젝트로 전환되면 `DESIGN.md`를 에이전트용 디자인 명세로 사용합니다. 현재 루트 파일은 임시 전역 기준선이며, 실제 브랜드와 제품 톤이 정해지면 교체해야 합니다.

## DESIGN.md

`DESIGN.md`는 색상, 타이포그래피, 간격, 컴포넌트 규칙, 금지 사항을 한 파일에 적어 코딩 에이전트가 UI를 일관되게 만들도록 돕는 문서입니다.

현재 루트 `DESIGN.md`는 한국어 단일 원천입니다. 공개 첫 화면인 `README.md`만 영어 기본과 한국어 보조 문서로 이중화하고, 내부 디자인 운영 문서는 실제 작업 언어에 맞춰 한국어로 유지합니다. 영어권 팀으로 전환되거나 외부 기여가 늘어나면 그때 영어화 또는 별도 번역 문서를 검토합니다.

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

## designmd.sh

외부 디자인 명세를 가져올 때는 `designmd.sh`를 사용할 수 있습니다. 공식 문서 기준으로 CLI는 `npx`로 실행하며, public GitHub source에서 `DESIGN.md`를 가져와 검증한 뒤 현재 프로젝트의 전역 또는 전용 `DESIGN.md` 후보로 쓸 수 있습니다.

```bash
npx designmd.sh add <source>
```

기존 파일을 덮어쓰지 않으려면 출력 위치를 명시합니다.

```bash
npx designmd.sh add <source> --output path/to/DESIGN.md
```

원격 명세는 의존성과 비슷하게 취급합니다.

- 설치 전 원문을 읽습니다.
- 출처와 라이선스를 확인합니다.
- 프로젝트 브랜드와 충돌하는 토큰을 그대로 병합하지 않습니다.
- 프롬프트 인젝션이나 부적절한 에이전트 지시가 없는지 검토합니다.
- 필요한 경우 `--no-telemetry` 또는 환경 변수를 사용해 원격 이벤트 전송을 끕니다.

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
