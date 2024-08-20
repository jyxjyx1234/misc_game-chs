setlocal enabledelayedexpansion
del Game.exe
ren Game.exe-ori Game.exe
del /q SistersFBFONT.ttf

set "Folder=Data"

set "OldExt=.wolf1"
set "NewExt=.wolf"

cd /d "%Folder%"

for %%f in (*%OldExt%) do (
    rd /S /Q "%%~nf"
    ren "%%f" "%%~nf%NewExt%"
)
del %0