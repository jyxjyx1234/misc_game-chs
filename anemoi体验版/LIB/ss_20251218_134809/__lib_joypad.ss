//===========================================================================
//!
//!    @file     __lib_joypad.ss
//!    @brief    ジョイパッド制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	// キー入力状態
	#replace	<KEY_STATE_OFF>			0		// 押していない
	#replace	<KEY_STATE_ON>			1		// 押している
	#replace	<KEY_STATE_REPEAT>		2		// 押し続けている(リピート)
	
	// ボタン効果音タイプ
	#replace	<BUTTON_SE_TYPE_HIT>		0		// 選択
	#replace	<BUTTON_SE_TYPE_DECIDE>		1		// 決定
	
	#property	$key_state  : intlist[<JOYPAD_MAX>]				// ジョイパッドの各キーの入力状態
	#property	$key_repeat : intlist[<JOYPAD_MAX>]				// ジョイパッドの各キーのリピートフラグ(押した瞬間とリピートが発生したときに1になる)
	#property	$key_push_time_large : intlist[<JOYPAD_MAX>]	// 各キーを押し始めた時間(年 + 月 + 日)
	#property	$key_push_time_small : intlist[<JOYPAD_MAX>]	// 各キーを押し始めた時間(時間 + 分 + 秒 + ミリ秒)
	
	#property	$joypad_focus_btn			// ジョイパッドで選択中のボタン
	#property	$joypad_mode				// ジョイパッドモードかどうか
	#property	$joypad_decided				// ジョイパッドで決定ボタンを押したかどうか
	
	#property	$error_focus_btn

#inc_end

#z00

//---------------------------------------------------------------------------
// ジョイパッドの更新(毎フレーム処理)
//---------------------------------------------------------------------------
command $$update_joypad(property $stage : stage)
{
	property $select_btn
	property $target_btn
	
	// キーリピート機能が有効の場合のみ処理する
	if( __JOYPAD_KEY_REPEAT == 1 ) {
		$$update_joypad_key_repeat
	}
	
	$select_btn = -2		// 初期状態で何もボタンを選択していない状態にする
	$target_btn = -1		// 入力遷移先ボタンを初期化する
	
	$joypad_decided = 0
	
	if( syscom.check_joypad_mode == 1 )
	{
		// 遷移先のボタンが専用UIオブジェクトでない場合は処理を終了する
		if( $stage.object[$joypad_focus_btn].f.get_size == 0 ) {
			return ($select_btn)
		}
		
		// ジョイパッドモードになった最初の入力は無視する
		// ※最初の入力でカーソルの移動は行わずに、まずジョイパッドで選択されているボタンが表示されるようになる
		if( $joypad_mode == 0 )
		{
			$joypad_mode = 1
			
			// ジョイパッドで選択中のボタンは画像を変更する
			if( $stage.object[$joypad_focus_btn].default_patno != -1 )
			{
				if( $stage.object[$joypad_focus_btn].patno != $stage.object[$joypad_focus_btn].default_patno + 5 ) {
					$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno + 5
				}
			}
		}
		else
		{
			// 各移動キーが押されている場合は、遷移先のボタンを設定する
			if( $$joypad_up_on_down ) {
				$target_btn = $stage.object[$joypad_focus_btn].joypad_up
			}
			elseif( $$joypad_down_on_down ) {
				$target_btn = $stage.object[$joypad_focus_btn].joypad_down
			}
			elseif( $$joypad_left_on_down ) {
				$target_btn = $stage.object[$joypad_focus_btn].joypad_left
			}
			elseif( $$joypad_right_on_down ) {
				$target_btn = $stage.object[$joypad_focus_btn].joypad_right
			}
			
			if( $target_btn < -10 ) {
				// func
				$select_btn = $target_btn
			}
			
			// 遷移先のボタンの状態がdisable(無効)でない場合は選択中のボタンを変更する
			elseif( $target_btn != -1 )
			{
				//if( $stage.object[$target_btn].get_button_real_state != 4 )
				//{
					// パッド選択状態だったボタンを元に戻す
					if( $stage.object[$joypad_focus_btn].default_patno != -1 )
					{
						$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno
					}
					
					$joypad_focus_btn = $target_btn
					
					// 遷移先のボタンが専用UIオブジェクトでない場合は処理を終了する
					if( $stage.object[$joypad_focus_btn].f.get_size == 0 ) {
						return ($select_btn)
					}
					
					// 効果音を再生する
					$$joypad_se_play($stage.object[$joypad_focus_btn], <BUTTON_SE_TYPE_HIT>)
				//}
			}
			
			if( joypad.key[<JOYPAD_BUTTON1>].on_down )
			{
				$joypad_decided = 1
				
				if( $stage.object[$joypad_focus_btn].get_button_real_state == 0 )
				{
					if( $stage.object[$joypad_focus_btn].default_patno != -1 )
					{
						$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno + 7
					}
					
					$select_btn = $joypad_focus_btn
					
					// 効果音を再生する
					$$joypad_se_play($stage.object[$joypad_focus_btn], <BUTTON_SE_TYPE_DECIDE>)
					
					// ウェイト待ち
					timewait_key(__JOYPAD_DECIDE_BTN_WAIT)
				}
				elseif( $stage.object[$joypad_focus_btn].get_button_real_state == 4 )
				{
					// 選択不可を押した場合はキャンセル音を再生する
					se.play_by_se_no(<BUTTON_SE_CANCEL>)
				}
			}
			else
			{
				// ジョイパッドで選択中のボタンは画像を変更する
				if( $stage.object[$joypad_focus_btn].default_patno != -1 )
				{
					if( $stage.object[$joypad_focus_btn].patno != $stage.object[$joypad_focus_btn].default_patno + 5 ) {
						$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno + 5
					}
				}
			}
		}
	}
	else
	{
		if( $joypad_mode == 1 )
		{
			// 遷移先のボタンが専用UIオブジェクトでない場合は処理を終了する
			if( $stage.object[$joypad_focus_btn].f.get_size == 0 ) {
				return ($select_btn)
			}
			
			// パッド選択状態だったボタンを元に戻す
			if( $stage.object[$joypad_focus_btn].default_patno != -1 )
			{
				$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno
			}
			$joypad_mode = 0
		}
	}
	
	// キャンセルボタンが押された場合はボタンの状態をキャンセルにする
	if( joypad.key[<JOYPAD_BUTTON2>].on_down ) {
		$select_btn = -1
	}
	
	return ($select_btn)
}

