# Clone Cleanup

이 문서는 이 스타터를 복사해 실제 프로젝트를 시작할 때 지우거나 바꿔야 할 정보를 정리합니다. 목표는 스타터 제작 과정의 흔적이 새 프로젝트의 현재 상태처럼 남지 않게 하는 것입니다.

## When To Use

- 이 저장소를 template, fork, clone, archive copy 방식으로 새 프로젝트에 가져온 직후
- `README.md`와 `README.ko.md`를 실제 프로젝트용으로 바꾸기 전
- `feature_list.json`, `claude-progress.md`, `docs/session-handoff.md`가 새 프로젝트의 상태를 말하고 있는지 확인할 때

## Keep

새 프로젝트에서도 기본값으로 유지할 수 있는 파일입니다.

| Path | Why keep it |
| --- | --- |
| `AGENTS.md` | 에이전트 시작 순서와 작업 규칙 |
| `CLAUDE.md` | Claude Code가 `AGENTS.md` 정본을 발견하도록 돕는 entrypoint |
| `ARCHITECTURE.md` | 제품/스택/구조 결정 전까지의 구조 기록 위치 |
| `DESIGN.md` | GUI 작업이 생겼을 때의 전역 디자인 기준 |
| `LICENSE` | 기본 MIT 라이선스. 라이선스가 바뀌면 이 파일을 먼저 바꿉니다. |
| `CONTRIBUTING.md` | 공개 기여 방식의 기본 문서. 실제 프로젝트 운영 방식에 맞게 고칩니다. |
| `SECURITY.md` | 공개 보안 신고 정책. 비공개 신고 경로가 생기면 먼저 갱신합니다. |
| `CHANGELOG.md` | 태그 릴리스 전 변경 기록의 시작점. 첫 릴리스 전까지 유지할 수 있습니다. |
| `docs/HARNESS.md` | 문맥, 범위, 계획, 검증, 인계 루프 |
| `docs/TECHNICAL_DECISIONS.md` | 기술 결정 요약 템플릿 |
| `docs/TECHNICAL_DECISION_BACKLOG.md` | 열린 기술 결정과 보류 항목 추적 템플릿 |
| `docs/VALIDATION.md` | baseline에서 runtime/release까지 검증을 확장하는 템플릿 |
| `docs/VISUAL_VALIDATION.md` | GUI scaffold 이후 시각 검증 템플릿 |
| `docs/README_MIGRATION.md` | 공개 README 전환 체크리스트 |
| `docs/product-specs/project-foundation.md` | 첫 제품 정의 템플릿 |
| `init.sh` | 스택 결정 전 baseline 검증 |

## Replace Or Reset

복제 후 실제 프로젝트 정보로 바꿔야 하는 파일입니다.

| Path | Cleanup action |
| --- | --- |
| `README.md` | 영어 기본 README를 실제 프로젝트 이름, 저장소 경로, 배지, 설명으로 바꿉니다. |
| `README.ko.md` | 한국어 README를 같은 구조로 갱신합니다. |
| `feature_list.json` | 스타터 제작 evidence를 제거하고 실제 프로젝트 feature/decision 목록으로 교체합니다. |
| `claude-progress.md` | 스타터 제작 로그를 지우고 새 프로젝트 진행 기록으로 초기화합니다. |
| `docs/session-handoff.md` | 스타터 인계 내용을 새 프로젝트 인계 내용으로 초기화합니다. |
| `docs/QUALITY_SCORE.md` | 품질 점수를 실제 프로젝트 상태로 다시 매깁니다. |
| `docs/TECHNICAL_DECISIONS.md` | 실제 stack 후보, 결정, 검증 결과로 갱신합니다. |
| `docs/TECHNICAL_DECISION_BACKLOG.md` | 실제 open/deferred decision 목록으로 갱신합니다. |
| `docs/VALIDATION.md` | 실제 setup, build, lint, test, smoke, deploy 검증 명령으로 갱신합니다. |
| `docs/VISUAL_VALIDATION.md` | GUI가 있으면 실제 screenshot/browser/artifact 기준으로 갱신합니다. |
| `docs/STARTER_COPY_SIMULATION.md` | 새 프로젝트 복사 시뮬레이션 결과로 다시 실행하고 갱신합니다. |
| `ARCHITECTURE.md` | 제품 범위가 정해진 뒤 구조 후보와 결정 근거를 갱신합니다. |
| `DESIGN.md` | 실제 브랜드, 플랫폼, UI 밀도가 정해지면 교체하거나 확장합니다. |

