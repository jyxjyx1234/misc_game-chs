//===========================================================================
//!
//!    @file     __lib_system.ss
//!    @brief    システム制御関連
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	#property	$init_script
	
	#property	$tmp_time_stop_flag			// 一時フラグ：全ての動作を止める
	#property	$tmp_quake_stop_flag		// 一時フラグ：クエイクを止める
	#property	$tmp_emote_mouth_stop_flag	// 一時フラグ：E-mote の口パクを止める
	#property	$tmp_toast_disp_flag		// 一時フラグ：トーストの表示状態

#inc_end

#z00

//---------------------------------------------------------------------------
// 初回起動処理
//---------------------------------------------------------------------------
command $$first_boot
{
	if( <FIRSTBOOT> ) {
		return
	}
	
	$$init_yesno_dialog_flag				// 確認ダイアログフラグの初期化
	<AUTO_SAVE> = __AUTO_SAVE_DEFAULT		// オートセーブ機能(0:無効／1:有効)
	
	// ウィンドウボタンロックフラグの初期化
	<MWBTN_LOCK_TYPE1> = 1
	<MWBTN_LOCK_TYPE2> = 1
	
	// タブレットモード
	<TABLET_MODE> = __TABLET_MODE_DEFAULT		// タブレットモード(0:無効／1:右／2:左)
	
	// サイドバー
	<SIDEBAR_MODE> = __SIDEBAR_MODE_DEFAULT		// サイドバー動作(0:無効／1:右／2:左)
	
	// レコード表示
	<RECORD_DISP> = __RECORD_DISP_DEFAULT		// レコード取得時の表示(0:無効／1:有効)
	
	<FIRSTBOOT> = 1
}

//---------------------------------------------------------------------------
// ユーザー制御を可能にする
//---------------------------------------------------------------------------
command $$user_control_enabled
{
	syscom.set_syscom_menu_enable			// システムコマンドを許可する
	syscom.set_hide_mwnd_enable_flag(1)		// ウィンドウを消すを許可する
	script.set_mouse_disp_on				// マウスカーソルを表示する
	script.set_msg_back_enable				// メッセージバックを許可する
	script.set_shortcut_enable				// ショートカットを許可する
	script.set_ctrl_skip_enable				// 早送りを許可する
}

//---------------------------------------------------------------------------
// ユーザー制御を不可能にする
//---------------------------------------------------------------------------
command $$user_control_disabled
{
	syscom.set_syscom_menu_disable			// システムコマンドを禁止する
	syscom.set_hide_mwnd_enable_flag(0)		// ウィンドウを消すを禁止する
	script.set_mouse_disp_off				// マウスカーソルを非表示にする
	script.set_msg_back_disable				// メッセージバックを禁止する
	script.set_shortcut_disable				// ショートカットを禁止する
	script.set_ctrl_skip_disable			// 早送りを禁止する
}

//---------------------------------------------------------------------------
// メニュー画面でのユーザー制御を設定する
//---------------------------------------------------------------------------
command $$menu_control_enabled
{
	syscom.set_hide_mwnd_enable_flag(0)		// ウィンドウを消すを禁止する
	syscom.set_syscom_menu_disable			// システムコマンドを禁止する
	syscom.set_auto_mode_onoff_flag(0)		// オートモードを解除する
	script.set_auto_savepoint_off			// セーブポイントをオフにする
	script.set_allow_joypad_mode_onoff(1)	// ジョイパッドモードを許可する
}

//---------------------------------------------------------------------------
// メニュー画面でのユーザー制御を解除する
//---------------------------------------------------------------------------
command $$menu_control_disabled
{
	syscom.set_hide_mwnd_enable_flag(1)			// ウィンドウを消すを解除する
	syscom.set_syscom_menu_enable				// システムコマンドを解除する
	script.set_auto_savepoint_on				// セーブポイントをオンにする
	script.set_allow_joypad_mode_onoff_default	// ジョイパッドモードの許可をデフォルトに戻す
}

