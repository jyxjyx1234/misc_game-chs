//===========================================================================
//!
//!    @file     __ui_slider.ss
//!    @brief    スライダーＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// スライダーを作成する
//---------------------------------------------------------------------------
command $$create_ui_slider(property $obj : object, property $filename : str, property $x, property $y, property $bg_button_no, property $handle_button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y, property $direction, property $value, property $value_min, property $value_max)
{
	// 子供オブジェクトの確保、座標の設定
	$obj.init
	$obj.disp = 1
	$obj.wipe_copy = 1
	$obj.child.resize(<UI_SLIDER_CHILD_MAX>)
	$obj.set_pos($x, $y)
	
	// 背景を作成する
	$obj.ui_slider_bg.create($filename + "_bg", 1)
	$obj.ui_slider_bg.set_button($bg_button_no, $button_group_no, 2, $button_se_no)
	$obj.ui_slider_bg.set_button_pushkeep(1)
	
	// オーバーレイを作成する
	$obj.ui_slider_overlay.create($filename + "_overlay", 1, $overlay_x, $overlay_y)
	$obj.ui_slider_overlay.set_src_clip(1, 0, 0, $obj.ui_slider_overlay.get_size_x, $obj.ui_slider_overlay.get_size_y)
	
	// ハンドルを作成する
	$obj.ui_slider_handle.create($filename + "_handle", 1)
	$obj.ui_slider_handle.set_button($handle_button_no, $button_group_no, 1, $button_se_no)
	$obj.ui_slider_handle.set_button_pushkeep(1)
	$obj.ui_slider_handle.x_rep.resize(1)
	$obj.ui_slider_handle.y_rep.resize(1)
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_SLIDER_F_FLAG_MAX>)				// 汎用フラグを確保する
	$obj.type = <UI_TYPE_SLIDER>						// ＵＩタイプをスライダーにする
	$obj.f_slider_direction = $direction				// スライダーの向きを設定する
	$obj.f_slider_value_min = $value_min				// 値の最小値を設定する
	$obj.f_slider_value_max = $value_max				// 値の最大値を設定する
	$obj.f_slider_anim_flag = __UI_SLIDER_ANIMATION							// ＵＩ選択時のアニメーションフラグを設定する
	$obj.f_slider_decide_anim_rate = __UI_SLIDER_DECIDE_ANIMATION_RATE		// ＵＩ選択成功時のアニメーションの基本明るさを設定する
	$obj.f_slider_decide_anim_time = __UI_SLIDER_DECIDE_ANIMATION_TIME		// ＵＩ選択成功時のアニメーションにかける時間を設定する
	$obj.f_slider_cancel_anim_rate = __UI_SLIDER_CANCEL_ANIMATION_RATE		// ＵＩ選択失敗時のアニメーションの基本暗さを設定する
	$obj.f_slider_cancel_anim_time = __UI_SLIDER_CANCEL_ANIMATION_TIME		// ＵＩ選択失敗時のアニメーションにかける時間を設定する
	$obj.f_slider_step_interval = __UI_SLIDER_STEP_INTERVAL		// スライダーのステップ間隔を設定する
	
	// スライダーの向きによって表示矩形を変更する
	if( $obj.f_slider_direction == <SLIDER_DIRECTION_UD> || $obj.f_slider_direction == <SLIDER_DIRECTION_DU> )
	{
		// 上から下(↓)、下から上(↑)の場合
		$obj.f_slider_clip_min = $obj.ui_slider_overlay.y - $obj.ui_slider_handle.get_size_y / 2					// 表示矩形の最小値を設定する
		$obj.f_slider_clip_max = $obj.f_slider_clip_min + $obj.ui_slider_overlay.get_size_y							// 表示矩形の最大値を設定する
		$obj.ui_slider_handle.x_rep[0] = -($obj.ui_slider_handle.get_size_x - $obj.ui_slider_bg.get_size_x) / 2		// ハンドルの補正座標を設定する
	}
	elseif( $obj.f_slider_direction == <SLIDER_DIRECTION_LR> || $obj.f_slider_direction == <SLIDER_DIRECTION_RL> )
	{
		// 左から右(→)、右から左(←)の場合
		$obj.f_slider_clip_min = $obj.ui_slider_overlay.x - $obj.ui_slider_handle.get_size_x / 2 					// 表示矩形の最小値を設定する
		$obj.f_slider_clip_max = $obj.f_slider_clip_min + $obj.ui_slider_overlay.get_size_x							// 表示矩形の最大値を設定する
		$obj.ui_slider_handle.y_rep[0] = -($obj.ui_slider_handle.get_size_y - $obj.ui_slider_bg.get_size_y) / 2		// ハンドルの補正座標を設定する
	}
	
	// 描画を更新する
	$$update_ui_slider($obj, $value)
	
	// フレームアクションの実行
	$obj.frame_action.start(-1, "$$fa_ui_slider")
}

