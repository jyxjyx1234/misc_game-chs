rd /S/Q transed\patched
md "D:\game\mzr\Data\BasicData\"
md "D:\game\mzr\Data\MapData\"
copy "D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\back\utf8ԭ��\BasicData\*" "D:\game\mzr\Data\BasicData\"
copy "D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\back\utf8ԭ��\MapData\*" "D:\game\mzr\Data\MapData\"
WolfTL "D:\game\mzr\Data" transed patch
del /q release\patch\DATA\BasicData
del /q release\patch\DATA\MapData
copy D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\back\utf8ԭ��\BasicData\* release\patch\DATA\BasicData\
copy D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\back\utf8ԭ��\MapData\*  release\patch\DATA\MapData\
copy D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\transed\patched\data\MapData\* release\patch\DATA\MapData\
copy "D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\transed\patched\data\BasicData\CommonEvent.dat" release\patch\DATA\BasicData\
copy "D:\CHS\misc_game-chs\�äȤ����ˤ���CHS\transed\patched\data\BasicData\DataBase*" release\patch\DATA\BasicData\
cd release
RAR a -r �äȤ����ˤ���048chspatch_v2.1.exe patch
RAR a release.rar �äȤ����ˤ���048chspatch_v2.1.exe
pause 