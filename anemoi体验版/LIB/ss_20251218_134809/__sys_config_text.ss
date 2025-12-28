//===========================================================================
//!
//!    @file     __sys_config_text.ss
//!    @brief    コンフィグテキスト設定シーン(システム側)
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
	#property	$slider_value	// スライダーの値
	#property	$i

#inc_end

//---------------------------------------------------------------------------
// コンフィグテキスト設定シーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready																// システムコールを準備する
$$create_config_text_scene_object(excall.back)								// シーンオブジェクトを作成する
$$update_scene_object(excall.back)											// シーンオブジェクトの描画を更新する
if( @キネティックシステム ) {
	$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,						// 自動でジョイパッド時のボタン遷移先を設定する
								@ボタン_コンフィグ_ゲームパッド設定)
} else {
	$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,						// 自動でジョイパッド時のボタン遷移先を設定する
							 @コンフィグ_最大)
}
farcall(__sys_config)
$$set_config_text_joypad_navigation(excall.back)							// 手動でジョイパッド時のボタン遷移先を設定する
$$show_config_text_scene_object(excall.back)								// シーンオブジェクトを表示する

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
	
	// 初期設定に戻すボタンが押された場合はすべての音量をデフォルトにする
	if( $select_btn == @ボタン_コンフィグ_初期設定に戻す )
	{
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
		
		$$update_scene_object(excall.front)			// シーンオブジェクトの描画を更新する
		$$set_joypad_focus_button($select_btn)		// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		
		// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
		if( syscom.check_joypad_mode == 0 ) {
			$$update_joypad_focus_button(excall.front)
		}
	}
	
	// 未読文章の早送りの次へ進める／前に戻るボタンが押されている場合は項目を次に進める／前に戻す
	if( $select_btn == @ボタン_コンフィグ_メッセージスキップ || $select_btn == @動作_コンフィグ_メッセージスキップ_次へ進める )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_メッセージスキップ_次へ進める ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// 未読文章の早送りの項目を次に進める
		$$set_messageskip_mode($$next_ui_selectbox(excall.front.object[@ボタン_コンフィグ_メッセージスキップ]))
	}
	elseif( $select_btn == @ボタン_コンフィグ_メッセージスキップ + 1 || $select_btn == @動作_コンフィグ_メッセージスキップ_前に戻す )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_メッセージスキップ_前に戻す ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// 未読文章の早送りの項目を前に戻す
		$$set_messageskip_mode($$prev_ui_selectbox(excall.front.object[@ボタン_コンフィグ_メッセージスキップ]))
	}
	
	// メッセージ速度のノーウェイトの次へ進める／前に戻るボタンが押されている場合は項目を次に進める／前に戻す
	if( $select_btn == @ボタン_コンフィグ_ノーウェイト || $select_btn == @動作_コンフィグ_ノーウェイト_次へ進める )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_ノーウェイト_次へ進める ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// メッセージ速度のノーウェイトの項目を次に進める
		$$set_nowait_mode($$next_ui_selectbox(excall.front.object[@ボタン_コンフィグ_ノーウェイト]))
	}
	elseif( $select_btn == @ボタン_コンフィグ_ノーウェイト + 1 || $select_btn == @動作_コンフィグ_ノーウェイト_前に戻す )
	{
		// ゲームパッド時の動作なら決定音を再生する
		if( $select_btn == @動作_コンフィグ_ノーウェイト_前に戻す ) {
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
		}
		
		// メッセージ速度のノーウェイトの項目を前に戻す
		$$set_nowait_mode($$prev_ui_selectbox(excall.front.object[@ボタン_コンフィグ_ノーウェイト]))
	}
	
	// マウスでスライダーを押している場合
	for( $i = @ボタン_コンフィグ_オートモード速度, $i <= @ボタン_コンフィグ_ウィンドウ透過, $i += 2 )
	{
		if( excall.front.object[$i].f.get_size == 0 ) {
			continue
		}
		
		if( excall.front.object[$i].f_slider_on_value_changed )
		{
			// スライダーの値を取得する
			$slider_value = $$get_ui_slider_value(excall.front.object[$i])
			
			// 各スライダーの値を各音量に反映する
			switch( $i ) {
			case(@ボタン_コンフィグ_オートモード速度)	$$set_automode_speed($slider_value)
			case(@ボタン_コンフィグ_メッセージ速度)		syscom.set_message_speed($slider_value)
			case(@ボタン_コンフィグ_ウィンドウ透過)		syscom.set_filter_color_a($slider_value)
														$$update_config_text_mw_filter(excall.front.object[@イメージ_コンフィグ_ウィンドウ透過フィルター])
			}
		}
	}
	
	// ゲームパッドのキー入力の場合
	switch( $select_btn ) {
	case(@動作_コンフィグ_オートモード速度_下げる)	$$step_slider(excall.front, @ボタン_コンフィグ_オートモード速度, 0)
	case(@動作_コンフィグ_オートモード速度_上げる)	$$step_slider(excall.front, @ボタン_コンフィグ_オートモード速度, 1)
	case(@動作_コンフィグ_メッセージ速度_下げる)	$$step_slider(excall.front, @ボタン_コンフィグ_メッセージ速度, 0)
	case(@動作_コンフィグ_メッセージ速度_上げる)	$$step_slider(excall.front, @ボタン_コンフィグ_メッセージ速度, 1)
	case(@動作_コンフィグ_ウィンドウ透過_下げる)	$$step_slider(excall.front, @ボタン_コンフィグ_ウィンドウ透過, 0)
	case(@動作_コンフィグ_ウィンドウ透過_上げる)	$$step_slider(excall.front, @ボタン_コンフィグ_ウィンドウ透過, 1)
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
				$select_btn = @ボタン_コンフィグ_ヘッダー_システム
			}
			
			// Ｒ１ボタンを押した場合
			elseif( $$joypad_on_down(<JOYPAD_R1>) )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				$select_btn = @ボタン_コンフィグ_ヘッダー_サウンド
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
	}
	
	// アプリケーション側の処理を更新する
	$$update_config_text_scene_object(excall.front, $select_btn)
	
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
$$hide_config_text_scene_object(excall.front)		// シーンオブジェクトを非表示にする

