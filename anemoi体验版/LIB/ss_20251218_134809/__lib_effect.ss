//===========================================================================
//!
//!    @file     __lib_effect.ss
//!    @brief    エフェクト制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	#property	$dizzy_flag			// 目眩エフェクト実行中フラグ

#inc_end

#z00

//-----------------------------------------------------------------
// フィルムノイズオブジェクトを設定する
//-----------------------------------------------------------------
command $$set_film_noise_object(property $obj : object)
{
	$obj.create_movie_loop(ef_film_noise, 1)
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_SCREEN>
	
	// オブジェクトをウインドウサイズサイズに拡縮する
	$$set_screen_scale($obj)
}

//-----------------------------------------------------------------
// ドットノイズオブジェクトを設定する
//-----------------------------------------------------------------
command $$set_dot_noise_object(property $obj : object, property $type)
{
	property $filename : str
	
	// 指定されたタイプによって読み込むファイルを変更する
	switch( $type ) {
	case(<DOT_NOISE_TYPE_SMALL>)	$filename = ef_noise01
	case(<DOT_NOISE_TYPE_MEDIUM>)	$filename = ef_noise02
	case(<DOT_NOISE_TYPE_LARGE>)	$filename = ef_noise03
	default
		@dm("__lib_effect.ss → $$set_dot_noise_object\n定義されていないドットノイズタイプが選択されました。\nタイプ : " + math.tostr($type) + "\n処理をスキップします。")
		return
	}
	
	$obj.create($filename, 1)
	$obj.load_gan($filename)
	$obj.start_gan(0, 1)
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_SCREEN>
	$obj.blend = 4
	
	// オブジェクトをウインドウサイズサイズに拡縮する
	$$set_screen_scale($obj)
}

//---------------------------------------------------------------------------
// 回想枠オブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_recollect_object(property $obj : object, property $type)
{
	property $filename : str
	
	// 指定されたタイプによって読み込むファイルを変更する
	switch( $type ) {
	case(<RECOLLECT_TYPE_WHITE>)	$filename = ef_recollect_w
	case(<RECOLLECT_TYPE_BLACK>)	$filename = ef_recollect_b
	default
		@dm("__lib_effect.ss → $$set_recollect_object\n定義されていない回想枠タイプが選択されました。\nタイプ : " + math.tostr($type) + "\n処理をスキップします。")
		return
	}
	
	$obj.create_movie_loop($filename, 1)
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_SCREEN>
	
	// オブジェクトをウインドウサイズサイズに拡縮する
	$$set_screen_scale($obj)
}

//-----------------------------------------------------------------
// 集中線オブジェクトを設定する
//-----------------------------------------------------------------
command $$set_concentration_line_object(property $obj : object, property $type)
{
	property $filename : str
	
	// 指定されたタイプによって読み込むファイルを変更する
	switch( $type ) {
	case(<LINE_TYPE_WHITE>)		$filename = ef_line01
	case(<LINE_TYPE_BLACK>)		$filename = ef_line02
	default
		@dm("__lib_effect.ss → $$set_concentration_line_object\n定義されていない集中線タイプが選択されました。\nタイプ : " + math.tostr($type) + "\n処理をスキップします。")
		return
	}
	
	$obj.create($filename, 1)
	$obj.load_gan($filename)
	$obj.start_gan(0, 1)
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_SCREEN>
	
	// ゲーム解像度(1920x1080)より集中線素材解像度(2048x1200)のほうが大きいため座標を補正する
	$obj.set_pos(-($obj.get_size_x - <SCREEN_WIDTH>) / 2, -($obj.get_size_y - <SCREEN_HEIGHT>) / 2)
}

