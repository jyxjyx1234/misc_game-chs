;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■スクリプトによる、ＯＰ・ＥＤ　　最終更新　05/06　更新者　白土
;スクリプトで、エンディングを、演出する場合
;このファイルを参考にする
;現在、ＯＰ・ＥＤは、ムービーを使用しているので
;このファイルは、使用されていないが、
;今後、方針が変更される場合もあるので、
;このファイルは、削除せず残しておく事


;■デモ曲設定
[eval exp="sf.demo_song='bgm10.ogg'"]
;■ウエイトの設定
[eval exp="f.beatwait=8000"]

;□メッセージ
;□ed_mes01～

;□使用画像
;□　bg00000.bmp
;□　cls.bmp
;□　w_logo.png
;□　w_logo0.png
;□　w_logo2.png

;□　使用しているルール画像
;□　westzoom.png

*ending
;■■■■■□□□□□■■■■■□□□□□■■■■■
;□スキップ強制解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;□左クリックしたら　所定のラベルへ『ジャンプ』
[iscript]
function skipDemo(){


[endscript]
[eval exp="kag.leftClickHook.add(skipDemo)"]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■レイヤーの初期化マクロ
[macro name="init_lay"]
[layopt layer=3 page=fore visible=false opacity=255 left=0 top=0]
[layopt layer=4 page=fore visible=false opacity=255 left=0 top=0]
[layopt layer=5 page=fore visible=false opacity=255 left=0 top=0]
[layopt layer=6 page=fore visible=false opacity=255 left=0 top=0]
[stopmove]
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■フルスクリーン
[current layer=message0 page=fore]
[position layer=message0 page=back frame="" opacity=0 left=0 top=0 width=640 height=480 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
[position layer=message0 page=fore frame="" opacity=0 left=0 top=0 width=640 height=480 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
[layopt page=back layer=message0 opacity=255]
[layopt page=fore layer=message0 opacity=255]
[style linespacing=3 pitch=-1]
[font size=21 face="ＭＳ 明朝" color=0xffffff ]
[glyph fix=false]



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■曲開始処理
[backlay]
[layopt layer=message0 visible=false]
[cm]
[init_lay]
[playbgm storage=&sf.demo_song loop=false]
[wait time=1000]
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０１
[init_lay]
[resetwait]

[image  layer=base page=fore storage="ex1"]
[image  layer=4    page=fore storage="cls"]
[pimage layer=4    page=fore storage="ed_mes01" dx=0 dy=0]
[layopt layer=4    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore storage="ex1"]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=3 time=12000 path="(240,0,255)"]

[image  layer=6 page=fore storage="ch01_201"]
[layopt layer=6 page=fore visible=true opacity=255 left=180 top=0]
[move   layer=6 time=8000 path="(260,0,0)"]







[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０２
[init_lay]
[resetwait]

[image  layer=base page=fore storage="ex2"]
[image  layer=4    page=fore storage="cls"]
[pimage layer=4    page=fore storage="ed_mes02" dx=400 dy=0]
[layopt layer=4    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore storage="ex2"]
[layopt layer=3 page=fore visible=true opacity=255 left=-240 top=0]
[move   layer=3 time=12000 path="(0,0,255)"]

[image  layer=5 page=fore storage="ch04_201"]
[layopt layer=5 page=fore visible=true opacity=255 left=-80 top=0]
[move   layer=5 time=8000 path="(0,0,0)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０３
[init_lay]
[resetwait]
[image  layer=base page=fore storage="ex3"]
[image  layer=6    page=fore storage="cls"]
[pimage layer=6    page=fore storage="ed_mes03" dx=0 dy=320]
[layopt layer=6    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore storage="ex3"]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=3 time=12000 path="(0,-180,255)"]

[image  layer=5 page=fore storage="ch06_201"]
[layopt layer=5 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=5 time=3500 path="(120,0,0)"]

[wait time=3500]

[image  layer=4 page=fore storage="ch05_201"]
[layopt layer=4 page=fore visible=true opacity=0 left=120 top=0]
[move   layer=4 time=4000 path="(240,0,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■




;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０４
[init_lay]
[resetwait]

[image  layer=base page=fore storage="ex1"]
[image  layer=6    page=fore storage="cls"]
[pimage layer=6    page=fore storage="ed_mes04" dx=0 dy=320]
[layopt layer=6    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore storage="ex1"]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=-180]
[move   layer=3 time=12000 path="(0,0,255)"]

[image  layer=5 page=fore storage="ch07_201"]
[layopt layer=5 page=fore visible=true opacity=255 left=200 top=0]
[move   layer=5 time=3500 path="(160,0,0)"]

[wait time=3500]

[image  layer=4 page=fore storage="ch08_201"]
[layopt layer=4 page=fore visible=true opacity=0 left=80 top=0]
[move   layer=4 time=4000 path="(-40,0,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０５
[init_lay]
[resetwait]

[image  layer=base page=fore storage="ex2"]
[image  layer=4    page=fore storage="cls"]
[pimage layer=4    page=fore storage="ed_mes05" dx=0 dy=0]
[layopt layer=4    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore storage="ex2"]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=3 time=12000 path="(240,0,255)"]

[image  layer=6 page=fore storage="ch09_201"]
[layopt layer=6 page=fore visible=true opacity=0 left=240 top=0]
[move   layer=6 time=4000 path="(240,0,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■



;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０６
[init_lay]
[resetwait]

[image  layer=base page=fore storage="ex2"]
[image  layer=6    page=fore storage="cls"]
[pimage layer=6    page=fore storage="ed_mes06" dx=0 dy=320]
[layopt layer=6    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore storage="ex2"]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=3 time=12000 path="(0,-180,255)"]

[image  layer=4 page=fore storage="ch10_201"]
[layopt layer=4 page=fore visible=true opacity=255 left=160 top=0]
[move   layer=4 time=4000 path="(-100,0,0)"]

[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■




;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０７
[init_lay]
[resetwait]

[image  layer=base page=fore visible=true storage="EV01_018a.bmp"  grayscale=true rgamma=1.3 ggamma=1.1]
[image  layer=4    page=fore storage="cls"]
[pimage layer=4    page=fore storage="ed_mes07" dx=400 dy=0]
[layopt layer=4    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore visible=true storage="EV01_018a.bmp"  grayscale=true rgamma=1.3 ggamma=1.1]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=3 time=12000 path="(-240,0,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０８
[init_lay]
[resetwait]

[image  layer=base page=fore visible=true storage="EV02_010a.bmp"  grayscale=true rgamma=1.3 ggamma=1.1]
[image  layer=4    page=fore storage="cls"]
[pimage layer=4    page=fore storage="ed_mes08" dx=400 dy=0]
[layopt layer=4    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore visible=true storage="EV02_010a.bmp"  grayscale=true rgamma=1.3 ggamma=1.1]
[layopt layer=3 page=fore visible=true opacity=255 left=-240 top=0]
[move   layer=3 time=12000 path="(-80,0,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　０９
[init_lay]
[resetwait]
[image  layer=base page=fore visible=true storage="EV04_007a.bmp"  grayscale=true rgamma=1.3 ggamma=1.1]
[image  layer=4    page=fore storage="cls"]
[pimage layer=4    page=fore storage="ed_mes09" dx=0 dy=320]
[layopt layer=4    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=3 page=fore visible=true storage="EV04_007a.bmp"  grayscale=true rgamma=1.3 ggamma=1.1]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=0]
[move   layer=3 time=12000 path="(0,-90,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　１０
[init_lay]
[resetwait]

[image  layer=base page=fore storage="ex2"]
[image  layer=6    page=fore storage="cls"]
[pimage layer=6    page=fore storage="ed_mes10" dx=0 dy=160]
[layopt layer=6    page=fore visible=true opacity=255 left=0 top=0]

[image  layer=4 page=fore storage="ex2"]
[layopt layer=4 page=fore visible=true opacity=255 left=0 top=-320]
[move   layer=4 time=12000 path="(0,-160,255)"]

[image  layer=3 page=fore storage="ex2"]
[layopt layer=3 page=fore visible=true opacity=255 left=0 top=160]
[move   layer=3 time=12000 path="(0,320,255)"]


[wait mode=until time=&f.beatwait]
;■■■■■□□□□□■■■■■□□□□□■■■■■


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■シーン　１１
[init_lay]
[resetwait]

[backlay]
[image storage=w_logo0 layer=base page=back]
[trans rule=westzoom time=500 vague=64]
[wt]
[backlay]
[image storage=w_logo layer=base page=back]
[trans rule=westzoom time=500 vague=64]
[wt]
[backlay]
[image storage=w_logo2 layer=base page=back]
[trans rule=westzoom time=500 vague=64]
[wt]

[image  layer=6    page=fore storage="cls"]
[pimage layer=6    page=fore storage="ed_mes11" dx=0 dy=320]
[layopt layer=6    page=fore visible=true opacity=255 left=0 top=0]
[wait time=4000]


[wait mode=until time=&f.beatwait]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■デモ　終了
[jump target=*sd]




;■■■■■□□□□□■■■■■□□□□□■■■■■
;■終了処理
*sd
[eval exp="kag.leftClickHook.remove(skipDemo)"]

;■完全消去
[init_lay]
[resetwait]
[image  layer=base page=fore storage="bg000000"]
[image  layer=3    page=fore storage="cls"]
[image  layer=4    page=fore storage="cls"]
[image  layer=5    page=fore storage="cls"]
[image  layer=6    page=fore storage="cls"]




[return]






