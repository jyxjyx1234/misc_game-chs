//===========================================================================
//!
//!    @file     __app_macro.ss
//!    @brief    アプリケーション専用マクロ
//!
//!    @author   Copyright (C)2024- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     汎用的でないアプリケーション固有のマクロ
//!
//===========================================================================

#inc_start

	// 称号
	#property	$my_title_list : strlist		// 獲得した称号リスト(リストの最後が現在の称号)
	
#inc_end

#z00

//-----------------------------------------------------------------
// ユーザー制御中にパッド入力を監視するフレームアクション
//-----------------------------------------------------------------
command $$fa_check_joypad_input(property $fa : frameaction)
{
	// パッドモード中はシステムコマンドを許可する
	if( syscom.check_joypad_mode )
	{
		syscom.set_syscom_menu_enable
	}
	
	// パッドモードでないときはシステムコマンドを禁止する
	else
	{
		syscom.set_syscom_menu_disable
	}
}

//-----------------------------------------------------------------
// 日付の設定(文字列指定)
//-----------------------------------------------------------------
command $$set_date(property $date : str)
{
	property $month : str
	property $day : str
	
	$month = $date.left(2)
	$day = $date.right(2)
	
	@日付_月 = $month.tonum
	@日付_日 = $day.tonum
}

//-----------------------------------------------------------------
// 現在の称号を取得する
//-----------------------------------------------------------------
command $$get_title : str
{
	if( $my_title_list.get_size == 0 ) {
		return ("")
	}
	
	return ($my_title_list[$my_title_list.get_size - 1])
}

//-----------------------------------------------------------------
// 現在の称号を設定する
//-----------------------------------------------------------------
command $$set_title(property $title_name : str)
{
	if( $$has_title($title_name) ) {
		@todo("過去に取得済みの称号が再度取得されています。エラーでないか確認してください")
	}
	
	$my_title_list.resize($my_title_list.get_size + 1)
	$my_title_list[$my_title_list.get_size - 1] = $title_name
}

//-----------------------------------------------------------------
// 過去に称号を取得したことがあるか
//-----------------------------------------------------------------
command $$has_title(property $title_name : str) : int
{
	property $i
	property $len
	
	$len = $my_title_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		if( $my_title_list[$i] == $title_name )
		{
			return (1)
		}
	}
	
	return (0)
}


//-----------------------------------------------------------------
// アイテム／称号獲得オブジェクトを作成する
//-----------------------------------------------------------------
command $$create_item_get_object(property $obj : object, property $text : str, property $animation_type)
{
	property $i
	property $len
	property $font_size
	
	$font_size = 42
	
	// オブジェクト初期化
	$obj.init
	$obj.disp = 1
	$obj.set_pos(<SCREEN_CENTER_X>, <SCREEN_CENTER_Y> - 50)
	$obj.layer = <LAYER_UI>
	$obj.child.resize(3)
	
	// 背景
	$obj.child[1].create(ef_sys_message, 1)
	
	// テキスト
	$obj.child[2].create_string($text, 1)
	$obj.child[2].set_string_param($font_size, 0, 0, 99, 30, -1, -1, -1)
	
	// テキストのセンタリング
	$obj.child[2].x = ($obj.child[1].get_size_x - $text.len * $font_size / 2) / 2 - $obj.child[1].get_size_x / 2
	$obj.child[2].y = ($obj.child[1].get_size_y - $font_size) / 2 - $obj.child[1].get_size_y / 2
	
	// 派手な演出アニメーションの場合は追加で背景を作成する
	if( $animation_type == 1 )
	{
		$len = 18
		
		// 背景
		$obj.child[0].init
		$obj.child[0].disp = 1
		$obj.child[0].set_pos(0, 0)
		$obj.child[0].child.resize($len)
		
		for( $i = 0, $i < $len, $i += 1 )
		{
			$obj.child[0].child[$i].create(ef_sys_message_anim, 1)
			$obj.child[0].child[$i].set_scale(0, 0)
			$obj.child[0].child[$i].rotate_z = 3600 / $len * $i
		}
	}
}

