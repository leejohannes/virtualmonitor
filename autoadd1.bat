@echo off
chcp 65001>nul
cd /d "%~dp0"
set c=deviceinstaller64.exe
if "%PROCESSOR_ARCHITECTURE%"==":x86" set c=deviceinstaller.exe
cmd /c %c% enableidd 1