//---------------------------------------------------------------------------
// スライダーの描画を更新する
//---------------------------------------------------------------------------
command $$update_ui_slider(property $obj : object, property $value)
{
	// 指定された値をスクロールバーに反映する
	switch( $obj.f_slider_direction ) {
		
	// 上から下(↓)
	case(<SLIDER_DIRECTION_UD>)
		$obj.ui_slider_handle.y_rep[0] = math.linear($value, $obj.f_slider_value_min, $obj.f_slider_clip_min, $obj.f_slider_value_max, $obj.f_slider_clip_max)	// ハンドルの座標を設定する
		$obj.ui_slider_overlay.src_clip_bottom = $obj.ui_slider_handle.y_rep[0] + $obj.ui_slider_handle.get_size_y / 2											// オーバーレイの表示矩形を設定する
		
	// 下から上(↑)
	case(<SLIDER_DIRECTION_DU>)
		$obj.ui_slider_handle.y_rep[0] = math.linear($value, $obj.f_slider_value_max, $obj.f_slider_clip_min, $obj.f_slider_value_min, $obj.f_slider_clip_max)	// ハンドルの座標を設定する
		$obj.ui_slider_overlay.src_clip_top = $obj.ui_slider_handle.y_rep[0] + $obj.ui_slider_handle.get_size_y / 2												// オーバーレイの表示矩形を設定する
		
	// 左から右(→)
	case(<SLIDER_DIRECTION_LR>)
		$obj.ui_slider_handle.x_rep[0] = math.linear($value, $obj.f_slider_value_min, $obj.f_slider_clip_min, $obj.f_slider_value_max, $obj.f_slider_clip_max)	// ハンドルの座標を設定する
		$obj.ui_slider_overlay.src_clip_right = $obj.ui_slider_handle.x_rep[0] + $obj.ui_slider_handle.get_size_x / 2											// オーバーレイの表示矩形を設定する
		
	// 右から左(←)
	case(<SLIDER_DIRECTION_RL>)
		$obj.ui_slider_handle.x_rep[0] = math.linear($value, $obj.f_slider_value_max, $obj.f_slider_clip_min, $obj.f_slider_value_min, $obj.f_slider_clip_max)	// ハンドルの座標を設定する
		$obj.ui_slider_overlay.src_clip_left = $obj.ui_slider_handle.x_rep[0] + $obj.ui_slider_handle.get_size_x / 2											// オーバーレイの表示矩形を設定する
	}
}