//---------------------------------------------------------------------------
// 指定した時間中は一時的に早送りを禁止する
//---------------------------------------------------------------------------
command $$set_ctrl_skip_disable(property $wait_time)
{
	script.set_ctrl_skip_disable			// 一時的に早送りを禁止する（Ctrl キーを含む）
	timewait($wait_time)
	script.set_ctrl_skip_enable				// 解除する
}

//---------------------------------------------------------------------------
// システムコールを準備する
//---------------------------------------------------------------------------
command $$excall_ready
{
	if( excall.check_alloc == 1 ) {
		return
	}
	
	// 画面をキャプチャーする
	capture
	capture_for_tweet
	
	// 各動作フラグを一時保存する
	$tmp_time_stop_flag = script.get_time_stop_flag
	$tmp_quake_stop_flag = script.get_quake_stop_flag
	$tmp_emote_mouth_stop_flag = script.get_emote_mouth_stop_flag
	$tmp_toast_disp_flag = front.object[<OBJ_TOAST>].disp
	
	script.set_time_stop_flag(1)			// 全ての動作を止める
	script.set_quake_stop_flag(1)			// クエイクを止める
	script.set_emote_mouth_stop_flag(1)		// E-mote の口パクを止める
	if( __TOAST_ENABLE ) {
		front.object[<OBJ_TOAST>].disp = 0		// トーストを非表示にする
	}
	
	// システムコールを準備する
	excall.alloc
	
	// ジョイパッドモードを許可する
	excall.script.set_allow_joypad_mode_onoff(1)
}

//---------------------------------------------------------------------------
// システムコールを解放する
//---------------------------------------------------------------------------
command $$excall_free
{
	// ジョイパッドモードの許可をデフォルトに戻す
	excall.script.set_allow_joypad_mode_onoff_default
	
	// システムコールを解放する
	excall.free
	
	script.set_time_stop_flag($tmp_time_stop_flag)					// 全ての動作を再開する
	script.set_quake_stop_flag($tmp_quake_stop_flag)				// クエイクを再開する
	script.set_emote_mouth_stop_flag($tmp_emote_mouth_stop_flag)	// E-mote の口パクを再開する
	if( __TOAST_ENABLE ) {
		front.object[<OBJ_TOAST>].disp = $tmp_toast_disp_flag		// トーストの表示を元に戻す
	}
	script.set_mwnd_disp_off_flag(0)								// メッセージウィンドウを表示する
	
	// キャプチャーを解放する
	capture_free_for_tweet
	capture_free
}

//---------------------------------------------------------------------------
// セーブ
//---------------------------------------------------------------------------
command $$save(property $save_no)
{
	// セーブ領域のチェック
	if( system.check_debug_flag == 1 )
	{
		// オートセーブ
		if( syscom.get_save_cnt - __AUTO_SAVE_CNT <= $save_no && $save_no < syscom.get_save_cnt ) {
			@dm("__lib_system.ss → $$save\n【通常セーブコマンド】で【オートセーブ領域】にセーブしようとしています。注意してください。\nセーブ番号 : " + math.tostr($save_no) + "\n処理を継続します。\n【オートセーブ領域】にセーブを実行します")
		}
		
		// クイックセーブ
		if( syscom.get_save_cnt <= $save_no && $save_no < syscom.get_save_cnt + syscom.get_quick_save_cnt ) {
			@dm("__lib_system.ss → $$save\n【通常セーブコマンド】で【クイックセーブ領域】にセーブしようとしています。注意してください。\nセーブ番号 : " + math.tostr($save_no) + "\n処理を継続します。\n【クイックセーブ領域】にセーブを実行します")
		}
		
		// エンドセーブ
		if( syscom.get_save_cnt + syscom.get_quick_save_cnt <= $save_no ) {
			@dm("__lib_system.ss → $$save\n【通常セーブコマンド】で【エンドセーブ領域】にセーブしようとしています。注意してください。\nセーブ番号 : " + math.tostr($save_no) + "\n処理を継続します。\n【エンドセーブ領域】にセーブを実行します")
		}
	}
	
	syscom.end_save(0, 0)			// エンドセーブする
	syscom.save($save_no, 0, 1)		// セーブする
}

