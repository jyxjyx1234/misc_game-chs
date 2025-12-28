//===========================================================================
//!
//!    @file     __lib_cg.ss
//!    @brief    イベントＣＧ制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// イベントＣＧオブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_cg_object(property $obj : object, property $filename : str)
{
	// 空指定の場合は黒背景を設定する
	if( $filename == "" )
	{
		$filename = bg_kuro
		$$show_resource_msg("ＣＧファイルが指定されていません： => 黒背景を表示します")
	}
	
	$$load_cg_image($obj, $filename)
	
	$obj.wipe_copy = 1
	$obj.layer = <LAYER_CG>
}

//---------------------------------------------------------------------------
// オブジェクトにイベントＣＧデータを読み込む
//---------------------------------------------------------------------------
command $$load_cg_image(property $obj : object, property $filename : str)
{
	$$load_image($obj, $filename)
}

//---------------------------------------------------------------------------
// イベントＣＧワイプ時のワイプ番号を取得する
//---------------------------------------------------------------------------
command $$get_disp_cg_wipe_no(property $wipe_no) : int
{
	if( $wipe_no != <DEFAULT_CG_WIPE_NO> )
	{
		return ($wipe_no)
	}
	
	if( __USE_CG_DIFF_DEFAULT_WIPE && front.object[<OBJ_CG>].disp )
	{
		return (__DEFAULT_CG_DIFF_WIPE_NO)
	}
	
	return (__DEFAULT_CG_WIPE_NO)
}

//---------------------------------------------------------------------------
// イベントＣＧワイプ時のメッセージウィンドウを閉じるかどうかを取得する
//---------------------------------------------------------------------------
command $$get_disp_cg_msg_close(property $close) : int
{
	if( $close != <DEFAULT_CG_MSG_CLOSE> )
	{
		return ($close)
	}
	
	if( __USE_CG_DIFF_DEFAULT_WIPE && front.object[<OBJ_CG>].disp )
	{
		return (__DEFAULT_CG_DIFF_MSG_CLOSE)
	}
	
	return (__DEFAULT_CG_MSG_CLOSE)
}

//---------------------------------------------------------------------------
// イベントＣＧワイプ時の待ちを行うかどうかを取得する
//---------------------------------------------------------------------------
command $$get_disp_cg_wait(property $wait) : int
{
	if( $wait != <DEFAULT_CG_WAIT> )
	{
		return ($wait)
	}
	
	if( __USE_CG_DIFF_DEFAULT_WIPE && front.object[<OBJ_CG>].disp )
	{
		return (__DEFAULT_CG_DIFF_WAIT)
	}
	
	return (__DEFAULT_CG_WAIT)
}

