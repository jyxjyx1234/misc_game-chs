//===========================================================================
//!
//!    @file     __sys_config.ss
//!    @brief    コンフィグシーン(システム側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     アプリケーションに依存しないシステムの共通処理
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	// コンフィグに登録されているフォント名
	#property	$prefont_name : strlist
	#property	$window_mode
	#property	$font_type_old
	#property	$config_mode_old
	
#inc_end

//---------------------------------------------------------------------------
// コンフィグシーン開始
//---------------------------------------------------------------------------
#z00

// オブジェクト最大数が少ない場合は処理をしない
if( @キネティックシステム ) {
	return
}

// シーンオブジェクト（ヘッダー）を作成する
$$create_config_header_scene_object(excall.back)

// メッセージ速度は値が逆のため更新する
if( excall.back.object[@スライダー_コンフィグ_文字設定_メッセージ速度].disp ) {
	$$update_ui_slider(excall.back.object[@スライダー_コンフィグ_文字設定_メッセージ速度], 100 - syscom.get_message_speed)
}

// メッセージウィンドウ背景設定の更新
$$update_mw_filter_setting(excall.back)

// タブレットモードが有効の場合右クリック動作／サイドバー動作を選択不可にする
if( <TABLET_MODE> )
{
	// 右クリックボタン描画を選択不可にする
	$$disable_config_radio_button(excall.back, @ボタン_コンフィグ_右クリック_クイックメニュー, <RCLICK_MODE_MAX>, <RCLICK_MODE>)
	
	// サイドバーボタン描画を選択不可にする
	$$disable_config_radio_button(excall.back, @ボタン_コンフィグ_サイドバー_無効, 3, <SIDEBAR_MODE>)
}

// 共通フッターオブジェクトを作成する
if( __SYSTEM_FOOTER_ENABLE )
{
	$$create_config_footer_scene_object(excall.back)
	
	excall.back.object[@ボタン_フッター_コンフィグ].set_button_state_select
	
	// 手動でジョイパッド時のボタン遷移先を設定する
	$$set_footer_joypad_navigation(excall.back)
}

return


