# README 표현 패턴 (가이드)

랜딩 `README.md`를 읽기 좋게 꾸미되 **내용은 사실 그대로** 유지하기 위한 패턴입니다. "유명 OSS처럼" 보이게 하는 시각 요소를 정직성과 충돌 없이 적용합니다.

## 뱃지 — 사실만, 가짜 금지

- **공개 저장소**: shields.io **동적 뱃지** 사용 가능 — `last-commit`, `license`, CI status, release/version 등(shields가 리포를 실제로 읽음). 이 스타터 README가 그 예입니다.
- **비공개 저장소**: 동적 뱃지는 shields가 읽지 못해 깨지거나 인증이 필요합니다 → **정적 뱃지**로 사실만 표기:
  ```md
  ![status](https://img.shields.io/badge/status-scaffolding-1f6feb)
  ![license](https://img.shields.io/badge/license-proprietary-d1242f)
  ![stack](https://img.shields.io/badge/stack-TBD-8b949e)
  ![agents](https://img.shields.io/badge/agents-Claude%20%2B%20Codex-8957e5)
  ```
- 실체 없는 뱃지(없는 build/coverage를 "passing"으로) **금지** — 하네스의 정직성·증거 원칙(`TBD`는 숨기지 않음)과 충돌합니다.

## 구조 요소 (GitHub 렌더)

- **가운데 정렬 헤더**: `<div align="center">` / `<p align="center">`로 제목·태그라인·뱃지·내비 링크.
- **목차(TOC)** · **구분선(`---`)** · **가운데 정렬 푸터**(저작권·라이선스).
- **GitHub 경고 블록**: `> [!NOTE]` · `> [!IMPORTANT]` · `> [!WARNING]`.
- **접이식 긴 표/목록**: `<details><summary>…</summary>` + 빈 줄 + 내용 + `</details>`.
- **다이어그램**: ` ```mermaid ` 코드펜스(아키텍처·흐름·생태계).

## 주의

- Mermaid·경고블록·뱃지는 **GitHub 웹 뷰**에서 렌더됩니다(로컬 에디터 미리보기엔 안 보일 수 있음).
- 정적 뱃지도 `img.shields.io`로 외부 이미지 요청이 갑니다(우리가 넣은 텍스트만, 리포 데이터 누출 없음). 외부 호출을 피해야 하는 기밀 저장소면 이모지/HTML·로컬 SVG로 대체합니다.
- `<details>` 안에 마크다운 표를 넣을 때는 `<summary>` 다음과 표 앞뒤에 **빈 줄**을 둡니다.
- 내부 링크는 `./init.sh`의 링크 무결성 체크로 검증합니다.
