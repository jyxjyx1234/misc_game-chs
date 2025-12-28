//===========================================================================
//!
//!    @file     _config_system.ss
//!    @brief    コンフィグシステム設定シーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_config_system_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _config_system_bg, 0, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_画面モード_標準ウィンドウ], _config_system_window_mode_window_btn, 362, 193, @ボタン_コンフィグ_画面モード_標準ウィンドウ, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_window_mode, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_画面モード_フルスクリーン], _config_system_window_mode_fullscreen_btn, 552, 193, @ボタン_コンフィグ_画面モード_フルスクリーン, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_window_mode, 1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_ウィンドウ設定], _config_system_window_mode_detail_btn, 742, 193, @ボタン_コンフィグ_ウィンドウ設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常], _config_system_disp_speed_on_btn, 552, 323, @ボタン_コンフィグ_表示速度_キャラクター_通常, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_CHARACTER>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時], _config_system_disp_speed_off_btn, 742, 323, @ボタン_コンフィグ_表示速度_キャラクター_瞬時, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_CHARACTER>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_背景_通常], _config_system_disp_speed_on_btn, 552, 383, @ボタン_コンフィグ_表示速度_背景_通常, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_BG>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時], _config_system_disp_speed_off_btn, 742, 383, @ボタン_コンフィグ_表示速度_背景_瞬時, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_BG>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常], _config_system_disp_speed_on_btn, 552, 443, @ボタン_コンフィグ_表示速度_イベントＣＧ_通常, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_CG>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時], _config_system_disp_speed_off_btn, 742, 443, @ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_CG>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常], _config_system_disp_speed_on_btn, 552, 503, @ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_MW>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時], _config_system_disp_speed_off_btn, 742, 503, @ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_MW>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常], _config_system_disp_speed_on_btn, 552, 563, @ボタン_コンフィグ_表示速度_システムメニュー_通常, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_SYS_MENU>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時], _config_system_disp_speed_off_btn, 742, 563, @ボタン_コンフィグ_表示速度_システムメニュー_瞬時, <OBJBTN_GROUP_NO_EXCALL>, 1, <EFFECT_SPEED_SYS_MENU>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ], _config_system_skip_unread_off_btn, 552, 639, @ボタン_コンフィグ_メッセージスキップ_既読のみ, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_skip_unread_message_onoff, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む], _config_system_skip_unread_on_btn, 742, 639, @ボタン_コンフィグ_メッセージスキップ_未読含む, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_skip_unread_message_onoff, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_オートセーブ_有効], _config_system_autosave_on_btn, 552, 715, @ボタン_コンフィグ_オートセーブ_有効, <OBJBTN_GROUP_NO_EXCALL>, 1, <AUTO_SAVE>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_オートセーブ_無効], _config_system_autosave_off_btn, 742, 715, @ボタン_コンフィグ_オートセーブ_無効, <OBJBTN_GROUP_NO_EXCALL>, 1, <AUTO_SAVE>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_レコード表示_有効], _config_system_record_on_btn, 552, 789, @ボタン_コンフィグ_レコード表示_有効, <OBJBTN_GROUP_NO_EXCALL>, 1, <RECORD_DISP>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_レコード表示_無効], _config_system_record_off_btn, 742, 789, @ボタン_コンフィグ_レコード表示_無効, <OBJBTN_GROUP_NO_EXCALL>, 1, <RECORD_DISP>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_タブレットモード_無効], _config_system_common_off_btn, 742, 864, @ボタン_コンフィグ_タブレットモード_無効, <OBJBTN_GROUP_NO_EXCALL>, 1, <TABLET_MODE>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_タブレットモード_右], _config_system_tablet_on_r_btn, 362, 864, @ボタン_コンフィグ_タブレットモード_右, <OBJBTN_GROUP_NO_EXCALL>, 1, <TABLET_MODE>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_タブレットモード_左], _config_system_tablet_on_l_btn, 552, 864, @ボタン_コンフィグ_タブレットモード_左, <OBJBTN_GROUP_NO_EXCALL>, 1, <TABLET_MODE>, 2)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_右クリック_クイックメニュー], _config_system_rclick_qmenu_btn, 1010, 257, @ボタン_コンフィグ_右クリック_クイックメニュー, <OBJBTN_GROUP_NO_EXCALL>, 1, <RCLICK_MODE>, <RCLICK_MODE_QUICK_MENU>)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_右クリック_ウィンドウ消去], _config_system_rclick_close_btn, 1201, 257, @ボタン_コンフィグ_右クリック_ウィンドウ消去, <OBJBTN_GROUP_NO_EXCALL>, 1, <RCLICK_MODE>, <RCLICK_MODE_WINDOW_CLOSE>)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_右クリック_コンフィグ画面], _config_system_rclick_config_btn, 1391, 309, @ボタン_コンフィグ_右クリック_コンフィグ画面, <OBJBTN_GROUP_NO_EXCALL>, 1, <RCLICK_MODE>, <RCLICK_MODE_CONFIG>)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_右クリック_セーブ画面], _config_system_rclick_save_btn, 1010, 309, @ボタン_コンフィグ_右クリック_セーブ画面, <OBJBTN_GROUP_NO_EXCALL>, 1, <RCLICK_MODE>, <RCLICK_MODE_SAVE>)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_右クリック_ロード画面], _config_system_rclick_load_btn, 1201, 309, @ボタン_コンフィグ_右クリック_ロード画面, <OBJBTN_GROUP_NO_EXCALL>, 1, <RCLICK_MODE>, <RCLICK_MODE_LOAD>)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブ], _config_system_dialog_save_btn, 1025, 429, @ボタン_コンフィグ_確認ダイアログ_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_SAVE>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックセーブ], _config_system_dialog_qsave_btn, 1306, 429, @ボタン_コンフィグ_確認ダイアログ_クイックセーブ, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_QUICK_SAVE>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_上書きセーブ], _config_system_dialog_overwrite_save_btn, 1604, 430, @ボタン_コンフィグ_確認ダイアログ_上書きセーブ, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_OVERWRITE_SAVE>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_ロード], _config_system_dialog_load_btn, 1025, 469, @ボタン_コンフィグ_確認ダイアログ_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_LOAD>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックロード], _config_system_dialog_qload_btn, 1306, 469, @ボタン_コンフィグ_確認ダイアログ_クイックロード, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_QUICK_LOAD>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る], _config_system_dialog_back_btn, 1604, 469, @ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_BACK>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_履歴から再開する], _config_system_dialog_backlog_btn, 1025, 509, @ボタン_コンフィグ_確認ダイアログ_履歴から再開する, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_BACKLOG_JUMP>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え], _config_system_dialog_swap_save_btn, 1306, 509, @ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_SWAP>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除], _config_system_dialog_delete_save_btn, 1604, 509, @ボタン_コンフィグ_確認ダイアログ_セーブデータ削除, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_DELETE>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す], _config_system_dialog_init_btn, 1025, 549, @ボタン_コンフィグ_確認ダイアログ_初期設定に戻す, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_INIT_SETTINGS>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る], _config_system_dialog_title_btn, 1306, 549, @ボタン_コンフィグ_確認ダイアログ_タイトルに戻る, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_TITLE>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する], _config_system_dialog_exit_btn, 1604, 549, @ボタン_コンフィグ_確認ダイアログ_ゲームを終了する, <OBJBTN_GROUP_NO_EXCALL>, 1, $$reverse_flag(<YESNO_DIALOG_EXIT>))
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める], _config_system_other_mousewheel_btn, 1025, 658, @ボタン_コンフィグ_その他の設定_マウスホイールで読み進める, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_wheel_next_message_onoff)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_その他の設定_スムーズに動作], _config_system_other_smooth_btn, 1025, 698, @ボタン_コンフィグ_その他の設定_スムーズに動作, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_sleep_onoff)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_サイドバー_無効], _config_system_common_off_btn, 1645, 761, @ボタン_コンフィグ_サイドバー_無効, <OBJBTN_GROUP_NO_EXCALL>, 1, <SIDEBAR_MODE>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_サイドバー_右], _config_system_sidebar_on_r_btn, 1265, 761, @ボタン_コンフィグ_サイドバー_右, <OBJBTN_GROUP_NO_EXCALL>, 1, <SIDEBAR_MODE>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_サイドバー_左], _config_system_sidebar_on_l_btn, 1455, 761, @ボタン_コンフィグ_サイドバー_左, <OBJBTN_GROUP_NO_EXCALL>, 1, <SIDEBAR_MODE>, 2)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_ゲームパッド_詳細設定], _config_system_pad_detail_btn, 1455, 864, @ボタン_コンフィグ_ゲームパッド_詳細設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_ムービー_詳細設定], _config_system_movie_detail_btn, 1645, 864, @ボタン_コンフィグ_ムービー_詳細設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクト（ヘッダー）を作成する
//---------------------------------------------------------------------------
command $$create_config_header_scene_object(property $stage : stage)
{
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_ヘッダー_システム], _config_header_system_btn, 1119, 36, @ボタン_コンフィグ_ヘッダー_システム, <OBJBTN_GROUP_NO_EXCALL>, 1, <CONFIG_MODE>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_ヘッダー_テキスト], _config_header_text_btn, 1355, 36, @ボタン_コンフィグ_ヘッダー_テキスト, <OBJBTN_GROUP_NO_EXCALL>, 1, <CONFIG_MODE>, 1)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_ヘッダー_サウンド], _config_header_sound_btn, 1591, 36, @ボタン_コンフィグ_ヘッダー_サウンド, <OBJBTN_GROUP_NO_EXCALL>, 1, <CONFIG_MODE>, 2)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_config_system_scene_object(property $stage : stage, property $select_btn)
{
	// 選択されたボタンによってパッドの遷移を変更する
	if( $select_btn == @ボタン_コンフィグ_画面モード_標準ウィンドウ || $select_btn == @ボタン_コンフィグ_画面モード_フルスクリーン )
	{
		$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常].joypad_up    = @ボタン_コンフィグ_現在の画面モード
		$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時].joypad_up    = @ボタン_コンフィグ_現在の画面モード
		
		$stage.object[@ボタン_コンフィグ_ムービー_詳細設定].joypad_down  = @ボタン_コンフィグ_現在の画面モード
	}
	elseif( $select_btn == @ボタン_コンフィグ_表示速度_キャラクター_通常 || $select_btn == @ボタン_コンフィグ_表示速度_キャラクター_瞬時 )
	{
		$stage.object[@ボタン_コンフィグ_画面モード_標準ウィンドウ].joypad_down  = @ボタン_コンフィグ_現在の表示速度_キャラクター
		$stage.object[@ボタン_コンフィグ_画面モード_フルスクリーン].joypad_down  = @ボタン_コンフィグ_現在の表示速度_キャラクター
		$stage.object[@ボタン_コンフィグ_ウィンドウ設定].joypad_down  = @ボタン_コンフィグ_現在の表示速度_キャラクター
		
		$stage.object[@ボタン_コンフィグ_表示速度_背景_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_キャラクター
		$stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_キャラクター
	}
	elseif( $select_btn == @ボタン_コンフィグ_表示速度_背景_通常 || $select_btn == @ボタン_コンフィグ_表示速度_背景_瞬時 )
	{
		$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_背景
		$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_背景
		
		$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_背景
		$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_背景
	}
	elseif( $select_btn == @ボタン_コンフィグ_表示速度_イベントＣＧ_通常 || $select_btn == @ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時 )
	{
		$stage.object[@ボタン_コンフィグ_表示速度_背景_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
		$stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
		
		$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
		$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
	}
	elseif( $select_btn == @ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常 || $select_btn == @ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時 )
	{
		$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
		$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
		
		$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
		$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
	}
	elseif( $select_btn == @ボタン_コンフィグ_表示速度_システムメニュー_通常 || $select_btn == @ボタン_コンフィグ_表示速度_システムメニュー_瞬時 )
	{
		$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_システムメニュー
		$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_システムメニュー
		
		$stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ].joypad_up    = @ボタン_コンフィグ_現在の表示速度_システムメニュー
		$stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む].joypad_up    = @ボタン_コンフィグ_現在の表示速度_システムメニュー
	}
	elseif( $select_btn == @ボタン_コンフィグ_メッセージスキップ_既読のみ || $select_btn == @ボタン_コンフィグ_メッセージスキップ_未読含む )
	{
		$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常].joypad_down  = @ボタン_コンフィグ_現在のメッセージスキップ
		$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時].joypad_down  = @ボタン_コンフィグ_現在のメッセージスキップ
		
		$stage.object[@ボタン_コンフィグ_オートセーブ_有効].joypad_up    = @ボタン_コンフィグ_現在のメッセージスキップ
		$stage.object[@ボタン_コンフィグ_オートセーブ_無効].joypad_up    = @ボタン_コンフィグ_現在のメッセージスキップ
	}
	elseif( $select_btn == @ボタン_コンフィグ_オートセーブ_無効 || $select_btn == @ボタン_コンフィグ_オートセーブ_有効 )
	{
		$stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ].joypad_down  = @ボタン_コンフィグ_現在のオートセーブ
		$stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む].joypad_down  = @ボタン_コンフィグ_現在のオートセーブ
		
		$stage.object[@ボタン_コンフィグ_レコード表示_有効].joypad_up    = @ボタン_コンフィグ_現在のオートセーブ
		$stage.object[@ボタン_コンフィグ_レコード表示_無効].joypad_up    = @ボタン_コンフィグ_現在のオートセーブ
	}
	elseif( $select_btn == @ボタン_コンフィグ_レコード表示_無効 || $select_btn == @ボタン_コンフィグ_レコード表示_有効 )
	{
		$stage.object[@ボタン_コンフィグ_オートセーブ_有効].joypad_down  = @ボタン_コンフィグ_現在のレコード表示
		$stage.object[@ボタン_コンフィグ_オートセーブ_無効].joypad_down  = @ボタン_コンフィグ_現在のレコード表示
		
		$stage.object[@ボタン_コンフィグ_タブレットモード_右].joypad_up    = @ボタン_コンフィグ_現在のレコード表示
		$stage.object[@ボタン_コンフィグ_タブレットモード_左].joypad_up    = @ボタン_コンフィグ_現在のレコード表示
		$stage.object[@ボタン_コンフィグ_タブレットモード_無効].joypad_up    = @ボタン_コンフィグ_現在のレコード表示
	}
	elseif( $select_btn == @ボタン_コンフィグ_タブレットモード_無効 || $select_btn == @ボタン_コンフィグ_タブレットモード_右 || $select_btn == @ボタン_コンフィグ_タブレットモード_左 )
	{
		$stage.object[@ボタン_コンフィグ_レコード表示_有効].joypad_down  = @ボタン_コンフィグ_現在のタブレットモード
		$stage.object[@ボタン_コンフィグ_レコード表示_無効].joypad_down  = @ボタン_コンフィグ_現在のタブレットモード
		
		$stage.object[@ボタン_コンフィグ_右クリック_クイックメニュー].joypad_up    = @ボタン_コンフィグ_現在のタブレットモード
		$stage.object[@ボタン_コンフィグ_右クリック_ウィンドウ消去].joypad_up    = @ボタン_コンフィグ_現在のタブレットモード
	}
	elseif( $select_btn == @ボタン_コンフィグ_右クリック_クイックメニュー || $select_btn == @ボタン_コンフィグ_右クリック_ウィンドウ消去 || $select_btn == @ボタン_コンフィグ_右クリック_コンフィグ画面 || $select_btn == @ボタン_コンフィグ_右クリック_セーブ画面 || $select_btn == @ボタン_コンフィグ_右クリック_ロード画面 )
	{
		$stage.object[@ボタン_コンフィグ_タブレットモード_右].joypad_down  = @ボタン_コンフィグ_現在の右クリック動作
		$stage.object[@ボタン_コンフィグ_タブレットモード_左].joypad_down  = @ボタン_コンフィグ_現在の右クリック動作
		$stage.object[@ボタン_コンフィグ_タブレットモード_無効].joypad_down  = @ボタン_コンフィグ_現在の右クリック動作
		
		$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブ].joypad_up    = @ボタン_コンフィグ_現在の右クリック動作
		$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックセーブ].joypad_up    = @ボタン_コンフィグ_現在の右クリック動作
		$stage.object[@ボタン_コンフィグ_確認ダイアログ_上書きセーブ].joypad_up    = @ボタン_コンフィグ_現在の右クリック動作
	}
	elseif( $select_btn == @ボタン_コンフィグ_サイドバー_無効 || $select_btn == @ボタン_コンフィグ_サイドバー_右 || $select_btn == @ボタン_コンフィグ_サイドバー_左 )
	{
		$stage.object[@ボタン_コンフィグ_その他の設定_スムーズに動作].joypad_down  = @ボタン_コンフィグ_現在のサイドバー
		
		$stage.object[@ボタン_コンフィグ_ゲームパッド_詳細設定].joypad_up    = @ボタン_コンフィグ_現在のサイドバー
		$stage.object[@ボタン_コンフィグ_ムービー_詳細設定].joypad_up    = @ボタン_コンフィグ_現在のサイドバー
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_config_system_scene_object(property $stage : stage)
{
	property $i
	property $reverse
	property $anim_check_obj_no
	
	// ジョイパッドで最初に選択されているボタンを設定する
	$$set_joypad_focus_button(@ボタン_コンフィグ_ヘッダー_システム)
	
	// 背景
	$$create_ui_image($stage.object[1], $stage.object[0].get_file_name, 0, 0)
	$$create_ui_image($stage.object[2], $stage.object[0].get_file_name, 0, 0)
	$stage.object[0].patno = 2
	$stage.object[1].patno = 1
	$stage.object[2].patno = 0
	
	// 体験版処理（レコードボタンは押せない）
	$stage.object[@ボタン_コンフィグ_レコード表示_有効].set_button_state_disable
	$stage.object[@ボタン_コンフィグ_レコード表示_無効].set_button_state_disable
	
	// 体験版処理（タブレットモードボタンは押せない）
	$stage.object[@ボタン_コンフィグ_タブレットモード_右].set_button_state_disable
	$stage.object[@ボタン_コンフィグ_タブレットモード_左].set_button_state_disable
	$stage.object[@ボタン_コンフィグ_タブレットモード_無効].set_button_state_disable
	
	// アニメ―ション前に画面を更新する
	disp
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 前回のモードがテキストの場合は逆方向にアニメーションする
		$reverse = 1
		if( $$get_prev_config_mode == 1 ) {
			$reverse = -1
		}
		
		// 表示中のモードを左へ
		for( $i = 2, $i <= @コンフィグ_コンテンツ_最大, $i += 1 )
		{
			if( excall.front.object[$i].f.get_size == 0 ) {
				continue
			}
			
			excall.front.object[$i].x_rep.resize(2)
			excall.front.object[$i].x_rep[1] = 0
			excall.front.object[$i].x_rep_eve[1].set(-<SCREEN_WIDTH> * $reverse, 500, 0, 2)
		}
		
		// システムモードを右から表示
		for( $i = 2, $i <= @コンフィグ_コンテンツ_最大, $i += 1 )
		{
			if( $stage.object[$i].f.get_size == 0 ) {
				continue
			}
			
			$stage.object[$i].x_rep.resize(2)
			$stage.object[$i].x_rep[1] = <SCREEN_WIDTH> * $reverse
			$stage.object[$i].x_rep_eve[1].set(0, 500, 0, 2)
			
			$anim_check_obj_no = $i
		}
		
		// 通常表示(ジョイパッドのＲ１がキースキップするのでキースキップできないようにする)
		wipe(0, 250, wait=1, key_skip=0)
		
		// アニメーションの終了を待つ
		excall.front.object[$anim_check_obj_no].all_eve.wait
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_config_system_scene_object(property $stage : stage)
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
command $$set_config_system_joypad_navigation(property $stage : stage)
{
	property $i
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_down  = @ボタン_コンフィグ_現在の画面モード
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_left  = @ボタン_コンフィグ_ヘッダー_サウンド
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_right = @ボタン_コンフィグ_ヘッダー_テキスト
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_down  = @ボタン_コンフィグ_現在の画面モード
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_left  = @ボタン_コンフィグ_ヘッダー_システム
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_right = @ボタン_コンフィグ_ヘッダー_サウンド
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_down  = @ボタン_コンフィグ_現在の画面モード
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_left  = @ボタン_コンフィグ_ヘッダー_テキスト
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_right = @ボタン_コンフィグ_ヘッダー_システム
	
	$stage.object[@ボタン_コンフィグ_画面モード_標準ウィンドウ].joypad_up    = @ボタン_コンフィグ_現在のタブ
	$stage.object[@ボタン_コンフィグ_画面モード_標準ウィンドウ].joypad_down  = @ボタン_コンフィグ_現在の表示速度_キャラクター
	$stage.object[@ボタン_コンフィグ_画面モード_標準ウィンドウ].joypad_left  = @ボタン_コンフィグ_ウィンドウ設定
	$stage.object[@ボタン_コンフィグ_画面モード_標準ウィンドウ].joypad_right = @ボタン_コンフィグ_画面モード_フルスクリーン
	
	$stage.object[@ボタン_コンフィグ_画面モード_フルスクリーン].joypad_up    = @ボタン_コンフィグ_現在のタブ
	$stage.object[@ボタン_コンフィグ_画面モード_フルスクリーン].joypad_down  = @ボタン_コンフィグ_現在の表示速度_キャラクター
	$stage.object[@ボタン_コンフィグ_画面モード_フルスクリーン].joypad_left  = @ボタン_コンフィグ_画面モード_標準ウィンドウ
	$stage.object[@ボタン_コンフィグ_画面モード_フルスクリーン].joypad_right = @ボタン_コンフィグ_ウィンドウ設定
	
	$stage.object[@ボタン_コンフィグ_ウィンドウ設定].joypad_up    = @ボタン_コンフィグ_現在のタブ
	$stage.object[@ボタン_コンフィグ_ウィンドウ設定].joypad_down  = @ボタン_コンフィグ_現在の表示速度_キャラクター
	$stage.object[@ボタン_コンフィグ_ウィンドウ設定].joypad_left  = @ボタン_コンフィグ_画面モード_フルスクリーン
	$stage.object[@ボタン_コンフィグ_ウィンドウ設定].joypad_right = @ボタン_コンフィグ_画面モード_標準ウィンドウ
	
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常].joypad_up    = @ボタン_コンフィグ_現在の画面モード
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_背景
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常].joypad_left  = @ボタン_コンフィグ_表示速度_キャラクター_瞬時
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_通常].joypad_right = @ボタン_コンフィグ_表示速度_キャラクター_瞬時
	
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時].joypad_up    = @ボタン_コンフィグ_現在の画面モード
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_背景
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時].joypad_left  = @ボタン_コンフィグ_表示速度_キャラクター_通常
	$stage.object[@ボタン_コンフィグ_表示速度_キャラクター_瞬時].joypad_right = @ボタン_コンフィグ_表示速度_キャラクター_通常
	
	$stage.object[@ボタン_コンフィグ_表示速度_背景_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_キャラクター
	$stage.object[@ボタン_コンフィグ_表示速度_背景_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
	$stage.object[@ボタン_コンフィグ_表示速度_背景_通常].joypad_left  = @ボタン_コンフィグ_表示速度_背景_瞬時
	$stage.object[@ボタン_コンフィグ_表示速度_背景_通常].joypad_right = @ボタン_コンフィグ_表示速度_背景_瞬時
	
	$stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_キャラクター
	$stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
	$stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時].joypad_left  = @ボタン_コンフィグ_表示速度_背景_通常
	$stage.object[@ボタン_コンフィグ_表示速度_背景_瞬時].joypad_right = @ボタン_コンフィグ_表示速度_背景_通常
	
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_背景
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常].joypad_left  = @ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_通常].joypad_right = @ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時
	
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_背景
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時].joypad_left  = @ボタン_コンフィグ_表示速度_イベントＣＧ_通常
	$stage.object[@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時].joypad_right = @ボタン_コンフィグ_表示速度_イベントＣＧ_通常
	
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常].joypad_down  = @ボタン_コンフィグ_現在の表示速度_システムメニュー
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常].joypad_left  = @ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常].joypad_right = @ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時
	
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_イベントＣＧ
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時].joypad_down  = @ボタン_コンフィグ_現在の表示速度_システムメニュー
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時].joypad_left  = @ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常
	$stage.object[@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時].joypad_right = @ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常
	
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常].joypad_up    = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常].joypad_down  = @ボタン_コンフィグ_現在のメッセージスキップ
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常].joypad_left  = @ボタン_コンフィグ_表示速度_システムメニュー_瞬時
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_通常].joypad_right = @ボタン_コンフィグ_表示速度_システムメニュー_瞬時
	
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時].joypad_up    = @ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時].joypad_down  = @ボタン_コンフィグ_現在のメッセージスキップ
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時].joypad_left  = @ボタン_コンフィグ_表示速度_システムメニュー_通常
	$stage.object[@ボタン_コンフィグ_表示速度_システムメニュー_瞬時].joypad_right = @ボタン_コンフィグ_表示速度_システムメニュー_通常
	
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ].joypad_up    = @ボタン_コンフィグ_現在の表示速度_システムメニュー
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ].joypad_down  = @ボタン_コンフィグ_現在のオートセーブ
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ].joypad_left  = @ボタン_コンフィグ_メッセージスキップ_未読含む
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_既読のみ].joypad_right = @ボタン_コンフィグ_メッセージスキップ_未読含む
	
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む].joypad_up    = @ボタン_コンフィグ_現在の表示速度_システムメニュー
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む].joypad_down  = @ボタン_コンフィグ_現在のオートセーブ
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む].joypad_left  = @ボタン_コンフィグ_メッセージスキップ_既読のみ
	$stage.object[@ボタン_コンフィグ_メッセージスキップ_未読含む].joypad_right = @ボタン_コンフィグ_メッセージスキップ_既読のみ
	
	$stage.object[@ボタン_コンフィグ_オートセーブ_有効].joypad_up    = @ボタン_コンフィグ_現在のメッセージスキップ
	$stage.object[@ボタン_コンフィグ_オートセーブ_有効].joypad_down  = @ボタン_コンフィグ_現在のレコード表示
	$stage.object[@ボタン_コンフィグ_オートセーブ_有効].joypad_left  = @ボタン_コンフィグ_オートセーブ_無効
	$stage.object[@ボタン_コンフィグ_オートセーブ_有効].joypad_right = @ボタン_コンフィグ_オートセーブ_無効
	
	$stage.object[@ボタン_コンフィグ_オートセーブ_無効].joypad_up    = @ボタン_コンフィグ_現在のメッセージスキップ
	$stage.object[@ボタン_コンフィグ_オートセーブ_無効].joypad_down  = @ボタン_コンフィグ_現在のレコード表示
	$stage.object[@ボタン_コンフィグ_オートセーブ_無効].joypad_left  = @ボタン_コンフィグ_オートセーブ_有効
	$stage.object[@ボタン_コンフィグ_オートセーブ_無効].joypad_right = @ボタン_コンフィグ_オートセーブ_有効
	
	$stage.object[@ボタン_コンフィグ_レコード表示_有効].joypad_up    = @ボタン_コンフィグ_現在のオートセーブ
	$stage.object[@ボタン_コンフィグ_レコード表示_有効].joypad_down  = @ボタン_コンフィグ_現在のタブレットモード
	$stage.object[@ボタン_コンフィグ_レコード表示_有効].joypad_left  = @ボタン_コンフィグ_レコード表示_無効
	$stage.object[@ボタン_コンフィグ_レコード表示_有効].joypad_right = @ボタン_コンフィグ_レコード表示_無効
	
	$stage.object[@ボタン_コンフィグ_レコード表示_無効].joypad_up    = @ボタン_コンフィグ_現在のオートセーブ
	$stage.object[@ボタン_コンフィグ_レコード表示_無効].joypad_down  = @ボタン_コンフィグ_現在のタブレットモード
	$stage.object[@ボタン_コンフィグ_レコード表示_無効].joypad_left  = @ボタン_コンフィグ_レコード表示_有効
	$stage.object[@ボタン_コンフィグ_レコード表示_無効].joypad_right = @ボタン_コンフィグ_レコード表示_有効
	
	$stage.object[@ボタン_コンフィグ_タブレットモード_右].joypad_up    = @ボタン_コンフィグ_現在のレコード表示
	$stage.object[@ボタン_コンフィグ_タブレットモード_右].joypad_down  = @ボタン_コンフィグ_現在の右クリック動作
	$stage.object[@ボタン_コンフィグ_タブレットモード_右].joypad_left  = @ボタン_コンフィグ_タブレットモード_無効
	$stage.object[@ボタン_コンフィグ_タブレットモード_右].joypad_right = @ボタン_コンフィグ_タブレットモード_左
	
	$stage.object[@ボタン_コンフィグ_タブレットモード_左].joypad_up    = @ボタン_コンフィグ_現在のレコード表示
	$stage.object[@ボタン_コンフィグ_タブレットモード_左].joypad_down  = @ボタン_コンフィグ_現在の右クリック動作
	$stage.object[@ボタン_コンフィグ_タブレットモード_左].joypad_left  = @ボタン_コンフィグ_タブレットモード_右
	$stage.object[@ボタン_コンフィグ_タブレットモード_左].joypad_right = @ボタン_コンフィグ_タブレットモード_無効
	
	$stage.object[@ボタン_コンフィグ_タブレットモード_無効].joypad_up    = @ボタン_コンフィグ_現在のレコード表示
	$stage.object[@ボタン_コンフィグ_タブレットモード_無効].joypad_down  = @ボタン_コンフィグ_現在の右クリック動作
	$stage.object[@ボタン_コンフィグ_タブレットモード_無効].joypad_left  = @ボタン_コンフィグ_タブレットモード_左
	$stage.object[@ボタン_コンフィグ_タブレットモード_無効].joypad_right = @ボタン_コンフィグ_タブレットモード_右
	
	$stage.object[@ボタン_コンフィグ_右クリック_クイックメニュー].joypad_up    = @ボタン_コンフィグ_現在のタブレットモード
	$stage.object[@ボタン_コンフィグ_右クリック_クイックメニュー].joypad_down  = @ボタン_コンフィグ_右クリック_セーブ画面
	$stage.object[@ボタン_コンフィグ_右クリック_クイックメニュー].joypad_left  = @ボタン_コンフィグ_右クリック_ウィンドウ消去
	$stage.object[@ボタン_コンフィグ_右クリック_クイックメニュー].joypad_right = @ボタン_コンフィグ_右クリック_ウィンドウ消去
	
	$stage.object[@ボタン_コンフィグ_右クリック_ウィンドウ消去].joypad_up    = @ボタン_コンフィグ_現在のタブレットモード
	$stage.object[@ボタン_コンフィグ_右クリック_ウィンドウ消去].joypad_down  = @ボタン_コンフィグ_右クリック_ロード画面
	$stage.object[@ボタン_コンフィグ_右クリック_ウィンドウ消去].joypad_left  = @ボタン_コンフィグ_右クリック_クイックメニュー
	$stage.object[@ボタン_コンフィグ_右クリック_ウィンドウ消去].joypad_right = @ボタン_コンフィグ_右クリック_クイックメニュー
	
	$stage.object[@ボタン_コンフィグ_右クリック_セーブ画面].joypad_up    = @ボタン_コンフィグ_右クリック_クイックメニュー
	$stage.object[@ボタン_コンフィグ_右クリック_セーブ画面].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_セーブ
	$stage.object[@ボタン_コンフィグ_右クリック_セーブ画面].joypad_left  = @ボタン_コンフィグ_右クリック_コンフィグ画面
	$stage.object[@ボタン_コンフィグ_右クリック_セーブ画面].joypad_right = @ボタン_コンフィグ_右クリック_ロード画面
	
	$stage.object[@ボタン_コンフィグ_右クリック_ロード画面].joypad_up    = @ボタン_コンフィグ_右クリック_ウィンドウ消去
	$stage.object[@ボタン_コンフィグ_右クリック_ロード画面].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_セーブ
	$stage.object[@ボタン_コンフィグ_右クリック_ロード画面].joypad_left  = @ボタン_コンフィグ_右クリック_セーブ画面
	$stage.object[@ボタン_コンフィグ_右クリック_ロード画面].joypad_right = @ボタン_コンフィグ_右クリック_コンフィグ画面
	
	$stage.object[@ボタン_コンフィグ_右クリック_コンフィグ画面].joypad_up    = @ボタン_コンフィグ_右クリック_ウィンドウ消去
	$stage.object[@ボタン_コンフィグ_右クリック_コンフィグ画面].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_セーブ
	$stage.object[@ボタン_コンフィグ_右クリック_コンフィグ画面].joypad_left  = @ボタン_コンフィグ_右クリック_ロード画面
	$stage.object[@ボタン_コンフィグ_右クリック_コンフィグ画面].joypad_right = @ボタン_コンフィグ_右クリック_セーブ画面
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブ].joypad_up    = @ボタン_コンフィグ_現在の右クリック動作
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブ].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_ロード
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブ].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_上書きセーブ
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブ].joypad_right = @ボタン_コンフィグ_確認ダイアログ_クイックセーブ
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックセーブ].joypad_up    = @ボタン_コンフィグ_現在の右クリック動作
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックセーブ].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_クイックロード
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックセーブ].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_セーブ
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックセーブ].joypad_right = @ボタン_コンフィグ_確認ダイアログ_上書きセーブ
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_上書きセーブ].joypad_up    = @ボタン_コンフィグ_現在の右クリック動作
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_上書きセーブ].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_上書きセーブ].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_クイックセーブ
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_上書きセーブ].joypad_right = @ボタン_コンフィグ_確認ダイアログ_セーブ
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ロード].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_セーブ
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ロード].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_履歴から再開する
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ロード].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ロード].joypad_right = @ボタン_コンフィグ_確認ダイアログ_クイックロード
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックロード].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_クイックセーブ
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックロード].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックロード].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_ロード
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_クイックロード].joypad_right = @ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_上書きセーブ
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_セーブデータ削除
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_クイックロード
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る].joypad_right = @ボタン_コンフィグ_確認ダイアログ_ロード
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_履歴から再開する].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_ロード
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_履歴から再開する].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_初期設定に戻す
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_履歴から再開する].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_セーブデータ削除
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_履歴から再開する].joypad_right = @ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_クイックロード
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_タイトルに戻る
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_履歴から再開する
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え].joypad_right = @ボタン_コンフィグ_確認ダイアログ_セーブデータ削除
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除].joypad_down  = @ボタン_コンフィグ_確認ダイアログ_ゲームを終了する
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除].joypad_right = @ボタン_コンフィグ_確認ダイアログ_履歴から再開する
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_履歴から再開する
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す].joypad_down  = @ボタン_コンフィグ_その他の設定_マウスホイールで読み進める
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_ゲームを終了する
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す].joypad_right = @ボタン_コンフィグ_確認ダイアログ_タイトルに戻る
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る].joypad_down  = @ボタン_コンフィグ_その他の設定_マウスホイールで読み進める
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_初期設定に戻す
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る].joypad_right = @ボタン_コンフィグ_確認ダイアログ_ゲームを終了する
	
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_セーブデータ削除
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する].joypad_down  = @ボタン_コンフィグ_その他の設定_マウスホイールで読み進める
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する].joypad_left  = @ボタン_コンフィグ_確認ダイアログ_タイトルに戻る
	$stage.object[@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する].joypad_right = @ボタン_コンフィグ_確認ダイアログ_初期設定に戻す
	
	$stage.object[@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める].joypad_up    = @ボタン_コンフィグ_確認ダイアログ_初期設定に戻す
	$stage.object[@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める].joypad_down  = @ボタン_コンフィグ_その他の設定_スムーズに動作
	$stage.object[@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_その他の設定_スムーズに動作].joypad_up    = @ボタン_コンフィグ_その他の設定_マウスホイールで読み進める
	$stage.object[@ボタン_コンフィグ_その他の設定_スムーズに動作].joypad_down  = @ボタン_コンフィグ_現在のサイドバー
	$stage.object[@ボタン_コンフィグ_その他の設定_スムーズに動作].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_その他の設定_スムーズに動作].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_サイドバー_右].joypad_up    = @ボタン_コンフィグ_その他の設定_スムーズに動作
	$stage.object[@ボタン_コンフィグ_サイドバー_右].joypad_down  = @ボタン_コンフィグ_ゲームパッド_詳細設定
	$stage.object[@ボタン_コンフィグ_サイドバー_右].joypad_left  = @ボタン_コンフィグ_サイドバー_無効
	$stage.object[@ボタン_コンフィグ_サイドバー_右].joypad_right = @ボタン_コンフィグ_サイドバー_左
	
	$stage.object[@ボタン_コンフィグ_サイドバー_左].joypad_up    = @ボタン_コンフィグ_その他の設定_スムーズに動作
	$stage.object[@ボタン_コンフィグ_サイドバー_左].joypad_down  = @ボタン_コンフィグ_ゲームパッド_詳細設定
	$stage.object[@ボタン_コンフィグ_サイドバー_左].joypad_left  = @ボタン_コンフィグ_サイドバー_右
	$stage.object[@ボタン_コンフィグ_サイドバー_左].joypad_right = @ボタン_コンフィグ_サイドバー_無効
	
	$stage.object[@ボタン_コンフィグ_サイドバー_無効].joypad_up    = @ボタン_コンフィグ_その他の設定_スムーズに動作
	$stage.object[@ボタン_コンフィグ_サイドバー_無効].joypad_down  = @ボタン_コンフィグ_ゲームパッド_詳細設定
	$stage.object[@ボタン_コンフィグ_サイドバー_無効].joypad_left  = @ボタン_コンフィグ_サイドバー_左
	$stage.object[@ボタン_コンフィグ_サイドバー_無効].joypad_right = @ボタン_コンフィグ_サイドバー_右
	
	$stage.object[@ボタン_コンフィグ_ゲームパッド_詳細設定].joypad_up    = @ボタン_コンフィグ_現在のサイドバー
	$stage.object[@ボタン_コンフィグ_ゲームパッド_詳細設定].joypad_down  = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ゲームパッド_詳細設定].joypad_left  = @ボタン_コンフィグ_ムービー_詳細設定
	$stage.object[@ボタン_コンフィグ_ゲームパッド_詳細設定].joypad_right = @ボタン_コンフィグ_ムービー_詳細設定
	
	$stage.object[@ボタン_コンフィグ_ムービー_詳細設定].joypad_up    = @ボタン_コンフィグ_現在のサイドバー
	$stage.object[@ボタン_コンフィグ_ムービー_詳細設定].joypad_down  = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ムービー_詳細設定].joypad_left  = @ボタン_コンフィグ_ゲームパッド_詳細設定
	$stage.object[@ボタン_コンフィグ_ムービー_詳細設定].joypad_right = @ボタン_コンフィグ_ゲームパッド_詳細設定
	
	for( $i = @ボタン_フッター_セーブ, $i <= @ボタン_フッター_戻る, $i += 1 )
	{
		$stage.object[$i].joypad_up   = @ボタン_コンフィグ_ゲームパッド_詳細設定
		$stage.object[$i].joypad_down = @ボタン_コンフィグ_現在のタブ
	}
}
