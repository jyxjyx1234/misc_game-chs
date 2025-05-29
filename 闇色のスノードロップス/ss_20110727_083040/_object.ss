
// *************************************************************
// 定義：シナリオ中のコマンド
// =============================================================
//		シナリオ中、演出用コマンドの定義です
// =============================================================
//
// =============================================================



// ワイプする
command $wipe(property $wipe_type)
{
	property $wipe_wait

	// メッセージウィンドウを閉じる
if(script.check_skip == 0){
	if($bg_mode == 0){
	$wipe_wait = 1
	close
	}
	else{
	$wipe_wait = 0
	$bg_mode = 0
	}
}

	// ワイプする
	switch ($wipe_type)	{
		case(00)	wipe(type=0, time=250, wait = $wipe_wait)		// 通常のワイプ
		case(01)	wipe(type=0, time=750)		// ゆっくりワイプ
		case(02)	wipe(type=1)				// 一瞬でワイプ
		case(03)	wipe(100, 500, 0, [0, 2])	// 左からワイプ
		// 表示：type,time,mode,[fade_effect,direction,px]
		case(04)	wipe(101, 500, 0, [0, 2, 32])	// 左からスライス
		case(10)	wipe(043, 1000, 0, [6, 1, 1])	
		case(50)	wipe(50, 500, 0, [0, 0])		// シミ
		case(100)	wipe(000, 150, 1, [0, 0, 0, 0])	

		//演出で必要な分を追加すること
		//case(999)	ワイプしない番号
	}
}

// 背景を指定し、ワイプする
command $bg(property $wipe_type, property $bg : str)
{
	// 背景をオブジェクト０番に読み込む
	back.object[0].create($bg, 1)
	back.object[0].layer = 0

	// ワイプコピーフラグを立てる
	// ワイプしても消えないようになる
	back.object[0].wipe_copy = 1

	// ワイプする
	$wipe($wipe_type)
}

// キャラを０人指定し、ワイプする
command $char0(property $wipe_type)
{
	// ワイプする
	$wipe($wipe_type)
}

// キャラを１人指定し、ワイプする
command $char1(property $wipe_type, property $c1 : str)
{

	// キャラをオブジェクト１番に読み込む
	back.object[1].create($c1, 1, @bstc, 0)
	back.object[1].layer = 2

	gosub(1, $c1) #ayu_check

	// ワイプする
	$wipe($wipe_type)
}

// キャラを２人指定し、ワイプする
command $char2(property $wipe_type, property $c1 : str, property $c2 : str)
{

	// キャラをオブジェクト１番に読み込み、左に配置する
	back.object[1].create($c1, 1, @bstl, 0)
	back.object[1].layer = 2

	// キャラをオブジェクト２番に読み込み、右に配置する
	back.object[2].create($c2, 1, @bstr, 0)
	back.object[2].layer = 2

	gosub(2, $c1, $c2) #ayu_check

	// ワイプする
	$wipe($wipe_type)
}

// キャラを３人指定し、ワイプする
command $char3(property $wipe_type, property $c1 : str, property $c2 : str, property $c3 : str)
{

	// キャラをオブジェクト１番に読み込み、左に配置する
	back.object[1].create($c1, 1, @bstl, 0)
	back.object[1].layer = 2

	// キャラをオブジェクト２番に読み込み、右に配置する
	back.object[2].create($c2, 1, @bstr, 0)
	back.object[2].layer = 2

	// キャラをオブジェクト３番に読み込み、真ん中に配置する
	back.object[3].create($c3, 1, @bstc, 0)
	back.object[3].layer = 2

	gosub(3, $c1, $c2, $c3) #ayu_check

	// ワイプする
	$wipe($wipe_type)
}

// 全て消し、ワイプする
command $clear(property $wipe_type)
{
	// 背景にワイプ消去フラグを立てる
	back.object[0].wipe_erase = 1
	back.object[10].wipe_erase = 1
	back.object[11].wipe_erase = 1
	back.object[12].wipe_erase = 1
	back.object[13].wipe_erase = 1

	// ワイプする
	$wipe($wipe_type)
}

command $squake(property $q_type)
{
	switch($q_type){
		// 横に揺れる（おもにびんた）
		case(0)	//タイプ、時間、回数、終回数、揺れ幅、方向
			front.quake[0].start(1, 120, 1, 1, [150, 2])
		// 縦に揺れる（動き幅は上と同じ）
		case(1)
			front.quake[0].start(1, 120, 1, 1, [150, 0])
	}
}

