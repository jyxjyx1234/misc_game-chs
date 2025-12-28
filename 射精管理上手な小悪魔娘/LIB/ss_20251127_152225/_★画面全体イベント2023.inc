
//-----------------------------
//マウスオーバーによる多重スクロール

/*----

	マウスの位置でスクロールする効果を作る
	
	Layer位置によって多重スクロールをする感じに。
	
	objno 0-9	: layer = 0		screen[3]
	objno 10-19	: layer = 1		screen[4]
	objno 20-29	: layer = 2		screen[5]
	objno 30-39	: layer = 3		screen[6]
	
	予め表示されているObjのそれぞれのレイヤー番号を設定しなおして使用する
	
		objは普通に@BGや@chr_oldで配置しておけばＯＫ
	
	screen.effect[3]～[6]を使う。本編中で使う場合は他のscreenとの競合注意
	必要であればeffectの数を増やす。
	
	
-----*/

#PROPERTY	$mms_mouse_x
#PROPERTY	$mms_mouse_y

#COMMAND	$multiple_mouse_scroll(int)		//channel
#COMMAND	$multiple_mouse_scroll_init(int)	//channel




