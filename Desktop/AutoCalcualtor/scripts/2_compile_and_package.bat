@echo off
echo === Compiling Java source files ===
mkdir ..\bin 2>nul
javac -d ..\bin ..\src\main\java\Calculator.java
echo === Creating JAR package ===
jar cf ..\bin\CalculatorApp.jar -C ..\bin .