//---------------------------------------------------------------------------
// コンフィグ／多機能版を更新する
//---------------------------------------------------------------------------
command $$update_config_ex(property $select_btn)
{
	property $i
	property $len
	property $value
	
	// 各ボタン動作
	switch( $select_btn ) {
		
	case(@ボタン_コンフィグ_画面モード_標準ウィンドウ)				$$update_window_mode(0)
	case(@ボタン_コンフィグ_画面モード_フルスクリーン)				$$update_window_mode(1)
	case(@ボタン_コンフィグ_表示速度_キャラクター_通常)				$$update_disp_ch_mode(0)
	case(@ボタン_コンフィグ_表示速度_キャラクター_瞬時)				$$update_disp_ch_mode(1)
	case(@ボタン_コンフィグ_表示速度_背景_通常)						$$update_disp_bg_mode(0)
	case(@ボタン_コンフィグ_表示速度_背景_瞬時)						$$update_disp_bg_mode(1)
	case(@ボタン_コンフィグ_表示速度_イベントＣＧ_通常)				$$update_disp_cg_mode(0)
	case(@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時)				$$update_disp_cg_mode(1)
	case(@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常)		$$update_disp_mw_mode(0)
	case(@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時)		$$update_disp_mw_mode(1)
	case(@ボタン_コンフィグ_表示速度_システムメニュー_通常)			$$update_disp_sys_menu_mode(0)
	case(@ボタン_コンフィグ_表示速度_システムメニュー_瞬時)			$$update_disp_sys_menu_mode(1)
	case(@ボタン_コンフィグ_メッセージスキップ_既読のみ)			$$update_skip_unread_message_onoff(0)
	case(@ボタン_コンフィグ_メッセージスキップ_未読含む)			$$update_skip_unread_message_onoff(1)
	case(@ボタン_コンフィグ_オートセーブ_無効)						$$update_autosave_enable(0)
	case(@ボタン_コンフィグ_オートセーブ_有効)						$$update_autosave_enable(1)
	case(@ボタン_コンフィグ_レコード表示_無効)						$$update_record_disp(0)
	case(@ボタン_コンフィグ_レコード表示_有効)						$$update_record_disp(1)
	case(@ボタン_コンフィグ_タブレットモード_無効)					$$update_tablet_mode_setting(0)
	case(@ボタン_コンフィグ_タブレットモード_右)					$$update_tablet_mode_setting(1)
	case(@ボタン_コンフィグ_タブレットモード_左)					$$update_tablet_mode_setting(2)
	case(@ボタン_コンフィグ_右クリック_クイックメニュー)			$$update_rclick_mode(<RCLICK_MODE_QUICK_MENU>)
	case(@ボタン_コンフィグ_右クリック_ウィンドウ消去)				$$update_rclick_mode(<RCLICK_MODE_WINDOW_CLOSE>)
	case(@ボタン_コンフィグ_右クリック_コンフィグ画面)				$$update_rclick_mode(<RCLICK_MODE_CONFIG>)
	case(@ボタン_コンフィグ_右クリック_セーブ画面)					$$update_rclick_mode(<RCLICK_MODE_SAVE>)
	case(@ボタン_コンフィグ_右クリック_ロード画面)					$$update_rclick_mode(<RCLICK_MODE_LOAD>)
	case(@ボタン_コンフィグ_確認ダイアログ_セーブ)					$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_セーブ)
	case(@ボタン_コンフィグ_確認ダイアログ_クイックセーブ)			$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_クイックセーブ)
	case(@ボタン_コンフィグ_確認ダイアログ_上書きセーブ)			$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_上書きセーブ)
	case(@ボタン_コンフィグ_確認ダイアログ_ロード)					$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_ロード)
	case(@ボタン_コンフィグ_確認ダイアログ_クイックロード)			$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_クイックロード)
	case(@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る)		$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る)
	case(@ボタン_コンフィグ_確認ダイアログ_履歴から再開する)		$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_履歴から再開する)
	case(@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え)	$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え)
	case(@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除)		$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除)
	case(@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す)			$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す)
	case(@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る)			$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る)
	case(@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する)		$$update_yesno_dialog_setting(@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する)
	case(@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める)	$$update_other_setting(@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める)
	case(@ボタン_コンフィグ_その他の設定_スムーズに動作)				$$update_other_setting(@ボタン_コンフィグ_その他の設定_スムーズに動作)
	case(@ボタン_コンフィグ_サイドバー_無効)						$$update_sidebar_setting(0)
	case(@ボタン_コンフィグ_サイドバー_右)							$$update_sidebar_setting(1)
	case(@ボタン_コンフィグ_サイドバー_左)							$$update_sidebar_setting(2)
	case(@ボタン_コンフィグ_ムービー_詳細設定)
		
		// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
		
		// ムービーの設定ダイアログを呼び出す
		syscom.call_config_movie_menu
		
	case(@ボタン_コンフィグ_ゲームパッド_詳細設定)
		
		// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
		
		// ゲームパッドの設定ダイアログを呼び出す
		syscom.call_config_joypad_menu
		
	case(@ボタン_コンフィグ_文字設定_フォントＡ)					$$update_font_setting(0)
	case(@ボタン_コンフィグ_文字設定_フォントＢ)					$$update_font_setting(1)
	case(@ボタン_コンフィグ_文字設定_フォント_詳細設定)
		
		// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
		
		// フォントの設定ダイアログを呼び出す
		syscom.call_config_font_menu
		
	case(@ボタン_コンフィグ_文字設定_初期設定)
		
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$init_moji_setting
			}
		}
		else
		{
			// 初期設定に戻す
			$$init_moji_setting
		}
		
		// ジョイパッドで選択中のボタンを更新
		$$update_focus_button($select_btn)
		
	case(@ボタン_コンフィグ_文字設定_ノーウェイト)					$$update_text_setting(@ボタン_コンフィグ_文字設定_ノーウェイト)
	case(@ボタン_コンフィグ_ウィンドウ背景_初期設定)
		
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$init_mw_filter_setting
			}
		}
		else
		{
			// 初期設定に戻す
			$$init_mw_filter_setting
		}
		
		// 選択中のボタンを更新
		$$update_focus_button($select_btn)
		
	case(@ボタン_コンフィグ_オートモード_使用する)					$$update_text_setting(@ボタン_コンフィグ_オートモード_使用する)
	case(@ボタン_コンフィグ_オートモード_初期設定)
		
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$init_automode_setting
			}
		}
		else
		{
			// 初期設定に戻す
			$$init_automode_setting
		}
		
		// 選択中のボタンを更新
		$$update_focus_button($select_btn)
		
	case(@ボタン_コンフィグ_音量設定_ミュート_マスター)				$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_マスター)
	case(@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ)				$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ)
	case(@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード)		$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード)
	case(@ボタン_コンフィグ_音量設定_ミュート_音声)					$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_音声)
	case(@ボタン_コンフィグ_音量設定_ミュート_効果音)				$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_効果音)
	case(@ボタン_コンフィグ_音量設定_ミュート_システム音)			$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_システム音)
	case(@ボタン_コンフィグ_音量設定_ミュート_ムービー)				$$update_sound_setting(@ボタン_コンフィグ_音量設定_ミュート_ムービー)
	case(@ボタン_コンフィグ_音量設定_再生_マスター)					$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_マスター)
	case(@ボタン_コンフィグ_音量設定_再生_ＢＧＭ)					$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_ＢＧＭ)
	case(@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード)			$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード)
	case(@ボタン_コンフィグ_音量設定_再生_音声)						$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_音声)
	case(@ボタン_コンフィグ_音量設定_再生_効果音)					$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_効果音)
	case(@ボタン_コンフィグ_音量設定_再生_システム音)				$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_システム音)
	case(@ボタン_コンフィグ_音量設定_再生_ムービー)					$$play_sound_sample(@ボタン_コンフィグ_音量設定_再生_ムービー)
	case(@ボタン_コンフィグ_音量設定_初期設定)
		
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$init_sound_setting
			}
		}
		else
		{
			// 初期設定に戻す
			$$init_sound_setting
		}
		
		// 選択中のボタンを更新
		$$update_focus_button($select_btn)
		
	case(@ボタン_コンフィグ_再生設定_音声を続ける)
		
		// フラグを反転させる
		syscom.set_koe_dont_stop_onoff($$reverse_flag(syscom.get_koe_dont_stop_onoff))
		
		// トグルボタンを更新する
		$$update_ui_toggle_button(excall.front.object[$select_btn], syscom.get_koe_dont_stop_onoff)
		
	case(@ボタン_コンフィグ_キャラクター別音声_全てオン)
		
		$len = $$get_config_charakoe_max
		for( $i = 0, $i < $len, $i += 1 )
		{
			syscom.set_charakoe_onoff($$get_config_charakoe($i), 1)
			
			// トグルボタンの更新
			$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i], syscom.get_charakoe_onoff($$get_config_charakoe($i)))
		}
		
	case(@ボタン_コンフィグ_キャラクター別音声_全てオフ)
		
		$len = $$get_config_charakoe_max
		for( $i = 0, $i < $len, $i += 1 )
		{
			syscom.set_charakoe_onoff($$get_config_charakoe($i), 0)
			
			// トグルボタンの更新
			$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i], syscom.get_charakoe_onoff($$get_config_charakoe($i)))
		}
		
	case(@ボタン_コンフィグ_キャラクター別音声_初期設定)
		
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$init_voice_setting
			}
		}
		else
		{
			// 初期設定に戻す
			$$init_voice_setting
		}
		
		// 選択中のボタンを更新
		$$update_focus_button($select_btn)
	}
	
	// キャラクターミュートボタン
	if( @ボタン_コンフィグ_キャラクター１_ミュート <= $select_btn && $select_btn < @ボタン_コンフィグ_キャラクター１_ミュート + $$get_config_charakoe_max )
	{
		// キャラクター音声の登録番号を取得する
		$value = $$get_config_charakoe($select_btn - @ボタン_コンフィグ_キャラクター１_ミュート)
		
		// フラグを反転する
		syscom.set_charakoe_onoff($value, $$reverse_flag(syscom.get_charakoe_onoff($value)))
		
		// トグルボタンの更新
		$$update_ui_toggle_button(excall.front.object[$select_btn], syscom.get_charakoe_onoff($value))
	}
	
	// キャラクターボイス再生ボタン
	if( @ボタン_コンフィグ_キャラクター１_ボイス再生 <= $select_btn && $select_btn < @ボタン_コンフィグ_キャラクター１_ボイス再生 + $$get_config_charakoe_max )
	{
		// キャラクター音声の登録番号を取得する
		$value = $select_btn - @ボタン_コンフィグ_キャラクター１_ボイス再生
		
		// 声を再生する
		exkoe($$get_config_charakoe_sample_voice($value), $$get_config_charakoe_koe_no($value))
	}
	
	// マウスホイール動作
	if( $$get_mouse_wheel_type == <MOUSE_WHEEL_TYPE_UP> )
	{
		se.play_by_se_no(<BUTTON_SE_DECIDE>)
		
		switch( <CONFIG_MODE> ) {
		case(0)		$select_btn = @ボタン_コンフィグ_ヘッダー_サウンド
		case(1)		$select_btn = @ボタン_コンフィグ_ヘッダー_システム
		case(2)		$select_btn = @ボタン_コンフィグ_ヘッダー_テキスト
		}
	}
	elseif( $$get_mouse_wheel_type == <MOUSE_WHEEL_TYPE_DOWN> )
	{
		se.play_by_se_no(<BUTTON_SE_DECIDE>)
		
		switch( <CONFIG_MODE> ) {
		case(0)		$select_btn = @ボタン_コンフィグ_ヘッダー_テキスト
		case(1)		$select_btn = @ボタン_コンフィグ_ヘッダー_サウンド
		case(2)		$select_btn = @ボタン_コンフィグ_ヘッダー_システム
		}
	}
	
	// マウスで各スライダーを押している場合
	if( @フルプライスシステム )
	{
		$len = @スライダー_コンフィグ_キャラクター１_音量 + $$get_config_charakoe_max * 2
		
		for( $i = @スライダー_コンフィグ_文字設定_メッセージ速度, $i <= $len, $i += 2 )
		{
			if( excall.front.object[$i].f.get_size == 0 ) {
				continue
			}
			
			if( excall.front.object[$i].f_slider_on_value_changed )
			{
				// スライダーの値を取得する
				$value = $$get_ui_slider_value(excall.front.object[$i])
				
				// 各スライダーの値を各音量に反映する
				switch( $i ) {
				case(@スライダー_コンフィグ_文字設定_メッセージ速度)	syscom.set_message_speed(100 - $value)
				case(@スライダー_コンフィグ_ウィンドウ背景_赤)			syscom.set_filter_color_r($value)
																		excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_r = syscom.get_filter_color_r
				case(@スライダー_コンフィグ_ウィンドウ背景_緑)			syscom.set_filter_color_g($value)
																		excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_g = syscom.get_filter_color_g
				case(@スライダー_コンフィグ_ウィンドウ背景_青)			syscom.set_filter_color_b($value)
																		excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_b = syscom.get_filter_color_b
				case(@スライダー_コンフィグ_ウィンドウ背景_不透明度)	syscom.set_filter_color_a($value)
																		excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].tr = syscom.get_filter_color_a
				case(@スライダー_コンフィグ_オートモード_文字時間)		syscom.set_auto_mode_moji_wait($value)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_文字時間_前], 0)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_文字時間_後], 1)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], 4)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], 5)
				case(@スライダー_コンフィグ_オートモード_最小時間)		syscom.set_auto_mode_min_wait($value)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_最小時間_前], 2)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_最小時間_後], 3)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], 4)
																		$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], 5)
				case(@スライダー_コンフィグ_音量設定_マスター)			syscom.set_all_volume($value)
				case(@スライダー_コンフィグ_音量設定_ＢＧＭ)			syscom.set_bgm_volume($value)
				case(@スライダー_コンフィグ_音量設定_ＢＧＭフェード)	syscom.set_bgmfade_volume($value)
				case(@スライダー_コンフィグ_音量設定_音声)				syscom.set_koe_volume($value)
				case(@スライダー_コンフィグ_音量設定_効果音)			syscom.set_pcm_volume($value)
				case(@スライダー_コンフィグ_音量設定_システム音)		syscom.set_se_volume($value)
				case(@スライダー_コンフィグ_音量設定_ムービー)			syscom.set_mov_volume($value)
				}
				
				if( @スライダー_コンフィグ_キャラクター１_音量 <= $i )
				{
					syscom.set_charakoe_volume($$get_config_charakoe_from_btn_no($i), $value)
				}
			}
		}
	}
	
	// ゲームパッドのキー入力の場合
	switch( $select_btn ) {
	case(@スライダー動作_コンフィグ_文字設定_メッセージ速度_下げる)		$$step_slider(excall.front, @スライダー_コンフィグ_文字設定_メッセージ速度, 0)
	case(@スライダー動作_コンフィグ_文字設定_メッセージ速度_上げる)		$$step_slider(excall.front, @スライダー_コンフィグ_文字設定_メッセージ速度, 1)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_赤_下げる)			$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_赤, 0)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_赤_上げる)			$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_赤, 1)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_緑_下げる)			$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_緑, 0)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_緑_上げる)			$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_緑, 1)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_青_下げる)			$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_青, 0)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_青_上げる)			$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_青, 1)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_不透明度_下げる)		$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_不透明度, 0)
	case(@スライダー動作_コンフィグ_ウィンドウ背景_不透明度_上げる)		$$step_slider(excall.front, @スライダー_コンフィグ_ウィンドウ背景_不透明度, 1)
	case(@スライダー動作_コンフィグ_オートモード_文字時間_下げる)		$$step_slider(excall.front, @スライダー_コンフィグ_オートモード_文字時間, 0)
	case(@スライダー動作_コンフィグ_オートモード_文字時間_上げる)		$$step_slider(excall.front, @スライダー_コンフィグ_オートモード_文字時間, 1)
	case(@スライダー動作_コンフィグ_オートモード_最小時間_下げる)		$$step_slider(excall.front, @スライダー_コンフィグ_オートモード_最小時間, 0)
	case(@スライダー動作_コンフィグ_オートモード_最小時間_上げる)		$$step_slider(excall.front, @スライダー_コンフィグ_オートモード_最小時間, 1)
	case(@スライダー動作_コンフィグ_音量設定_マスター_下げる)			$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_マスター, 0)
	case(@スライダー動作_コンフィグ_音量設定_マスター_上げる)			$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_マスター, 1)
	case(@スライダー動作_コンフィグ_音量設定_ＢＧＭ_下げる)				$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_ＢＧＭ, 0)
	case(@スライダー動作_コンフィグ_音量設定_ＢＧＭ_上げる)				$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_ＢＧＭ, 1)
	case(@スライダー動作_コンフィグ_音量設定_ＢＧＭフェード_下げる)		$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_ＢＧＭフェード, 0)
	case(@スライダー動作_コンフィグ_音量設定_ＢＧＭフェード_上げる)		$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_ＢＧＭフェード, 1)
	case(@スライダー動作_コンフィグ_音量設定_音声_下げる)				$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_音声, 0)
	case(@スライダー動作_コンフィグ_音量設定_音声_上げる)				$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_音声, 1)
	case(@スライダー動作_コンフィグ_音量設定_効果音_下げる)				$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_効果音, 0)
	case(@スライダー動作_コンフィグ_音量設定_効果音_上げる)				$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_効果音, 1)
	case(@スライダー動作_コンフィグ_音量設定_システム音_下げる)			$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_システム音, 0)
	case(@スライダー動作_コンフィグ_音量設定_システム音_上げる)			$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_システム音, 1)
	case(@スライダー動作_コンフィグ_音量設定_ムービー_下げる)			$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_ムービー, 0)
	case(@スライダー動作_コンフィグ_音量設定_ムービー_上げる)			$$step_slider(excall.front, @スライダー_コンフィグ_音量設定_ムービー, 1)
	}
	
	// ゲームパッドのキー入力の場合
	if( $select_btn <= @スライダー動作_コンフィグ_キャラクター１音声_下げる )
	{
		$$step_slider(excall.front, $$get_config_charakoe_btn_no_from_func_no($select_btn), ($select_btn * -1) % 2)
	}
	
	// 画面モードのチェック
	if( $window_mode != syscom.get_window_mode ) {
		$$update_window_mode(syscom.get_window_mode)
	}
	
	// サンプルテキストの更新
	if( excall.front.object[@テキスト_コンフィグ_ウィンドウ背景_サンプルテキスト].disp ) {
		$$update_config_text_sample_text(excall.front.object[@テキスト_コンフィグ_ウィンドウ背景_サンプルテキスト])
	}
	
	// フォント更新のチェック
	for( $i = 0, $i < $prefont_name.get_size, $i += 1 )
	{
		if( $prefont_name[$i] == syscom.get_font_name )
		{
			if( <FONT_TYPE> == $font_type_old )
			{
				// フォントタイプの更新
				<FONT_TYPE> = $i
				
				// ボタン描画を更新する
				$$update_config_radio_button(excall.front, @ボタン_コンフィグ_文字設定_フォントＡ, 2, <FONT_TYPE>)
				
				break
			}
		}
		
		if( $i == $prefont_name.get_size - 1 )
		{
			if( <FONT_TYPE> == $font_type_old )
			{
				<FONT_TYPE> = 2
				
				// ボタン描画を更新する
				$$update_config_radio_button(excall.front, @ボタン_コンフィグ_文字設定_フォントＡ, 2, <FONT_TYPE>)
			}
		}
	}
	
	$font_type_old = <FONT_TYPE>
	
	return ($select_btn)
}