//---------------------------------------------------------------------------
// ロード
//---------------------------------------------------------------------------
command $$load(property $save_no)
{
	syscom.load($save_no, 0, 1, 1)	// ロードする
}

//---------------------------------------------------------------------------
// クイックセーブ
//---------------------------------------------------------------------------
command $$quick_save
{
	// クイックセーブの０番に新規セーブデータを作成する
	// 以降のデータは一つずつずらす
	property $i
	property $j
	property $len
	
	// 画面をキャプチャーする
	capture
	
	// 空きデータがある場合はデータを詰める
	$len = syscom.get_quick_save_cnt
	for( $i = 0, $i < $len, $i += 1 )
	{
		if( syscom.get_quick_save_exist($i) == 0 )
		{
			for( $j = $i + 1, $j < $len, $j += 1 )
			{
				if( syscom.get_quick_save_exist($j) == 1 )
				{
					syscom.change_quick_save($j, $i)
					break
				}
			}
		}
	}
	
	// ０番を空きデータにして以降のデータを一つずつずらす
	for( $i = syscom.get_quick_save_cnt - 1, $i > 0, $i -= 1 )
	{
		if( syscom.get_quick_save_exist($i - 1) == 1 ) {
			syscom.copy_quick_save($i - 1, $i)
		}
	}
	
	// ０番にクイックセーブをする
	syscom.end_save(0, 0)			// エンドセーブする
	syscom.quick_save(0, 0, 1)		// クイックセーブする
	
	// キャプチャーした画面を解放する
	capture_free
}

//---------------------------------------------------------------------------
// クイックロード
//---------------------------------------------------------------------------
command $$quick_load
{
	syscom.quick_load(0, 0, 1, 1)	// クイックロードする
}

//---------------------------------------------------------------------------
// オートセーブ
//---------------------------------------------------------------------------
command $$auto_save
{
	// オートセーブの０番に新規セーブデータを作成する
	// 以降のデータは一つずつずらす
	property $i
	property $j
	property $len
	property $auto_save_start_no
	
	// 画面をキャプチャーする
	capture
	
	// オートセーブ開始の番号を設定する
	$auto_save_start_no = syscom.get_save_cnt - __AUTO_SAVE_CNT
	
	// 空きデータがある場合はデータを詰める
	$len = syscom.get_save_cnt
	for( $i = $auto_save_start_no, $i < $len, $i += 1 )
	{
		if( syscom.get_save_exist($i) == 0 )
		{
			for( $j = $i + 1, $j < $len, $j += 1 )
			{
				if( syscom.get_save_exist($j) == 1 )
				{
					syscom.change_save($j, $i)
					break
				}
			}
		}
	}
	
	// オートセーブの０番を空きデータにして以降のデータを一つずつずらす
	for( $i = syscom.get_save_cnt - 1, $i > $auto_save_start_no, $i -= 1 )
	{
		if( syscom.get_save_exist($i - 1) == 1 ) {
			syscom.copy_save($i - 1, $i)
		}
	}
	
	// オートセーブをする
	syscom.end_save(0, 0)					// エンドセーブする
	syscom.save($auto_save_start_no, 0, 0)	// セーブする
	
	// キャプチャーした画面を解放する
	capture_free
}

//---------------------------------------------------------------------------
// エンドロード
//---------------------------------------------------------------------------
command $$end_load
{
	syscom.end_load(0, 1, 1)
}

//---------------------------------------------------------------------------
// 前の選択肢に戻る
//---------------------------------------------------------------------------
command $$return_to_sel
{
	syscom.return_to_sel(0, 1, 1)
}

