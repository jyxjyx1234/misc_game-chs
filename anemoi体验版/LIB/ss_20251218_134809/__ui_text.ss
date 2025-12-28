//===========================================================================
//!
//!    @file     __ui_text.ss
//!    @brief    テキストＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// 文字列を作成する
//---------------------------------------------------------------------------
command $$create_ui_string(property $obj : object, property $x, property $y, property $w, property $h, property $font_size)
{
	// オブジェクトを作成する
	$obj.create_string("", 1, $x, $y)
	$obj.set_string_param($font_size, 0, 0, 0, 0, 0, 0)
	$obj.wipe_copy = 1
	
	// 整列用の補正座標を確保する
	$obj.x_rep.resize(1)
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_STRING_F_FLAG_MAX>)	// 汎用フラグを確保する
	$obj.type = <UI_TYPE_STRING>			// タイプを文字列にする
	$obj.f_align = <STRING_ALIGN_LEFT>		// 整列を設定する
	$obj.f_font_size = $font_size			// フォントサイズを設定する
	$obj.f_text_width  = $w					// テキストの幅を設定する
	$obj.f_text_height = $h					// テキストの高さを設定する
}

//---------------------------------------------------------------------------
// 文字列の描画を更新する
//---------------------------------------------------------------------------
command $$update_ui_string(property $obj : object, property $text : str)
{
	property $space_x
	property $text_max
	
	$space_x = 0
	
	// テキスト範囲を超える文字列は省略する
	$text_max = $obj.f_text_width / ($obj.f_font_size + $space_x) * 2
	if( $text.len > $text_max ) {
		$text = $text.left_len($text_max - 1) + $$get_message_over_text
	}
	
	// 座標を設定する
	switch( $obj.f_align ) {
	case(<STRING_ALIGN_LEFT>)		// 左寄せ
		$obj.x_rep[0] = 0
	case(<STRING_ALIGN_RIGHT>)		// 右寄せ
		$obj.x_rep[0] = ($obj.f_text_width - $text.len * $obj.f_font_size / 2)
	case(<STRING_ALIGN_CENTER>)		// 中央揃え
		$obj.x_rep[0] = ($obj.f_text_width - $text.len * $obj.f_font_size / 2) / 2
	}
	
	// 文字列を更新する
	$obj.set_string($text)
}

//---------------------------------------------------------------------------
// 文字列のパラメータを更新する
//---------------------------------------------------------------------------
command $$update_ui_string_param(property $obj : object, property $size, property $space_x, property $space_y, property $moji_cnt, property $moji_color, property $shadow_color, property $shadow_mode, property $fuchi_color)
{
	$obj.f_font_size = $size
	$obj.set_string_param($size, $space_x, $space_y, $moji_cnt, $moji_color, $shadow_color, $shadow_mode, $fuchi_color)
}
