//===========================================================================
//!
//!    @file     __ui_scrollview.ss
//!    @brief    スクロールビューＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// スクロールビューを作成する
//---------------------------------------------------------------------------
command $$create_ui_scrollview(property $obj : object, property $filename : str, property $x, property $y, property $group_no, property $top_obj : object, property $bottom_obj : object, property $mask_size_y, property $scrollbar_x, property $scrollbar_y, property $bg_button_no, property $handle_button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	// 子供オブジェクトの確保、座標の設定
	$obj.init
	$obj.disp = 1
	$obj.wipe_copy = 1
	$obj.child.resize(<UI_SCROLLVIEW_CHILD_MAX>)
	$obj.set_pos($x, $y)
	
	// 背景を作成する
	$obj.ui_scview_bg.create($filename + "_bg", 1)
	$obj.ui_scview_bg.f.resize(<UI_F_FLAG_MAX>)
	$$set_ui_scrollview_group($obj.ui_scview_bg, $group_no)
	
	// マスクを作成する
	mask[$group_no].init
	mask[$group_no].create($filename + "_mask")
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_SCROLLVIEW_F_FLAG_MAX>)						// 汎用フラグを確保する
	$obj.type = <UI_TYPE_SCROLLVIEW>								// ＵＩタイプをスクロールビューにする
	$obj.group_no = $group_no										// ＵＩグループを設定する
	$obj.f_scview_sensitivity = __UI_SCROLLVIEW_SENSITIVITY				// スクロール感度を設定する
	$obj.f_scview_flick_sensitivity = __UI_SCROLLVIEW_FLICK_SENSITIVITY	// フリック操作時のスクロール感度を設定する
	$obj.f_scview_scroll_time = __UI_SCROLLVIEW_SCROLL_TIME				// スクロールにかける時間を設定する
	$obj.f_scview_scroll_margin = __UI_SCROLLVIEW_MARGIN				// スクロール範囲のマージンを設定する
	$obj.f_scview_enable = 1											// スクロール機能を有効にする
	
	// スクロール範囲を設定する
	$obj.f_scview_top_y = $top_obj.y
	$obj.f_scview_mask_size_y = $mask_size_y
	$obj.f_scview_bottom_size_y = $bottom_obj.y + $$get_system_ui_get_size_y($bottom_obj)
	$obj.f_scview_scroll_range = $obj.f_scview_mask_size_y - $obj.f_scview_bottom_size_y - $obj.f_scview_scroll_margin
	
	// スクロールバーを作成する
	$$create_ui_slider($obj.ui_scview_scrollbar, $filename + "_scrollbar", $scrollbar_x, $scrollbar_y, $bg_button_no, $handle_button_no, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_UD>, 0, 0, $obj.f_scview_scroll_range)
	$obj.ui_scview_scrollbar.f_slider_clip_offset = $obj.y
	
	// フレームアクションの実行
	$obj.frame_action.start(-1, "$$fa_ui_scrollview")
}

