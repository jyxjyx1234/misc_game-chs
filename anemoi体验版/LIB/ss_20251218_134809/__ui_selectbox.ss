//===========================================================================
//!
//!    @file     __ui_selectbox.ss
//!    @brief    セレクトボックスＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// セレクトボックスを作成する
//---------------------------------------------------------------------------
command $$create_ui_selectbox(property $obj : object, property $filename : str, property $x, property $y, property $next_button_no, property $prev_button_no, property $button_group_no, property $button_se_no, property $value, property $list_x, property $list_y, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	// 子供オブジェクトの確保、座標の設定
	$obj.init
	$obj.disp = 1
	$obj.wipe_copy = 1
	$obj.child.resize(<UI_SELECTBOX_CHILD_MAX>)
	$obj.set_pos($x, $y)
	
	// 背景を作成する
	$obj.ui_slbox_bg.create($filename + "_bg", 1)
	
	// リストを作成する
	$obj.ui_slbox_list.create($filename + "_list", 1, $list_x, $list_y)
	
	// 前へボタンを作成する
	$obj.ui_slbox_prev.create($filename + "_prev", 1, $prev_x, $prev_y)
	$obj.ui_slbox_prev.set_button($prev_button_no, $button_group_no, 1, $button_se_no)
	
	// 次へボタンを作成する
	$obj.ui_slbox_next.create($filename + "_next", 1, $next_x, $next_y)
	$obj.ui_slbox_next.set_button($next_button_no, $button_group_no, 1, $button_se_no)
	
	// 表示範囲を設定する
	$obj.ui_slbox_list.set_clip(1, $obj.x + $obj.ui_slbox_list.x, $obj.y + $obj.ui_slbox_list.y, $obj.x + $obj.ui_slbox_list.x + $obj.ui_slbox_list.get_size_x, $obj.y + $obj.ui_slbox_list.y + $obj.ui_slbox_list.get_size_y)
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_SELECTBOX_F_FLAG_MAX>)							// 汎用フラグを確保する
	$obj.type = <UI_TYPE_SELECTBOX>										// ＵＩタイプをセレクトボックスにする
	$obj.f_slbox_clip_top    = $obj.ui_slbox_list.clip_top				// 表示範囲(上)を設定する
	$obj.f_slbox_clip_bottom = $obj.ui_slbox_list.clip_bottom			// 表示範囲(下)を設定する
	$obj.f_slbox_anim_flag = __UI_SELECTBOX_ANIMATION					// ＵＩ選択時のアニメーションフラグを設定する
	$obj.f_slbox_anim_direction = __UI_SELECTBOX_ANIMATION_DIRECTION	// ＵＩ選択時のアニメーション方向を設定する
	$obj.f_slbox_anim_time = __UI_SELECTBOX_ANIMATION_TIME				// ＵＩ選択時のアニメーションにかける時間を設定する
	$obj.f_slbox_anim_mode = __UI_SELECTBOX_ANIMATION_MODE				// ＵＩ選択時のアニメーションのスピードモードを設定する
	
	// 描画を更新する
	$$update_ui_selectbox($obj, $value)
	
	// フレームアクションの実行
	$obj.frame_action.start(-1, "$$fa_ui_selectbox")
}

//---------------------------------------------------------------------------
// セレクトボックスの描画を更新する
//---------------------------------------------------------------------------
command $$update_ui_selectbox(property $obj : object, property $value)
{
	// 指定された値をリストに反映する
	$obj.ui_slbox_list.patno = $value
}

//---------------------------------------------------------------------------
// セレクトボックスのフレームアクション
//---------------------------------------------------------------------------
command $$fa_ui_selectbox(property $fa : frameaction, property $obj : object)
{
	// ゲームパッドで選択されている場合は背景のパターン番号を変更する
	if( syscom.check_joypad_mode == 1 && $$get_joypad_focus_button == $obj.ui_slbox_next.get_button_no )
	{
		$obj.ui_slbox_bg.patno = 1
	}
	else
	{
		$obj.ui_slbox_bg.patno = 0
	}
}

