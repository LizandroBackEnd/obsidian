@echo off
cd "C:\Users\Lizandro\Documents\Obsidian Vault" 
 
git pull origin main 
git add .
git commit -m "build(sync): sync vault" 
git push origin main