return ($select_btn)


//---------------------------------------------------------------------------
// コンフィグ設定を初期化する
//---------------------------------------------------------------------------
command $$system_settings_default
{
	syscom.set_skip_unread_message_onoff_default	// 未読文章の早送りをデフォルトに設定する
	syscom.set_auto_mode_moji_wait_default			// オートモードの文字時間をデフォルトに設定する
	syscom.set_auto_mode_min_wait_default			// オートモードの最小時間をデフォルトに設定する
	syscom.set_message_speed_default				// メッセージ速度をデフォルトに設定する
	syscom.set_message_nowait_default				// メッセージ速度のノーウェイトをデフォルトに設定する
	syscom.set_filter_color_a_default				// ウィンドウ透過をデフォルトに設定する
}

//---------------------------------------------------------------------------
// 未読文章の早送りを設定する
//---------------------------------------------------------------------------
command $$set_messageskip_mode(property $type)
{
	switch( $type ) {
	case(0)		syscom.set_skip_unread_message_onoff(0)		// 既読文章のみ
	case(1)		syscom.set_skip_unread_message_onoff(1)		// 未読文章も含む
	}
}

//---------------------------------------------------------------------------
// メッセージ速度のノーウェイトを設定する
//---------------------------------------------------------------------------
command $$set_nowait_mode(property $type)
{
	switch( $type ) {
	case(0)		syscom.set_message_nowait(0)		// オフ
	case(1)		syscom.set_message_nowait(1)		// オン
	}
}

