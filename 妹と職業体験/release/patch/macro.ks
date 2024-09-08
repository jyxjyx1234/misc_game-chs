;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;前景レイヤ（12）		メッセージレイヤ（12）
;　00:背景＆イベントＣＧ	　00:メインメッセージ
;　01:				　01:名前表示領域
;　02:立ち絵（奥）		　02:フェイスウインド
;　03:				　03:選択肢
;　04:立ち絵（中央）		　04:選択肢
;　05:				　05:選択肢
;　06:立ち絵（手前）		　06:選択肢
;　07:				　07:
;　08:				　08:
;　09:				　09:
;　10:各モードのpimage		　10:各モード画面
;　11:				　11:セーブ＆ロードのコメント

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;◇トランジッション用変数初期化
[eval exp="sf['backlay']=0"]

@iscript
//;■ボイスカット処理（次のテキストに変わるとボイスも止める）
//; 0:そのままボイス流す　 1:ボイス止める
sf.voice_cut = 0 if sf.voice_cut === void;
@endscript
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;【メッセージウィンドウ初期化】
[macro name=clearwindow]
	[current  layer=message0 withback=true]
	[position layer=message0 page=back frame="" opacity=255 left=0 top=0 width=1280 height=960 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
	[position layer=message0 page=fore frame="" opacity=255 left=0 top=0 width=1280 height=960 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
	[layopt layer=message0 page=fore opacity=255]
	[layopt layer=message0 page=back opacity=255]
[endmacro]

;【メッセージウインドウ設定】
[macro name=setwindow]
	[current  layer=message0 withback=true]
	[position layer=message0 page=back frame="messageWindow" opacity=255 left=0 top=  0 width=1280 height=150 marginl= 30 margint=720 marginr=180 marginb=0 visible=true]
	[position layer=message0 page=fore frame="messageWindow" opacity=255 left=0 top=  0 width=1280 height=150 marginl= 30 margint=720 marginr=180 marginb=0 visible=true]

	[layopt layer=message0 page=fore opacity=255 visible=false]
	[layopt layer=message0 page=back opacity=255 visible=false]
;クリックポイントの表示位置
;	[glyph line=LineBreak page=LineBreak fix=true left=825 top=705]
[endmacro]

;【メッセージウインド表示】
[macro name=mesw_on]
	[layopt layer=message0 page=back opacity=255 visible=true]
	[sysbtopt backvisible=true]
	[trans method=crossfade time=300]
	[wt]
[endmacro]

;【メッセージウインド消去】
[macro name=mesw_off]
	[layopt layer=message0 page=back opacity=255 visible=false]
	[sysbtopt backvisible=false]
	[trans method=crossfade time=300]
	[wt]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;【ネームプレート表示】
;名前は画像の中心に自動表示される
;ネームプレート画像サイズが横230ピクセルの場合-15した数字で大体真ん中に名前が来る
;※ここの設定はゲームを再起動させないと反映されないので注意
;	[eval exp="var alignedx = (333-mp.name.length*23)/2+1"]
;男と女で色分けするように二種類用意

[macro name=setname]
	[current layer=message1 withback=true]
	[position page=fore layer=message1 frame="namePlate" opacity=0 left=0 top=645 marginl=0 margint=-1 marginr=0 marginb=0 visible=true]
	[position page=back layer=message1 frame="namePlate" opacity=0 left=0 top=645 marginl=0 margint=-1 marginr=0 marginb=0 visible=true]
	[layopt layer=message1 page=fore visible=true]
	[layopt layer=message1 page=back visible=true]
	[eval exp="var alignedx = (149-mp.name.length*23)/2+1"]
	[locate x=&alignedx]
	[ch text=%name]
	[hr]
	[current layer=message0 withback=true]
[endmacro]

[macro name=setname1]
	[current layer=message1 withback=true]
	[position page=fore layer=message1 frame="namePlate" opacity=0 left=0 top=645 marginl=0 margint=-1 marginr=0 marginb=0 visible=true]
	[position page=back layer=message1 frame="namePlate" opacity=0 left=0 top=645 marginl=0 margint=-1 marginr=0 marginb=0 visible=true]
	[layopt layer=message1 page=fore visible=true]
	[layopt layer=message1 page=back visible=true]
	[eval exp="var alignedx = (149-mp.name.length*23)/2+1"]
	[locate x=&alignedx]
	[font color=0xFFFFFF edgeColor = 0x0068B7;]
	[ch text=%name]
	[hr]
	[current layer=message0 withback=true]
[endmacro]

[macro name=setname2]
	[current layer=message1 withback=true]
	[position page=fore layer=message1 frame="namePlate" opacity=0 left=0 top=645 marginl=0 margint=-1 marginr=0 marginb=0 visible=true]
	[position page=back layer=message1 frame="namePlate" opacity=0 left=0 top=645 marginl=0 margint=-1 marginr=0 marginb=0 visible=true]
	[layopt layer=message1 page=fore visible=true]
	[layopt layer=message1 page=back visible=true]
	[eval exp="var alignedx = (149-mp.name.length*23)/2+1"]
	[locate x=&alignedx]
	[font color=0xFFFFFF edgeColor = 0xE5004F;]
	[ch text=%name]
	[hr]
	[current layer=message0 withback=true]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;【フェイスウインド表示】
[macro name=setface]
	[current layer=message2 withback=true]
	[position page=fore layer=message2 frame=%chara opacity=0 left=13 top=441 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
	[position page=back layer=message2 frame=%chara opacity=0 left=13 top=441 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
	[layopt layer=message2 page=fore visible=true]
	[layopt layer=message2 page=back visible=true]
	[current layer=message0 withback=true]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;【クリック待ち】
[macro name=p2]
	[endhact]
	[ws canskip=true cond="kag.autoMode"]
	[p]
;	[stopse]
;ボイスカット=1(ボイスを止める)
[stopse buf=0 cond="sf.voice_cut==1"]
	[hr]
	[hr]
	[layopt layer=message1 page=fore visible=false]
	[layopt layer=message1 page=back visible=false]
	[layopt layer=message2 page=fore visible=false]
	[layopt layer=message2 page=back visible=false]
	[er]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;【背景画像表示】
[macro name=bg]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true]
	[wt]
[endmacro]

;【背景画像ルール画像使用】
[macro name=bgrule]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true]
	[trans layer=0 method=universal time=%time rule=%rule vague=%vague visible=true]
	[wt]
[endmacro]

;【背景画像表示／セピア】
[macro name=bg_sepia]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true grayscale=true rgamma=1.3 ggamma=1.1]
	[wt]
[endmacro]

;【背景画像表示／グレースケール】
[macro name=bg_gray]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true grayscale=true]
	[wt]
