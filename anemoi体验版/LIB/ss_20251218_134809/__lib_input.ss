//===========================================================================
//!
//!    @file     __lib_input.ss
//!    @brief    入力制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	#property	$hit_btn			// 当たっているボタン
	#property	$pushed_btn			// 押されているボタン
	#property	$mouse_wheel_type	// マウスホイールタイプ(ホイールの方向)
	#property	$flick_type			// フリックタイプ(フリックの方向)

#inc_end


#z00

//---------------------------------------------------------------------------
// 入力制御を開始する
//---------------------------------------------------------------------------
command $$input_start(property $stage : stage, property $btn_group_no)
{
	input.clear
	$stage.objbtngroup[$btn_group_no].start_cancel
}

//---------------------------------------------------------------------------
// 入力制御を更新する
//---------------------------------------------------------------------------
command $$input_update(property $stage : stage, property $btn_group_no)
{
	property $select_btn	// 選択されたボタン番号
	
	// ジョイパッドの更新
	$select_btn = $$update_joypad($stage)
	
	// ジョイパッドモードがオフの場合はボタングループから取得する
	if( syscom.check_joypad_mode == 0 ) {
		$hit_btn    = $stage.objbtngroup[$btn_group_no].get_hit_no
		$pushed_btn = $stage.objbtngroup[$btn_group_no].get_pushed_no
		$select_btn = $stage.objbtngroup[$btn_group_no].get_decided_no
	}
	
	// マウスホイールタイプを取得する
	if( mouse.wheel < 0 )
	{
		$mouse_wheel_type = <MOUSE_WHEEL_TYPE_UP>
	}
	elseif( mouse.wheel > 0 )
	{
		$mouse_wheel_type = <MOUSE_WHEEL_TYPE_DOWN>
	}
	else
	{
		$mouse_wheel_type = <MOUSE_WHEEL_TYPE_NONE>
	}
	
	// フリックタイプを取得する
	if( mouse.left.on_flick == 1 )
	{
		if( 3150 < mouse.left.get_flick_angle || mouse.left.get_flick_angle <= 450 )
		{
			$flick_type = <FLICK_TYPE_UP>
		}
		elseif( 450 < mouse.left.get_flick_angle && mouse.left.get_flick_angle <= 1350 )
		{
			$flick_type = <FLICK_TYPE_RIGHT>
		}
		elseif( 1350 < mouse.left.get_flick_angle && mouse.left.get_flick_angle <= 2250 )
		{
			$flick_type = <FLICK_TYPE_DOWN>
		}
		elseif( 2250 < mouse.left.get_flick_angle && mouse.left.get_flick_angle <= 3150 )
		{
			$flick_type = <FLICK_TYPE_LEFT>
		}
	}
	else
	{
		$flick_type = <FLICK_TYPE_NONE>
	}
	
	return ($select_btn)
}

//---------------------------------------------------------------------------
// 当たっているボタンを取得する
//---------------------------------------------------------------------------
command $$get_hit_btn : int
{
	return ($hit_btn)
}

//---------------------------------------------------------------------------
// 押されているボタンを取得する
//---------------------------------------------------------------------------
command $$get_pushed_btn : int
{
	return ($pushed_btn)
}

//---------------------------------------------------------------------------
// マウスホイールタイプを取得する
//---------------------------------------------------------------------------
command $$get_mouse_wheel_type : int
{
	return ($mouse_wheel_type)
}

//---------------------------------------------------------------------------
// フリックタイプを取得する
//---------------------------------------------------------------------------
command $$get_flick_type : int
{
	return ($flick_type)
}

//---------------------------------------------------------------------------
// 指定したボタンが当たっているかどうかを取得する
//---------------------------------------------------------------------------
command $$is_focused_on_btn(property $button_no)
{
	if( $$get_hit_btn == $button_no || $$get_joypad_focus_button == $button_no ) {
		return (1)
	}
	
	return (0)
}
