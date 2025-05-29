// *************************************************************
// ギャラリー：定義
// =============================================================
#inc_start

	#define		$pos_x		50		// 項目初期値
	#define		$pos_y		194
	#define		$pos_x_rev	120		// 座標補正値
	#define		$pos_y_rev	88

	#define		@page_pos_x	28

	#define		@シーン数	133
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
	#define		@全頁数		8
	#define		@num_scene	20		//20-39

	#define		@mojiretsu	100

#inc_end


// *************************************************************
// シーン回想
// =============================================================
#z00

	// 一部ショートカットを禁止
	script.set_key_disable(76)	// ロード画面
	script.set_key_disable(49)	// クイックロード


// ちょっとした細工
	s[00] = "a"
	s[01] = "b"
	s[02] = "c"
	s[03] = "d"
	s[04] = "e"
	s[05] = "f"
	s[06] = "g"
	s[07] = "h"
	s[08] = "i"
	s[09] = "j"
	s[10] = "k"
	s[11] = "l"
	s[12] = "m"
	s[13] = "n"
	s[14] = "o"
	s[15] = "p"
	s[16] = "q"
	s[17] = "r"
	s[18] = "s"
	s[19] = "t"
	s[20] = "u"
	s[21] = "v"
	s[22] = "w"
	s[23] = "x"
	s[24] = "y"
	s[25] = "z"

#start

	// タイトルを設定します。
	//	set_title(シーン回想)

	// 背景の準備
	back.object[@num_bg].create(_gallery_base, 1)

	// タイトルロゴ
	back.object[@num_title].create(_gallery_title, 1, 18, 87)


	// 達成度の表示：桁数、０付加、符号、符号と０数値の詰め、距離あわせ、距離
	back.object[@num_rate].create_number(_number,1, 718, 122)
	back.object[@num_rate].set_number_param(3, 0, 0, 0, 0, 0)
	back.object[@num_rate].set_number(cgtable.get_look_percent)


	// ボタンオブジェクトを準備
	back.objbtngroup[0].init

	// ＣＧへのリンク
	back.object[@num_link].create(_cg_to_scene, 1, 22, 147)
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
	back.object[@num_page].x = 534
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

#sel

	l[5] = front.objbtngroup[0].sel_cancel

	// 以下、ボタンの決定処理

	// シーンを選択
	if(@num_scene <= l[5] && l[5] < @num_scene + @項目数){
		$replay($page_num * @項目数 +l[5] - @num_scene)
		goto #start
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
		jump(_scene)
	}
/*
	// 選択再開処理
	if(l[5] >= 0){
		front.objbtngroup[0].init
		front.objbtngroup[0].start_cancel
	}
*/
	// 戻るボタン、または右クリック
	if(l[5] == -1){
		$page_num = 0
	// 一部ショートカットを禁止
	script.set_key_enable(76)	// ロード画面
	script.set_key_enable(49)	// クイックロード

		return
	}

goto #sel

// *************************************************************
// ページ０を準備
// =============================================================
#ready_page_00

	$scene(ev001, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev002, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev003, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev004, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev005, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev006, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev007, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev008, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev009, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev010, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev011, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev012, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev013, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev014, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev015, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev017, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev019, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev020, @num_scene + l[0], l[0], l[1])


	return


// *************************************************************
// ページ１を準備
// =============================================================
#ready_page_01


	$scene(ev021, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev022, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev023, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev100, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev101, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev102, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev103, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev105, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev106, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev107, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev108, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev109, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev110, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev111, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev120, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev122, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev123, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev124, @num_scene + l[0], l[0], l[1])


	return


// *************************************************************
// ページ２を準備
// =============================================================
#ready_page_02


	$scene(ev125, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev126, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev127, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev128, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev129, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev130, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev131, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev200, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev201, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev202, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev203, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev205, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev206, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev207, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev208, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev209, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev210, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev211, @num_scene + l[0], l[0], l[1])


	return