[endmacro]
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;【イベントＣＧ表示】
[macro name=cg]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true]
	[eval exp="sf[mp.storage] = 1"]
	[wt]
[endmacro]

;【イベントＣＧ表示／セピア】
[macro name=cg_sepia]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true grayscale=true rgamma=1.3 ggamma=1.1]
	[eval exp="sf[mp.storage] = 1"]
	[wt]
[endmacro]

;【イベントＣＧ表示／グレースケール】
[macro name=cg_gray]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage=%storage layer=0 page=back left=%left|0 top=%top|0 visible=true grayscale=true]
	[eval exp="sf[mp.storage] = 1"]
	[wt]
[endmacro]

;【イベントＣＧ表示／射精関係】
[macro name=cg_xx]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[image storage="bgffffff" layer=0 page=back left=0 top=0 visible=true]
	[trans method=crossfade time=500]
	[wt]
	[backlay]
	[image storage=%storage layer=layer0 page=back left=%left|0 top=%top|0 visible=true]
	[eval exp="sf[mp.storage]=1"]
	[ct]
[endmacro]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;【キャラクター奥表示】
[macro name=ch_b]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[eval exp="mp.layer = '2'"  cond="mp.layer === void"]
	[ch_ *]
;	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 layer=2 left=%left|200  top=%top|0][endif]
;	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 layer=2 left=%left|0    top=%top|0][endif]
;	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 layer=2 left=%left|-100 top=%top|0][endif]
;	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 layer=2 left=%left|400  top=%top|0][endif]
;	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 layer=2 left=%left|500  top=%top|0][endif]
[endmacro]

