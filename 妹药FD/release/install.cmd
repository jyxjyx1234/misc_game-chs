@echo off
chcp 65001
setlocal
if not exist data.xp3 (
    echo 请在游戏目录下运行本程序
    goto end
)

if exist data_ori.xp3 (
    echo 已安装补丁，正在卸载原补丁...
    if exist patch2.xp3 (
        echo 删除 patch2.xp3...
        del /f /q patch2.xp3
    )
    if exist data.xp3 (
        echo 删除 data.xp3...
        del /f /q data.xp3
    )
    if exist uninstall.cmd (
        echo 删除 uninstall.cmd...
        del /f /q uninstall.cmd
    )
    goto move
)

for %%F in (data.xp3) do set size=%%~zF
if %size% LSS 104857600 (
    echo 请勿重复安装，如需更新请先运行install.cmd
    goto end
)
if exist data_ori.xp3 (
    del /f /q data_ori.xp3
)
ren data.xp3 data_ori.xp3

:move
echo 正在安装补丁...
if exist resources (
    xcopy /y /e /i resources\* .
)
if exist resources (
    rd /s /q resources
)
del "%~f0"

:end
pause