//---------------------------------------------------------------------------
// 集中線(水平、垂直)オブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_concentration_xy_line_object(property $obj : object, property $type, property $length)
{
	property $filename : str
	property $i
	property $child_num
	
	switch( $type ) {
	case(<LINE_TYPE_HORIZONTAL>)		// 水平
		$filename = ef_line03
		$child_num = 2
	case(<LINE_TYPE_VERTICAL>)			// 垂直
		$filename = ef_line04
		$child_num = 2
	case(<LINE_TYPE_HORIZONTAL_ALL>)	// 水平全体
		$filename = ef_line03
		$child_num = 1
	case(<LINE_TYPE_VERTICAL_ALL>)		// 垂直全体
		$filename = ef_line04
		$child_num = 1
	default
		@dm("__lib_effect.ss → $$create_line_xy_object\n定義されていない集中線タイプが選択されました。\nタイプ : " + math.tostr($type) + "\n処理をスキップします。")
		return
	}
	
	$$set_child_object($obj, 2)
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_SCREEN>
	$obj.blend = 4
	
	for( $i = 0, $i < $child_num, $i += 1 )
	{
		$obj.child[$i].create($filename, 1)
		$obj.child[$i].patno_eve.loop(0, 29, 500, 0, 0)
		
		$$set_screen_scale($obj.child[$i])
	}
	
	if( $type == <LINE_TYPE_HORIZONTAL> )
	{
		$obj.child[0].y = $length - <SCREEN_HEIGHT>
		$obj.child[1].y = <SCREEN_HEIGHT> - $length
	}
	elseif( $type == <LINE_TYPE_VERTICAL> )
	{
		$obj.child[0].x = $length - <SCREEN_WIDTH>
		$obj.child[1].x = <SCREEN_WIDTH> - $length
	}
}

//---------------------------------------------------------------------------
// 目眩オブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_dizzy_object(property $obj_bg : object, property $obj_chara : object, property $loop, property $power, property $disp_time, property $wait_time)
{
	property $i
	
	// ループ指定なら実行中フラグをオンにする
	if( $loop ) {
		$dizzy_flag = 1
	}
	
	// 背景が表示されている場合は背景をコピーする
	if( front.object[<OBJ_BG>].disp )
	{
		$obj_bg.create_copy_from(front.object[<OBJ_BG>])
		$obj_bg.layer = <LAYER_BG> + 1
	}
	
	// イベントＣＧが表示されている場合はイベントＣＧをコピーする
	elseif( front.object[<OBJ_CG>].disp )
	{
		$obj_bg.create_copy_from(front.object[<OBJ_CG>])
		$obj_bg.layer = <LAYER_CG> + 1
	}
	
	// 目眩(背景)の設定をする
	$obj_bg.x_rep.resize(1)
	$obj_bg.y_rep.resize(1)
	$obj_bg.tr_rep.resize(1)
	$obj_bg.tr = 0
	$obj_bg.tr_eve.set(255, $disp_time, 0, 0)
	$obj_bg.dark = 32
	$obj_bg.frame_action.start(-1, "$$fa_dizzy", $loop, $power, $wait_time)
	if( $loop ) {
		$obj_bg.wipe_copy = 1
	}
	
	// 目眩(キャラクター)の設定をする
	$obj_chara.init
	$obj_chara.disp = 1
	$obj_chara.layer = <LAYER_CG> - 1
	$obj_chara.x_rep.resize(1)
	$obj_chara.y_rep.resize(1)
	$obj_chara.tr_rep.resize(1)
	$obj_chara.tr = 0
	$obj_chara.tr_eve.set(255, $disp_time, 0, 0)
	$obj_chara.dark = 32
	$obj_chara.frame_action.start(-1, "$$fa_dizzy", $loop, $power, $wait_time)
	if( $loop ) {
		$obj_chara.wipe_copy = 1
	}
	
	// キャラクターが表示されている場合はキャラクターをコピーする
	$obj_chara.child.resize(<OBJ_CHARACTER_MAX> - <OBJ_CHARACTER> + 1)
	
	for( $i = <OBJ_CHARACTER>, $i <= <OBJ_CHARACTER_MAX>, $i += 1 )
	{
		if( front.object[$i].disp ) {
			$obj_chara.child[$i - <OBJ_CHARACTER>].create_copy_from(front.object[$i])
		}
	}
}