//---------------------------------------------------------------------------
// 選択中のボタンを更新
//---------------------------------------------------------------------------
command $$update_focus_button(property $select_btn)
{
	// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
	$$set_joypad_focus_button($select_btn)
	
	// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
	if( syscom.check_joypad_mode == 0 ) {
		$$update_joypad_focus_button(excall.front)
	}
}

//---------------------------------------------------------------------------
// コンフィグに登録されているフォント名を設定する
//---------------------------------------------------------------------------
command $$set_config_prefont_name(property $index, property $font_name : str)
{
	$prefont_name.resize($index + 1)
	$prefont_name[$index] = $font_name
}

//---------------------------------------------------------------------------
// 前回のコンフィグモードを取得する
//---------------------------------------------------------------------------
command $$get_prev_config_mode : int
{
	return ($config_mode_old)
}

//---------------------------------------------------------------------------
// 前回のコンフィグモードを設定する
//---------------------------------------------------------------------------
command $$set_prev_config_mode(property $mode)
{
	$config_mode_old = $mode
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するラジオボタンを作成する
//---------------------------------------------------------------------------
command $$create_config_radio_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $system_select, property $select)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// システムで選択している値と指定した値が同じ場合は選択中にする
	if( $system_select == $select ) {
		$obj.set_button_state_select
	}
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するラジオボタンを更新する
//---------------------------------------------------------------------------
command $$update_config_radio_button(property $stage : stage, property $base_obj_index, property $obj_count, property $select_index)
{
	property $i
	property $len
	
	for( $i = 0, $i < $obj_count, $i += 1 )
	{
		// 表示していないボタンがある場合はスキップする
		if( $stage.object[$base_obj_index + $i].disp == 0 ) {
			continue
		}
		
		// 選択中のボタンは選択中に、それ以外は通常状態に戻す
		if( $i == $select_index ) { $stage.object[$base_obj_index + $i].set_button_state_select }
		else					  { $stage.object[$base_obj_index + $i].set_button_state_normal }
	}
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するラジオボタンを選択不可にする
//---------------------------------------------------------------------------
command $$disable_config_radio_button(property $stage : stage, property $base_obj_index, property $obj_count, property $select_index)
{
	property $i
	property $len
	
	for( $i = 0, $i < $obj_count, $i += 1 )
	{
		// 表示していないボタンがある場合はスキップする
		if( $stage.object[$base_obj_index + $i].disp == 0 ) {
			continue
		}
		
		// 選択不可にする
		$stage.object[$base_obj_index + $i].set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するラジオボタンで選択されているボタンを取得する
//---------------------------------------------------------------------------
command $$get_config_radio_button_select(property $base_obj_index) : int
{
	property $state
	
	switch( $base_obj_index ) {
	case(@ボタン_コンフィグ_画面モード_標準ウィンドウ)			$state = syscom.get_window_mode
	case(@ボタン_コンフィグ_表示速度_キャラクター_通常)			$state = <EFFECT_SPEED_CHARACTER>
	case(@ボタン_コンフィグ_表示速度_背景_通常)					$state = <EFFECT_SPEED_BG>
	case(@ボタン_コンフィグ_表示速度_イベントＣＧ_通常)			$state = <EFFECT_SPEED_CG>
	case(@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常)	$state = <EFFECT_SPEED_MW>
	case(@ボタン_コンフィグ_表示速度_システムメニュー_通常)		$state = <EFFECT_SPEED_SYS_MENU>
	case(@ボタン_コンフィグ_メッセージスキップ_既読のみ)		$state = syscom.get_skip_unread_message_onoff
	case(@ボタン_コンフィグ_オートセーブ_無効)					$state = <AUTO_SAVE>
	case(@ボタン_コンフィグ_レコード表示_無効)					$state = <RECORD_DISP>
	case(@ボタン_コンフィグ_タブレットモード_無効)				$state = <TABLET_MODE>
	case(@ボタン_コンフィグ_右クリック_クイックメニュー)		$state = <RCLICK_MODE>
	case(@ボタン_コンフィグ_サイドバー_無効)					$state = <SIDEBAR_MODE>
	case(@ボタン_コンフィグ_文字設定_フォントＡ)				$state = <FONT_TYPE>
	}
	
	return ($base_obj_index + $state)
}

//---------------------------------------------------------------------------
// 画面モードの更新
//---------------------------------------------------------------------------
command $$update_window_mode(property $mode)
{
	// ウィンドウモードを設定する
	syscom.set_window_mode($mode)
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_画面モード_標準ウィンドウ, 2, syscom.get_window_mode)
	
	$window_mode = syscom.get_window_mode
}

//---------------------------------------------------------------------------
// 表示速度／キャラクターの更新
//---------------------------------------------------------------------------
command $$update_disp_ch_mode(property $mode)
{
	// 表示速度／キャラクターを設定する
	<EFFECT_SPEED_CHARACTER> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_表示速度_キャラクター_通常, 2, <EFFECT_SPEED_CHARACTER>)
}

//---------------------------------------------------------------------------
// 表示速度／背景の更新
//---------------------------------------------------------------------------
command $$update_disp_bg_mode(property $mode)
{
	// 表示速度／背景を設定する
	<EFFECT_SPEED_BG> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_表示速度_背景_通常, 2, <EFFECT_SPEED_BG>)
}

