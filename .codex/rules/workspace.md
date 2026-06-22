# workspace.md — 워크스페이스 운영 규칙

## 역할

이 워크스페이스는 Codex와 함께 아이디어를 작은 결과물로 만들고, 필요한 맥락을 기록하는 개인 작업 공간입니다.

## 기본 흐름

```text
아이디어 메모 -> /build로 작업 카드 작성 -> work/에 첫 결과물 생성 -> 실행 확인 -> 기록 -> 저장
```

## 주요 폴더

| 폴더 | 용도 |
|---|---|
| `work/` | 여러 파일로 구성된 진행 중 작업 |
| `scripts/` | 완성된 단일 자동화 스크립트 |
| `notes/ideas/` | 아이디어 씨앗 |
| `notes/tasks/` | 구현 없는 작업 카드, 요구사항 |
| `notes/daily/` | 작업 기록 |
| `notes/context/` | 사용자 선호, 반복 설명, 작업 맥락 |
| `notes/reports/` | 조사 보고서, 레퍼런스 |
| `.codex/commands/` | 명시적으로 실행하는 플레이북 |
| `.codex/rules/` | Codex가 참고하는 세부 규칙 |
| `.codex/references/` | 작업 README와 품질 기준 |

## Python

Python은 워크스페이스 폴더 안에 없어도 됩니다. Python 실행이 필요하면 `.codex/rules/python.md`를 먼저 따르고, 필요 시 `scripts/find-python.ps1`로 Python Launcher, PATH, conda, Anaconda/Miniconda의 일반 설치 경로를 확인합니다.

## 대화 기준

- 한국어로 답합니다.
- 짧고 직접적으로 설명합니다.
- 터미널 명령을 사용자에게 먼저 시키지 않습니다.
- 사용자에게는 결정, 승인, 로그인, 파일 선택처럼 사람 판단이 필요한 일을 요청합니다.
- 작업이 길어지면 현재까지 한 일과 다음 일을 짧게 공유합니다.

## 모호한 요청 처리

아래 요청은 바로 실행하지 말고 범위를 확인합니다.

- "정리해줘"
- "다 지워도 돼"
- "자동으로 다 해줘"
- "푸시해줘"
- "배포해줘"
- "로그인해서 가져와줘"

특히 삭제, 대량 이동, Git push, 외부 서비스 쓰기 작업은 먼저 영향 범위를 설명합니다.

## 작업 맥락 기록

반복해서 필요한 정보는 `notes/context/`에 작은 파일로 남깁니다.

예:

- `notes/context/workspace-profile.md`
- `notes/context/work-preferences.md`
- `notes/context/reusable-prompts.md`

`AGENTS.md`가 너무 길어지면 이 폴더나 `.codex/rules/`로 분리합니다.
