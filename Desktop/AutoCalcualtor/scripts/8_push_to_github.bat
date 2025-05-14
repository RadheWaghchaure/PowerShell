@echo off
echo === Pushing zip file to GitHub ===
git add ..
git commit -m "Added new build zip"
git push origin main