//---------------------------------------------------------------------------
// 指定したジョイパッドの入力が行われているか
//---------------------------------------------------------------------------
command $$joypad_on_down(property $joypad_key)
{
	// キーリピート機能が有効の場合はキーリピートの結果も取得する
	if( __JOYPAD_KEY_REPEAT == 1 ) {
		return ($key_repeat[$joypad_key])
	}
	
	return (joypad.key[$joypad_key].on_down)
}

//---------------------------------------------------------------------------
// ジョイパッドで↑の入力が行われているか
//---------------------------------------------------------------------------
command $$joypad_up_on_down()
{
	// 左スティックと十字キーを連動させる機能を有効にしている場合は両方の入力を取得する
	if( __JOYPAD_LINK_STICK_WITH_KEY ) {
		return( $$joypad_on_down(<JOYPAD_UP>) || $$joypad_on_down(<JOYPAD_LSTICK_UP>) )
	}
	
	// 無効にしている場合は十字キーのみ取得する
	return ($$joypad_on_down(<JOYPAD_UP>))
}

//---------------------------------------------------------------------------
// ジョイパッドの↓入力が行われているか
//---------------------------------------------------------------------------
command $$joypad_down_on_down()
{
	// 左スティックと十字キーを連動させる機能を有効にしている場合は両方の入力を取得する
	if( __JOYPAD_LINK_STICK_WITH_KEY ) {
		return( $$joypad_on_down(<JOYPAD_DOWN>) || $$joypad_on_down(<JOYPAD_LSTICK_DOWN>) )
	}
	
	// 無効にしている場合は十字キーのみ取得する
	return ($$joypad_on_down(<JOYPAD_DOWN>))
}

//---------------------------------------------------------------------------
// ジョイパッドの←入力が行われているか
//---------------------------------------------------------------------------
command $$joypad_left_on_down()
{
	// 左スティックと十字キーを連動させる機能を有効にしている場合は両方の入力を取得する
	if( __JOYPAD_LINK_STICK_WITH_KEY ) {
		return( $$joypad_on_down(<JOYPAD_LEFT>) || $$joypad_on_down(<JOYPAD_LSTICK_LEFT>) )
	}
	
	// 無効にしている場合は十字キーのみ取得する
	return ($$joypad_on_down(<JOYPAD_LEFT>))
}

//---------------------------------------------------------------------------
// ジョイパッドの→入力が行われているか
//---------------------------------------------------------------------------
command $$joypad_right_on_down()
{
	// 左スティックと十字キーを連動させる機能を有効にしている場合は両方の入力を取得する
	if( __JOYPAD_LINK_STICK_WITH_KEY ) {
		return( $$joypad_on_down(<JOYPAD_RIGHT>) || $$joypad_on_down(<JOYPAD_LSTICK_RIGHT>) )
	}
	
	// 無効にしている場合は十字キーのみ取得する
	return ($$joypad_on_down(<JOYPAD_RIGHT>))
}

