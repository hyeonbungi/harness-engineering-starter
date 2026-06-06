# Agent Instructions Single Source

## Status

Accepted on 2026-06-06.

## Context

`AGENTS.md`와 `CLAUDE.md`가 모두 시작 순서, 작업 규칙, 완료 기준을 직접 정의하면 두 문서가 drift할 수 있습니다. 이 스타터는 Codex, Claude Code, 기타 코딩 에이전트가 함께 읽을 수 있는 공유 기준을 유지해야 하므로, 공통 지침은 한 곳에만 있어야 합니다.

Claude Code는 `CLAUDE.md`를 entrypoint로 발견할 수 있으므로 파일 자체는 유지합니다. 하지만 공통 규칙의 정본은 `AGENTS.md`로 고정합니다.

## Decision

- `AGENTS.md`를 모든 에이전트의 단일 진실 원천으로 둡니다.
- `CLAUDE.md`는 `@AGENTS.md` 포인터와 최소 Claude Code note만 포함합니다.
- 공유 시작 순서, 작업 규칙, 완료 기준은 `CLAUDE.md`에 중복 정의하지 않습니다.
- Claude 전용 예외가 필요하면 `AGENTS.md`의 hard rule을 완화하지 않는 짧은 예외만 `CLAUDE.md`에 둡니다.
- 구조적 예외는 별도 decision record에 이유와 rollback을 남깁니다.

## Consequences

- Codex와 Claude Code가 같은 공통 지침을 읽습니다.
- `CLAUDE.md` drift를 줄일 수 있습니다.
- Claude Code 전용 발견 경로는 유지됩니다.
- Claude 전용 예외가 늘어나면 다시 중복 문서가 될 수 있으므로 짧게 유지해야 합니다.

## Alternatives

- `CLAUDE.md`를 삭제: 중복은 사라지지만 Claude Code entrypoint가 사라질 수 있어 제외했습니다.
- `CLAUDE.md`에 요약본을 유지: 읽기는 편하지만 시간이 지나면 `AGENTS.md`와 불일치할 가능성이 큽니다.
- `AGENTS.md`를 Claude 전용 문법으로 바꾸기: 다른 에이전트와 범용성을 해치므로 제외했습니다.

## Rollback

1. `CLAUDE.md`에 Claude Code 전용 시작 순서와 완료 기준을 다시 작성합니다.
2. `AGENTS.md`, `docs/INSTRUCTION_HIERARCHY.md`, README, `feature_list.json`, progress/handoff 문서에서 single-source 표현을 되돌립니다.
3. `init.sh`의 `CLAUDE.md` `@AGENTS.md` 확인을 제거합니다.

## Validation

- `./init.sh`
- `python3 -m json.tool feature_list.json >/dev/null`
- `git diff --check`
