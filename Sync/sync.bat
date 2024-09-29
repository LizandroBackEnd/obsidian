@echo off
cd "C:\Users\Lizandro\Documents\Obsidian Vault"

REM Get the latest changes from the remote repository
git fetch origin main 

REM Check for changes between local branch and remote branch
FOR /F "tokens=*" %%i IN ('git diff --name-only origin/main') DO (
    REM If there are changes, pull, add and push
    git pull origin main
    git add .
    git commit -m "build(sync): sync vault"
    git push origin main
    GOTO END
)

echo No changes to sync.
:END
