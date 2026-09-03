@echo off
title Deploy Ammad Qaiser GitHub Profile
color 0b
echo ========================================================
echo   Ammad Qaiser - GitHub Profile Deployment System
echo ========================================================
echo.

cd /d "%~dp0"

echo [1/4] Checking Git repository initialization...
if not exist ".git" (
    git init -b main
    echo Git repository initialized.
) else (
    echo Git repository already initialized.
)

echo [2/4] Staging aesthetic profile files...
git add .
git commit -m "feat: initialize ultimate aesthetic GitHub profile README and snake workflow"

echo [3/4] Configuring remote repository...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/Ammad0113/Ammad0113.git

echo [4/4] Pushing to GitHub...
echo.
echo NOTE: Make sure you have created the public repo 'Ammad0113' on github.com/new first!
echo.
git push -u origin main --force

echo.
echo ========================================================
echo   DEPLOYMENT COMPLETE! Check https://github.com/Ammad0113
echo ========================================================
pause
