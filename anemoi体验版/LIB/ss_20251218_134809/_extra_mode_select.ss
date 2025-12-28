//===========================================================================
//!
//!    @file     _extra_mode_select.ss
//!    @brief    エクストラモード選択シーン(アプリケーション側)
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
command $$create_extra_mode_select_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], sample__extra_mode_select_bg, 0, 0)
	$$create_ui_button($stage.object[@ボタン_エクストラモード選択_閉じる], sample__extra_mode_select_close_btn, 908, 894, @ボタン_エクストラモード選択_閉じる, <OBJBTN_GROUP_NO_EXCALL>, 2)
	$$create_ui_button($stage.object[@ボタン_エクストラモード選択_グラフィック], sample__extra_mode_select_graphic_btn, 378, 224, @ボタン_エクストラモード選択_グラフィック, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラモード選択_サウンド], sample__extra_mode_select_sound_btn, 1007, 223, @ボタン_エクストラモード選択_サウンド, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_エクストラモード選択_立ち絵鑑賞], sample__extra_mode_select_character_btn, 1594, 360, @ボタン_エクストラモード選択_立ち絵鑑賞, <OBJBTN_GROUP_NO_EXCALL>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを追加する
// - 特殊な条件など追加オブジェクトを作成する場合はここに記述してください
//   他のシステム画面は$$show_scene_object内でオブジェクト作成を行えますが、モード選択シーンは$$show_scene_object内でオブジェクトを作成しても生成されない場合があります
//   例えば、モード選択後の各項目から戻ってくる際に$$show_scene_objectは呼び出されません
//   各項目からモード選択に戻ってくる際は各項目の$$hide_scene_objectが呼び出されます
//---------------------------------------------------------------------------
command $$add_extra_mode_select_scene_object(property $stage : stage)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_extra_mode_select_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_extra_mode_select_scene_object(property $stage : stage)
{
	// 何らかのフラグがオンでない場合はサウンド鑑賞ボタンは選択不可にする
	//if( フラグ == 0 ) {
	//	$stage.object[@ボタン_エクストラモード選択_サウンド].set_button_state_disable
	//}
	
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
command $$hide_extra_mode_select_scene_object(property $stage : stage)
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
command $$set_extra_mode_select_joypad_navigation(property $stage : stage)
{
	// サンプル(プリマドール)
	$stage.object[@ボタン_エクストラモード選択_グラフィック].joypad_up    = @ボタン_エクストラモード選択_閉じる
	$stage.object[@ボタン_エクストラモード選択_グラフィック].joypad_down  = @ボタン_エクストラモード選択_閉じる
	$stage.object[@ボタン_エクストラモード選択_グラフィック].joypad_left  = @ボタン_エクストラモード選択_サウンド
	$stage.object[@ボタン_エクストラモード選択_グラフィック].joypad_right = @ボタン_エクストラモード選択_サウンド
	
	$stage.object[@ボタン_エクストラモード選択_サウンド].joypad_up    = @ボタン_エクストラモード選択_閉じる
	$stage.object[@ボタン_エクストラモード選択_サウンド].joypad_down  = @ボタン_エクストラモード選択_閉じる
	$stage.object[@ボタン_エクストラモード選択_サウンド].joypad_left  = @ボタン_エクストラモード選択_グラフィック
	$stage.object[@ボタン_エクストラモード選択_サウンド].joypad_right = @ボタン_エクストラモード選択_グラフィック
	
	$stage.object[@ボタン_エクストラモード選択_閉じる].joypad_up    = @ボタン_エクストラモード選択_グラフィック
	$stage.object[@ボタン_エクストラモード選択_閉じる].joypad_down  = @ボタン_エクストラモード選択_グラフィック
	$stage.object[@ボタン_エクストラモード選択_閉じる].joypad_left  = -1
	$stage.object[@ボタン_エクストラモード選択_閉じる].joypad_right = -1
	
	// 立ち絵鑑賞ボタンがある場合は遷移を追加する
	if( $stage.object[@ボタン_エクストラモード選択_立ち絵鑑賞].disp )
	{
		$stage.object[@ボタン_エクストラモード選択_立ち絵鑑賞].joypad_up    = @ボタン_エクストラモード選択_閉じる
		$stage.object[@ボタン_エクストラモード選択_立ち絵鑑賞].joypad_down  = @ボタン_エクストラモード選択_閉じる
		$stage.object[@ボタン_エクストラモード選択_立ち絵鑑賞].joypad_left  = @ボタン_エクストラモード選択_サウンド
		$stage.object[@ボタン_エクストラモード選択_立ち絵鑑賞].joypad_right = @ボタン_エクストラモード選択_グラフィック
		
		$stage.object[@ボタン_エクストラモード選択_サウンド].joypad_right    = @ボタン_エクストラモード選択_立ち絵鑑賞
		$stage.object[@ボタン_エクストラモード選択_グラフィック].joypad_left = @ボタン_エクストラモード選択_立ち絵鑑賞
	}
}
