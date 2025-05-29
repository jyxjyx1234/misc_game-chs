// *************************************************************
// シーン回想：定義
// =============================================================
#inc_start

	#define		$pos_x		51		// 項目初期値
	#define		$pos_y		195
	#define		$pos_x_rev	120		// 座標補正値
	#define		$pos_y_rev	88

	#define		@page_pos_x	28

	#define		@シーン数	38
	#define		@項目数		18
	#define		$page_num	g[0098]

	#define		@num_bg		0
	#define		@num_title	1
	#define		@num_rate	2
	#define		@num_link	3
	#define		@num_back	4

	#define		@num_zen	5
	#define		@num_go		6
	#define		@num_page	7		//10-19
	#define		@全頁数		3
	#define		@num_scene	20		//20-39

#inc_end


// *************************************************************
// シーン回想
// =============================================================
#z00

	// 一部ショートカットを禁止
	script.set_key_disable(76)	// ロード画面
	script.set_key_disable(49)	// クイックロード


#start

	// タイトルを設定します。
	//	set_title(シーン回想)

	// 背景の準備
	back.object[@num_bg].create(_gallery_base, 1)
	back.object[@num_title].create(_gallery_title, 1, 18, 87, 1)

	// シーン数の計算、割合：flagsumはない？
	command $flagsum{
		property $sum
		for(l[0] = 0, l[0] < @シーン数, l[0] += 1){	//シーン数は38個
			$sum += @回想(l[0])
		}
		$sum = $sum * 100 / @シーン数
		return($sum)
	}

	// 達成度の表示：桁数、０付加、符号、符号と０数値の詰め、距離あわせ、距離
	back.object[@num_rate].create_number(_number,1, 718, 122)
	back.object[@num_rate].set_number_param(3, 0, 0, 0, 0, 0)
	back.object[@num_rate].set_number($flagsum)


	// ボタンオブジェクトを準備
	back.objbtngroup[0].init

	// ＣＧへのリンク
	back.object[@num_link].create(_scene_to_cg, 1, 22, 147)
	back.object[@num_link].set_button(@num_link, 0, 1, 0)

	// 戻るボタン
	back.object[@num_back].create(_m00_btn_returnmenu, 1, 749, 469)
	back.object[@num_back].set_button(-1, 0, 1, 0)

	// 前後ボタン：ボタンを押したときの処理の場所で動作を分ける
	back.object[@num_zen].create(_scene_zengo, 1, 22, 275, 0)
	back.object[@num_zen].set_button(@num_zen, 0, 1, 0)
	back.object[@num_go].create(_scene_zengo, 1, 765, 275, 2)
	back.object[@num_go].set_button(@num_go, 0, 1, 0)

	// 頁ボタン
	back.object[@num_page].init
	back.object[@num_page].x = 674
	back.object[@num_page].y = 157
	back.object[@num_page].disp = 1
	back.object[@num_page].child.resize(@全頁数)

	// ページボタンの準備
	for(l[0] = 0, l[0] < @全頁数, l[0] += 1){
		back.object[@num_page].child[l[0]].create(_saveload_page, 1, @page_pos_x * l[0], 0)
		back.object[@num_page].child[l[0]].set_button(@num_page + l[0], 0, 6, 0)
		if($page_num == l[0]){
			back.object[@num_page].child[l[0]].patno = l[0] * 3 + 1
		}
		else{
			back.object[@num_page].child[l[0]].patno = l[0] * 3
		}
		back.object[@num_page].child[l[0]].layer = 1
	}

	// シーンボタン：ページ番号の取得、項目の初期表示
	gosub #ready_page


	wipe

	front.objbtngroup[0].start_cancel

	// 選択を開始
	while(1){

		l[5] = front.objbtngroup[0].get_decided_no

		// 以下、ボタンの決定処理
	
		// シーンを選択
		if(@num_scene <= l[5] && l[5] < @num_scene + @項目数){
			$replay($page_num * @項目数 +l[5] - @num_scene)
		}
		// ページボタンを選択
		if(@num_page <= l[5] && l[5] < @num_page + @全頁数){
			// 選択ボタンから、ページナンバーへ置き換える
			$page_num = l[5] - @num_page
			// そのナンバーから選択オブジェクトを更新
			gosub #renew_page
			gosub #ready_page
			// ワイプ
			wipe(0, 200, start_layer = 1, end_layer = 1)
		}
		// 前への移動ボタンを選択
		if(l[5] == @num_zen){
			$page_num -= 1
			if($page_num < 0){
				$page_num = @全頁数 - 1
			}
			gosub #renew_page
			gosub #ready_page
			wipe(0, 200, start_layer = 1, end_layer = 1)
		}
		// 後ろへの移動ボタンを選択
		if(l[5] == @num_go){
			$page_num += 1
			if($page_num >= @全頁数){
				$page_num = 0
			}
			gosub #renew_page
			gosub #ready_page
			wipe(0, 200, start_layer = 1, end_layer = 1)
		}
		// リンクボタンを押した場合
		if(l[5] == @num_link){
			$page_num = 0
			jump(_cg)
		}
		// 選択再開処理
		if(l[5] >= 0){
			front.objbtngroup[0].init
			front.objbtngroup[0].start_cancel
		}
		// 戻るボタン、または右クリック
		if(l[5] == -1){
			$page_num = 0
			// 一部ショートカットを禁止
			script.set_key_enable(76)	// ロード画面
			script.set_key_enable(49)	// クイックロード
			return
		}
		disp
	}
	
	return

