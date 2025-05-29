// *************************************************************
// 定義
// =============================================================
#INC_START

	#define		@objno		50

#INC_END

#z00


// ボタンオブジェクト選択肢を初期化
// グループ009の選択状態のみを初期化
front.objbtngroup[9].init



// オブジェクト@objno番の子供オブジェクトを準備
//left, top, right, bottom, red, green, blue, transparency, disp
front.object[@objno].create_rect(0,0,126,35,  64,64,64,32,  1)

front.object[@objno].child.resize(4)	//四つ作成

// 親の位置
front.object[@objno].order = 2
front.object[@objno].layer = @objno
front.object[@objno].x = 674
front.object[@objno].y = 510

// 子供オブジェクト、下地、はい、いいえ
front.object[@objno].child[0].create(_alert_base, 1, 0, 0, 0)
front.object[@objno].child[1].create(_alert_btn_yes, 1, 3,17, 0)
front.object[@objno].child[2].create(_alert_btn_no, 1, 42,17, 0)

// ボタンの準備：ボタン番号、グループ番号、動作番号、効果音番号
front.object[@objno].child[1].set_button(0, 9, 1, 0)
front.object[@objno].child[2].set_button(1, 9, 1, 0)


front.object[@objno].x_eve.set(674, 300, 0, 2, start=800)

// ボタンの選択開始
l[0] = front.objbtngroup[9].sel_cancel


// 選択結果
switch(l[0]){
	case(-1) 
		l[0] = -1
	case(0) 
		l[0] = 1
	case(1) 
		l[0] = -1
}



if(l[0] == -1){
		front.object[@objno].x_eve.set(800, 300, 0, 2, start=674)
}

return(l[0])
