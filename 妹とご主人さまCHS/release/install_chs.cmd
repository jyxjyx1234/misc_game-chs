setlocal enabledelayedexpansion
set "Folder=Data"
set "OldExt=.wolf1"
set "NewExt=.wolf"
cd /d "%Folder%"
for %%f in (*%OldExt%) do (
    ren "%%f" "%%~nf%NewExt%"
)
cd ..\
rd /S /Q Data\BasicData
ren Data\BasicData.wolf BasicData.wolf1
md Data\BasicData
copy patch\Data\BasicData Data\BasicData\
arc_conv Data\BattleEffect.wolf
rd /S /Q Data\BattleEffect
ren Data\BattleEffect.wolf BattleEffect.wolf1
ren Data\BattleEffect.wolf~ BattleEffect
arc_conv Data\BGM.wolf
rd /S /Q Data\BGM
ren Data\BGM.wolf BGM.wolf1
ren Data\BGM.wolf~ BGM
arc_conv Data\CharaChip.wolf
rd /S /Q Data\CharaChip
ren Data\CharaChip.wolf CharaChip.wolf1
ren Data\CharaChip.wolf~ CharaChip
arc_conv Data\EnemyGraphic.wolf
rd /S /Q Data\EnemyGraphic
ren Data\EnemyGraphic.wolf EnemyGraphic.wolf1
ren Data\EnemyGraphic.wolf~ EnemyGraphic
arc_conv Data\event_CG.wolf
rd /S /Q Data\event_CG
ren Data\event_CG.wolf event_CG.wolf1
ren Data\event_CG.wolf~ event_CG
arc_conv Data\MapChip.wolf
rd /S /Q Data\MapChip
ren Data\MapChip.wolf MapChip.wolf1
ren Data\MapChip.wolf~ MapChip
rd /S /Q Data\MapData
ren Data\MapData.wolf MapData.wolf1
md Data\MapData
copy patch\Data\MapData Data\MapData\
arc_conv Data\Picture.wolf
rd /S /Q Data\Picture
ren Data\Picture.wolf Picture.wolf1
ren Data\Picture.wolf~ Picture
arc_conv Data\puzzle.wolf
rd /S /Q Data\puzzle
ren Data\puzzle.wolf puzzle.wolf1
ren Data\puzzle.wolf~ puzzle
arc_conv Data\SE.wolf
rd /S /Q Data\SE
ren Data\SE.wolf SE.wolf1
ren Data\SE.wolf~ SE
arc_conv Data\SystemFile.wolf
rd /S /Q Data\SystemFile
ren Data\SystemFile.wolf SystemFile.wolf1
ren Data\SystemFile.wolf~ SystemFile
arc_conv Data\tatie.wolf
rd /S /Q Data\tatie
ren Data\tatie.wolf tatie.wolf1
ren Data\tatie.wolf~ tatie
arc_conv Data\toreraba.wolf
rd /S /Q Data\toreraba
ren Data\toreraba.wolf toreraba.wolf1
ren Data\toreraba.wolf~ toreraba
ren Game.exe Game.exe-ori
copy patch\Game.exe .\
ren Save Save_old
copy patch\SistersFBFONT.ttf .\
rd /S /Q patch
del /q arc_conv.exe
del /q install_chs.cmd