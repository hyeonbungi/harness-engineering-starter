# Karpathy-Inspired Agent Guidelines Reference

## Source

- Repository: <https://github.com/multica-ai/andrej-karpathy-skills>
- Retrieved: 2026-05-25
- License: MIT

## Why It Matters Here

원본 저장소는 Claude Code나 Cursor 같은 코딩 에이전트가 흔히 범하는 문제를 행동 원칙으로 정리합니다. 이 스타터도 에이전트가 프로젝트 상태를 추측하지 않고 검증 가능한 변경을 하도록 돕는 것이 목적이므로, 원칙 수준에서 잘 맞습니다.

## Applied Mapping

| Source idea | Starter adaptation |
| --- | --- |
| Think before coding | `docs/AGENT_BEHAVIOR.md`의 모호성 처리와 가정 명시 규칙 |
| Simplicity first | 제품/스택 미정 상태에서 구조를 만들지 않는 최소 변경 규칙 |
| Surgical changes | 요청, 결정, 검증 기준으로 추적 가능한 변경만 허용하는 규칙 |
| Goal-driven execution | `feature_list.json`, `init.sh`, 인계 문서에 검증 증거를 남기는 완료 기준 |

## Non-Goals

- 원본 `CLAUDE.md`를 그대로 복제하지 않습니다.
- Claude Code 전용 plugin 또는 Cursor rule을 이 저장소에 추가하지 않습니다.
- 제품, 기술 스택, 저장소 구조를 이 참고 자료만으로 확정하지 않습니다.
