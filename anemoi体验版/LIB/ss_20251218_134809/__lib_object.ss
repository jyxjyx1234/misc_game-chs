//===========================================================================
//!
//!    @file     __lib_object.ss
//!    @brief    オブジェクト制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// 子供オブジェクトを作成する
//---------------------------------------------------------------------------
command $$set_child_object(property $obj : object, property $child_num)
{
	$obj.disp = 1
	$obj.child.resize($child_num)
}

//---------------------------------------------------------------------------
// 読み込んでいる画像の真ん中を中心座標にする
//---------------------------------------------------------------------------
command $$set_image_center(property $obj : object)
{
	$obj.set_center($obj.get_size_x / 2, $obj.get_size_y / 2)
}

//---------------------------------------------------------------------------
// 読み込んでいる画像の真ん中を中心補正座標にする
//---------------------------------------------------------------------------
command $$set_image_center_rep(property $obj : object)
{
	$obj.set_center_rep($obj.get_size_x / 2, $obj.get_size_y / 2)
}

//---------------------------------------------------------------------------
// オブジェクトをウインドウサイズサイズに拡縮する
//---------------------------------------------------------------------------
command $$set_screen_scale(property $obj : object)
{
	$obj.set_scale(<SCREEN_WIDTH> * 1000 / $obj.get_size_x, <SCREEN_HEIGHT> * 1000 / $obj.get_size_y)
}

//-----------------------------------------------------------------
// オブジェクトに座標イベントを設定する
//-----------------------------------------------------------------
command $$set_pos_eve(property $obj : object, property $src_x, property $src_y, property $dst_x, property $dst_y, property $time, property $start_time, property $speed_mode)
{
	$$set_pos_x_eve($obj, $src_x, $dst_x, $time, $start_time, $speed_mode)
	$$set_pos_y_eve($obj, $src_y, $dst_y, $time, $start_time, $speed_mode)
}

//-----------------------------------------------------------------
// オブジェクトに補正座標イベントを設定する
//-----------------------------------------------------------------
command $$set_pos_rep_eve(property $obj : object, property $rep_index, property $src_x, property $src_y, property $dst_x, property $dst_y, property $time, property $start_time, property $speed_mode)
{
	$$set_pos_x_rep_eve($obj, $rep_index, $src_x, $dst_x, $time, $start_time, $speed_mode)
	$$set_pos_y_rep_eve($obj, $rep_index, $src_y, $dst_y, $time, $start_time, $speed_mode)
}

//-----------------------------------------------------------------
// オブジェクトにx座標イベントを設定する
//-----------------------------------------------------------------
command $$set_pos_x_eve(property $obj : object, property $src_x, property $dst_x, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.x = $src_x
	
	if( $src_x != $dst_x ) {
		$obj.x_eve.set($dst_x, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトにx補正座標イベントを設定する
//-----------------------------------------------------------------
command $$set_pos_x_rep_eve(property $obj : object, property $rep_index, property $src_x, property $dst_x, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.x_rep.resize($rep_index + 1)
	$obj.x_rep[$rep_index] = $src_x
	
	if( $src_x != $dst_x ) {
		$obj.x_rep_eve[$rep_index].set($dst_x, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトにy座標イベントを設定する
//-----------------------------------------------------------------
command $$set_pos_y_eve(property $obj : object, property $src_y, property $dst_y, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.y = $src_y
	
	if( $src_y != $dst_y ) {
		$obj.y_eve.set($dst_y, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトにy補正座標イベントを設定する
//-----------------------------------------------------------------
command $$set_pos_y_rep_eve(property $obj : object, property $rep_index, property $src_y, property $dst_y, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.y_rep.resize($rep_index + 1)
	$obj.y_rep[$rep_index] = $src_y
	
	if( $src_y != $dst_y ) {
		$obj.y_rep_eve[$rep_index].set($dst_y, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトにx座標イベント(ターン)を設定する
//-----------------------------------------------------------------
command $$set_pos_x_turn_eve(property $obj : object, property $src_x, property $dst_x, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	if( $src_x != $dst_x ) {
		$obj.x_eve.turn($src_x, $dst_x, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトにy座標イベント(ターン)を設定する
//-----------------------------------------------------------------
command $$set_pos_y_turn_eve(property $obj : object, property $src_y, property $dst_y, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	if( $src_y != $dst_y ) {
		$obj.y_eve.turn($src_y, $dst_y, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに拡縮イベントを設定する
//-----------------------------------------------------------------
command $$set_scale_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.set_scale($src, $src)
	
	if( $src != $dst ) {
		$obj.scale_x_eve.set($dst, $time, $start_time, $speed_mode)
		$obj.scale_y_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに拡縮(x)イベントを設定する
//-----------------------------------------------------------------
command $$set_scale_x_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.scale_x = $src
	
	if( $src != $dst ) {
		$obj.scale_x_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに拡縮(y)イベントを設定する
//-----------------------------------------------------------------
command $$set_scale_y_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.scale_y = $src
	
	if( $src != $dst ) {
		$obj.scale_y_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに不透明度イベントを設定する
//-----------------------------------------------------------------
command $$set_tr_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.tr = $src
	
	if( $src != $dst ) {
		$obj.tr_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに補正不透明度イベントを設定する
//-----------------------------------------------------------------
command $$set_tr_rep_eve(property $obj : object, property $rep_index, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.tr_rep.resize($rep_index + 1)
	$obj.tr_rep[$rep_index] = $src
	
	if( $src != $dst ) {
		$obj.tr_rep_eve[$rep_index].set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに明るさイベントを設定する
//-----------------------------------------------------------------
command $$set_bright_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.bright = $src
	
	if( $src != $dst ) {
		$obj.bright_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトに暗さイベントを設定する
//-----------------------------------------------------------------
command $$set_dark_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.dark = $src
	
	if( $src != $dst ) {
		$obj.dark_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// オブジェクトにモノクロイベントを設定する
//-----------------------------------------------------------------
command $$set_mono_eve(property $obj : object, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	if( <EFFECT_CUT> ) {
		$time = 0
	}
	
	$obj.mono = $src
	
	if( $src != $dst ) {
		$obj.mono_eve.set($dst, $time, $start_time, $speed_mode)
	}
}

//-----------------------------------------------------------------
// すべてのゲームオブジェクトに明るさイベントを設定する
//-----------------------------------------------------------------
command $$set_bright_eve_game_object(property $stage : stage, property $src, property $dst, property $time, property $start_time, property $speed_mode)
{
	property $i
	
	for( $i = <OBJ_START>, $i < <OBJ_END>, $i += 1 )
	{
		$$set_bright_eve($stage.object[$i], $src, $dst, $time, $start_time, $speed_mode)
	}
}