// *************************************************************
// ページ３を準備
// =============================================================
#ready_page_03

	$scene(ev212, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev300, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev301, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev302, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev303, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev304, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev305, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev306, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev307, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev308, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev309, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev310, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev311, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev312, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev400, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev402, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev403, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev404, @num_scene + l[0], l[0], l[1])

return

// *************************************************************
// ページ４を準備
// =============================================================
#ready_page_04

	$scene(ev405, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev406, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev407, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev408, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev409, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev410, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev411, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev412, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev413, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev414, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev415, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev416, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev430, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev510, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev511, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev512, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev513, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev514, @num_scene + l[0], l[0], l[1])

return

// *************************************************************
// ページ５を準備
// =============================================================
#ready_page_05

	$scene(ev515, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev516, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev517, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev518, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev520, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev521, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev522, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev523, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev524, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev601, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev602, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev603, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev604, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev605, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev606, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev607, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev608, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev609, @num_scene + l[0], l[0], l[1])

return

// *************************************************************
// ページ６を準備
// =============================================================
#ready_page_06

	$scene(ev610, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev611, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev700, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev701, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev702, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev703, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev704, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev705, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev706, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev707, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev708, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev709, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev710, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev711, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev712, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev713, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev715, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev716, @num_scene + l[0], l[0], l[1])

return

// *************************************************************
// ページ７を準備
// =============================================================
#ready_page_07

	$scene(ev717, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev800, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev801, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev911, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev912, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev913, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev914, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev915, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev916, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
l[1] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])
l[0] += 1
	$scene(ev000, @num_scene + l[0], l[0], l[1])


return

