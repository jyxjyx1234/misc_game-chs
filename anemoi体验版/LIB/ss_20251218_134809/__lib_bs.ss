//===========================================================================
//!
//!    @file     __lib_bs.ss
//!    @brief    立ち絵制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	// 立ち絵最大数
	#replace	<BS_DEFAULT_POS_MAX>	5			// 立ち絵指定は最大５人まで
													// ※@bs等の自動立ち位置調整命令での最大が５人までで
													// ※@bs_set等を使えば５人以上の表示は可能
	
	#property	$bs_disp_mode						// 表示モード
	#property	$bs_disp_slide_time					// 表示モードがスライドの時にスライド移動にかける時間
	#property	$bs_async_change_time				// 非同期での立ち絵変更を管理する時間
	
	// 立ち絵指定名タイプ
	#replace	<BS_NAME_TYPE_ERROR>	-1			// エラー
	#replace	<BS_NAME_TYPE_FULL>		0			// 省略なし(例：bs1_hz11_01)
	#replace	<BS_NAME_TYPE_FACE>		1			// 表情のみ指定(例：hz11_01)
	#replace	<BS_NAME_TYPE_COPY>		2			// 表示のみ(例：hz)
	
	// キャラクター個別データ
	#property	$bs_identifier : strlist			// キャラクター識別子
	#property	$bs_file_name : strlist				// 読み込むファイルのキャラクター識別子
	#property	$bs_range_type : intlist			// 距離データ
	#property	$bs_dress_type : intlist			// 服装データ
	#property	$bs_dress_type_default : intlist	// デフォルト服装データ
	#property	$bs_pose_type : intlist				// 姿勢データ
	#property	$bs_face_type : intlist				// 表情データ
	#property	$bs_mouth_type : strlist			// 口差分データ
	#property	$bs_extension_type : strlist		// 拡張差分データ
	#property	$bs_overlay_face_type : strlist		// 上書き表情差分データ
	#property	$bs_overlay_pose_disable : strlist	// 上書き表情差分を使用時に禁止するポーズ
	#property	$bs_offset_x : intlist				// 補正座標(x)
	#property	$bs_offset_y : intlist				// 補正座標(y)
	#property	$bs_offset_layer : intlist			// 補正レイヤー値
	#property	$bs_face_scale : intlist			// 顔グラ拡縮率
	#property	$bs_face_offset_x : intlist			// 顔グラ補正座標(x)
	#property	$bs_face_offset_y : intlist			// 顔グラ補正座標(y)
	
	// 立ち絵のデフォルト表示位置(最大５人まで)
	#property	$bs_default_pos_x : intlist[15]	// １人[0]
												// ２人[1],[2]
												// ３人[3],[4],[5]
												// ４人[6],[7],[8],[9]
												// ５人[10],[11],[12],[13],[14]
	
	// 読み込み立ち絵ファイル
	#property	$load_bs_files : strlist[6]

#inc_end

#z00

//---------------------------------------------------------------------------
// 立ち絵オブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_bs_object(property $obj : object, property $bs_name : str)
{
	property $index
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$index = $$get_bs_index($bs_name)
	
	// エラーの場合は処理を終了する
	if( $index == -1 ) {
		return
	}
	
	// オブジェクトに立ち絵データを読み込む
	$$load_bs_image($obj, $bs_name)
	
	// 立ち絵指定名データを保存する
	$$save_bs_type_data($bs_name)
	
	// オブジェクトの各種設定
	$obj.x = <SCREEN_CENTER_X>
	$obj.y = -(<BS_IMAGE_SIZE_Y> - <SCREEN_HEIGHT>) / 2
	$obj.wipe_copy = 1
	
	// アクションコマンドが使えるオブジェクトに設定する
	$$set_action_object($obj)
	
	// キャラクター個別データを適用する
	$obj.x_rep[<ACTION_REP_INDEX_POS>] = $bs_offset_x[$index]
	$obj.y_rep[<ACTION_REP_INDEX_POS>] = $bs_offset_y[$index]
	$obj.layer = <LAYER_CHARACTER> + $bs_range_type[$index] * <LAYER_CHARACTER_RANGE_OFFSET> + $bs_offset_layer[$index]
	
	// トーンカーブが有効な場合は設定する
	if( __USE_BS_TONECURVE ) {
		$obj.tonecurve_no = $$get_bg_tonecurve_no
	}
	
	// アクションコマンドを実行する
	$$execute_action_command($obj, $$get_action_command($bs_name))
}

//---------------------------------------------------------------------------
// オブジェクトに立ち絵データを読み込む
//---------------------------------------------------------------------------
command $$load_bs_image(property $obj : object, property $bs_name : str)
{
	// 立ち絵指定のエラーをチェックする
	if( $$is_error_bs_name($bs_name) )
	{
		// エラーの場合はオブジェクトの表示フラグだけをオンにする
		$obj.disp = 1
		
		return (0)
	}
	
	// オブジェクトを作成する
	$obj.create($$get_bs_image_name($bs_name), 1)
	
	return (1)
}

//---------------------------------------------------------------------------
// オブジェクトの立ち絵データを変更する
//---------------------------------------------------------------------------
command $$change_bs_image(property $obj : object, property $bs_name : str)
{
	// 立ち絵指定のエラーをチェックする
	if( $$is_error_bs_name($bs_name) )
	{
		// エラーの場合は何もしない
		return (0)
	}
	
	// 立ち絵指定名データを保存する
	$$save_bs_type_data($bs_name)
	
	// 立ち絵データを変更する
	$obj.change_file($$get_bs_image_name($bs_name))
	
	return (1)
}