// 目眩フレームアクション
command $$fa_dizzy(property $fa : frameaction, property $obj : object, property $loop, property $power, property $wait_time)
{
	if( $loop ) {
		l[0] = $fa.counter.get % (7500 + $wait_time)
	} else {
		l[0] = $fa.counter.get
	}
	
	$obj.x_rep[0] = math.timetable(l[0], 0, 0, [0, 1000,  5 * $power, 2], [1000, 3000, -10 * $power, 0], [3000, 5000,  0 * $power, 1], [5000, 6000, 5 * $power, 0], [6000, 7500, 0, 0])
	$obj.y_rep[0] = math.timetable(l[0], 0, 0, [0, 2000, -5 * $power, 2], [2000, 2500,  -2 * $power, 0], [2500, 4500, -5 * $power, 0], [4500, 6000, 5 * $power, 0], [6000, 7500, 0, 0])
	
	if( $loop ) {
		l[1] = $fa.counter.get % 6000
	} else {
		l[1] = $fa.counter.get
	}
	$obj.tr_rep[0] = math.timetable(l[1], 0, 64, [0, 1500, 128, 1], [1500, 3000, 64, 1])
}

//---------------------------------------------------------------------------
// 目眩オブジェクトを削除する
//---------------------------------------------------------------------------
command $$delete_dizzy_object(property $obj_bg : object, property $obj_chara : object)
{
	// 目眩エフェクト実行中フラグをオフにする
	$dizzy_flag = 0
	
	// 目眩オブジェクトのワイプコピーフラグをオフにする
	$obj_bg.wipe_copy = 0
	$obj_chara.wipe_copy = 0
}

//---------------------------------------------------------------------------
// 目眩オブジェクトの自動更新
//---------------------------------------------------------------------------
command $$auto_update_dizzy_object
{
	property $i
	
	// 目眩エフェクト実行中フラグがオフの場合は処理を終了する
	if( $dizzy_flag == 0 ) {
		return
	}
	
	back.object[<OBJ_EFFECT_DIZZY_BG>].create_copy_from(front.object[<OBJ_EFFECT_DIZZY_BG>])
	
	if( back.object[<OBJ_EFFECT_DIZZY_BG>].get_file_name != back.object[<OBJ_BG>].get_file_name )
	{
		back.object[<OBJ_EFFECT_DIZZY_BG>].change_file(back.object[<OBJ_BG>].get_file_name)
	}
	
	back.object[<OBJ_EFFECT_DIZZY_CHARACTER>].create_copy_from(front.object[<OBJ_EFFECT_DIZZY_CHARACTER>])
	
	for( $i = 0, $i < back.object[<OBJ_EFFECT_DIZZY_CHARACTER>].child.get_size, $i += 1 )
	{
		l[0] = $i + <OBJ_CHARACTER>
		
		if( back.object[l[0]].disp == 1 )
		{
			back.object[<OBJ_EFFECT_DIZZY_CHARACTER>].child[$i].create_copy_from(back.object[l[0]])
		}
		
		elseif( back.object[<OBJ_EFFECT_DIZZY_CHARACTER>].child[$i].disp == 1 && back.object[l[0]].disp == 0 )
		{
			back.object[<OBJ_EFFECT_DIZZY_CHARACTER>].child[$i].disp = 0
		}
	}
}

