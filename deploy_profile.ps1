# Ammad Qaiser - GitHub Profile Deployment Script (PowerShell)
$ErrorActionPreference = "Stop"

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "   Ammad Qaiser - GitHub Profile Deployment System" -ForegroundColor Cyan
Write-Host "========================================================`n" -ForegroundColor Cyan

Set-Location -Path $PSScriptRoot

Write-Host "[1/4] Initializing Git repository..." -ForegroundColor Yellow
if (-not (Test-Path ".git")) {
    git init -b main
}

Write-Host "[2/4] Staging and committing files..." -ForegroundColor Yellow
git add .
git commit -m "feat: initialize ultimate aesthetic GitHub profile README and snake workflow"

Write-Host "[3/4] Setting remote repository origin..." -ForegroundColor Yellow
try { git remote remove origin 2>$null } catch {}
git remote add origin "https://github.com/Ammad0113/Ammad0113.git"

Write-Host "[4/4] Pushing to GitHub..." -ForegroundColor Green
Write-Host "`nNote: Ensure you have created the public repository 'Ammad0113' on https://github.com/new first!`n" -ForegroundColor Yellow
git push -u origin main --force

Write-Host "`n========================================================" -ForegroundColor Cyan
Write-Host "   DEPLOYMENT FINISHED! Visit https://github.com/Ammad0113" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