//---------------------------------------------------------------------------
// 立ち絵を作成する(自動位置調整あり)
//---------------------------------------------------------------------------
command $$create_bs_object(property $bs_name1 : str, property $bs_name2 : str, property $bs_name3 : str, property $bs_name4 : str, property $bs_name5 : str)
{
	property $i
	property $obj_index
	property $bs_default_pos_index
	property $bs_list : strlist[<BS_DEFAULT_POS_MAX> + 1]
	
	// 指定された立ち絵名を処理しやすいようリストに保存する
	$bs_list[0] = $bs_name1
	$bs_list[1] = $bs_name2
	$bs_list[2] = $bs_name3
	$bs_list[3] = $bs_name4
	$bs_list[4] = $bs_name5
	$bs_list[5] = <NONE>
	
	// リストに指定された立ち絵の人数からデフォルト表示位置のインデックスを取得する
	for( $i = 0, $i < $bs_list.get_size, $i += 1 )
	{
		if( $bs_list[$i] == <NONE> ) {
			break
		}
		
		$bs_default_pos_index += $i
	}
	
	// 全ての立ち絵オブジェクトのワイプコピーフラグをオフにする
	$$set_front_wipe_copy_bs_all(0)
	
	// 指定された立ち絵を作成する
	for( $i = 0, $i < $bs_list.get_size, $i += 1 )
	{
		// 無効な値の場合は処理を終了する
		if( $bs_list[$i] == <NONE> ) {
			break
		}
		
		// 立ち絵を意図的に表示しない文字列の場合は処理をスキップする
		if( $bs_list[$i] == <nb> ) {
			continue
		}
		
		// 指定された立ち絵のオブジェクトインデックスを取得する
		$obj_index = $$get_bs_obj_index($bs_list[$i])
		
		// 書式エラーの場合は処理をスキップする
		if( $obj_index == -1 ) {
			continue
		}
		
		// 表示モード別に立ち絵オブジェクトを設定する
		switch( $bs_disp_mode  ) {
		
		// ワイプ表示
		case(<BS_DISP_MODE_WIPE>)
			
			// 立ち絵オブジェクトを設定する
			$$set_bs_object(back.object[$obj_index], $bs_list[$i])
			
			// 表示位置を設定する
			back.object[$obj_index].x = $bs_default_pos_x[$bs_default_pos_index + $i]
			
		// スライド表示
		case(<BS_DISP_MODE_SLIDE>)
			
			// すでにオブジェクトが表示されている場合はスライドを行う
			if( front.object[$obj_index].disp )
			{
				// 立ち絵オブジェクトを設定する
				$$set_bs_object(back.object[$obj_index], $bs_list[$i])
				
				// 表の立ち絵座標をコピーする
				back.object[$obj_index].x = front.object[$obj_index].x
				
				// スライド移動を行う
				$$move_bs_object_x($bs_list[$i], <POS_TYPE_ABSOLUTE>, $bs_default_pos_x[$bs_default_pos_index + $i], $bs_disp_slide_time, 0, 0, 0, 0)
			}
			else
			{
				// 立ち絵オブジェクトを設定する
				$$set_bs_object(back.object[$obj_index], $bs_list[$i])
				
				// 表示位置を設定する
				back.object[$obj_index].x = $bs_default_pos_x[$bs_default_pos_index + $i]
			}
			
		default
			@dm("__lib_bs.ss → $$create_bs_object\n定義されていない表示モードが選択されました。\n表示モード : " + math.tostr($bs_disp_mode) + "\n処理をスキップします。")
		}
		
		
		// すでに表示されている場合は表示されているオブジェクトにもアクションを行う
		if( front.object[$obj_index].disp )
		{
			// 不透明度変更アクションを実行している場合は表示されているオブジェクトにアクションを行わない
			if( front.object[$obj_index].tr_rep[<ACTION_REP_INDEX_ACTION>] == 255 ) {
				$$execute_action_command(front.object[$obj_index], $$get_action_command($bs_list[$i]))
			}
		}
	}
	
	// 立ち絵表示モードをデフォルトに設定する
	$$set_bs_disp_mode_default
	
	// 表示モードがスライドの時にスライド移動にかける時間をデフォルトに設定する
	$$set_bs_disp_slide_time_default
}

//---------------------------------------------------------------------------
// 立ち絵の表情を変更する
//---------------------------------------------------------------------------
command $$change_bs_face(property $bs_name1 : str, property $bs_name2 : str, property $bs_name3 : str, property $bs_name4 : str, property $bs_name5 : str)
{
	property $i
	property $obj_index
	property $bs_list : strlist[<BS_DEFAULT_POS_MAX> + 1]
	
	// 指定された立ち絵名を処理しやすいようリストに保存する
	$bs_list[0] = $bs_name1
	$bs_list[1] = $bs_name2
	$bs_list[2] = $bs_name3
	$bs_list[3] = $bs_name4
	$bs_list[4] = $bs_name5
	$bs_list[5] = <NONE>
	
	// 指定された立ち絵の表情を変更する
	for( $i = 0, $i < $bs_list.get_size, $i += 1 )
	{
		// 無効な値の場合は処理を終了する
		if( $bs_list[$i] == <NONE> ) {
			break
		}
		
		// 指定された立ち絵のオブジェクトインデックスを取得する
		$obj_index = $$get_bs_obj_index($bs_list[$i])
		
		// 書式エラーの場合は処理をスキップする
		if( $obj_index == -1 ) {
			continue
		}
		
		if( front.object[$obj_index].disp == 0 ) {
			// エラー
			@dm("__lib_bs.ss → $$change_bs_face\nbf命令のエラー。bf命令で指定されたキャラクターが表示されていません。\nキャラクター名 : " + $bs_list[$i] + "\n表情変更をスキップします。")
			continue
		}
		
		// 表画面の立ち絵オブジェクトを裏画面にコピーする
		back.object[$obj_index].create_copy_from(front.object[$obj_index])
		
		// オブジェクトの立ち絵データを変更する
		$$change_bs_image(back.object[$obj_index], $bs_list[$i])
		
		// 表／裏の立ち絵にアクションコマンドを実行する
		$$execute_action_command(front.object[$obj_index], $$get_action_command($bs_list[$i]))
		$$execute_action_command(back.object[$obj_index], $$get_action_command($bs_list[$i]))
	}
}

//---------------------------------------------------------------------------
// 立ち絵を消去する(自動位置調整なし)
//---------------------------------------------------------------------------
command $$delete_bs_object(property $bs_name1 : str, property $bs_name2 : str, property $bs_name3 : str, property $bs_name4 : str, property $bs_name5 : str)
{
	property $i
	property $obj_index
	property $bs_list : strlist[<BS_DEFAULT_POS_MAX> + 1]
	
	// 指定された立ち絵名を処理しやすいようリストに保存する
	$bs_list[0] = $bs_name1
	$bs_list[1] = $bs_name2
	$bs_list[2] = $bs_name3
	$bs_list[3] = $bs_name4
	$bs_list[4] = $bs_name5
	$bs_list[5] = <NONE>
	
	// 指定された立ち絵の表情を変更する
	for( $i = 0, $i < $bs_list.get_size, $i += 1 )
	{
		// 無効な値の場合は処理を終了する
		if( $bs_list[$i] == <NONE> ) {
			break
		}
		
		// 指定された立ち絵のオブジェクトインデックスを取得する
		$obj_index = $$get_bs_obj_index($bs_list[$i])
		
		// 書式エラーの場合は処理をスキップする
		if( $obj_index == -1 ) {
			continue
		}
		
		// 表示されていないオブジェクトの場合はエラーにする
		if( front.object[$obj_index].disp == 0 ) {
			@dm("__lib_bs.ss → $$delete_bs_object\nbs_del命令のエラー。bs_del命令で指定されたキャラクターが表示されていません。\nキャラクター名 : " + $bs_list[$i] + "\n立ち絵消去をスキップします。")
			continue
		}
		// 立ち絵オブジェクトのワイプコピーフラグをオフにする
		front.object[$obj_index].wipe_copy = 0
		
		// アクションコマンドを実行する
		$$execute_action_command(front.object[$obj_index], $$get_action_command($bs_list[$i]))
	}
}

