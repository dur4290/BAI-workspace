# AGENTS.md — Codex Vibe Workspace Rules

이 파일은 Codex가 작업 전에 읽는 공통 지시 파일입니다. 자세한 절차는 `.codex/commands/`, 세부 규칙은 `.codex/rules/`에 둡니다.

## 먼저 읽기

작업을 시작하면 아래 파일을 먼저 확인합니다.

1. `README.md` — 사람용 워크스페이스 안내
2. 필요한 경우 `recipes.md` — 바로 써먹는 작업 예시
3. 필요한 경우 `.codex/rules/*.md`

## 워크스페이스 목적

이 폴더는 Codex와 함께 작은 자동화, 문서 정리, 데이터 처리, 웹 화면, 스크립트를 빠르게 만들기 위한 개인 작업 공간입니다.

- 대상: Windows + VSCode + Codex 사용자
- 말투: 한국어, 짧고 직접적으로
- 기본 방향: 로컬 파일, Markdown, Python, HTML, CSV처럼 눈으로 확인 가능한 결과부터
- 피할 것: 처음부터 외부 API, 로그인 자동화, 배포, 과한 프레임워크를 기본안으로 제안하지 않기

## 작업 시작 원칙

바로 구현하지 말고 짧게 정리합니다.

- 목표: 무엇을 끝내려는가
- 입력: 어떤 파일, 폴더, 사용자 답변이 필요한가
- 출력: 어떤 파일이나 결과가 생기는가
- 확인: 무엇을 보면 성공했다고 할 수 있는가

요구가 애매하면 위험한 추측을 하지 말고 질문합니다. 단순하고 되돌리기 쉬운 일은 합리적으로 진행합니다.

## 코딩 행동 기준

코딩과 파일 수정에는 아래 4원칙을 적용합니다.

1. Think Before Coding: 가정, 혼란, 트레이드오프를 숨기지 않습니다.
2. Simplicity First: 요청받은 최소 범위만 만들고, 불필요한 추상화와 확장성을 추가하지 않습니다.
3. Surgical Changes: 필요한 파일과 필요한 줄만 고칩니다. 인접 코드 정리나 드라이브바이 리팩터링을 하지 않습니다.
4. Goal-Driven Execution: 성공 기준과 검증 방법을 먼저 잡고, 확인될 때까지 반복합니다.

자세한 기준은 `.codex/rules/coding-behavior.md`를 봅니다.

## 저장 위치

| 요청 유형 | 저장 위치 |
|---|---|
| 아이디어 메모 | `notes/ideas/` |
| 실행 계획, 요구사항 정리 | `notes/tasks/` |
| 작업 기록, 회고 | `notes/daily/` |
| 조사 보고서, 레퍼런스 정리 | `notes/reports/` |
| 반복 설명, 사용자 선호, 작업 맥락 | `notes/context/` |
| 여러 파일로 된 작업 | `work/작업이름/` |
| 완성된 단일 자동화 스크립트 | `scripts/` |

마크다운 파일명은 `YYYY-MM-DD-짧은-주제.md`를 기본으로 합니다. 날짜는 KST 기준입니다.

## 워크스페이스 명령

Codex IDE/CLI의 공식 slash command 자동완성과 별개로, 이 워크스페이스에서는 사용자가 `/명령어`처럼 말하면 `.codex/commands/명령어.md`를 플레이북으로 읽고 실행합니다.

기본 명령:

- `/start`: 작업 환경 확인과 첫 작업 제안
- `/idea`: 아이디어 메모
- `/plan`: 아이디어를 실행 계획으로 정리
- `/build`: 작업 폴더 생성
- `/review`: 저장/공유 전 점검
- `/daily`: 작업 기록과 다음 액션 정리
- `/save`: Git 저장 전 보안 확인

## 새 작업 생성 기준

여러 파일로 구성되는 작업은 `work/작업이름/` 아래에 만듭니다.

필수 구조:

```text
작업이름/
├── README.md
├── src/
├── input/
├── output/
└── notes/
```

README는 짧은 소개가 아니라 다음 세션에 바로 이어서 할 수 있는 실행 계획이어야 합니다. 자세한 기준은 `.codex/rules/build-workflow.md`와 `.codex/references/work-readme-guide.md`를 봅니다.

## 보안

- 실제 `.env`, API key, password, token, credential 파일은 만들거나 노출하지 않습니다.
- 기본 작업에서는 API 키 발급을 권하지 않습니다.
- 요약, 분석, 문장 생성은 가능한 한 Codex 세션에서 처리하고, Python은 로컬 파일 처리에 우선 사용합니다.
- 삭제, 대량 이동, Git push, 외부 서비스 쓰기 작업은 먼저 영향 범위와 확인 방법을 설명하고 승인을 받습니다.

자세한 기준은 `.codex/rules/security.md`를 봅니다.

## Python 확인

Python은 워크스페이스 안에 설치되어 있지 않아도 됩니다. Python이 필요하면 `python --version`만 확인하지 말고 `.codex/rules/python.md`의 순서대로 등록된 실행 경로와 일반 설치 경로에서 Python 또는 Anaconda를 찾습니다.

찾은 경로는 `.codex/local-python.json`에 저장하고, 이후 Python 실행에 우선 사용합니다.

## 사용자와의 대화

- 항상 한국어로 답합니다.
- 터미널 명령을 사용자에게 먼저 시키지 말고, Codex가 가능한 확인과 실행을 먼저 합니다.
- 실패하면 원인을 짧게 설명하고 다음 선택지를 제시합니다.
- 작업 후에는 저장된 경로, 실행 방법, 확인 방법을 남깁니다.

## 이 파일의 역할

`AGENTS.md`는 지도입니다. 너무 길어지면 안 됩니다. 세부 절차, 예시, 체크리스트는 `.codex/commands/`, `.codex/rules/`, `.codex/references/`로 분리합니다.
