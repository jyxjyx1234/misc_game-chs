//===========================================================================
//!
//!    @file     __lib_wipe.ss
//!    @brief    ワイプ制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	#property	$wipe_type						// ワイプタイプ
	#property	$wipe_time						// ワイプにかける時間
	#property	$wipe_speed_mode				// スピードモード(0=等速、1=加速、2=減速)
	#property	$wipe_option : intlist[8]		// ワイプの詳細設定
	#property	$wipe_wait						// ワイプが終わるのを待つかどうか
	#property	$wipe_start_time				// ワイプを開始する時間
	#property	$wipe_order : intlist[2]		// ワイプするオーダーの範囲
	#property	$wipe_layer : intlist[2]		// ワイプするレイヤーの範囲
	#property	$wipe_all						// 全てのオーダーをワイプする(メッセージウィンドウなどのUIを含める)
	#property	$wipe_mask_file : str			// マスクワイプに使用するファイル
	
	#property	$wipe_type_set_ready			// ワイプタイプがすでに設定済みかどうかのフラグ
	#property	$wipe_wait_set_ready			// ワイプ終わるのを待つがすでに設定済みかどうかのフラグ

#inc_end

#z00

//---------------------------------------------------------------------------
// ワイプの実行
//---------------------------------------------------------------------------
command $$wipe
{
	property $i
	
	// 表示速度／背景が瞬間かつ、backに背景がある場合はワイプ時間を0にする
	if( <EFFECT_SPEED_BG> ) {
		if( back.object[<OBJ_BG>].disp || back.object[<OBJ_FADE>].disp ) {
			$wipe_time = 0
		}
	}
	
	// 表示速度／背景が瞬間かつ、backに背景がある場合はワイプ時間を0にする
	if( <EFFECT_SPEED_CHARACTER> )
	{
		for( $i = <OBJ_CHARACTER>, $i < <OBJ_CHARACTER_MAX>, $i += 1 ) {
			if( back.object[$i].disp ) {
				$wipe_time = 0
				break
			}
		}
		if( $wipe_time != 0 ) {
			for( $i = <OBJ_CHARACTER>, $i < <OBJ_CHARACTER_MAX>, $i += 1 ) {
				if( front.object[$i].disp ) {
					$wipe_time = 0
					break
				}
			}
		}
	}
	
	// 表示速度／イベントＣＧが瞬間かつ、backにイベントＣＧがある場合はワイプ時間を0にする
	if( <EFFECT_SPEED_CG> ) {
		if( back.object[<OBJ_CG>].disp ) {
			$wipe_time = 0
		}
	}
	
	if( $wipe_mask_file == "" )
	{
		if( $wipe_all )
		{
			wipe_all(	type		= $wipe_type,
						time		= $wipe_time,
						speed_mode	= $wipe_speed_mode,
						option		= [$wipe_option[0], $wipe_option[1], $wipe_option[2], $wipe_option[3], $wipe_option[4], $wipe_option[5], $wipe_option[6], $wipe_option[7]],
						wait		= $wipe_wait,
						start_time	= $wipe_start_time,
						start_order	= $wipe_order[0],
						end_order	= $wipe_order[1],
						start_layer	= $wipe_layer[0],
						end_layer	= $wipe_layer[1]
					)
		}
		else
		{
			wipe(	type		= $wipe_type,
					time		= $wipe_time,
					speed_mode	= $wipe_speed_mode,
					option		= [$wipe_option[0], $wipe_option[1], $wipe_option[2], $wipe_option[3], $wipe_option[4], $wipe_option[5], $wipe_option[6], $wipe_option[7]],
					wait		= $wipe_wait,
					start_time	= $wipe_start_time,
					start_order	= $wipe_order[0],
					end_order	= $wipe_order[1],
					start_layer	= $wipe_layer[0],
					end_layer	= $wipe_layer[1]
				)
		}
	}
	else
	{
		if( $wipe_all )
		{
			mask_wipe_all(	$wipe_mask_file,
							type		= $wipe_type,
							time		= $wipe_time,
							speed_mode	= $wipe_speed_mode,
							option		= [$wipe_option[0], $wipe_option[1], $wipe_option[2], $wipe_option[3], $wipe_option[4], $wipe_option[5], $wipe_option[6], $wipe_option[7]],
							wait		= $wipe_wait,
							start_time	= $wipe_start_time,
							start_order	= $wipe_order[0],
							end_order	= $wipe_order[1],
							start_layer	= $wipe_layer[0],
							end_layer	= $wipe_layer[1]
						)
		}
		else
		{
			mask_wipe(	$wipe_mask_file,
						type		= $wipe_type,
						time		= $wipe_time,
						speed_mode	= $wipe_speed_mode,
						option		= [$wipe_option[0], $wipe_option[1], $wipe_option[2], $wipe_option[3], $wipe_option[4], $wipe_option[5], $wipe_option[6], $wipe_option[7]],
						wait		= $wipe_wait,
						start_time	= $wipe_start_time,
						start_order	= $wipe_order[0],
						end_order	= $wipe_order[1],
						start_layer	= $wipe_layer[0],
						end_layer	= $wipe_layer[1]
					)
		}
	}
	
	// ワイプ実行後、ワイプデータを初期化する
	$$init_wipe_data
}

