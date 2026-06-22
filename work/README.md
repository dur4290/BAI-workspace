# work

여러 파일로 구성된 진행 중 작업을 저장하는 폴더입니다.

새 작업을 시작하면 Codex가 `작업이름/` 폴더를 만들고, 그 안에 `README.md`, `src/`, `input/`, `output/`, `notes/`를 구성합니다.

참고 예시는 `_examples/` 아래에 모아 둡니다. 새 작업은 `_examples/`가 아니라 `work/작업이름/`에 만듭니다.

포함된 예시:

- `_examples/example-contest-filter/`: 공모전 후보를 로컬 CSV/HTML에서 수집하고, 키워드 필터를 거쳐 Markdown/CSV 결과와 Codex 검수 큐, Notion 확장 초안을 남기는 파이프라인 예시입니다.
- `_examples/example-kindergarten-dashboard/`: 작은 유치원 CSV를 전처리하고 파생지표를 만든 뒤, 학생이 바로 열어볼 수 있는 HTML 대시보드로 바꾸는 데이터 분석 예시입니다.
- `_examples/example-lumoa-html-cards/`: 데이터 결과를 상태, 근거, 확인 필요 항목이 보이는 카드형 HTML UI로 바꾸는 구현 예시입니다.