//---------------------------------------------------------------------------
// タイトルに戻る
//---------------------------------------------------------------------------
command $$return_title
{
	syscom.end_save(0, 0)				// エンドセーブの実行
	syscom.return_to_menu(0, 1, 1)		// タイトルに戻る
}

//---------------------------------------------------------------------------
// バックログジャンプ
//---------------------------------------------------------------------------
command $$backlog_jump
{
	syscom.msg_back_load(0, 1, 1)
}

//---------------------------------------------------------------------------
// ゲームを終了する
//---------------------------------------------------------------------------
command $$end_game
{
	syscom.end_game(0, 0, 1)
}

//---------------------------------------------------------------------------
// セーブデータを削除する
//---------------------------------------------------------------------------
command $$delete_savedata(property $save_no) : int
{
	return (syscom.delete_save($save_no))
}

//---------------------------------------------------------------------------
// セーブデータを入れ替える
//---------------------------------------------------------------------------
command $$swap_savedata(property $save_no1, property $save_no2) : int
{
	return (syscom.change_save($save_no1, $save_no2))
}

//---------------------------------------------------------------------------
// セーブデータのロックを取得する
//---------------------------------------------------------------------------
command $$get_savedata_lock(property $save_no) : int
{
	property $value : intlist[1]
	
	syscom.get_save_value($save_no, $value, 0, 1)
	
	return ($value[0])
}

//---------------------------------------------------------------------------
// セーブデータのロックを設定する
//---------------------------------------------------------------------------
command $$set_savedata_lock(property $save_no, property $flag)
{
	property $value : intlist[1]
	
	$value[0] = $flag
	
	syscom.set_save_value($save_no, $value, 0, 1)
}

//---------------------------------------------------------------------------
// セーブデータのロックをオンにする
//---------------------------------------------------------------------------
command $$on_savedata_lock(property $save_no) : int
{
	$$set_savedata_lock($save_no, 1)
}

//---------------------------------------------------------------------------
// セーブデータのロックをオフにする
//---------------------------------------------------------------------------
command $$off_savedata_lock(property $save_no) : int
{
	$$set_savedata_lock($save_no, 0)
}

//---------------------------------------------------------------------------
// セーブデータのロックを反転する
//---------------------------------------------------------------------------
command $$reverse_savedata_lock(property $save_no) : int
{
	$$set_savedata_lock($save_no, $$reverse_flag($$get_savedata_lock($save_no)))
}

//---------------------------------------------------------------------------
// セーブデータの日付を取得する
//---------------------------------------------------------------------------
command $$get_savedata_date_str(property $save_no) : str
{
	property $str : str
	
	$str = math.tostr(syscom.get_save_year($save_no)) + "/" + math.tostr_zero(syscom.get_save_month($save_no), 2) + "/" + math.tostr_zero(syscom.get_save_day($save_no), 2)
	
	return ($str)
}

//---------------------------------------------------------------------------
// セーブデータの時間を取得する
//---------------------------------------------------------------------------
command $$get_savedata_time_str(property $save_no) : str
{
	property $str : str
	
	$str = math.tostr_zero(syscom.get_save_hour($save_no), 2) + ":" + math.tostr_zero(syscom.get_save_minute($save_no), 2)
	
	return ($str)
}

//---------------------------------------------------------------------------
// メッセージバックにデータを追加する
//---------------------------------------------------------------------------
command $$add_msgback(property $koe_no, property $chara_no, property $name : str, property $msg : str)
{
	// 空文字の場合は処理しない
	if( $msg == "" ) {
		return
	}
	
	// メッセージを１つ進める
	msgbk.go_next_msg
	
	 // 声を設定している場合は声を追加する
	if( $koe_no != -1 ) {
		msgbk.add_koe($koe_no, $chara_no)
	}
	
	// 名前を設定している場合は名前を追加する
	if( $name != "" ) {
		msgbk.add_namae($name)
	}
	
	// メッセージを追加する
	msgbk.add_msg($msg)
}

