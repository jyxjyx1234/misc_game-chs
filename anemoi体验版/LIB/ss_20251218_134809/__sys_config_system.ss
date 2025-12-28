//===========================================================================
//!
//!    @file     __sys_config_system.ss
//!    @brief    コンフィグシステム設定シーン(システム側)
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

	#property	$select_btn		// 選択したボタン

#inc_end

//---------------------------------------------------------------------------
// コンフィグシステム設定シーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready														// システムコールを準備する
$$create_config_system_scene_object(excall.back)					// シーンオブジェクトを作成する
if( @キネティックシステム ) {
	$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,				// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_コンフィグ_ゲームパッド設定)
} else {
	$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,				// 自動でジョイパッド時のボタン遷移先を設定する
							 @コンフィグ_最大)
}
farcall(__sys_config)
$$set_config_system_joypad_navigation(excall.back)					// 手動でジョイパッド時のボタン遷移先を設定する
$$show_config_system_scene_object(excall.back)						// シーンオブジェクトを表示する

// 入力制御を開始する
$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)

while( 1 )
{
	// 入力制御を更新する
	$select_btn = $$input_update(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
	
	// キャンセルは閉じるボタンとして処理する
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		$select_btn = @ボタン_コンフィグ_閉じる
	}
	
	// 各ボタンの動作
	switch( $select_btn ) {
	case(@ボタン_コンフィグ_ウィンドウ設定)
		
		// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
		syscom.call_config_window_mode_menu		// 画面モードの設定ダイアログを呼び出す
		
	case(@ボタン_コンフィグ_ゲームパッド設定)
		
		// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
		syscom.call_config_joypad_menu			// ゲームパッドの設定ダイアログを呼び出す
		
	case(@ボタン_コンフィグ_初期設定に戻す)
		
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$system_settings_default
			}
		}
		else
		{
			// 初期設定に戻す
			$$system_settings_default
		}
		
		$$update_scene_object(excall.front)				// シーンオブジェクトの描画を更新する
		$$set_joypad_focus_button($select_btn)			// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		
		// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
		if( syscom.check_joypad_mode == 0 ) {
			$$update_joypad_focus_button(excall.front)
		}
	}
	
	
	// ウィンドウモードの次へ進める／前に戻るボタンが押されている場合は項目を次に進める／前に戻す
	if( $select_btn == @ボタン_コンフィグ_ウィンドウモード || $select_btn == @動作_コンフィグ_ウィンドウモード_次へ進める )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_ウィンドウモード_次へ進める ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// ウィンドウモードの項目を次に進める
		$$set_window_mode($$next_ui_selectbox(excall.front.object[@ボタン_コンフィグ_ウィンドウモード]))
	}
	elseif( $select_btn == @ボタン_コンフィグ_ウィンドウモード + 1 || $select_btn == @動作_コンフィグ_ウィンドウモード_前に戻す )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_ウィンドウモード_前に戻す ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// ウィンドウモードの項目を前に戻す
		$$set_window_mode($$prev_ui_selectbox(excall.front.object[@ボタン_コンフィグ_ウィンドウモード]))
	}
	
	// 右クリック動作の次へ進める／前に戻るボタンが押されている場合は項目を次に進める／前に戻す
	if( $select_btn == @ボタン_コンフィグ_右クリック動作 || $select_btn == @動作_コンフィグ_右クリック動作_次へ進める )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_右クリック動作_次へ進める ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// 右クリック動作の項目を次に進める
		$$set_rclick_mode($$next_ui_selectbox(excall.front.object[@ボタン_コンフィグ_右クリック動作]))
	}
	elseif( $select_btn == @ボタン_コンフィグ_右クリック動作 + 1 || $select_btn == @動作_コンフィグ_右クリック動作_前に戻す )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_右クリック動作_前に戻す ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// 右クリック動作の項目を前に戻す
		$$set_rclick_mode($$prev_ui_selectbox(excall.front.object[@ボタン_コンフィグ_右クリック動作]))
	}
	
	// 暗転効果の次へ進める／前に戻るボタンが押されている場合は項目を次に進める／前に戻す
	if( $select_btn == @ボタン_コンフィグ_暗転効果 || $select_btn == @動作_コンフィグ_暗転効果_次へ進める )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_暗転効果_次へ進める ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// 暗転効果の項目を次に進める
		$$set_fade_setting($$next_ui_selectbox(excall.front.object[@ボタン_コンフィグ_暗転効果]))
	}
	elseif( $select_btn == @ボタン_コンフィグ_暗転効果 + 1  || $select_btn == @動作_コンフィグ_暗転効果_前に戻す )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_暗転効果_前に戻す ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// 暗転効果の項目を前に戻す
		$$set_fade_setting($$prev_ui_selectbox(excall.front.object[@ボタン_コンフィグ_暗転効果]))
	}
	
	if( @フルプライスシステム )
	{
		// コンフィグ／多機能版を更新する
		$select_btn = $$update_config_ex($select_btn)
		
		// Ｌ１／Ｒ１ボタンでヘッダーのページ送りをする
		// ※ Ｌ１／Ｒ１両方押している処理しないようにする ※
		if( joypad.key[<JOYPAD_L1>].is_down == 0 || joypad.key[<JOYPAD_R1>].is_down == 0 )
		{
			// Ｌ１ボタンを押した場合
			if( $$joypad_on_down(<JOYPAD_L1>) )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				$select_btn = @ボタン_コンフィグ_ヘッダー_サウンド
			}
			
			// Ｒ１ボタンを押した場合
			elseif( $$joypad_on_down(<JOYPAD_R1>) )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				$select_btn = @ボタン_コンフィグ_ヘッダー_テキスト
			}
		}
		
		// モードセレクト／多機能版
		switch( $select_btn ) {
		case(@ボタン_コンフィグ_ヘッダー_システム)
			
			$$set_prev_config_mode(<CONFIG_MODE>)	// 現在のモードを保存
			<CONFIG_MODE> = 0						// 新しいモードを設定
			$$off_system_front_wipe_copy_all		// ワイプコピーをオフにする
			jump(__sys_config_system)				// 選択したモードへ
			
		case(@ボタン_コンフィグ_ヘッダー_テキスト)
			
			$$set_prev_config_mode(<CONFIG_MODE>)	// 現在のモードを保存
			<CONFIG_MODE> = 1						// 新しいモードを設定
			$$off_system_front_wipe_copy_all		// ワイプコピーをオフにする
			jump(__sys_config_text)					// 選択したモードへ
			
		case(@ボタン_コンフィグ_ヘッダー_サウンド)
			
			$$set_prev_config_mode(<CONFIG_MODE>)	// 現在のモードを保存
			<CONFIG_MODE> = 2						// 新しいモードを設定
			$$off_system_front_wipe_copy_all		// ワイプコピーをオフにする
			jump(__sys_config_sound)				// 選択したモードへ
		}
	}
	
	// フッターの入力処理を更新する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		$select_btn = $$update_footer_input(excall.front, $select_btn, @ボタン_フッター_コンフィグ)
		
		// 戻るボタンが押された場合は終了する
		if( $select_btn == @ボタン_フッター_戻る )
		{
			$select_btn = @ボタン_コンフィグ_閉じる
		}
		
		// 各画面遷移ボタンが押されている場合はそのまま戻る
		if( $select_btn == @ボタン_フッター_セーブ || $select_btn == @ボタン_フッター_ロード || $select_btn == @ボタン_フッター_レコード )
		{
			return ($select_btn)
		}
		
		// 確認ダイアログでチェックボックス更新のみが行われる場合があるのでボタンを更新する
		switch( $select_btn ) {
		case(@ボタン_フッター_タイトルに戻る)		$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る], $$reverse_flag(<YESNO_DIALOG_TITLE>))
		case(@ボタン_フッター_ゲームを終了する)		$$update_ui_toggle_button(excall.front.object[@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する], $$reverse_flag(<YESNO_DIALOG_EXIT>))
		}
	}
	
	// アプリケーション側の処理を更新する
	$$update_config_system_scene_object(excall.front, $select_btn)
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_コンフィグ_閉じる ) {
		break
	}
	
	// 何らかのボタンが押されている場合
	if( $select_btn != -2 ) {
		$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)	// 入力制御を再開始する
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// コンフィグのモード選択シーンが有効の場合はモード選択オブジェクトを構成する
if( __CONFIG_MODE_SELECT_SCENE == 1 ) {
	$$build_config_mode_select_scene(excall.back)
}

