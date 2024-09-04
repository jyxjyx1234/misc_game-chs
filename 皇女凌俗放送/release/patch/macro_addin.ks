;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■　マクロ定義　最終更新日　03/15　最終更新者　白土
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■準備
;■以下の内容で、config.tjsの初期値を調整する事
;■　効果音バッファ数＿＿＝　３
;■　前景レイヤー数＿＿＿＝１０
;■　メッセージレイヤー数＝１５
;■　セーブ数＿＿＿＿＿＿＝３０

;■社内マクロ変数初期化

;■トランジッション用
[eval exp="sf['backlay']=0"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■基本ウインドウ形状変更

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■スタイル・書体のデフォルト値
;■行間　字間
;■文字サイズ　書体　文字の色
;■改ページマーク表示位置
;基本マクロを使用する
;[defstyle linespacing=3 pitch=-1]
;[deffont size=21 face="ＭＳ 明朝" color=0xffffff ]
;[glyph fix=false]
;[glyph fix=true left=0 top=0]

;■フルスクリーン
;■[win_full]
[macro name=win_full]
[current layer=message0 page=fore]
[position layer=message0 page=back frame="" opacity=0 left=0 top=0 width=640 height=480 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
[position layer=message0 page=fore frame="" opacity=0 left=0 top=0 width=640 height=480 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
[layopt page=fore layer=message0 opacity=255]
[layopt page=back layer=message0 opacity=255]
[glyph fix=true left=640 top=480]
[endmacro]

;基本のマクロを使用する
;■２７文字×４行
;■[setwindow]
;[macro name=setwindow]
;[current layer=message0 page=fore]
;[position  layer=message0 page=back frame="mesgwin.bmp" opacity=128 left= 0 top= 340 width= 640 height= 145 marginl= 23 margint= 23 marginr= 23 marginb= 23 visible=true]
;[position  layer=message0 page=fore frame="mesgwin.bmp" opacity=128 left= 0 top= 340 width= 640 height= 145 marginl= 23 margint= 23 marginr= 23 marginb= 23 visible=true]
;[layopt page=fore layer=message0 opacity=255]
;[layopt page=back layer=message0 opacity=255]
;[endmacro]

[macro name=setwindow]
[current  layer=message0 withback=true]
[position layer=message0 page=back visible=true frame=&sf.meswin opacity=128 left=0 top=350 width=640 height=480 marginl=20 margint=10 marginr=0 marginb=10]
[position layer=message0 page=fore visible=true frame=&sf.meswin opacity=128 left=0 top=350 width=640 height=480 marginl=20 margint=10 marginr=0 marginb=10]
[layopt page=fore layer=message0 opacity=255]
[layopt page=back layer=message0 opacity=255]
[glyph fix=true left=595 top=90]
;[glyph fix=false]　カーソル位置を固定しない　場合
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■基本ウインドウ表示関係

;基本のマクロを使用する
;■基本ウインドウを表示
;■[mesw_on]
;[macro name=mesw_on]
;[layopt page=fore layer=message0 opacity=255]
;[layopt page=back layer=message0 opacity=255]
;[endmacro]

;基本のマクロを使用する
;■基本ウインドウを非表示
;■[mesw_off]
;[macro name=mesw_off]
;[layopt page=fore layer=message0 opacity=0]
;[layopt page=back layer=message0 opacity=0]
;[endmacro]

;■メッセージを表画面に書く
;■[mess_fore]
[macro name=mess_fore]
[current layer=message0 page=fore]
[endmacro]

;■メッセージを裏画面に書く
;■[mess_back]
[macro name=mess_back]
[current layer=message0 page=back]
[endmacro]

;■フォントサイズの設定
;■フォントカラーの設定
;■[font_c size='22' color='0xRRGGBB']
[macro name=font_c]
[font * size%size|default color=%color|default ]
[endmacro]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■背景画像表示関係

;■以下のマクロで背景を表示しないと、ＣＧモードで未読扱いになる
;■クロスフェードで表示（立ち絵を全てクリアする）

;■[bg storage=表示する画像]
[macro name=bg]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage=%storage layer=base page=back]
[eval exp="sf[mp.storage]=1"]
[image storage="cls" visible=false layer=0 page=back]
[image storage="cls" visible=false layer=1 page=back]
[image storage="cls" visible=false layer=2 page=back]
[image storage="cls" visible=false layer=3 page=back]
[image storage="cls" visible=false layer=4 page=back]
[image storage="cls" visible=false layer=5 page=back]
[image storage="cls" visible=false layer=6 page=back]
[wt]
[endmacro]

;■色を補正して出力
;■変更する個所を引数で渡す　各値は０～２５５
;■↓デフォルトで、通常表示される
;■[bg_color storage=表示する画像 fr=0 fg=0 fb=0 r=255 g=255 b=255]
[macro name=bg_color]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage=%storage layer=base page=back rfloor=%fr|0 gfloor=%fg|0 bfloor=%fb|0 rceil=%r|255 gceil=%g|255 bceil=%b|255 visible=true]
[eval exp="sf[mp.storage]=1"]
[wt]
[endmacro]

;■セピアで瞬間表示
;■[bg_sepia storage=表示する画像]
[macro name=bg_sepia]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage=%storage layer=base page=back visible=true grayscale=true rgamma=1.3 ggamma=1.1]
[eval exp="sf[mp.storage]=1"]
[wt]
[endmacro]

