//===========================================================================
//!
//!    @file     _extra_sound.ss
//!    @brief    サウンド鑑賞シーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   [ここにアプリケーションごとの担当者の名前を記述してください]
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_extra_sound_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], sample__extra_sound_bg, 0, 0)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_閉じる], sample__extra_sound_close_btn, 908, 894, @ボタン_エクストラ_サウンド_閉じる, <OBJBTN_GROUP_NO_EXCALL>, 2)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 0], sample__extra_sound_bgm_btn01, 162, 199, @ボタン_エクストラ_サウンド_サムネイル + 0, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 1], sample__extra_sound_bgm_btn02, 704, 199, @ボタン_エクストラ_サウンド_サムネイル + 1, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 2], sample__extra_sound_bgm_btn03, 1244, 200, @ボタン_エクストラ_サウンド_サムネイル + 2, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 3], sample__extra_sound_bgm_btn04, 161, 284, @ボタン_エクストラ_サウンド_サムネイル + 3, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 4], sample__extra_sound_bgm_btn05, 703, 284, @ボタン_エクストラ_サウンド_サムネイル + 4, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 5], sample__extra_sound_bgm_btn06, 1246, 284, @ボタン_エクストラ_サウンド_サムネイル + 5, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 6], sample__extra_sound_bgm_btn07, 162, 369, @ボタン_エクストラ_サウンド_サムネイル + 6, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 7], sample__extra_sound_bgm_btn08, 703, 369, @ボタン_エクストラ_サウンド_サムネイル + 7, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 8], sample__extra_sound_bgm_btn09, 1245, 369, @ボタン_エクストラ_サウンド_サムネイル + 8, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 9], sample__extra_sound_bgm_btn10, 161, 454, @ボタン_エクストラ_サウンド_サムネイル + 9, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 10], sample__extra_sound_bgm_btn11, 704, 454, @ボタン_エクストラ_サウンド_サムネイル + 10, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 11], sample__extra_sound_bgm_btn12, 1246, 454, @ボタン_エクストラ_サウンド_サムネイル + 11, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 12], sample__extra_sound_bgm_btn13, 161, 539, @ボタン_エクストラ_サウンド_サムネイル + 12, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 13], sample__extra_sound_bgm_btn14, 703, 539, @ボタン_エクストラ_サウンド_サムネイル + 13, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_サムネイル + 14], sample__extra_sound_bgm_btn15, 1245, 539, @ボタン_エクストラ_サウンド_サムネイル + 14, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_image($stage.object[1], sample__extra_sound_bgm_info, 560, 682)
	$$create_extra_sound_play_button($stage.object[@ボタン_エクストラ_サウンド_再生], sample__extra_sound_play_btn, 800, 775, @ボタン_エクストラ_サウンド_再生, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_停止], sample__extra_sound_stop_btn, 935, 774, @ボタン_エクストラ_サウンド_停止, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_前へ], sample__extra_sound_prev_btn, 1000, 774, @ボタン_エクストラ_サウンド_前へ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラ_サウンド_次へ], sample__extra_sound_next_btn, 1065, 774, @ボタン_エクストラ_サウンド_次へ, <OBJBTN_GROUP_NO_EXCALL>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_extra_sound_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_extra_sound_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_extra_sound_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_extra_sound_joypad_navigation(property $stage : stage)
{
	// サンプル(プリマドール)
	property $i
	
	// 左列ＢＧＭボタン
	for( $i = 0, $i < 5, $i += 1 )
	{
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + $i - 1
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_down  = @ボタン_エクストラ_サウンド_サムネイル + $i + 1
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_left  = @ボタン_エクストラ_サウンド_サムネイル + $i + 10
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_right = @ボタン_エクストラ_サウンド_サムネイル + $i + 5
	}
	
	// 中列ＢＧＭボタン
	for( $i = 5, $i < 10, $i += 1 )
	{
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + $i - 1
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_down  = @ボタン_エクストラ_サウンド_サムネイル + $i + 1
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_left  = @ボタン_エクストラ_サウンド_サムネイル + $i - 5
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_right = @ボタン_エクストラ_サウンド_サムネイル + $i + 5
	}
	
	// 右列ＢＧＭボタン
	for( $i = 10, $i < 15, $i += 1 )
	{
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + $i - 1
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_down  = @ボタン_エクストラ_サウンド_サムネイル + $i + 1
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_left  = @ボタン_エクストラ_サウンド_サムネイル + $i - 5
		$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].joypad_right = @ボタン_エクストラ_サウンド_サムネイル + $i - 10
	}
	
	// 上列ＢＧＭボタンは閉じるボタンへ
	$stage.object[@ボタン_エクストラ_サウンド_サムネイル + 0].joypad_up  = @ボタン_エクストラ_サウンド_閉じる
	$stage.object[@ボタン_エクストラ_サウンド_サムネイル + 5].joypad_up  = @ボタン_エクストラ_サウンド_閉じる
	$stage.object[@ボタン_エクストラ_サウンド_サムネイル + 10].joypad_up = @ボタン_エクストラ_サウンド_閉じる
	
	// 下列ＢＧＭボタンは再生ボタンへ
	$stage.object[@ボタン_エクストラ_サウンド_サムネイル + 4].joypad_down  = @ボタン_エクストラ_サウンド_再生
	$stage.object[@ボタン_エクストラ_サウンド_サムネイル + 9].joypad_down  = @ボタン_エクストラ_サウンド_再生
	$stage.object[@ボタン_エクストラ_サウンド_サムネイル + 14].joypad_down = @ボタン_エクストラ_サウンド_再生
	
	$stage.object[@ボタン_エクストラ_サウンド_再生].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + 9
	$stage.object[@ボタン_エクストラ_サウンド_再生].joypad_down  = @ボタン_エクストラ_サウンド_閉じる
	$stage.object[@ボタン_エクストラ_サウンド_再生].joypad_left  = @ボタン_エクストラ_サウンド_次へ
	$stage.object[@ボタン_エクストラ_サウンド_再生].joypad_right = @ボタン_エクストラ_サウンド_停止
	
	$stage.object[@ボタン_エクストラ_サウンド_停止].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + 9
	$stage.object[@ボタン_エクストラ_サウンド_停止].joypad_down  = @ボタン_エクストラ_サウンド_閉じる
	$stage.object[@ボタン_エクストラ_サウンド_停止].joypad_left  = @ボタン_エクストラ_サウンド_再生
	$stage.object[@ボタン_エクストラ_サウンド_停止].joypad_right = @ボタン_エクストラ_サウンド_前へ
	
	$stage.object[@ボタン_エクストラ_サウンド_前へ].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + 9
	$stage.object[@ボタン_エクストラ_サウンド_前へ].joypad_down  = @ボタン_エクストラ_サウンド_閉じる
	$stage.object[@ボタン_エクストラ_サウンド_前へ].joypad_left  = @ボタン_エクストラ_サウンド_停止
	$stage.object[@ボタン_エクストラ_サウンド_前へ].joypad_right = @ボタン_エクストラ_サウンド_次へ
	
	$stage.object[@ボタン_エクストラ_サウンド_次へ].joypad_up    = @ボタン_エクストラ_サウンド_サムネイル + 9
	$stage.object[@ボタン_エクストラ_サウンド_次へ].joypad_down  = @ボタン_エクストラ_サウンド_閉じる
	$stage.object[@ボタン_エクストラ_サウンド_次へ].joypad_left  = @ボタン_エクストラ_サウンド_前へ
	$stage.object[@ボタン_エクストラ_サウンド_次へ].joypad_right = @ボタン_エクストラ_サウンド_再生
	
	$stage.object[@ボタン_エクストラ_サウンド_閉じる].joypad_up    = @ボタン_エクストラ_サウンド_再生
	$stage.object[@ボタン_エクストラ_サウンド_閉じる].joypad_down  = @ボタン_エクストラ_サウンド_サムネイル + 5
	$stage.object[@ボタン_エクストラ_サウンド_閉じる].joypad_left  = -1
	$stage.object[@ボタン_エクストラ_サウンド_閉じる].joypad_right = -1
}