//---------------------------------------------------------------------------
// セレクトボックスのリストを前に更新する
//---------------------------------------------------------------------------
command $$prev_ui_selectbox(property $obj : object)
{
	// アニメーションフラグがある場合はアニメーション処理を行う
	if( $obj.f_slbox_anim_flag )
	{
		// ゲームパッドの場合は前へボタンを決定状態にする
		if( syscom.check_joypad_mode == 1 ) {
			$obj.ui_slbox_prev.patno = 2
		}
		
		// アニメーションオブジェクトを作成する
		$obj.ui_slbox_list.child.resize(1)
		$obj.ui_slbox_list.child[0].create($obj.ui_slbox_list.get_file_name, 1)
		$obj.ui_slbox_list.child[0].patno = $obj.ui_slbox_list.patno - 1
		if( $obj.ui_slbox_list.child[0].patno < 0 ) {
			$obj.ui_slbox_list.child[0].patno = $obj.ui_slbox_list.get_pat_cnt - 1
		}
		
		switch( $obj.f_slbox_anim_direction ) {
		case(0)		// 横
			$obj.ui_slbox_list.child[0].x = -$obj.ui_slbox_list.get_size_x
			$obj.ui_slbox_list.x_rep.resize(1)
			$obj.ui_slbox_list.x_rep_eve[0].set($obj.ui_slbox_list.get_size_x, $obj.f_slbox_anim_time, 0, $obj.f_slbox_anim_mode)
			$obj.ui_slbox_list.x_rep_eve[0].wait
		case(1)		// 縦
			$obj.ui_slbox_list.child[0].y = -$obj.ui_slbox_list.get_size_y
			$obj.ui_slbox_list.y_rep.resize(1)
			$obj.ui_slbox_list.y_rep_eve[0].set($obj.ui_slbox_list.get_size_y, $obj.f_slbox_anim_time, 0, $obj.f_slbox_anim_mode)
			$obj.ui_slbox_list.y_rep_eve[0].wait
		}
		
		// 前へボタンを元に戻す
		$obj.ui_slbox_prev.patno = 0
	}
	
	// パターン番号を更新する
	$obj.ui_slbox_list.patno -= 1
	if( $obj.ui_slbox_list.patno < 0 ) {
		$obj.ui_slbox_list.patno = $obj.ui_slbox_list.get_pat_cnt - 1
	}
	$$update_ui_selectbox($obj, $obj.ui_slbox_list.patno)
	
	// アニメーションオブジェクトの終了処理を行う
	if( $obj.f_slbox_anim_flag ) {
		switch( $obj.f_slbox_anim_direction ) {
		case(0)		$obj.ui_slbox_list.x_rep[0] = 0		// 横
		case(1)		$obj.ui_slbox_list.y_rep[0] = 0		// 縦
		}
		$obj.ui_slbox_list.child[0].init
	}
	
	return ($obj.ui_slbox_list.patno)
}

//---------------------------------------------------------------------------
// セレクトボックスのリストを次に更新する
//---------------------------------------------------------------------------
command $$next_ui_selectbox(property $obj : object)
{
	// アニメーションフラグがある場合はアニメーション処理を行う
	if( $obj.f_slbox_anim_flag )
	{
		// ゲームパッドの場合は次へボタンを決定状態にする
		if( syscom.check_joypad_mode == 1 ) {
			$obj.ui_slbox_next.patno = 2
		}
		
		// アニメーションオブジェクトを作成する
		$obj.ui_slbox_list.child.resize(1)
		$obj.ui_slbox_list.child[0].create($obj.ui_slbox_list.get_file_name, 1)
		$obj.ui_slbox_list.child[0].patno = $obj.ui_slbox_list.patno + 1
		if( $obj.ui_slbox_list.child[0].patno >= $obj.ui_slbox_list.child[0].get_pat_cnt ) {
			$obj.ui_slbox_list.child[0].patno = 0
		}
		
		switch( $obj.f_slbox_anim_direction ) {
		case(0)		// 横
			$obj.ui_slbox_list.child[0].x = $obj.ui_slbox_list.get_size_x
			$obj.ui_slbox_list.x_rep.resize(1)
			$obj.ui_slbox_list.x_rep_eve[0].set(-$obj.ui_slbox_list.get_size_x, $obj.f_slbox_anim_time, 0, $obj.f_slbox_anim_mode)
			$obj.ui_slbox_list.x_rep_eve[0].wait
		case(1)		// 縦
			$obj.ui_slbox_list.child[0].y = $obj.ui_slbox_list.get_size_y
			$obj.ui_slbox_list.y_rep.resize(1)
			$obj.ui_slbox_list.y_rep_eve[0].set(-$obj.ui_slbox_list.get_size_y, $obj.f_slbox_anim_time, 0, $obj.f_slbox_anim_mode)
			$obj.ui_slbox_list.y_rep_eve[0].wait
		}
		
		// 次へボタンを元に戻す
		$obj.ui_slbox_next.patno = 0
	}
	
	// パターン番号を更新する
	$obj.ui_slbox_list.patno += 1
	if( $obj.ui_slbox_list.patno >= $obj.ui_slbox_list.get_pat_cnt ) {
		$obj.ui_slbox_list.patno = 0
	}
	$$update_ui_selectbox($obj, $obj.ui_slbox_list.patno)
	
	// アニメーションオブジェクトの終了処理を行う
	if( $obj.f_slbox_anim_flag ) {
		switch( $obj.f_slbox_anim_direction ) {
		case(0)		$obj.ui_slbox_list.x_rep[0] = 0		// 横
		case(1)		$obj.ui_slbox_list.y_rep[0] = 0		// 縦
		}
		$obj.ui_slbox_list.child[0].init
	}
	
	return ($obj.ui_slbox_list.patno)
}