//-----------------------------------------------------------------
// アイテム／称号獲得表示アニメーションを再生する
//-----------------------------------------------------------------
command $$play_item_get_show_animation(property $obj : object, property $animation_type)
{
	property $i
	property $len
	
	$obj.child[1].scale_x = 0
	$obj.child[1].scale_x_eve.set(1000, 250, 0, 2)
	$obj.child[1].bright = 255
	$obj.child[1].bright_eve.set(0, 250, 0, 2)
	
	$obj.child[2].tr = 0
	$obj.child[2].tr_eve.set(255, 250, 250, 2)
	
	if( $animation_type == 1 )
	{
		$len = $obj.child[0].child.get_size
		
		$obj.child[0].tr = 96
		$obj.child[0].tr_eve.turn(96, 192, 1250, 0, 0)
		$obj.child[0].bright = 255
		$obj.child[0].bright_eve.set(0, 1000, 500, 0)
		
		for( $i = 0, $i < $len, $i += 1 )
		{
			$obj.child[0].child[$i].scale_x_eve.set(1000, 500, 500 + $i % 3 * 20, 2)
			$obj.child[0].child[$i].scale_y_eve.set(1000, 500, 500 + $i % 3 * 20, 2)
			
			$obj.child[0].child[$i].rotate_z_eve.set(3600 + 3600 / $len * $i, 30000, 0, 0)
		}
		
		$obj.bright_eve.turn(0, 32, 1500, 500, 0)
	}
}

//-----------------------------------------------------------------
// アイテム／称号獲得終了アニメーションを再生する
//-----------------------------------------------------------------
command $$play_item_get_hide_animation(property $obj : object, property $animation_type)
{
	if( $animation_type == 0 )
	{
		$obj.child[1].scale_x_eve.set(0, 250, 150, 2)
		$obj.child[1].tr_eve.set(0, 500, 150, 2)
		
		$obj.child[2].tr_eve.set(0, 150, 0, 2)
		
		timewait(500)
	}
	
	elseif( $animation_type == 1 )
	{
		$obj.child[0].scale_x_eve.set(0, 1000, 0, 0)
		$obj.child[0].scale_y_eve.set(0, 1000, 0, 0)
		
		$obj.child[1].scale_x_eve.set(0, 250, 1000, 2)
		$obj.child[1].tr_eve.set(0, 500, 1000, 2)
		
		$obj.child[2].tr_eve.set(0, 150, 1000, 2)
		
		timewait(2000)
	}
}

//-----------------------------------------------------------------
// 称号獲得出現アニメーションを再生する
//-----------------------------------------------------------------
command $$play_title_get_animation(property $obj : object, property $title_name : str, property $animation_type)
{
	property $font_name : str
	property $text : str
	property $wait_time
	property $pcm_ch
	
	// 表示するテキストを取得する
	$text = $$get_title_get_text($title_name)
	
	// メッセージをバックログに追加
	msgbk.insert_msg($text)
	
	// 現在選択しているフォントを保存しておく
	$font_name = syscom.get_font_name
	
	// フォントを一時的に変更する
	script.set_font_name(@アイテム獲得フォント)
	
	// オブジェクト作成
	$$create_item_get_object($obj, $text, $animation_type)
	
	// 表示アニメーション
	$$play_item_get_show_animation($obj, $animation_type)
	
	// 効果音再生チャンネルを設定する
	$pcm_ch = 0
	
	// 派手な演出の場合はＢＧＭを一時停止する
	if( $animation_type == 1 ) {
		@bgm_pause(500)
	}
	
	// 効果音再生
	switch( $animation_type ) {
	case(0)		@se(se_fanfare02, 0, $pcm_ch)		$wait_time = 1000
	case(1)		@se(se_fanfare03, 0, $pcm_ch)		$wait_time = 2500
	}
	
	// スキップでも何が表示されたか分かるようにウェイトを入れる
	$$set_ctrl_skip_disable($wait_time)
	
	// 効果音終了待ち
	pcmch[$pcm_ch].wait_key
	
	// 終了処理
	@se_stop(2000, $pcm_ch)
	
	// 消去アニメーション
	$$play_item_get_hide_animation($obj, $animation_type)
	
	// 派手な演出の場合はＢＧＭの一時停止を解除する
	if( $animation_type == 1 ) {
		@bgm_resume(1000)
	}
	
	// フォントを元に戻す
	script.set_font_name($font_name)
}