//---------------------------------------------------------------------------
// スクロールビューのフレームアクション
//---------------------------------------------------------------------------
command $$fa_ui_scrollview(property $fa : frameaction, property $obj : object)
{
	property $input_flag
	
	// 無効フラグの場合は処理をしない
	if( $obj.f_scview_enable == 0 ) {
		return
	}
	
	if( $obj.ui_scview_scrollbar.f_slider_on_value_changed )
	{
		$obj.f_scview_now_y = $$get_ui_slider_value($obj.ui_scview_scrollbar)
		$obj.f_scview_target_y = $obj.f_scview_now_y
		$$update_ui_slider($obj.ui_scview_scrollbar, $obj.f_scview_target_y)
		
		return
	}
	
	if( $obj.ui_scview_scrollbar.f_slider_scroll_init == 1 )
	{
		$obj.f_scview_target_y = 0
		$obj.ui_scview_scrollbar.f_slider_scroll_init = 0
		$obj.f_scview_target_obj_no = -1
		
		$input_flag = 1
	}
	
	// マウスホイール入力がある場合
	if( $$get_mouse_wheel_type == <MOUSE_WHEEL_TYPE_DOWN> )
	{
		$obj.f_scview_target_y -= $obj.f_scview_sensitivity
		$obj.f_scview_target_obj_no = -1
		
		$input_flag = 1
	}
	elseif( $$get_mouse_wheel_type == <MOUSE_WHEEL_TYPE_UP> )
	{
		$obj.f_scview_target_y += $obj.f_scview_sensitivity
		$obj.f_scview_target_obj_no = -1
		
		$input_flag = 1
	}
	
	// トリガー入力がある場合
	if( $obj.f_scview_trigger_scroll == <MOUSE_WHEEL_TYPE_DOWN> )
	{
		$obj.f_scview_target_y -= $obj.f_scview_sensitivity
		
		$input_flag = 1
		$obj.f_scview_trigger_scroll = 0
	}
	elseif( $obj.f_scview_trigger_scroll == <MOUSE_WHEEL_TYPE_UP> )
	{
		$obj.f_scview_target_y += $obj.f_scview_sensitivity
		
		$input_flag = 1
		$obj.f_scview_trigger_scroll = 0
	}
	
	// フリック入力がある場合
	if( $$get_flick_type == <FLICK_TYPE_UP> )
	{
		$obj.f_scview_target_y -= $obj.f_scview_sensitivity * mouse.left.get_flick_pixel * $obj.f_scview_flick_sensitivity / 20000
		$obj.f_scview_target_obj_no = -1
		
		$input_flag = 1
	}
	elseif( $$get_flick_type == <FLICK_TYPE_DOWN> )
	{
		$obj.f_scview_target_y += $obj.f_scview_sensitivity * mouse.left.get_flick_pixel * $obj.f_scview_flick_sensitivity / 20000
		$obj.f_scview_target_obj_no = -1
		
		$input_flag = 1
	}
	
	// フォーカスボタンされているボタンが選択中のボタンと違う場合、フォーカスボタンを目標にする
	if( system.check_active == 1 && syscom.check_joypad_mode == 1 && $obj.f_scview_target_obj_no != $$get_joypad_focus_button )
	{
		$obj.f_scview_target_obj_no = $$get_joypad_focus_button
		
		if( excall[excall.is_excall].front.object[$obj.f_scview_target_obj_no].f.get_size > 0 )
		{
			if( $obj.group_no == excall[excall.is_excall].front.object[$obj.f_scview_target_obj_no].group_no )
			{
				$obj.f_scview_target_y = $obj.f_scview_top_y - excall[excall.is_excall].front.object[$obj.f_scview_target_obj_no].y
				
				$input_flag = 1
			}
		}
	}
	
	// 何らかの入力があった場合
	if( $input_flag == 1 )
	{
		$obj.f_scview_start_y = $obj.f_scview_now_y
		$obj.f_scview_target_y = math.limit($obj.f_scview_scroll_range, $obj.f_scview_target_y, 0)
		
		$obj.f_scview_start_time = $fa.counter.get
		$obj.f_scview_now_time = $obj.f_scview_start_time
		$obj.f_scview_target_time = $obj.f_scview_start_time + $obj.f_scview_scroll_time
	}
	
	// 目標座標と現在の座標が違う場合はスクロール処理を行う
	if( $obj.f_scview_target_y != $obj.f_scview_now_y )
	{
		if( $obj.f_scview_now_time < $obj.f_scview_target_time ) {
			$obj.f_scview_now_time = $fa.counter.get
		}
		if( $obj.f_scview_target_time < $obj.f_scview_now_time ) {
			$obj.f_scview_now_time = $obj.f_scview_target_time
		}
		
		$obj.f_scview_now_y = math.timetable($obj.f_scview_now_time, 0, $obj.f_scview_start_y, [$obj.f_scview_start_time, $obj.f_scview_target_time, $obj.f_scview_target_y, 2])
		
		$$update_ui_slider($obj.ui_scview_scrollbar, $obj.f_scview_target_y)
	}
}

//---------------------------------------------------------------------------
// スクロールビューのスクロール範囲のマージンを設定する
//---------------------------------------------------------------------------
command $$set_ui_scrollview_margin(property $obj : object, property $margin)
{
	// マージンを設定する
	$obj.f_scview_scroll_margin = $margin
	
	// スクロール範囲を設定する
	$obj.f_scview_scroll_range = $obj.f_scview_mask_size_y - $obj.f_scview_bottom_size_y - $obj.f_scview_scroll_margin
	
	// スクロールバーの設定をする
	$obj.ui_scview_scrollbar.f_slider_value_max = $obj.f_scview_scroll_range
}