//---------------------------------------------------------------------------
// シーンの初期化
//---------------------------------------------------------------------------
command $$init_scene
{
	// 一度だけ通る項目
	if( $init_script == 0 )
	{
		$$init_wipe_data
		
		$$init_image_offset_data
		$$set_image_offset_data_default
		$$set_bs_data_default				// 立ち絵キャラクターの登録
		$$set_bs_pos_x_default				// 立ち絵のデフォルト位置の設定
		$$set_face_data_default				// 立ち絵キャラクターの顔グラ登録
		
		$$set_config_charakoe_list			// コンフィグのキャラクター音量設定で使用するキャラクターリストを設定する
		$$set_extra_chapter_list			// チャプター選択シーンで遷移するチャプターリストを設定する
		$$set_extra_cg_list					// イベントＣＧ鑑賞シーンで表示するイベントＣＧリストを設定する
		$$set_extra_music_list				// サウンド鑑賞シーンで再生するＢＧＭの設定をする
		
		// メッセージウィンドウボタン制御のフレームアクション開始
		$$update_mwbtn
		frame_action_ch[<FRAME_ACTION_CH_MWBTN>].start(-1, "$$fa_mwbtn")
		
		// タブレットモード
		if( <TABLET_MODE> != <TABLET_MODE_OFF> ) {
			$$tablet_mode_on(<TABLET_MODE>)
		}
		
		// サイドバー
		if( <SIDEBAR_MODE> != <SIDEBAR_MODE_OFF> ) {
			$$sidebar_mode_on(<SIDEBAR_MODE>)
		}
		
		// トースト制御のフレームアクション開始
		if( __TOAST_ENABLE ) {
			$$init_toast(front)
		}
		
		$init_script = 1
	}
	
	// 発行ごとに通る項目
	$$set_image_block_default		// 分割ブロック数の設定をデフォルトにする
	$$init_bs_scene_data			// 立ち絵シーンデータを初期化する
	if( __USE_TIME_CONTROL ) {
		$$init_time_control			// 時間帯を初期化する
	}
	$$bgm_volume_default(0)			// ＢＧＭの音量をデフォルトに戻す
	$$se_volume_all_default(0)		// すべてのＳＥの音量をデフォルトに戻す
	
	// シーンの初期化（アプリケーション側）
	$$init_scene_default($init_script)
}

//---------------------------------------------------------------------------
// 確認ダイアログフラグを初期化する
//---------------------------------------------------------------------------
command $$init_yesno_dialog_flag
{
	<YESNO_DIALOG_SAVE>				= __YESNO_DIALOG_SAVE_DEFAULT
	<YESNO_DIALOG_QUICK_SAVE>		= __YESNO_DIALOG_QUICK_SAVE_DEFAULT
	<YESNO_DIALOG_OVERWRITE_SAVE>	= __YESNO_DIALOG_OVERWRITE_SAVE_DEFAULT
	<YESNO_DIALOG_LOAD>				= __YESNO_DIALOG_LOAD_DEFAULT
	<YESNO_DIALOG_QUICK_LOAD>		= __YESNO_DIALOG_QUICK_LOAD_DEFAULT
	<YESNO_DIALOG_BACK>				= __YESNO_DIALOG_BACK_DEFAULT
	<YESNO_DIALOG_BACKLOG_JUMP>		= __YESNO_DIALOG_BACKLOG_JUMP_DEFAULT
	<YESNO_DIALOG_DELETE>			= __YESNO_DIALOG_DELETE_DEFAULT
	<YESNO_DIALOG_SWAP>				= __YESNO_DIALOG_SWAP_DEFAULT
	<YESNO_DIALOG_TITLE>			= __YESNO_DIALOG_TITLE_DEFAULT
	<YESNO_DIALOG_EXTRA_RETURN>		= __YESNO_DIALOG_EXTRA_RETURN_DEFAULT
	<YESNO_DIALOG_EXIT>				= __YESNO_DIALOG_EXIT_DEFAULT
	<YESNO_DIALOG_INIT_SETTINGS>	= __YESNO_DIALOG_INIT_SETTINGS_DEFAULT
}