//---------------------------------------------------------------------------
// 表示速度／イベントＣＧの更新
//---------------------------------------------------------------------------
command $$update_disp_cg_mode(property $mode)
{
	// 表示速度／イベントＣＧを設定する
	<EFFECT_SPEED_CG> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_表示速度_イベントＣＧ_通常, 2, <EFFECT_SPEED_CG>)
}

//---------------------------------------------------------------------------
// 表示速度／メッセージウィンドウの更新
//---------------------------------------------------------------------------
command $$update_disp_mw_mode(property $mode)
{
	// 表示速度／メッセージウィンドウを設定する
	<EFFECT_SPEED_MW> = $mode
	
	// メッセージウィンドウの開閉時のアニメを設定する
	syscom.set_no_mwnd_anime_onoff($mode)
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常, 2, <EFFECT_SPEED_MW>)
}

//---------------------------------------------------------------------------
// 表示速度／システムメニューの更新
//---------------------------------------------------------------------------
command $$update_disp_sys_menu_mode(property $mode)
{
	// 表示速度／システムメニューを設定する
	<EFFECT_SPEED_SYS_MENU> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_表示速度_システムメニュー_通常, 2, <EFFECT_SPEED_SYS_MENU>)
}

//---------------------------------------------------------------------------
// メッセージスキップ設定の更新
//---------------------------------------------------------------------------
command $$update_skip_unread_message_onoff(property $mode)
{
	// 未読時のスキップを設定する
	syscom.set_skip_unread_message_onoff($mode)

	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_メッセージスキップ_既読のみ, 2, syscom.get_skip_unread_message_onoff)
}