;■ネガポジ反転で瞬間表示
;■[bg_nega storage=表示する画像]
[macro name=bg_nega]
[backlay]
[image storage=%storage layer=base page=back rfloor=255 gfloor=255 bfloor=255 rceil=0 gceil=0 bceil=0 visible=true]
[eval exp="sf[mp.storage]=1"]
[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■立ち絵表示関係

;■立ち絵を「任意の位置」に表示（レイヤー番号指定可能）
;■[name=ld storage=表示する立ち絵画像 layer=(レイヤー指定) pos=表示位置]

;キャラクターデータの幅により表示位置を設定
;W=幅    ll    l   lc   c  rc   r  rr
;W=320  -80    0   80 160 240 320 400
;W=480  -40    0   40  80 120 160 300
;W=640 -213 -142  -71   0  71 142 213

[macro name=ld]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 layer=%layer|5 left=-213 top=0][endif]
[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 layer=%layer|1 left=-142 top=0][endif]
[if exp="mp.pos == 'lc'"][image storage=%storage visible=true page=back opacity=255 layer=%layer|3 left= -71 top=0][endif]
[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 layer=%layer|0 left=   0 top=0][endif]
[if exp="mp.pos == 'rc'"][image storage=%storage visible=true page=back opacity=255 layer=%layer|4 left=  71 top=0][endif]
[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 layer=%layer|2 left= 142 top=0][endif]
[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 layer=%layer|6 left= 213 top=0][endif]
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■「全て」の、立ち絵を消去
;■[cl_a]
[macro name=cl_a]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage="cls" visible=false layer=0 page=back opacity=255]
[image storage="cls" visible=false layer=1 page=back opacity=255]
[image storage="cls" visible=false layer=2 page=back opacity=255]
[image storage="cls" visible=false layer=3 page=back opacity=255]
[image storage="cls" visible=false layer=4 page=back opacity=255]
[image storage="cls" visible=false layer=5 page=back opacity=255]
[image storage="cls" visible=false layer=6 page=back opacity=255]
[endmacro]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■画像の更新　デフォルト値＝０
;■[ud time=0]
[macro name=ud_old]
[stoptrans]
[eval exp="sf['backlay']=0"]
[trans method=crossfade time=%time|0][wt]
[endmacro]

