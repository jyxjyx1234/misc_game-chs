@echo off
chcp 65001 >nul

set asar_path=resources\app.asar
set backup_path=resources\app.asar_backup
set patch_path=app
set temp_path=resources\app

if exist "%backup_path%" (
    echo 检测到备份文件，正在还原……
    if exist "%asar_path%" (
        del /f /q "%asar_path%"
    )
    ren "%backup_path%" app.asar
)
echo 解包……
asar.exe unpack "%asar_path%" "%temp_path%"
echo 替换文件……
xcopy "%patch_path%" "%temp_path%" /e /i /h /y >nul
rmdir /s /q "app"  >nul
echo 备份原文件……
ren "%asar_path%" app.asar_backup
echo 重新封包……
asar.exe pack "%temp_path%" "%asar_path%"
echo 清理文件……
asar.exe remove "%temp_path%" 1
del asar.exe
del /f /q "%0"