//---------------------------------------------------------------------------
// オートセーブ設定の更新
//---------------------------------------------------------------------------
command $$update_autosave_enable(property $mode)
{
	// オートセーブを設定する
	<AUTO_SAVE> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_オートセーブ_無効, 2, <AUTO_SAVE>)
}

//---------------------------------------------------------------------------
// レコード表示の更新
//---------------------------------------------------------------------------
command $$update_record_disp(property $mode)
{
	// レコード取得時の表示を設定する
	<RECORD_DISP> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_レコード表示_無効, 2, <RECORD_DISP>)
}

//---------------------------------------------------------------------------
// タブレットモード設定の更新
//---------------------------------------------------------------------------
command $$update_tablet_mode_setting(property $mode)
{
	// タブレットモードを設定する
	<TABLET_MODE> = $mode
	
	// タブレットモードが有効の場合はオン、無効の場合はオフにする
	if( <TABLET_MODE> )
	{
		$$tablet_mode_on(<TABLET_MODE>)
		
		// 右クリックボタン描画を選択不可にする
		$$disable_config_radio_button(excall.front, @ボタン_コンフィグ_右クリック_クイックメニュー, <RCLICK_MODE_MAX>, <RCLICK_MODE>)
		
		// サイドバーボタン描画を選択不可にする
		$$disable_config_radio_button(excall.front, @ボタン_コンフィグ_サイドバー_無効, 3, <SIDEBAR_MODE>)
	}
	else
	{
		$$tablet_mode_off
		
		// 右クリックボタン描画を更新する
		$$update_config_radio_button(excall.front, @ボタン_コンフィグ_右クリック_クイックメニュー, <RCLICK_MODE_MAX>, <RCLICK_MODE>)
		
		// サイドバーボタン描画を更新する
		$$update_config_radio_button(excall.front, @ボタン_コンフィグ_サイドバー_無効, 3, <SIDEBAR_MODE>)
	}
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_タブレットモード_無効, 3, <TABLET_MODE>)
	
	// ヘルプを見ていない場合はヘルプシーンへ
	if( <TABLET_MODE_HELP> == 0 )
	{
		farcall(__sys_tablet_mode)
		
		<TABLET_MODE_HELP> = 1
	}
}

//---------------------------------------------------------------------------
// 右クリック動作の更新
//---------------------------------------------------------------------------
command $$update_rclick_mode(property $mode)
{
	// 右クリック動作を設定する
	<RCLICK_MODE> = $mode
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_右クリック_クイックメニュー, <RCLICK_MODE_MAX>, <RCLICK_MODE>)
}

