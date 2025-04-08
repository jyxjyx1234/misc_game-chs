@echo off
SET TARGET=A98FAST
echo 「 %TARGET%.PAK 」のディレクトリ構造を所得中なり!
attrib +h _THUMBNL.SUE
copy taghead %TARGET%.TAG
dir *.* /a-d /b >> %TARGET%.TAG
echo ..END >> %TARGET%.TAG
attrib -h _THUMBNL.SUE
echo 圧縮開始
x:\binv\filepack %TARGET%.TAG
echo.
echo 処理終了なり。
