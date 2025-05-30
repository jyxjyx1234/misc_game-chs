@echo off
chcp 65001
set "CURRENT_PATH=%CD%"
cd /d "D:\aPrograms\galtransl-r1"
python.exe run_GalTransl.py "%CURRENT_PATH%\config.yaml" gpt4
pause
cd /d "%CURRENT_PATH%"