// *************************************************************
// シーンのオブジェクトを設定、ボタンの付加
// =============================================================
command $scene(property $object : str, property $obj_no, property $i, property $j)
{
	if($object == "ev000"){
		front.object[$obj_no].disp = 0
	}
	else{
		// まずは枠
		back.object[$obj_no].create_rect(0,0,102,77, 255,255,255, 128, 1, $pos_x + $pos_x_rev * $i - $pos_x_rev * 6 * $j, $pos_y + $pos_y_rev * $j)
		// まずはオブジェクト
		k[0] += "th_" + $object
		back.object[$obj_no].child.resize(1)
		back.object[$obj_no].child[0].create(k[0], 1, 1, 1)
	
		// 次にボタン
		// その下準備
		k[1] = $object + "a"
		k[2] = $object + "b"
		k[3] = $object + "c"
		k[4] = $object + "e"
		k[5] = $object + "f"
		k[6] = $object + "m"
		k[7] = $object + "u"
		// 判定
		if(cgtable.get_look_by_name(k[1])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		elseif(cgtable.get_look_by_name(k[2])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		elseif(cgtable.get_look_by_name(k[3])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		elseif(cgtable.get_look_by_name(k[4])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		elseif(cgtable.get_look_by_name(k[5])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		elseif(cgtable.get_look_by_name(k[6])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		elseif(cgtable.get_look_by_name(k[7])== 1){
			back.object[$obj_no].child[0].set_button($obj_no, 0, 0, 0)
		}
		else{
			back.object[$obj_no].create(_gallery_nodata, 1, $pos_x + $pos_x_rev * $i - $pos_x_rev * 6 * $j, $pos_y + $pos_y_rev * $j)
		}
	}
}

// *************************************************************
// シーンオブジェクトの更新
// =============================================================
#ready_page


	if($page_num == 0){
		gosub #ready_page_00
	}
	elseif($page_num == 1){
		gosub #ready_page_01
	}
	elseif($page_num == 2){
		gosub #ready_page_02
	}
	elseif($page_num == 3){
		gosub #ready_page_03
	}
	elseif($page_num == 4){
		gosub #ready_page_04
	}
	elseif($page_num == 5){
		gosub #ready_page_05
	}
	elseif($page_num == 6){
		gosub #ready_page_06
	}
	elseif($page_num == 7){
		gosub #ready_page_07
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

	switch ($replay_no)	{
		case(000)	$pre_cg(ev001, "c")//ファイル名：差分末尾
		case(001)	$pre_cg(ev002, "c")
		case(002)	$pre_cg(ev003, "e")
		case(003)	$pre_cg(ev004, "a")
		case(004)	$pre_cg(ev005, "m")
		case(005)	$pre_cg(ev006, "b")
		case(006)	$pre_cg(ev007, "a")
		case(007)	$pre_cg(ev008, "h")
		case(008)	$pre_cg(ev009, "a")
		case(009)	$pre_cg(ev010, "a")
		case(010)	$pre_cg(ev011, "a")
		case(011)	$pre_cg(ev012, "c")
		case(012)	$pre_cg(ev013, "b")
		case(013)	$pre_cg(ev014, "b")
		case(014)	$pre_cg(ev015, "a")
		case(015)	$pre_cg(ev017, "e")
		case(016)	$pre_cg(ev019, "b")
		case(017)	$pre_cg(ev020, "a")
		case(018)	$pre_cg(ev021, "u")
		case(019)	$pre_cg(ev022, "a")
		case(020)	$pre_cg(ev023, "a")
		case(021)	$pre_cg(ev100, "a")
		case(022)	$pre_cg(ev101, "h")
		case(023)	$pre_cg(ev102, "a")
		case(024)	$pre_cg(ev103, "a")
		case(025)	$pre_cg(ev105, "k")
		case(026)	$pre_cg(ev106, "g")
		case(027)	$pre_cg(ev107, "n")
		case(028)	$pre_cg(ev108, "a")
		case(029)	$pre_cg(ev109, "b")
		case(030)	$pre_cg(ev110, "c")
		case(031)	$pre_cg(ev111, "a")
		case(032)	$pre_cg(ev120, "f")
		case(033)	$pre_cg(ev122, "i")
		case(034)	$pre_cg(ev123, "g")
		case(035)	$pre_cg(ev124, "d")
		case(036)	$pre_cg(ev125, "b")
		case(037)	$pre_cg(ev126, "d")
		case(038)	$pre_cg(ev127, "f")
		case(039)	$pre_cg(ev128, "b")
		case(040)	$pre_cg(ev129, "a")
		case(041)	$pre_cg(ev130, "a")
		case(042)	$pre_cg(ev131, "h")
		case(043)	$pre_cg(ev200, "h")
		case(044)	$pre_cg(ev201, "e")
		case(045)	$pre_cg(ev202, "f")
		case(046)	$pre_cg(ev203, "a")
		case(047)	$pre_cg(ev205, "b")
		case(048)	$pre_cg(ev206, "c")
		case(049)	$pre_cg(ev207, "a")
		case(050)	$pre_cg(ev208, "a")
		case(051)	$pre_cg(ev209, "h")
		case(052)	$pre_cg(ev210, "a")
		case(053)	$pre_cg(ev211, "c")
		case(054)	$pre_cg(ev212, "a")
		case(055)	$pre_cg(ev300, "c")
		case(056)	$pre_cg(ev301, "g")
		case(057)	$pre_cg(ev302, "b")
		case(058)	$pre_cg(ev303, "d")
		case(059)	$pre_cg(ev304, "f")
		case(060)	$pre_cg(ev305, "e")
		case(061)	$pre_cg(ev306, "a")
		case(062)	$pre_cg(ev307, "d")
		case(063)	$pre_cg(ev308, "c")
		case(064)	$pre_cg(ev309, "a")
		case(065)	$pre_cg(ev310, "b")
		case(066)	$pre_cg(ev311, "h")
		case(067)	$pre_cg(ev312, "o")
		case(068)	$pre_cg(ev400, "a")
		case(069)	$pre_cg(ev402, "a")
		case(070)	$pre_cg(ev403, "b")
		case(071)	$pre_cg(ev404, "a")
		case(072)	$pre_cg(ev405, "b")
		case(073)	$pre_cg(ev406, "d")
		case(074)	$pre_cg(ev407, "b")
		case(075)	$pre_cg(ev408, "a")
		case(076)	$pre_cg(ev409, "a")
		case(077)	$pre_cg(ev410, "h")
		case(078)	$pre_cg(ev411, "a")
		case(079)	$pre_cg(ev412, "c")
		case(080)	$pre_cg(ev413, "a")
		case(081)	$pre_cg(ev414, "i")
		case(082)	$pre_cg(ev415, "b")
		case(083)	$pre_cg(ev416, "a")
		case(084)	$pre_cg(ev430, "f")
		case(085)	$pre_cg(ev510, "a")
		case(086)	$pre_cg(ev511, "a")
		case(087)	$pre_cg(ev512, "g")
		case(088)	$pre_cg(ev513, "e")
		case(089)	$pre_cg(ev514, "a")
		case(090)	$pre_cg(ev515, "a")
		case(091)	$pre_cg(ev516, "a")
		case(092)	$pre_cg(ev517, "d")
		case(093)	$pre_cg(ev518, "a")
		case(094)	$pre_cg(ev520, "a")
		case(095)	$pre_cg(ev521, "b")
		case(096)	$pre_cg(ev522, "g")
		case(097)	$pre_cg(ev523, "h")
		case(098)	$pre_cg(ev524, "a")
		case(099)	$pre_cg(ev601, "g")
		case(100)	$pre_cg(ev602, "j")
		case(101)	$pre_cg(ev603, "o")
		case(102)	$pre_cg(ev604, "j")
		case(103)	$pre_cg(ev605, "b")
		case(104)	$pre_cg(ev606, "g")
		case(105)	$pre_cg(ev607, "f")
		case(106)	$pre_cg(ev608, "h")
		case(107)	$pre_cg(ev609, "j")
		case(108)	$pre_cg(ev610, "a")
		case(109)	$pre_cg(ev611, "f")
		case(110)	$pre_cg(ev700, "b")
		case(111)	$pre_cg(ev701, "h")
		case(112)	$pre_cg(ev702, "c")
		case(113)	$pre_cg(ev703, "f")
		case(114)	$pre_cg(ev704, "b")
		case(115)	$pre_cg(ev705, "f")
		case(116)	$pre_cg(ev706, "d")
		case(117)	$pre_cg(ev707, "a")
		case(118)	$pre_cg(ev708, "b")
		case(119)	$pre_cg(ev709, "b")
		case(120)	$pre_cg(ev710, "b")
		case(121)	$pre_cg(ev711, "m")
		case(122)	$pre_cg(ev712, "g")
		case(123)	$pre_cg(ev713, "f")
		case(124)	$pre_cg(ev715, "d")
		case(125)	$pre_cg(ev716, "b")
		case(126)	$pre_cg(ev717, "h")
		case(127)	$pre_cg(ev800, "i")
		case(128)	$pre_cg(ev801, "n")
		case(129)	$pre_cg(ev911, "a")
		case(130)	$pre_cg(ev912, "a")
		case(131)	$pre_cg(ev913, "a")
		case(132)	$pre_cg(ev914, "a")
		case(133)	$pre_cg(ev915, "a")
		case(134)	$pre_cg(ev916, "a")



	}
	#disp_end

	return
}


// *************************************************************
// ＣＧを表示する準備
// =============================================================
command $pre_cg(property $cg : str, property $sa : str)
{
	property $i

	for(l[0] = 0, l[0] < 26, l[0] += 1){
		if(s[l[0]] == $sa){
			$i = l[0]
			break
		}
	}
	
	$i += 1

	for(l[0] = 0, l[0] < $i, l[0] += 1){
		k[l[0]] = $cg + s[l[0]]
		if($disp_cg(k[l[0]]) == 0){
			goto #disp_end
		}
	}

}

// *************************************************************
// ＣＧを表示する
// =============================================================
command $disp_cg(property $cg : str)
{
	// ＣＧを見ていない場合は次に進みます。
	if (cgtable.get_look_by_name($cg) == 0 ||cgtable.get_look_by_name($cg) == -1)	{
		return(1)
	}

	// 表示するＣＧを準備します。
	back.object[10].create($cg, 1)

	// ワイプします。
	wipe

	// クリックすると次に進みます。
	input.clear
	while (1)	{
		// 左クリックの場合１を返し、次のＣＧに進みます。
		if (input.decide.on_down)	{
			return(1)
		}
		// 右クリックの場合０を返し、サムネイルの選択に戻ります。
		if (input.cancel.on_down)	{
			return(0)
		}
		disp
	}
}