//---------------------------------------------------------------------------
// ワイプデータの初期化
//---------------------------------------------------------------------------
command $$init_wipe_data
{
	$wipe_type = 0
	$wipe_time = 0
	$wipe_speed_mode = 0
	$wipe_option.init
	$wipe_wait = 1
	$wipe_start_time = 0
	$wipe_order.init
	$wipe_layer[0] = 0
	$wipe_layer[1] = <LAYER_MAX>
	$wipe_all = 0
	$wipe_mask_file = ""
	$wipe_type_set_ready = 0
	$wipe_wait_set_ready = 0
}

//---------------------------------------------------------------------------
// ワイプデータの簡易設定(ワイプタイプ、時間、スピードモード、オプション)
//---------------------------------------------------------------------------
command $$set_wipe_simple_data(property $type, property $time, property $speed_mode,
							   property $opt0, property $opt1, property $opt2, property $opt3, property $opt4, property $opt5, property $opt6, property $opt7)
{
	$wipe_type = $type
	$wipe_time = $time
	$wipe_speed_mode = $speed_mode
	$wipe_option.sets(0, $opt0, $opt1, $opt2, $opt3, $opt4, $opt5, $opt6, $opt7)
}

//---------------------------------------------------------------------------
// ワイプタイプの設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_type(property $type)
{
	$wipe_type = $type
}

//---------------------------------------------------------------------------
// ワイプにかける時間の設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_time(property $time)
{
	$wipe_time = $time
}

//---------------------------------------------------------------------------
// ワイプスピードモードの設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_speed_mode(property $speed_mode)
{
	$wipe_speed_mode = $speed_mode
}

//---------------------------------------------------------------------------
// ワイプの詳細設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_option(property $opt0, property $opt1, property $opt2, property $opt3, property $opt4, property $opt5, property $opt6, property $opt7)
{
	$wipe_option.sets(0, $opt0, $opt1, $opt2, $opt3, $opt4, $opt5, $opt6, $opt7)
}

//---------------------------------------------------------------------------
// ワイプの終了待ちの設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_wait(property $wait)
{
	$wipe_wait = $wait
}

//---------------------------------------------------------------------------
// ワイプを開始する時間の設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_start_time(property $start_time)
{
	$wipe_start_time = $start_time
}

//---------------------------------------------------------------------------
// ワイプするオーダーの範囲を設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_order(property $start_order, property $end_order)
{
	$wipe_order[0] = $start_order
	$wipe_order[1] = $end_order
}

