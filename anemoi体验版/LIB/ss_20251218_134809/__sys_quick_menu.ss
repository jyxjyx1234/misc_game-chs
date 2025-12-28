//===========================================================================
//!
//!    @file     __sys_quick_menu.ss
//!    @brief    クイックメニューシーン(システム側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     アプリケーションに依存しないシステムの共通処理
//!              ※クイックメニューとタブレットモードは共通の動作をする（ＵＩのみ変更する）
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	#property	$select_btn		// 選択したボタン
	#property	$dialog			// 確認ダイアログの選択状態

#inc_end

//---------------------------------------------------------------------------
// クイックメニューシーン開始
//---------------------------------------------------------------------------
#z00

// メッセージウィンドウを消している場合は実行できないようにする
if( syscom.get_hide_mwnd_enable_flag == 0 ) { 
	return
}

$$excall_ready													// システムコールを準備する

// タブレットモードの場合とそうでない場合で構築するＵＩを変更する
if( <TABLET_MODE> )
{
	script.set_mwnd_disp_off_flag(1)							// メッセージウィンドウを非表示にする
	// シーンオブジェクトを作成する
	switch( <TABLET_MODE> ) {
	case(<TABLET_MODE_R>)		$$create_tabletR_scene_object(excall.back)
	case(<TABLET_MODE_L>)		$$create_tabletL_scene_object(excall.back)
	default						@dm("__sys_quick_menu.ss → タブレットモードの指定は" + math.tostr(<TABLET_MODE_R>) + "～" + math.tostr(<TABLET_MODE_MAX> - 1) + "の範囲にする必要があります。\nモード番号 : " + math.tostr(<TABLET_MODE>) + "\n右配置として生成します。")
								$$create_tabletR_scene_object(excall.back)
	}
	$$auto_joypad_navigation(@ボタン_クイックメニュー_閉じる,	// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_クイックメニュー_最大)
	$$set_tablet_joypad_navigation(excall.back)					// 手動でジョイパッド時のボタン遷移先を設定する
	$$set_joypad_focus_button_default(excall.back)				// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
	$$show_tablet_scene_object(excall.back)						// シーンオブジェクトを表示する
}
else
{
	$$create_qmenu_scene_object(excall.back)					// シーンオブジェクトを作成する
	$$auto_joypad_navigation(@ボタン_クイックメニュー_閉じる,	// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_クイックメニュー_最大)
	$$set_qmenu_joypad_navigation(excall.back)					// 手動でジョイパッド時のボタン遷移先を設定する
	$$set_joypad_focus_button_default(excall.back)				// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
	$$show_qmenu_scene_object(excall.back)						// シーンオブジェクトを表示する
}

// 入力制御を開始する
$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)

while( 1 )
{
	// 入力制御を更新する
	$select_btn = $$input_update(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
	
	// クイックメニューボタンが押された場合はボタンの状態をキャンセルにする
	if( joypad.key[<JOYPAD_BUTTON3>].on_down ) {
		$select_btn = -1
	}
	
	// キャンセルは閉じるボタンとして処理する
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		$select_btn = @ボタン_クイックメニュー_閉じる
	}
	
	// タブレットモード＋マウス操作時は範囲内で決定キーを押した場合、キャンセル扱いにする
	if( <TABLET_MODE> && syscom.check_joypad_mode == 0 )
	{
		if( input.decide.on_down_up && (__TABLET_MODE_CLOSE_DECIDE_LEFT < mouse.pos_x && mouse.pos_x < __TABLET_MODE_CLOSE_DECIDE_RIGHT) )
		{
			$select_btn = @ボタン_クイックメニュー_閉じる
		}
	}
	
	// アプリケーション側の処理を更新する
	if( <TABLET_MODE> ) { $$update_tablet_scene_object(excall.front, $select_btn) }
	else				{ $$update_qmenu_scene_object(excall.front, $select_btn) }
	
	// 別のシステムコールボタンが選択された場合
	if( $select_btn == @ボタン_クイックメニュー_セーブ || $select_btn == @ボタン_クイックメニュー_ロード || $select_btn == @ボタン_クイックメニュー_コンフィグ || $select_btn == @ボタン_クイックメニュー_レコード )
	{
		// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
		$$off_system_front_wipe_copy_all
		
		// それぞれの処理を行う
		switch( $select_btn ) {
		case(@ボタン_クイックメニュー_セーブ)			syscom.call_save_menu			// セーブ画面へ
		case(@ボタン_クイックメニュー_ロード)			syscom.call_load_menu			// ロード画面へ
		case(@ボタン_クイックメニュー_コンフィグ)		syscom.call_config_menu			// コンフィグ画面へ
		case(@ボタン_クイックメニュー_レコード)			syscom.call_ex(__sys_record)	// レコード画面へ
		}
		
		// 終了処理は別のシステムコール側で行われているのでそのまま終了する
		return
	}
	
	// 確認ダイアログへ遷移するボタンが選択された場合
	if( $select_btn == @ボタン_クイックメニュー_クイックセーブ || $select_btn == @ボタン_クイックメニュー_クイックロード ||
		$select_btn == @ボタン_クイックメニュー_タイトルに戻る || $select_btn == @ボタン_クイックメニュー_前の選択肢に戻る || $select_btn == @ボタン_クイックメニュー_チャプターに戻る || $select_btn == @ボタン_クイックメニュー_ゲームを終了する )
	{
		// excallを行わないのでジョイパッドモードでない場合は選択されたボタンを選択状態にする
		if( syscom.check_joypad_mode == 0 ) {
			excall.front.object[$select_btn].set_button_state_select
		}
		
		// それぞれの処理を行う
		switch( $select_btn ) {
		case(@ボタン_クイックメニュー_クイックセーブ)		$dialog = $$call_yesno_dialog(@確認ダイアログ_モード_クイックセーブ)		// クイックセーブ確認ダイアログへ
		case(@ボタン_クイックメニュー_クイックロード)		$$call_yesno_dialog(@確認ダイアログ_モード_クイックロード)		// クイックロード確認ダイアログへ
		case(@ボタン_クイックメニュー_タイトルに戻る)		$$call_yesno_dialog(@確認ダイアログ_モード_タイトルに戻る)		// タイトルに戻る確認ダイアログへ
		case(@ボタン_クイックメニュー_チャプターに戻る)		$$call_yesno_dialog(@確認ダイアログ_モード_エクストラに戻る)	// チャプター(エクストラ)に戻る確認ダイアログへ
		case(@ボタン_クイックメニュー_前の選択肢に戻る)		$$call_yesno_dialog(@確認ダイアログ_モード_前の選択肢に戻る)	// 前の選択肢に戻る確認ダイアログへ
		case(@ボタン_クイックメニュー_ゲームを終了する)		$$call_yesno_dialog(@確認ダイアログ_モード_ゲームを終了する)	// ゲーム終了確認ダイアログへ
		}
		
		// 選択されたボタンを元の状態に戻す
		excall.front.object[$select_btn].set_button_state_normal
		
		$$set_joypad_focus_button($select_btn)		// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		$$update_joypad_focus_button(excall.front)	// 場合は選択されたボタンの描画を更新する
		
		// 確認ダイアログではいが選ばれている場合
		if( $dialog )
		{
			// クイックセーブなどが行われているため画面を更新する
			disp
		}
		// 確認ダイアログでいいえが選ばれている場合
		else
		{
			// ボタンの選択状態をリセットして入力制御を開始する
			$select_btn = -2
			$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
		}
	}
	
	// 何かのボタンが押された
	if( $select_btn != -2 ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$off_system_front_wipe_copy_all

// シーンオブジェクトを非表示にする
if( <TABLET_MODE> ) { $$hide_tablet_scene_object(excall.front) }
else				{ $$hide_qmenu_scene_object(excall.front) }

// システムコールを解放する
$$excall_free

// 各ボタン処理
switch( $select_btn ) {
case(@ボタン_クイックメニュー_閉じる)				// 何もしない
case(@ボタン_クイックメニュー_クイックセーブ)		// 何もしない(※確認ダイアログで処理される)
case(@ボタン_クイックメニュー_クイックロード)		// 何もしない(※このケースでは落ちてこない)
case(@ボタン_クイックメニュー_セーブ)				// 何もしない(※このケースでは落ちてこない)
case(@ボタン_クイックメニュー_ロード)				// 何もしない(※このケースでは落ちてこない)
case(@ボタン_クイックメニュー_コンフィグ)			// 何もしない(※このケースでは落ちてこない)
case(@ボタン_クイックメニュー_タイトルに戻る)		// 何もしない(※確認ダイアログで処理される)
case(@ボタン_クイックメニュー_チャプターに戻る)		// 何もしない(※確認ダイアログで処理される)
case(@ボタン_クイックメニュー_前の選択肢に戻る)		// 何もしない(※確認ダイアログで処理される)
case(@ボタン_クイックメニュー_ゲームを終了する)		// 何もしない(※確認ダイアログで処理される)
case(@ボタン_クイックメニュー_オート)				syscom.set_auto_mode_onoff_flag($$reverse_flag(syscom.get_auto_mode_onoff_flag))	// フラグを反転する
case(@ボタン_クイックメニュー_スキップ)				syscom.set_read_skip_onoff_flag($$reverse_flag(syscom.get_auto_mode_onoff_flag))	// フラグを反転する
case(@ボタン_クイックメニュー_バックログ)			syscom.open_msg_back
case(@ボタン_クイックメニュー_レコード)				// 何もしない(※このケースでは落ちてこない)
case(@ボタン_クイックメニュー_Ｔｗｉｔｔｅｒ)		capture_for_tweet
													syscom.open_tweet_dialog
													capture_free_for_tweet
default		@dm("_quick_menu.ss → #z00\n定義されていないボタンが選択されました。\nボタン番号 : " + math.tostr($select_btn) + "\n処理をスキップします。")
}

return


//---------------------------------------------------------------------------
// クイックメニューシーンで使用するクイックセーブボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_qsave_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// セーブが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_save_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するクイックロードボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_qload_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// ロードが使用不可／クイックセーブデータがない場合、ボタンを選択不可にする
	if( syscom.check_load_enable == 0 || syscom.get_quick_save_new_no == -1 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するセーブボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_save_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// セーブが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_save_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するロードボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_load_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// ロードが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_load_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するオートボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_auto_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// トグルボタンを作成する
	$$create_ui_toggle_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no, syscom.get_auto_mode_onoff_flag)
	
	// オートモードが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_auto_mode_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するスキップボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_skip_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// スキップが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_read_skip_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用する前の選択肢へ戻るボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_back_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// 前の選択肢へ戻るが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_return_to_sel_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するバックログボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_log_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// バックログが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_msg_back_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するタイトルへ戻るボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_title_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// チャプター再生中の場合は非表示にする
	if( <CHAPTER_PLAY> != 0 ) {
		$obj.disp = 0
	}
	
	// タイトルへ戻るが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_return_to_menu_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// クイックメニューシーンで使用するチャプターへ戻るボタンを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_chapter_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// チャプター再生中でない場合は非表示にする
	if( <CHAPTER_PLAY> == 0 ) {
		$obj.disp = 0
	}
	
	// タイトルへ戻るが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_return_to_menu_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// セーブボタンをデフォルトにする
	$$set_joypad_focus_button(@ボタン_クイックメニュー_セーブ)
}
