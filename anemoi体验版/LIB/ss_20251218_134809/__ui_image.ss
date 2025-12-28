//===========================================================================
//!
//!    @file     __ui_image.ss
//!    @brief    イメージＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// イメージを作成する
//---------------------------------------------------------------------------
command $$create_ui_image(property $obj : object, property $filename : str, property $x, property $y)
{
	// ファイル名が指定されている場合はオブジェクトを作成する
	if( $filename != "" )
	{
		$obj.create($filename, 1, $x, $y)
	}
	else
	{
		// そうでない場合は表示状態にして座標を設定する
		$obj.disp = 1
		$obj.set_pos($x, $y)
	}
	$obj.wipe_copy = 1
	
	// 読み込んでいる画像の真ん中を中心補正座標にする
	$$set_image_center_rep($obj)
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_F_FLAG_MAX>)			// 汎用フラグを確保する
	$obj.type = <UI_TYPE_IMAGE>				// タイプを画像にする
}

//---------------------------------------------------------------------------
// 数字イメージを作成する
//---------------------------------------------------------------------------
command $$create_ui_number_image(property $obj : object, property $filename : str, property $x, property $y)
{
	// オブジェクトを作成する
	$obj.create_number($filename, 1, $x, $y)
	$obj.wipe_copy = 1
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_F_FLAG_MAX>)			// 汎用フラグを確保する
	$obj.type = <UI_TYPE_NUMBER_IMAGE>		// タイプを画像にする
}