//---------------------------------------------------------------------------
// 確認ダイアログフラグを取得する
//---------------------------------------------------------------------------
command $$get_yesno_dialog_flag(property $dialog_mode) : int
{
	switch( $dialog_mode ) {
	case(@確認ダイアログ_モード_セーブ)					return(<YESNO_DIALOG_SAVE>)
	case(@確認ダイアログ_モード_クイックセーブ)			return(<YESNO_DIALOG_QUICK_SAVE>)
	case(@確認ダイアログ_モード_上書きセーブ)			return(<YESNO_DIALOG_OVERWRITE_SAVE>)
	case(@確認ダイアログ_モード_ロード)					return(<YESNO_DIALOG_LOAD>)
	case(@確認ダイアログ_モード_クイックロード)			return(<YESNO_DIALOG_QUICK_LOAD>)
	case(@確認ダイアログ_モード_前の選択肢に戻る)		return(<YESNO_DIALOG_BACK>)
	case(@確認ダイアログ_モード_バックログジャンプ)		return(<YESNO_DIALOG_BACKLOG_JUMP>)
	case(@確認ダイアログ_モード_セーブデータ削除)		return(<YESNO_DIALOG_DELETE>)
	case(@確認ダイアログ_モード_セーブデータ入れ替え)	return(<YESNO_DIALOG_SWAP>)
	case(@確認ダイアログ_モード_タイトルに戻る)			return(<YESNO_DIALOG_TITLE>)
	case(@確認ダイアログ_モード_エクストラに戻る)		return(<YESNO_DIALOG_EXTRA_RETURN>)
	case(@確認ダイアログ_モード_ゲームを終了する)		return(<YESNO_DIALOG_EXIT>)
	case(@確認ダイアログ_モード_初期設定に戻す)			return(<YESNO_DIALOG_INIT_SETTINGS>)
	}
}

//---------------------------------------------------------------------------
// 確認ダイアログフラグを反転する
//---------------------------------------------------------------------------
command $$reverse_yesno_dialog_flag(property $dialog_mode)
{
	switch( $dialog_mode ) {
	case(@確認ダイアログ_モード_セーブ)					<YESNO_DIALOG_SAVE>				= $$reverse_flag(<YESNO_DIALOG_SAVE>)
	case(@確認ダイアログ_モード_クイックセーブ)			<YESNO_DIALOG_QUICK_SAVE>		= $$reverse_flag(<YESNO_DIALOG_QUICK_SAVE>)
	case(@確認ダイアログ_モード_上書きセーブ)			<YESNO_DIALOG_OVERWRITE_SAVE>	= $$reverse_flag(<YESNO_DIALOG_OVERWRITE_SAVE>)
	case(@確認ダイアログ_モード_ロード)					<YESNO_DIALOG_LOAD>				= $$reverse_flag(<YESNO_DIALOG_LOAD>)
	case(@確認ダイアログ_モード_クイックロード)			<YESNO_DIALOG_QUICK_LOAD>		= $$reverse_flag(<YESNO_DIALOG_QUICK_LOAD>)
	case(@確認ダイアログ_モード_前の選択肢に戻る)		<YESNO_DIALOG_BACK>				= $$reverse_flag(<YESNO_DIALOG_BACK>)
	case(@確認ダイアログ_モード_バックログジャンプ)		<YESNO_DIALOG_BACKLOG_JUMP>		= $$reverse_flag(<YESNO_DIALOG_BACKLOG_JUMP>)
	case(@確認ダイアログ_モード_セーブデータ削除)		<YESNO_DIALOG_DELETE>			= $$reverse_flag(<YESNO_DIALOG_DELETE>)
	case(@確認ダイアログ_モード_セーブデータ入れ替え)	<YESNO_DIALOG_SWAP>				= $$reverse_flag(<YESNO_DIALOG_SWAP>)
	case(@確認ダイアログ_モード_タイトルに戻る)			<YESNO_DIALOG_TITLE>			= $$reverse_flag(<YESNO_DIALOG_TITLE>)
	case(@確認ダイアログ_モード_エクストラに戻る)		<YESNO_DIALOG_EXTRA_RETURN>		= $$reverse_flag(<YESNO_DIALOG_EXTRA_RETURN>)
	case(@確認ダイアログ_モード_ゲームを終了する)		<YESNO_DIALOG_EXIT>				= $$reverse_flag(<YESNO_DIALOG_EXIT>)
	case(@確認ダイアログ_モード_初期設定に戻す)			<YESNO_DIALOG_INIT_SETTINGS>	= $$reverse_flag(<YESNO_DIALOG_INIT_SETTINGS>)
	}
}

