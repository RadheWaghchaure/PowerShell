@echo off
echo === Deleting older zip files ===
forfiles /p ..\release /s /m *.zip /d -7 /c "cmd /c del @path"
