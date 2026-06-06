# Instruction Hierarchy

이 문서는 에이전트 지침 파일과 디자인 명세 파일의 전역/스코프 해석 규칙을 정의합니다. 저장소가 단일 앱이든 여러 앱과 라이브러리를 가진 구조든 같은 규칙을 사용합니다.

## Global Files

루트 파일은 저장소 전체의 기본값입니다.

```text
AGENTS.md
CLAUDE.md
DESIGN.md
```

- `AGENTS.md`: Codex, Claude Code, 범용 코드 에이전트의 전역 작업 규칙이자 단일 진실 원천
- `CLAUDE.md`: Claude Code가 `AGENTS.md`를 발견하도록 돕는 entrypoint. 공유 규칙을 중복하지 않고 Claude 전용 예외만 짧게 둡니다.
- `DESIGN.md`: GUI 작업의 전역 디자인 명세

## Scoped Files

하위 경로에 같은 이름의 파일을 둘 수 있습니다.

```text
path/to/scope/AGENTS.md
path/to/scope/CLAUDE.md
path/to/scope/DESIGN.md
```

스코프 파일은 해당 경로와 그 하위 경로에만 적용됩니다. 전역 파일을 반복하지 말고, 전역 규칙과 다른 부분 또는 추가 규칙만 기록합니다.

## Resolution Order

작업 대상이 `path/to/scope/file.ext`라면 에이전트는 다음 순서로 문서를 해석합니다.

1. 루트의 전역 파일
2. `path/`에 있는 스코프 파일
3. `path/to/`에 있는 스코프 파일
4. `path/to/scope/`에 있는 스코프 파일

같은 주제의 규칙이 충돌하면 더 가까운 스코프 파일이 우선합니다. 단, 보안, 비밀값, 검증, 파괴적 작업 금지처럼 전역 hard rule은 스코프 파일에서 완화하지 않습니다.

## GUI Rule

웹, 모바일, 데스크톱, 임베디드 UI 등 GUI를 만들거나 수정하는 모든 작업은 `DESIGN.md`를 사용합니다.

- 전역 `DESIGN.md`는 항상 읽습니다.
- 작업 대상 경로에 전용 `DESIGN.md`가 있으면 함께 읽습니다.
- 새 GUI 스코프가 전역 명세와 다른 패턴을 필요로 하면 전용 `DESIGN.md`를 만듭니다.
- 전용 파일이 필요 없다고 판단하면 전역 명세만으로 충분한 이유를 작업 문서에 남깁니다.

## Agent File Rule

여러 애플리케이션, 라이브러리, 서비스, 패키지를 가진 저장소에서는 각 경로에 전용 `AGENTS.md`를 둘 수 있습니다. Claude Code가 해당 스코프의 지침을 별도 entrypoint로 발견해야 할 때만 가까운 `CLAUDE.md`를 추가합니다.

전용 `AGENTS.md`에는 다음만 둡니다.

- 해당 경로의 책임
- 실행 및 검증 명령
- 전역 규칙과 다른 로컬 제약
- 의존해도 되는 내부 모듈과 의존하면 안 되는 경계
- 스코프별 완료 기준

전용 `CLAUDE.md`를 둘 경우에는 `@AGENTS.md` 또는 가까운 스코프 `AGENTS.md` 포인터와 Claude 전용 예외만 둡니다. 공유 규칙은 `AGENTS.md`에 기록합니다.

## Anti-Patterns

- 루트 문서를 복사해 하위 경로에 그대로 붙여넣기
- `CLAUDE.md`에 `AGENTS.md`와 같은 시작 순서, 작업 규칙, 완료 기준을 중복 정의하기
- 전역 hard rule을 하위 경로에서 조용히 완화하기
- GUI 작업을 하면서 `DESIGN.md`를 읽지 않기
- 스코프 파일에 제품 결정, 실행 계획, 진행 상태를 섞어 넣기
- 오래된 스코프 파일을 남겨 실제 코드와 다르게 만들기
