@echo off
chcp 65001
set "CURRENT_PATH=%CD%"
cd /d "D:\CHS\GalTransl"
python.exe run_GalTransl.py "%CURRENT_PATH%\config.yaml" gpt35-1106
pause
cd /d "%CURRENT_PATH%"