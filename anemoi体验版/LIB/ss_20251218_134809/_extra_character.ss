//===========================================================================
//!
//!    @file     _extra_character.ss
//!    @brief    立ち絵鑑賞シーン(アプリケーション側)
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
command $$create_extra_character_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_ヘッダー], sample__extra_character_header, 0, 0)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_閉じる], sample__extra_character_close_btn, 1618, 8, @ボタン_立ち絵鑑賞_閉じる, <OBJBTN_GROUP_NO_EXCALL>, 2)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム], sample__extra_character_ch_disp_frame, 1747, 108)
	$$create_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_表示／非表示+0], sample__extra_character_ch_disp_btn01, 1748, 110, @ボタン_立ち絵鑑賞_表示／非表示+0, <OBJBTN_GROUP_NO_EXCALL>, 1, 0)
	$$create_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_表示／非表示+1], sample__extra_character_ch_disp_btn02, 1749, 163, @ボタン_立ち絵鑑賞_表示／非表示+1, <OBJBTN_GROUP_NO_EXCALL>, 1, 0)
	$$create_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_表示／非表示+2], sample__extra_character_ch_disp_btn03, 1748, 216, @ボタン_立ち絵鑑賞_表示／非表示+2, <OBJBTN_GROUP_NO_EXCALL>, 1, 0)
	$$create_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_背景], sample__extra_character_bg_list, 25, 133, @サムネイルリスト_立ち絵鑑賞_背景, <OBJBTN_GROUP_NO_EXCALL>, 1, @立ち絵鑑賞_登録されている背景の数, 3, 72, 56, 134, 17, 73, 472, 73)
	$$create_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_服装], sample__extra_character_dress_list, 25, 291, @サムネイルリスト_立ち絵鑑賞_服装, <OBJBTN_GROUP_NO_EXCALL>, 1, 0, 4, 72, 45, 100, 17, 73, 472, 73)
	$$create_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], sample__extra_character_pose_list, 25, 450, @サムネイルリスト_立ち絵鑑賞_ポーズ, <OBJBTN_GROUP_NO_EXCALL>, 1, 0, 4, 72, 45, 100, 17, 73, 472, 73)
	$$create_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情], sample__extra_character_face_list, 25, 607, @サムネイルリスト_立ち絵鑑賞_表情, <OBJBTN_GROUP_NO_EXCALL>, 1, 0, 4, 72, 45, 100, 17, 73, 472, 73)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_距離_遠], sample__extra_character_range1_btn, 56, 815, @ボタン_立ち絵鑑賞_距離_遠, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_距離_中], sample__extra_character_range2_btn, 125, 815, @ボタン_立ち絵鑑賞_距離_中, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_距離_近], sample__extra_character_range3_btn, 196, 815, @ボタン_立ち絵鑑賞_距離_近, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_image($stage.object[@フレーム_立ち絵鑑賞_距離], sample__extra_character_frame_range, 25, 766)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン], sample__extra_character_bg_blur_on_btn, 361, 815, @ボタン_立ち絵鑑賞_ブラー背景_オン, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ], sample__extra_character_bg_blur_off_btn, 432, 815, @ボタン_立ち絵鑑賞_ブラー背景_オフ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_image($stage.object[@フレーム_立ち絵鑑賞_ブラー背景], sample__extra_character_frame_bg_blur, 295, 766)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる], sample__extra_character_menu_close_btn, 44, 912, @ボタン_立ち絵鑑賞_操作パネル_閉じる, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ], sample__extra_character_menu_save_btn, 118, 915, @ボタン_立ち絵鑑賞_操作パネル_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード], sample__extra_character_menu_load_btn, 193, 915, @ボタン_立ち絵鑑賞_操作パネル_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集], sample__extra_character_menu_edit_btn, 265, 916, @ボタン_立ち絵鑑賞_操作パネル_テキスト編集, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動], sample__extra_character_menu_pos_move_btn, 339, 912, @ボタン_立ち絵鑑賞_操作パネル_位置移動, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化], sample__extra_character_menu_pos_reset_btn, 414, 913, @ボタン_立ち絵鑑賞_操作パネル_位置初期化, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化], sample__extra_character_menu_all_reset_btn, 489, 915, @ボタン_立ち絵鑑賞_操作パネル_全初期化, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_image($stage.object[@フレーム_立ち絵鑑賞_操作パネル], sample__extra_character_frame_menu, 25, 898)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_編集_名前変更], sample__extra_character_mw_name_btn, 1571, 587, @ボタン_立ち絵鑑賞_編集_名前変更, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_編集_テキスト変更], sample__extra_character_mw_text_btn, 1730, 587, @ボタン_立ち絵鑑賞_編集_テキスト変更, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示], sample__extra_character_mw_disp_btn, 1551, 637, @ボタン_立ち絵鑑賞_編集_ウィンドウ表示, <OBJBTN_GROUP_NO_EXCALL>, 1, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_編集_閉じる], sample__extra_character_mw_close_btn, 1835, 755, @ボタン_立ち絵鑑賞_編集_閉じる, <OBJBTN_GROUP_NO_EXCALL>, 2)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前], sample__extra_character_mw_base, 377, 776)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文], sample__extra_character_mw_name, 0, 726)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_編集_入力_背景], sample__extra_character_mw_input_bg, 489, 623)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_ダイアログ_フィルター], sample__extra_character_dialog_filter, 0, 0)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_ダイアログ_背景], sample__extra_character_dialog_bg, 79, 398)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_ダイアログ_はい], sample__extra_character_dialog_yes_btn, 816, 528, @ボタン_立ち絵鑑賞_ダイアログ_はい, <OBJBTN_GROUP_NO_MODAL>, 1)
	$$create_ui_button($stage.object[@ボタン_立ち絵鑑賞_ダイアログ_いいえ], sample__extra_character_dialog_no_btn, 976, 527, @ボタン_立ち絵鑑賞_ダイアログ_いいえ, <OBJBTN_GROUP_NO_MODAL>, 2)
	$$create_ui_image($stage.object[@イメージ_立ち絵鑑賞_ダイアログ_メッセージ], sample__extra_character_dialog_message, 733, 493)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_extra_character_scene_object(property $stage : stage)
{
	// メッセージウィンドウの文字設定をする
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].set_string_param(36, 0, 10, @立ち絵鑑賞_名前欄_最大文字数, 0, 1, -1)
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].set_string_param(38, 0, 18, @立ち絵鑑賞_本文欄_最大文字数 / 3, 0, 1, -1)
	
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
command $$hide_extra_character_scene_object(property $stage : stage)
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
command $$set_extra_character_joypad_navigation(property $stage : stage)
{
	property $i
	
	// サンプル(サマポケ)
	$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].joypad_up    = @ボタン_立ち絵鑑賞_表示／非表示 + @立ち絵鑑賞_登録されているキャラクターの数 - 1
	$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].joypad_down  = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].joypad_left  = @動作_立ち絵鑑賞_背景_サムネイル_前へ
	$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].joypad_right = @動作_立ち絵鑑賞_背景_サムネイル_次へ
	
	$stage.object[@サムネイルリスト_立ち絵鑑賞_服装].joypad_up    = @サムネイルリスト_立ち絵鑑賞_背景
	$stage.object[@サムネイルリスト_立ち絵鑑賞_服装].joypad_down  = @サムネイルリスト_立ち絵鑑賞_ポーズ
	$stage.object[@サムネイルリスト_立ち絵鑑賞_服装].joypad_left  = @動作_立ち絵鑑賞_服装_サムネイル_前へ
	$stage.object[@サムネイルリスト_立ち絵鑑賞_服装].joypad_right = @動作_立ち絵鑑賞_服装_サムネイル_次へ
	
	$stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ].joypad_up    = @サムネイルリスト_立ち絵鑑賞_服装
	$stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ].joypad_down  = @サムネイルリスト_立ち絵鑑賞_表情
	$stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ].joypad_left  = @動作_立ち絵鑑賞_ポーズ_サムネイル_前へ
	$stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ].joypad_right = @動作_立ち絵鑑賞_ポーズ_サムネイル_次へ
	
	$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].joypad_up    = @サムネイルリスト_立ち絵鑑賞_ポーズ
	$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].joypad_down  = @ボタン_立ち絵鑑賞_距離_選択中
	$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].joypad_left  = @動作_立ち絵鑑賞_表情_サムネイル_前へ
	$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].joypad_right = @動作_立ち絵鑑賞_表情_サムネイル_次へ
	
	$stage.object[@ボタン_立ち絵鑑賞_距離_遠].joypad_up    = @サムネイルリスト_立ち絵鑑賞_表情
	$stage.object[@ボタン_立ち絵鑑賞_距離_遠].joypad_down  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_距離_遠].joypad_left  = @ボタン_立ち絵鑑賞_ブラー背景_オフ
	$stage.object[@ボタン_立ち絵鑑賞_距離_遠].joypad_right = @ボタン_立ち絵鑑賞_距離_中
	
	$stage.object[@ボタン_立ち絵鑑賞_距離_中].joypad_up    = @サムネイルリスト_立ち絵鑑賞_表情
	$stage.object[@ボタン_立ち絵鑑賞_距離_中].joypad_down  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_距離_中].joypad_left  = @ボタン_立ち絵鑑賞_距離_遠
	$stage.object[@ボタン_立ち絵鑑賞_距離_中].joypad_right = @ボタン_立ち絵鑑賞_距離_近
	
	$stage.object[@ボタン_立ち絵鑑賞_距離_近].joypad_up    = @サムネイルリスト_立ち絵鑑賞_表情
	$stage.object[@ボタン_立ち絵鑑賞_距離_近].joypad_down  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_距離_近].joypad_left  = @ボタン_立ち絵鑑賞_距離_中
	$stage.object[@ボタン_立ち絵鑑賞_距離_近].joypad_right = @ボタン_立ち絵鑑賞_ブラー背景_オン
	
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_up    = @サムネイルリスト_立ち絵鑑賞_背景
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_down  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_left  = @ボタン_立ち絵鑑賞_ブラー背景_オフ
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_right = @ボタン_立ち絵鑑賞_ブラー背景_オフ
	
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_up    = @サムネイルリスト_立ち絵鑑賞_背景
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_down  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_left  = @ボタン_立ち絵鑑賞_ブラー背景_オン
	$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_right = @ボタン_立ち絵鑑賞_ブラー背景_オン
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_全初期化
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_セーブ
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_ロード
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_セーブ
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_テキスト編集
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_ロード
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_位置移動
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_テキスト編集
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_位置初期化
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_位置移動
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_全初期化
	
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化].joypad_up    = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化].joypad_down  = @ボタン_立ち絵鑑賞_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_位置初期化
	$stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	
	$stage.object[@ボタン_立ち絵鑑賞_閉じる].joypad_up    = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_閉じる].joypad_down  = @ボタン_立ち絵鑑賞_表示／非表示
	$stage.object[@ボタン_立ち絵鑑賞_閉じる].joypad_left  = -1
	$stage.object[@ボタン_立ち絵鑑賞_閉じる].joypad_right = -1
	
	for( $i = 0, $i < @立ち絵鑑賞_登録されているキャラクターの数, $i += 1 )
	{
		$stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].joypad_up    = @ボタン_立ち絵鑑賞_表示／非表示 + $i - 1
		$stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].joypad_down  = @ボタン_立ち絵鑑賞_表示／非表示 + $i + 1
		$stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].joypad_left  = @ボタン_立ち絵鑑賞_操作パネル_閉じる
		$stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].joypad_right = @ボタン_立ち絵鑑賞_操作パネル_閉じる
		
		if( $i == 0 ) {
			$stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].joypad_up = @ボタン_立ち絵鑑賞_閉じる
		}
		
		if( $i == @立ち絵鑑賞_登録されているキャラクターの数 - 1 ) {
			$stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].joypad_down = @サムネイルリスト_立ち絵鑑賞_背景
		}
	}
	
	$stage.object[@ボタン_立ち絵鑑賞_編集_名前変更].joypad_up    = @ボタン_立ち絵鑑賞_編集_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_編集_名前変更].joypad_down  = @ボタン_立ち絵鑑賞_編集_ウィンドウ表示
	$stage.object[@ボタン_立ち絵鑑賞_編集_名前変更].joypad_left  = @ボタン_立ち絵鑑賞_編集_テキスト変更
	$stage.object[@ボタン_立ち絵鑑賞_編集_名前変更].joypad_right = @ボタン_立ち絵鑑賞_編集_テキスト変更
	
	$stage.object[@ボタン_立ち絵鑑賞_編集_テキスト変更].joypad_up    = @ボタン_立ち絵鑑賞_編集_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_編集_テキスト変更].joypad_down  = @ボタン_立ち絵鑑賞_編集_ウィンドウ表示
	$stage.object[@ボタン_立ち絵鑑賞_編集_テキスト変更].joypad_left  = @ボタン_立ち絵鑑賞_編集_名前変更
	$stage.object[@ボタン_立ち絵鑑賞_編集_テキスト変更].joypad_right = @ボタン_立ち絵鑑賞_編集_名前変更
	
	$stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示].joypad_up    = @ボタン_立ち絵鑑賞_編集_名前変更
	$stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示].joypad_down  = @ボタン_立ち絵鑑賞_編集_閉じる
	$stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示].joypad_left  = -1
	$stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示].joypad_right = -1
	
	$stage.object[@ボタン_立ち絵鑑賞_編集_閉じる].joypad_up    = @ボタン_立ち絵鑑賞_編集_ウィンドウ表示
	$stage.object[@ボタン_立ち絵鑑賞_編集_閉じる].joypad_down  = @ボタン_立ち絵鑑賞_編集_名前変更
	$stage.object[@ボタン_立ち絵鑑賞_編集_閉じる].joypad_left  = -1
	$stage.object[@ボタン_立ち絵鑑賞_編集_閉じる].joypad_right = -1
	
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_はい].joypad_up    = -1
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_はい].joypad_down  = -1
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_はい].joypad_left  = @ボタン_立ち絵鑑賞_ダイアログ_いいえ
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_はい].joypad_right = @ボタン_立ち絵鑑賞_ダイアログ_いいえ
	
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_いいえ].joypad_up    = -1
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_いいえ].joypad_down  = -1
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_いいえ].joypad_left  = @ボタン_立ち絵鑑賞_ダイアログ_はい
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_いいえ].joypad_right = @ボタン_立ち絵鑑賞_ダイアログ_はい
}

