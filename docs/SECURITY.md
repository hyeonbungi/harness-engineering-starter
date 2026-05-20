# Security Baseline

기술 스택이 정해지기 전에도 보안 기본값은 문서화합니다. 실제 구현이 생기면 이 문서를 스택별 체크리스트로 확장합니다.

## Defaults

- 비밀값은 저장소에 커밋하지 않습니다.
- 환경 변수 예시는 실제 값이 아닌 placeholder만 사용합니다.
- 외부 서비스 권한은 최소 권한으로 시작합니다.
- 사용자 데이터, 인증, 결제, 파일 업로드는 별도 위협 모델을 작성한 뒤 구현합니다.
- 로그에는 토큰, 세션, 개인 식별 정보를 남기지 않습니다.
- 삭제, 마이그레이션, 대량 업데이트에는 되돌림 계획을 둡니다.

## Before Adding A Stack

- 공식 보안 가이드를 확인합니다.
- 인증과 세션 관리 책임 경계를 정합니다.
- 데이터 저장 위치와 백업 정책을 정합니다.
- 로컬 개발용 비밀값 관리 방식을 정합니다.
- CI에서 secret scan 또는 동등한 점검을 추가할지 결정합니다.

## Future Sections

- Authentication
- Authorization
- Data classification
- File handling
- Dependency updates
- Incident response