//---------------------------------------------------------------------------
// 立ち絵を裏画面に作成する(自動位置調整なし)
//---------------------------------------------------------------------------
command $$create_bs_object_back(property $bs_name : str, property $offset_x, property $offset_y, property $scale, property $rotate)
{
	property $obj_index
	
	// 指定された立ち絵のオブジェクトインデックスを取得する
	$obj_index = $$get_bs_obj_index($bs_name)
	
	// エラーの場合は処理を終了する
	if( $obj_index == -1 ) {
		return
	}
	
	$$set_bs_object(back.object[$obj_index], $bs_name)
	back.object[$obj_index].x += $offset_x
	back.object[$obj_index].y += $offset_y
	back.object[$obj_index].rotate_z = $rotate
	back.object[$obj_index].set_scale($scale, $scale)
}

//---------------------------------------------------------------------------
// 立ち絵の座標を移動する(x座標)
//---------------------------------------------------------------------------
command $$move_bs_object_x(property $bs_name : str, property $pos_type, property $pos_x, property $move_time, property $start_time, property $speed_mode, property $wait, property $only_back_move)
{
	property $i
	property $obj_index
	property $src_x
	property $dst_x
	property $stage
	
	// 指定された立ち絵のオブジェクトインデックスを取得する
	$obj_index = $$get_bs_obj_index($bs_name)
	
	// 書式エラーの場合は処理を終了する
	if( $obj_index == -1 ) {
		return
	}
	
	// backオブジェクトのみ移動のフラグがある場合はbackのみ
	$stage = 2
	
	if( $only_back_move ) {
		$stage = 1
	}
	
	// 各ステージオブジェクトの表示状況をチェックする
	for( $i = 0, $i < $stage, $i += 1 )
	{
		// 表示されているので移動処理を行う
		if( stage[$i].object[$obj_index].disp )
		{
			$src_x = stage[$i].object[$obj_index].x
			$dst_x = $pos_x
			
			// 座標タイプが相対座標の場合は現在座標を加算する
			if( $pos_type == <POS_TYPE_RELATIVE> ) {
				$dst_x += $src_x
			}
			
			// 移動命令を実行する
			$$set_pos_x_eve(stage[$i].object[$obj_index], $src_x, $dst_x, $move_time, $start_time, $speed_mode)
		}
	}
	
	if( $wait ) {
		front.object[$obj_index].x_eve.wait
	}
}

//---------------------------------------------------------------------------
// 立ち絵の座標を移動する(y座標)
//---------------------------------------------------------------------------
command $$move_bs_object_y(property $bs_name : str, property $pos_type, property $pos_y, property $move_time, property $start_time, property $speed_mode, property $wait, property $only_back_move)
{
	property $i
	property $obj_index
	property $src_y
	property $dst_y
	property $stage
	
	// 指定された立ち絵のオブジェクトインデックスを取得する
	$obj_index = $$get_bs_obj_index($bs_name)
	
	// 書式エラーの場合は処理を終了する
	if( $obj_index == -1 ) {
		return
	}
	
	// backオブジェクトのみ移動のフラグがある場合はbackのみ
	$stage = 2
	
	if( $only_back_move ) {
		$stage = 1
	}
	
	// 各ステージオブジェクトの表示状況をチェックする
	for( $i = 0, $i < $stage, $i += 1 )
	{
		// 表示されているので移動処理を行う
		if( stage[$i].object[$obj_index].disp )
		{
			$src_y = stage[$i].object[$obj_index].y
			$dst_y = $pos_y
			
			// 座標タイプが相対座標の場合は現在座標を加算する
			if( $pos_type == <POS_TYPE_RELATIVE> ) {
				$dst_y += $src_y
			}
			
			// 移動命令を実行する
			$$set_pos_y_eve(stage[$i].object[$obj_index], $src_y, $dst_y, $move_time, $start_time, $speed_mode)
		}
	}
	
	if( $wait ) {
		front.object[$obj_index].y_eve.wait
	}
}

//---------------------------------------------------------------------------
// 立ち絵のレイヤー値を設定する
//---------------------------------------------------------------------------
command $$set_bs_layer(property $bs_name : str, property $layer)
{
	property $i
	property $obj_index
	
	$obj_index = $$get_bs_obj_index($bs_name)
	
	// 書式エラーの場合は処理を終了する
	if( $obj_index == -1 ) {
		return
	}
	
	// back, frontオブジェクトの表示状況をチェックする
	for( $i = 0, $i < 2, $i += 1 )
	{
		// 指定キャラクターが表示されている場合はレイヤー値を変更する
		if( stage[$i].object[$obj_index].disp )
		{
			stage[$i].object[$obj_index].layer = $layer
		}
	}
}

//---------------------------------------------------------------------------
// 立ち絵のレイヤーを対象の立ち絵の前／後ろに変更する
//---------------------------------------------------------------------------
command $$bring_bs_layer(property $bs_name1 : str, property $bs_name2 : str, property $layer_order_type)
{
	property $i
	property $src_index
	property $dst_index
	property $offset_layer
	
	// レイヤー並び順タイプによって補正するレイヤー値を設定する
	if( $layer_order_type == <LAYER_ORDER_TYPE_FRONT> )
	{
		$offset_layer = 1
	}
	else
	{
		$offset_layer = -1
	}
	
	// 立ち絵オブジェクトのインデックスを取得する
	$src_index = $$get_bs_obj_index($bs_name1)
	$dst_index = $$get_bs_obj_index($bs_name2)
	
	// 書式エラーの場合は処理を終了する
	if( $src_index == -1 || $dst_index == -1 ) {
		return
	}
	
	// back, frontオブジェクトの表示状況をチェックする
	for( $i = 0, $i < 2, $i += 1 )
	{
		// 指定キャラクターと対象キャラクターが表示されている場合はレイヤー値を変更する
		if( stage[$i].object[$src_index].disp && stage[$i].object[$dst_index].disp )
		{
			stage[$i].object[$src_index].layer = stage[$i].object[$dst_index].layer + $offset_layer
		}
	}
}

