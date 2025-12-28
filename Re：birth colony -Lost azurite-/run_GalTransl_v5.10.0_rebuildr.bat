@echo off
chcp 65001
set "CURRENT_PATH=%CD%"
cd /d "F:\galtransl-5.10"
python.exe run_GalTransl.py "%CURRENT_PATH%\config.yaml" rebuildr
pause
cd /d "%CURRENT_PATH%"