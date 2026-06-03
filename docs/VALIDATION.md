# Validation

이 문서는 스타터를 실제 프로젝트로 전환하면서 검증 범위를 어떻게 확장할지 정리하는 템플릿입니다.

현재 스타터는 애플리케이션 코드와 기술 스택을 포함하지 않으므로 baseline 문서 검증만 수행합니다. 스택과 실행 가능한 skeleton이 생기면 아래 ladder를 따라 검증 명령을 추가합니다.

## Validation Ladder

| Stage | When | Required evidence |
| --- | --- | --- |
| 0. Starter baseline | 복제 직후 | 필수 문서 존재, JSON 유효성, `DESIGN.md` frontmatter, 내부 링크 |
| 1. Product foundation | 제품 문제와 첫 사용자가 정해진 뒤 | README, product spec, feature state, open decisions 정합성 |
| 2. Stack selected | 기술 스택을 고른 뒤 | setup command, dependency lockfile, build/lint/test/typecheck 또는 동등한 검증 |
| 3. Executable skeleton | 첫 앱/서비스가 생긴 뒤 | local run command, smoke test, health check 또는 screenshot |
| 4. Runtime integration | 외부 서비스나 배포 대상이 생긴 뒤 | environment docs, secret policy, staged runtime check, rollback path |
| 5. Release path | CI/CD와 production 경로가 생긴 뒤 | PR/main validation, deploy identity, artifact policy, rollback evidence |

## Current Starter Commands

```bash
./init.sh
python3 -m json.tool feature_list.json >/dev/null
git diff --check
```

선택 검증:

```bash
npx -y @google/design.md lint DESIGN.md
```

## After Stack Selection

스택을 고르면 `package.json`, `pyproject.toml`, `go.mod`, `Cargo.toml` 등 해당 생태계의 표준 manifest와 lockfile을 기준으로 setup과 검증 명령을 기록합니다.

예시 이름:

```text
setup
build
lint
test
typecheck
check
dev
smoke
design:check
```

실제 명령 이름은 선택한 스택에 맞게 정합니다. 이름보다 중요한 것은 `README.md`, `docs/VALIDATION.md`, `feature_list.json`, `init.sh`가 같은 검증 표면을 말하는 것입니다.

## Generated Artifact Checks

API schema, typed client, route tree, design token output처럼 생성물이 commit되는 경우에는 생성 명령과 drift check를 함께 둡니다.

```text
generate -> git diff --exit-code <generated-path>
```

생성물을 commit하지 않는 경우에는 어디서, 언제, 누가 다시 만들 수 있는지 기록합니다.

## Evidence Rules

- `passing` 상태는 명령과 결과가 남아 있을 때만 사용합니다.
- 실패한 검증은 숨기지 말고 실패 이유와 다음 행동을 남깁니다.
- 좁은 검증으로 넓은 완료를 주장하지 않습니다.
- 외부 서비스가 필요한 검증은 계정, stage, secret policy, rollback path를 같이 기록합니다.

## Agent Notes

- 장시간 실행되는 dev server는 사용자가 요청했을 때만 시작합니다.
- 이미 실행 중인 server는 `curl`, browser, log, listen-state 등으로 확인할 수 있습니다.
- sandbox나 권한 문제로 localhost 확인이 실패하면 서버 장애로 단정하지 않습니다.
