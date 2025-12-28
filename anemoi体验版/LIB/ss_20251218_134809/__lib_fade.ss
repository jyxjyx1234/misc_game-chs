//===========================================================================
//!
//!    @file     __lib_fade.ss
//!    @brief    フェード制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// フェードを実行する
//---------------------------------------------------------------------------
command $$fade(property $red, property $green, property $blue, property $wipe_no, property $wipe_time, property $wipe_wait, property $wipe_all, property $close)
{
	if( $close )
	{
		close
	}
	
	$$set_fade_object(back.object[<OBJ_FADE>], $red, $green, $blue)
	$$set_front_wipe_copy_all(0)
	
	if( $wipe_all )
	{
		$$set_wipe_order(0, 2)
	}
	else
	{
		$$set_wipe_order(0, 1)
	}
	
	@wipe($wipe_no, $wipe_time, $wipe_wait, $wipe_all)
}

//---------------------------------------------------------------------------
// フェードオブジェクトを設定する
//---------------------------------------------------------------------------
command $$set_fade_object(property $obj : object, property $red, property $green, property $blue)
{
	$$load_fade_image($obj, $red, $green, $blue)
	
	$obj.layer = <LAYER_FADE>
}

//---------------------------------------------------------------------------
// フェード画像を読み込む
//---------------------------------------------------------------------------
command $$load_fade_image(property $obj : object, property $red, property $green, property $blue)
{
	$obj.create_rect(0, 0, <SCREEN_WIDTH>, <SCREEN_HEIGHT>, $red, $green, $blue, 255, 1)
}
