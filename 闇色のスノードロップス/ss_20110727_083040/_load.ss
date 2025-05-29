
// *************************************************************
// セーブメニュー：定義
// =============================================================
#inc_start

	#define		@確認チェック		g[0992]
	#define		@最後のページ		g[0991]
	#define		@削除確認			g[0995]
	#define		@btn_cancel			-1
	// 決定されたボタンを判別するための補正値
	#define		@btn_save			10
	#define		@btn_page			20
	#define		@btn_check			40
	#define		@btn_del_check		50
	#define		@btn_delete			60

	#define		@obj_base			1
	#define		@obj_bg				2
	#define		@obj_title			3
	#define		@obj_cancel			4

	#define		@obj_alert			90

	#define		@save_cnt			10
	#property	$save_no
	#property	$save_new_no		// 最新セーブデータ番号
	#property	$save_page_no		// その番号の十の位（一桁）
	#property	$save_change_no

	#property	$save_memo_no

	#property	$pos_x
	#property	$pos_y
	#property	$pos_x_rev
	#property	$pos_y_rev
	#property	$pos_x_p_rev


#macro		@get_save_info(@save_no, @year, @month, @day, @weekday, @hour, @minute, @second, @millisecond, @title)
				@year = syscom.get_save_year(@save_no)
				@month = syscom.get_save_month(@save_no)
				@day = syscom.get_save_day(@save_no)
				@weekday = syscom.get_save_weekday(@save_no)
				@hour = syscom.get_save_hour(@save_no)
				@minute = syscom.get_save_minute(@save_no)
				@second = syscom.get_save_second(@save_no)
				@millisecond = syscom.get_save_millisecond(@save_no)
				@title = syscom.get_save_title(@save_no)

#inc_end

// *************************************************************
// セーブメニュー
// =============================================================
//		ウィンドウボタンなどから直接呼び出す場合はここを呼び出します。
// =============================================================
#z00

	$excall_ready		// システムコールを準備
	gosub #z01			// 本体へ
	$excall_wipe(1)		// ワイプして終了
	$excall_free		// システムコールを解放
	return				// システムコールから抜ける

// *************************************************************
// セーブメニュー
// =============================================================
//		他のＥＸコールから呼び出す場合はここを呼び出します。
// =============================================================
#z01

	// 初期化
	gosub #init

	// ワイプ
	$excall_wipe(0)

	// ボタングループ選択開始
	excall.front.objbtngroup[0].start_cancel

	// 選択開始
	while (1)	{

		// 決定されたボタンを取得（補正値込み：セーブ番号＋ボタン種類補正値）
		l[2] = excall.front.objbtngroup[0].get_decided_no


		// ボタンの決定処理

		// 上書き確認→ロード確認
		if(l[2] == @btn_check){
			if(@確認チェック){
				@確認チェック = 0
			}
			else{
				@確認チェック = 1
			}
		$update_alert_check(@確認チェック)
		}

		// 削除確認
		if(l[2] == @btn_del_check){
			if(@削除確認){
				@削除確認 = 0
			}
			else{
				@削除確認 = 1
			}
		$update_alert_del_check(@削除確認)
		}

		// ページボタン
		if (@btn_page <= l[2] && l[2] < @btn_page + 10)	{
			@最後のページ = l[2] - @btn_page
			$renew_page(l[2] - @btn_page)
			$update_save_obj(l[2] - @btn_page)
		}

		// セーブボタン：
		if (@btn_save <= l[2] && l[2] < @btn_save + @save_cnt)	{
			if(syscom.get_save_exist($save_page_no * 10 + l[2] - @btn_save) == 1){
				if(@確認チェック == 0){
					l[1] = $save_alert(1)	// ロード確認
					if(l[1] == 0){
						syscom.load($save_page_no * 10 + l[2] - @btn_save, 0, 1, 1)
						$update_save_obj(-1)
					}
				}
				else{
					syscom.load($save_page_no * 10  + l[2] - @btn_save, 0, 1, 1)
					$update_save_obj(-1)
				}
			}
		}
		// 削除ボタン
		if (@btn_delete <= l[2] && l[2] < @btn_delete + @save_cnt)	{
			if(@削除確認 == 0){ l[1] = $save_alert(2) }
			if(l[1] == 0){
				syscom.delete_save($save_page_no * 10 + l[2] - @btn_delete)
				$update_save_obj(-2)	// セーブ文字列を更新
			}
		}

		// 選択再開処理
		if (l[2] >= 0)	{
			excall.front.objbtngroup[0].init
			excall.front.objbtngroup[0].start_cancel
		}
		// キャンセル処理
		if (l[2] == -1)	{
			editbox[0].destroy		// エディットボックスを破壊
			break
		}

		disp
	}

	return

