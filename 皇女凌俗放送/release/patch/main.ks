;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■初期起動→タイトル画面　　最終更新　02/21　更新者　すずき
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/27　更新者　白土

*main
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■Ｒメニュー禁止
[rclick enabled=false]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■↓５秒以上カーソルが動かなかった時、マウスカーソルを、非表示にする
;■　下記スクリプト制作→鈴木
@iscript
function HideCursorOnTimer()
{
	if( f._timerHideCurPos_x == kag.primaryLayer.cursorX && f._timerHideCurPos_y == kag.primaryLayer.cursorY )
	{
		kag.mouseCursorState = mcsTempHidden;
	}

	f._timerHideCurPos_x = kag.primaryLayer.cursorX;
	f._timerHideCurPos_y = kag.primaryLayer.cursorY;
}
function GetStartedDate()
{
// 	var date = new Date();
// 	date.setTime(dic.storeTime);
// 	date = "%04d/%02d/%02d %02d:%02d".sprintf(
// 		date.getYear(), date.getMonth() + 1, date.getDate(),
// 		date.getHours(), date.getMinutes() );
	sf.started = System.getTickCount();
}
@endscript
;// [eval exp="var onCloseQuery_Org = kag.onCloseQuery"]
;// [eval exp="kag.onCloseQuery = (onCloseQuery incontextof kag)"]
[eval exp="var objHideTimer = new Timer(HideCursorOnTimer,'')"]
[eval exp="objHideTimer.interval = 5000"]
[eval exp="objHideTimer.enabled = 1"]
[eval exp="kag.add(objHideTimer)"]

;■↑５秒以上カーソルが動かなかった時、マウスカーソルを、非表示にする
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■会社ロゴ表示
[call storage="logo.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■オープニングムービー
; [call storage="storyworks.ks" target=*move_op]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■タイトル画面

*title|タイトル画面
;□「最初に戻る」で、ここに戻る
[startanchor enabled=true]
[eval exp="sf.loaded = 0"]
[eval exp="kag.rightClickHook.clear()"]


;□ゲーム変数（f.xxxxx）全てクリアー
[clearvar]

;■画面初期化
[cm]
;□メッセージレイヤー初期化
[layopt     layer=message3 visible=false]
[position   layer=message3 frame="" opacity=0 left=0 top=0 marginl=0 margint=0 page=back]
[current    layer=message3 page=back withback=false]

;□レイヤー初期化
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch1 layer2=&sf.lay_ch2 layer3=&sf.lay_ch0]
;□背景レイヤー初期化
[loadbg page=fore layer=base storage=black]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■初期化
*extraback

;□履歴　禁止
[history output=false enabled=false]

;□右クリックメニュー　禁止
[rclick enabled=false]

;□ＳＡＶＥ＆ＬＯＡＤ制御
[eval exp="kag.SaveMenu.enabled = false"]
[eval exp="kag.LoadMenu.enabled = true"]


*page1
;■画面の初期化
[stoptrans]
[nowait]

;□タイトルモード　ＯＮ
[eval exp="f['intitle']=1"]

[bgmstop]
;■タイトル用ＢＧＭ
[bgmplay storage=bgm01]

;■タイトルベース画像表示
[loadbg layer=base storage=title_bg]

;■タイトルベース書式設定
[current  layer=message3 page=back withback=false][er]
[position layer=message3 page=back visible=true left=0 top=0 width=640 height=480]
[layopt   layer=message3 page=back visible=true opacity=255]



;■選択項目表示
;■スタート
;■ロード
;■オプション

[eval exp="kag.historyLayer.clear()"]
[locate x=242 y=209][button clickse=click clicksebuf=2 graphic="title_bt_start" target="*storyworks"]
[locate x=242 y=267][button clickse=click clicksebuf=2 graphic="title_bt_load" target="*load"]
[locate x=242 y=325][button clickse=click clicksebuf=2 graphic="title_bt_extra" target="*extra"]
[locate x=242 y=383][button clickse=click clicksebuf=2 graphic="title_bt_exit" target="*exit"]

[locklink2]
;□オプション画面からの復帰
[if exp="f.extraback == 1"][eval exp="f.extraback = 0"][jump target=*loadback][endif]

;□通常のタイトル画面の更新
*loadback
;□画面更新
[endnowait]
[ud time=500]
[unlocklink2]
[s]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□




;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;□ロードモード（タイトル画面用のロード）
*load

[call storage=loadmenu.ks]

[current layer=message3]
[jump target=*loadback]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;□本編スタート
*storyworks

[eval exp="GetStartedDate()"]
[stoptrans]

[call storage="warning.ks"]



;// [er]
;■ 黒背景 を 通常 で表示
[loadbg storage=bg00 layer=8 index=1500000]
[ud time=1500]
;index値を元にもどす
[loadbg storage=bg00 layer=8 index=9000]
[layopt layer=message3 visible=false page=fore]
[layopt layer=message3 visible=false page=back]
[eval exp="f['intitle']=0"]

[call storage=storyworks.ks]

[eval exp="sf.cleared = 1" cond="!f.badend"]
[eval exp="kag.historyLayer.clear()"]
[jump storage="main.ks" target=*title]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;□オプションモード
*extra
[stoptrans]

[call storage="exmenu_dmy.ks"]

[stoptrans]
[clearvar]
[jump target=*extraback exp="f.extraback = 1"]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ゲーム終了
*exit
[emb exp="kag.close()"]
[jump target=*loadback]

