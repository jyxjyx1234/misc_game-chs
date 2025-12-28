//===========================================================================
//!
//!    @file     __lib_utils.ss
//!    @brief    汎用関数群
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// g00ファイルの存在を判定する
//---------------------------------------------------------------------------
command $$exists_g00(property $filename : str) : int
{
	return (system.check_file_exist("g00\\" + $filename + ".g00"))
}

//---------------------------------------------------------------------------
// フラグを反転する
//---------------------------------------------------------------------------
command $$reverse_flag(property $flag) : int
{
	return (math.abs($flag - 1))
}

//---------------------------------------------------------------------------
// 文字コードから数値に変換する
//---------------------------------------------------------------------------
command $$strcode_to_num(property $code) : int
{
	property $num
	
	switch( $code ) {
	case(65296)		$num = 0
	case(65297)		$num = 1
	case(65298)		$num = 2
	case(65299)		$num = 3
	case(65300)		$num = 4
	case(65301)		$num = 5
	case(65302)		$num = 6
	case(65303)		$num = 7
	case(65304)		$num = 8
	case(65305)		$num = 9
	}
	
	return ($num)
}

//---------------------------------------------------------------------------
// 文字列をトリミングする
//---------------------------------------------------------------------------
command $$trim_str(property $str : str, property $len) : str
{
	if( $str.len > $len )
	{
		$str = $str.left_len($len)
	}
	
	return ($str)
}

//---------------------------------------------------------------------------
// 指定した文字がアルファベットか判定する
//---------------------------------------------------------------------------
command $$is_alphabet(property $str : str) : int
{
	property $code
	
	$code = $str.get_code(0)
	
	if( ('A' <= $code && $code <= 'Z') || ('a' <= $code && $code <= 'z') )
	{
		return (1)
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// アルファベット文字を数値に変換(a=0, b=1...)する
//---------------------------------------------------------------------------
command $$alphabet_to_num(property $str : str) : int
{
	property $code
	
	$code = $str.get_code(0)
	
	if( ('A' <= $code && $code <= 'Z') || ('a' <= $code && $code <= 'z') )
	{
		return ($code - 97)
	}
	
	return (-1)
}

//---------------------------------------------------------------------------
// 16進数(文字列)を10進数(数値)に変換する
//---------------------------------------------------------------------------
command $$hex_code_to_dec(property $code : str)
{
	property $num
	
	switch( $code ) {
	case("0")		$num = 0
	case("1")		$num = 1
	case("2")		$num = 2
	case("3")		$num = 3
	case("4")		$num = 4
	case("5")		$num = 5
	case("6")		$num = 6
	case("7")		$num = 7
	case("8")		$num = 8
	case("9")		$num = 9
	case("a")		$num = 10
	case("b")		$num = 11
	case("c")		$num = 12
	case("d")		$num = 13
	case("e")		$num = 14
	case("f")		$num = 15
	}
	
	return ($num)
}

//---------------------------------------------------------------------------
// カラーコードからr(0～255)に変換する
//---------------------------------------------------------------------------
command $$color_code_to_r(property $color_code : str) : int
{
	property $num
	
	$num = $$hex_code_to_dec($color_code.mid(1, 1)) * 16 + $$hex_code_to_dec($color_code.mid(2, 1))
	
	return ($num)
}

//---------------------------------------------------------------------------
// カラーコードからg(0～255)に変換する
//---------------------------------------------------------------------------
command $$color_code_to_g(property $color_code : str) : int
{
	property $num
	
	$num = $$hex_code_to_dec($color_code.mid(3, 1)) * 16 + $$hex_code_to_dec($color_code.mid(4, 1))
	
	return ($num)
}

//---------------------------------------------------------------------------
// カラーコードからb(0～255)に変換する
//---------------------------------------------------------------------------
command $$color_code_to_b(property $color_code : str) : int
{
	property $num
	
	$num = $$hex_code_to_dec($color_code.mid(5, 1)) * 16 + $$hex_code_to_dec($color_code.mid(6, 1))
	
	return ($num)
}

//---------------------------------------------------------------------------
// 指定範囲のマウス当たり判定を取得する
//---------------------------------------------------------------------------
command $$is_mouse_hit_pos(property $sx, property $sy, property $ex, property $ey) : int
{
	property $mouse_x
	property $mouse_y
	
	$mouse_x = mouse.get_pos_x
	$mouse_y = mouse.get_pos_y
	
	if( $sx <= $mouse_x && $mouse_x < $ex )
	{
		if( $sy <= $mouse_y && $mouse_y < $ey )
		{
			return (1)
		}
	}
	
	return(0)
}

//---------------------------------------------------------------------------
// オブジェクトのマウス当たり判定を取得する
//---------------------------------------------------------------------------
command $$is_mouse_hit_object(property $obj : object) : int
{
	property $hit_min
	property $hit_max
	property $mouse_x
	property $mouse_y
	
	$mouse_x = mouse.get_pos_x
	$mouse_y = mouse.get_pos_y
	
	$hit_min = $obj.x
	$hit_max = $hit_min + $obj.get_size_x
	if( $hit_min < $mouse_x && $mouse_x < $hit_max )
	{
		$hit_min = $obj.y
		$hit_max = $hit_min + $obj.get_size_y
		
		if( $hit_min < $mouse_y && $mouse_y < $hit_max )
		{
			return (1)
		}
	}
	
	return(0)
}