// *************************************************************
// セーブメニュー：初期化
// =============================================================
#init

	$save_change_no = -1
	$save_memo_no = -1

	// 最新のセーブ番号を求める
	$save_new_no = syscom.get_save_new_no

	// 最新のセーブのページを出す
	$save_page_no = $save_new_no / 10

	// やっぱり最後に開いたページにする
	$save_page_no = @最後のページ

	// ボタングループを初期化
	excall.back.objbtngroup[0].init

	// エディットボックス初期化
	editbox.clear_input

	// オブジェクトを準備：セーブのアイコン、ページ部分の作成

	// 背景
	excall.back.object[@obj_base].create_rect(0, 0, 800, 600, 0, 0, 0, 128, 1)
	excall.back.object[@obj_bg].create(_saveload_bg, 1)

	// セーブタイトル
	excall.back.object[@obj_title].create(_saveload_title, 1, 0, 25, 1)

	// =============================================================
	// キャンセル：ボタン
	excall.back.object[@obj_cancel].create(_m00_btn_returnmenu, 1, 735, 30)
	excall.back.object[@obj_cancel].set_string_param(20, 0, 0, 0, 0, 1, -1)
	excall.back.object[@obj_cancel].set_button(@btn_cancel, 0, 1, 0)

	// =============================================================
	// チェック
	excall.back.object[@btn_check].create(_saveload_check, 1, 521, 575, @確認チェック +2)
	excall.back.object[@btn_check].set_button(@btn_check, 0, 0, 0 +2)

	excall.back.object[@btn_del_check].create(_saveload_check, 1, 664, 575, @削除確認 +4)
	excall.back.object[@btn_del_check].set_button(@btn_del_check, 0, 0, 0)
	// =============================================================
	// 補正値
	$pos_x_p_rev = 28

	// =============================================================
	// ページ
	excall.back.object[@btn_page].init
	excall.back.object[@btn_page].x = 447
	excall.back.object[@btn_page].y = 34
	excall.back.object[@btn_page].disp = 1
	excall.back.object[@btn_page].child.resize(10)

	for (l[0] = 0, l[0] < 10, l[0] += 1){
		excall.back.object[@btn_page].child[l[0]].create(_saveload_page, 1, $pos_x_p_rev * l[0], 0)
		excall.back.object[@btn_page].child[l[0]].set_button(@btn_page + l[0], 0, 6, 0)
		if($save_page_no == l[0]){
			excall.back.object[@btn_page].child[l[0]].patno = l[0] * 3 + 1
		}
		else{
			excall.back.object[@btn_page].child[l[0]].patno = l[0] * 3
		}
	}


	// セーブボタンの初期値
	$pos_x = 30
	$pos_y = 70
	// その補正値
	$pos_x_rev = 0
	$pos_y_rev = 100


	// =============================================================
	// セーブ
	for (l[0] = 0, l[0] < @save_cnt, l[0] += 1)	{

		

		if(l[0] == 5){
			$pos_x += 384
			$pos_y -= l[0] * $pos_y_rev
		}

		// セーブボタンの土台を準備：親オブジェクト
		excall.back.object[@btn_save + l[0] % 10].create(_saveload_base, 1, $pos_x , $pos_y +  $pos_y_rev * l[0])
		excall.back.object[@btn_save + l[0] % 10].set_button(@btn_save + l[0], 0, 1, 0)

		// 子供オブジェクトを作成
		excall.back.object[@btn_save + l[0] % 10].child.resize(5) // サムネ、日付、テキスト、削除


		// ボタンに表示させる子供オブジェクト
		// サムネイルの表示
		if(syscom.get_save_exist($save_page_no * 10 + l[0]) != 0){
			excall.back.object[@btn_save + l[0]].child[0].create_save_thumb($save_page_no * 10 + l[0], 1, 12, 7)
		}
		// 時間
		excall.back.object[@btn_save + l[0]].child[1].create_string($get_save_time($save_page_no * 10 + l[0]), 1, 118, 6)
		excall.back.object[@btn_save + l[0]].child[1].set_string_param(15, 0, 5, 16, 0, 1, -1)

		// メッセージ
		excall.back.object[@btn_save + l[0]].child[2].create_string($get_save_mess($save_page_no * 10 + l[0]), 1, 120, 27)
		excall.back.object[@btn_save + l[0]].child[2].set_string_param(14, 0, 5, 16, 0, 1, -1)

		// new
		if($save_new_no == $save_page_no * 10 + l[0]){
			excall.back.object[@btn_save + l[0]].child[3].create(_saveload_new, 1, -2, -2)
		}

		// delete
		if(syscom.get_save_exist($save_page_no * 10 + l[0]) != 0){
		excall.back.object[@btn_save + l[0]].child[4].create(_saveload_del, 1, 336, 6)
		excall.back.object[@btn_save + l[0]].child[4].set_button(@btn_delete + l[0], 0, 1, 0)
		}

	}

	// =============================================================


	return

