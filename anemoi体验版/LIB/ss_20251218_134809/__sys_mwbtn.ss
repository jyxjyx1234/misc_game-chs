//===========================================================================
//!
//!    @file     __sys_mwnd_btn.ss
//!    @brief     メッセージウィンドウボタン制御
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     アプリケーションに依存しないシステムの共通処理
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start
	
	#property	$mwnd_no			// 使用中のメッセージウィンドウ
	
#inc_end

#z00

//---------------------------------------------------------------------------
// メッセージウィンドウボタンの制御を開始する
//---------------------------------------------------------------------------
command $$fa_mwbtn(property $fa : frameaction)
{
	property $i
	property $check
	
	// アクティブでないときは処理を終了する
	if( system.check_active == 0 ) {
		return
	}
	
	// タブレットモードの場合は処理を終了する
	if( <TABLET_MODE> ) {
		return
	}
	
	// 有効なメッセージウィンドウかチェックする
	for( $i = __MWBTN_LOCK_MWND_NO_START, $i <= __MWBTN_LOCK_MWND_NO_END, $i += 1 )
	{
		if( get_mwnd == $i ) {
			$check = 1
			break
		}
	}
	
	// 有効なメッセージウィンドウでない場合は処理を終了する
	if( $check == 0 ) {
		return
	}
	
	// メッセージウィンドウが変更されている場合は描画を更新する
	if( $mwnd_no != get_mwnd )
	{
		$$update_mwbtn
		$mwnd_no = get_mwnd
	}
	
	// type1(下消去)が有効の場合
	if( __MWBTN_LOCK_TYPE1_ENABLE )
	{
		// ロック中の場合
		if( <MWBTN_LOCK_TYPE1> )
		{
			if( front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN_START].y != 0)
			{
				for( $i = __MWBTN_LOCK_TYPE1_BTN_START, $i <= __MWBTN_LOCK_TYPE1_BTN_END, $i += 1 )
				{
					front.mwnd[get_mwnd].button[$i].y = 0
				}
			}
		}
		
		// ロック中でない場合
		else
		{
			if( mouse.get_pos_x < __MWBTN_LOCK_TYPE1_RECT_X && mouse.get_pos_y > __MWBTN_LOCK_TYPE1_RECT_Y )
			{
				if( front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN_START].y == __MWBTN_LOCK_TYPE1_HIDE_Y && front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN_START].y_eve.check == 0 )
				{
					for( $i = __MWBTN_LOCK_TYPE1_BTN_START, $i <= __MWBTN_LOCK_TYPE1_BTN_END, $i += 1 )
					{
						front.mwnd[get_mwnd].button[$i].y_eve.set_real(0, __MWBTN_LOCK_TYPE1_SHOW_TIME, 0, 0)
					}
				}
			}
			elseif( mouse.get_pos_x >= __MWBTN_LOCK_TYPE1_RECT_X || mouse.get_pos_y <= __MWBTN_LOCK_TYPE1_RECT_Y && front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN_START].y_eve.check == 0 )
			{
				if( front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN_START].y == 0 )
				{
					for( $i = __MWBTN_LOCK_TYPE1_BTN_START, $i <= __MWBTN_LOCK_TYPE1_BTN_END, $i += 1 )
					{
						front.mwnd[get_mwnd].button[$i].y_eve.set_real(__MWBTN_LOCK_TYPE1_HIDE_Y, __MWBTN_LOCK_TYPE1_HIDE_TIME, 0, 0)
					}
				}
			}
		}
	}
	
	// type2(右消去)が有効の場合
	if( __MWBTN_LOCK_TYPE2_ENABLE )
	{
		// ロック中の場合
		if( <MWBTN_LOCK_TYPE2> )
		{
			if( front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN_START].x != 0)
			{
				for( $i = __MWBTN_LOCK_TYPE2_BTN_START, $i <= __MWBTN_LOCK_TYPE2_BTN_END, $i += 1 )
				{
					front.mwnd[get_mwnd].button[$i].x = 0
				}
			}
		}
		
		// ロック中でない場合
		else
		{
			if( mouse.get_pos_x > __MWBTN_LOCK_TYPE2_RECT_X && mouse.get_pos_y > __MWBTN_LOCK_TYPE2_RECT_Y )
			{
				if( front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN_START].x == __MWBTN_LOCK_TYPE2_HIDE_X && front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN_START].x_eve.check == 0 )
				{
					for( $i = __MWBTN_LOCK_TYPE2_BTN_START, $i <= __MWBTN_LOCK_TYPE2_BTN_END, $i += 1 )
					{
						front.mwnd[get_mwnd].button[$i].x_eve.set_real(0, __MWBTN_LOCK_TYPE2_SHOW_TIME, 0, 0)
					}
				}
			}
			elseif( mouse.get_pos_x <= __MWBTN_LOCK_TYPE2_RECT_X || mouse.get_pos_y <= __MWBTN_LOCK_TYPE2_RECT_Y )
			{
				if( front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN_START].x == 0 && front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN_START].x_eve.check == 0 )
				{
					for( $i = __MWBTN_LOCK_TYPE2_BTN_START, $i <= __MWBTN_LOCK_TYPE2_BTN_END, $i += 1 )
					{
						front.mwnd[get_mwnd].button[$i].x_eve.set_real(__MWBTN_LOCK_TYPE2_HIDE_X, __MWBTN_LOCK_TYPE2_HIDE_TIME, 0, 0)
					}
				}
			}
		}
	}
}


