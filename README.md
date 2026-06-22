# Vibe Coding Workspace

Codex와 함께 아이디어를 빠르게 만들고, 실행하고, 다듬고, 저장하는 개인 작업 공간입니다.

이 폴더는 설명서가 아니라 실제 작업장입니다. 필요한 것은 작게 만들고, 바로 확인하고, 남길 것은 기록합니다.

---

## 처음 한 번만 — 초기 설정

GitHub에서 ZIP으로 받았거나 처음 사용할 때 한 번만 실행합니다.

**Windows (PowerShell):**

```powershell
.\scripts\setup.ps1
```

> 오류: `이 시스템에서 스크립트를 실행할 수 없습니다`가 뜨면 먼저 아래를 한 번만 실행하세요.
> ```powershell
> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
> ```

**Mac / Linux (Terminal):**

```bash
bash scripts/setup.sh
```

이 스크립트가 Git 저장소 초기화와 커밋 보안 훅을 자동으로 등록합니다.

---

## 처음 시작

VSCode에서 이 폴더를 열고 Codex에게 이렇게 말하세요.

```text
이 워크스페이스 시작해줘. README.md와 AGENTS.md를 읽고, 지금 바로 할 수 있는 작업을 추천해줘.
```

짧게 말하고 싶으면 이렇게 해도 됩니다.

```text
/start
```

`/start`가 Codex의 공식 자동완성 목록에 보이지 않아도 괜찮습니다. 이 워크스페이스에서는 `/start` 같은 표현을 `AGENTS.md`가 `.codex/commands/start.md` 플레이북 실행 요청으로 해석합니다.

---

## 기본 흐름

```text
아이디어 메모
-> /build로 작업 카드 만들기
-> 기존 work/에 작업 폴더와 첫 결과물 만들기
-> 실행하고 확인하기
-> 기록하기
-> 저장하기
```

작업이 막히면 이렇게 물어보면 됩니다.

```text
현재 워크스페이스 상태를 보고, 다음에 할 일 하나를 정리해줘.
```

---

## 자주 쓰는 요청

| 요청 | 용도 | 저장 위치 |
|---|---|---|
| `/start` | 작업 환경 확인과 첫 작업 제안 | `notes/context/` |
| `/idea` | 아이디어 빠른 메모 | `notes/ideas/` |
| `/build` | 아이디어를 작업 카드, 작업 폴더, 첫 결과물로 변환 | `work/` |
| `/plan` | 구현 없이 작업 카드만 정리 | `notes/tasks/` |
| `/review` | 공유/저장 전 완성도와 보안 점검 | 점검 결과 |
| `/daily` | 오늘 한 일과 다음 액션 기록 | `notes/daily/` |
| `/save` | 보안 확인 후 Git 저장 | Git |

헷갈릴 때는 명령어를 외우지 말고 이렇게 말해도 됩니다.

```text
지금 이 아이디어를 작게 만들 수 있게 작업 카드와 첫 결과물까지 만들어줘.
```

---

## 폴더 구조

```text
vibe-workspace/
├── README.md
├── AGENTS.md                 # Codex 작업 규칙
├── recipes.md                # 바로 써먹는 작업 예시
├── work/                     # 진행 중인 작업
│   ├── _examples/            # 참고 예시 전용
│   │   ├── example-contest-filter/          # 공모전 수집·필터·검수 파이프라인
│   │   ├── example-kindergarten-dashboard/  # 데이터 분석 -> HTML 대시보드
│   │   └── example-lumoa-html-cards/        # 데이터 결과 -> 카드 UI
│   └── your-project/         # 새 작업은 work/ 바로 아래에 생성
├── scripts/
│   ├── setup.ps1             # 초기 설정 (Windows)
│   ├── setup.sh              # 초기 설정 (Mac/Linux)
│   └── find-python.ps1       # Python 경로 탐색
├── notes/
│   ├── context/              # 작업 맥락
│   ├── ideas/                # 아이디어 메모
│   ├── tasks/                # 구현 없는 작업 카드
│   ├── daily/                # 작업 기록
│   └── reports/              # 조사와 정리 문서
├── .vscode/
│   └── extensions.json       # 추천 VSCode 익스텐션
└── .codex/
    ├── commands/             # 워크스페이스 플레이북
    ├── rules/                # 세부 작업 규칙
    └── references/           # README/품질 기준
```

---

## Codex 규칙 구조

이 워크스페이스는 `AGENTS.md`를 중심으로 작동합니다.

- `AGENTS.md`: Codex가 먼저 읽는 공통 작업 규칙
- `.codex/commands/`: 사용자가 `/명령어`처럼 말했을 때 따라갈 플레이북
- `.codex/rules/workspace.md`: 워크스페이스 운영 규칙
- `.codex/rules/coding-behavior.md`: 코딩 행동 기준
- `.codex/rules/security.md`: API 키, `.env`, Git 저장 전 보안 기준
- `.codex/rules/build-workflow.md`: 새 작업 폴더 생성 기준

핵심 원칙은 네 가지입니다.

1. 추측하지 말고 가정과 혼란을 드러내기
2. 요청받은 최소 범위만 만들기
3. 필요한 부분만 작게 고치기
4. 성공 기준과 확인 방법을 먼저 정하기

---

## 새 작업을 만들 때

```text
/build 유튜브 자막을 공부 노트로 정리하기
```

작업은 기본적으로 아래 구조로 만들어집니다.

```text
work/작업이름/
├── README.md
├── src/
├── input/
├── output/
└── notes/
```

현재 위치가 하위 폴더여도 새 `work/`를 만들지 말고, 워크스페이스 루트에 이미 있는 `work/`를 사용합니다. `work/_examples/`는 참고용이라 새 작업을 넣지 않습니다.

처음부터 배포, 로그인, 외부 API를 기본으로 잡지 않습니다. 먼저 로컬 파일, Markdown, Python, CSV, HTML처럼 바로 확인 가능한 결과물로 시작합니다.

---

## 보안

기본 작업에서는 실제 API 키를 만들거나 코드에 넣지 않습니다.

- `.env` 파일은 Git에 올리지 않습니다.
- API key, password, token 값은 문서에 쓰지 않습니다.
- `/save`는 저장 전에 보안 패턴을 확인합니다.
- 삭제, 대량 이동, Git push 같은 위험 작업은 먼저 확인을 받습니다.

자세한 기준은 `.codex/rules/security.md`에 있습니다.