// *************************************************************
// セーブメニュー：セーブ文字列を取得
// =============================================================
command $get_save_time(property $save_no) : str
{

//	k[0] +=  math.tostr($save_no)

	// セーブ情報を加える
	if (syscom.get_save_exist($save_no))	{
		@get_save_info($save_no, l[20], l[21], l[22], l[23], l[24], l[25], l[26], l[27], k[1])
		k[0] += " " + math.tostr_zero(l[20], 4) + "/" + math.tostr_zero(l[21], 2) + "/" + math.tostr_zero(l[22], 2)
		k[0] += "（" + $get_weekday_str(l[23]) + "）"
		k[0] += " " + math.tostr_zero(l[24], 2) + ":" + math.tostr_zero(l[25], 2) + ":" + math.tostr_zero(l[26], 2)// + ":" + math.tostr_zero(l[27], 3)
//		if ($save_no == $save_new_no)	{
//			k[0] += "(New!)"
//		}
		k[0] += " " + k[1]
	}


	return(k[0])
}

// *************************************************************
// セーブメニュー：曜日を文字列に変換
// =============================================================
command $get_weekday_str(property $weekday) : str
{
	switch ($weekday)	{
		case (0)	return("日")
		case (1)	return("月")
		case (2)	return("火")
		case (3)	return("水")
		case (4)	return("木")
		case (5)	return("金")
		case (6)	return("土")
	}
}


// *************************************************************
// セーブメニュー：メッセージを一定文字数以内に
// =============================================================
command $get_save_mess(property $save_no) : str
{
	
	k[0] = syscom.get_save_message($save_no)

	k[0] = k[0].left(48)

	return(k[0])

}

