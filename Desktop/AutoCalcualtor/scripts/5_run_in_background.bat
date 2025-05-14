@echo off
echo === Running .jar in background and saving logs ===
start /B java -jar ..\shared\CalculatorApp.jar > ..\bin\app.log 2>&1
echo Logs stored in ..\bin\app.log
