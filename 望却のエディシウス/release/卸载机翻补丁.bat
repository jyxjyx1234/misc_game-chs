@echo off
chcp 65001 >nul

set backup_path=resources\app.asar_backup
set asar_path=resources\app.asar

if exist "%backup_path%" (
    echo 检测到备份文件，正在还原……
    if exist "%asar_path%" (
        del /f /q "%asar_path%"
    )
    ren "%backup_path%" app.asar
    echo 还原成功！
    del /f /q "%0"
)
else (
    echo 未检测到备份文件！
)