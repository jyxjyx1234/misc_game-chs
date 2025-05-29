// *************************************************************
// 定義
// =============================================================
#INC_START

	#define		@objno		50

#INC_END


// *************************************************************
// アラート
// =============================================================
//		ウィンドウボタンなどから直接呼び出す場合はここを呼び出します。
// =============================================================
#z00

	$mwnd_btn_call_ready		// システムコールを準備
	l[0] = gosub #z01			// 本体へ
//	$excall_wipe(1)		// ワイプして終了
	$mwnd_btn_call_free		// システムコールを解放

	return(l[0])				// システムコールから抜ける


// *************************************************************
// 準備
// =============================================================
#z01

// ボタンオブジェクト選択肢を初期化
// グループ009の選択状態のみを初期化
excall.front.objbtngroup[9].init



// オブジェクト@objno番に、念のための矩形背景
//left, top, right, bottom, red, green, blue, transparency, disp
excall.front.object[@objno].create_rect(0,0,800,600,  64,64,64,32,  1)

excall.front.object[@objno].child.resize(1)	//四つ作成

// 親の位置
//excall.front.object[@objno].order = 2
//excall.front.object[@objno].layer = @objno
//excall.front.object[@objno].x = 674
//excall.front.object[@objno].y = 525


// 子供オブジェクト、下地、はい、いいえ
excall.front.object[@objno].child[0].create(_return_alert, 1, 0, 275)

excall.front.object[@objno].child[0].child.resize(2)

excall.front.object[@objno].child[0].child[0].create(_alert_btn_yes, 1, 362,27, 0)
excall.front.object[@objno].child[0].child[1].create(_alert_btn_no, 1, 405,27, 0)

// ボタンの準備：ボタン番号、グループ番号、動作番号、効果音番号
excall.front.object[@objno].child[0].child[0].set_button(0, 9, 1, 0)
excall.front.object[@objno].child[0].child[1].set_button(1, 9, 1, 0)


//excall.front.object[@objno].x_eve.set(674, 300, 0, 2, start=800)

// ボタンの選択開始
l[0] = excall.front.objbtngroup[9].sel_cancel


// 選択結果
switch(l[0]){
	case(-1) 
		l[0] = -1
	case(0) 
		l[0] = 1
	case(1) 
		l[0] = -1
}

/*
if(l[0] == -1){
		excall.front.object[@objno].x_eve.set(800, 300, 0, 2, start=674)
		timewait(300)
}
*/


return(l[0])

