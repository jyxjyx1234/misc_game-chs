@echo off
chcp 65001
setlocal

echo 正在检查安装状态...
if not exist data_ori.xp3 (
    echo 未检测到原始数据文件 data_ori.xp3，无法卸载补丁。
    goto :end
)

echo 正在卸载补丁...
if exist patch2.xp3 (
    echo 删除 patch2.xp3...
    del /f /q patch2.xp3
)

if exist data.xp3 (
    echo 删除 data.xp3...
    del /f /q data.xp3
)

echo 恢复原始数据文件...
ren data_ori.xp3 data.xp3
echo 补丁卸载完成！
del "%~f0"
:end
echo 按任意键退出...
pause > nul