//---------------------------------------------------------------------------
// ワイプするレイヤーの範囲を設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_layer(property $start_layer, property $end_layer)
{
	$wipe_layer[0] = $start_layer
	$wipe_layer[1] = $end_layer
}

//---------------------------------------------------------------------------
// 全てのオーダーをワイプする設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_all(property $all)
{
	$wipe_all = $all
}

//---------------------------------------------------------------------------
// ワイプするマスクファイルを設定(個別指定)
//---------------------------------------------------------------------------
command $$set_wipe_mask_file(property $mask_file : str)
{
	$wipe_mask_file = $mask_file
}

//---------------------------------------------------------------------------
// ワイプタイプがすでに設定済みかどうかのフラグを取得する
//---------------------------------------------------------------------------
command $$get_wipe_type_ready : int
{
	return ($wipe_type_set_ready)
}

//---------------------------------------------------------------------------
// ワイプタイプがすでに設定済みかどうかのフラグを設定する
//---------------------------------------------------------------------------
command $$set_wipe_type_ready(property $flag)
{
	$wipe_type_set_ready = $flag
}

//---------------------------------------------------------------------------
// ワイプ終わるのを待つがすでに設定済みかどうかのフラグを取得する
//---------------------------------------------------------------------------
command $$get_wipe_wait_ready : int
{
	return ($wipe_wait_set_ready)
}

//---------------------------------------------------------------------------
// ワイプ終わるのを待つがすでに設定済みかどうかのフラグを設定する
//---------------------------------------------------------------------------
command $$set_wipe_wait_ready(property $flag)
{
	$wipe_wait_set_ready = $flag
}

//---------------------------------------------------------------------------
// 指定範囲のワイプコピーフラグを設定する
//---------------------------------------------------------------------------
command $$set_front_wipe_copy(property $flag, property $start_index, property $end_index)
{
	property $i
	
	for( $i = $start_index, $i < $end_index, $i += 1 )
	{
		front.object[$i].wipe_copy = $flag
	}
}

//---------------------------------------------------------------------------
// 全てのオブジェクトのワイプコピーフラグを設定する
//---------------------------------------------------------------------------
command $$set_front_wipe_copy_all(property $flag)
{
	$$set_front_wipe_copy($flag, <OBJ_START>, <OBJ_MAX>)
}

//---------------------------------------------------------------------------
// 背景オブジェクトのワイプコピーフラグを設定する
//---------------------------------------------------------------------------
command $$set_front_wipe_copy_bg(property $flag)
{
	front.object[<OBJ_BG>].wipe_copy = $flag
}

//---------------------------------------------------------------------------
// 全ての立ち絵オブジェクトのワイプコピーフラグを設定する
//---------------------------------------------------------------------------
command $$set_front_wipe_copy_bs_all(property $flag)
{
	$$set_front_wipe_copy($flag, <OBJ_CHARACTER>, <OBJ_CHARACTER_MAX>)
}

//---------------------------------------------------------------------------
// イベントＣＧオブジェクトのワイプコピーフラグを設定する
//---------------------------------------------------------------------------
command $$set_front_wipe_copy_cg(property $flag)
{
	front.object[<OBJ_CG>].wipe_copy = $flag
}

//---------------------------------------------------------------------------
// 指定範囲のシステムオブジェクトのワイプコピーフラグをオフにする
//---------------------------------------------------------------------------
command $$off_system_front_wipe_copy(property $start_index, property $end_index)
{
	property $i
	property $excall
	
	// システムコール中か判定する
	if( excall.check_alloc == 1 ) {
		$excall = 1
	}
	
	for( $i = $start_index, $i < $end_index, $i += 1 )
	{
		excall[$excall].front.object[$i].wipe_copy = 0
	}
}

//---------------------------------------------------------------------------
// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
//---------------------------------------------------------------------------
command $$off_system_front_wipe_copy_all
{
	$$off_system_front_wipe_copy(<OBJ_START>, <OBJ_MAX>)
}
