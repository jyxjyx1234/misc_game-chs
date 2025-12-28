//===========================================================================
//!
//!    @file     __lib_debug.ss
//!    @brief    デバッグ制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	#property $log_list : strlist		// デバッグ出力するためのログリスト

#inc_end

#z00

//---------------------------------------------------------------------------
// システムデバッグメッセージを表示する
//---------------------------------------------------------------------------
command $$debug_message(property $message : str)
{
	system.debug_messagebox_ok("【system_message】 " + get_scene_name + ".ss " + math.tostr(get_line_no) + "行\n" + $message)
}

//-----------------------------------------------------------------
// デバッグモードの状態(有効／無効)を取得する
//-----------------------------------------------------------------
command $$check_debug_mode_enable
{
	if( system.check_debug_flag == 0 )
	{
		return (0)
	}
	
	if( __DEBUG_MODE == 0 )
	{
		return (0)
	}
	
	return (1)
}

//-----------------------------------------------------------------
// キーボードショートカットの実行
//-----------------------------------------------------------------
command $$debug_key_shortcut(property $fa : frameaction)
{
	if( $$check_debug_mode_enable == 0 )
	{
		return
	}
	
	// クィックセーブ
	if( key['Q'].on_down )
	{
		capture
		syscom.quick_save(0, 0, 0)
		capture_free
	}
	
	// クィックロード
	elseif( key['W'].on_down )
	{
		syscom.quick_load(0, 0, 0, 0)
	}
	
	// 表示切り替え
	elseif( key['C'].on_down )
	{
		front.object[<OBJ_DEBUG_SC_KEY>].disp = $$reverse_flag(front.object[<OBJ_DEBUG_SC_KEY>].disp)
		front.object[<OBJ_DEBUG_MSG>].disp = front.object[<OBJ_DEBUG_SC_KEY>].disp
		front.object[<OBJ_RESOURCE_MSG>].disp = front.object[<OBJ_DEBUG_SC_KEY>].disp
	}
	
	// ファイルログ出力
	elseif( key['L'].on_down )
	{
		if( $$write_debug_log_list )
		{
			@dm("work/__DEBUG_LOG/debug_log.txtにログを出力しました。")
		}
		else
		{
			@dm("ログリストにデータが設定されていません。\nログ出力は実行しませんでした。")
		}
	}
	
	// deb デバッグメッセージを消去
	elseif( key['R'].on_down )
	{
		$$delete_old_debug_msg(front.object[<OBJ_RESOURCE_MSG>])
	}
}

//-----------------------------------------------------------------
// キーボートショートカットメッセージの表示
//-----------------------------------------------------------------
command $$show_debug_key_shortcut_msg
{
	if( $$check_debug_mode_enable == 0 )
	{
		return
	}
	
	// すでに作成済みの場合は処理を終了する
	if( front.object[<OBJ_DEBUG_SC_KEY>].child.get_size > 0 )
	{
		return
	}
	
	property $i
	property $msg : strlist[6]
	
	front.object[<OBJ_DEBUG_SC_KEY>].init
	front.object[<OBJ_DEBUG_SC_KEY>].disp = 1
	front.object[<OBJ_DEBUG_SC_KEY>].order= 3
	front.object[<OBJ_DEBUG_SC_KEY>].wipe_copy = 1
	front.object[<OBJ_DEBUG_SC_KEY>].child.resize(6)
	
	$msg[0] = "■デバッグモードのみ"
	$msg[1] = "キーボードショートカット"
	$msg[2] = "[Ｑ]：クイックセーブ"
	$msg[3] = "[Ｗ]：クイックロード"
	$msg[4] = "[Ｃ]：デバッグ表示／非表示"
	$msg[5] = "[Ｌ]：ファイルログの出力"
	
	for( $i = 0, $i < 6, $i += 1 )
	{
		front.object[<OBJ_DEBUG_SC_KEY>].child[$i].create_string($msg[$i], 1, 1690, 10 + $i * 20)
		front.object[<OBJ_DEBUG_SC_KEY>].child[$i].set_string_param(15, 1, 5, 30, 0, 1, 2, 1)
	}
}


