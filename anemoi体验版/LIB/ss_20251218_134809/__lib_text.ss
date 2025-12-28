//===========================================================================
//!
//!    @file     __lib_text.ss
//!    @brief    テキスト制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// センタリングテキストを表示する
//---------------------------------------------------------------------------
command $$print_centering_text(property $msg : str, property $line_no, property $line_max)
{
	property $x
	property $y
	
	// メッセージの座標を取得する
	$x = $$get_centering_text_rep_x($msg, __MWND02_MOJI_SIZE + __MWND02_MOJI_SPACE_X, __MWND02_MESSAGE_POS_X)
	$y = $$get_centering_text_rep_y($line_no, $line_max, __MWND02_MOJI_SIZE, __MWND02_MOJI_SPACE_Y, __MWND02_LINE_SPACE)
	
	// メッセージの座標を変更する
	rep_pos($x, $y)
	
	// メッセージを出力する
	print($msg)
}

//---------------------------------------------------------------------------
// センタリングテキストのx補正座標を取得する
//---------------------------------------------------------------------------
command $$get_centering_text_rep_x(property $msg : str, property $font_size, property $mwnd_msg_x) : int
{
	property $pos_x
	property $messgae_size
	
	$messgae_size = $msg.cnt * $font_size
	$pos_x = (<SCREEN_WIDTH> - $messgae_size) / 2 - $mwnd_msg_x
	
	return ($pos_x)
}

//---------------------------------------------------------------------------
// センタリングテキストのy補正座標を取得する
//---------------------------------------------------------------------------
command $$get_centering_text_rep_y(property $line_no, property $line_max, property $font_size, property $mwnd_msg_space_y, property $line_space) : int
{
	property $pos_y
	property $messgae_size
	property $text_line
	
	$messgae_size = (<SCREEN_HEIGHT> - ($font_size * $line_max + $line_space * ($line_max - 1))) / 2
	$text_line = ($line_no - 1) * $font_size + ($line_no - 1) * $line_space
	
	$pos_y = $messgae_size + $text_line - ($line_no - 1) * $font_size - ($line_no - 1) * $mwnd_msg_space_y
	
	return ($pos_y)
}
