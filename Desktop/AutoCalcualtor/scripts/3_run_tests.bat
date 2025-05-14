@echo off
echo === Compiling and Running Unit Tests ===
javac -cp "..\lib\*;..\bin" -d ..\bin ..\src\main\test\CalculatorTest.java
java -cp "..\lib\*;..\bin" org.junit.runner.JUnitCore CalculatorTest > ..\bin\test-report.txt
echo Test report generated at ..\bin\test-report.txt
