//===========================================================================
//!
//!    @file     __lib_time_control.ss
//!    @brief    時間帯制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

#inc_start

	#property	$time_control		// 現在の時間帯

#inc_end

#z00

//---------------------------------------------------------------------------
// 時間帯を初期化する
//---------------------------------------------------------------------------
command $$init_time_control
{
	$time_control = <TIME_CONTROL_DAYTIME>
}

//---------------------------------------------------------------------------
// 時間帯を設定する
//---------------------------------------------------------------------------
command $$set_time_control(property $time)
{
	$time_control = $time
}

//---------------------------------------------------------------------------
// 時間帯を取得する
//---------------------------------------------------------------------------
command $$get_time_control : int
{
	return ($time_control)
}

//---------------------------------------------------------------------------
// 時間帯ファイル末尾名を取得する
//---------------------------------------------------------------------------
command $$get_time_control_suffix : str
{
	property $suffix : str
	
	switch( $time_control ) {
	case(<TIME_CONTROL_DAYTIME>)	$suffix = __TIME_CONTROL_SUFFIX_DAYTIME
	case(<TIME_CONTROL_EVENING>)	$suffix = __TIME_CONTROL_SUFFIX_EVENING
	case(<TIME_CONTROL_NIGHT>)		$suffix = __TIME_CONTROL_SUFFIX_NIGHT
	case(<TIME_CONTROL_NIGHT_OFF>)	$suffix = __TIME_CONTROL_SUFFIX_NIGHT_OFF
	case(<TIME_CONTROL_MORNING>)	$suffix = __TIME_CONTROL_SUFFIX_MORNING
	case(<TIME_CONTROL_EX1>)		$suffix = __TIME_CONTROL_SUFFIX_EX1
	case(<TIME_CONTROL_EX2>)		$suffix = __TIME_CONTROL_SUFFIX_EX2
	}
	
	return ($suffix)
}