// *************************************************************
// ページ０を準備
// =============================================================
#ready_page_00

	$scene(th_ev012, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev013, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev015, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev105, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev107, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev122, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(th_ev125, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev512, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev513, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev516, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev521, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev601, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(th_ev603, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev605, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev611, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev607, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev201, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev205, @num_scene + l[0], l[0], l[1])


	// ボタンを設定します。
//	for(l[0] = 0, l[0] < @項目数, l[0] += 1){
//		$set_button(@num_scene + l[0], @num_scene + l[0])
//	}

	return


// *************************************************************
// ページ１を準備
// =============================================================
#ready_page_01


	$scene(th_ev206, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev211, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev300, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev303, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev306, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev312, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(th_ev403, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev406, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev408, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev701, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev703, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev704, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(th_ev102, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev103, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev709, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev707, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev715, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev716, @num_scene + l[0], l[0], l[1])


	// ボタンを設定します。
//	for(l[0] = 0, l[0] < @項目数, l[0] += 1){
//		$set_button(@num_scene + l[0], @num_scene + l[0])
//	}

	return


// *************************************************************
// ページ２を準備
// =============================================================
#ready_page_02


	$scene(th_ev712, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev800, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(th_ev000, @num_scene + l[0], l[0], l[1])


	// ボタンを設定します。
//	for(l[0] = 0, l[0] < @項目数, l[0] += 1){
//		$set_button(@num_scene + l[0], @num_scene + l[0])
//	}

	return

// *************************************************************
// シーンのオブジェクトを設定する
// =============================================================
command $scene(property $object : str, property $obj_no, property $i, property $j)
{
	if($object == "th_ev000"){
		front.object[$obj_no].disp = 0
	}
	else{
		if (@回想($page_num * @項目数 + $obj_no - @num_scene) == 1)	{
			back.object[$obj_no].create_rect(0,0,102,77, 255,255,255, 128, 1, $pos_x + $pos_x_rev * $i - $pos_x_rev * 6 * $j, $pos_y + $pos_y_rev * $j)
			back.object[$obj_no].child.resize(1)
			back.object[$obj_no].child[0].create($object, 1, 1, 1)
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		else	{
			back.object[$obj_no].create(_gallery_nodata, 1, $pos_x + $pos_x_rev * $i - $pos_x_rev * 6 * $j, $pos_y + $pos_y_rev * $j)
		}
			

	}
}

// *************************************************************
// ボタンを設定する
// =============================================================
command $set_button(property $obj_no, property $btn_no)
{
/*	if (@回想($page_num * @項目数 + $btn_no - @num_scene) == 1)	{
		back.object[$obj_no].set_button($btn_no, 0, 0, 0)
	}
	else	{
		back.object[$obj_no].create(_gallery_nodata, 1)
	}*/
}


// *************************************************************
// シーンオブジェクトの更新
// =============================================================
#ready_page


	if($page_num == 0){
		gosub #ready_page_00
	}
	if($page_num == 1){
		gosub #ready_page_01
	}
	if($page_num == 2){
		gosub #ready_page_02
	}

	return


// *************************************************************
// ページボタン
// =============================================================
#renew_page

	for(l[0] = 0, l[0] < @全頁数, l[0] += 1){
		front.object[@num_page].child[l[0]].create(_saveload_page, 1, @page_pos_x * l[0], 0)
		front.object[@num_page].child[l[0]].set_button(@num_page + l[0], 0, 6, 0)
		if($page_num == l[0]){
			front.object[@num_page].child[l[0]].patno = l[0] * 3 + 1
		}
		else{
			front.object[@num_page].child[l[0]].patno = l[0] * 3
		}
		front.object[@num_page].child[l[0]].layer = 1
	}

	return


// *************************************************************
// 回想を行う
// =============================================================
command $replay(property $replay_no)
{
	// ＢＧＭを終了します。
	bgm.stop(1000)

	// ワイプします。
	wipe(0, 1000)

	// スペースキーでウィンドウを消す機能を許可します。
	syscom.set_hide_mwnd_enable_flag(1)

	// メッセージバックを許可します。
	script.set_msg_back_enable

	// コントロールキーによる早送りを許可します。
	script.set_ctrl_skip_enable

	// セーブ・ロードを禁止します。
	syscom.set_save_enable_flag(0)
	syscom.set_load_enable_flag(0)

	// システムコマンドを有効にします。
	syscom.set_syscom_menu_enable

	// ★回想中にシステムコマンドメニューからタイトルに戻った際、シーン鑑賞トップに戻るための仕掛け　その１
	// グローバルの回想フラグを立てます。
	@回想中 = 1

	// シーン回想を行います。
	switch ($replay_no)	{
		case(00)	farcall("Ａ一日目", 10)
		case(01)	farcall("Ａ一日目", 11)
		case(02)	farcall("Ｂ二日目", 10)
		case(03)	farcall("Ｅ歩美トゥルー", 10)
		case(04)	farcall("Ｅ歩美トゥルー", 11)
		case(05)	farcall("Ｆ歩美グッド", 10)
		case(06)	farcall("Ｆ歩美グッド", 11)
		case(07)	farcall("Ｇ雪乃ルート", 10)
		case(08)	farcall("Ｇ雪乃ルート", 11)
		case(09)	farcall("Ｇ雪乃ルート", 12)
		case(10)	farcall("Ｈ雪乃ＢＡＤ", 10)
		case(11)	farcall("Ｉ今日子×雪乃序盤", 10)
		case(12)	farcall("Ｉ今日子×雪乃序盤", 11)
		case(13)	farcall("Ｊ今日子×雪乃雪乃ＥＮＤ", 10)
		case(14)	farcall("Ｋ今日子×雪乃今日子ＥＮＤ", 10)
		case(15)	farcall("Ｌ今日子×雪乃ハーレムＥＮＤ", 10)
		case(16)	farcall("Ｍ茜ルート序盤", 10)
		case(17)	farcall("Ｎ茜トゥルー", 10)
		case(18)	farcall("Ｎ茜トゥルー", 11)
		case(19)	farcall("Ｏ茜ＢＡＤ", 10)
		case(20)	farcall("Ｐ茜ハーレムＥＮＤ", 10)
		case(21)	farcall("Ｐ茜ハーレムＥＮＤ", 11)
		case(22)	farcall("Ｐ茜ハーレムＥＮＤ", 12)
		case(23)	farcall("Ｐ茜ハーレムＥＮＤ", 13)
		case(24)	farcall("Ｑ悠依ルート", 10)
		case(25)	farcall("Ｑ悠依ルート", 11)
		case(26)	farcall("Ｑ悠依ルート", 12)
		case(27)	farcall("Ｒ凌辱ルート", 10)
		case(28)	farcall("Ｒ凌辱ルート", 11)
		case(29)	farcall("Ｒ凌辱ルート", 12)
		case(30)	farcall("Ｒ凌辱ルート", 13)
		case(31)	farcall("Ｒ凌辱ルート", 14)
		case(32)	farcall("Ｒ凌辱ルート", 15)
		case(33)	farcall("Ｒ凌辱ルート", 16)
		case(34)	farcall("Ｒ凌辱ルート", 17)
		case(35)	farcall("Ｒ凌辱ルート", 18)
		case(36)	farcall("Ｒ凌辱ルート", 19)
		case(37)	farcall("Ｔおまけ", 10)
	}

	// メニューに戻ります。必ず returnmenu で戻って下さい。
	// 回想中に操作した効果、フラグ、状態などを手動で初期化するのは危険です！！
	returnmenu
}












