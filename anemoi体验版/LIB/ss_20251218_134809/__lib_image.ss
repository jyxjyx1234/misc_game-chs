//===========================================================================
//!
//!    @file     __lib_image.ss
//!    @brief    画像制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	// 特殊データと判定するファイル末尾名
	#replace	<CUT_X_SUFFIX>			"_cut_x"	// カットデータ(x)と判定する識別子
	#replace	<CUT_Y_SUFFIX>			"_cut_y"	// カットデータ(y)と判定する識別子
	#replace	<CUT_XY_SUFFIX>			"_cut_xy"	// カットデータ(xy)と判定する識別子
	#replace	<EX_SUFFIX>				"_ex"		// 拡大データと判定する識別子
	
	// 読み込み画像タイプ
	#replace	<IMAGE_TYPE_NORMAL>		0			// 通常
	#replace	<IMAGE_TYPE_CUT_X>		1			// x方向のカットデータ
	#replace	<IMAGE_TYPE_CUT_Y>		2			// y方向のカットデータ
	#replace	<IMAGE_TYPE_CUT_XY>		3			// xy方向のカットデータ
	
	// 読み込み画像タイプの一時保存(一度検索を行ったファイルは再検索を行わないよう)
	#property	$buf_image_name : strlist			// 画像ファイル名
	#property	$buf_image_type : intlist			// 画像ファイルタイプ
	
	// 座標補正
	#property	$image_offset_file : strlist		// 座標補正ファイル名
	#property	$image_offset_x : intlist			// 座標補正値(x)
	#property	$image_offset_y : intlist			// 座標補正値(y)
	
	// 分割ブロック
	#property	$block_width
	#property	$block_height

#inc_end

#z00

//---------------------------------------------------------------------------
// 画像ファイルの読み込み
//---------------------------------------------------------------------------
command $$load_image(property $obj : object, property $filename : str)
{
	property $i
	property $index
	property $cut_tate
	
	$index = -1
	
	// 読み込み画像タイプの一時保存から指定画像を検索する
	for( $i = 0, $i < $buf_image_name.get_size, $i += 1 )
	{
		if( $buf_image_name[$i] == $filename )
		{
			$index = $i
			
			break
		}
	}
	
	// 読み込み画像タイプに保存されていない場合は新しくデータを保存する
	if( $index == -1 ) {
		$index = $$set_image_type($filename)
	}
	
	// 画像の読み込み
	switch( $buf_image_type[$index] ) {
	
	case(<IMAGE_TYPE_NORMAL>)	// 通常読み込み
		
		$obj.create($filename, 1)
		
	case(<IMAGE_TYPE_CUT_X>)	// x方向のカットデータ
		
		$obj.create($filename + <CUT_X_SUFFIX>, 1)
		$obj.child.resize($obj.get_pat_cnt - 1)
		
		for( $i = 0, $i < $obj.get_pat_cnt - 1, $i += 1 )
		{
			$obj.child[$i].create($obj.get_file_name, 1, $obj.get_size_x * ($i + 1), 0, $i + 1)
		}
		
		cgtable.set_look_by_name($filename, 1)
		
	case(<IMAGE_TYPE_CUT_Y>)	// y方向のカットデータ
		
		$obj.create($filename + <CUT_Y_SUFFIX>, 1)
		$obj.child.resize($obj.get_pat_cnt - 1)
		
		for( $i = 0, $i < $obj.get_pat_cnt - 1, $i += 1 )
		{
			$obj.child[$i].create($obj.get_file_name, 1, 0, $obj.get_size_y * ($i + 1), $i + 1)
		}
		
		cgtable.set_look_by_name($filename, 1)
		
	case(<IMAGE_TYPE_CUT_XY>)	// xy方向のカットデータ
		
		$obj.create($filename + <CUT_XY_SUFFIX>, 1)
		$obj.child.resize($obj.get_pat_cnt - 1)
		
		$cut_tate = 2
		for( $i = 0, $i < $obj.get_pat_cnt - 1, $i += 1 )
		{
			$obj.child[$i].create($obj.get_file_name, 1,
			$obj.get_size_x * (($i + 1) / $cut_tate), $obj.get_size_y * (($i + 1) % $cut_tate), $i + 1)
		}
		
		cgtable.set_look_by_name($filename, 1)
	}
	
	// 座標補正データの読み込み
	$$load_image_offset_data($obj, $filename)
	
	// 中心座標の設定
	$obj.set_center_rep(<SCREEN_CENTER_X>, <SCREEN_CENTER_Y>)
}