//-----------------------------------------------------------------
// アイテム獲得出現アニメーションを再生する
//-----------------------------------------------------------------
command $$play_item_get_animation(property $obj : object, property $text : str, property $animation_type)
{
	property $font_name : str
	property $wait_time
	property $pcm_ch
	
	// メッセージをバックログに追加
	msgbk.insert_msg($text)
	
	// 現在選択しているフォントを保存しておく
	$font_name = syscom.get_font_name
	
	// フォントを一時的に変更する
	script.set_font_name(@アイテム獲得フォント)
	
	// オブジェクト作成
	$$create_item_get_object($obj, $text, $animation_type)
	
	// 表示アニメーション
	$$play_item_get_show_animation($obj, $animation_type)
	
	// 効果音再生チャンネルを設定する
	$pcm_ch = 0
	
	// 派手な演出の場合はＢＧＭを一時停止する
	if( $animation_type == 1 ) {
		@bgm_pause(500)
	}
	
	// 効果音再生
	switch( $animation_type ) {
	case(0)		@se(se_fanfare01, 0, $pcm_ch)		$wait_time = 1000
	case(1)		@se(se_fanfare03, 0, $pcm_ch)		$wait_time = 2500
	}
	
	// スキップでも何が表示されたか分かるようにウェイトを入れる
	$$set_ctrl_skip_disable($wait_time)
	
	// 効果音終了待ち
	pcmch[$pcm_ch].wait_key
	
	// 終了処理
	@se_stop(2000, $pcm_ch)
	
	// 消去アニメーション
	$$play_item_get_hide_animation($obj, $animation_type)
	
	// 派手な演出の場合はＢＧＭの一時停止を解除する
	if( $animation_type == 1 ) {
		@bgm_resume(1000)
	}
	
	// フォントを元に戻す
	script.set_font_name($font_name)
}

//-----------------------------------------------------------------
// 火の粉（過去ストーリー）
//-----------------------------------------------------------------
command $$create_fire_spark_particle(property $obj : object, property $type)
{
	$obj.init
	$obj.disp = 1
	$obj.layer = <LAYER_SCREEN>
	$obj.wipe_copy = 1
	$obj.blend = 1
	$obj.child.resize(8)
	
	// 遠
	if( $type == 0 )
	{
		$obj.child[0].create_weather(ef_fire_spark, 1)
		$obj.child[0].set_weather_param_type_A(
			cnt = 4,
			move_time_x = 25000,
			move_time_y = -8000,
			pat_mode = 0,
			pat_no_1 = 0,
			sin_time_x = 3000,
			sin_power_x = 15,
			scale_x = 450,
			scale_y = 450
		)
		$obj.child[0].blend = 1
	}
	
	$obj.child[1].create_weather(ef_fire_spark, 1)
	$obj.child[1].set_weather_param_type_A(
		cnt = 4,
		move_time_x = -25000,
		move_time_y = -8000,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 250,
		scale_y = 250
	)
	
	$obj.child[2].create_weather(ef_fire_spark, 1)
	$obj.child[2].set_weather_param_type_A(
		cnt = 4,
		move_time_x = 25000,
		move_time_y = -8000,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3000,
		sin_power_x = 15,
		scale_x = 350,
		scale_y = 350
	)
	$obj.child[2].blend = 4
	
	// 中
	if( $type == 0 )
	{
		$obj.child[3].create_weather(ef_fire_spark, 1)
		$obj.child[3].set_weather_param_type_A(
			cnt = 3,
			move_time_x = -37500,
			move_time_y = -9000,
			pat_mode = 0,
			pat_no_1 = 0,
			sin_time_x = 3500,
			sin_power_x = 8,
			scale_x = 600,
			scale_y = 600
		)
		$obj.child[3].blend = 1
	}
	
	$obj.child[4].create_weather(ef_fire_spark, 1)
	$obj.child[4].set_weather_param_type_A(
		cnt = 3,
		move_time_x = 37500,
		move_time_y = -9000,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 700,
		scale_y = 700
	)
	$obj.child[4].bright_eve.turn(0, 32, 1500, 0, 0)
	$obj.child[4].tr_eve.turn(64, 160, 2000, 500, 0)
	
	$obj.child[5].create_weather(ef_fire_spark, 1)
	$obj.child[5].set_weather_param_type_A(
		cnt = 3,
		move_time_x = -37500,
		move_time_y = -8000,
		pat_mode = 0,
		pat_no_1 = 2,
		sin_time_x = 3500,
		sin_power_x = 8,
		scale_x = 500,
		scale_y = 500
	)
	$obj.child[5].blend = 4
	
	// 近
	if( $type == 0 )
	{
		$obj.child[6].create_weather(ef_fire_spark, 1)
		$obj.child[6].set_weather_param_type_A(
			cnt = 4,
			move_time_x = 20000,
			move_time_y = -2000,
			pat_mode = 0,
			pat_no_1 = 0,
			sin_time_x = 2000,
			sin_power_x = 10,
			scale_x = 1250,
			scale_y = 1250
		)
		$obj.child[6].blend = 1
		$obj.child[6].bright_eve.turn(0, 64, 7000, 1000, 0)
		$obj.child[6].tr_eve.turn(32, 128, 5000, 1000, 0)
	}
	
	$obj.child[7].create_weather(ef_fire_spark, 1)
	$obj.child[7].set_weather_param_type_A(
		cnt = 4,
		move_time_x = -20000,
		move_time_y = -2000,
		pat_mode = 0,
		pat_no_1 = 1,
		sin_time_x = 2000,
		sin_power_x = 10,
		scale_x = 1250,
		scale_y = 1250
	)
	$obj.child[7].blend = 4
	$obj.child[7].bright_eve.turn(0, 64, 4000, 1000, 0)
	$obj.child[7].tr_eve.turn(32, 128, 2000, 1000, 0)
	
	// 一度に色々生成しているので一度画面を更新する
	disp
	
	if( $type == 1 ) {
		$obj.bright = 96
		$obj.child[1].blend = 1
		$obj.child[2].blend = 1
		$obj.child[4].blend = 1
		$obj.child[5].blend = 1
		$obj.child[7].blend = 1
	}
}

