# 확장 설치 가이드 — 스킬 · MCP · 서브에이전트 · 훅

Claude Code·Codex 등 코딩 에이전트에 **새 능력·설정(확장)**을 추가할 때 따르는 저장소 규약입니다. 목표는 하나 — **한 사람이 설치한 확장을 다른 팀원도 clone 후 같은 저장소에서 재사용할 수 있게 한다.**

> 팀 공유용 확장의 정본은 이 문서입니다. 개인 전역 설치(`~/.claude`, `~/.codex`, `~/.agents`)는 편리하지만 팀원에게 전달되지 않으므로, 공유 목적이면 **프로젝트-로컬 파일로 커밋**합니다.

## 1. 원칙

1. **팀 공유가 목적이면 프로젝트-로컬 + 커밋**을 기본값으로 둡니다.
2. **Claude Code와 Codex 표면을 함께 설계**합니다. 두 도구의 경로·기능은 비슷하지만 같지 않습니다(아래 표·비대칭 주의).
3. **비밀값은 절대 커밋하지 않습니다.** 설정에는 `${ENV_VAR}` 또는 env var 이름만 남기고 실제 값은 각자 환경·secret manager에서 주입합니다. → [`ENVIRONMENT.md`](ENVIRONMENT.md)
4. **새 의존성은 이유·대안을 기록**합니다. 되돌리기 어려운 MCP·훅·런타임 추가는 [`design-docs/`](design-docs/)에 결정 기록을 둡니다.
5. **확장은 최소 권한으로 시작**합니다. 읽기 전용 MCP, 좁은 hook matcher, 제한된 subagent tools부터.
6. **출처·라이선스를 남깁니다.** 서드파티 skill·agent·script는 원본 URL과 LICENSE를 해당 디렉터리에 둡니다.
7. **실행 산출물은 gitignore**합니다(예: 스킬 작업 폴더, generated logs, local caches).

## 2. 팀 공유 표면

| 종류 | Claude Code 커밋 위치 | Codex 커밋 위치 | 비고 |
|---|---|---|---|
| 기본 지침 | `CLAUDE.md`, `AGENTS.md` | `AGENTS.md` | 모든 에이전트 공통 규칙은 `AGENTS.md`에 |
| 스킬 | `.claude/skills/<name>/SKILL.md` | `.codex/skills/<name>/SKILL.md` | Codex는 **점 있는** `.codex/skills`를 자동 로드 |
| 서브에이전트 | `.claude/agents/<name>.md` | `.codex/agents/<name>.toml` | 포맷이 다르므로 각자 작성 |
| MCP | `.mcp.json` | `.codex/config.toml`의 `[mcp_servers.<name>]` | 실제 secret은 env로 |
| 훅 | `.claude/settings.json` + `.claude/hooks/*` | `.codex/hooks.json` 또는 `.codex/config.toml` + `.codex/hooks/*` | 자동 실행 — 좁게 걸고 승인 절차 남김 |
| 명령 실행 규칙 | `.claude/settings.json` permissions | `.codex/rules/*.rules` | 위험 명령은 allow보다 deny/prompt |
| 개인 오버라이드 | `.claude/settings.local.json` | `~/.codex/config.toml` 또는 개인 profile | **커밋하지 않음** |

주의:
- 점 없는 `codex/skills/`는 Codex가 **자동 로드하지 않습니다**(확인된 버전 기준). 반드시 `.codex/skills`. Codex는 `.agents/skills`도 읽지만, 한 저장소 안에서는 표준 하나로 통일하세요.
- Codex의 `.codex/` 프로젝트 설정은 저장소가 **trusted**일 때만 로드됩니다.
- **비대칭**: Claude는 위 표 전부를 커밋·공유하지만, Codex에서 커밋·공유되는 건 사실상 `AGENTS.md`와 `.codex/skills` 중심입니다(MCP는 사용자 전역 config). **모든 에이전트가 따라야 하는 규칙은 `AGENTS.md`에** 두는 게 가장 안전합니다.

## 3. 설치 절차

1. **종류를 고릅니다.** 반복 절차·지식 → skill / 외부 연결 → MCP / 전문 역할 → subagent / 자동 정책 → hook·rule / 단순 지침 → `AGENTS.md`·`CLAUDE.md`.
2. **공유 범위를 정합니다.** 팀 공유 → 프로젝트-로컬 경로 커밋 / 개인 실험 → user·global 경로(커밋 안 함).
3. **양쪽 에이전트 대응을 확인합니다.** 한쪽 전용 기능이면 다른 쪽에 공통 대체 규칙이 필요한지 판단(보통 `AGENTS.md`).
4. **비밀값·권한을 분리합니다.** config엔 env var 이름만. 최소 권한·최소 tool set으로 시작.
5. **출처·라이선스·검증 방법을 기록합니다.** 서드파티는 LICENSE+URL. 이 문서의 "등록 목록"을 갱신.
6. **인식 확인 후 커밋합니다.** Claude: 새 세션·`/skills`·`/agents`·`/mcp`. Codex: `codex debug prompt-input "noop"`·`/skills`. 가능하면 `./init.sh`.

## 4. 스킬

| 에이전트 | 경로 | 호출 |
|---|---|---|
| Claude Code | `.claude/skills/<name>/SKILL.md` | `/<name>` 또는 자연어 |
| Codex | `.codex/skills/<name>/SKILL.md` | `$<name>` 또는 `/skills` |