//---------------------------------------------------------------------------
// オートモードの速度を設定する
//---------------------------------------------------------------------------
command $$set_automode_speed(property $speed)
{
	syscom.set_auto_mode_moji_wait($speed)
	syscom.set_auto_mode_min_wait(math.linear(syscom.get_auto_mode_moji_wait, 0, 0, 500, 5000))
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するメッセージスキップのセレクトボックスを作成する
//---------------------------------------------------------------------------
command $$create_config_text_messageskip_mode_selectbox(property $obj : object, property $filename : str, property $x, property $y, property $next_button_no, property $prev_button_no, property $button_group_no, property $button_se_no, property $list_x, property $list_y, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	$$create_ui_selectbox($obj, $filename, $x, $y, $next_button_no, $prev_button_no, $button_group_no, $button_se_no, syscom.get_skip_unread_message_onoff, $list_x, $list_y, $prev_x, $prev_y, $next_x, $next_y)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するオートモード速度スライダー(文字待ち時間)を作成する
//---------------------------------------------------------------------------
command $$create_config_text_automode_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_auto_mode_moji_wait, 0, 500)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するオートモード速度スライダー(最小待ち時間)を作成する
//---------------------------------------------------------------------------
command $$create_config_text_automode_min_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_auto_mode_min_wait, 0, 5000)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するメッセージ速度スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_text_message_speed_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_message_speed, 0, 100)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するノーウェイト動作のセレクトボックスを作成する
//---------------------------------------------------------------------------
command $$create_config_text_nowait_mode_selectbox(property $obj : object, property $filename : str, property $x, property $y, property $next_button_no, property $prev_button_no, property $button_group_no, property $button_se_no, property $list_x, property $list_y, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	$$create_ui_selectbox($obj, $filename, $x, $y, $next_button_no, $prev_button_no, $button_group_no, $button_se_no, syscom.get_message_nowait, $list_x, $list_y, $prev_x, $prev_y, $next_x, $next_y)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するウィンドウ(赤)スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_text_mw_filter_r_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_filter_color_r, 0, 255)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するウィンドウ(緑)スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_text_mw_filter_g_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_filter_color_g, 0, 255)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するウィンドウ(青)スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_text_mw_filter_b_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_filter_color_b, 0, 255)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するウィンドウ透過スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_text_mw_filter_a_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_filter_color_a, 0, 255)
}

//---------------------------------------------------------------------------
// コンフィグシーンで使用するウィンドウ透過サンプルの描画を更新する
//---------------------------------------------------------------------------
command $$update_config_text_mw_filter(property $obj : object)
{
	$obj.tr = syscom.get_filter_color_a
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	property $value
	
	// メッセージスキップの更新
	if( $stage.object[@ボタン_コンフィグ_メッセージスキップ].f.get_size ) {
		$$update_ui_selectbox($stage.object[@ボタン_コンフィグ_メッセージスキップ], syscom.get_skip_unread_message_onoff)
	}
	
	// ノーウェイトの更新
	if( $stage.object[@ボタン_コンフィグ_ノーウェイト].f.get_size ) {
		$$update_ui_selectbox($stage.object[@ボタン_コンフィグ_ノーウェイト], syscom.get_message_nowait)
	}
	
	for( $i = @ボタン_コンフィグ_オートモード速度, $i <= @ボタン_コンフィグ_ウィンドウ透過, $i += 2 )
	{
		// ＵＩとして作成されていないオブジェクトは処理を行わない
		if( $stage.object[$i].f.get_size == 0 ) {
			continue
		}
		
		switch( $i ) {
		case(@ボタン_コンフィグ_オートモード速度)	$value = syscom.get_auto_mode_moji_wait
		case(@ボタン_コンフィグ_メッセージ速度)		$value = syscom.get_message_speed
		case(@ボタン_コンフィグ_ウィンドウ透過)		$value = syscom.get_filter_color_a
		}
		
		// スライダーの描画を更新する
		$$update_ui_slider($stage.object[$i], $value)
	}
	
	// ウィンドウ透過サンプルの更新
	if( $stage.object[@イメージ_コンフィグ_ウィンドウ透過フィルター].f.get_size ) {
		$$update_config_text_mw_filter($stage.object[@イメージ_コンフィグ_ウィンドウ透過フィルター])
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
	case(@ボタン_コンフィグ_オートモード速度)	$$set_automode_speed($value)
	case(@ボタン_コンフィグ_メッセージ速度)		syscom.set_message_speed($value)
	case(@ボタン_コンフィグ_ウィンドウ透過)		syscom.set_filter_color_a($value)
												$$update_config_text_mw_filter($stage.object[@イメージ_コンフィグ_ウィンドウ透過フィルター])
	}
	
	// スライダーの描画を更新する
	$$update_ui_slider($stage.object[$btn_no], $value)
}