//---------------------------------------------------------------------------
// 立ち絵の不透明度を設定する
//---------------------------------------------------------------------------
command $$set_bs_tr(property $bs_name : str, property $src_tr, property $dst_tr, property $time, property $start_time, property $speed_mode)
{
	property $i
	property $obj_index
	
	$obj_index = $$get_bs_obj_index($bs_name)
	
	// 書式エラーの場合は処理を終了する
	if( $obj_index == -1 ) {
		return
	}
	
	// back, frontオブジェクトの表示状況をチェックする
	for( $i = 0, $i < 2, $i += 1 )
	{
		// 変更先の不透明度が指定されていない場合は変更前の不透明度と同じにする
		if( $dst_tr == -1 ) {
			$dst_tr = $src_tr
		}
		
		// 指定キャラクターが表示されている場合は不透明度を変更する
		if( stage[$i].object[$obj_index].disp ) {
			$$set_tr_eve(stage[$i].object[$obj_index], $src_tr, $dst_tr, $time, $start_time, $speed_mode)
		}
	}
}

//---------------------------------------------------------------------------
// 顔グラを作成する
//---------------------------------------------------------------------------
command $$create_face(property $bs_name : str)
{
	property $index
	property $mwnd_no
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$index = $$get_bs_index($bs_name)
	
	// エラーチェック
	if( system.check_debug_flag == 1 )
	{
		if( $index == -1 ) {
			return
		}
		
		if( $bs_face_scale[$index] == 0 ) {
			@dm("__lib_bs.ss → $$create_face\n顔グラデータが正しく登録されていない可能性があります。$$set_face_data_defaultでキャラクターが登録済みか確認してください。\n指定キャラクター : " + $bs_name + "\n処理をスキップします。")
			return
		}
		
		if( $$get_bs_name_type($bs_name) == <BS_NAME_TYPE_FULL> )
		{
			if( $$get_bs_full_name_to_range($bs_name) != "bs" + math.tostr(__FACE_RANGE_DEFAULT) ) {
				@dm("__lib_bs.ss → $$create_face\n顔グラ距離指定のエラー。顔グラ命令の距離指定は無視されます。\n距離：" + $$get_bs_full_name_to_range($bs_name) + "\n距離指定を無視して表示します。")
			}
		}
	}
	
	// 省略なしの立ち絵指定名を取得する
	$bs_name = $$get_bs_full_name($bs_name)
	
	// 距離をデフォルトに設定する
	$bs_name = $bs_name.left(2) + math.tostr(__FACE_RANGE_DEFAULT) + $bs_name.mid(3)
	
	// マスクを作成する
	mask[<MASK_GROUP_FACE>].init
	mask[<MASK_GROUP_FACE>].create(__face_mask)
	
	// メッセージウィンドウの顔グラを設定する
	set_face($$get_bs_image_name($bs_name))
	
	// 顔グラの拡縮率や位置を設定する
	$mwnd_no = get_mwnd
	
	front.mwnd[$mwnd_no].face[0].set_scale($bs_face_scale[$index], $bs_face_scale[$index])
	front.mwnd[$mwnd_no].face[0].x_rep.resize(1)
	front.mwnd[$mwnd_no].face[0].y_rep.resize(1)
	front.mwnd[$mwnd_no].face[0].x_rep[0] = $bs_face_offset_x[$index]
	front.mwnd[$mwnd_no].face[0].y_rep[0] = $bs_face_offset_y[$index]
	front.mwnd[$mwnd_no].face[0].mask_no = <MASK_GROUP_FACE>
	// トーンカーブが有効な場合は設定する
	if( __USE_BS_TONECURVE ) {
		front.mwnd[$mwnd_no].face[0].tonecurve_no = $$get_bg_tonecurve_no
	}
}

//---------------------------------------------------------------------------
// 立ち絵指定名から登録キャラクターインデックスを取得する
//---------------------------------------------------------------------------
command $$get_bs_index(property $bs_name : str)
{
	property $i
	property $identifier : str
	
	// 立ち絵名からアクションコマンドを削除する
	$bs_name = $$chop_action_command($bs_name)
	
	// 立ち名から登録キャラクター名を取得する
	$identifier = $$get_bs_identifier($bs_name)
	
	for( $i = 0, $i < $bs_identifier.get_size, $i += 1 )
	{
		if( $bs_identifier[$i] == $identifier )
		{
			return ($i)
		}
	}
	
	// エラー
	@dm("__lib_bs.ss → $$get_bs_index\n定義されていないキャラクターが指定されました。書式が正しいか確認してください。\n指定キャラクター : " + $bs_name + "\n処理をスキップします。")
	
	return (-1)
}

//---------------------------------------------------------------------------
// 立ち絵名から立ち絵オブジェクトのインデックスを取得する
//---------------------------------------------------------------------------
command $$get_bs_obj_index(property $bs_name : str) : int
{
	property $index
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$index = $$get_bs_index($bs_name)
	
	if( $index == -1 )
	{
		return (-1)
	}
	
	return (<OBJ_CHARACTER> + $index)
}

//---------------------------------------------------------------------------
// 立ち絵指定名からキャラクター識別子を取得する
//---------------------------------------------------------------------------
command $$get_bs_identifier(property $bs_name : str) : str
{
	switch( $$get_bs_name_type($bs_name) ) {
	case(<BS_NAME_TYPE_FULL>)	return ($bs_name.mid(4, __BS_NAME_IDENTIFIER_DIGIT))	// (例：bs1_hz11_01)
	case(<BS_NAME_TYPE_FACE>)	return ($bs_name.mid(0, __BS_NAME_IDENTIFIER_DIGIT))	// (例：hz11_01)
	case(<BS_NAME_TYPE_COPY>)	return ($bs_name.mid(0, __BS_NAME_IDENTIFIER_DIGIT))	// (例：hz)
	case(<BS_NAME_TYPE_ERROR>)
	}
}