//---------------------------------------------------------------------------
// 確認ダイアログ設定の更新
//---------------------------------------------------------------------------
command $$update_yesno_dialog_setting(property $mode)
{
	property $flag
	
	switch( $mode ) {
	case(@ボタン_コンフィグ_確認ダイアログ_セーブ)
		
		$flag = <YESNO_DIALOG_SAVE>
		<YESNO_DIALOG_SAVE> = $$reverse_flag(<YESNO_DIALOG_SAVE>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_クイックセーブ)
		
		$flag = <YESNO_DIALOG_QUICK_SAVE>
		<YESNO_DIALOG_QUICK_SAVE> = $$reverse_flag(<YESNO_DIALOG_QUICK_SAVE>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_上書きセーブ)
		
		$flag = <YESNO_DIALOG_OVERWRITE_SAVE>
		<YESNO_DIALOG_OVERWRITE_SAVE> = $$reverse_flag(<YESNO_DIALOG_OVERWRITE_SAVE>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_ロード)
		
		$flag = <YESNO_DIALOG_LOAD>
		<YESNO_DIALOG_LOAD> = $$reverse_flag(<YESNO_DIALOG_LOAD>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_クイックロード)
		
		$flag = <YESNO_DIALOG_QUICK_LOAD>
		<YESNO_DIALOG_QUICK_LOAD> = $$reverse_flag(<YESNO_DIALOG_QUICK_LOAD>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る)
		
		$flag = <YESNO_DIALOG_BACK>
		<YESNO_DIALOG_BACK> = $$reverse_flag(<YESNO_DIALOG_BACK>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_履歴から再開する)
		
		$flag = <YESNO_DIALOG_BACKLOG_JUMP>
		<YESNO_DIALOG_BACKLOG_JUMP> = $$reverse_flag(<YESNO_DIALOG_BACKLOG_JUMP>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え)
		
		$flag = <YESNO_DIALOG_SWAP>
		<YESNO_DIALOG_SWAP> = $$reverse_flag(<YESNO_DIALOG_SWAP>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除)
		
		$flag = <YESNO_DIALOG_DELETE>
		<YESNO_DIALOG_DELETE> = $$reverse_flag(<YESNO_DIALOG_DELETE>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す)
		
		$flag = <YESNO_DIALOG_INIT_SETTINGS>
		<YESNO_DIALOG_INIT_SETTINGS> = $$reverse_flag(<YESNO_DIALOG_INIT_SETTINGS>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る)
		
		$flag = <YESNO_DIALOG_TITLE>
		<YESNO_DIALOG_TITLE> = $$reverse_flag(<YESNO_DIALOG_TITLE>)
		
	case(@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する)
		
		$flag = <YESNO_DIALOG_EXIT>
		<YESNO_DIALOG_EXIT> = $$reverse_flag(<YESNO_DIALOG_EXIT>)
	}
	
	// トグルボタンを更新する
	$$update_ui_toggle_button(excall.front.object[$mode], $flag)
}

//---------------------------------------------------------------------------
// その他の設定の更新
//---------------------------------------------------------------------------
command $$update_other_setting(property $mode)
{
	property $flag
	
	switch( $mode ) {
	case(@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める)
		
		syscom.set_wheel_next_message_onoff($$reverse_flag(syscom.get_wheel_next_message_onoff))
		$flag = syscom.get_wheel_next_message_onoff
		
	case(@ボタン_コンフィグ_その他の設定_スムーズに動作)
		
		syscom.set_sleep_onoff($$reverse_flag(syscom.get_sleep_onoff))
		$flag = syscom.get_sleep_onoff
	}
	
	// トグルボタンを更新する
	$$update_ui_toggle_button(excall.front.object[$mode], $flag)
}

//---------------------------------------------------------------------------
// サイドバー設定の更新
//---------------------------------------------------------------------------
command $$update_sidebar_setting(property $mode)
{
	// サイドバーを設定する
	<SIDEBAR_MODE> = $mode
	
	// サイドバーが有効の場合はオン、無効の場合はオフにする
	if( <SIDEBAR_MODE> )
	{
		$$sidebar_mode_on(<SIDEBAR_MODE>)
	}
	else
	{
		$$sidebar_mode_off
	}
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_サイドバー_無効, 3, <SIDEBAR_MODE>)
}

//---------------------------------------------------------------------------
// フォント設定の更新
//---------------------------------------------------------------------------
command $$update_font_setting(property $mode)
{
	// フォントタイプを設定する
	<FONT_TYPE> = $mode
	
	// フォントＡを設定する
	syscom.set_font_name($prefont_name[<FONT_TYPE>])
	
	// ボタン描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_文字設定_フォントＡ, 2, <FONT_TYPE>)
}

//---------------------------------------------------------------------------
// 文字設定の初期化
//---------------------------------------------------------------------------
command $$init_moji_setting
{
	// 設定をデフォルトに戻す
	<FONT_TYPE> = 0
	
	syscom.set_font_name($prefont_name[<FONT_TYPE>])
	syscom.set_message_nowait_default
	syscom.set_message_speed_default
	
	// 各描画を更新する
	$$update_config_radio_button(excall.front, @ボタン_コンフィグ_文字設定_フォントＡ, 2, <FONT_TYPE>)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_文字設定_ノーウェイト], syscom.get_message_nowait)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_文字設定_メッセージ速度], 100 - syscom.get_message_speed)
}

//---------------------------------------------------------------------------
// テキスト設定の更新
//---------------------------------------------------------------------------
command $$update_text_setting(property $mode)
{
	property $flag
	
	switch( $mode ) {
	case(@ボタン_コンフィグ_文字設定_ノーウェイト)
		
		syscom.set_message_nowait($$reverse_flag(syscom.get_message_nowait))
		$flag = syscom.get_message_nowait
		
	case(@ボタン_コンフィグ_オートモード_使用する)
		syscom.set_auto_mode_onoff_flag($$reverse_flag(syscom.get_auto_mode_onoff_flag))
		$flag = syscom.get_auto_mode_onoff_flag
	}
	
	// トグルボタンを更新する
	$$update_ui_toggle_button(excall.front.object[$mode], $flag)
}

//---------------------------------------------------------------------------
// メッセージウィンドウ背景設定の初期化
//---------------------------------------------------------------------------
command $$init_mw_filter_setting
{
	// 設定をデフォルトに戻す
	syscom.set_filter_color_r_default
	syscom.set_filter_color_g_default
	syscom.set_filter_color_b_default
	syscom.set_filter_color_a_default
	
	// 各描画を更新する
	$$update_mw_filter_setting(excall.front)
	
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_ウィンドウ背景_赤], syscom.get_filter_color_r)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_ウィンドウ背景_緑], syscom.get_filter_color_g)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_ウィンドウ背景_青], syscom.get_filter_color_b)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_ウィンドウ背景_不透明度], syscom.get_filter_color_a)
}

//---------------------------------------------------------------------------
// メッセージウィンドウ背景設定の更新
//---------------------------------------------------------------------------
command $$update_mw_filter_setting(property $stage : stage)
{
	if( $stage.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].f.get_size == 0 ) {
		return
	}
	
	$stage.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_r = syscom.get_filter_color_r
	$stage.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_g = syscom.get_filter_color_g
	$stage.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_b = syscom.get_filter_color_b
	$stage.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].tr = syscom.get_filter_color_a
}

//---------------------------------------------------------------------------
// オートモードの時間表示を作成する
//---------------------------------------------------------------------------
command $$create_config_automode_moji_wait_number1(property $obj : object, property $filename : str, property $x, property $y)
{
	$$create_config_automode_time_number($obj, $filename, $x, $y, 0)
}