//-----------------------------------------------------------------
// 湯気オブジェクトを設定する
//-----------------------------------------------------------------
command $$set_steam_object(property $obj_bg : object, property $obj_screen : object, property $flip_vertical)
{
	// 背景の上、キャラクターの後ろ
	$obj_bg.create_movie_loop(ef_steam_b, 1)
	$obj_bg.layer = <LAYER_BG_FILTER>
	$obj_bg.wipe_copy = 1
	$$set_screen_scale($obj_bg)		// オブジェクトをウインドウサイズサイズに拡縮する
	
	// キャラクターの上
	$obj_screen.create_movie_loop(ef_steam_f, 1)
	$obj_screen.layer = <LAYER_ALL_FILTER>
	$obj_screen.wipe_copy = 1
	$$set_screen_scale($obj_screen)	// オブジェクトをウインドウサイズサイズに拡縮する
	
	// 上下反転フラグがオンの場合は上下反転する
	if( $flip_vertical )
	{
		$obj_bg.scale_y *= -1
		$obj_bg.y = <SCREEN_HEIGHT>
		$obj_screen.scale_y *= -1
		$obj_screen.y = <SCREEN_HEIGHT>
	}
}

//-----------------------------------------------------------------
// 煙オブジェクトを設定する
//-----------------------------------------------------------------
command $$set_smoke_object(property $obj_bg : object, property $obj_screen : object, property $flip_vertical)
{
	// 背景の上、キャラクターの後ろ
	$obj_bg.create_movie_loop(ef_smoke, 1)
	$obj_bg.layer = <LAYER_BG_FILTER>
	$obj_bg.wipe_copy = 1
	$$set_screen_scale($obj_bg)			// オブジェクトをウインドウサイズサイズに拡縮する
	
	// キャラクターの上
	$obj_screen.create_movie_loop(ef_smoke, 1)
	$obj_screen.layer = <LAYER_ALL_FILTER>
	$obj_screen.wipe_copy = 1
	$obj_screen.tr = 192
	$$set_screen_scale($obj_screen)		// オブジェクトをウインドウサイズサイズに拡縮する
	$obj_screen.scale_x *= -2			// 手前の煙は拡大して表示する
	$obj_screen.scale_y *= 2
	$obj_screen.x = <SCREEN_WIDTH>
	$obj_screen.seek_movie(500)			// ムービー開始位置を奥の煙とずらす
	
	// 上下反転フラグがオンの場合は上下反転する
	if( $flip_vertical )
	{
		$obj_bg.scale_y *= -1
		$obj_bg.y = <SCREEN_HEIGHT>
		$obj_screen.scale_y *= -1
		$obj_screen.y = <SCREEN_HEIGHT>
	}
}

//-----------------------------------------------------------------
// 霧(留まる)オブジェクトを設定する
//-----------------------------------------------------------------
command $$set_fogA_object(property $obj_bg : object, property $obj_screen : object)
{
	// 背景の上、キャラクターの後ろ
	$obj_bg.create_movie_loop(ef_fog01, 1)
	$obj_bg.layer = <LAYER_BG_FILTER>
	$obj_bg.wipe_copy = 1
	$obj_bg.tr = 192
	$$set_screen_scale($obj_bg)			// オブジェクトをウインドウサイズサイズに拡縮する
	
	// キャラクターの上
	$obj_screen.create_movie_loop(ef_fog01, 1)
	$obj_screen.layer = <LAYER_ALL_FILTER>
	$obj_screen.wipe_copy = 1
	$$set_screen_scale($obj_screen)		// オブジェクトをウインドウサイズサイズに拡縮する
	$obj_screen.scale_x *= 2			// 手前の霧は拡大して表示する
	$obj_screen.scale_y *= 2
	$obj_screen.seek_movie(500)			// ムービー開始位置を奥の煙とずらす
}

