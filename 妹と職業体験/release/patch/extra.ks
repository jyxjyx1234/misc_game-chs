;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■LastUpdate since2006.11.09／かおす

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■おまけモード設定
*extraMode

[iscript]
function rightClicks()
{
	kag.process('','*extraExit');
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
[rclick jump=true target="*extraExit" enabled=true]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■おまけ画面構成
*extraMenu

;アイコン上にカーソル時のポップアップ
;ボタンタグ showHint(0,**,**) の0は var hintImage = ['**','**','**','**']; の一番左の画像
[iscript]
function showHint( no, left, top )
{
	var hintImage = ['extra_cg@','extra_scene@','extra_return@'];
	var tmpImage = hintImage[no];
	kag.tagHandlers.image(%[storage : tmpImage, layer : '11', left : left, top : top, page : 'fore', visible : 'true', index : '1100000']);
}

function deleteHint()
{
	kag.tagHandlers.freeimage(%[layer : '11', page : 'fore']);
}
[endscript]

;◇ＢＧＭ再生
;[bgm01]

[nowait]

;◇背景画像の表示
[position layer=message10 page=back frame="titlebg.bmp" opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]
[freeimage layer=10 page=back]
[current layer=message10 page=back withback=false]
[er]

;◇ボタン配置

;[locate x=595 y= 31][button graphic="extra_cg" target=*extra_cgMode onenter="showHint(0,331,36)" onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
;[locate x=595 y= 75][button graphic="extra_scene"  target=*extra_memMode onenter="showHint(1,331,75)" onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
;[locate x=595 y=114][button graphic="extra_return" target=*extraExit onenter="showHint(2,331,114)" onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]

[locate x=595 y=228][button graphic="extra_cg" target=*extra_cgMode onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=595 y=273][button graphic="extra_scene" target=*extra_memMode onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=595 y=319][button graphic="extra_return" target=*extraExit onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]



;↓音楽モード、その他用
;[locate x=605 y=155][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="extra_bgm" rc="rightClicks()" target=*extra_bgmMode]
;[locate x=605 y=200][button clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4 graphic="extra_pub" rc="rightClicks()" target=*extra_pubMode]
[endnowait]

[locklink]
[trans method=crossfade time=150]
[wt canskip=false]
[unlocklink]
[s]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■ＣＧモード
*extra_cgMode

;◇ＣＧモードの読み込み
[call storage="cgmode.ks" target=*cgMode]

[jump target=*extraMode]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■回想モード
*extra_memMode

;◇回想モードの読み込み
[call storage="memmode.ks" target=*memMode]

[jump target=*extraMode]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■作品紹介モード
*extra_pubMode

;◇回想モードの読み込み
[call storage="publicity.ks" target=*pub_start]

[jump target=*extraMode]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■ＢＧＭモード
*extra_bgmMode

;◇ＢＧＭモードの読み込み
[call storage="bgmmode.ks" target=*bgmMode]

[jump target=*extraMode]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/


;■おまけモードメニュー終了
*extraExit

;◇表示画像の破棄（タイトル画面中はスルー）
[if exp="f.title == 0"]
	[position layer=message10 frame="cls" page=back opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
	[layopt layer=message10 visible=true page=back][er]
	[trans method=crossfade time=150]
	[wt canskip=false]

	[layopt layer=message10 visible=false page=fore]
	[layopt layer=message10 visible=false page=back]
[endif]

[current layer=message0]

[rclick jump=false]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]

[return]


;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