// *************************************************************
// セーブメニュー：セーブオブジェクトを更新
// =============================================================
command $update_save_obj(property $no) : int
{
	$save_new_no = syscom.get_save_new_no

	if($no == -2){
		l[1] = $save_page_no
	}
	elseif($no != -1){
		l[1] = $no
	}
	else{
		l[1] = $save_new_no / 10
	}

	for(l[0] = 0, l[0] <@save_cnt, l[0] += 1){

		if(syscom.get_save_exist(l[1] * 10 + l[0])){
			excall.front.object[@btn_save + l[0]].child[0].create_save_thumb(l[1] * 10 + l[0], 1, 12, 7)
			excall.front.object[@btn_save + l[0]].child[1].create_string($get_save_time(l[1] * 10 + l[0]), 1, 118, 6)
			excall.front.object[@btn_save + l[0]].child[1].set_string_param(15, 0, 5, 16, 0, 1, -1)
			excall.front.object[@btn_save + l[0]].child[2].create_string($get_save_mess(l[1] * 10 + l[0]), 1, 120, 27)
			excall.front.object[@btn_save + l[0]].child[2].set_string_param(14, 0, 5, 16, 0, 1, -1)
			excall.front.object[@btn_save + l[0]].child[4].create(_saveload_del, 1, 336, 6)
			excall.front.object[@btn_save + l[0]].child[4].set_button(@btn_delete + l[0], 0, 1, 0)
			if($save_new_no == $save_page_no * 10 + l[0]){
				excall.front.object[@btn_save + l[0]].child[3].create(_saveload_new, 1, -2, -2)
			}
			else{
				excall.front.object[@btn_save + l[0]].child[3].free
			}
		}
		else{
			excall.front.object[@btn_save + l[0]].child[0].free
			excall.front.object[@btn_save + l[0]].child[1].free
			excall.front.object[@btn_save + l[0]].child[2].free
			excall.front.object[@btn_save + l[0]].child[3].free
			excall.front.object[@btn_save + l[0]].child[4].free
		}
	}
}	


// *************************************************************
// ページメニュー：ページオブジェクトを更新
// =============================================================
command $renew_page(property $page) : int
{

	$save_page_no = $page

	for (l[0] = 0, l[0] < 10, l[0] += 1){
		excall.front.object[@btn_page].child[l[0]].create(_saveload_page, 1, $pos_x_p_rev * l[0], 0)
		excall.front.object[@btn_page].child[l[0]].set_button(@btn_page + l[0], 0, 6, 0)
		if($page == l[0]){
			excall.front.object[@btn_page].child[l[0]].patno = l[0] * 3 + 1
		}
		else{
			excall.front.object[@btn_page].child[l[0]].patno = l[0] * 3
		}
	}
}

// *************************************************************
// ページメニュー：確認アラート
// =============================================================
command $save_alert(property $att_no) :int
{
	excall.front.objbtngroup[1].init

	excall.front.object[@obj_alert].create(_saveload_alert, 1, 0, 275, $att_no)
	excall.front.object[@obj_alert].child.resize(2)

	excall.front.object[@obj_alert].child[0].create(_alert_btn_yes, 1, 362, 27, 0)
	excall.front.object[@obj_alert].child[1].create(_alert_btn_no, 1, 405, 27, 0)

	excall.front.object[@obj_alert].child[0].set_button(0, 1, 1, 0)
	excall.front.object[@obj_alert].child[1].set_button(1, 1, 1, 0)

	l[0] = excall.front.objbtngroup[1].sel_cancel

	switch(l[0]){
		case(-1)	//cancel
		case(0)		//yes
		case(1)		//no
	}


	excall.front.object[@obj_alert].init

	return(l[0])

}


// *************************************************************
// ページメニュー：確認チェックの更新
// =============================================================
command $update_alert_check(property $check) : int
{
	// ボタンを押した後に、数値を入れ替えているから逆に置く
//	if($check == 0){
		excall.front.object[@btn_check].create(_saveload_check, 1, 521, 575, @確認チェック +2)
		excall.front.object[@btn_check].set_button(@btn_check, 0, 0, 0 +2)
//	}
//	else{
//		excall.front.object[@btn_check].create(_saveload_check, 1, 638, 575, 1)
//		excall.front.object[@btn_check].set_button(@btn_check, 0, 0, 0)
//	}
}

command $update_alert_del_check(property $check) : int
{
		excall.front.object[@btn_del_check].create(_saveload_check,1, 664, 575, @削除確認 + 4)
		excall.front.object[@btn_del_check].set_button(@btn_del_check, 0, 0, 0)
}