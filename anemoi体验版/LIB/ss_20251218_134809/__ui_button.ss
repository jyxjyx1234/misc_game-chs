//===========================================================================
//!
//!    @file     __ui_button.ss
//!    @brief    ボタンＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// ボタンを作成する
//---------------------------------------------------------------------------
command $$create_ui_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// オブジェクトを作成する
	$obj.create($filename, 1, $x, $y)
	$obj.set_button($button_no, $button_group_no, 1, $button_se_no)
	$obj.wipe_copy = 1
	
	// 読み込んでいる画像の真ん中を中心補正座標にする
	$$set_image_center_rep($obj)
	
	// システムＵＩ判定用の汎用フラグを確保する
	$obj.f.resize(<UI_F_FLAG_MAX>)
	$obj.type = <UI_TYPE_BUTTON>		// タイプを汎用ボタンにする
}


//---------------------------------------------------------------------------
// トグルボタン（ＯＮ／ＯＦＦ切り替え）を作成する
//---------------------------------------------------------------------------
command $$create_ui_toggle_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $flag)
{
	// ボタンとして作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// タイプをトグルボタンにする
	$obj.type = <UI_TYPE_TOGGLE_BUTTON>
	
	// トグルボタンの描画を更新する
	$$update_ui_toggle_button($obj, $flag)
}

//---------------------------------------------------------------------------
// トグルボタン（ＯＮ／ＯＦＦ切り替え）の描画を更新する
//---------------------------------------------------------------------------
command $$update_ui_toggle_button(property $obj : object, property $flag)
{
	// フラグがONの場合はデフォルトパターン番号を10、OFFの場合は0にする
	$obj.default_patno = $flag * 10
	
	// パターン番号の更新する
	$obj.patno = $obj.default_patno
}
