# /build — 새 작업 만들기

아이디어를 작업 폴더와 실행 계획서로 바꿉니다.

## 사용법

```text
/build 유튜브 자막을 공부 노트로 정리하기
```

인자 없이 실행하면 먼저 아이디어를 묻습니다.

## 실행 순서

### 1단계: 기준 읽기

아래 파일을 먼저 읽습니다.

1. `AGENTS.md`
2. `.codex/rules/build-workflow.md`
3. `.codex/references/work-readme-guide.md`
4. `.codex/references/work-quality-checklist.md`

### 2단계: 범위 줄이기

아이디어가 크면 첫 결과물을 1시간 안에 볼 수 있게 줄입니다.

확인할 것:

- 입력은 무엇인가
- 출력은 무엇인가
- 첫 번째 성공 기준은 무엇인가
- 외부 API 없이 가능한가
- 로컬 파일만으로 시작할 수 있는가

### 3단계: 폴더 생성

`work/작업이름/` 아래에 만듭니다.

```text
README.md
src/
input/
output/
notes/
```

### 4단계: README 작성

README에는 반드시 아래 내용을 포함합니다.

- 한 줄 목표
- 왜 만드는지
- 최종 결과물
- 입력
- 출력
- 필요한 도구
- 폴더 구조
- 만들 기능 체크리스트
- 첫 번째 작업
- 다음에 Codex에게 요청할 말
- 확인 방법

### 5단계: 점검

`.codex/references/work-quality-checklist.md`로 빠진 부분을 확인합니다.

마지막에는 저장 경로와 첫 번째 작업만 짧게 알려줍니다.