//---------------------------------------------------------------------------
// 立ち絵指定名から立ち絵指定名タイプを取得する
//---------------------------------------------------------------------------
command $$get_bs_name_type(property $bs_name : str) : int
{
	// 立ち絵指定名からアクションコマンドを削除する
	$bs_name  = $$chop_action_command($bs_name)
	
	// ------------------------------------
	// タイプ一覧
	// ------------------------------------
	// hz               ：copy 全省略
	// hz11_01          ：face 表情
	// hz11_01a         ：face 表情 + 拡張差分
	// hz11_0101        ：face 表情 + 口差分
	// hz11_0101a       ：face 表情 + 口差分 + 拡張差分
	// bs1_hz11_01      ：full 距離 + 表情
	// bs1_hz11_01a     ：full 距離 + 表情 + 拡張差分
	// bs1_hz11_0101    ：full 距離 + 表情 + 口差分
	// bs1_hz11_0101a   ：full 距離 + 表情 + 口差分 + 拡張差分
	
	if( $bs_name.cnt == __BS_NAME_IDENTIFIER_DIGIT )
	{
		return (<BS_NAME_TYPE_COPY>)
	}
	elseif( $bs_name.left(2) == "bs" )
	{
		return (<BS_NAME_TYPE_FULL>)
	}
	elseif( (__BS_NAME_IDENTIFIER_DIGIT + 5) <= $bs_name.cnt && $bs_name.cnt <= (__BS_NAME_IDENTIFIER_DIGIT + 8) )
	{
		return (<BS_NAME_TYPE_FACE>)
	}
	
	return (<BS_NAME_TYPE_ERROR>)
}

//---------------------------------------------------------------------------
// 立ち絵指定名から立ち絵ファイル名を取得する
//---------------------------------------------------------------------------
command $$get_bs_image_name(property $bs_name : str) : str
{
	property $image_name : str
	property $full_name  : str
	property $bs_index
	
	// 省略なしの立ち絵指定名を取得する
	$full_name = $$get_bs_full_name($bs_name)
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$bs_index = $$get_bs_index($bs_name)
	
	// 各データを取得する
	property $range     : str		// 距離
	property $chara     : str		// キャラクター
	property $direction : str		// 向き
	property $arms      : str		// 腕
	property $face      : str		// 表情
	property $mouth     : str		// 口
	property $extension : str		// 拡張
	
	$range     = $$get_bs_full_name_to_range($full_name)
	$chara     = $bs_file_name[$bs_index]
	$direction = $$get_bs_full_name_to_direction($full_name)
	$arms      = $$get_bs_full_name_to_arms($full_name)
	$face      = $$get_bs_full_name_to_face($full_name)
	$mouth     = $$get_bs_full_name_to_mouth($full_name)
	$extension = $$get_bs_full_name_to_extension($full_name)
	
	// ベース＋表情の読み込み
	property $g00_base_name     : str
	property $g00_body_name     : str
	
	$g00_base_name = $range + "_" + $chara + $direction
	$g00_body_name = $g00_base_name + "_base" + math.tostr($bs_dress_type[$bs_index]) + $arms
	
	$image_name = $g00_body_name + "(0, 0, 0)"
	$load_bs_files[0] = $g00_body_name	// エラーチェック用に保存
	$load_bs_files[1] = <NONE>	// エラーチェック用に保存
	$load_bs_files[2] = <NONE>	// エラーチェック用に保存
	$load_bs_files[3] = <NONE>	// エラーチェック用に保存
	$load_bs_files[4] = <NONE>	// エラーチェック用に保存
	$load_bs_files[5] = <NONE>	// エラーチェック用に保存
	
	// 表情差分の読み込み
	property $g00_face_name     : str
	property $g00_face_pat_name : str
	
	// 上書き表情差分が指定されているかチェックする
	if( $bs_overlay_face_type[$bs_index] != <NONE> )
	{
		$g00_face_name = $g00_base_name + "_face" + $bs_overlay_face_type[$bs_index] + "1"
		
		if( $bs_overlay_pose_disable[$bs_index] == $arms ) {
			$load_bs_files[5] = $g00_face_name	// エラーチェック用に保存
		}
	}
	else
	{
		// 服装／腕差分専用の表情あるかチェックする
		$g00_face_name = $g00_base_name + "_face" + math.tostr($bs_dress_type[$bs_index]) + $arms + "1"
		
		if( $$exists_g00($g00_face_name) == 0 )
		{
			// 服装差分専用の表情があるかチェックする
			$g00_face_name = $g00_base_name + "_face" + math.tostr($bs_dress_type[$bs_index]) + "x1"
			
			if( $$exists_g00($g00_face_name) == 0 )
			{
				// 腕差分専用の表情があるかチェックする
				$g00_face_name = $g00_base_name + "_facex" + $arms + "1"
				
				// 服装／腕差分専用の表情がない場合は共通の表情を読み込む
				if( $$exists_g00($g00_face_name) == 0 )
				{
					$g00_face_name = $g00_base_name + "_face001"
				}
			}
		}
		
		// 服装差分専用の表情がない場合は共通の表情を読み込む
		if( $$exists_g00($g00_face_name) == 0 ) {
			$g00_face_name = $g00_base_name + "_face001"
		}
		
		$g00_body_name = $g00_base_name + "_facex" + $arms + "1"
		
		// 腕差分専用の表情がある場合は腕差分専用の表情を読み込む
		if( $$exists_g00($g00_body_name) ) {
			$g00_face_name = $g00_body_name
		}
	}
	
	$g00_face_pat_name = "(0, 0, " + math.tostr($face.tonum - 1) + ")"
	
	$image_name += " | " + $g00_face_name + $g00_face_pat_name
	$load_bs_files[1] = $g00_face_name	// エラーチェック用に保存
	
	// 口差分の読み込み
	property $g00_mouth_name     : str
	property $g00_mouth_pat_name : str
	
	if( $mouth != <NONE> )
	{
		$g00_mouth_name = $g00_base_name + "_face" + math.tostr($bs_dress_type[$bs_index]) + "2"
		
		// 服装差分専用の表情がない場合は共通の表情を読み込む
		if( $$exists_g00($g00_mouth_name) == 0 ) {
			$g00_mouth_name     = $g00_base_name + "_face002"
		}
		
		$g00_mouth_pat_name = "(0, 0, " + math.tostr($mouth.tonum - 1) + ")"
		
		$image_name += " | " + $g00_mouth_name + $g00_mouth_pat_name
		$load_bs_files[2] = $g00_mouth_name	// エラーチェック用に保存
	}
	
	// 拡張差分の読み込み
	property $g00_extension_name     : str
	property $g00_extension_pat_name : str
	
	if( $extension != <NONE> )
	{
		$g00_extension_name     = $g00_base_name + "_face003"
		$g00_extension_pat_name = "(0, 0, " + math.tostr($$alphabet_to_num($extension)) + ")"
		
		$image_name += " | " + $g00_extension_name + $g00_extension_pat_name
		$load_bs_files[3] = $g00_extension_name	// エラーチェック用に保存
	}
	
	// ベース拡張(表情の上に乗る)差分の読み込み
	property $g00_face_overlay_name : str
	
	$g00_face_overlay_name = $g00_base_name + "_basex" + $arms
	if( $$exists_g00($g00_face_overlay_name) )
	{
		$image_name += " | " + $g00_face_overlay_name
		$load_bs_files[4] = $g00_face_overlay_name	// エラーチェック用に保存
	}
	
	return ($image_name)
}