//-----------------------------------------------------------------
// アイキャッチ（日付変更）
//-----------------------------------------------------------------
command $$eye_catch(property $date : str, property $bg_name : str)
{
	property $i
	property $j
	property $date_num
	property $day
	property $digit
	property $day_tmp
	
	// 仮
	if( $bg_name == "ef_avan_bg02" ) {
		switch( $date ) {
		case("0702")		$bg_name = "b_bg008_06"
		case("0703")		$bg_name = "b_bg009_01"
		case("0704")		$bg_name = "b_bg016_01"
		case("0705")		$bg_name = "b_bg002_01"
		case("0706")		$bg_name = "b_bg001_07"
		case("0709")		$bg_name = "b_bg006_01"
		case("0710")		$bg_name = "b_bg005_01"
		case("0711")		$bg_name = "b_bg018_01"
		case("0712")		$bg_name = "b_bg999_01"
		case("0713")		$bg_name = "b_bg009_01"
		}
	}
	
	@fade_w(4)
	
	@本編ユーザー制御
	@ゲームパッド早送り可能制御
	@start_debug_shortcut
	
	@waitkey(1000)
	
	back.object[<OBJ_APP_EFFECT02>].create_movie(ef_wind02, 1, 0, 70)
	back.object[<OBJ_APP_EFFECT02>].wipe_copy = 1
	back.object[<OBJ_APP_EFFECT02>].blend = 4
	
	@bg_move($bg_name, -1, 200, 0, -200, 0, 15000)
	
	back.object[<OBJ_APP_EFFECT01>].disp = 1
	back.object[<OBJ_APP_EFFECT01>].child.resize(5)
	
	back.object[<OBJ_APP_EFFECT01>].child[1].create(ef_eye_catch_filter, 1)
	
	$$create_eye_catch_particle(back.object[<OBJ_APP_EFFECT01>].child[2])
	
	back.object[<OBJ_APP_EFFECT01>].child[3].create(ef_eye_catch_day, 1, 1290, 311)
	
	$$set_tr_eve(back.object[<OBJ_APP_EFFECT01>].child[3], 0, 255, 1500, 1500, 2)
	$$set_pos_y_rep_eve(back.object[<OBJ_APP_EFFECT01>].child[3], 0, 30, 0, 1500, 1500, 2)
	
	$date_num = $date.tonum
	if( $date_num >= 800 ) {
		$day = ($date_num - 800) + 31 + 1
	} else {
		$day = ($date_num - 701) + 1
	}
	
	// 経過日数の桁数を調べる
	$digit = 1
	$day_tmp = $day
	while( 1 )
	{
		if( $day_tmp < 10 ) {
			break
		}
		
		$day_tmp = $day_tmp / 10
		$digit += 1
	}
	
	// 経過日数（数字）を作成する
	back.object[<OBJ_APP_EFFECT01>].child[4].disp = 1
	back.object[<OBJ_APP_EFFECT01>].child[4].child.resize($digit)
	
	for( $i = 0, $i < $digit, $i += 1 )
	{
		$day_tmp = $day
		
		back.object[<OBJ_APP_EFFECT01>].child[4].child[$i].create_number(ef_eye_catch_number, 1, 1482 + $i * 104, 465)
		back.object[<OBJ_APP_EFFECT01>].child[4].child[$i].set_number_param(1, 0, 0, 0, 0, 0)
		
		for( $j = 0, $j < $digit - 1 - $i, $j += 1 )
		{
			$day_tmp = $day_tmp / 10
		}
		back.object[<OBJ_APP_EFFECT01>].child[4].child[$i].set_number($day_tmp % 10)
		
		$$set_tr_eve(back.object[<OBJ_APP_EFFECT01>].child[4].child[$i], 0, 255, 1500, 2500 + $i * 500, 2)
		$$set_pos_y_rep_eve(back.object[<OBJ_APP_EFFECT01>].child[4].child[$i], 0, 30, 0, 1500, 2500 + $i * 500, 2)
	}
	
	@wipe(5)
	@waitkey(3000)
	
	@オートセーブ
	@fade_w(4)
	
	@ゲームパッド早送り可能制御解除
	@本編ユーザー制御解除
	
	@waitkey(3000)
	@オートセーブしました表示
}