;【キャラクター中表示】
[macro name=ch_c]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[eval exp="mp.layer = '4'"  cond="mp.layer === void"]
	[ch_ *]
;	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 layer=4 left=%left|200  top=%top|0][endif]
;	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 layer=4 left=%left|0    top=%top|0][endif]
;	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 layer=4 left=%left|-100 top=%top|0][endif]
;	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 layer=4 left=%left|400  top=%top|0][endif]
;	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 layer=4 left=%left|500  top=%top|0][endif]
[endmacro]

;【キャラクター前表示】
[macro name=ch_f]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[eval exp="mp.layer = '6'"  cond="mp.layer === void"]
	[ch_ *]
;	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 layer=6 left=%left|200  top=%top|0][endif]
;	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 layer=6 left=%left|0    top=%top|0][endif]
;	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 layer=6 left=%left|-100 top=%top|0][endif]
;	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 layer=6 left=%left|400  top=%top|0][endif]
;	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 layer=6 left=%left|500  top=%top|0][endif]
[endmacro]
;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;【立ち絵合成表示】
[macro name=ch_]
[eval exp="mp.left = 200"  cond="mp.left === void && mp.pos == 'c' "]
[eval exp="mp.left = 0"    cond="mp.left === void && mp.pos == 'l' "]
[eval exp="mp.left = -100" cond="mp.left === void && mp.pos == 'll'"]
[eval exp="mp.left = 400"  cond="mp.left === void && mp.pos == 'r' "]
[eval exp="mp.left = 500"  cond="mp.left === void && mp.pos == 'rr'"]
[image storage=&"mp.storage+mp.pose" layer=%layer left=%left top=%top|0 visible=true page=back opacity=255]
[pimage storage=&"mp.storage+mp.face" layer=%layer page=back cond="!mp.face"]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;【カットイン演出】
[macro name=cutin]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="sf.cutin == '1' "][image storage=%storage visible=true page=back opacity=255 layer=5 left=%left|0  top=%top|0][endif]
[endmacro]

;【カットイン演出消去】
[macro name=cutin_off]
[layopt layer=5 page=fore visible=false]
[freeimage layer=5 page=back]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;【無表示に立ち絵スライド表示】
@macro name="nsldin"
@image storage=%storage layer=%layer|4 page=fore visible=true left=%left|0 top=%top|0 opacity=%opacity|255
@move layer=%layer|4 page=fore spline=%spline|false time=%time delay=%delay|0 path=%path accel=%accel|0
@endmacro

;【表示済みの立ち絵を移動+α 移動消え】
@macro name="nsldin2"
@move layer=%layer|4 page=fore spline=%spline|false time=%time delay=%delay|0 path=%path accel=%accel|0
@endmacro

;【スライド表示させた立ち絵を固定】
@macro name="wsldin"
@wm
@stopmove
@backlay
@endmacro

;【スライド消しした立ち絵の固定+レイヤーの破棄】
@macro name="wsldin2"
@wm
@stopmove
@freeimage layer=%layer|4
@backlay
@endmacro

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;【キャラクター奥表示／セピア】
[macro name=ch_sepia_b]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=2 left=%left|200  top=%top|0][endif]
	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=2 left=%left|0    top=%top|0][endif]
	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=2 left=%left|-100 top=%top|0][endif]
	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=2 left=%left|400  top=%top|0][endif]
	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=2 left=%left|500  top=%top|0][endif]
