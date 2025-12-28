//===========================================================================
//!
//!    @file     __lib_movie.ss
//!    @brief    ムービー制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// ムービーを再生する
//---------------------------------------------------------------------------
command $$play_movie(property $filename : str, property $wait_key)
{
	// すべてのサウンドを停止する
	$$se_stop_all(500, 0)
	$$bgm_stop(500, 1)		// サウンドが完全に停止するまで待つ
	
	// タイトルを空文字にする
	set_title("")
	
	if( $wait_key )
	{
	    mov.play_wait_key($filename)
	}
	else
	{
	    mov.play_wait($filename)
	}
}