// パーティクル（アイキャッチ）
command $$create_eye_catch_particle(property $obj : object)
{
	$obj.disp = 1
	$obj.child.resize(2)
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[0], ef_particle01,		// 使用するオブジェクト, 画像
						64, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						6000, 8000,						// 消滅する時間(最小、最大)
						2, 6, -8, 4						// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[0],			// 使用するオブジェクト
								0, 1720, 356, 686		// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[0], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						150, 175, 150, 175				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[0],					// 使用するオブジェクト
						1000, 2000						// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[0], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, -1800, 1800, 1800		// 回転角(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[0],					// 使用するオブジェクト
						"#658bc5", "#63c8eb", 192		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[0], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	// 自動縮小アニメーションを設定する
	$$set_particle_auto_scale($obj.child[0], 0)
	// パーティクルをワンショットにする
	$$set_particle_oneshot($obj.child[0])
	
	$obj.child[0].frame_action.start(-1, "$$fa_particle")	// パーティクルの実行
	$obj.child[0].blend = 1									// 合成タイプを加算にする
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[1], ef_particle01,		// 使用するオブジェクト, 画像
						64, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						6000, 8000,						// 消滅する時間(最小、最大)
						1, 4, -5, 2						// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[1],			// 使用するオブジェクト
								0, 1720, 356, 686		// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[1], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						100, 150, 100, 150				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[1],					// 使用するオブジェクト
						1000, 2000						// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[1], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, -1800, 1800, 1800		// 回転角(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[1],					// 使用するオブジェクト
						"#98fb98", "#1e90ff", 192		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[1], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	// 自動縮小アニメーションを設定する
	$$set_particle_auto_scale($obj.child[1], 0)
	// パーティクルをワンショットにする
	$$set_particle_oneshot($obj.child[1])
	
	$obj.child[1].frame_action.start(-1, "$$fa_particle")	// パーティクルの実行
	$obj.child[1].blend = 1									// 合成タイプを加算にする
}

