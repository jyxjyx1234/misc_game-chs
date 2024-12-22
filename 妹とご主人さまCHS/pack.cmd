rd /S/Q transed\patched
md "D:\game\mzr\Data\BasicData\"
md "D:\game\mzr\Data\MapData\"
copy "D:\CHS\misc_game-chs\妹とご主人さまCHS\back\utf8原版\BasicData\*" "D:\game\mzr\Data\BasicData\"
copy "D:\CHS\misc_game-chs\妹とご主人さまCHS\back\utf8原版\MapData\*" "D:\game\mzr\Data\MapData\"
WolfTL "D:\game\mzr\Data" transed patch
del /q release\patch\DATA\BasicData
del /q release\patch\DATA\MapData
copy D:\CHS\misc_game-chs\妹とご主人さまCHS\back\utf8原版\BasicData\* release\patch\DATA\BasicData\
copy D:\CHS\misc_game-chs\妹とご主人さまCHS\back\utf8原版\MapData\*  release\patch\DATA\MapData\
copy D:\CHS\misc_game-chs\妹とご主人さまCHS\transed\patched\data\MapData\* release\patch\DATA\MapData\
copy "D:\CHS\misc_game-chs\妹とご主人さまCHS\transed\patched\data\BasicData\CommonEvent.dat" release\patch\DATA\BasicData\
copy "D:\CHS\misc_game-chs\妹とご主人さまCHS\transed\patched\data\BasicData\DataBase*" release\patch\DATA\BasicData\
cd release
RAR a -r 妹とご主人さま048chspatch_v2.1.exe patch
RAR a release.rar 妹とご主人さま048chspatch_v2.1.exe
pause 