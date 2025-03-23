@echo off
for %%f in (*.exe) do (
    if /i not "%%~nxf"=="setdll.exe" (
        setdll /d:fontchanger.dll "%%f"
        ren "%%f" "%%~nf_chs.exe"
        ren "%%f~" "%%f"
    )
)
pause