## Decide

새 프로젝트에서 계속 필요한지 판단할 파일입니다.

| Path | Decision |
| --- | --- |
| `docs/references/avid-codex-builder-course.md` | Codex 운영 패턴을 계속 참고할지 판단합니다. |
| `docs/references/karpathy-guidelines.md` | 에이전트 행동 기준의 출처 기록을 계속 둘지 판단합니다. |
| `docs/design-docs/0003-agent-behavior-guardrails.md` | 스타터 결정 기록으로 둘지, 새 프로젝트 결정 기록으로 대체할지 판단합니다. |
| `docs/design-docs/0004-agent-workflow-operating-model.md` | 스타터 결정 기록으로 둘지, 새 프로젝트 운영 결정으로 유지할지 판단합니다. |
| `docs/exec-plans/tech-debt-tracker.md` | 실제 기술 부채 목록으로 초기화합니다. |

## Remove Only If Not Needed

아래 파일은 새 프로젝트에서 필요 없을 수 있지만, 무조건 삭제하지는 않습니다.

- `docs/AGENT_BEHAVIOR.md`
- `docs/AGENT_WORKFLOWS.md`
- `docs/OBSERVABILITY.md`
- `docs/RELIABILITY.md`
- `docs/SECURITY.md`
- `docs/evaluator-rubric.md`
- `docs/clean-state-checklist.md`

삭제한다면 `AGENTS.md`, `CLAUDE.md`, `README.md`, `init.sh`, `feature_list.json`에서 해당 링크와 검증 항목도 함께 정리합니다.

## Sensitive Information Check

현재 스타터는 비밀값을 포함하지 않아야 합니다. 복제 후 실제 프로젝트 정보를 넣기 전후로 다음을 확인합니다.

```bash
if rg -n --glob '!SECURITY.md' --glob '!docs/CLONE_CLEANUP.md' "(token|secret|password|api[_-]?key|credential)\\s*[:=]|BEGIN .*PRIVATE KEY" .; then
  echo "Review matches before committing."
else
  echo "No obvious secrets found."
fi
```

발견된 값이 실제 secret이면 커밋하지 말고 환경 변수, secret manager, 배포 플랫폼 secret으로 옮깁니다.

## Simulation Check

새 프로젝트로 복사한 뒤 최소한 아래 순서가 통과해야 합니다.

1. `./init.sh`
2. `python3 -m json.tool feature_list.json`
3. `git diff --check`
4. `README.md`와 `README.ko.md`의 저장소 경로, author, license link 확인
5. `feature_list.json`, `claude-progress.md`, `docs/session-handoff.md`가 새 프로젝트 상태를 말하는지 확인
6. `CONTRIBUTING.md`, `SECURITY.md`, `CHANGELOG.md`가 실제 운영 방식과 맞는지 확인
7. `docs/TECHNICAL_DECISIONS.md`, `docs/TECHNICAL_DECISION_BACKLOG.md`, `docs/VALIDATION.md`가 실제 프로젝트 상태와 맞는지 확인

## Done Criteria

- 공개 README에서 스타터 저장소 경로가 실제 프로젝트 경로로 바뀌었습니다.
- 원저작자, 현재 maintainer, 라이선스가 의도대로 표시됩니다.
- 스타터 제작 로그가 새 프로젝트의 진행 상태처럼 남아 있지 않습니다.
- 기여, 보안, 변경 기록 문서가 downstream 프로젝트의 공개 운영 방식과 맞습니다.
- `feature_list.json`에는 실제 프로젝트의 현재 작업과 결정만 남아 있습니다.
- 기술 결정 요약, 결정 backlog, 검증 ladder가 실제 프로젝트 상태를 말합니다.
- 검증 명령이 성공하거나, 실패 이유와 다음 행동이 기록되어 있습니다.
