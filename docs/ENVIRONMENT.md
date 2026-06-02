# 작업 환경 / 워크스페이스 규약 (템플릿)

이 문서는 프로젝트가 쓰는 **계정·git·클라우드 인증·에이전트 실행** 규약을 한곳에 모으는 자리입니다. 여러 사람과 코딩 에이전트(Claude Code·Codex 등)가 함께 작업할 때 인증·신원을 일관되게 만들기 위한 것입니다.

> 이 문서는 **작업 환경 규약**이며 애플리케이션 **기술 스택과는 무관**합니다. 아래 `<...>` 자리표시자를 복제 후 실제 값으로 채우고, **비밀값은 절대 적지 마세요.**

## 계정 · 조직

- 코드는 `<git-host>/<org-or-owner>`에 둡니다.
- 각 개발자는 **자신의 팀/회사 계정**으로 인증합니다(공용 계정 공유 지양). 커밋 author는 본인 신원으로 남깁니다.

## Git

- 원격은 가능하면 **SSH**로 연결합니다. 조직별 전용 키가 있으면 `~/.ssh/config`의 Host alias를 씁니다(HTTPS는 개인 keychain 자격증명을 써서 엉뚱한 계정으로 붙을 수 있음).
- 비밀값(토큰·키·비밀번호)은 **절대 커밋하지 않습니다.** 환경 변수나 secret manager로 관리합니다.
- 커밋 메시지의 **AI 공동작성 표기(`Co-Authored-By: …`) 사용 여부는 팀 정책으로 정합니다.** 사람 작성 이력만 남기려면 넣지 않습니다.

## 클라우드 CLI (gh · aws · gcloud 등)

- 회사/팀 계정·프로필로 동작해야 합니다. 다른 조직 프로필을 이 저장소 작업에 쓰지 마세요.
- 실수 방지를 위해 default profile을 두지 않고 **명시적으로 프로필을 선택**하는 셋업을 권장합니다(예: `AWS_PROFILE=<profile>` 또는 `aws --profile <profile>`).

## 에이전트 주의 (Claude · Codex 공통)

- 에이전트가 실행하는 셸은 **비대화형**인 경우가 많아, `direnv` 등으로 자동 주입되는 환경 변수(`GH_TOKEN`·`AWS_PROFILE` 등)가 **자동 로드되지 않을 수 있습니다.** 그러면 `gh`는 개인 계정으로, `aws`는 자격증명 없음으로 빠집니다.
- 따라서 회사 계정이 필요한 명령은 **환경을 명시적으로 활성화**해서 실행하세요. 워크스페이스 루트(= `.envrc`가 있는 디렉터리)를 인자로 줍니다:
  - `direnv exec <workspace> gh ...`
  - `direnv exec <workspace> aws ...`
- `direnv`가 없거나 `.envrc`가 로드되지 않으면: `gh auth status`로 로그인 계정을 확인하고, `aws`는 프로필을 직접 지정합니다.
- "그냥 실행한 `gh api user`가 개인 계정으로 나온다"는 것만으로 셋업이 깨졌다고 단정하지 마세요 — 환경을 활성화한 뒤 재확인합니다.

## 컨텍스트 확인 (의심날 때)

```bash
git -C <repo> config --show-origin user.email                 # 본인 신원
direnv exec <workspace> gh api user -q .login                 # 의도한 계정인지
direnv exec <workspace> aws sts get-caller-identity --query Arn --output text
```

## 개발자 로컬 셋업 (예시 — 각자 환경에 맞게)

목표는 "이 워크스페이스 안에서 git/gh/클라우드 CLI가 팀 계정으로 자동 선택되게" 만드는 것입니다.

- `~/.ssh/config`에 조직용 Host alias + 전용 SSH 키.
- `~/.gitconfig`의 `includeIf "gitdir:<workspace>/"` → 팀 신원(이름/이메일) 로드.
- 워크스페이스 루트에 `direnv` `.envrc` → `GH_TOKEN`·`AWS_PROFILE` 등 export.
- 위 파일 중 일부가 사라져 컨텍스트가 깨진 것 같으면, 작업 전에 먼저 확인·복구합니다.
