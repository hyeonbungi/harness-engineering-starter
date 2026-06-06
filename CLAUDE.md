# Harness Starter Claude Instructions

@AGENTS.md

Claude Code는 `AGENTS.md`를 이 저장소의 단일 진실 원천으로 사용합니다. 이 파일은 Claude Code가 프로젝트 지침을 발견하도록 두는 얇은 entrypoint입니다.

## Claude Code Notes

- 공유 작업 규칙, 시작 순서, 완료 기준을 이 파일에 중복 정의하지 않습니다.
- Claude 전용 예외가 꼭 필요하면 이 파일에 짧게만 적고, `AGENTS.md`의 공통 hard rule을 완화하지 않습니다.
- 예외가 구조적 의미를 가지면 `docs/design-docs/`에 이유와 rollback을 기록합니다.
- 프로젝트 공유 skill은 `.claude/skills -> ../.codex/skills` symlink로 노출됩니다. 자세한 내용은 `docs/EXTENSIONS.md`를 따릅니다.