//-----------------------------------------------------------------
// 光る葉っぱパーティクル
//-----------------------------------------------------------------
command $$create_light_leaf_particle(property $obj : object, property $type)
{
	// $type = 1の場合は[中]を生成しない
	
	$obj.init
	$obj.disp = 1
	$obj.child.resize(4)
	
	// [遠]／玉
	$$create_particle($obj.child[0], ef_light_ball,	// 使用するオブジェクト, 画像
						32, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						15000, 18000,					// 消滅する時間(最小、最大)
						5, 5, -8, -5					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	$$set_particle_shape_to_box($obj.child[0], 			// 使用するオブジェクト
						0, 1160, 1100, 1120				// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	$$set_particle_scale($obj.child[0], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						25, 25, 100, 100				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	$$set_particle_outside_force($obj.child[0],			// 使用するオブジェクト
						-1, 1, -1, 1					// 外力(x最小、x最大、y最小、y最大)
	)
	$$set_particle_delay($obj.child[0], 				// 使用するオブジェクト
						0, 12000						// ディレイ時間(最小、最大)
	)
	
	// [遠]／葉
	$$create_particle($obj.child[1], ef_avan_particle,	// 使用するオブジェクト, 画像
						48, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						15000, 18000,					// 消滅する時間(最小、最大)
						5, 10, -20, -10					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	$$set_particle_shape_to_box($obj.child[1], 			// 使用するオブジェクト
						100, 1060, 1180, 1180			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	$$set_particle_scale($obj.child[1], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						100, 100, 250, 250				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	$$set_particle_outside_force($obj.child[1],			// 使用するオブジェクト
						-1, 1, -2, 0					// 外力(x最小、x最大、y最小、y最大)
	)
	$$set_particle_delay($obj.child[1], 				// 使用するオブジェクト
						0, 12000							// ディレイ時間(最小、最大)
	)
	$$set_particle_rotate($obj.child[1], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, 1800, -1800, 1800		// 回転角(最小、最大)
	)
	$$set_particle_patno($obj.child[1], 				// 使用するオブジェクト
						0, 3							// パターン番号(最小、最大)
	)
	$$set_particle_auto_tr($obj.child[1], 0)			// 使用するオブジェクト, 不透明度を自動で下げるか
	
	// [中]／葉
	if( $type != 1 )
	{
		$$create_particle($obj.child[2], ef_avan_particle,	// 使用するオブジェクト, 画像
							18, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
							10000, 15000,					// 消滅する時間(最小、最大)
							10, 20, -40, -30				// 動く方向x(最小、最大), 動く方向y(最小、最大)
		)
		$$set_particle_shape_to_box($obj.child[2], 			// 使用するオブジェクト
							100, 1060, 1180, 1180			// 矩形範囲(x最小、x最大、y最小、y最大)
		)
		$$set_particle_scale($obj.child[2], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
							300, 300, 450, 450				// 拡縮率(x最小、x最大、y最小、y最大)
		)
		$$set_particle_outside_force($obj.child[2],			// 使用するオブジェクト
							-3, 3, -3, 0					// 外力(x最小、x最大、y最小、y最大)
		)
		$$set_particle_delay($obj.child[2], 				// 使用するオブジェクト
							0, 8000							// ディレイ時間(最小、最大)
		)
		$$set_particle_rotate($obj.child[2], 0,				// 使用するオブジェクト, 角度を固定するか
							-1800, 1800, -1800, 1800		// 回転角(最小、最大)
		)
		$$set_particle_patno($obj.child[2], 				// 使用するオブジェクト
							0, 3							// パターン番号(最小、最大)
		)
		$$set_particle_auto_tr($obj.child[2], 0)			// 使用するオブジェクト, 不透明度を自動で下げるか
	}
	
	// [近]／葉
	$$create_particle($obj.child[3], ef_avan_particle,	// 使用するオブジェクト, 画像
						4, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						10000, 12000,					// 消滅する時間(最小、最大)
						30, 40, -50, -40				// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	$$set_particle_shape_to_box($obj.child[3], 			// 使用するオブジェクト
						100, 1060, 1380, 1380			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	$$set_particle_scale($obj.child[3], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						700, 700, 850, 850				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	$$set_particle_outside_force($obj.child[3],			// 使用するオブジェクト
						-5, 5, -5, 0					// 外力(x最小、x最大、y最小、y最大)
	)
	$$set_particle_delay($obj.child[3], 				// 使用するオブジェクト
						0, 5000							// ディレイ時間(最小、最大)
	)
	$$set_particle_rotate($obj.child[3], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, 1800, -1800, 1800		// 回転角(最小、最大)
	)
	$$set_particle_patno($obj.child[3], 				// 使用するオブジェクト
						0, 3							// パターン番号(最小、最大)
	)
	$$set_particle_auto_tr($obj.child[3], 0)			// 使用するオブジェクト, 不透明度を自動で下げるか
	
	$obj.child[0].bright = 255
	$obj.child[1].bright = 96
	if( $type != 1 ) {
		$obj.child[2].bright = 64
	}
	$obj.child[3].bright = 32
	
	$obj.child[0].blend = 1
	$obj.child[1].blend = 4
	if( $type != 1 ) {
		$obj.child[2].blend = 4
	}
	$obj.child[3].blend = 4
	
	$obj.child[0].frame_action.start(-1, "$$fa_particle")
	$obj.child[1].frame_action.start(-1, "$$fa_particle")
	if( $type != 1 ) {
		$obj.child[2].frame_action.start(-1, "$$fa_particle")
	}
	$obj.child[3].frame_action.start(-1, "$$fa_particle")
}

//-----------------------------------------------------------------
// 光る葉っぱパーティクル(大きめ)
//-----------------------------------------------------------------
command $$create_large_light_leaf_particle(property $obj : object)
{
	$obj.init
	$obj.disp = 1
	$obj.child.resize(3)
	
	// [遠]／玉
	$$create_particle($obj.child[0], ef_light_ball,	// 使用するオブジェクト, 画像
						32, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						15000, 18000,					// 消滅する時間(最小、最大)
						5, 5, -8, -5					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	$$set_particle_shape_to_box($obj.child[0], 			// 使用するオブジェクト
						-100, 1260, 1100, 1120			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	$$set_particle_scale($obj.child[0], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						25, 25, 100, 100				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	$$set_particle_outside_force($obj.child[0],			// 使用するオブジェクト
						-1, 1, -1, 1					// 外力(x最小、x最大、y最小、y最大)
	)
	$$set_particle_delay($obj.child[0], 				// 使用するオブジェクト
						0, 12000						// ディレイ時間(最小、最大)
	)
	
	// [遠]／葉
	$$create_particle($obj.child[1], ef_avan_particle,	// 使用するオブジェクト, 画像
						16, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						15000, 18000,					// 消滅する時間(最小、最大)
						5, 10, -15, -10					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	$$set_particle_shape_to_box($obj.child[1], 			// 使用するオブジェクト
						-100, 1060, 1180, 1180			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	$$set_particle_scale($obj.child[1], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						150, 150, 450, 450				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	$$set_particle_outside_force($obj.child[1],			// 使用するオブジェクト
						-1, 1, -2, 2					// 外力(x最小、x最大、y最小、y最大)
	)
	$$set_particle_delay($obj.child[1], 				// 使用するオブジェクト
						0, 12000							// ディレイ時間(最小、最大)
	)
	$$set_particle_rotate($obj.child[1], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, 1800, -1800, 1800		// 回転角(最小、最大)
	)
	$$set_particle_patno($obj.child[1], 				// 使用するオブジェクト
						0, 3							// パターン番号(最小、最大)
	)
	$$set_particle_auto_tr($obj.child[1], 0)			// 使用するオブジェクト, 不透明度を自動で下げるか
	
	// [近]／葉
	$$create_particle($obj.child[2], ef_avan_particle,	// 使用するオブジェクト, 画像
						8, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						10000, 12000,					// 消滅する時間(最小、最大)
						30, 40, -40, -30				// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	$$set_particle_shape_to_box($obj.child[2], 			// 使用するオブジェクト
						100, 1060, 1380, 1380			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	$$set_particle_scale($obj.child[2], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						1000, 1000, 1250, 1250			// 拡縮率(x最小、x最大、y最小、y最大)
	)
	$$set_particle_outside_force($obj.child[2],			// 使用するオブジェクト
						-5, 5, -5, 5					// 外力(x最小、x最大、y最小、y最大)
	)
	$$set_particle_delay($obj.child[2], 				// 使用するオブジェクト
						0, 8000							// ディレイ時間(最小、最大)
	)
	$$set_particle_rotate($obj.child[2], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, 1800, -1800, 1800		// 回転角(最小、最大)
	)
	$$set_particle_patno($obj.child[2], 				// 使用するオブジェクト
						0, 3							// パターン番号(最小、最大)
	)
	$$set_particle_auto_tr($obj.child[2], 0)			// 使用するオブジェクト, 不透明度を自動で下げるか
	
	$obj.child[0].bright = 255
	$obj.child[1].bright = 96
	$obj.child[2].bright = 32
	
	$obj.child[0].blend = 1
	$obj.child[1].blend = 4
	$obj.child[2].blend = 4
	
	$obj.child[0].frame_action.start(-1, "$$fa_particle")
	$obj.child[1].frame_action.start(-1, "$$fa_particle")
	$obj.child[2].frame_action.start(-1, "$$fa_particle")
}

//-----------------------------------------------------------------
// 黒風（災獣周り）
//-----------------------------------------------------------------
command $$create_black_wind(property $obj : object)
{
	$obj.disp = 1
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_CG> + 1
	$obj.child.resize(2)
	
	$obj.child[0].create_movie_loop(ef_dark_wind01, 1)
	$obj.child[0].blend = 1
	$obj.child[0].tr = 60
	
	$obj.child[1].create_movie_loop(ef_dark_wind01, 1)
	$obj.child[1].blend = 3
}

//-----------------------------------------------------------------
// 過剰集中
//-----------------------------------------------------------------
command $$concentration_start(property $obj : object)
{
	property $scale
	
	// ムービー（星ワープ的な）を準備
	$obj.create_movie_loop(ef_trigger_in, 1, ready_only = 1)
	$obj.layer = <LAYER_ALL_FILTER> + 1
	$obj.blend = 4
	$obj.wipe_copy = 1
	$obj.bright = 128
	$obj.color_b = 255
	$obj.color_rate = 128
	$$set_image_center_rep($obj)
	$$set_tr_eve($obj, 0, 255, 500, 0, 2)
	$$set_scale_eve($obj, 2000, 1000, 1000, 0, 2)
	$obj.seek_movie(1500)
	
	// エフェクト準備
	@回想枠黒(255, 2)
	@黒フィルター全体(128)
	$obj.resume_movie
	
	// ＳＥ
	@se(SE_pulse_heart01)
	@se(SE_trigger_in, 0, 1)
	
	// 描画更新
	disp
	
	// ワイプ
	@wipe(121, 1000)
	@waitkey(1000)
	
	@フィルター終了
	@mono
	
	// 背景
	if( front.object[<OBJ_BG>].get_file_name != "" )
	{
		back.object[<OBJ_BG>].create_copy_from(front.object[<OBJ_BG>])
		$scale = back.object[<OBJ_BG>].scale_x
		$$set_scale_eve(back.object[<OBJ_BG>], $scale, $scale + 750, 750, 250, 2)
	}
	
	// 塵系ムービーを準備
	$obj.create_movie_loop(ef_wind_dust04, 1, ready_only = 1)
	$obj.layer = <LAYER_ALL_FILTER> - 1
	$obj.blend = 4
	$obj.wipe_copy = 1
	$obj.bright = 255
	$obj.color_add_b = 255
	$$set_image_center_rep($obj)
	$$set_scale_eve($obj, 1000, 1750, 750, 250, 2)
	$obj.resume_movie
	
	// 描画更新
	disp
}

command $$concentration_end(property $obj : object)
{
	property $scale
	
	// 背景
	if( front.object[<OBJ_BG>].get_file_name != "" )
	{
		back.object[<OBJ_BG>].create_copy_from(front.object[<OBJ_BG>])
		$scale = back.object[<OBJ_BG>].scale_x
		$$set_scale_eve(back.object[<OBJ_BG>], $scale, $scale - 750, 750, 250, 2)
	}
}

//---------------------------------------------------------------------------
// 淡雪スタンプフレームアクション
//---------------------------------------------------------------------------
command $$fa_hi_stamp(property $fa : frameaction, property $obj : object)
{
	l[0] = $fa.counter.get
	
	$obj.scale_x = math.timetable(l[0], 0, 1250, [0, 250, 950, 2], [250, 400, 1000, 1])
	$obj.scale_y = $obj.scale_x
}