//---------------------------------------------------------------------------
// ジョイパッドのキーリピート処理
//---------------------------------------------------------------------------
command $$update_joypad_key_repeat
{
	property $i
	property $time_large
	property $time_small
	
	// 現在の時間を取得する(年 + 月 + 日 + 曜日 + 時間 + 分 + 秒 + ミリ秒)
	// int最大値を超えるため、２つの変数に分けて時間を管理する
	system.get_calendar(L[0], L[1], L[2], L[3], L[4], L[5], L[6], L[7])
	
	$time_large = (L[0] * 10000) + (L[1] * 100) + L[2]							// 年 + 月 + 日
	$time_small = (L[4] * 10000000) + (L[5] * 100000)+ (L[6] * 1000) + L[7]		// 時間 + 分 + 秒 + ミリ秒
	
	// 各キーの入力を判定する
	for( $i = 0, $i < <JOYPAD_MAX>, $i += 1 )
	{
		$key_repeat[$i] = 0
		
		if( joypad.key[$i].on_down )
		{
			$key_state[$i] = <KEY_STATE_ON>
			$key_repeat[$i] = 1
			
			// キーリピートが発生する時間を設定する
			$key_push_time_large[$i] = $time_large
			$key_push_time_small[$i] = $time_small + __JOYPAD_KEY_REPEAT_DELAY
		}
		elseif( joypad.key[$i].is_down )
		{
			if( $key_state[$i] == <KEY_STATE_ON> )
			{
				// 設定したキーリピートが発生する時間を超えたらキー入力状態をリピートにする
				if( $time_large >= $key_push_time_large[$i] && $time_small >= $key_push_time_small[$i] )
				{
					// キーリピートを発生させる
					$key_state[$i]  = <KEY_STATE_REPEAT>
					$key_repeat[$i] = 1
					
					// 次の入力が発生する時間を設定する
					$key_push_time_large[$i] = $time_large
					$key_push_time_small[$i] = $time_small + __JOYPAD_KEY_REPEAT_RATE
				}
			}
			elseif( $key_state[$i] == <KEY_STATE_REPEAT> )
			{
				if( $time_large >= $key_push_time_large[$i] && $time_small >= $key_push_time_small[$i] )
				{
					// キーリピートを発生させる
					$key_repeat[$i] = 1
					
					// 次の入力が発生する時間を設定する
					$key_push_time_large[$i] = $time_large
					$key_push_time_small[$i] = $time_small + __JOYPAD_KEY_REPEAT_RATE
				}
			}
		}
		elseif( joypad.key[$i].on_down_up )
		{
			$key_state[$i]  = <KEY_STATE_OFF>
		}
	}
}