//---------------------------------------------------------------------------
// EX画像ファイルの読み込み(※※deb 後で修正する※※)
//---------------------------------------------------------------------------
command $$load_ex_image(property $obj : object, property $filename : str, property $scale)
{
	property $i
	property $index
	property $cut_tate
	property $rep_scale
	property $size_x
	property $size_y
	property $rep_x
	property $rep_y
	
	$obj.create($filename + <EX_SUFFIX>, 1)
	$obj.child.resize($obj.get_pat_cnt - 1)
	
	//----
	L[0] = $obj.get_size_x * 2 * 1000 / <SCREEN_WIDTH>
	$rep_scale = $scale * 1000 / L[0]
	$obj.set_scale($rep_scale, $rep_scale)
	$size_x = $obj.get_size_x * $rep_scale / 1000
	$size_y = $obj.get_size_y * $rep_scale / 1000
	//----
	
	$cut_tate = 2
	for( $i = 0, $i < $obj.get_pat_cnt - 1, $i += 1 )
	{
		$obj.child[$i].create($obj.get_file_name, 1,
		$obj.get_size_x * (($i + 1) / $cut_tate), $obj.get_size_y * (($i + 1) % $cut_tate), $i + 1)
		
		$rep_x =  - ($size_x * 2 - <SCREEN_WIDTH> ) / 2
		$rep_y =  - ($size_y * 2 - <SCREEN_HEIGHT>) / 2
		
		$obj.x_rep.resize(1)
		$obj.y_rep.resize(1)
		
		$obj.x_rep[0] = $rep_x
		$obj.y_rep[0] = $rep_y
	}
	
	cgtable.set_look_by_name($filename, 1)
}

//---------------------------------------------------------------------------
// 読み込み画像タイプを保存する
//---------------------------------------------------------------------------
command $$set_image_type(property $filename : str)
{
	property $index
	
	$buf_image_name.resize($buf_image_name.get_size + 1)
	$buf_image_type.resize($buf_image_type.get_size + 1)
	
	$index = $buf_image_name.get_size - 1
	
	if( $$exists_g00($filename + <CUT_X_SUFFIX>) )
	{
		$buf_image_name[$index] = $filename
		$buf_image_type[$index] = <IMAGE_TYPE_CUT_X>
	}
	elseif( $$exists_g00($filename + <CUT_Y_SUFFIX>) )
	{
		$buf_image_name[$index] = $filename
		$buf_image_type[$index] = <IMAGE_TYPE_CUT_Y>
	}
	elseif( $$exists_g00($filename + <CUT_XY_SUFFIX>) )
	{
		$buf_image_name[$index] = $filename
		$buf_image_type[$index] = <IMAGE_TYPE_CUT_XY>
	}
	else
	{
		$buf_image_name[$index] = $filename
		$buf_image_type[$index] = <IMAGE_TYPE_NORMAL>
	}
	
	return ($index)
}