작성 규칙:
- `SKILL.md`에 name/command, `description`, 절차, 입출력, 검증 기준을 명확히.
- 긴 참고자료 `references/`, deterministic script `scripts/`, 예시 `examples/`.
- Claude·Codex 실행 방식이 다르면 같은 이름이라도 각자에 맞춘 `SKILL.md`를 별도 작성.
- 복사본을 둘 때는 원본 drift를 줄이도록 "동기화 기준 파일"을 명시. 심링크는 팀원 OS·checkout에 따라 깨질 수 있으니 **기본은 실제 파일 커밋**(`cp -RL`로 심링크를 실체화).

> 설치 후 이 문서에 한 줄 기록: `<name>` · 용도 · Claude/Codex 경로 · 출처·LICENSE.

### 등록된 스킬

| Name | Purpose | Claude path | Codex path | Source / License |
|---|---|---|---|---|
| `design-md` | `DESIGN.md` 작성, 감사, migration, 선택 검증 | Not installed | `.codex/skills/design-md/SKILL.md` | Local policy using `google-labs-code/design.md` (Apache-2.0) and `VoltAgent/awesome-design-md` (MIT) references |

## 5. 서브에이전트 / Custom Agents

- **Claude**: `.claude/agents/<name>.md`(frontmatter `description`·`model`·`tools`를 좁게). skill이 호출하는 agent도 같이 커밋.
- **Codex**: `.codex/agents/<name>.toml`(필수 `name`·`description`·`developer_instructions`). subagent는 비용이 크므로 분리가 명확할 때만.

## 6. MCP 서버

외부 도구·데이터를 연결하므로 보안·비용·계정 영향을 먼저 확인합니다.

- **Claude — 커밋·공유**: 루트 `.mcp.json`. clone하면 Claude가 감지하고 **승인 프롬프트** 후 사용. CLI `claude mcp add <name> --scope project -- ...`.
  ```json
  { "mcpServers": { "example": { "command": "npx", "args": ["-y", "example-mcp"], "env": { "EXAMPLE_API_KEY": "${EXAMPLE_API_KEY}" } } } }
  ```
- **Codex — 사용자 전역(커밋 불가)**: `~/.codex/config.toml`의 `[mcp_servers.<name>]`(또는 프로젝트 `.codex/config.toml`, trusted 시). 스니펫을 아래 목록에 적어 팀원이 각자 추가.
  ```toml
  [mcp_servers.example]
  command = "npx"
  args = ["-y", "example-mcp"]
  env_vars = ["EXAMPLE_API_KEY"]
  ```
- **비밀값**: 커밋되는 파일엔 `${ENV_VAR}`/env 이름만. 실제 값은 gitignore된 `.env`/secret manager.

### 등록된 MCP
아직 없음. 추가 시 기록: **이름 · 용도 · Claude 위치 · Codex 위치 · 필요한 env · 검증 명령**.

## 7. 훅과 실행 규칙

훅은 에이전트 판단이 아니라 도구 실행 전후에 **결정적으로** 실행됩니다. 잘못 만들면 모든 팀원 작업을 막을 수 있으니 가장 보수적으로 둡니다.

- **Claude hooks**: `.claude/settings.json`(설정) + `.claude/hooks/*`(스크립트), `${CLAUDE_PROJECT_DIR}`로 참조. 개인 실험은 `.claude/settings.local.json`(gitignore).
- **Codex hooks**: `.codex/hooks.json` 또는 `.codex/config.toml` + `.codex/hooks/*`. trusted project에서만 로드되고, 새/변경 훅은 `/hooks`에서 review·trust 필요.
- **Codex rules** `.codex/rules/*.rules`: sandbox 밖 명령의 allow/prompt/deny 정책. 위험 명령(`rm`, `git reset --hard`, force push, DB write 등)은 기본 deny/prompt 후보.

## 8. 기타 Claude 전용 커스터마이즈

Codex와 직접 대응되지 않는 프로젝트 커스터마이즈(커밋=공유):

- `.claude/commands/*.md` — 커스텀 슬래시 명령(신규 절차는 가능하면 skill로).
- `.claude/output-styles/*.md` — 응답 톤·형식.
- `.claude/rules/*.md` — 경로 기반 규칙.
- `.claude-plugin/plugin.json` — skill·agent·hook·MCP를 묶은 plugin.

이 규칙이 Codex에도 필요하면 `AGENTS.md`·`.codex/skills`·`.codex/hooks`·`.codex/rules` 중 맞는 표면에 별도 반영합니다.

## 9. 커밋 금지 항목

- 실제 API key·token·password·private key.
- `.claude/settings.local.json`, `CLAUDE.local.md`.
- 사용자 전역 설정: `~/.claude/*`, `~/.claude.json`, `~/.codex/config.toml`, `~/.agents/skills/*`.
- 로컬 캐시·실행 산출물.

## 관련 문서
- [`ENVIRONMENT.md`](ENVIRONMENT.md) — 계정·비밀값·환경 규약
- [`HARNESS.md`](HARNESS.md) · [`AGENT_WORKFLOWS.md`](AGENT_WORKFLOWS.md) — 에이전트 운영 원칙
- [`design-docs/`](design-docs/) — 의존성·구조 결정 기록

### 공식 문서
- Claude Code: 설정 https://code.claude.com/docs/en/settings · 스킬 https://code.claude.com/docs/en/skills · 서브에이전트 https://code.claude.com/docs/en/sub-agents · 훅 https://code.claude.com/docs/en/hooks-guide · MCP https://code.claude.com/docs/en/mcp · 출력 스타일 https://code.claude.com/docs/en/output-styles · 플러그인 https://code.claude.com/docs/en/plugins