[endmacro]

;【キャラクター中表示／セピア】
[macro name=ch_sepia_c]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=4 left=%left|200  top=%top|0][endif]
	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=4 left=%left|0    top=%top|0][endif]
	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=4 left=%left|-100 top=%top|0][endif]
	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=4 left=%left|400  top=%top|0][endif]
	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=4 left=%left|500  top=%top|0][endif]
[endmacro]

;【キャラクター前表示／セピア】
[macro name=ch_sepia_f]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=6 left=%left|200  top=%top|0][endif]
	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=6 left=%left|0    top=%top|0][endif]
	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=6 left=%left|-100 top=%top|0][endif]
	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=6 left=%left|400  top=%top|0][endif]
	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 grayscale=true rgamma=1.3 ggamma=1.1 layer=6 left=%left|500  top=%top|0][endif]
[endmacro]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;【キャラクター奥表示／グレースケール】
[macro name=ch_gray_b]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=2 left=%left|200  top=%top|0][endif]
	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=2 left=%left|0    top=%top|0][endif]
	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=2 left=%left|-100 top=%top|0][endif]
	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=2 left=%left|400  top=%top|0][endif]
	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=2 left=%left|500  top=%top|0][endif]
[endmacro]

;【キャラクター中表示／グレースケール】
[macro name=ch_gray_c]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=4 left=%left|200  top=%top|0][endif]
	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=4 left=%left|0    top=%top|0][endif]
	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=4 left=%left|-100 top=%top|0][endif]
	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=4 left=%left|400  top=%top|0][endif]
	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=4 left=%left|500  top=%top|0][endif]
[endmacro]