//---------------------------------------------------------------------------
// 画像ファイルの存在を判定する(すべての読み込み画像タイプを含む)
//---------------------------------------------------------------------------
command $$exists_image(property $filename : str) : int
{
	property $i
	
	// 読み込み画像タイプの一時保存から指定画像を検索する
	for( $i = 0, $i < $buf_image_name.get_size, $i += 1 )
	{
		if( $buf_image_name[$i] == $filename )
		{
			return (1)
		}
	}
	
	if( $$exists_g00($filename) )
	{
		return (1)
	}
	
	if( $$exists_g00($filename + <CUT_X_SUFFIX>) )
	{
		return (1)
	}
	
	if( $$exists_g00($filename + <CUT_Y_SUFFIX>) )
	{
		return (1)
	}
	
	if( $$exists_g00($filename + <CUT_XY_SUFFIX>) )
	{
		return (1)
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// 座標補正の初期化
//---------------------------------------------------------------------------
command $$init_image_offset_data
{
	$image_offset_file.init
	$image_offset_x.init
	$image_offset_y.init
}

//---------------------------------------------------------------------------
// 座標補正データの設定
//---------------------------------------------------------------------------
command $$set_image_offset_data(property $filename : str, property $offset_x, property $offset_y)
{
	property $i
	
	for( $i = 0, $i < $image_offset_file.get_size, $i += 1 )
	{
		if( $image_offset_file[$i] == $filename )
		{
			@dm("\n指定ファイル名のエラー：" + $filename + "\n → $$set_image_offset_data_default \nこのファイルはすでに登録が行われています。処理をスキップします。")
			return
		}
	}
	
	$image_offset_file.resize($image_offset_file.get_size + 1)
	$image_offset_x.resize($image_offset_x.get_size + 1)
	$image_offset_y.resize($image_offset_y.get_size + 1)
	
	$image_offset_file[$image_offset_file.get_size - 1] = $filename
	$image_offset_x[$image_offset_x.get_size - 1] = $offset_x
	$image_offset_y[$image_offset_y.get_size - 1] = $offset_y
}

//---------------------------------------------------------------------------
// 座標補正データの読み込み
//---------------------------------------------------------------------------
command $$load_image_offset_data(property $obj : object, property $filename : str)
{
	property $i
	property $j
	
	for( $i = 0, $i < $image_offset_file.get_size, $i += 1 )
	{
		// ファイル名の完全一致
		// または、部分的なファイル名の一致
		if( $filename == $image_offset_file[$i] || $filename.search($image_offset_file[$i]) != -1 )
		{
			$obj.set_center($image_offset_x[$i], $image_offset_y[$i])
			
			for( $j = 0, $j < $obj.child.get_size, $j += 1 ) {
				$obj.child[$j].set_center($image_offset_x[$i], $image_offset_y[$i])
			}
			return
		}
	}
}

//---------------------------------------------------------------------------
// 分割ブロック数を設定する
//---------------------------------------------------------------------------
command $$set_image_block(property $width, property $height)
{
	$block_width  = $width
	$block_height = $height
}

//---------------------------------------------------------------------------
// 分割ブロック数の設定をデフォルトにする
//---------------------------------------------------------------------------
command $$set_image_block_default
{
	$block_width  = __DEFAULT_IMAGE_BLOCK_WIDTH
	$block_height = __DEFAULT_IMAGE_BLOCK_HEIGHT
}

//---------------------------------------------------------------------------
// 分割ブロックから座標(x)を取得する
//---------------------------------------------------------------------------
command $$get_image_block_pos_x(property $obj : object, property $block, property $scale)
{
	property $image_size
	property $margin_size
	
	$image_size = ($scale * $obj.get_size_x / 1000) - <SCREEN_WIDTH>
	$margin_size = ($obj.get_size_x - <SCREEN_WIDTH>) * $scale / 1000
	
	$image_size = $image_size - $margin_size
	
	return (-$image_size / ($block_width - 1) * (($block - 1) % $block_width) + $image_size / 2)
}

//---------------------------------------------------------------------------
// 分割ブロックから座標(y)を取得する
//---------------------------------------------------------------------------
command $$get_image_block_pos_y(property $obj : object, property $block, property $scale)
{
	property $image_size
	property $margin_size
	
	$image_size = ($scale * $obj.get_size_y / 1000) - <SCREEN_HEIGHT>
	$margin_size = ($obj.get_size_y - <SCREEN_HEIGHT>) * $scale / 1000
	
	$image_size = $image_size - $margin_size
	
	return (-$image_size / ($block_height - 1) * (($block - 1) / $block_height) + $image_size / 2)
}

//---------------------------------------------------------------------------
// 分割ブロックから分割ブロックへ移動させる
//---------------------------------------------------------------------------
command $$move_image_block(property $obj : object,  property $src_block, property $dst_block, property $scale, property $time, property $start_time, property $speed_mode)
{
	property $src_x
	property $src_y
	property $dst_x
	property $dst_y
	
	$src_x = $$get_image_block_pos_x($obj, $src_block, $scale)
	$src_y = $$get_image_block_pos_y($obj, $src_block, $scale)
	$dst_x = $$get_image_block_pos_x($obj, $dst_block, $scale)
	$dst_y = $$get_image_block_pos_y($obj, $dst_block, $scale)
	
	$obj.set_scale($scale, $scale)
	$$set_pos_x_eve($obj, $src_x, $dst_x, $time, $start_time, $speed_mode)
	$$set_pos_y_eve($obj, $src_y, $dst_y, $time, $start_time, $speed_mode)
}

//---------------------------------------------------------------------------
// 分割ブロックから分割ブロックへ移動させる(ターン)
//---------------------------------------------------------------------------
command $$turn_image_block(property $obj : object,  property $src_block, property $dst_block, property $scale, property $time, property $start_time, property $speed_mode, property $wait_time)
{
	property $src_x
	property $src_y
	property $dst_x
	property $dst_y
	
	$src_x = $$get_image_block_pos_x($obj, $src_block, $scale)
	$src_y = $$get_image_block_pos_y($obj, $src_block, $scale)
	$dst_x = $$get_image_block_pos_x($obj, $dst_block, $scale)
	$dst_y = $$get_image_block_pos_y($obj, $dst_block, $scale)
	
	$obj.set_scale($scale, $scale)
	
	if( $wait_time == 0 )
	{
		$$set_pos_x_turn_eve($obj, $src_x, $dst_x, $time, $start_time, $speed_mode)
		$$set_pos_y_turn_eve($obj, $src_y, $dst_y, $time, $start_time, $speed_mode)
	}
	else
	{
		$obj.frame_action_ch.resize(2)
		$obj.frame_action_ch[0].start(-1, "$$fa_turn_eve_wait_x", $src_x, $dst_x, $time, $start_time, $speed_mode, $wait_time)
		$obj.frame_action_ch[1].start(-1, "$$fa_turn_eve_wait_y", $src_y, $dst_y, $time, $start_time, $speed_mode, $wait_time)
	}
}

//---------------------------------------------------------------------------
// ターンイベント(x)終了後に待ち時間を加えたフレームアクション
//---------------------------------------------------------------------------
command $$fa_turn_eve_wait_x(property $fa : frameaction, property $obj : object, property $src_x, property $dst_x, property $move_time, property $start_time, property $speed_mode, property $wait_time)
{
	l[0] = $fa.counter.get % ($start_time + $move_time * 2 + $wait_time * 2)
	
	$obj.x = math.timetable(l[0], $start_time, $src_x, [0, $move_time, $dst_x, $speed_mode], [$move_time + $wait_time, $move_time + $wait_time + $move_time, $src_x, $speed_mode])
}

//---------------------------------------------------------------------------
// ターンイベント(y)終了後に待ち時間を加えたフレームアクション
//---------------------------------------------------------------------------
command $$fa_turn_eve_wait_y(property $fa : frameaction, property $obj : object, property $src_y, property $dst_y, property $move_time, property $start_time, property $speed_mode, property $wait_time)
{
	l[0] = $fa.counter.get % ($start_time + $move_time * 2 + $wait_time * 2)
	
	$obj.y = math.timetable(l[0], $start_time, $src_y, [0, $move_time, $dst_y, $speed_mode], [$move_time + $wait_time, $move_time + $wait_time + $move_time, $src_y, $speed_mode])
}
