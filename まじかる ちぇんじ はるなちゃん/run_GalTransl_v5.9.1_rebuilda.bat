@echo off
chcp 65001
set "CURRENT_PATH=%CD%"
cd /d "D:\aPrograms\GALTRANS"
python.exe run_GalTransl.py "%CURRENT_PATH%\config.yaml" rebuilda
pause
cd /d "%CURRENT_PATH%"