;【キャラクター前表示／グレースケール】
[macro name=ch_gray_f]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[if exp="mp.pos == 'c' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=6 left=%left|200  top=%top|0][endif]
	[if exp="mp.pos == 'l' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=6 left=%left|0    top=%top|0][endif]
	[if exp="mp.pos == 'll'"][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=6 left=%left|-100 top=%top|0][endif]
	[if exp="mp.pos == 'r' "][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=6 left=%left|400  top=%top|0][endif]
	[if exp="mp.pos == 'rr'"][image storage=%storage visible=true page=back opacity=255 grayscale=true layer=6 left=%left|500  top=%top|0][endif]
[endmacro]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;【キャラクター奥消去】
[macro name=cl_b]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[freeimage layer=2 page=back]
[endmacro]

;【キャラクター中消去】
[macro name=cl_c]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[freeimage layer=4 page=back]
[endmacro]

;【キャラクター前消去】
[macro name=cl_f]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[freeimage layer=6 page=back]
[endmacro]

;【キャラクター全消去】
[macro name=cl_a]
	[if exp="sf['backlay']===0"][backlay][eval exp="sf['backlay']=1"][endif]
	[freeimage layer=2 page=back]
	[freeimage layer=4 page=back]
	[freeimage layer=6 page=back]
[endmacro]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;【画像更新】
[macro name=ud]
	[stoptrans]
	[eval exp="sf['backlay']=0"]
	[trans method=crossfade time=%time|0]
	[wt]
[endmacro]

;【画像更新／ルール画像】
[macro name=ud_rule]
	[stoptrans]
	[eval exp="sf['backlay']=0"]
	[trans method=universal rule=%rule vague=0 time=%time|0]
	[wt]
[endmacro]

;【画像更新／拡張トランジッション】
[macro name=ud_extrans]
	[stoptrans]
	[eval exp="sf['backlay']=0"]
	[trans method=%method children=%children|true vague=100 time=%time|0]
	[wt]
[endmacro]

;【画像更新／スクロール】
[macro name=ud_scroll]
	[stoptrans]
	[eval exp="sf['backlay']=0"]
	[trans method=scroll from=%from|bottom stay=%stay|nostay time=%time|0]
	[wt]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;【画面揺らし】
[macro name=quake2]
	[if exp="mp.pow == 2"][quake time=1500 hmax=%hmax|10 vmax=%vmax|10][wait time=1500 canskip="true"][endif]
	[if exp="mp.pow == 1"][quake time=1000 hmax=%hmax|10 vmax=%vmax|10][wait time=1000 canskip="true"][endif]
	[if exp="mp.pow == 0"][quake time= 500 hmax=%hmax|10 vmax=%vmax|10][wait time= 500 canskip="true"][endif]
	[stopquake]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;【ＢＧＭ再生／１曲目】男が覗いてる視点用
[macro name=bgm01]
[playbgm storage="MusMus-BGM-072" loop=true]
[endmacro]
;【ＢＧＭ再生／２曲目】プロローグ回想
[macro name=bgm02]
[playbgm storage="MusMus-BGM-144" loop=true]
[endmacro]
;【ＢＧＭ再生／３曲目】通常シーン
[macro name=bgm03]
[playbgm storage="MusMus-BGM-032" loop=true]
[endmacro]
;【ＢＧＭ再生／４曲目】???
[macro name=bgm04]
[playbgm storage="MusMus-BGM-169" loop=true]
[endmacro]
;【ＢＧＭ再生／５曲目】エロシーン
[macro name=bgm05]
[playbgm storage="MusMus-BGM-092" loop=true]
[endmacro]
;【ＢＧＭ再生／６曲目】タイトル画面、コンフィグ、CGモード
[macro name=bgm06]
[playbgm storage="MusMus-BGM-047" loop=true]
[endmacro]
;【ＢＧＭ再生／７曲目】女の子キャラテーマ曲
[macro name=bgm07]
[playbgm storage="MusMus-BGM-078" loop=true]
[endmacro]
;【ＢＧＭ再生／８曲目】スタッフロール
[macro name=bgm08]
[playbgm storage="MusMus-BGM-155" loop=true]
[endmacro]
;【ＢＧＭ再生／９曲目】女の子キャラテーマ曲2
[macro name=bgm09]
[playbgm storage="MusMus-BGM-103" loop=true]
[endmacro]
;【ＢＧＭ再生／10曲目】
[macro name=bgm10]
[playbgm storage="" loop=true]
[endmacro]

;【ＢＧＭ再生／１曲目】
[macro name=bgm01s]
	[playbgm storage="bgm01" loop=false]
[endmacro]
;【ＢＧＭ再生／２曲目】
[macro name=bgm02s]
	[playbgm storage="bgm02" loop=false]
[endmacro]
;【ＢＧＭ再生／３曲目】
[macro name=bgm03s]
	[playbgm storage="bgm03" loop=false]
[endmacro]
;【ＢＧＭ再生／４曲目】
[macro name=bgm04s]
	[playbgm storage="bgm04" loop=false]
[endmacro]
;【ＢＧＭ再生／５曲目】
[macro name=bgm05s]
	[playbgm storage="bgm05" loop=false]
[endmacro]
;【ＢＧＭ再生／６曲目】
[macro name=bgm06s]
	[playbgm storage="bgm06" loop=false]
[endmacro]
;【ＢＧＭ再生／７曲目】
[macro name=bgm07s]
	[playbgm storage="bgm07" loop=false]
[endmacro]
;【ＢＧＭ再生／８曲目】
[macro name=bgm08s]
	[playbgm storage="bgm08" loop=false]
[endmacro]
;【ＢＧＭ再生／９曲目】
[macro name=bgm09s]
	[playbgm storage="bgm09" loop=false]
[endmacro]
;【ＢＧＭ再生／10曲目】
[macro name=bgm10s]
	[playbgm storage="bgm10" loop=false]
[endmacro]

;【ＢＧＭ停止】
[macro name=bgm00]
	[stopbgm]
[endmacro]

;【ＢＧＭ停止／フェードアウト】
[macro name=bgm99]
	[fadeoutbgm time=%time|1000]
	[wb canskip=true]
[endmacro]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;【音声バッファ０番】
[iscript]
function HisVoice( voice )
{
	return "kag.se[0].stop(), kag.se[0].play(%[ storage : '" + voice + "'])";
}
[endscript]

;【音声再生／ミュート時再生しない】
[macro name=voice]
	[hact exp="&HisVoice(mp.storage)"]
	[eval exp="var buf = mp.buf?mp.buf:0"]
	[if exp="sf.voice_volumeLevel != 0"]
	[playse buf=%buf storage=%storage cond="kag.skipMode<=1"]
	[eval exp="f.voicebuf = mp.buf"]
	[endif]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;【ＳＥバッファ１番＆２番】
[macro name=se]
	[if exp="sf.se_volumeLevel != 0"]
	[playse buf=%buf|1 storage=%storage loop=%loop|false cond="kag.skipMode<=1"]
	[endif]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;【ＳＥ停止】
[macro name=se00]
	[stopse buf=%buf|1 canskip=true]
[endmacro]

;【ＳＥフェードアウト停止】
[macro name=se99]
	[fadeoutse time=%time|500]
	[ws buf=%buf|1 canskip=true]
[endmacro]

;【ＳＥ再生終了待ち／スキップ可】
[macro name=se_wait]
	[ws buf=%buf|1 canskip=true]
[endmacro]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;【システム音バッファ３番＆４番】

;【ブランドロゴ】
[macro name=se_logo]
	[playse buf=%buf|3 storage="_free_take_se070" loop=false]
[endmacro]

;【クリック音】
[macro name=se_sys01]
	[playse buf=%buf|3 storage="se_70" loop=false]
[endmacro]

;【クリック音】
[macro name=se_sys02]
	[playse buf=%buf|3 storage="se_71" loop=false]
[endmacro]

;【クリック音】
[macro name=se_sys03]
	[playse buf=%buf|3 storage="se_72" loop=false]
[endmacro]

;【クリック音】
[macro name=se_sys04]
	[playse buf=%buf|3 storage="se_73" loop=false]
[endmacro]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■乱数の発生
;■[rand min=最小値 max=最大値]　f.randに乱数が戻り値として代入される
[macro name=rand]
[eval exp="f.rand =intrandom((int)mp.min,(int)mp.max)"]
[endmacro]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;【ボタン式選択肢初期設定】
[macro name=select_start]
	[endhact]
	[ws canskip=true cond="kag.autoMode"]
;	[p]
;スキップ禁止
	[wt canskip=false]
	[stopse]
	[history output=false]
	[layopt layer=message3 visible=true page=back]
	[layopt layer=message4 visible=true page=back]
[endmacro]

;【ボタン式選択肢１番】
[macro name=select_1]
	[current layer=message3 page=back]
	[locate x=78 y=146][button * graphic="selectWindow" target=%target exp="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] = 1'+mp.exp+''" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
	[current layer=message4 page=back]
	[eval exp="var alignedx = ((500-mp.choices.length*23)/2+1)+150"]
	[locate x=&alignedx y=155]
	[font color="0xc0c0c0" cond="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] == 1'"]
	[ch text=%choices]
	[font color="0xffffff"]
[endmacro]

;【ボタン式選択肢２番】
[macro name=select_2]
	[current layer=message3 page=back]
	[locate x=78 y=217][button * graphic="selectWindow" target=%target exp="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] = 1'+mp.exp+''" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
	[current layer=message4 page=back]
	[eval exp="var alignedx = ((500-mp.choices.length*23)/2+1)+150"]
	[locate x=&alignedx y=226]
	[font color="0xc0c0c0" cond="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] == 1'"]
	[ch text=%choices]
	[font color="0xffffff"]
[endmacro]

;【ボタン式選択肢３番】
[macro name=select_3]
	[current layer=message3 page=back]
	[locate x=150 y=250][button * graphic="selectWindow" target=%target exp="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] = 1'+mp.exp+''" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
	[current layer=message4 page=back]
	[eval exp="var alignedx = ((500-mp.choices.length*23)/2+1)+150"]
	[locate x=&alignedx y=250]
	[font color="0xc0c0c0" cond="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] == 1'"]
	[ch text=%choices]
	[font color="0xffffff"]
[endmacro]

;【ボタン式選択肢４番】
[macro name=select_4]
	[current layer=message3 page=back]
	[locate x=150 y=300][button * graphic="selectWindow" target=%target exp="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] = 1'+mp.exp+''" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
	[current layer=message4 page=back]
	[eval exp="var alignedx = ((500-mp.choices.length*23)/2+1)+150"]
	[locate x=&alignedx y=300]
	[font color="0xc0c0c0" cond="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] == 1'"]
	[ch text=%choices]
	[font color="0xffffff"]
[endmacro]

;【ボタン式選択肢表示】
[macro name=select_ud]
[locklink]
[trans method=crossfade time=300]
[wt canskip=false]
[unlocklink]
[endmacro]

;【ボタン式選択肢終了】
[macro name=select_end]
	[layopt layer=message3 page=back visible=false]
	[layopt layer=message4 page=back visible=false]
	[locklink]
	[trans method=crossfade time=300]
	[wt canskip=true]
	[current layer=message3 page=back][er]
	[current layer=message4 page=back][er]
	[unlocklink]
	[current layer=message0 page=fore]
	[history output=true]
	[hr]
	[hr]
	[er]
[endmacro]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;【可動式選択肢配置開始】
[macro name=select]
	[eval exp="f.select = 0"]
	[nowait]
[endmacro]

;【可動式選択肢１番目】
[macro name=setlink1]
	[history output=false]
	[position layer=message3 page=fore visible=true frame="linkWindow" left=800 top=160 width=600 height=32 opacity=128 marginl=12 margint=0]
	[position layer=message3 page=back visible=true frame="linkWindow" left=800 top=160 width=600 height=32 opacity=128 marginl=12 margint=0]
	[layopt layer=message3 page=fore opacity=0]
	[layopt layer=message3 page=back opacity=0]
	[current layer=message3 page=fore]
	[eval exp="f.currentwin = 'message3'"]
	[move layer=message3 time=180 delay=%delay|0 path=(100,160,255)][se_sys03]
[endmacro]

;【可動式選択肢２番目】
[macro name=setlink2]
	[history output=false]
	[position layer=message4 page=fore visible=true frame="linkWindow" left=800 top=200 width=600 height=32 opacity=128 marginl=12 margint=0]
	[position layer=message4 page=back visible=true frame="linkWindow" left=800 top=200 width=600 height=32 opacity=128 marginl=12 margint=0]
	[layopt layer=message4 page=fore opacity=0]
	[layopt layer=message4 page=back opacity=0]
	[current layer=message4 page=fore]
	[eval exp="f.currentwin = 'message4'"]
	[move layer=message4 time=180 delay=%delay|90 path=(100,200,255)][se_sys03]
[endmacro]

;【可動式選択肢３番目】
[macro name=setlink3]
	[history output=false]
	[position layer=message5 page=fore visible=true frame="linkWindow" left=800 top=240 width=600 height=32 opacity=128 marginl=12 margint=0]
	[position layer=message5 page=back visible=true frame="linkWindow" left=800 top=240 width=600 height=32 opacity=128 marginl=12 margint=0]
	[layopt layer=message5 page=fore opacity=0]
	[layopt layer=message5 page=back opacity=0]
	[current layer=message5 page=fore]
	[eval exp="f.currentwin = 'message5'"]
	[move layer=message5 time=180 delay=%delay|180 path=(100,240,255)][se_sys03]
[endmacro]

;【可動式選択肢４番目】
[macro name=setlink4]
	[history output=false]
	[position layer=message6 page=fore visible=true frame="linkWindow" left=800 top=280 width=600 height=32 opacity=128 marginl=12 margint=0]
	[position layer=message6 page=back visible=true frame="linkWindow" left=800 top=280 width=600 height=32 opacity=128 marginl=12 margint=0]
	[layopt layer=message6 page=fore opacity=0]
	[layopt layer=message6 page=back opacity=0]
	[current layer=message6 page=fore]
	[eval exp="f.currentwin = 'message6'"]
	[move layer=message6 time=180 delay=%delay|240 path=(100,280,255)][se_sys03]
[endmacro]

;【選択済み色変え＆ＳＥ】
[macro name=link2]
	[link * target=%target exp="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] = 1,'+mp.exp+''" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
	[font color="0xc0c0c0" cond="&'sf[\''+mp.target.substr(1,mp.target.length-1)+'\'] == 1'"]
[endmacro]

;【選択肢のクリック領域をＭＡＸにする】
[macro name=endlink2]
	[locate x=&mp.min|40]
	[locate x=&mp.max|574]
	[endlink]
	[r]
[endmacro]

;【選択肢配置終了】
[macro name=endselect]
	[endnowait]
	[unlocklink]
	[s]
[endmacro]

;【可動式選択肢の消去】
[macro name=clerlink]
	[move cond="f.select != 1" layer=message3 time=300 path=(-600,160,128)]
	[move cond="f.select != 2" layer=message4 time=300 path=(-600,200,128)]
	[move cond="f.select != 3" layer=message5 time=300 path=(-600,240,128)]
	[move cond="f.select != 4" layer=message6 time=300 path=(-600,280,128)]
	[wm]
	[if exp="f.select == 1"][se_sys03][move layer=message3 time=300 path=(100,620,0)][endif]
	[if exp="f.select == 2"][se_sys03][move layer=message4 time=325 path=(100,620,0)][endif]
	[if exp="f.select == 3"][se_sys03][move layer=message5 time=350 path=(100,620,0)][endif]
	[if exp="f.select == 4"][se_sys03][move layer=message6 time=375 path=(100,620,0)][endif]
	[wm][wm][wm][wm][wm]
	[eval exp="f.select = 0"]
	[layopt layer=message3 visible=false]
	[layopt layer=message4 visible=false]
	[layopt layer=message5 visible=false]
	[layopt layer=message6 visible=false]
	[current layer=message0 page=fore]
	[eval exp="f.currentwin = 'message0'"]
	[history output=true]
	[hr]
	[hr]
	[er]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;◇回想モード脱出ルーチン
[macro name=return_memorial]
	[if exp="f.memorialMode == 1"]
	[eval exp="f.memorialMode = 0"]
	[mesw_off]
	[cl_a]
	[bg storage="bg000000"]
	[ud time=800]
	[bgm99]
	[clearwindow][ct]
	;◇システムボタンを非表示
	[sysbtopt forevisible=false]
	[sysbtopt backvisible=false]
	[layopt layer=message1 page=fore visible=false]
	[layopt layer=message1 page=back visible=false]
	[jump storage="memmode.ks" target=*memMode]
	[endif]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;■クリッカブル系メニューモード

[macro name=mode_on]
;☆クリッカブル前処理
;■Ｒメニュー禁止
[rclick enabled=false]
;■メッセージ履歴出力　禁止
[history output=false]
;■メッセージ履歴表示　禁止
[history enabled=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]
;□メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]
[endmacro]

[macro name=mode_off]
;☆クリッカブル後処理
;■Ｒメニュー禁止解除
[rclick enabled=true]
;■メッセージ履歴出力　禁止解除
[history output=true]
;■メッセージ履歴表示　禁止解除
[history enabled=true]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = true"]
[eval exp="kag.SaveMenu.enabled = true"]
;□メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]
[endmacro]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[return]
