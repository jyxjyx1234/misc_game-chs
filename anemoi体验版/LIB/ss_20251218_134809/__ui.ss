//===========================================================================
//!
//!    @file     __ui.ss
//!    @brief    ＵＩ共通処理
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを裏画面にコピーする
//---------------------------------------------------------------------------
command $$copy_all_scene_object_to_back
{
	$$copy_scene_object_to_back(0, <OBJ_MAX>)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを裏画面にコピーする
//---------------------------------------------------------------------------
command $$copy_scene_object_to_back(property $start_index, property $end_index)
{
	property $i
	
	for( $i = $start_index, $i < $end_index, $i += 1 )
	{
		if( excall[excall.is_excall].front.object[$i].f.get_size == 0 ) {
			continue
		}
		
		excall[excall.is_excall].back.object[$i].create_copy_from(excall[excall.is_excall].front.object[$i])
	}
}

//---------------------------------------------------------------------------
// 指定範囲内の表示されているオブジェクトの最大数を取得する
//---------------------------------------------------------------------------
command $$get_system_disp_object_max(property $stage : stage, property $min, property $max)
{
	property $i
	
	for( $i = $min, $i < $max, $i += 1 )
	{
		if( $stage.object[$i].disp == 0 )
		{
			return ($i)
		}
	}
	
	return ($max)
}

//---------------------------------------------------------------------------
// 指定したＵＩの縦サイズを取得する
//---------------------------------------------------------------------------
command $$get_system_ui_get_size_y(property $obj : object) : int
{
	property $size_y
	
	if( $obj.type == <UI_TYPE_SLIDER> ) {
		$size_y = $obj.ui_slider_bg.get_size_y
	} elseif( $obj.type == <UI_TYPE_SLIDER> ) {
		$size_y = $obj.ui_slider_bg.get_size_y
	} elseif( $obj.type == <UI_TYPE_SELECTBOX> ) {
		$size_y = $obj.ui_slbox_bg.get_size_y
	} else {
		$size_y = $obj.get_size_y
	}
	
	return ($size_y)
}
