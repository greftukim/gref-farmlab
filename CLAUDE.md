# GREF Farm LAB 사이트 작업 규칙

## 원격 동기화 (필수)
- **모든 작업 시작 전** `git pull origin master --rebase` 실행하여 최신 상태 확인
- **편집모드로 저장된 내용**이 원격에 있을 수 있으므로 pull 없이 작업 금지
- 커밋 후 push 실패 시 `git pull origin master --rebase` 후 재시도 (최대 4회)

## 파일 구조
- `index.html` — 메인 페이지 (CSS, JS, 인라인 섹션 포함)
- `sections/*.html` — 각 탭 콘텐츠 (DOMContentLoaded에서 fetch로 로딩)
- `sections/ai/*.html` — AI 섹션 서브파일 7개 (ai.html 내 스크립트로 로딩)
- AI 섹션은 `sectionNames`에 포함되지 않음 (인라인 유지)

## 편집 시 주의사항
- **index.html과 sections/*.html 양쪽 동기화 필수** — 육묘 탭 수정 시 `index.html`과 `sections/nursery.html` 모두 수정
- `spellcheck="false"` 속성 유지
- `contenteditable` 속성이 있는 요소는 보존
- `data-var`, `cv_*` 등 GREF Engine 관련 속성 보존
- CSS 클래스는 모노톤 디자인 시스템 변수 사용 (--fg, --fg-secondary, --fg-muted, --border, --surface, --surface2)

## 브랜치
- 작업 브랜치: master
- push: `git push -u origin master`
