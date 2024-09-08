;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆
;■ロゴの表示
[backlay]
[image storage=c_logo layer=base page=back]
[trans time=500 method=crossfade]
[wt]
[backlay]
[wait time=2000]
[image storage=white.jpg layer=base page=back]
[trans time=500 method=crossfade]
[wt]

;■注意文章表示 attention
[backlay]
[image storage=attention layer=base page=back]
[trans time=500 method=crossfade]
[wt]
[backlay]
[wait time=4000]
[image storage=white.jpg layer=base page=back]
[trans time=1000 method=crossfade]
[wt]
[wait time=500]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

*main|タイトル画面
;■初期設定

;◇「最初に戻る」で、ここに戻る
[startanchor enabled=true]

*titleMode
;◇ゲーム変数初期化（f.xxxx）
[clearvar]

;◇オートモード解除
[cancelautomode]

;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;◇履歴の初期化
[eval exp="kag.historyLayer.clear()"]

;◇Ｒメニュー禁止
[rclick enabled=false]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

;◇タイトルの認識
[eval exp="f.title = 1"]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;*titleMode
;■タイトル画面構成

;アイコン上にカーソル時のポップアップ
;ボタンタグ showHint(0,**,**) の0は var hintImage = ['**','**','**','**']; の一番左の画像
[iscript]
function showHint( no, left, top )
{
	var hintImage = ['title_story@','title_load@','title_extra@','title_config@','title_gameEnd@'];
	var tmpImage = hintImage[no];
	kag.tagHandlers.image(%[storage : tmpImage, layer : '11', left : left, top : top, page : 'fore', visible : 'true', index : '1100000']);
}

function deleteHint()
{
	kag.tagHandlers.freeimage(%[layer : '11', page : 'fore']);
}
[endscript]

;◇ＢＧＭ再生
[bgm06]

[nowait]

;◇タイトル画像表示
[current layer=message10 page=back withback=false][er]
[position layer=message10 page=back frame="titlebg" opacity=255 left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back]

;◇ボタン配置
[locate x=930 y=41][button graphic="title_story" target=*titleStory onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=930 y=105][button graphic="title_load"  target=*titleLoad onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=930 y=167][button graphic="title_cg" target=*titlecg onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=930 y=230][button graphic="title_scene" exp="f.charaPage = 1" target=*titlescene onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=930 y=292][button graphic="title_config" target=*titleConfig onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]
[locate x=930 y=355][button graphic="title_gameEnd" target=*titleExit onleave="deleteHint()" clickse=se_70 clicksebuf=3 enterse=se_71 entersebuf=4]

[endnowait]

[locklink]
[trans method=crossfade time=150]
[wt canskip=false]
[unlocklink]
[s]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■本編開始
*titleStory

[bgm99]

;◇表示画像の破棄
[image storage="bg000000" page=back layer=base visible=true opacity=255 left=0 top=0]
[position layer=message10 frame="" opacity=255 color=0x000000 page=back left=0 top=0 width=800 height=600 marginl=0 margint=0 marginr=0 marginb=0]
[layopt layer=message10 visible=true page=back][er]
[trans method=crossfade time=300]
[wt canskip=false]

;◇メッセージレイヤー非表示
[layopt layer=message10 visible=false page=fore]
[layopt layer=message10 visible=false page=back]
[layopt layer=message11 visible=false page=fore]
[layopt layer=message11 visible=false page=back]

;◇タイトルの認識
[eval exp="f.title = 0"]

;◇Ｒメニュー禁止解除
[rclick enabled=true]

;◇メッセージ履歴出力＆表示
[history output=true enabled=true]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = true"]

;◇本編ルート開始
[call storage="storyline.ks" target=*start]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

[jump target=*titleMode]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■ロードモード
*titleLoad

;◇ロードモードの読み込み
[call storage="loadmode.ks" target=*loadMode]

[jump target=*titleMode]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■おまけモード
*titleextra

;◇おまけモードの読み込み
[call storage="extra.ks" target=*extraMode]

[jump target=*titleMode]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■ＣＧモード
*titlecg

;◇ＣＧモードの読み込み
[call storage="cgmode.ks" target=*cgMode]

[jump target=*titleMode]


;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆


;■回想モード
*titlescene

;◇回想モードの読み込み
[call storage="memmode.ks" target=*memMode]

[jump target=*titleMode]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■コンフィグメニュー
*titleConfig

;◇コンフィグメニューの読み込み
[call storage="configmode.ks" target=*configMode]

[jump target=*titleMode]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■ゲーム終了
*titleExit

;[eval exp="kag.close()"]
[close]
[jump target=*titleMode]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[return]


