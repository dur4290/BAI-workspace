# setup.ps1 — vibe-workspace 초기 설정 (Windows)
# ZIP으로 받은 경우 처음 한 번만 실행합니다.
# 실행 방법: PowerShell에서 .\scripts\setup.ps1
#
# 만약 "이 시스템에서 스크립트를 실행할 수 없습니다" 오류가 뜨면
# 아래 명령을 PowerShell에서 한 번만 실행한 뒤 다시 시도하세요.
#     Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

Set-Location $root

Write-Host ""
Write-Host "vibe-workspace 초기 설정을 시작합니다." -ForegroundColor Cyan
Write-Host ""

# [1/2] Git 저장소 확인 및 초기화
$isGit = git rev-parse --is-inside-work-tree 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "[1/2] Git 저장소를 초기화합니다..." -ForegroundColor Yellow
    git init
    if ($LASTEXITCODE -ne 0) {
        Write-Host "오류: git init에 실패했습니다. Git이 설치되어 있는지 확인하세요." -ForegroundColor Red
        exit 1
    }
    Write-Host "      완료: Git 저장소가 생성됐습니다." -ForegroundColor Green
} else {
    Write-Host "[1/2] Git 저장소가 이미 있습니다. 건너뜁니다." -ForegroundColor Green
}

# [2/2] pre-commit 훅 등록
Write-Host "[2/2] 보안 훅(.githooks)을 등록합니다..." -ForegroundColor Yellow
git config core.hooksPath .githooks
if ($LASTEXITCODE -ne 0) {
    Write-Host "오류: git config 설정에 실패했습니다." -ForegroundColor Red
    exit 1
}
Write-Host "      완료: 커밋 전 API 키 자동 검사가 활성화됐습니다." -ForegroundColor Green

Write-Host ""
Write-Host "설정 완료! 이제 Codex에게 이렇게 말해보세요:" -ForegroundColor Cyan
Write-Host ""
Write-Host "  /start" -ForegroundColor White
Write-Host ""