//---------------------------------------------------------------------------
// メッセージウィンドウボタンを更新する
//---------------------------------------------------------------------------
command $$update_mwbtn
{
	property $i
	
	// type1(下消去)が有効の場合
	if( __MWBTN_LOCK_TYPE1_ENABLE )
	{
		// メッセージウィンドウボタンの位置を更新する
		if( <MWBTN_LOCK_TYPE1> )
		{
			for( $i = __MWBTN_LOCK_TYPE1_BTN_START, $i <= __MWBTN_LOCK_TYPE1_BTN_END, $i += 1 )
			{
				front.mwnd[get_mwnd].button[$i].y = 0
			}
		}
		else
		{
			for( $i = __MWBTN_LOCK_TYPE1_BTN_START, $i <= __MWBTN_LOCK_TYPE1_BTN_END, $i += 1 )
			{
				front.mwnd[get_mwnd].button[$i].y = __MWBTN_LOCK_TYPE1_HIDE_Y
			}
		}
		
		// メッセージウィンドウボタンを更新する
		front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN].patno = <MWBTN_LOCK_TYPE1> * 5
	}
	
	// type2(右消去)が有効の場合
	if( __MWBTN_LOCK_TYPE2_ENABLE )
	{
		// メッセージウィンドウボタンの位置を更新する
		if( <MWBTN_LOCK_TYPE2> )
		{
			for( $i = __MWBTN_LOCK_TYPE2_BTN_START, $i <= __MWBTN_LOCK_TYPE2_BTN_END, $i += 1 )
			{
				front.mwnd[get_mwnd].button[$i].x = 0
			}
		}
		else
		{
			for( $i = __MWBTN_LOCK_TYPE2_BTN_START, $i <= __MWBTN_LOCK_TYPE2_BTN_END, $i += 1 )
			{
				front.mwnd[get_mwnd].button[$i].x = __MWBTN_LOCK_TYPE2_HIDE_X
			}
		}
		
		// メッセージウィンドウボタンを更新する
		front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN].patno = <MWBTN_LOCK_TYPE2> * 5
	}
}

//---------------------------------------------------------------------------
// メッセージウィンドウボタンtype1(下消去)のロックフラグを反転する
//---------------------------------------------------------------------------
command $$toggle_type1_lock
{
	// ロックフラグを反転する
	<MWBTN_LOCK_TYPE1> = $$reverse_flag(<MWBTN_LOCK_TYPE1>)
	
	// メッセージウィンドウボタンを更新する
	front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE1_BTN].patno = <MWBTN_LOCK_TYPE1> * 5
}

//---------------------------------------------------------------------------
// メッセージウィンドウボタンtype2(右消去)のロックフラグを反転する
//---------------------------------------------------------------------------
command $$toggle_type2_lock
{
	// ロックフラグを反転する
	<MWBTN_LOCK_TYPE2> = $$reverse_flag(<MWBTN_LOCK_TYPE2>)
	
	// メッセージウィンドウボタンを更新する
	front.mwnd[get_mwnd].button[__MWBTN_LOCK_TYPE2_BTN].patno = <MWBTN_LOCK_TYPE2> * 5
}
