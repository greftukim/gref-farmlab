#!/bin/bash
# 세션 시작 시 GitHub master 최신 내용을 로컬로 동기화
# 브라우저 편집모드로 저장된 내용이 유실되지 않도록 보호

set -euo pipefail

cd "$CLAUDE_PROJECT_DIR"

echo "[session-start] GitHub master 최신 내용 fetch 중..."
git fetch origin master

echo "[session-start] 로컬 브랜치를 최신 master 기준으로 rebase 중..."
git rebase origin/master || {
  echo "[session-start] rebase 충돌 발생 — 수동 해결 필요"
  git rebase --abort
  exit 1
}

echo "[session-start] 완료 — 로컬이 GitHub master 최신 상태와 동기화됨"
