//===========================================================================
//!
//!    @file     _footer.ss
//!    @brief    フッターシーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!              ※サマポケ準拠のレイアウト時にセーブ／ロード／コンフィグ／レコードで使用されます
//!              ※(キネティックノベル系のシステムでは使用されません)
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクト（セーブ画面）を作成する
//---------------------------------------------------------------------------
command $$create_save_footer_scene_object(property $stage : stage)
{
	$$create_footer_save_button($stage.object[@ボタン_フッター_セーブ], _footer_save_save_btn, 166, 970, @ボタン_フッター_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_footer_load_button($stage.object[@ボタン_フッター_ロード], _footer_save_load_btn, 374, 970, @ボタン_フッター_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_コンフィグ], _footer_save_config_btn, 582, 970, @ボタン_フッター_コンフィグ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_レコード], _footer_save_record_btn, 834, 970, @ボタン_フッター_レコード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_タイトルに戻る], _footer_save_title_btn, 1092, 970, @ボタン_フッター_タイトルに戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_ゲームを終了する], _footer_save_exit_btn, 1318, 970, @ボタン_フッター_ゲームを終了する, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_戻る], _footer_save_back_btn, 1566, 970, @ボタン_フッター_戻る, <OBJBTN_GROUP_NO_EXCALL>, 2)
}

//---------------------------------------------------------------------------
// シーンオブジェクト（ロード画面）を作成する
//---------------------------------------------------------------------------
command $$create_load_footer_scene_object(property $stage : stage)
{
	$$create_footer_save_button($stage.object[@ボタン_フッター_セーブ], _footer_load_save_btn, 166, 970, @ボタン_フッター_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_footer_load_button($stage.object[@ボタン_フッター_ロード], _footer_load_load_btn, 374, 970, @ボタン_フッター_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_コンフィグ], _footer_load_config_btn, 582, 970, @ボタン_フッター_コンフィグ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_レコード], _footer_load_record_btn, 834, 970, @ボタン_フッター_レコード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_タイトルに戻る], _footer_load_title_btn, 1092, 970, @ボタン_フッター_タイトルに戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_ゲームを終了する], _footer_load_exit_btn, 1318, 970, @ボタン_フッター_ゲームを終了する, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_戻る], _footer_load_back_btn, 1566, 970, @ボタン_フッター_戻る, <OBJBTN_GROUP_NO_EXCALL>, 2)
}

//---------------------------------------------------------------------------
// シーンオブジェクト（コンフィグ画面）を作成する
//---------------------------------------------------------------------------
command $$create_config_footer_scene_object(property $stage : stage)
{
	$$create_footer_save_button($stage.object[@ボタン_フッター_セーブ], _footer_config_save_btn, 166, 970, @ボタン_フッター_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_footer_load_button($stage.object[@ボタン_フッター_ロード], _footer_config_load_btn, 374, 970, @ボタン_フッター_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_コンフィグ], _footer_config_config_btn, 582, 970, @ボタン_フッター_コンフィグ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_レコード], _footer_config_record_btn, 834, 970, @ボタン_フッター_レコード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_タイトルに戻る], _footer_config_title_btn, 1092, 970, @ボタン_フッター_タイトルに戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_ゲームを終了する], _footer_config_exit_btn, 1318, 970, @ボタン_フッター_ゲームを終了する, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_フッター_戻る], _footer_config_back_btn, 1566, 970, @ボタン_フッター_戻る, <OBJBTN_GROUP_NO_EXCALL>, 2)
}

//---------------------------------------------------------------------------
// シーンオブジェクト（レコード画面）を作成する
//---------------------------------------------------------------------------
command $$create_record_footer_scene_object(property $stage : stage)
{
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_footer_joypad_navigation(property $stage : stage)
{
	// 体験版処理（レコードボタンは押せない）
	// 挟む隙間ないのでパッド遷移追加時に合わせて追加する
	$stage.object[@ボタン_フッター_レコード].set_button_state_disable
	
	$stage.object[@ボタン_フッター_セーブ].joypad_left  = @ボタン_フッター_戻る
	$stage.object[@ボタン_フッター_セーブ].joypad_right = @ボタン_フッター_ロード
	
	$stage.object[@ボタン_フッター_ロード].joypad_left  = @ボタン_フッター_セーブ
	$stage.object[@ボタン_フッター_ロード].joypad_right = @ボタン_フッター_コンフィグ
	
	$stage.object[@ボタン_フッター_コンフィグ].joypad_left  = @ボタン_フッター_ロード
	$stage.object[@ボタン_フッター_コンフィグ].joypad_right = @ボタン_フッター_レコード
	
	$stage.object[@ボタン_フッター_レコード].joypad_left  = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_フッター_レコード].joypad_right = @ボタン_フッター_タイトルに戻る
	
	$stage.object[@ボタン_フッター_タイトルに戻る].joypad_left  = @ボタン_フッター_レコード
	$stage.object[@ボタン_フッター_タイトルに戻る].joypad_right = @ボタン_フッター_ゲームを終了する
	
	$stage.object[@ボタン_フッター_ゲームを終了する].joypad_left  = @ボタン_フッター_タイトルに戻る
	$stage.object[@ボタン_フッター_ゲームを終了する].joypad_right = @ボタン_フッター_戻る
	
	$stage.object[@ボタン_フッター_戻る].joypad_left  = @ボタン_フッター_ゲームを終了する
	$stage.object[@ボタン_フッター_戻る].joypad_right = @ボタン_フッター_セーブ
}