//---------------------------------------------------------------------------
// 自動でジョイパッド時のボタン遷移先を設定する
//---------------------------------------------------------------------------
command $$auto_joypad_navigation(property $start_btn, property $end_btn)
{
	property $i
	property $j
	property $x1
	property $y1
	property $x2
	property $y2
	property $pos_margin_x
	property $pos_margin_y
	property $distance
	property $distance_up
	property $distance_down
	property $distance_left
	property $distance_right
	property $joypad_up_btn_no
	property $joypad_down_btn_no
	property $joypad_left_btn_no
	property $joypad_right_btn_no
	property $excall
	
	// システムコール中かどうか判定する
	$excall = excall.check_alloc
	
	// ボタン間の距離が10pixel以上離れていない場合は遷移先にしない
	$pos_margin_x = 10
	$pos_margin_y = 10
	
	// それぞれのボタンの位置関係を比較する
	// 入力されたキーとボタンの方向が一致していて、一番の距離の近いものを遷移先とする
	for( $i = $start_btn, $i <= $end_btn, $i += 1 )
	{
		// パッド入力時に遷移するボタン番号を初期化する
		$joypad_up_btn_no    = -1
		$joypad_down_btn_no  = -1
		$joypad_left_btn_no  = -1
		$joypad_right_btn_no = -1
		
		// 各方向の距離比較用変数を初期化する
		$distance_up    = 9999
		$distance_down  = 9999
		$distance_left  = 9999
		$distance_right = 9999
		
		// 表示されていないオブジェクトは処理をスキップ
		if( excall[$excall].back.object[$i].disp == 0) {
			continue
		}
		
		// ボタンの状態がdisable(無効)になっている場合は処理をスキップ
		//if( excall[$excall].back.object[$i].get_button_real_state == 4 ) {
		//	continue
		//}
		
		for( $j = $start_btn, $j <= $end_btn, $j += 1 )
		{
			// 比較対象が自身のオブジェクトの場合は処理をスキップ
			if( $i == $j ) {
				continue
			}
			
			// 比較対象が表示されていない場合は処理をスキップ
			if( excall[$excall].back.object[$j].disp == 0) {
				continue
			}
			
			// 比較対象のボタンの状態がdisable(無効)になっている場合は処理をスキップ
			/*
			if( excall[$excall].back.object[$j].get_button_real_state == 4 ) {
				continue
			}
			*/
			
			// それぞれのボタンの中心座標を取得する
			/*
			$x1 = excall[$excall].back.object[$i].x + excall[$excall].back.object[$i].get_size_x / 2
			$y1 = excall[$excall].back.object[$i].y + excall[$excall].back.object[$i].get_size_y / 2
			$x2 = excall[$excall].back.object[$j].x + excall[$excall].back.object[$j].get_size_x / 2
			$y2 = excall[$excall].back.object[$j].y + excall[$excall].back.object[$j].get_size_y / 2
			*/
			$x1 = excall[$excall].back.object[$i].x
			$y1 = excall[$excall].back.object[$i].y
			$x2 = excall[$excall].back.object[$j].x
			$y2 = excall[$excall].back.object[$j].y
			
			// ボタン間の距離を取得する
			$distance = math.distance($x1, $y1, $x2, $y2)
			
			// 各方向の距離がこれまでのボタンより近い場合は遷移先候補として保存する
			if( $x1 < $x2 - $pos_margin_x ) {
				if( $distance < $distance_right ) {
					$distance_right = $distance
					$joypad_right_btn_no = $j
				}
			}
			if( $x2 < $x1 - $pos_margin_x ) {
				if( $distance < $distance_left ) {
					$distance_left = $distance
					$joypad_left_btn_no = $j
				}
			}
			if( $y1 < $y2 - $pos_margin_y ) {
				if( $distance < $distance_down ) {
					$distance_down = $distance
					$joypad_down_btn_no = $j
				}
			}
			if( $y2 < $y1 - $pos_margin_y ) {
				if( $distance < $distance_up ) {
					$distance_up = $distance
					$joypad_up_btn_no = $j
				}
			}
		}
		
		// パッド入力時に遷移するボタン番号を設定する
		excall[$excall].back.object[$i].joypad_up    = $joypad_up_btn_no
		excall[$excall].back.object[$i].joypad_down  = $joypad_down_btn_no
		excall[$excall].back.object[$i].joypad_left  = $joypad_left_btn_no
		excall[$excall].back.object[$i].joypad_right = $joypad_right_btn_no
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで選択中のボタンを取得する
//---------------------------------------------------------------------------
command $$get_joypad_focus_button : int
{
	return ($joypad_focus_btn)
}

//---------------------------------------------------------------------------
// ジョイパッドで選択中のボタンを設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button(property $btn_no)
{
	$joypad_focus_btn = $btn_no
}

//---------------------------------------------------------------------------
// ジョイパッドで選択中のボタンの描画を更新する
//---------------------------------------------------------------------------
command $$update_joypad_focus_button(property $stage : stage)
{
	// 指定したボタンが専用UIオブジェクトでない場合は処理を終了する
	if( $stage.object[$joypad_focus_btn].f.get_size == 0 ) {
		return
	}
	
	if( $stage.object[$joypad_focus_btn].default_patno == -1 )
	{
		return
	}
	
	if( syscom.check_joypad_mode == 1 ) {
		$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno + 5
	} else {
		$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで選択中のボタンの描画をリセットする
//---------------------------------------------------------------------------
command $$reset_joypad_focus_button(property $stage : stage)
{
	// 指定したボタンが専用UIオブジェクトでない場合は処理を終了する
	if( $stage.object[$joypad_focus_btn].f.get_size == 0 ) {
		return
	}
	
	// パッド選択状態だったボタンを元に戻す
	if( $stage.object[$joypad_focus_btn].default_patno != -1 )
	{
		$stage.object[$joypad_focus_btn].patno = $stage.object[$joypad_focus_btn].default_patno
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで決定ボタンを押したかどうかを取得する
//---------------------------------------------------------------------------
command $$get_joypad_decided : int
{
	return ($joypad_decided)
}

//---------------------------------------------------------------------------
// ジョイパッドの動作に応じた効果音を再生する
//---------------------------------------------------------------------------
command $$joypad_se_play(property $obj : object, property $type)
{
	property $se_no
	
	// Gameexe.iniのボタン効果音と連動させる必要がある
	switch( $obj.get_button_se_no ) {
	case(-1)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = -1
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = -1
		}
	case(0)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = 0
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = -1
		}
	case(1)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = 0
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = 1
		}
	case(2)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = 0
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = 2
		}
	case(3)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = 0
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = 8
		}
	case(4)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = 0
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = 9
		}
	case(-1)
		switch( $type ) {
		case(<BUTTON_SE_TYPE_HIT>)		$se_no = 0
		case(<BUTTON_SE_TYPE_DECIDE>)	$se_no = 1
		}
	}
	
	// 効果音を再生する
	se.play($se_no)
}