//-----------------------------------------------------------------
// 霧(流れる)オブジェクトを設定する
//-----------------------------------------------------------------
command $$set_fogB_object(property $obj_bg : object, property $obj_screen : object, property $flip_horizontal)
{
	// 背景の上、キャラクターの後ろ
	$obj_bg.create_movie_loop(ef_fog02, 1)
	$obj_bg.layer = <LAYER_BG_FILTER>
	$obj_bg.wipe_copy = 1
	$$set_screen_scale($obj_bg)		// オブジェクトをウインドウサイズサイズに拡縮する
	
	// キャラクターの上
	$obj_screen.create_movie_loop(ef_fog02, 1)
	$obj_screen.seek_movie(500)		// ムービー開始位置を奥の煙とずらす
	$obj_screen.layer = <LAYER_ALL_FILTER>
	$obj_screen.wipe_copy = 1
	$obj_screen.tr = 192
	$$set_screen_scale($obj_screen)	// オブジェクトをウインドウサイズサイズに拡縮する
	$obj_screen.scale_x *= 2		// 手前の靄は拡大して表示する
	$obj_screen.scale_y *= 2
	
	// 左右反転フラグがオンの場合は上下反転する
	if( $flip_horizontal )
	{
		$obj_bg.scale_x *= -1
		$obj_bg.x = <SCREEN_WIDTH>
		$obj_screen.scale_x *= -1
		$obj_screen.x = <SCREEN_WIDTH>
	}
}

//-----------------------------------------------------------------
// レンズフレアオブジェクトを設定する
//-----------------------------------------------------------------
command $$set_lens_flare_object(property $obj : object, property $type)
{
	$obj.create_movie(ef_sun + math.tostr_zero($type, 2), 1, auto_free = 0, ready_only = 1)
	$obj.layer = <LAYER_ALL_FILTER>
	$$set_screen_scale($obj)	// オブジェクトをウインドウサイズサイズに拡縮する
	$obj.resume_movie			// ムービーを再生する
}

//---------------------------------------------------------------------------
// スクリーンフィルターオブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_screen_filter_object(property $obj : object, property $red, property $green, property $blue, property $tr, property $layer)
{
	$obj.create_rect(0, 0, <SCREEN_WIDTH>, <SCREEN_HEIGHT>, $red, $green, $blue, $tr, 1)
	$obj.wipe_copy = 1
	$obj.layer = $layer
}

//-----------------------------------------------------------------
// シネマスコープオブジェクトを設定する
//-----------------------------------------------------------------
command $$set_cinemascope_object(property $obj : object, property $cinemascope_type, property $length, property $red, property $green, property $blue, property $tr, property $layer)
{
	$obj.init
	$obj.wipe_copy = 1
	$obj.layer = $layer
	
	// 子供オブジェクトを２つ確保する
	$$set_child_object($obj, 2)
	
	// 各映画帯を作成する
	switch( $cinemascope_type ) {
	
	// 水平
	case(<CINEMASCOPE_TYPE_HORIZONTAL>)
		
		// 上の帯
		$obj.child[0].create_rect(0, 0, <SCREEN_WIDTH>, $length, $red, $green, $blue, $tr, 1)
		
		// 下の帯
		$obj.child[1].create_rect(0, 0, <SCREEN_WIDTH>, $length, $red, $green, $blue, $tr, 1)
		$obj.child[1].y = <SCREEN_HEIGHT> - $length
		
	// 垂直
	case(<CINEMASCOPE_TYPE_VERTICAL>)
		
		// 左の帯
		$obj.child[0].create_rect(0, 0, $length, <SCREEN_HEIGHT>, $red, $green, $blue, $tr, 1)
		
		// 右の帯
		$obj.child[1].create_rect(0, 0, $length, <SCREEN_HEIGHT>, $red, $green, $blue, $tr, 1)
		$obj.child[1].x = <SCREEN_WIDTH> - $length
		
	default
		@dm("__lib_effect.ss → $$create_cinemascope_effect\n定義されていないシネマスコープタイプが選択されました。\nタイプ : " + math.tostr($cinemascope_type) + "\n処理をスキップします。")
		return
	}
	
	// オブジェクトにシネマスコープデータを設定する
	$obj.f.resize(<CINEMASCOPE_FLAG>)
	$obj.cinemascope_type   = $cinemascope_type
	$obj.cinemascope_length = $length
}