//---------------------------------------------------------------------------
// 立ち絵指定名から省略なしの立ち絵指定名を取得する
//---------------------------------------------------------------------------
command $$get_bs_full_name(property $bs_name : str) : str
{
	property $bs_index
	
	// 立ち絵指定名からアクションコマンドを削除する
	$bs_name  = $$chop_action_command($bs_name)
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$bs_index = $$get_bs_index($bs_name)
	
	switch( $$get_bs_name_type($bs_name) ) {
	
	// 表情のみ指定(例：hz11_01)の場合は距離データを追加する
	case(<BS_NAME_TYPE_FACE>)
		$bs_name = "bs" + math.tostr($bs_range_type[$bs_index]) + "_" + $bs_name
	
	// 表示のみ指定(例：hz)の場合は距離データ＋姿勢＋表情＋口差分＋拡張差分データを追加する
	case(<BS_NAME_TYPE_COPY>)
		
		$bs_name = "bs" + math.tostr($bs_range_type[$bs_index]) + "_" + $bs_name
		$bs_name += math.tostr($bs_pose_type[$bs_index]) + "_" + math.tostr($bs_face_type[$bs_index])
		
		if( $bs_mouth_type[$bs_index] != <NONE> ) {
			$bs_name += $bs_mouth_type[$bs_index]
		}
		if( $bs_extension_type[$bs_index] != <NONE> ) {
			$bs_name += $bs_extension_type[$bs_index]
		}
	}
	
	return ($bs_name)
}

//---------------------------------------------------------------------------
// 省略なしの立ち絵指定名から各データを取得する
//---------------------------------------------------------------------------
command $$get_bs_full_name_to_range(property $bs_full_name : str) : str { return ($bs_full_name.left(3)) }
command $$get_bs_full_name_to_chara(property $bs_full_name : str) : str { return ($bs_full_name.mid(4, __BS_NAME_IDENTIFIER_DIGIT)) }
command $$get_bs_full_name_to_face(property $bs_full_name : str) : str { return ($bs_full_name.mid(__BS_NAME_IDENTIFIER_DIGIT + 7, 2)) }

command $$get_bs_full_name_to_direction(property $bs_full_name : str) : str
{
	if( __BS_NAME_DIRECTION_ARMS_SWAP == 1 ) {
		return ($bs_full_name.mid(__BS_NAME_IDENTIFIER_DIGIT + 5, 1))
	}
	
	return ($bs_full_name.mid(__BS_NAME_IDENTIFIER_DIGIT + 4, 1))
}

command $$get_bs_full_name_to_arms(property $bs_full_name : str) : str
{
	if( __BS_NAME_DIRECTION_ARMS_SWAP == 1 ) {
		return ($bs_full_name.mid(__BS_NAME_IDENTIFIER_DIGIT + 4, 1))
	}
	
	return ($bs_full_name.mid(__BS_NAME_IDENTIFIER_DIGIT + 5, 1))
}

command $$get_bs_full_name_to_mouth(property $bs_full_name : str) : str
{
	if( (__BS_NAME_IDENTIFIER_DIGIT + 10) < $bs_full_name.cnt ) {
		return ($bs_full_name.mid((__BS_NAME_IDENTIFIER_DIGIT + 9), 2))
	}
	
	return (<NONE>)
}

command $$get_bs_full_name_to_extension(property $bs_full_name : str) : str
{
	property $extension : str
	
	$extension = $bs_full_name.right(1)
	
	if( $$is_alphabet($extension) )
	{
		return ($extension)
	}
	
	return (<NONE>)
}

//---------------------------------------------------------------------------
// 立ち絵指定名データを保存する
//---------------------------------------------------------------------------
command $$save_bs_type_data(property $bs_name : str)
{
	property $bs_index
	property $tmp : str
	
	// 省略なしの立ち絵指定名を取得する
	$bs_name = $$get_bs_full_name($bs_name)
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$bs_index = $$get_bs_index($bs_name)
	
	// 距離データの保存
	$tmp = $$get_bs_full_name_to_range($bs_name)
	$tmp = $tmp.right(1)
	$bs_range_type[$bs_index] = $tmp.tonum()
	
	// 姿勢データの保存
	$tmp = $$get_bs_full_name_to_direction($bs_name) + $$get_bs_full_name_to_arms($bs_name)
	$bs_pose_type[$bs_index] = $tmp.tonum()
	
	// 表情データの保存
	$tmp = $$get_bs_full_name_to_face($bs_name)
	$bs_face_type[$bs_index] = $tmp.tonum()
	
	// 口差分データの保存
	$bs_mouth_type[$bs_index] = $$get_bs_full_name_to_mouth($bs_name)
	
	// 拡張差分データの保存
	$bs_extension_type[$bs_index] = $$get_bs_full_name_to_extension($bs_name)
}

//---------------------------------------------------------------------------
// 立ち絵表示モードを設定する
//---------------------------------------------------------------------------
command $$set_bs_disp_mode(property $disp_mode)
{
	$bs_disp_mode = $disp_mode
}

//---------------------------------------------------------------------------
// 立ち絵表示モードをデフォルトに設定する
//---------------------------------------------------------------------------
command $$set_bs_disp_mode_default
{
	$bs_disp_mode = __BS_WIPE_SLIDE
}

//---------------------------------------------------------------------------
// 立ち絵表示モードを取得する
//---------------------------------------------------------------------------
command $$get_bs_disp_mode : int
{
	return ($bs_disp_mode)
}

//---------------------------------------------------------------------------
// 表示モードがスライドの時にスライド移動にかける時間を設定する
//---------------------------------------------------------------------------
command $$set_bs_disp_slide_time(property $slide_time)
{
	$bs_disp_slide_time = $slide_time
}

//---------------------------------------------------------------------------
// 表示モードがスライドの時にスライド移動にかける時間をデフォルトに設定する
//---------------------------------------------------------------------------
command $$set_bs_disp_slide_time_default
{
	$bs_disp_slide_time = __BS_WIPE_SLIDE_TIME
}