//---------------------------------------------------------------------------
// パッド入力の遷移を更新する
//---------------------------------------------------------------------------
command $$update_extra_character_joypad_navigation(property $stage : stage)
{
	if( @立ち絵鑑賞_フォーカス中のキャラクター != -1 )
	{
		$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].joypad_down  = @サムネイルリスト_立ち絵鑑賞_服装
		$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].joypad_down  = @ボタン_立ち絵鑑賞_距離_選択中
		
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_up    = @サムネイルリスト_立ち絵鑑賞_表情
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_up    = @サムネイルリスト_立ち絵鑑賞_表情
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_left  = @ボタン_立ち絵鑑賞_距離_近
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_right = @ボタン_立ち絵鑑賞_距離_遠
		
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる].joypad_up = @ボタン_立ち絵鑑賞_距離_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ].joypad_up = @ボタン_立ち絵鑑賞_距離_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード].joypad_up = @ボタン_立ち絵鑑賞_距離_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集].joypad_up = @ボタン_立ち絵鑑賞_距離_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].joypad_up = @ボタン_立ち絵鑑賞_距離_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化].joypad_up = @ボタン_立ち絵鑑賞_距離_選択中
	}
	
	else
	{
		$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].joypad_down  = @ボタン_立ち絵鑑賞_ブラー背景_選択中
		
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_up    = @サムネイルリスト_立ち絵鑑賞_背景
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_up    = @サムネイルリスト_立ち絵鑑賞_背景
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].joypad_left  = @ボタン_立ち絵鑑賞_ブラー背景_オフ
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].joypad_right = @ボタン_立ち絵鑑賞_ブラー背景_オン
		
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる].joypad_up = @ボタン_立ち絵鑑賞_ブラー背景_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ].joypad_up = @ボタン_立ち絵鑑賞_ブラー背景_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード].joypad_up = @ボタン_立ち絵鑑賞_ブラー背景_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集].joypad_up = @ボタン_立ち絵鑑賞_ブラー背景_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].joypad_up = @ボタン_立ち絵鑑賞_ブラー背景_選択中
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化].joypad_up = @ボタン_立ち絵鑑賞_ブラー背景_選択中
	}
}
