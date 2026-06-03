# Design Sources

이 문서는 실제 프로젝트로 전환한 뒤 `DESIGN.md`의 근거가 되는 브랜드 자산, 참고 이미지, 폰트, 외부 `DESIGN.md`, 디자인 시스템 샘플을 기록하는 템플릿입니다.

현재 스타터는 제품명, 브랜드, 앱 표면, 기술 스택이 모두 `TBD`이므로 실제 디자인 자산을 포함하지 않습니다.

## Current Source Status

| Area | Status |
| --- | --- |
| Product brand | TBD |
| Logo | TBD |
| Visual assets | TBD |
| Font | System font baseline only |
| External reference model | None selected |
| Runtime asset paths | TBD after stack selection |

## Source Categories

기록할 수 있는 출처입니다.

- 공식 로고, 키비주얼, 아이콘, 캐릭터, 제품 이미지
- Figma, Sketch, design token export, brand guideline
- 폰트 출처와 라이선스
- 외부 `DESIGN.md`나 공개 디자인 시스템 reference
- 실제 제품 화면 screenshot 또는 운영 도구 screenshot
- 사용자 조사에서 확인된 화면 밀도, 접근성, 플랫폼 제약

## Reference Model Template

외부 제품이나 공개 샘플을 참고할 때는 다음 형식을 사용합니다. 브랜드를 복사하지 않고, 일반화 가능한 구조만 가져오기 위한 장치입니다.

| Reference | Weight | Adopt | Do Not Adopt | Source |
| --- | --- | --- | --- | --- |
| TBD | TBD | 섹션 구성, token naming, component/state/checklist 방식 | 색상, 로고, 폰트, 브랜드 copy, 고유 layout signature | TBD |

## Repository Asset Rules

저장소에 추가할 수 있는 파일:

- 앱에서 직접 사용하는 최적화된 파생본
- favicon, social preview, app icon처럼 build/runtime에 필요한 변환본
- 문서 검토용 낮은 해상도 preview

저장소에 추가하지 않는 파일:

- 원본 PSD, AI, 편집 가능한 대형 원본
- 권한이 불명확한 이미지, 폰트, 브랜드 자산
- 실제 제품과 무관한 stock image
- 임시 캡처나 개인 작업 화면

## Suggested Paths After Stack Selection

```text
apps/<app>/public/assets/
apps/<app>/src/assets/
docs/assets/
```

앱 runtime에 필요한 공개 자산은 해당 app 아래에 둡니다. 문서 검토용 이미지는 `docs/assets/` 아래에 둡니다. 이 스타터 단계에서는 해당 디렉터리를 미리 만들지 않습니다.

## Font Policy Template

실제 폰트를 선택하면 다음을 기록합니다.

- font name
- source URL
- license and redistribution scope
- selected weights
- self-host or external delivery decision
- fallback stack
- `font-display` policy
- preload policy
- Korean and mobile readability checks if applicable

## Evidence Checklist

`DESIGN.md`를 실제 브랜드 기준으로 교체하거나 확장하기 전에 다음을 확인합니다.

- 출처와 라이선스를 확인했습니다.
- 원본 자산을 변형해도 되는지 확인했습니다.
- 저장소에 넣는 파일은 필요한 파생본입니다.
- 외부 reference의 `Adopt`와 `Do Not Adopt`를 함께 기록했습니다.
- 루트 `DESIGN.md`와 스코프별 `DESIGN.md` 중 어디를 바꿀지 결정했습니다.
- 기술 스택이나 패키지 경로를 추측해서 만들지 않았습니다.