//---------------------------------------------------------------------------
// 表示モードがスライドの時にスライド移動にかける時間を取得する
//---------------------------------------------------------------------------
command $$get_bs_disp_slide_time : int
{
	return ($bs_disp_slide_time)
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターを登録する
//---------------------------------------------------------------------------
command $$register_bs_character(property $character_name : str, property $file_name : str, property $dress_type_default, property $x, property $y, property $layer)
{
	property $size
	
	// 指定されたキャラクターの文字数が問題ないかチェックする
	if( $character_name.len != __BS_NAME_IDENTIFIER_DIGIT ) {
		@dm("app_settings.ss → $$set_bs_data_default\nキャラクター登録のエラー。登録するキャラクターの文字数は" + math.tostr(__BS_NAME_IDENTIFIER_DIGIT) + "文字にしてください。\nキャラクター名 : " + $character_name + "\n処理をスキップします。")
		return
	}
	
	// 指定されたキャラクターが登録済みでないかチェックする
	if( $$is_registered_bs_character($character_name) )
	{
		// 既に登録されているキャラクターの場合は処理をスキップする
		@dm("app_settings.ss → $$set_bs_data_default\nキャラクター登録のエラー。この名前はすでに登録が行われています。\nキャラクター名 : " + $character_name + "\n処理をスキップします。")
		return
	}
	
	// キャラクター個別データの配列を確保する
	$size = $bs_identifier.get_size + 1
	
	$bs_identifier.resize($size)
	$bs_file_name.resize($size)
	$bs_range_type.resize($size)
	$bs_dress_type.resize($size)
	$bs_dress_type_default.resize($size)
	$bs_pose_type.resize($size)
	$bs_face_type.resize($size)
	$bs_mouth_type.resize($size)
	$bs_extension_type.resize($size)
	$bs_overlay_face_type.resize($size)
	$bs_overlay_pose_disable.resize($size)
	$bs_offset_x.resize($size)
	$bs_offset_y.resize($size)
	$bs_offset_layer.resize($size)
	$bs_face_scale.resize($size)
	$bs_face_offset_x.resize($size)
	$bs_face_offset_y.resize($size)
	
	// キャラクター個別データを登録する
	$bs_identifier[$size - 1] = $character_name
	$bs_file_name[$size - 1] = $file_name
	$bs_dress_type_default[$size - 1] = $dress_type_default
	$bs_offset_x[$size - 1] = $x
	$bs_offset_y[$size - 1] = $y
	$bs_offset_layer[$size - 1] = $layer
}

//---------------------------------------------------------------------------
// 指定された立ち絵キャラクターが登録済みかチェックする
//---------------------------------------------------------------------------
command $$is_registered_bs_character(property $character_name : str)
{
	property $i
	
	for( $i = 0, $i < $bs_identifier.get_size, $i += 1 )
	{
		if( $bs_identifier[$i] == $character_name ) {
			return (1)
		}
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターの顔グラを登録する
//---------------------------------------------------------------------------
command  $$register_bs_face(property $character_name : str, property $scale, property $x, property $y)
{
	property $index
	
	// 立ち絵キャラクターとして登録されているかチェックする
	if( $$is_registered_bs_character($character_name) == 0 )
	{
		@dm("__lib_bs.ss → $$register_bs_face\nキャラクターの顔グラ登録エラー。指定されたキャラクターが立ち絵として登録されていません。$$set_bs_data_defaultでキャラクターを登録してください。\nキャラクター名 : " + $character_name + "\n処理をスキップします。")
		return
	}
	
	// 立ち絵指定名から登録キャラクターインデックスを取得する
	$index = $$get_bs_index($character_name)
	
	// キャラクター個別データを登録する
	$bs_face_scale[$index] = $scale
	$bs_face_offset_x[$index] = $x
	$bs_face_offset_y[$index] = $y
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターの服装を取得する
//---------------------------------------------------------------------------
command $$get_bs_dress_type(property $character_name : str) : int
{
	property $index
	
	$index = $$get_bs_index($character_name)
	
	if( $index == - 1 ) {
		return (-1)
	}
	
	return ($bs_dress_type[$index])
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターの服装を設定する
//---------------------------------------------------------------------------
command $$set_bs_dress_type(property $character_name : str, property $dress)
{
	property $index
	
	$index = $$get_bs_index($character_name)
	
	if( $index == - 1 ) {
		return
	}
	
	$bs_dress_type[$index] = $dress
	$bs_overlay_face_type[$index] = <NONE>
	$bs_overlay_pose_disable[$index] = <NONE>
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターの上書き表情を取得する
//---------------------------------------------------------------------------
command $$get_bs_overlay_face_type(property $character_name : str) : str
{
	property $index
	
	$index = $$get_bs_index($character_name)
	
	if( $index == - 1 ) {
		return ("")
	}
	
	return ($bs_overlay_face_type[$index])
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターの上書き表情を設定する
//---------------------------------------------------------------------------
command $$set_bs_overlay_face_type(property $character_name : str, property $face : str)
{
	property $index
	
	$index = $$get_bs_index($character_name)
	
	if( $index == - 1 ) {
		return
	}
	
	$bs_overlay_face_type[$index] = $face
}

//---------------------------------------------------------------------------
// 立ち絵キャラクターの上書き表情差分を使用時に禁止するポーズを設定する
//---------------------------------------------------------------------------
command $$set_bs_overlay_pose_disable(property $character_name : str, property $pose : str)
{
	property $index
	
	$index = $$get_bs_index($character_name)
	
	if( $index == - 1 ) {
		return
	}
	
	$bs_overlay_pose_disable[$index] = $pose
}

//---------------------------------------------------------------------------
// 立ち絵のデフォルト表示位置の設定
//---------------------------------------------------------------------------
command $$set_default_pos_bs1(property $x)
{
	$bs_default_pos_x[0] = <SCREEN_CENTER_X> + $x
}

command $$set_default_pos_bs2(property $x1, property $x2)
{
	$bs_default_pos_x[1] = <SCREEN_CENTER_X> + $x1
	$bs_default_pos_x[2] = <SCREEN_CENTER_X> + $x2
}

command $$set_default_pos_bs3(property $x1, property $x2, property $x3)
{
	$bs_default_pos_x[3] = <SCREEN_CENTER_X> + $x1
	$bs_default_pos_x[4] = <SCREEN_CENTER_X> + $x2
	$bs_default_pos_x[5] = <SCREEN_CENTER_X> + $x3
}

command $$set_default_pos_bs4(property $x1, property $x2, property $x3, property $x4)
{
	$bs_default_pos_x[6] = <SCREEN_CENTER_X> + $x1
	$bs_default_pos_x[7] = <SCREEN_CENTER_X> + $x2
	$bs_default_pos_x[8] = <SCREEN_CENTER_X> + $x3
	$bs_default_pos_x[9] = <SCREEN_CENTER_X> + $x4
}

command $$set_default_pos_bs5(property $x1, property $x2, property $x3, property $x4, property $x5)
{
	$bs_default_pos_x[10] = <SCREEN_CENTER_X> + $x1
	$bs_default_pos_x[11] = <SCREEN_CENTER_X> + $x2
	$bs_default_pos_x[12] = <SCREEN_CENTER_X> + $x3
	$bs_default_pos_x[13] = <SCREEN_CENTER_X> + $x4
	$bs_default_pos_x[14] = <SCREEN_CENTER_X> + $x5
}

//---------------------------------------------------------------------------
// 立ち絵のデフォルト表示位置を取得する
//---------------------------------------------------------------------------
command $$get_default_bs_pos(property $index) : int
{
	return ($bs_default_pos_x[$index])
}

//---------------------------------------------------------------------------
// 立ち絵シーンデータを初期化する
//---------------------------------------------------------------------------
command $$init_bs_scene_data
{
	property $i
	
	// 各立ち絵データを初期化
	for( $i = 0, $i < $bs_identifier.get_size, $i += 1 )
	{
		$bs_range_type[$i] = __BS_RANGE_DEFAULT
		$bs_dress_type[$i] = $bs_dress_type_default[$i]
		$bs_pose_type[$i]  = 11
		$bs_face_type[$i]  = 01
		$bs_mouth_type[$i]  = <NONE>
		$bs_extension_type[$i]  = <NONE>
		$bs_overlay_face_type[$i] = <NONE>
	}
	
	$$set_bs_disp_mode_default			// 立ち絵表示モードをデフォルトに設定する
	$$set_bs_disp_slide_time_default	// 表示モードがスライドの時にスライド移動にかける時間をデフォルトに設定する
}

//---------------------------------------------------------------------------
// 立ち絵指定名のエラーをチェックする
//---------------------------------------------------------------------------
command $$is_error_bs_name(property $bs_name : str)
{
	if( system.check_debug_flag == 0 ) {
		return (0)
	}
	
	// ファイルのエラーチェック
	property $i
	property $str : str
	
	// 立ち絵指定名から立ち絵ファイル名を取得する
	// $load_bs_filesに読み込むファイルが設定される
	$$get_bs_image_name($bs_name)
	
	for( $i = 0, $i < $load_bs_files.get_size, $i += 1 )
	{
		if( $load_bs_files[$i] == <NONE> ) {
			continue
		}
		
		if( $i < 5 )
		{
			if( $$exists_g00($load_bs_files[$i]) == 0 )
			{
				$str = "__lib_bs.ss → $$is_error_bs_name\n"
				
				switch( $i ) {
				case(2)		$str += "口差分ファイルがありません。口差分ファイルが生成されているか確認してください。"
				case(3)		$str += "表情上の拡張差分ファイルがありません。表情上の拡張差分ファイルが生成されているか確認してください。"
				default		$str += "立ち絵ファイルが存在しません。書式が正しいか確認してください。"
				}
				
				$str += "\n指定キャラクター : " + $bs_name + "\n存在しないファイル : " + $load_bs_files[$i] + "\n処理をスキップします。"
				@dm($str)
				
				return (1)
			}
		}
		else
		{
			$str += "この服装差分時はこの腕差分を使用するのは禁止されています。"
			$str += "\n指定キャラクター : " + $bs_name + "\n処理をスキップします。"
			@dm($str)
			
			return (1)
		}
	}
	
	property $name : str
	
	$name = $bs_name
	
	// ------------------------------------
	// 指定名タイプが距離省略なしかチェックする
	// ------------------------------------
	// 例：bs1_hz11_01
	// 例：bs1_hz11_01h
	// 例：bs1_hz11_0101
	// 例：bs1_hz11_0101h
	if( $name.mid(3, 1) == "_" && $name.mid(__BS_NAME_IDENTIFIER_DIGIT + 6, 1) == "_" )
	{
		// 距離指定が
		$name.left(3)
		
		$name = $name.mid(4, $name.cnt)
	}
	
	return (0)
	
	// ------------------------------------
	// 指定名タイプが距離省略かチェックする
	// ------------------------------------
	// 例：hz11_01
	// 例：hz11_01h
	// 例：hz11_0101
	// 例：hz11_0101h
	if( $bs_name.mid(__BS_NAME_IDENTIFIER_DIGIT + 2, 1) == "_" )
	{
		// 登録されていない識別子はエラーにする
		if( $$is_registered_bs_character($bs_name.left(__BS_NAME_IDENTIFIER_DIGIT)) == 0 ) {
			@dm("__lib_bs.ss → $$is_error_bs_name\n定義されていないキャラクターが指定されました。書式が正しいか確認してください。\n指定キャラクター : " + $bs_name + "\n処理をスキップします。")
			return (1)
		}
		
		// 距離省略
		return (0)
	}
	
	// ------------------------------------
	// 指定名タイプが全省略かチェックする
	// ------------------------------------
	// 例：hz
	elseif( $bs_name.cnt == __BS_NAME_IDENTIFIER_DIGIT )
	{
		// 登録されている識別子か確認する
		if( $$is_registered_bs_character($bs_name) ) {
			return (0)
		}
		
		// ここに来る場合は登録されていない識別子なのでエラー
		@dm("__lib_bs.ss → $$is_error_bs_name\n定義されていないキャラクターが指定されました。書式が正しいか確認してください。\n指定キャラクター : " + $bs_name + "\n処理をスキップします。")
		return (1)
	}
	
	@dm("__lib_bs.ss → $$is_error_bs_name\n立ち絵指定が判別できませんでした。書式が正しいか確認してください。\n立ち絵名 : " + $bs_name + "\n処理をスキップします。")
	return (1)
}

//---------------------------------------------------------------------------
// 非同期での立ち絵変更を管理する時間を初期化する
//---------------------------------------------------------------------------
command $$init_bs_async_change_time
{
	$bs_async_change_time = 0
}

//---------------------------------------------------------------------------
// 非同期での立ち絵変更を管理する時間分の待ちを行う
//---------------------------------------------------------------------------
command $$wait_bs_async_change_time(property $wait_time)
{
	$bs_async_change_time = $wait_time - $bs_async_change_time
	timewait_key($bs_async_change_time)
	$bs_async_change_time = $wait_time
}
