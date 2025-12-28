//===========================================================================
//!
//!    @file     __lib_cutin.ss
//!    @brief    カットイン制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シンプル(一枚絵)カットインオブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_simple_cutin_object(property $obj : object, property $filename : str, property $x, property $y, property $patno)
{
	// オブジェクトを作成する
	$obj.create($$chop_action_command($filename), 1, $x, $y, $patno)
	$obj.layer = <LAYER_CG> + 1
	$obj.wipe_copy = 1
	
	// 読み込んでいる画像の真ん中を中心補正座標にする
	$$set_image_center_rep($obj)
	
	// アクションコマンドが使えるオブジェクトに設定する
	$$set_action_object($obj)
	
	// アクションコマンドを実行する
	$$execute_action_command($obj, $$get_action_command($filename))
}

//---------------------------------------------------------------------------
// シンプル(一枚絵)カットインオブジェクトを削除する
//---------------------------------------------------------------------------
command $$delete_simple_cutin_object(property $obj : object, property $filename : str)
{
	$obj.wipe_copy = 0
	
	// アクションコマンドを実行する
	$$execute_action_command($obj, $$get_action_command($filename))
}