//---------------------------------------------------------------------------
// 指定したオブジェクトをスクロールビューのグループとして設定する
//---------------------------------------------------------------------------
command $$set_ui_scrollview_group(property $obj : object, property $group_no)
{
	$obj.group_no = $group_no
	$obj.mask_no  = $group_no
	
	$obj.y_rep.resize(1)
	
	$obj.frame_action_ch.resize(1)
	$obj.frame_action_ch[0].start(-1, "$$fa_ui_scrollview_group", $group_no)
	
	// スクロールビュー外のボタンは反応しないようにする
	if( $obj.type == <UI_TYPE_BUTTON> || $obj.type == <UI_TYPE_TOGGLE_BUTTON> || $obj.type == <UI_TYPE_SELECTABLE_BUTTON> || $obj.type == <UI_TYPE_SLIDER> || $obj.type == <UI_TYPE_SELECTBOX> )
	{
		if( $obj.y + $obj.y_rep[0] + $$get_system_ui_get_size_y($obj) < excall[excall.is_excall].back.object[$group_no].f_scview_top_y || excall[excall.is_excall].back.object[$group_no].f_scview_top_y + excall[excall.is_excall].back.object[$group_no].f_scview_mask_size_y < $obj.y + $obj.y_rep[0] )
		{
			$obj.disp = 0
		}
	}
}

//---------------------------------------------------------------------------
// スクロールビューグループ内オブジェクトのフレームアクション
//---------------------------------------------------------------------------
command $$fa_ui_scrollview_group(property $fa : frameaction, property $obj : object, property $group_no)
{
	// スクロールビューが表示されていないときは処理しない
	if( excall[excall.is_excall].front.object[$group_no].disp == 0 ) {
		return
	}
	
	// 無効フラグの場合は処理をしない
	if( excall[excall.is_excall].front.object[$group_no].f_scview_enable == 0 ) {
		return
	}
	
	// オブジェクトのスクロール座標とスクロールビューの座標が一致している場合は処理しない
	if( $obj.y_rep[0] == excall[excall.is_excall].front.object[$group_no].f_scview_now_y ) {
		return
	}
	
	// オブジェクトのスクロール処理を行う
	$obj.y_rep[0] = excall[excall.is_excall].front.object[$group_no].f_scview_now_y
	
	// ＵＩがセレクトボックスの場合は表示矩形も変更する
	if( $obj.type == <UI_TYPE_SELECTBOX> )
	{
		$obj.ui_slbox_list.clip_top = $obj.f_slbox_clip_top + $obj.y_rep[0]
		$obj.ui_slbox_list.clip_bottom = $obj.f_slbox_clip_bottom + $obj.y_rep[0]
	}
	
	// スクロールビュー外のボタンは反応しないようにする
	if( $obj.type == <UI_TYPE_BUTTON> || $obj.type == <UI_TYPE_TOGGLE_BUTTON> || $obj.type == <UI_TYPE_SELECTABLE_BUTTON> || $obj.type == <UI_TYPE_SLIDER> || $obj.type == <UI_TYPE_SELECTBOX> )
	{
		if( $obj.y + $obj.y_rep[0] + $$get_system_ui_get_size_y($obj) < excall[excall.is_excall].front.object[$group_no].f_scview_top_y || excall[excall.is_excall].front.object[$group_no].f_scview_top_y + excall[excall.is_excall].front.object[$group_no].f_scview_mask_size_y < $obj.y + $obj.y_rep[0] )
		{
			if( $obj.disp == 1 )
			{
				$obj.disp = 0
			}
		}
		else
		{
			if( $obj.disp == 0 )
			{
				$obj.disp = 1
			}
		}
	}
}

//---------------------------------------------------------------------------
// スクロールの外部入力トリガーを実行する
//---------------------------------------------------------------------------
command $$trigger_ui_scrollview_scroll(property $obj : object, property $scroll_type)
{
	$obj.f_scview_trigger_scroll = $scroll_type
}