command $$create_config_automode_moji_wait_number2(property $obj : object, property $filename : str, property $x, property $y)
{
	$$create_config_automode_time_number($obj, $filename, $x, $y, 1)
}

command $$create_config_automode_min_wait_number1(property $obj : object, property $filename : str, property $x, property $y)
{
	$$create_config_automode_time_number($obj, $filename, $x, $y, 2)
}

command $$create_config_automode_min_wait_number2(property $obj : object, property $filename : str, property $x, property $y)
{
	$$create_config_automode_time_number($obj, $filename, $x, $y, 3)
}

command $$create_config_automode_total_wait_number1(property $obj : object, property $filename : str, property $x, property $y)
{
	$$create_config_automode_time_number($obj, $filename, $x, $y, 4)
}

command $$create_config_automode_total_wait_number2(property $obj : object, property $filename : str, property $x, property $y)
{
	$$create_config_automode_time_number($obj, $filename, $x, $y, 5)
}

command $$create_config_automode_time_number(property $obj : object, property $filename : str, property $x, property $y, property $type)
{
	$$create_ui_number_image($obj, $filename, $x, $y)
	
	switch( $type ) {
	case(0)		$obj.set_number_param(1, 1, 0, 0, 0, 0)
	case(1)		$obj.set_number_param(2, 1, 0, 0, 0, 8)
	case(2)		$obj.set_number_param(1, 1, 0, 0, 0, 0)
	case(3)		$obj.set_number_param(1, 1, 0, 0, 0, 0)
	case(4)		$obj.set_number_param(2, 0, 0, 0, 0, 8)
	case(5)		$obj.set_number_param(2, 1, 0, 0, 0, 8)
	}
	
	// 更新する
	$$update_config_automode_time_number($obj, $type)
}

command $$update_config_automode_time_number(property $obj : object, property $type)
{
	property $num
	
	switch( $type ) {
	case(0)		$num = 0
	case(1)		$num = syscom.get_auto_mode_moji_wait / 10
	case(2)		$num = syscom.get_auto_mode_min_wait / 1000
	case(3)		$num = syscom.get_auto_mode_min_wait / 100 % 10
	case(4)		$num = (10 * syscom.get_auto_mode_moji_wait + syscom.get_auto_mode_min_wait) / 1000
	case(5)		$num = (10 * syscom.get_auto_mode_moji_wait + syscom.get_auto_mode_min_wait) / 10 % 100 / 10 * 10
	}
	
	$obj.set_number($num)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するサンプルテキストを作成する
//---------------------------------------------------------------------------
command $$create_config_text_sample_text(property $obj : object, property $x, property $y, property $w, property $h, property $font_size)
{
	$$create_ui_string($obj, $x, $y, $w, $h, $font_size)
	$$update_ui_string($obj, $$get_config_sample_text)
	
	// カウンターを開始する
	excall.counter[0].start
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するサンプルテキストを更新する
//---------------------------------------------------------------------------
command $$update_config_text_sample_text(property $obj : object)
{
	property $text : str
	property $text_size
	property $text_disp_size
	property $time
	
	$text = $$get_config_sample_text
	$text_size = $text.cnt
	
	// 表示速度（ループを）設定する
	$time = syscom.get_message_speed * $text_size + 1000
	
	if( syscom.get_message_speed == 0 || syscom.get_message_nowait == 1 )
	{
		// ノーウェイト／メッセージ速度が最大の場合はすべて表示する
		$text_disp_size = $text_size
	}
	else
	{
		// カウンタから表示する文字数を取得する
		$text_disp_size = excall.counter[0].get % $time
		$text_disp_size = $text_disp_size / syscom.get_message_speed
		$text_disp_size = math.min($text_disp_size, $text_size - 1)
	}
	
	// テキストを更新する
	$$update_ui_string($obj, $text.left($text_disp_size + 1))
}

//---------------------------------------------------------------------------
// オートモード設定の初期化
//---------------------------------------------------------------------------
command $$init_automode_setting
{
	// 設定をデフォルトに戻す
	syscom.set_auto_mode_moji_wait_default
	syscom.set_auto_mode_min_wait_default
	syscom.set_auto_mode_onoff_flag(0)
	
	// 各描画を更新する
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_オートモード_使用する], syscom.get_auto_mode_onoff_flag)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_オートモード_文字時間], syscom.get_auto_mode_moji_wait)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_オートモード_最小時間], syscom.get_auto_mode_min_wait)
	
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_文字時間_前], 0)
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_文字時間_後], 1)
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], 4)
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], 5)
	
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_最小時間_前], 2)
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_最小時間_後], 3)
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], 4)
	$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], 5)
}

//---------------------------------------------------------------------------
// サウンド設定の更新
//---------------------------------------------------------------------------
command $$update_sound_setting(property $mode)
{
	property $flag
	
	switch( $mode ) {
	case(@ボタン_コンフィグ_音量設定_ミュート_マスター)
		
		syscom.set_all_onoff($$reverse_flag(syscom.get_all_onoff))
		$flag = syscom.get_all_onoff
		
	case(@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ)
		
		syscom.set_bgm_onoff($$reverse_flag(syscom.get_bgm_onoff))
		$flag = syscom.get_bgm_onoff
		
	case(@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード)
		
		syscom.set_bgmfade_onoff($$reverse_flag(syscom.get_bgmfade_onoff))
		$flag = syscom.get_bgmfade_onoff
		
	case(@ボタン_コンフィグ_音量設定_ミュート_音声)
		
		syscom.set_koe_onoff($$reverse_flag(syscom.get_koe_onoff))
		$flag = syscom.get_koe_onoff
		
	case(@ボタン_コンフィグ_音量設定_ミュート_効果音)
		
		syscom.set_pcm_onoff($$reverse_flag(syscom.get_pcm_onoff))
		$flag = syscom.get_pcm_onoff
		
	case(@ボタン_コンフィグ_音量設定_ミュート_システム音)
		
		syscom.set_se_onoff($$reverse_flag(syscom.get_se_onoff))
		$flag = syscom.get_se_onoff
		
	case(@ボタン_コンフィグ_音量設定_ミュート_ムービー)
		
		syscom.set_mov_onoff($$reverse_flag(syscom.get_mov_onoff))
		$flag = syscom.get_mov_onoff
		
	}
	
	// トグルボタンを更新する
	$$update_ui_toggle_button(excall.front.object[$mode], $flag)
}