$$off_system_front_wipe_copy_all					// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_config_system_scene_object(excall.front)		// シーンオブジェクトを非表示にする

return ($select_btn)


//---------------------------------------------------------------------------
// コンフィグ設定を初期化する
//---------------------------------------------------------------------------
command $$system_settings_default
{
	syscom.set_window_mode_default					// ウィンドウモードをデフォルトに設定する
	<RCLICK_MODE> = <RCLICK_MODE_QUICK_MENU>		// 右クリック動作をクイックメニュー画面に設定する
	syscom.set_no_wipe_anime_onoff_default			// 画面暗転効果をデフォルトに設定する
}

//---------------------------------------------------------------------------
// ウィンドウモードを設定する
//---------------------------------------------------------------------------
command $$set_window_mode(property $type)
{
	switch( $type ) {
	case(0)		syscom.set_window_mode(0)		// 標準ウィンドウ
	case(1)		syscom.set_window_mode(1)		// フルスクリーン
	}
}

//---------------------------------------------------------------------------
// 右クリック動作を設定する
//---------------------------------------------------------------------------
command $$set_rclick_mode(property $type)
{
	switch( $type ) {
	case(0)		<RCLICK_MODE> = <RCLICK_MODE_QUICK_MENU>		// クイックメニュー画面
	case(1)		<RCLICK_MODE> = <RCLICK_MODE_WINDOW_CLOSE>		// メッセージウィンドウ消去
	case(2)		<RCLICK_MODE> = <RCLICK_MODE_CONFIG>			// コンフィグ画面
	case(3)		<RCLICK_MODE> = <RCLICK_MODE_SAVE>				// セーブ画面
	case(4)		<RCLICK_MODE> = <RCLICK_MODE_LOAD>				// ロード画面
	}
}