//---------------------------------------------------------------------------
// スライダーのフレームアクション
//---------------------------------------------------------------------------
command $$fa_ui_slider(property $fa : frameaction, property $obj : object)
{
	// スライダーの値変更フラグを初期化する
	$obj.f_slider_on_value_changed = 0
	
	// スライダーのボタンが押されている場合はスライダーの位置を更新する
	if( $$get_pushed_btn == $obj.ui_slider_bg.get_button_no || $$get_pushed_btn == $obj.ui_slider_handle.get_button_no )
	{
		// 描画を更新する
		$$update_ui_slider($obj, $$get_ui_slider_pushed_value($obj))
		
		// スライダーの値変更フラグを設定する
		$obj.f_slider_on_value_changed = 1
	}
	
	// ゲームパッドで選択している場合はパッド選択状態＋マウスオンと同じにする
	if( syscom.check_joypad_mode == 1 && $$get_joypad_focus_button == $obj.ui_slider_bg.get_button_no )
	{
		$obj.ui_slider_bg.patno = 5
		$obj.ui_slider_overlay.patno = 1
		$obj.ui_slider_handle.patno = 1
	}
	
	// バーをマウスオーバーした場合はバーのみをマウスオンにする(ハンドルはマウスオンにしない)
	elseif( $obj.ui_slider_bg.get_button_real_state == 1 )
	{
		$obj.ui_slider_bg.patno = 1
		$obj.ui_slider_overlay.patno = 1
		$obj.ui_slider_handle.patno = 0
	}
	
	// バーをマウスクリックした場合はハンドルもマウスクリックにする
	elseif( $obj.ui_slider_bg.get_button_real_state == 2 )
	{
		$obj.ui_slider_bg.patno = 2
		$obj.ui_slider_overlay.patno = 2
		$obj.ui_slider_handle.patno = 2
	}
	
	// ハンドルをマウスクリックした場合はバーもマウスクリックにする
	elseif( $obj.ui_slider_handle.get_button_real_state == 2 )
	{
		$obj.ui_slider_bg.patno = 2
		$obj.ui_slider_overlay.patno = 2
		$obj.ui_slider_handle.patno = 0
	}
	
	// それ以外は通常に戻す
	else
	{
		$obj.ui_slider_bg.patno = 0
		$obj.ui_slider_overlay.patno = 0
		$obj.ui_slider_handle.patno = 0
	}
}