//-----------------------------------------------------------------
// シネマスコープ表示アニメーションを設定する
//-----------------------------------------------------------------
command $$set_cinemascope_show_animation(property $obj : object, property $time, property $start_time, property $speed_mode)
{
	property $cinemascope_type
	property $length
	
	// オブジェクトからシネマスコープデータを取得する
	$cinemascope_type = $obj.cinemascope_type
	$length = $obj.cinemascope_length
	
	switch( $cinemascope_type ) {
	
	// 水平
	case(<CINEMASCOPE_TYPE_HORIZONTAL>)
		
		$$set_pos_y_rep_eve($obj.child[0], 0, -$length, 0, $time, $start_time, $speed_mode)		// 上の帯
		$$set_pos_y_rep_eve($obj.child[1], 0,  $length, 0, $time, $start_time, $speed_mode)		// 下の帯
		
	// 垂直
	case(<CINEMASCOPE_TYPE_VERTICAL>)
		
		$$set_pos_x_rep_eve($obj.child[0], 0, -$length, 0, $time, $start_time, $speed_mode)		// 左の帯
		$$set_pos_x_rep_eve($obj.child[1], 0,  $length, 0, $time, $start_time, $speed_mode)		// 右の帯
		
	default
		@dm("__lib_effect.ss → $$cinemascope_object_show_animation\n定義されていないシネマスコープタイプが選択されました。\nタイプ : " + math.tostr($cinemascope_type) + "\n処理をスキップします。")
		return
	}
}

//-----------------------------------------------------------------
// シネマスコープ非表示アニメーションを設定する
//-----------------------------------------------------------------
command $$set_cinemascope_hide_animation(property $obj : object, property $time, property $start_time, property $speed_mode, property $wait)
{
	property $cinemascope_type
	property $length
	
	// オブジェクトからシネマスコープデータを取得する
	$cinemascope_type = $obj.cinemascope_type
	$length = $obj.cinemascope_length
	
	switch( $cinemascope_type ) {
	
	// 水平
	case(<CINEMASCOPE_TYPE_HORIZONTAL>)
		
		$$set_pos_y_rep_eve($obj.child[0], 0, 0, -$length, $time, $start_time, $speed_mode)		// 上の帯
		$$set_pos_y_rep_eve($obj.child[1], 0, 0,  $length, $time, $start_time, $speed_mode)		// 下の帯
		
		if( $wait ) {
			$obj.child[1].y_rep_eve[0].wait
		}
		
	// 垂直
	case(<CINEMASCOPE_TYPE_VERTICAL>)
		
		$$set_pos_x_rep_eve($obj.child[0], 0, 0, -$length, $time, $start_time, $speed_mode)		// 左の帯
		$$set_pos_x_rep_eve($obj.child[1], 0, 0,  $length, $time, $start_time, $speed_mode)		// 右の帯
		
		if( $wait ) {
			$obj.child[1].x_rep_eve[0].wait
		}
		
	default
		@dm("__lib_effect.ss → $$cinemascope_object_show_animation\n定義されていないシネマスコープタイプが選択されました。\nタイプ : " + math.tostr($cinemascope_type) + "\n処理をスキップします。")
		return
	}
}

//---------------------------------------------------------------------------
// フラッシュオブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_flash_object(property $obj : object, property $red, property $green, property $blue, property $tr, property $time, property $speed_mode, property $wait, property $layer)
{
	$obj.create_rect(0, 0, <SCREEN_WIDTH>, <SCREEN_HEIGHT>, $red, $green, $blue, $tr, 1)
	$obj.layer = $layer
	
	$$set_tr_eve($obj, 0, 255, $time / 2, 0, $speed_mode)
	$$set_tr_rep_eve($obj, 0, 255, 0, $time / 2, $time / 2, $speed_mode)
	
	// ウェイト待ちが設定されている場合は待つ
	if( $wait ) {
		$obj.tr_rep_eve[0].wait_key
	}
}
