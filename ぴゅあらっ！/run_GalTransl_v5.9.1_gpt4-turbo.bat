@echo off
chcp 65001
set "CURRENT_PATH=%CD%"
cd /d "D:\aPrograms\Galtransl-R1"
python.exe run_GalTransl.py "%CURRENT_PATH%\config.yaml" gpt4-turbo
pause
cd /d "%CURRENT_PATH%"