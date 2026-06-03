# Technical Decisions

이 문서는 스타터를 실제 프로젝트로 전환한 뒤 현재 기술 결정과 근거를 한곳에 모으는 템플릿입니다. 세부 결정은 `docs/design-docs/`에 남기고, 이 문서는 다음 기술 논의와 scaffold 작업의 진입점으로 사용합니다.

현재 스타터 자체는 제품, 저장소 구조, 기술 스택, 배포 대상을 선택하지 않습니다.

## Current Conclusion

아직 기술 스택은 선택하지 않았습니다. 제품 문제, 첫 사용자, 첫 실행 표면, 운영 제약이 정리되기 전까지 framework, runtime, database, deploy target을 확정하지 않습니다.

## Decision Matrix

| Area | Current state | Default handling |
| --- | --- | --- |
| Product surface | TBD | `docs/product-specs/project-foundation.md`에서 먼저 좁힙니다. |
| Repository shape | TBD | `ARCHITECTURE.md`에서 단일 앱, 모노레포, 서비스 분리 후보를 비교합니다. |
| Language/runtime | TBD | 첫 실행 표면과 배포 제약을 기준으로 고릅니다. |
| Data storage | TBD | 도메인 모델, 개인정보, 운영 비용을 확인한 뒤 결정합니다. |
| API contract | TBD | 외부 소비자, 앱 간 계약, generated artifact 필요성을 확인합니다. |
| Frontend stack | TBD | GUI가 필요하면 `DESIGN.md`, `docs/FRONTEND.md`, `docs/VISUAL_VALIDATION.md`를 함께 봅니다. |
| Deployment | TBD | preview, staging, production, rollback 요구가 생긴 뒤 결정합니다. |
| CI/CD | TBD | 반복 검증 명령이 생긴 뒤 자동화합니다. |
| Testing | TBD | risk와 사용자 흐름에 맞춰 unit, integration, E2E 범위를 나눕니다. |
| Observability | TBD | 런타임이 생긴 뒤 error, log, metric, trace, product analytics를 분리합니다. |

## When A Stack Is Chosen

기술 스택을 고르면 다음 문서를 함께 갱신합니다.

- `ARCHITECTURE.md`
- `docs/TECHNICAL_DECISION_BACKLOG.md`
- `docs/design-docs/<next-id>-<decision>.md`
- `docs/VALIDATION.md`
- `docs/QUALITY_SCORE.md`
- `feature_list.json`
- `init.sh`

## Decision Quality Checklist

- 제품 문제와 첫 실행 표면에서 출발했습니다.
- 되돌리기 어려운 선택과 쉽게 바꿀 수 있는 선택을 구분했습니다.
- 선택하지 않은 대안을 남겼습니다.
- 보안, 비용, 운영, 성능, 유지보수 trade-off를 기록했습니다.
- 실패했을 때 rollback 또는 migration 방법을 적었습니다.
- 검증 명령과 증거 위치를 정했습니다.

## Validation

현재 스타터 단계의 검증은 다음으로 충분합니다.

```bash
./init.sh
python3 -m json.tool feature_list.json >/dev/null
git diff --check
```

스택 선택 이후에는 `docs/VALIDATION.md`에 실제 setup, build, lint, test, typecheck, smoke check를 연결합니다.
