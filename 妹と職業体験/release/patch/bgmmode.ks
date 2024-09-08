;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■LastUpdate since2006.11.09／かおす

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■ＢＧＭモード設定
*bgmMode

[iscript]
function rightClicks()
{
	kag.process('','*bgm_exit');
}
[endscript]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

;◇右クリックで脱出
[rclick jump=true target="*bgm_exit" enabled=true]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;◇曲再生の初期化
[eval exp="f.bgmNumber = 0"]
[eval exp="f.PlayButton = 0"]

;◇ＢＧＭ停止
;[bgm99]

;◇メッセージレイヤー８に画像配置
[position layer=message10 frame="bgm_bg" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[current layer=message10 page=back]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■ＢＧＭモードの配置へ
*bgm_setup
[bgm00]

[er]
[nowait]

;◇再生タイトル曲配置
[if exp="f.bgmNumber ==  1"][locate x=288 y=148][graph storage="play01" char=false cond="f.bgmNumber == 1"][endif]
[if exp="f.bgmNumber ==  2"][locate x=288 y=178][graph storage="play02" char=false cond="f.bgmNumber == 2"][endif]
[if exp="f.bgmNumber ==  3"][locate x=288 y=208][graph storage="play03" char=false cond="f.bgmNumber == 3"][endif]
[if exp="f.bgmNumber ==  4"][locate x=288 y=238][graph storage="play04" char=false cond="f.bgmNumber == 4"][endif]
[if exp="f.bgmNumber ==  5"][locate x=288 y=268][graph storage="play05" char=false cond="f.bgmNumber == 5"][endif]
[if exp="f.bgmNumber ==  6"][locate x=288 y=298][graph storage="play06" char=false cond="f.bgmNumber == 6"][endif]
[if exp="f.bgmNumber ==  7"][locate x=288 y=328][graph storage="play07" char=false cond="f.bgmNumber == 7"][endif]
[if exp="f.bgmNumber ==  8"][locate x=288 y=358][graph storage="play08" char=false cond="f.bgmNumber == 8"][endif]
[if exp="f.bgmNumber ==  9"][locate x=288 y=388][graph storage="play09" char=false cond="f.bgmNumber == 9"][endif]
[if exp="f.bgmNumber == 10"][locate x=288 y=418][graph storage="play10" char=false cond="f.bgmNumber ==10"][endif]

;◇コントロールボタン配置
[locate x=291 y= 88][button clickse=se_70 clicksebuf=3 enterse=se_73 entersebuf=4 graphic="bgm_bt_prev" rc="rightClicks()" target=*bgmBack]
[locate x=351 y= 88][button clickse=se_70 clicksebuf=3 enterse=se_73 entersebuf=4 graphic="bgm_bt_play" rc="rightClicks()" target=*bgmPlay cond="f.PlayButton != 1"]
[locate x=351 y= 84][graph storage="bgm_bt_playOn" char=false cond="f.PlayButton == 1"]
[locate x=411 y= 88][button clickse=se_70 clicksebuf=3 enterse=se_73 entersebuf=4 graphic="bgm_bt_stop" rc="rightClicks()" target=*bgmStop]
[locate x=471 y= 88][button clickse=se_70 clicksebuf=3 enterse=se_73 entersebuf=4 graphic="bgm_bt_next" rc="rightClicks()" target=*bgmNext]

;◇タイトル曲ボタン配置
[if exp="f.bgmNumber !=  1"][locate x=288 y=152][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_01" rc="rightClicks()" target=*bgmStart_01][endif]
[if exp="f.bgmNumber !=  2"][locate x=288 y=182][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_02" rc="rightClicks()" target=*bgmStart_02][endif]
[if exp="f.bgmNumber !=  3"][locate x=288 y=212][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_03" rc="rightClicks()" target=*bgmStart_03][endif]
[if exp="f.bgmNumber !=  4"][locate x=288 y=242][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_04" rc="rightClicks()" target=*bgmStart_04][endif]
[if exp="f.bgmNumber !=  5"][locate x=288 y=272][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_05" rc="rightClicks()" target=*bgmStart_05][endif]
[if exp="f.bgmNumber !=  6"][locate x=288 y=302][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_06" rc="rightClicks()" target=*bgmStart_06][endif]
[if exp="f.bgmNumber !=  7"][locate x=288 y=332][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_07" rc="rightClicks()" target=*bgmStart_07][endif]
[if exp="f.bgmNumber !=  8"][locate x=288 y=362][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_08" rc="rightClicks()" target=*bgmStart_08][endif]
[if exp="f.bgmNumber !=  9"][locate x=288 y=392][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_09" rc="rightClicks()" target=*bgmStart_09][endif]
[if exp="f.bgmNumber != 10"][locate x=288 y=422][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_10" rc="rightClicks()" target=*bgmStart_10][endif]
[endnowait]

;◇戻るボタン配置
[locate x=362 y=475][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="bgm_bt_back" rc="rightClicks()" target=*bgm_exit]

[locklink]
[trans method=crossfade time=150]
[wt canskip=false]
[unlocklink]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;◇ＢＧＭの再生
[bgm00]
[if exp="f.bgmNumber == 1"][bgm01][endif]
[if exp="f.bgmNumber == 2"][bgm02][endif]
[if exp="f.bgmNumber == 3"][bgm03][endif]
[if exp="f.bgmNumber == 4"][bgm04][endif]
[if exp="f.bgmNumber == 5"][bgm05][endif]

[if exp="f.bgmNumber == 6"][bgm06][endif]
[if exp="f.bgmNumber == 7"][bgm07][endif]
[if exp="f.bgmNumber == 8"][bgm08][endif]
[if exp="f.bgmNumber == 9"][bgm09][endif]
[if exp="f.bgmNumber ==10"][bgm10][endif]
[s]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■各タイトル曲の処理

;◇１曲目の再生準備
*bgmStart_01
[eval exp="f.bgmNumber = 1"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇２曲目の再生準備
*bgmStart_02
[eval exp="f.bgmNumber = 2"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇３曲目の再生準備
*bgmStart_03
[eval exp="f.bgmNumber = 3"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇４曲目の再生準備
*bgmStart_04
[eval exp="f.bgmNumber = 4"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇５曲目の再生準備
*bgmStart_05
[eval exp="f.bgmNumber = 5"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇６曲目の再生準備
*bgmStart_06
[eval exp="f.bgmNumber = 6"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇７曲目の再生準備
*bgmStart_07
[eval exp="f.bgmNumber = 7"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇８曲目の再生準備
*bgmStart_08
[eval exp="f.bgmNumber = 8"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇９曲目の再生準備
*bgmStart_09
[eval exp="f.bgmNumber = 9"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◇10曲目の再生準備
*bgmStart_10
[eval exp="f.bgmNumber =10"][eval exp="f.PlayButton = 1"][jump target=*bgm_setup]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■コントロールボタン処理

;◇曲の再生
*bgmPlay
[if exp="f.bgmNumber == 0"][bgm00][eval exp="f.bgmNumber = 1"][eval exp="f.PlayButton = 1"][endif]
[jump target=*bgm_setup]

;◇再生中の曲停止
*bgmStop
[eval exp="f.bgmNumber = 0"][eval exp="f.PlayButton = 0"][bgm00][jump target=*bgm_setup]

;◇次の曲の再生
*bgmNext
[if exp="f.bgmNumber <  10"][eval exp="f.bgmNumber +=1"][jump target=*bgm_setup][endif]
	[if exp="f.bgmNumber >= 10"][eval exp="f.bgmNumber  =1"][jump target=*bgm_setup][endif]

;◇前の曲の再生
*bgmBack
[if exp="f.bgmNumber >   1"][eval exp="f.bgmNumber -= 1"][jump target=*bgm_setup][endif]
	[if exp="f.bgmNumber <=  1"][eval exp="f.bgmNumber  =10"][jump target=*bgm_setup][endif]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■ＢＧＭモードの終了
*bgm_exit

;◇ＢＧＭの停止
[bgm00]

;◇表示画像の破棄（タイトル画面中はスルー）
[if exp="f.title == 0"]
	[position layer=message10 frame="cls" opacity=255 page=back left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[trans method=crossfade time=150]
	[wt]

	[layopt layer=message10 visible=false page=fore]
	[layopt layer=message10 visible=false page=back]
[endif]

[current layer=message0]

[rclick jump=false]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

[return]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