//---------------------------------------------------------------------------
// チャプターフラグを取得する
//---------------------------------------------------------------------------
command $$get_chapter_flag(property $chapter_index) : int
{
	if( $chapter_index < 1 || <CHAPTER_FLAG_MAX> < $chapter_index ) {
		@dm("__lib_system.ss → $$get_chapter_flag\nチャプターフラグの指定は1～" + math.tostr(<CHAPTER_FLAG_MAX>) + "の範囲にする必要があります。\nチャプター番号 : " + math.tostr($chapter_index) + "\n処理をスキップします。")
		return
	}
	
	return (Z[<CHAPTER_FLAG_START> + $chapter_index - 1])
}


//---------------------------------------------------------------------------
// チャプターフラグをオンにする
//---------------------------------------------------------------------------
command $$chapter_flag_on(property $chapter_index)
{
	if( $chapter_index < 1 || <CHAPTER_FLAG_MAX> < $chapter_index ) {
		@dm("__lib_system.ss → $$chapter_flag_on\nチャプターフラグの指定は1～" + math.tostr(<CHAPTER_FLAG_MAX>) + "の範囲にする必要があります。\nチャプター番号 : " + math.tostr($chapter_index) + "\n処理をスキップします。")
		return
	}
	
	Z[<CHAPTER_FLAG_START> + $chapter_index - 1] = 1
}

//---------------------------------------------------------------------------
// チャプターフラグをオフにする
//---------------------------------------------------------------------------
command $$chapter_flag_off(property $chapter_index)
{
	if( $chapter_index < 1 || <CHAPTER_FLAG_MAX> < $chapter_index ) {
		@dm("__lib_system.ss → $$chapter_flag_off\nチャプターフラグの指定は1～" + math.tostr(<CHAPTER_FLAG_MAX>) + "の範囲にする必要があります。\nチャプター番号 : " + math.tostr($chapter_index) + "\n処理をスキップします。")
		return
	}
	
	Z[<CHAPTER_FLAG_START> + $chapter_index - 1] = 0
}

//---------------------------------------------------------------------------
// レコードフラグを取得する
//---------------------------------------------------------------------------
command $$get_record_flag(property $record_index) : int
{
	if( $record_index < 0 || <RECORD_FLAG_MAX> < $record_index ) {
		@dm("__lib_system.ss → $$get_record_flag\nレコードフラグの指定は0～" + math.tostr(<RECORD_FLAG_MAX> - 1) + "の範囲にする必要があります。\nレコード番号 : " + math.tostr($record_index) + "\n処理をスキップします。")
		return
	}
	
	return (Z[<RECORD_FLAG_START> + $record_index])
}

//---------------------------------------------------------------------------
// レコードフラグをオンにする
//---------------------------------------------------------------------------
command $$record_flag_on(property $record_index)
{
	if( $record_index < 0 || <RECORD_FLAG_MAX> < $record_index ) {
		@dm("__lib_system.ss → $$record_flag_on\nレコードフラグの指定は0～" + math.tostr(<RECORD_FLAG_MAX> - 1) + "の範囲にする必要があります。\nレコード番号 : " + math.tostr($record_index) + "\n処理をスキップします。")
		return
	}
	
	Z[<RECORD_FLAG_START> + $record_index] = 1
}