;■[ud rule=表示ルール time=更新時間]
[macro name=ud_rule]
[stoptrans]
[eval exp="sf['backlay']=0"]
[trans method=universal rule=%rule vague=0 time=%time|0][wt]
[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■拡大縮小して画像表示
;□演出のみ使用可能、セーブ可能領域にて使用不可
;[zoom_set st0="基本ベース画像" st1="拡大縮小対象画像" dx0="左上座標Ｘ" dy0="左上座標Ｙ" dx1="右上座標Ｘ" dy1="右上座標Ｙ" dx2="左下座標Ｘ" dy2="左下座標Ｙ"]
[macro name=zoom_set]
[image storage=%st1 page=back layer=0]
[image storage=%st0 page=back layer=1]
[eval exp="kag.back.base.affineCopy(kag.back.layers[1], 0, 0, 640, 480, false,0,0,640,0,0,480, stNearest)"]
[eval exp="kag.back.base.affineCopy(kag.back.layers[0], 0, 0, 640, 480, false, mp.dx0, mp.dy0, mp.dx1, mp.dy1, mp.dx2, mp.dy2, stNearest)"]
[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■射精専用
;■クロスフェードの時間を変更する場合は、
;■このマクロを変更して、表示時間を一括で変更する事
;■[bg_xx storage=表示する画像]
[macro name=bg_xx]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage="bgffffff" layer=base page=back]
[trans method=crossfade time=500]
[wt]
[backlay]
[image storage=%storage layer=base page=back]
[eval exp="sf[mp.storage]=1"]
[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■画面ノイズ専用　ＴＶ＿ＯＮ
;■クロスフェードの時間を変更する場合は、
;■このマクロを変更して、表示時間を一括で変更する事
;■loadbg 系の、表示と連動
;■[loadtvon storage=表示する画像]
[macro name=loadtvon]
[nowait]
;ＳＥ開始
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage="bg000000" layer=base page=back][trans method=crossfade time=500][wt][backlay]
[wait time=1000]
[image storage="noise05"  layer=base page=back][trans method=crossfade time=10][wt][backlay]
[image storage="noise04"  layer=base page=back][trans method=crossfade time=10][wt][backlay]
[image storage="bgffffff" layer=base page=back][trans method=crossfade time=50][wt][backlay]
[image * storage=%storage layer=%layer|base page=%page|back top=0 left=0 visible=true]
[eval exp="sf[mp.storage]=1"]
;□表示中の画像名の取得（モザイク用画像判定の為）
[eval exp="f.nowbg = mp.storage"]
;ＳＥ終了
[endnowait]
[endmacro]




;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■画面ノイズ専用　ＴＶ＿ＯＦＦ
;■クロスフェードの時間を変更する場合は、
;■このマクロを変更して、表示時間を一括で変更する事
;■loadbg 系の、表示と連動
;■[loadtvoff storage=表示する画像]
[macro name=loadtvoff]
[nowait]
[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
[image storage="noise04"  layer=base page=back][trans method=crossfade time=10][wt][backlay]
[image storage="noise05"  layer=base page=back][trans method=crossfade time=10][wt][backlay]
[image storage="noise06"  layer=base page=back][trans method=universal rule="tvoff.png" vague=0 time=50][wt][backlay]
[image * storage=%storage layer=%layer|base page=%page|back top=0 left=0 visible=true]
[eval exp="sf[mp.storage]=1"]
;□表示中の画像名の取得（モザイク用画像判定の為）
[eval exp="f.nowbg = mp.storage"]
[endnowait]
[wait time=2000]
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■画面を揺らす

;■画面揺らし（ノーマル）
;■[macro name=quake2 pow=揺れの強さ hmax=Ｘ揺れ vmax=Ｙ揺れ]
[macro name=quake2]
[if exp="mp.pow == 2"][quake time=1500 hmax=%hmax|10 vmax=%vmax|10][wait time=1500 canskip="true"][endif]
[if exp="mp.pow == 1"][quake time=1000 hmax=%hmax|10 vmax=%vmax|10][wait time=1000 canskip="true"][endif]
[if exp="mp.pow == 0"][quake time= 300 hmax=%hmax|10 vmax=%vmax|10][wait time= 300 canskip="true"][endif]
[stopquake]
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ＢＧＭ専用マクロ
;■現在流れているＢＧＭが、今回選択されたＢＧＭならば演奏続行

;■ＢＧＭフェードアウト２秒で終了
[macro name=bgm99 ][fadeoutbgm time=%time|2000][wb canskip=true][eval exp="f.bgm_n = 0"][endmacro]
;■ＢＧＭ終了
[macro name=bgm00 ][stopbgm][eval exp="f.bgm_n = 0"][endmacro]

;■loop=false→再生　　loop=true→連続再生
[macro name=bgm01 ][if exp="f.bgm_n != 1"][playbgm storage="bgm01" loop=true][eval exp="f.bgm_n = 1"][endif][endmacro]
[macro name=bgm02 ][if exp="f.bgm_n != 2"][playbgm storage="bgm02" loop=true][eval exp="f.bgm_n = 2"][endif][endmacro]
[macro name=bgm03 ][if exp="f.bgm_n != 3"][playbgm storage="bgm03" loop=true][eval exp="f.bgm_n = 3"][endif][endmacro]
[macro name=bgm04 ][if exp="f.bgm_n != 4"][playbgm storage="bgm04" loop=true][eval exp="f.bgm_n = 4"][endif][endmacro]
[macro name=bgm05 ][if exp="f.bgm_n != 5"][playbgm storage="bgm05" loop=true][eval exp="f.bgm_n = 5"][endif][endmacro]
[macro name=bgm06 ][if exp="f.bgm_n != 6"][playbgm storage="bgm06" loop=true][eval exp="f.bgm_n = 6"][endif][endmacro]
[macro name=bgm07 ][if exp="f.bgm_n != 7"][playbgm storage="bgm07" loop=true][eval exp="f.bgm_n = 7"][endif][endmacro]
[macro name=bgm08 ][if exp="f.bgm_n != 8"][playbgm storage="bgm08" loop=true][eval exp="f.bgm_n = 8"][endif][endmacro]
[macro name=bgm09 ][if exp="f.bgm_n != 9"][playbgm storage="bgm09" loop=true][eval exp="f.bgm_n = 9"][endif][endmacro]
[macro name=bgm10 ][if exp="f.bgm_n !=10"][playbgm storage="bgm10" loop=true][eval exp="f.bgm_n =10"][endif][endmacro]

[macro name=bgm11 ][if exp="f.bgm_n !=11"][playbgm storage="bgm11" loop=true][eval exp="f.bgm_n = 1"][endif][endmacro]
[macro name=bgm12 ][if exp="f.bgm_n !=12"][playbgm storage="bgm12" loop=true][eval exp="f.bgm_n = 2"][endif][endmacro]
[macro name=bgm13 ][if exp="f.bgm_n !=13"][playbgm storage="bgm13" loop=true][eval exp="f.bgm_n = 3"][endif][endmacro]
[macro name=bgm14 ][if exp="f.bgm_n !=14"][playbgm storage="bgm14" loop=true][eval exp="f.bgm_n = 4"][endif][endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ＳＥ専用マクロ

;■ＳＥフェードアウト２秒で終了
[macro name=se99 ][fadeoutse time=%time|2000][ws buf=1 canskip=true][endmacro]
;■ＳＥ終了
[macro name=se00 ][stopse buf=1 canskip=true][endmacro]

;■loop=false→単音　　loop=true→連続
[macro name=se01 ][playse buf=%buf|1 storage="se01.ogg" loop=false][endmacro]
[macro name=se02 ][playse buf=%buf|1 storage="se02.ogg" loop=false][endmacro]
[macro name=se03 ][playse buf=%buf|1 storage="se03.ogg" loop=false][endmacro]
[macro name=se04 ][playse buf=%buf|1 storage="se04.ogg" loop=false][endmacro]
[macro name=se05 ][playse buf=%buf|1 storage="se05.ogg" loop=false][endmacro]
[macro name=se06 ][playse buf=%buf|1 storage="se06.ogg" loop=false][endmacro]
[macro name=se07 ][playse buf=%buf|1 storage="se07.ogg" loop=false][endmacro]
[macro name=se08 ][playse buf=%buf|1 storage="se08.ogg" loop=false][endmacro]
[macro name=se09 ][playse buf=%buf|1 storage="se09.ogg" loop=false][endmacro]
[macro name=se10 ][playse buf=%buf|1 storage="se10.ogg" loop=false][endmacro]

[macro name=se11 ][playse buf=%buf|1 storage="se11.ogg" loop=false][endmacro]
[macro name=se12 ][playse buf=%buf|1 storage="se12.ogg" loop=false][endmacro]
[macro name=se13 ][playse buf=%buf|1 storage="se13.ogg" loop=false][endmacro]
[macro name=se14 ][playse buf=%buf|1 storage="se14.ogg" loop=false][endmacro]
[macro name=se15 ][playse buf=%buf|1 storage="se15.ogg" loop=false][endmacro]
[macro name=se16 ][playse buf=%buf|1 storage="se16.ogg" loop=false][endmacro]
[macro name=se17 ][playse buf=%buf|1 storage="se17.ogg" loop=false][endmacro]
[macro name=se18 ][playse buf=%buf|1 storage="se18.ogg" loop=false][endmacro]
[macro name=se19 ][playse buf=%buf|1 storage="se19.ogg" loop=false][endmacro]
[macro name=se20 ][playse buf=%buf|1 storage="se20.ogg" loop=false][endmacro]

[macro name=se21 ][playse buf=%buf|1 storage="se21.ogg" loop=false][endmacro]
[macro name=se22 ][playse buf=%buf|1 storage="se22.ogg" loop=false][endmacro]
[macro name=se23 ][playse buf=%buf|1 storage="se23.ogg" loop=false][endmacro]
[macro name=se24 ][playse buf=%buf|1 storage="se24.ogg" loop=false][endmacro]
[macro name=se25 ][playse buf=%buf|1 storage="se25.ogg" loop=false][endmacro]
[macro name=se26 ][playse buf=%buf|1 storage="se26.ogg" loop=false][endmacro]
[macro name=se27 ][playse buf=%buf|1 storage="se27.ogg" loop=false][endmacro]
[macro name=se28 ][playse buf=%buf|1 storage="se28.ogg" loop=false][endmacro]
[macro name=se29 ][playse buf=%buf|1 storage="se29.ogg" loop=false][endmacro]
[macro name=se30 ][playse buf=%buf|1 storage="se30.ogg" loop=false][endmacro]

[macro name=se31 ][playse buf=%buf|1 storage="se31.ogg" loop=false][endmacro]
[macro name=se32 ][playse buf=%buf|1 storage="se32.ogg" loop=false][endmacro]
[macro name=se33 ][playse buf=%buf|1 storage="se33.ogg" loop=false][endmacro]
[macro name=se34 ][playse buf=%buf|1 storage="se34.ogg" loop=false][endmacro]
[macro name=se35 ][playse buf=%buf|1 storage="se35.ogg" loop=false][endmacro]
[macro name=se36 ][playse buf=%buf|1 storage="se36.ogg" loop=false][endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ボイス再生開始処理
;■スキップモード＝再生しない
;■オート・モード＝再生する
;■再生中の時クリック＝再生中止

;■[playse2 storage=音声ファイル名]
[macro name=playse2]
[playse storage=%storage cond="!kag.skipMode"]
[endmacro]


;■ボイス再生終了処理
;■[ws2]

[macro name=ws2]
[endhact]
[ws canskip=true cond="kag.autoMode"]
[endmacro]


;基本のマクロを使用する
;■本文　改ページ処理
;■[p2]
;[macro name=p2]
;[p][stopse]
;[endmacro]

;基本のマクロを使用する
;■本文　開始処理
;■[cm2]
;[macro name=cm2]
;[hr]
;[hr]
;[cm]
;[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■選択肢関係マクロ

;■選択肢配置開始
;■[select]
[macro name=select]
[current layer=message0 page=fore]
[position  layer=message0 page=back frame="mesgwin.bmp" opacity=128 left= 0 top= 340 width= 640 height= 145 marginl= 23 margint= 23 visible=true]
[position  layer=message0 page=fore frame="mesgwin.bmp" opacity=128 left= 0 top= 340 width= 640 height= 145 marginl= 23 margint= 23 visible=true]
[layopt page=fore layer=message0 opacity=255]
[layopt page=back layer=message0 opacity=255]
[nowait]
[endmacro]

;■選択肢配置終了
;■[endselect]
[macro name=endselect]
[endnowait]
[s]
[endmacro]

;■選択肢をクリックした時に、音が出る
;■[link2 target=*ラベル名]
[macro name=link2]
[link target=%target  exp=%exp|"" clickse=click clicksebuf=2 ]
[endmacro]

;■選択肢のクリック領域の幅をＭＡＸにする
[macro name=endlink2]
[locate x=30]　　　　　　　　　　　　　　　　　　　　　　　　　　[endlink]
[endmacro]

;■ポップアップで選択肢を画面中央に表示
;■[link_set4]
[macro name=link_set4]
[layopt layer=message2 visible=true]
[current layer=message2 withback=true]
[position layer=message2 page=fore visible=true frame="link_set4" left=0 top=160 width=640 height=145 opacity=128 marginl=23 margint=23]
[position layer=message2 page=back visible=true frame="link_set4" left=0 top=160 width=640 height=145 opacity=128 marginl=23 margint=23]
[endmacro]

;■ポップアップで選択肢を画面中央に表示
;■[link_set3]
[macro name=link_set3]
[layopt layer=message2 visible=true]
[current layer=message2 withback=true]
[position layer=message2 page=fore visible=true frame="link_set3" left=0 top=160 width=640 height=145 opacity=128 marginl=23 margint=34]
[position layer=message2 page=back visible=true frame="link_set3" left=0 top=160 width=640 height=145 opacity=128 marginl=23 margint=34]
[endmacro]

;■ポップアップで選択肢を画面中央に表示
;■[link_set2]
[macro name=link_set2]
[layopt layer=message2 visible=true]
[current layer=message2 withback=true]
[position layer=message2 page=fore visible=true frame="link_set2" left=0 top=160 width=640 height=145 opacity=128 marginl=23 margint=46]
[position layer=message2 page=back visible=true frame="link_set2" left=0 top=160 width=640 height=145 opacity=128 marginl=23 margint=46]
[endmacro]

;□リアンの報告イベント用ウインドウ
[macro name=houkoku]
[history output=false]
[nowait]
[position layer=message5 page=fore visible=true opacity=128 frame="mes_houkokuwin" left=13 top=13 width=180 height=124 marginl=30 margint=13]
[position layer=message5 page=back visible=true opacity=128 frame="mes_houkokuwin" left=13 top=13 width=180 height=124 marginl=30 margint=13]
[layopt   layer=message5 visible=true opacity=255]
[current  layer=message5]
前回視聴率[r]
[if exp="f.tv_onare_old <  100"]　　[emb exp="'%4.1f％'.sprintf(f.tv_onare_old)"][r][endif]
[if exp="f.tv_onare_old == 100"]　 [emb exp="'%4.1f％'.sprintf(f.tv_onare_old)"][r][endif]


[if exp="f.sijiritu <  100"]　　[emb exp="'%4.1f％'.sprintf(f.sijiritu)"][endif]
[if exp="f.sijiritu == 100"]　 [emb exp="'%4.1f％'.sprintf(f.sijiritu)"][endif]

[endnowait]
[history output=true]
[endmacro]

[macro name=endhoukoku]
[position layer=message5 page=fore visible=true opacity=128 frame="cls" left=16 top=16 width=180 height=124 marginl=30 margint=13]
[position layer=message5 page=back visible=true opacity=128 frame="cls" left=16 top=16 width=180 height=124 marginl=30 margint=13]
[layopt   layer=message5 visible=true opacity=255]
[current  layer=message0]
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■回想モード関係マクロ
;■
;■（使用例）
;■『mem00.ks』内にて
;■前処理
;■[call_mem storage="a01.ks" target=*a01_mem]
;■後処理
;■
;■『a01.ks』内にて
;■（略）
;■*a01_mem
;■回想内容
;■[return_mem]
;■[eval sf.mem01 = 1]
;■（略）
;■

;■回想モード用　コール
;■[call_mem storage="ファイル名.ks" target=*ラベル名]
[macro name=call_mem]
[mesw_off][mesw_on][setwindow]
[eval exp="f.mem_on = 1"]
[call storage=%storage target=%target]
[win_full]
[endmacro]

;■回想モード用　リターン
;■[return_mem]
[macro name=return_mem]
[if exp="f.mem_on == 1"][return][endif]
[endmacro]



;■乱数の発生
;■[rand min=最小値 max=最大値]　f.randに乱数が戻り値として代入される
[macro name=rand]
[eval exp="f.rand =intrandom((int)mp.min,(int)mp.max)"]
[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■　マクロ、ここまで
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[return]