//-----------------------------------------------------------------
// デバッグメッセージの表示
//-----------------------------------------------------------------
command $$show_debug_msg(property $obj : object, property $msg : str)
{
	property $i
	property $obj_index
	property $line_max
	property $message_y
	
	// 現在表示されているメッセージの総行数を取得して新規メッセージの行数を計算する
	$line_max = 1
	
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		if( $line_max <= $obj.child[$i].f[0] )
		{
			$line_max = $obj.child[$i].f[0] + 1
		}
	}
	
	// デバッグメッセージ生成に使用するオブジェクト番号を計算する
	$obj_index = -1
	
	// 空いている子供オブジェクトがある場合はそれを利用する
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		if( $obj.child[$i].f[0] == 0 )
		{
			$obj_index = $i
			break
		}
	}
	
	// 空いている子供オブジェクトがない場合は新規に子供オブジェクトを追加する
	if( $obj_index == -1 )
	{
		$obj.child.resize($obj.child.get_size + 1)
		$obj_index = $obj.child.get_size - 1
	}
	
	// 新しいデバッグメッセージを作成する
	$$create_debug_msg_object($obj.child[$obj_index], $msg, $line_max, $obj.f[0], 60, $obj.f[1], $obj.f[2], $obj.f[4], $obj.f[5], $obj.f[6])
	
	// 各デバッグメッセージのy座標を設定する
	$$set_debug_msg_all_pos_y($obj)
	
	// デバッグメッセージの描画が範囲外の場合は古いデバッグメッセージを削除する
	if( $obj.y + $obj.child[$obj_index].y + $obj.child[$obj_index].f[1] >= <SCREEN_CENTER_Y> )
	{
		$$delete_old_debug_msg($obj)
	}
}

//-----------------------------------------------------------------
// デバッグメッセージマネージャーの作成
//-----------------------------------------------------------------
command $$create_debug_msg_manager(property $obj : object, property $pos_x, property $pos_y)
{
	if( $$check_debug_mode_enable == 0 )
	{
		return
	}
	
	$obj.init
	$obj.disp = front.object[<OBJ_DEBUG_SC_KEY>].disp		// ショートカットキーの表示状態に追従する
	$obj.order = <ORDER_DEBUG>
	$obj.wipe_copy = 1
	$obj.set_pos($pos_x, $pos_y)
	$obj.f.resize(7)
	$obj.frame_action.start(-1, "$$fa_debug_msg_manager")
}

//-----------------------------------------------------------------
// デバッグメッセージマネージャーの設定
//-----------------------------------------------------------------
command $$set_debug_msg_manager(property $obj : object, property $font_size, property $font_color, property $outline_color, property $space_y, property $bg_tr, property $animation_x, property $hide_time)
{
	$obj.f[0] = $font_size
	$obj.f[1] = $font_color
	$obj.f[2] = $outline_color
	$obj.f[3] = $space_y
	$obj.f[4] = $bg_tr
	$obj.f[5] = $animation_x
	$obj.f[6] = $hide_time
}

//---------------------------------------------------------------------------
// デバッグメッセージマネージャーのフレームアクション
//---------------------------------------------------------------------------
command $$fa_debug_msg_manager(property $fa : frameaction, property $obj : object)
{
	property $i
	property $j
	property $pos_y
	property $space_y
	
	// 各メッセージの行数を管理する
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		// 表示されていない場合は処理をスキップする
		if( $obj.child[$i].f[0] == 0 ) {
			continue
		}
		
		// 透過イベントを実行中なら処理をスキップする
		if( $obj.child[$i].tr_eve.check == 1 ) {
			continue
		}
		
		// 透過イベントが終了したので各メッセージの行数を変更する
		for( $j = 0, $j < $obj.child.get_size, $j += 1 )
		{
			// メッセージ行数を１つ減らす
			$obj.child[$j].f[0] -= 1
			
			// メッセージ行数が０以下の場合は非表示のため初期化する
			if( $obj.child[$j].f[0] <= 0 ) {
				$obj.child[$j].f[0] = 0
				$obj.child[$j].f[1] = 0
			}
		}
	}
	
	// 各デバッグメッセージのy座標を設定する
	$$set_debug_msg_all_pos_y($obj)
}

//---------------------------------------------------------------------------
// 各デバッグメッセージのy座標を設定する
//---------------------------------------------------------------------------
command $$set_debug_msg_all_pos_y(property $obj : object)
{
	property $i
	property $j
	property $pos_y
	property $space_y
	
	// 各メッセージのy座標を設定する
	$space_y = $obj.f[3]
	
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		$pos_y = 0
		
		// 設定するメッセージオブジェクトの行以下の描画領域を取得する
		for( $j = 0, $j < $obj.child.get_size, $j += 1 )
		{
			// 設定するメッセージオブジェクト以上の行数の場合は処理をスキップする
			if( $obj.child[$i].f[0] <= $obj.child[$j].f[0] ) {
				continue
			}
			
			// 描画領域が設定されていない場合は処理をスキップする
			if( $obj.child[$j].f[1] == 0 ) {
				continue
			}
			
			// 描画領域を加算する
			$pos_y += $obj.child[$j].f[1] + $space_y
		}
		
		$obj.child[$i].y = $pos_y
	}
}