//---------------------------------------------------------------------------
// スライダーの値を減少させる(ステップ間隔を利用)
//---------------------------------------------------------------------------
command $$prev_step_ui_slider(property $obj : object) : int
{
	property $value
	
	// 現在のスライダーの値を取得する
	$value = $$get_ui_slider_value($obj)
	
	// 減少処理が範囲外になる場合は終了する
	if( $value <= $obj.f_slider_value_min )
	{
		// アニメーション処理を行う
		if( $obj.f_slider_anim_flag ) {
			$obj.mono = $obj.f_slider_cancel_anim_rate
			$obj.mono_eve.set(0, $obj.f_slider_cancel_anim_time, 0, 1)
		}
		
		return (1)
	}
	
	// 減少値を計算する
	$value = math.limit($obj.f_slider_value_min, $value - (($obj.f_slider_value_max - $obj.f_slider_value_min) / $obj.f_slider_step_interval), $obj.f_slider_value_max)
	
	// 描画を更新する
	$$update_ui_slider($obj, $value)
	
	// アニメーション処理を行う
	if( $obj.f_slider_anim_flag ) {
		$obj.bright = $obj.f_slider_decide_anim_rate
		$obj.bright_eve.set(0, $obj.f_slider_decide_anim_time, 0, 0)
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// スライダーの値を増加させる(ステップ間隔を利用)
//---------------------------------------------------------------------------
command $$next_step_ui_slider(property $obj : object) : int
{
	property $value
	
	// 現在のスライダーの値を取得する
	$value = $$get_ui_slider_value($obj)
	
	// 増加処理が範囲外になる場合は終了する
	if( $obj.f_slider_value_max <= $value )
	{
		// アニメーション処理を行う
		if( $obj.f_slider_anim_flag ) {
			$obj.mono = $obj.f_slider_cancel_anim_rate
			$obj.mono_eve.set(0, $obj.f_slider_cancel_anim_time, 0, 1)
		}
		
		return (1)
	}
	
	// 増加値を計算する
	$value = math.limit($obj.f_slider_value_min, $value + (($obj.f_slider_value_max - $obj.f_slider_value_min) / $obj.f_slider_step_interval), $obj.f_slider_value_max)
	
	// 描画を更新する
	$$update_ui_slider($obj, $value)
	
	// アニメーション処理を行う
	if( $obj.f_slider_anim_flag ) {
		$obj.bright = $obj.f_slider_decide_anim_rate
		$obj.bright_eve.set(0, $obj.f_slider_decide_anim_time, 0, 0)
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// スライダーの現在値を取得する
//---------------------------------------------------------------------------
command $$get_ui_slider_value(property $obj : object) : int
{
	property $value
	
	// スライダーの向きによって値を変更する
	if( $obj.f_slider_direction == <SLIDER_DIRECTION_UD> || $obj.f_slider_direction == <SLIDER_DIRECTION_DU> )
	{
		// 上から下(↓)、下から上(↑)の場合
		$value = math.linear($obj.ui_slider_handle.y_rep[0], $obj.f_slider_clip_min, $obj.f_slider_value_min, $obj.f_slider_clip_max, $obj.f_slider_value_max)
	}
	elseif( $obj.f_slider_direction == <SLIDER_DIRECTION_LR> || $obj.f_slider_direction == <SLIDER_DIRECTION_RL> )
	{
		// 左から右(→)、右から左(←)の場合
		$value = math.linear($obj.ui_slider_handle.x_rep[0], $obj.f_slider_clip_min, $obj.f_slider_value_min, $obj.f_slider_clip_max, $obj.f_slider_value_max)
	}
	
	return ($value)
}

//---------------------------------------------------------------------------
// スライダーがマウスによって押されている場合の現在値を取得する
//---------------------------------------------------------------------------
command $$get_ui_slider_pushed_value(property $obj : object) : int
{
	property $clip_pos
	property $mouse_pos
	
	// スクロールバーの向きによって描画を変更する
	switch( $obj.f_slider_direction ) {
	case(<SLIDER_DIRECTION_UD>)		// 上から下(↓)
		$mouse_pos = mouse.get_pos_y - $obj.y - $obj.f_slider_clip_offset - $obj.ui_slider_handle.get_size_y / 2
		$clip_pos = math.limit($obj.f_slider_clip_min, $mouse_pos, $obj.f_slider_clip_max)
	case(<SLIDER_DIRECTION_DU>)		// 下から上(↑)
		$mouse_pos = mouse.get_pos_y - $obj.y - $obj.f_slider_clip_offset - $obj.ui_slider_handle.get_size_y / 2
		$clip_pos = $obj.f_slider_clip_max - math.limit($obj.f_slider_clip_min, $mouse_pos, $obj.f_slider_clip_max) + $obj.f_slider_clip_min
	case(<SLIDER_DIRECTION_LR>)		// 左から右(→)
		$mouse_pos = mouse.get_pos_x - $obj.x - $obj.f_slider_clip_offset - $obj.ui_slider_handle.get_size_x / 2
		$clip_pos = math.limit($obj.f_slider_clip_min, $mouse_pos, $obj.f_slider_clip_max)
	case(<SLIDER_DIRECTION_RL>)		// 右から左(←)
		$mouse_pos = mouse.get_pos_x - $obj.x - $obj.f_slider_clip_offset - $obj.ui_slider_handle.get_size_x / 2
		$clip_pos = $obj.f_slider_clip_max - math.limit($obj.f_slider_clip_min, $mouse_pos, $obj.f_slider_clip_max) + $obj.f_slider_clip_min
	}
	
	return (math.linear($clip_pos, $obj.f_slider_clip_min, $obj.f_slider_value_min, $obj.f_slider_clip_max, $obj.f_slider_value_max))
}