//---------------------------------------------------------------------------
// サンプルサウンド再生の更新
//---------------------------------------------------------------------------
command $$play_sound_sample(property $mode)
{
	property $volume
	
	switch( $mode ) {
	case(@ボタン_コンフィグ_音量設定_再生_マスター)			$volume = syscom.get_all_volume
	case(@ボタン_コンフィグ_音量設定_再生_ＢＧＭ)			$volume = syscom.get_bgm_volume
	case(@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード)	$volume = syscom.get_bgmfade_volume
	case(@ボタン_コンフィグ_音量設定_再生_音声)				$volume = syscom.get_koe_volume
	case(@ボタン_コンフィグ_音量設定_再生_効果音)			$volume = syscom.get_pcm_volume
	case(@ボタン_コンフィグ_音量設定_再生_システム音)		$volume = syscom.get_se_volume
	case(@ボタン_コンフィグ_音量設定_再生_ムービー)			$volume = syscom.get_mov_volume
	}
	
	syscom.set_sound_volume(16, $volume)
	pcmch[7].play("_system_click", volume_type = 16)
}

//---------------------------------------------------------------------------
// サウンド設定の初期化
//---------------------------------------------------------------------------
command $$init_sound_setting
{
	// 設定をデフォルトに戻す
	syscom.set_all_onoff_default
	syscom.set_bgm_onoff_default
	syscom.set_bgmfade_onoff_default
	syscom.set_koe_onoff_default
	syscom.set_pcm_onoff_default
	syscom.set_se_onoff_default
	syscom.set_mov_onoff_default
	
	syscom.set_all_volume_default
	syscom.set_bgm_volume_default
	syscom.set_bgmfade_volume_default
	syscom.set_koe_volume_default
	syscom.set_pcm_volume_default
	syscom.set_se_volume_default
	syscom.set_mov_volume_default
	
	// 各描画を更新する
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_マスター], syscom.get_all_onoff)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ], syscom.get_bgm_onoff)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード], syscom.get_bgmfade_onoff)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_音声], syscom.get_koe_onoff)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_効果音], syscom.get_pcm_onoff)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_システム音], syscom.get_se_onoff)
	$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_音量設定_ミュート_ムービー], syscom.get_mov_onoff)
	
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_マスター], syscom.get_all_volume)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_ＢＧＭ], syscom.get_bgm_volume)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_ＢＧＭフェード], syscom.get_bgmfade_volume)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_音声], syscom.get_koe_volume)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_効果音], syscom.get_pcm_volume)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_システム音], syscom.get_se_volume)
	$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_音量設定_ムービー], syscom.get_mov_volume)
}

//---------------------------------------------------------------------------
// ボイス設定の初期化
//---------------------------------------------------------------------------
command $$init_voice_setting
{
	property $i
	property $len
	property $charakoe
	
	// 設定をデフォルトに戻す
	$len = $$get_config_charakoe_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		$charakoe = $$get_config_charakoe($i)
		
		syscom.set_charakoe_onoff_default($charakoe)
		syscom.set_charakoe_volume_default($charakoe)
		
		// 各描画を更新する
		$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_キャラクター１_ミュート + $i], syscom.get_charakoe_onoff($charakoe))
		$$update_ui_slider(excall.front.object[@スライダー_コンフィグ_キャラクター１_音量 + $i * 2], syscom.get_charakoe_volume($charakoe))
	}
}

//---------------------------------------------------------------------------
// スライダーのステップ処理を行う
//---------------------------------------------------------------------------
command $$step_slider(property $stage : stage, property $btn_no, property $step_direction)
{
	property $value
	property $slider_limit
	
	// 指定方向によってスライダーの増減処理を変更する
	switch( $step_direction ) {
	case(0)		$slider_limit = $$prev_step_ui_slider($stage.object[$btn_no])
	case(1)		$slider_limit = $$next_step_ui_slider($stage.object[$btn_no])
	}
	
	// スライダーの増減処理が限界だった場合
	if( $slider_limit )
	{
		// キャンセル音を再生する
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
	}
	else
	{
		// 決定音を再生する
		se.play_by_se_no(<BUTTON_SE_DECIDE>)
	}
	
	// スライダーの現在値を取得する
	$value = $$get_ui_slider_value($stage.object[$btn_no])
	
	// 値を各音量に設定する
	switch( $btn_no ) {
	case(@スライダー_コンフィグ_文字設定_メッセージ速度)	syscom.set_message_speed(100 - $value)
	case(@スライダー_コンフィグ_ウィンドウ背景_赤)			syscom.set_filter_color_r($value)
															excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_r = syscom.get_filter_color_r
	case(@スライダー_コンフィグ_ウィンドウ背景_緑)			syscom.set_filter_color_g($value)
															excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_g = syscom.get_filter_color_g
	case(@スライダー_コンフィグ_ウィンドウ背景_青)			syscom.set_filter_color_b($value)
															excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].color_add_b = syscom.get_filter_color_b
	case(@スライダー_コンフィグ_ウィンドウ背景_不透明度)	syscom.set_filter_color_a($value)
															excall.front.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター].tr = syscom.get_filter_color_a
	case(@スライダー_コンフィグ_オートモード_文字時間)		syscom.set_auto_mode_moji_wait($value)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_文字時間_前], 0)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_文字時間_後], 1)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], 4)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], 5)
	case(@スライダー_コンフィグ_オートモード_最小時間)		syscom.set_auto_mode_min_wait($value)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_最小時間_前], 2)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_最小時間_後], 3)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], 4)
															$$update_config_automode_time_number(excall.front.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], 5)
	case(@スライダー_コンフィグ_音量設定_マスター)			syscom.set_all_volume($value)
	case(@スライダー_コンフィグ_音量設定_ＢＧＭ)			syscom.set_bgm_volume($value)
	case(@スライダー_コンフィグ_音量設定_ＢＧＭフェード)	syscom.set_bgmfade_volume($value)
	case(@スライダー_コンフィグ_音量設定_音声)				syscom.set_koe_volume($value)
	case(@スライダー_コンフィグ_音量設定_効果音)			syscom.set_pcm_volume($value)
	case(@スライダー_コンフィグ_音量設定_システム音)		syscom.set_se_volume($value)
	case(@スライダー_コンフィグ_音量設定_ムービー)			syscom.set_mov_volume($value)
	}
	
	if( @スライダー_コンフィグ_キャラクター１_音量 <= $btn_no )
	{
		syscom.set_charakoe_volume($$get_config_charakoe_from_btn_no($btn_no), $value)
	}
	
	// スライダーの描画を更新する
	$$update_ui_slider($stage.object[$btn_no], $value)
}