//-----------------------------------------------------------------
// デバッグメッセージオブジェクトの作成
//-----------------------------------------------------------------
command $$create_debug_msg_object(property $obj : object, property $msg : str, property $line_no, property $moji_size, property $moji_max, property $moji_color, property $outline_color, property $bg_tr, property $animation_x, property $hide_time)
{
	property $moji_margin_x
	property $moji_margin_y
	property $rect_w
	property $rect_h
	
	$moji_margin_x = 5
	$moji_margin_y = 5
	
	// 文字数から表示領域を計算する
	if( $msg.len >= $moji_max ) {
		$rect_w = ($moji_size / 2) * $moji_max + $moji_margin_x * 2
	} else {
		$rect_w = ($moji_size / 2) * ($msg.len % $moji_max) + $moji_margin_x * 2
	}
	$rect_h = $moji_size * ($msg.len / $moji_max + 1) + $moji_margin_y * 2
	
	// オブジェクトの初期化
	$obj.init
	$obj.disp = 1
	$obj.child.resize(2)
	$obj.f.resize(2)
	
	// 背景の作成
	$obj.child[0].create_rect(0, 0, $rect_w, $rect_h, <COLOR_BLACK>, $bg_tr, 1)
	
	// 文字の作成
	$obj.child[1].create_string($msg, 1, $moji_margin_x, $moji_margin_y)
	$obj.child[1].set_string_param($moji_size, 0, 0, $moji_max / 2, $moji_color, $outline_color, 2, $outline_color)
	
	// フラグの設定
	$obj.f[0] = $line_no	// メッセージの行数
	$obj.f[1] = $rect_h		// 表示領域
	
	// アニメーション設定
	$obj.x_rep.resize(1)
	$obj.x_rep[0] = $animation_x
	$obj.x_rep_eve[0].set_real(0, 500, 0, 2)
	$obj.tr = 255
	$obj.tr_eve.set_real(0, 500, $hide_time, 0)
}

//-----------------------------------------------------------------
// 古いデバッグメッセージオブジェクトの消去
//-----------------------------------------------------------------
command $$delete_old_debug_msg(property $obj : object)
{
	property $i
	
	// 各メッセージの行数を管理する
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		// 表示されていない場合は処理をスキップする
		if( $obj.child[$i].f[0] == 0 ) {
			continue
		}
		
		// １行目のメッセージの場合はイベントを終了する
		if( $obj.child[$i].f[0] == 1 )
		{
			$obj.child[$i].tr_eve.end
		}
		
		// メッセージ行数を１つ減らす
		$obj.child[$i].f[0] -= 1
			
		// メッセージ行数が０以下の場合は非表示のため初期化する
		if( $obj.child[$i].f[0] <= 0 ) {
			$obj.child[$i].f[0] = 0
			$obj.child[$i].f[1] = 0
		}
	}
}

//-----------------------------------------------------------------
// リソースメッセージの表示
//-----------------------------------------------------------------
command $$show_resource_msg(property $msg : str)
{
	if( $$check_debug_mode_enable == 0 )
	{
		return
	}
	
	// デバッグメッセージマネージャーが作成されていない場合は作成する
	if( front.object[<OBJ_RESOURCE_MSG>].f.get_size == 0 )
	{
		$$create_debug_msg_manager(front.object[<OBJ_RESOURCE_MSG>], 1100, 10)
		$$set_debug_msg_manager(front.object[<OBJ_RESOURCE_MSG>], 20, 2, 0, 3, 160, 0, 7000)
	}
	
	$$show_debug_msg(front.object[<OBJ_RESOURCE_MSG>], "！リソースエラー → " + $msg)
}


//-----------------------------------------------------------------
// ログリストに文字列を追加する
//-----------------------------------------------------------------
command $$add_debug_log_list(property $msg : str)
{
	if( $$check_debug_mode_enable == 0 )
	{
		return
	}
	
	property $i
	
	for( $i = 0, $i < $log_list.get_size, $i += 1 )
	{
		if( $log_list[$i] == $msg )
		{
			return
		}
	}
	
	$log_list.resize($log_list.get_size + 1)
	$log_list[$log_list.get_size - 1] = $msg
}

//---------------------------------------------------------------------------
// ログリストを出力する
//---------------------------------------------------------------------------
command $$write_debug_log_list
{
	if( $$check_debug_mode_enable == 0 )
	{
		return
	}
	
	property $i
	
	for( $i = 0, $i < $log_list.get_size, $i += 1 )
	{
		@dw($log_list[$i])
	}
	
	return ($log_list.get_size)
}

//---------------------------------------------------------------------------
// ログリストをファイル名でソートする
//---------------------------------------------------------------------------
command $$sort_debug_log_list_filename
{
	property $i
	property $j
	property $len
	property $tmp : str
	
	$len = $log_list.get_size
	for( $i = 0, $i < $len - 1, $i += 1 )
	{
		for( $j = $len - 1, $j > $i, $j -= 1 )
		{
			if( $log_list[$j] < $log_list[$j - 1] )
			{
				$tmp = $log_list[$j]
				$log_list[$j] = $log_list[$j - 1]
				$log_list[$j - 1] = $tmp
			}
		}
	}
}
