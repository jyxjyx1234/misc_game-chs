//===========================================================================
//!
//!    @file     __lib_bg.ss
//!    @brief    背景制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	#property	$tonecurve_no		// 表示している背景のトーンカーブ番号

#inc_end

#z00

//---------------------------------------------------------------------------
// 背景オブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_bg_object(property $obj : object, property $filename : str)
{
	// 空指定の場合は黒背景を設定する
	if( $filename == "" )
	{
		$filename = bg_kuro
		$$show_resource_msg("背景ファイルが指定されていません： => 黒背景を表示します")
	}
	
	$filename = $$load_bg_image($obj, $filename)
	
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_BG>
	
	// トーンカーブ番号を保存する
	$tonecurve_no = $$set_bs_tonecurve($$chop_bg_blur_name($filename))
}

//---------------------------------------------------------------------------
// EX画像ファイルの読み込み(※※deb 後で修正する※※)
//---------------------------------------------------------------------------
command $$set_ex_bg_object(property $obj : object, property $filename : str, property $scale)
{
	// 空指定の場合は黒背景を設定する
	if( $filename == "" )
	{
		$filename = bg_kuro
		$$show_resource_msg("背景ファイルが指定されていません： => 黒背景を表示します")
	}
	
	// 指定した背景名から時間帯管理ファイル名を取得する
	$filename = $$get_bg_time_control_name($filename)
	
	// ※※deb※※
	$$load_ex_image($obj, $filename, $scale)
	
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_BG>
	
	// トーンカーブ番号を保存する
	$tonecurve_no = $$set_bs_tonecurve($$chop_bg_blur_name($filename))
}

//---------------------------------------------------------------------------
// オブジェクトに背景データを読み込む
//---------------------------------------------------------------------------
command $$load_bg_image(property $obj : object, property $filename : str) : str
{
	// 指定した背景名から時間帯管理ファイル名を取得する
	$filename = $$get_bg_time_control_name($filename)
	
	// 画像ファイルの読み込み
	$$load_image($obj, $filename)
	
	return ($filename)
}

//---------------------------------------------------------------------------
// 表示している背景のトーンカーブ番号を取得する
//---------------------------------------------------------------------------
command $$get_bg_tonecurve_no : int
{
	return ($tonecurve_no)
}

//---------------------------------------------------------------------------
// 指定した背景名から時間帯管理ファイル名を取得する
//---------------------------------------------------------------------------
command $$get_bg_time_control_name(property $filename : str) : str
{
	// 時間帯管理が有効の場合
	if( __USE_TIME_CONTROL )
	{
		// 指定ファイル名が存在しない場合は末尾に時間帯ファイル名を追加する
		if( $$exists_image($filename) == 0 )
		{
			$filename += $$get_time_control_suffix
		}
	}
	
	return ($filename)
}

//---------------------------------------------------------------------------
// 指定したファイルがブラーファイルか判定する
//---------------------------------------------------------------------------
command $$is_blur_file(property $filename : str) : int
{
	property $prefix : str
	
	$prefix = __BG_BLUR_PREFIX
	
	if( $filename.left($prefix.cnt) == __BG_BLUR_PREFIX )
	{
		return (1)
	}
	
	return (0)
}

//---------------------------------------------------------------------------
// 背景名からブラー文字列を削除する
//---------------------------------------------------------------------------
command $$chop_bg_blur_name(property $filename : str) : str
{
	property $prefix : str
	
	$prefix = __BG_BLUR_PREFIX
	
	if( $filename.left($prefix.cnt) == __BG_BLUR_PREFIX )
	{
		$filename = $filename.mid($prefix.cnt, $filename.cnt)
	}
	
	return ($filename)
}

//---------------------------------------------------------------------------
// 背景ブラーを自動設定する
//---------------------------------------------------------------------------
command $$set_bg_auto_blur
{
	// 背景自動ブラー機能がオフの時は処理しない
	if( __AUTO_BG_BLUR == 0 ) {
		return
	}
	
	// deb
	property $i
	property $flag
	property $bg_name : str
	property $blur_suffix : str
	
	$blur_suffix = __BG_BLUR_PREFIX
	
	property $front_bg_name : str
	property $back_bg_name : str
	
	$flag = 0
	
	for( $i = <OBJ_CHARACTER>, $i < <OBJ_CHARACTER_MAX>, $i += 1 )
	{
		if( back.object[$i].disp == 1 )
		{
			if( front.object[<OBJ_BG>].disp == 1 ) {
				$flag = 1
				break
			}
			
			elseif( back.object[<OBJ_BG>].disp == 1 ) {
				$flag = 1
				break
			}
		}
		if( front.object[$i].disp == 1 &&  front.object[$i].wipe_copy == 1 )
		{
			$flag = 1
			break
		}
	}
	
	if( $flag )
	{
		if( back.object[<OBJ_BG>].disp == 1 )
		{
			$bg_name = back.object[<OBJ_BG>].get_file_name
			if( $$is_blur_file($bg_name) == 0 ) {
				if( $$exists_g00($blur_suffix + $bg_name) ) {
					back.object[<OBJ_BG>].change_file($blur_suffix + $bg_name)
				} else {
					if( $bg_name != "bg_black" && $bg_name != "bg_white" ) {
						$$show_resource_msg("ブラー背景が存在しません：" + $blur_suffix + $bg_name + " => 通常背景を表示します")
					}
				}
			}
		}
		elseif( front.object[<OBJ_BG>].disp == 1 )
		{
			$bg_name = front.object[<OBJ_BG>].get_file_name
			if( $$is_blur_file($bg_name) == 0 )
			{
				if( $$exists_g00($blur_suffix + $bg_name) ) {
					back.object[<OBJ_BG>].create_copy_from(front.object[<OBJ_BG>])
					back.object[<OBJ_BG>].change_file($blur_suffix + $bg_name)
				}
			}
		}
	}
	else
	{
		if( back.object[<OBJ_BG>].disp == 0 && front.object[<OBJ_BG>].disp == 1 )
		{
			$bg_name = front.object[<OBJ_BG>].get_file_name
			
			if( $$is_blur_file($bg_name) == 1 )
			{
				if( $$exists_g00($bg_name.mid(2, $bg_name.cnt)) )
				{
					back.object[<OBJ_BG>].create_copy_from(front.object[<OBJ_BG>])
					back.object[<OBJ_BG>].change_file($bg_name.mid(2, $bg_name.cnt))
				}
			}
		}
	}
}
