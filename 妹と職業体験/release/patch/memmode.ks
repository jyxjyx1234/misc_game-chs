;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■回想モード設定
*memMode

[iscript]
function rightClicks()
{
	kag.process('','*mem_exit');
}
[endscript]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇ＳＡＶＥ＆ＬＯＡＤの設定
;[eval exp="kag.LoadMenu.enabled = false"]
;[eval exp="kag.SaveMenu.enabled = false"]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

;◇右クリックで脱出
[rclick jump=true target="*mem_exit" enabled=true]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;◇初期画面のページを設定
;初期値は①data/system2/main.ks の回想ボタンクリックでmainf.charaPage = 1に設定
;[eval exp="f.charaPage = 1"]
;[bgm00]
;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ページ構成
*mem_start
;[eval exp="sf.x080_c01 = 1"]

;f.memBackground：背景画像　f.memList01～：回想タグ　f.memFile01～：シナリオファイル名　f.memThumb01～：サムネイル画像

[iscript]
	switch(f.charaPage)
	{
		case 1:
			f.memBackground = 'scene_bg01';
			f.memList01 = 'mem10'; f.memFile01 = 'scene03.ks'; f.memThumb01 = 'thumbnail_s01';
			f.memList02 = 'mem20'; f.memFile02 = 'scene06.ks'; f.memThumb02 = 'thumbnail_s02';
			f.memList03 = 'mem30'; f.memFile03 = 'scene09.ks'; f.memThumb03 = 'thumbnail_s03';
			f.memList04 = 'mem40'; f.memFile04 = 'scene11.ks'; f.memThumb04 = 'thumbnail_s04';
		break;

		case 2:
			f.memBackground = 'scene_bg02';
			f.memList01 = 'mem50'; f.memFile01 = 'scene14.ks'; f.memThumb01 = 'thumbnail_s05';
			f.memList02 = 'mem60'; f.memFile02 = 'scene16.ks'; f.memThumb02 = 'thumbnail_s06';
			f.memList03 = 'mem70'; f.memFile03 = 'scene22.ks'; f.memThumb03 = 'thumbnail_s07';
			f.memList04 = 'mem80'; f.memFile04 = 'scene23.ks'; f.memThumb04 = 'thumbnail_s08';
		break;

		case 3:
			f.memBackground = 'scene_bg03';
			f.memList01 = 'mem90'; f.memFile01 = 'scene09.ks'; f.memThumb01 = 'thumbnail_s09';
			f.memList02 = 'mem100'; f.memFile02 = 'scene10.ks'; f.memThumb02 = 'thumbnail_s10';
;			f.memList03 = 'mem110'; f.memFile03 = 'scene11.ks'; f.memThumb03 = 'thumbnail_s11';
;			f.memList04 = 'mem120'; f.memFile04 = 'scene24.ks'; f.memThumb04 = 'thumbnail_s12';
		break;

	}
[endscript]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■各ページ画像の配置
*mem_setup

[nowait]

;◇メッセージレイヤーの上に画像表示
[image storage="cls" layer=10 index=1010001 page=back visible=true opacity=255 left=0 top=0]

;◇背景画像の表示
[position layer=message10 frame=&f.memBackground page=back opacity=255 left=0 top=0 width=1024 height=768 marginl=0 margint=0 marginr=0 marginb=0][endif]
[layopt layer=message10 visible=true page=back]
[current layer=message10 page=back]

;◇ページ切り替えボタン配置
[locate x=809 y=79][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="scene_bt_p01" exp="f.charaPage = 1" rc="rightClicks()" target=*mem_start cond="f.charaPage != 1"][endif]
[locate x=979 y=79][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="scene_bt_p02" exp="f.charaPage = 2" rc="rightClicks()" target=*mem_start cond="f.charaPage != 2"][endif]
;[locate x=795 y=79][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="scene_bt_p03" exp="f.charaPage = 3" rc="rightClicks()" target=*mem_start cond="f.charaPage != 3"][endif]

;◇ＣＧサムネイルボタン配置
[if exp="sf[f.memList01] == 1"][locate x=260 y= 188][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic=&f.memThumb01 exp="f.memorial = f.memFile01" rc="rightClicks()" target=*mem_open][endif]
[if exp="sf[f.memList02] == 1"][locate x=260 y= 360][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic=&f.memThumb02 exp="f.memorial = f.memFile02" rc="rightClicks()" target=*mem_open][endif]
[if exp="sf[f.memList03] == 1"][locate x=260 y= 533][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic=&f.memThumb03 exp="f.memorial = f.memFile03" rc="rightClicks()" target=*mem_open][endif]
[if exp="sf[f.memList04] == 1"][locate x=260 y= 706][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic=&f.memThumb04 exp="f.memorial = f.memFile04" rc="rightClicks()" target=*mem_open][endif]


;◇戻るボタン配置
[locate x=1127 y=79][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="scene_bt_back" rc="rightClicks()" target=*mem_exit]

[endnowait]

[locklink]
[trans method=crossfade time=50]
[wt canskip=false]
[unlocklink]
[s]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■回想開始
*mem_open

;◇表示画像の破棄
[image storage="bg000000" page=back layer=base visible=true opacity=255 left=0 top=0]
[position layer=message10 frame="" color=0x000000 page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back][er]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt canskip=false]

[layopt layer=message10 visible=false page=fore]
[layopt layer=message10 visible=false page=back]

[current layer=message0]

;◇右クリックにてメッセージレイヤーの消去可
[rclick call=false jump=false enabled=true]

;◇メッセージ履歴出力＆表示禁止解除
[history output=true enabled=true]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]

;◇ＢＧＭフェード
[bgm99]

;◇回想番号に移動
;[clearwindow]
[setwindow]
[mesw_on]
[eval exp="f.memorialMode = 1"]
[jump storage=&f.memorial target=*start_memorial]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■回想モード終了
*mem_exit
;◇表示画像の破棄（タイトル画面中はスルー）
[if exp="f.title ==0"]
	[position layer=message10 frame="cls" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[freeimage layer=10 page=back]
	[trans method=crossfade time=50]
	[wt]

	[layopt layer=message10 visible=false page=fore]
	[layopt layer=message10 visible=false page=back]
[endif]

[current layer=message0]

[rclick jump=false]

;◇初期画面のページを設定
[eval exp="f.memmode_page = 0"]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

[return]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