//---------------------------------------------------------------------------
// 暗転効果を設定する
//---------------------------------------------------------------------------
command $$set_fade_setting(property $type)
{
	switch( $type ) {
	case(0)		syscom.set_no_wipe_anime_onoff(0)		// 画面暗転効果のアニメを無効にしない
	case(1)		syscom.set_no_wipe_anime_onoff(1)		// 画面暗転効果のアニメを無効にする
	}
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するウィンドウモードのセレクトボックスを作成する
//---------------------------------------------------------------------------
command $$create_config_system_window_mode_selectbox(property $obj : object, property $filename : str, property $x, property $y, property $next_button_no, property $prev_button_no, property $button_group_no, property $button_se_no, property $list_x, property $list_y, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	$$create_ui_selectbox($obj, $filename, $x, $y, $next_button_no, $prev_button_no, $button_group_no, $button_se_no, syscom.get_window_mode, $list_x, $list_y, $prev_x, $prev_y, $next_x, $next_y)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用する右クリック動作のセレクトボックスを作成する
//---------------------------------------------------------------------------
command $$create_config_system_rclick_mode_selectbox(property $obj : object, property $filename : str, property $x, property $y, property $next_button_no, property $prev_button_no, property $button_group_no, property $button_se_no, property $list_x, property $list_y, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	$$create_ui_selectbox($obj, $filename, $x, $y, $next_button_no, $prev_button_no, $button_group_no, $button_se_no, <RCLICK_MODE>, $list_x, $list_y, $prev_x, $prev_y, $next_x, $next_y)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用する暗転効果のセレクトボックスを作成する
//---------------------------------------------------------------------------
command $$create_config_system_fade_setting_selectbox(property $obj : object, property $filename : str, property $x, property $y, property $next_button_no, property $prev_button_no, property $button_group_no, property $button_se_no, property $list_x, property $list_y, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	$$create_ui_selectbox($obj, $filename, $x, $y, $next_button_no, $prev_button_no, $button_group_no, $button_se_no, syscom.get_no_wipe_anime_onoff, $list_x, $list_y, $prev_x, $prev_y, $next_x, $next_y)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	// ウィンドウモードの更新
	$$update_ui_selectbox($stage.object[@ボタン_コンフィグ_ウィンドウモード], syscom.get_window_mode)
	
	// 右クリック動作の更新
	$$update_ui_selectbox($stage.object[@ボタン_コンフィグ_右クリック動作], <RCLICK_MODE>)
	
	// 暗転効果の更新
	$$update_ui_selectbox($stage.object[@ボタン_コンフィグ_暗転効果], syscom.get_no_wipe_anime_onoff)
}

