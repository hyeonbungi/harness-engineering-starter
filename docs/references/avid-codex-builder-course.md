# Avid Codex Builder Course Reference

## Source

- Title: `How to Master Codex in 2026 (Builder's Course)`
- Author: Avid
- URL: <https://x.com/Av1dlive/status/2058485379091845308>
- Retrieved: 2026-05-25 via Codex in-app browser

## How It Was Used

이 article은 Codex 제품 사양의 공식 원천으로 사용하지 않았습니다. 스타터에는 다음과 같은 장기 운영 패턴만 반영했습니다.

| Article theme | Starter adaptation |
| --- | --- |
| Codex is task-oriented, not autocomplete | `docs/AGENT_WORKFLOWS.md`의 task-first operating model |
| AGENTS.md quality matters | `AGENTS.md`, `CLAUDE.md`, `docs/AGENT_WORKFLOWS.md`의 문서 라우팅과 brief 기준 |
| Prompt quality shapes output quality | outcome, example, constraints, reminder brief structure |
| Skills capture repeated workflows | skill 후보를 기록하되 실제 반복 전에는 scaffold하지 않는 규칙 |
| Parallelism needs isolation | 공유 파일과 상태를 건드리는 작업은 직렬화하는 규칙 |
| Verification is the bottleneck | 정적 검증, 실행 검증, 행동 검증, 독립 검토, 인계 증거 ladder |
| MCP/plugins add context and risk | 실제로 쓰는 도구만 켜고 권한을 분리하는 hygiene rule |

## Excluded From The Starter

- 특정 모델명과 권장 모델 선택
- 출시일이나 제품 표면별 최신 기능 주장
- CLI, Cloud, SDK의 구체 명령 치트시트
- 개인 계정 설정이나 사용자별 `$HOME` 설정
- 원문 예시 코드와 긴 문장 복제