//---------------------------------------------------------------------------
// レコードフラグをオフにする
//---------------------------------------------------------------------------
command $$record_flag_off(property $record_index)
{
	if( $record_index < 0 || <RECORD_FLAG_MAX> < $record_index ) {
		@dm("__lib_system.ss → $$record_flag_off\nレコードフラグの指定は0～" + math.tostr(<RECORD_FLAG_MAX> - 1) + "の範囲にする必要があります。\nレコード番号 : " + math.tostr($record_index) + "\n処理をスキップします。")
		return
	}
	
	Z[<RECORD_FLAG_START> + $record_index] = 0
}

//---------------------------------------------------------------------------
// タブレットモードをオンにする
//---------------------------------------------------------------------------
command $$tablet_mode_on(property $mode)
{
	if( $mode < <TABLET_MODE_R> || <TABLET_MODE_MAX> <= $mode ) {
		@dm("__lib_system.ss → $$tablet_mode_on\nタブレットモードの指定は" + math.tostr(<TABLET_MODE_R>) + "～" + math.tostr(<TABLET_MODE_MAX> - 1) + "の範囲にする必要があります。\nモード番号 : " + math.tostr($mode) + "\n処理をスキップします。")
		return
	}
	
	// タブレットモードを設定する
	<TABLET_MODE> = $mode
	
	// メッセージウィンドウの枠番号をタブレットモードで使用する枠番号に設定する
	set_waku(__TABLET_MODE_WAKU_NO)
	
	// サイドバーが有効の場合は終了する
	if( <SIDEBAR_MODE> != <SIDEBAR_MODE_OFF> ) {
		$$end_sidebar(front, front.object[<OBJ_SIDEBAR>])
	}
}

//---------------------------------------------------------------------------
// タブレットモードをオフにする
//---------------------------------------------------------------------------
command $$tablet_mode_off
{
	// タブレットモードを無効にする
	<TABLET_MODE> = <TABLET_MODE_OFF>
	
	// メッセージウィンドウの枠番号をデフォルトで使用する枠番号に設定する
	set_waku(__DEFAULT_MW_WAKU_NO)
	
	// メッセージウィンドウボタンを更新する
	$$update_mwbtn
	
	// サイドバーが有効の場合はサイドバーを初期化する
	if( <SIDEBAR_MODE> != <SIDEBAR_MODE_OFF> ) {
		$$init_sidebar(front, front.object[<OBJ_SIDEBAR>])
	}
}

//---------------------------------------------------------------------------
// サイドバーをオンにする
//---------------------------------------------------------------------------
command $$sidebar_mode_on(property $mode)
{
	if( $mode < <SIDEBAR_MODE_R> || <SIDEBAR_MODE_MAX> <= $mode ) {
		@dm("__lib_system.ss → $$sidebar_mode_on\nサイドバー動作の指定は" + math.tostr(<SIDEBAR_MODE_R>) + "～" + math.tostr(<SIDEBAR_MODE_MAX> - 1) + "の範囲にする必要があります。\nモード番号 : " + math.tostr($mode) + "\n処理をスキップします。")
		return
	}
	
	// サイドバーを設定する
	<SIDEBAR_MODE> = $mode
	
	// タブレットモードが無効の場合はサイドバーを初期化する
	// ※タブレットモードが有効の場合はサイドバーは起動しない
	if( <TABLET_MODE> == <TABLET_MODE_OFF> ) {
		$$init_sidebar(front, front.object[<OBJ_SIDEBAR>])
	}
}

//---------------------------------------------------------------------------
// サイドバーをオフにする
//---------------------------------------------------------------------------
command $$sidebar_mode_off
{
	// サイドバーを無効にする
	<SIDEBAR_MODE> = <SIDEBAR_MODE_OFF>
	
	// サイドバーを終了する
	$$end_sidebar(front, front.object[<OBJ_SIDEBAR>])
}
