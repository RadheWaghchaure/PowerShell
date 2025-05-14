@echo off
echo === Zipping build folder ===
powershell -Command "Compress-Archive -Path ..\bin\* -DestinationPath ..\archive\CalculatorBuild.zip -Force"
