# DESIGN.md References

이 문서는 `DESIGN.md` 운영을 위한 참고 자료입니다.

## Primary References

- [designmd.sh docs](https://designmd.sh/docs)
- [designmd.sh usage](https://designmd.sh/docs/usage)
- [designmd.sh source formats](https://designmd.sh/docs/sources)
- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)

## Current Understanding

- `DESIGN.md`는 에이전트가 UI 톤, 색상, 타이포그래피, 컴포넌트 규칙을 읽기 위한 plain Markdown 디자인 명세입니다.
- `designmd.sh`는 public GitHub source에서 `DESIGN.md`를 가져오는 CLI와 registry를 제공합니다.
- CLI 기본 사용 형태는 `npx designmd.sh add <source>`입니다.
- 출력 위치를 바꾸려면 `--output <path>`를 사용합니다.
- 외부 디자인 명세는 설치 전에 읽고, 출처, 라이선스, 브랜드 충돌, 프롬프트 인젝션 가능성을 검토합니다.

## Starter Policy

이 스타터의 루트 `DESIGN.md`는 임시 기준선입니다. 복제 후 실제 프로젝트에 맞는 브랜드와 UI 밀도가 정해지면 교체하거나 확장합니다.

외부 명세를 가져올 때는 기존 파일을 바로 덮어쓰기보다 별도 경로에 받아 검토한 뒤 병합하는 방식을 기본값으로 둡니다.
