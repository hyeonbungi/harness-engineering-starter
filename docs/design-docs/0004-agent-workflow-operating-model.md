# 0004. Agent Workflow Operating Model

- Status: Accepted
- Date: 2026-05-25

## Context

이 스타터는 아직 완성된 프로젝트 scaffold가 아닙니다. 현재 필요한 것은 특정 Codex 기능을 전부 켜는 것이 아니라, 실제 프로젝트로 전환될 때 에이전트 작업을 어떻게 작게 나누고, 어떤 표면에서 실행하며, 어떤 증거로 완료를 판단할지 정하는 기준입니다.

Avid의 `How to Master Codex in 2026 (Builder's Course)` article은 AGENTS.md, task-first mental model, prompt structure, skills, 병렬 작업, 브라우저 검증, MCP/도구 절제 같은 운영 패턴을 폭넓게 다룹니다. 다만 모델명, 출시일, 제품 기능명, CLI 명령은 시점 의존적이므로 스타터의 hard rule로 고정하기에는 위험합니다.

## Decision

article의 내용을 제품 사양으로 받아들이지 않고, 오래 유지될 수 있는 운영 원칙으로 재구성해 `docs/AGENT_WORKFLOWS.md`에 둡니다.

- 작업 단위는 채팅이 아니라 검증 가능한 task로 봅니다.
- 작업 표면은 감시 필요도와 위험도에 따라 선택합니다.
- 작업 지시는 outcome, example, constraints, reminder 구조로 정리합니다.
- 하나의 주요 변경만 한 번에 다룹니다.
- 비자명한 변경은 계획을 먼저 둡니다.
- skill, 병렬화, MCP, automation은 반복과 검증이 확인된 뒤 승격합니다.
- 완료 신뢰도는 정적 검증, 실행 검증, 행동 검증, 독립 검토, 인계 증거 순서로 올립니다.

## Consequences

- 장점: 스타터가 Codex 사용법 문서가 아니라 에이전트 운영 하네스로 강화됩니다.
- 장점: 최신 제품 세부사항에 덜 의존하므로 문서 부패 위험이 낮습니다.
- 장점: 향후 실제 프로젝트에서 skill, automation, cloud-like 작업을 도입할 기준이 생깁니다.
- 단점: 구체적인 Codex 설치법이나 명령 치트시트는 제공하지 않습니다.
- 단점: 실제 제품으로 전환되면 프로젝트별 스택과 검증 명령으로 보강해야 합니다.

## Alternatives

- article 내용을 그대로 복제한다: 빠르지만 저작권, 시점 의존 정보, 제품 중립성 문제가 있습니다.
- Codex 기능별 문서를 모두 만든다: 포괄적이지만 현재 스타터 단계에서는 과합니다.
- 아무것도 추가하지 않는다: 단순하지만 에이전트 운영 기준이 `AGENTS.md`에만 흩어져 남습니다.

## Rollback

운영 기준이 과하다고 판단되면 `docs/AGENT_WORKFLOWS.md`를 `docs/AGENT_BEHAVIOR.md`의 짧은 섹션으로 축소하고, 이 결정 기록에 superseded 사유를 남깁니다.