command $interval(property $i_type:str)
{

	if( $i_type == start || $i_type == startend){
		// 覆い被せるファイルを読み込む
		back.object[20].create(kuro, 1)
		back.object[20].layer = 10
		// 左からスライスでワイプ
		wipe(101, 500, 0, [0, 2, 32], start_order=10, end_order=10)
	}
	if($i_type == startend){
		// 状態維持
		timewait_key(500)
	}
	if($i_type == startend || $i_type == end){
		// 覆ったファイルを消す準備
		back.object[30].disp = 0
		// 消す
		wipe(101, 500, 0, [0, 2, 32], start_order=10, end_order=10)
	}

}

// アイキャッチ

command $eyec(property $obj : str){
	if(script.check_skip){
		script.set_ctrl_skip_disable
	}
	close
	back.object[0].create($obj, 1)
	$wipe(010)
	script.set_ctrl_skip_enable
	timewait(2200)
	$clear(010)

}

command $eyecatch
{
	close

	bgm.stop
	
	back.object[0].create(ev910a, 1)

	wipe(type = 0, time = 250)

	timewait(1800)

	timewait_key(1200)

	$clear(000)
}

command $snow(property $wipe_type){
	property $vol
	$vol = 65


	// 雪１（奥）
	back.object[10].create_weather(snow, 1)
	back.object[10].wipe_copy = 1
	back.object[10].layer = 1
	back.object[10].set_weather_param_type_A(
		cnt = 300 * $vol / 100,
		move_time_x = 30000,
		move_time_y = 10000,
		pat_mode = 0,
		pat_no_1 = 0,
		sin_time_x = 2000,
		sin_power_x = 5
		)
	// 雪２（奥）
	back.object[11].create_weather(snow, 1)
	back.object[11].wipe_copy = 1
	back.object[11].layer = 1
	back.object[11].set_weather_param_type_A(
		cnt = 100 * $vol /100,
		move_time_x = 25000,
		move_time_y = 8000,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 2000,
		sin_power_x = 10
		)
	// 雪３（手前）
	back.object[12].create_weather(snow, 1)
	back.object[12].wipe_copy = 1
	back.object[12].layer = 3
	back.object[12].set_weather_param_type_A(
		cnt = 30 * $vol /100,
		move_time_x = 15000,
		move_time_y = 5000,
		pat_mode = 0,
		pat_no_1 = 4,
		sin_time_x = 2000,
		sin_power_x = 15
		)
	// 雪４（手前）
	back.object[13].create_weather(snow, 1)
	back.object[13].wipe_copy = 1
	back.object[13].layer = 3
	back.object[13].set_weather_param_type_A(
		cnt = 10 * $vol / 100,
		move_time_x = 5000,
		move_time_y = 2000,
		pat_mode = 0,
		pat_no_1 = 6,
		sin_time_x = 2000,
		sin_power_x = 20
		)
	$wipe($wipe_type)
}

command $snow_end(property $wipe_type){
	back.object[10].wipe_erase = 1
	back.object[11].wipe_erase = 1
	back.object[12].wipe_erase = 1
	back.object[13].wipe_erase = 1

	$wipe($wipe_type)
}

command $snow_up{
	front.object[10].create_weather(snow, 1)
	front.object[10].set_weather_param_type_B(
		cnt = 1000,
		pat_mode = 0,
		pat_no_1 = 6,
		center_x = 400,
		center_y = 100,
		appear_range = 70,
		move_time = 5000,
		sin_time_x = 2000,
		sin_power_x = 10,
		zoom_min = 0,
		zoom_max = 2000
		)

}

command $kirikae{
	timewait_key(750)
}


#z00


//歩美のヘアピンを重ねる処理
#ayu_check

	property $i

	// 立ち絵、最大三人分を繰り返す
	for($i = 0, $i < l[0], $i += 1){
		// 立ち絵が歩美かをチェック
		if(k[$i].left(3) == "ayu"){
			// 子供オブジェクトを一つ用意
			back.object[$i + 1].child.resize(1)
			k[10] = "hairpin"

			// 特定ポーズのヘアピンは0番
			if( k[$i].mid(3,2) == "04"
			 || k[$i].mid(3,2) == "15"
			 || k[$i].mid(3,2) == "16"
			 || k[$i].mid(3,2) == "17"
			 || k[$i].mid(3,2) == "19"
			 || k[$i].mid(3,2) == "20"
			){
				k[10] += "0"
			}
			// 上記以外、1番
			else{
				k[10] += "1"
			}

			// ヘアピンの判定
			if(@ヘアピン == 1){ //花のヘアピンフラグ
				k[10] += "b"
			}
			else{
				k[10] += "a"
			}

			// 夜の識別子がついている場合
			if(k[$i].right(1) == "n"){
				// ヘアピンも夜にする
				k[10] += "n"
			}
			back.object[$i + 1].child[0].create(k[10], 1)
		}
	}

return