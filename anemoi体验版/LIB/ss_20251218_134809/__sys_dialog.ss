//===========================================================================
//!
//!    @file     __sys_dialog.ss
//!    @brief    ダイアログシーンシーン(システム側)
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
	#property	$is_excall		// システムコール中かどうか
	
	#property	$dialog_type	// ダイアログタイプ
	#property	$dialog_mode	// ダイアログモード
	#property	$save_no1		// セーブ番号１
	#property	$save_no2		// セーブ番号２

#inc_end

//---------------------------------------------------------------------------
// ダイアログシーン開始
//---------------------------------------------------------------------------
#z00

$dialog_type = l[0]		// ダイアログタイプを設定する
$dialog_mode = l[1]		// ダイアログモードを設定する
$save_no1    = l[2]		// セーブ番号１を設定する
$save_no2    = l[3]		// セーブ番号２を設定する

// システムコール中か判定する
$is_excall = excall.check_alloc

// 確認ダイアログフラグを確認する
if( $$get_yesno_dialog_flag($dialog_mode) ) {
	$$push_yes_button	// 確認しない設定になっている場合はダイアログを表示せず直接実行する
	return (1)
}

// バックログジャンプのみbackに生成するのではなくfrontに生成する
// （※siglusの挙動でバックログ中のワイプがおかしいのを修正するのが難しいため）
if( @確認ダイアログ_現在のモード == @確認ダイアログ_モード_バックログジャンプ )
{
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$create_yesno_dialog_scene_object(excall[$is_excall].front) }	// シーンオブジェクトを作成する(はい／いいえ)
	elseif( $dialog_type == @確認ダイアログ_タイプ_ＯＫ )       { $$create_ok_dialog_scene_object(excall[$is_excall].front)    }	// シーンオブジェクトを作成する(ＯＫ)
	$$set_scene_object_layer(excall[$is_excall].front)																				// シーンオブジェクトのレイヤー値を設定する
	$$auto_joypad_navigation(@ボタン_確認ダイアログ_はい,																			// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_確認ダイアログ_チェックボックス)
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$set_yesno_dialog_joypad_navigation(excall[$is_excall].front) }	// 手動でジョイパッド時のボタン遷移先を設定する(はい／いいえ)
	// ※手動でジョイパッド時のボタン遷移先を設定する(ＯＫ)は必要ないので存在しない
	$$set_joypad_focus_button_default(excall[$is_excall].front)																		// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
}
else
{
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$create_yesno_dialog_scene_object(excall[$is_excall].back) }		// シーンオブジェクトを作成する(はい／いいえ)
	elseif( $dialog_type == @確認ダイアログ_タイプ_ＯＫ )       { $$create_ok_dialog_scene_object(excall[$is_excall].back)    }		// シーンオブジェクトを作成する(ＯＫ)
	$$set_scene_object_layer(excall[$is_excall].back)																				// シーンオブジェクトのレイヤー値を設定する
	$$auto_joypad_navigation(@ボタン_確認ダイアログ_はい,																			// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_確認ダイアログ_チェックボックス)
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$set_yesno_dialog_joypad_navigation(excall[$is_excall].back) }	// 手動でジョイパッド時のボタン遷移先を設定する(はい／いいえ)
	// ※手動でジョイパッド時のボタン遷移先を設定する(ＯＫ)は必要ないので存在しない
	$$set_joypad_focus_button_default(excall[$is_excall].back)																		// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$show_yesno_dialog_scene_object(excall[$is_excall].back) }		// シーンオブジェクトを表示する(はい／いいえ)
	elseif( $dialog_type == @確認ダイアログ_タイプ_ＯＫ )       { $$show_ok_dialog_scene_object(excall[$is_excall].back)    }		// シーンオブジェクトを表示する(ＯＫ)
}

// ダイアログ表示時に自動でマウスカーソルをフォーカスされているボタンに移動する
if( __DIALOG_AUTO_MOUSE_MOVE && syscom.check_joypad_mode == 0 ) {
	mouse.set_pos(excall[$is_excall].front.object[$$get_joypad_focus_button].x + excall[$is_excall].front.object[$$get_joypad_focus_button].get_size_x / 2,
				  excall[$is_excall].front.object[$$get_joypad_focus_button].y + excall[$is_excall].front.object[$$get_joypad_focus_button].get_size_y / 2)
}

// 入力制御を開始する
$$input_start(excall[$is_excall].front, <OBJBTN_GROUP_NO_MODAL>)

while( 1 )
{
	// 入力制御を更新する
	$select_btn = $$input_update(excall[$is_excall].front, <OBJBTN_GROUP_NO_MODAL>)
	
	// キャンセルは閉じるボタンとして処理する
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		$select_btn = @ボタン_確認ダイアログ_いいえ
	}
	
	// ＯＫは閉じるボタンとして処理する
	if( $select_btn == @ボタン_確認ダイアログ_ＯＫ ) {
		$select_btn = @ボタン_確認ダイアログ_いいえ
	}
	
	// チェックボックスが選択された場合
	if( $select_btn == @ボタン_確認ダイアログ_チェックボックス )
	{
		// 確認ダイアログフラグを反転
		$$reverse_yesno_dialog_flag($dialog_mode)
		
		// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
		
		// チェックボックスの描画を更新する
		$$update_ui_toggle_button(excall[$is_excall].front.object[@ボタン_確認ダイアログ_チェックボックス], $$get_yesno_dialog_flag($dialog_mode))
		
		// マウス操作の描画になっているためジョイパッド操作の場合はチェックボックス描画を上書きする
		if( syscom.check_joypad_mode == 1 ) {
			$$update_joypad(excall[$is_excall].front)
		}
	}
	
	// アプリケーション側の処理を更新する
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$update_yesno_dialog_scene_object(excall.front, $select_btn) }
	elseif( $dialog_type == @確認ダイアログ_タイプ_ＯＫ )       { $$update_ok_dialog_scene_object(excall.front, $select_btn)    }
	
	// チェックボックスが押されている場合は再入力を開始する
	if( $select_btn == @ボタン_確認ダイアログ_チェックボックス )
	{
		// ボタンの選択状態をリセットして入力制御を開始する
		$select_btn = -2
		$$input_start(excall[$is_excall].front, <OBJBTN_GROUP_NO_MODAL>)
	}
	
	// 何かのボタンが押された場合は処理を終了する
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

// バックログジャンプのみfrontオブジェクトを初期化する
// （※siglusの挙動でバックログ中のワイプがおかしいのを修正するのが難しいため）
if( @確認ダイアログ_現在のモード == @確認ダイアログ_モード_バックログジャンプ )
{
	for( l[0] = <OBJ_MODAL>, l[0] < <OBJ_MAX>, l[0] += 1 ) {
		excall[$is_excall].front.object[l[0]].init
	}
}
else
{
	$$off_system_front_wipe_copy(<OBJ_MODAL>, <OBJ_MAX>)		// ダイアログオブジェクトのワイプコピーフラグをオフにする
	if    ( $dialog_type == @確認ダイアログ_タイプ_はいいいえ ) { $$hide_yesno_dialog_scene_object(excall[$is_excall].front) }	// シーンオブジェクトを非表示にする(はい／いいえ)
	elseif( $dialog_type == @確認ダイアログ_タイプ_ＯＫ )       { $$hide_ok_dialog_scene_object(excall[$is_excall].front)    }	// シーンオブジェクトを非表示にする(ＯＫ)
}

if( $select_btn == @ボタン_確認ダイアログ_はい ) {
	$$push_yes_button	// はいボタンが押されている場合は処理を実行する
	return (1)
}

return (0)


//---------------------------------------------------------------------------
// はい／いいえ確認ダイアログを呼び出す
//---------------------------------------------------------------------------
command $$call_yesno_dialog(property $mode)
{
	l[0] = farcall(__sys_dialog, 0, @確認ダイアログ_タイプ_はいいいえ, $mode)
	return (l[0])
}

//---------------------------------------------------------------------------
// はい／いいえ確認ダイアログを呼び出す(セーブ／ロード用)
//---------------------------------------------------------------------------
command $$call_saveload_yesno_dialog(property $mode, property $save_no)
{
	l[0] = farcall(__sys_dialog, 0, @確認ダイアログ_タイプ_はいいいえ, $mode, $save_no)
	return (l[0])
}

//---------------------------------------------------------------------------
// はい／いいえ確認ダイアログを呼び出す(セーブデータ入れ替え用)
//---------------------------------------------------------------------------
command $$call_saveload_swap_yesno_dialog(property $mode, property $save_no1, property $save_no2)
{
	l[0] = farcall(__sys_dialog, 0, @確認ダイアログ_タイプ_はいいいえ, $mode, $save_no1, $save_no2)
	return (l[0])
}

//---------------------------------------------------------------------------
// ＯＫ確認ダイアログを呼び出す
//---------------------------------------------------------------------------
command $$call_ok_dialog(property $mode)
{
	l[0] = farcall(__sys_dialog, 0, @確認ダイアログ_タイプ_ＯＫ, $mode)
	return (l[0])
}

//---------------------------------------------------------------------------
// ダイアログタイプを取得する
//---------------------------------------------------------------------------
command $$get_dialog_type : int
{
	return ($dialog_type)
}

//---------------------------------------------------------------------------
// ダイアログモードを取得する
//---------------------------------------------------------------------------
command $$get_dialog_mode : int
{
	return ($dialog_mode)
}

//---------------------------------------------------------------------------
// はいボタンを押したときの処理
//---------------------------------------------------------------------------
command $$push_yes_button
{
	switch( $dialog_mode ) {
	case(@確認ダイアログ_モード_セーブ)						$$save($save_no1)						// セーブ
	case(@確認ダイアログ_モード_クイックセーブ)				$$quick_save							// クイックセーブ
															$$show_system_toast(@システムトースト_タイプ_クイックセーブ)
	case(@確認ダイアログ_モード_上書きセーブ)				$$save($save_no1)						// セーブ
	case(@確認ダイアログ_モード_ロード)						$$load($save_no1)						// ロード
	case(@確認ダイアログ_モード_クイックロード)				$$quick_load							// クイックロード
	case(@確認ダイアログ_モード_前の選択肢に戻る)			$$return_to_sel							// 前の選択肢に戻る
	case(@確認ダイアログ_モード_バックログジャンプ)			$$backlog_jump							// バックログジャンプ
	case(@確認ダイアログ_モード_セーブデータ削除)			$$delete_savedata($save_no1)			// セーブデータ削除
	case(@確認ダイアログ_モード_セーブデータ入れ替え)		$$swap_savedata($save_no1, $save_no2)	// セーブデータ入れ替え
	case(@確認ダイアログ_モード_タイトルに戻る)				$$return_title							// タイトルに戻る
	case(@確認ダイアログ_モード_エクストラに戻る)			$$return_title							// チャプター(エクストラ)に戻る
	case(@確認ダイアログ_モード_ゲームを終了する)			$$end_game								// ゲームを終了する
	case(@確認ダイアログ_モード_初期設定に戻す)				// ※ここでは処理せず呼び出し側で処理する
	}
}

//---------------------------------------------------------------------------
// ダイアログシーンで使用するメッセージを作成する
//---------------------------------------------------------------------------
command $$create_dialog_message(property $obj : object, property $filename : str, property $x, property $y)
{
	// 画像オブジェクトを作成する
	$$create_ui_image($obj, $filename, $x, $y)
	
	// ダイアログタイプにパターン番号を変更する
	$obj.patno = $dialog_mode
}

//---------------------------------------------------------------------------
// ダイアログシーンで使用するシステム文字を使用したメッセージを作成する
//---------------------------------------------------------------------------
command $$create_dialog_system_font_message(property $obj : object, property $x, property $y, property $w, property $h, property $font_size)
{
	// 文字列オブジェクトを作成する
	$$create_ui_string($obj, $x, $y, $w, $h, $font_size)
	
	// 整列を中央寄せにする
	$obj.f_align = <STRING_ALIGN_CENTER>
	
	// 文字列の描画を更新する
	$$update_ui_string($obj, $$get_dialog_text($dialog_mode))
}

//---------------------------------------------------------------------------
// ダイアログシーンで使用する再表示チェックボックスを作成する
//---------------------------------------------------------------------------
command $$create_dialog_redisp_checkbox(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// トグルボタンを作成する
	$$create_ui_toggle_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no, $$get_yesno_dialog_flag($dialog_mode))
}

//---------------------------------------------------------------------------
// シーンオブジェクトのレイヤー値を設定する
//---------------------------------------------------------------------------
command $$set_scene_object_layer(property $stage : stage)
{
	property $i
	
	for( $i = <OBJ_MODAL>, $i < <OBJ_MAX>, $i += 1 )
	{
		$stage.object[$i].layer = <LAYER_UI>
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// はい／いいえダイアログはいいえボタンをデフォルトにする
	if( $dialog_type == @確認ダイアログ_タイプ_はいいいえ )
	{
		$$set_joypad_focus_button(@ボタン_確認ダイアログ_いいえ)
	}
	elseif( $dialog_type == @確認ダイアログ_タイプ_ＯＫ )
	{
		// ＯＫダイアログはＯＫボタンをデフォルトにする
		$$set_joypad_focus_button(@ボタン_確認ダイアログ_ＯＫ)
	}
}

//---------------------------------------------------------------------------
// メッセージウィンドウボタンからの確認ダイアログ呼び出し
//---------------------------------------------------------------------------
command $$call_mwbtn_dialog(property $dialog_mode)
{
	$$excall_ready
	farcall(__sys_dialog, 0, @確認ダイアログ_タイプ_はいいいえ, $dialog_mode)
	$$excall_free
}

// 各メッセージウィンドウボタンからの確認ダイアログ呼び出し
command $$call_quick_save_dialog		{ $$call_mwbtn_dialog(@確認ダイアログ_モード_クイックセーブ) }
command $$call_quick_load_dialog		{ $$call_mwbtn_dialog(@確認ダイアログ_モード_クイックロード) }
command $$call_backlog_jump_dialog {
	se.play_by_se_no(<BUTTON_SE_DECIDE>)	// システム効果音を再生する
	$$call_mwbtn_dialog(@確認ダイアログ_モード_バックログジャンプ)
}
command $$call_return_to_sel_dialog		{ $$call_mwbtn_dialog(@確認ダイアログ_モード_前の選択肢に戻る) }
command $$call_return_to_title_dialog	{ $$call_mwbtn_dialog(@確認ダイアログ_モード_タイトルに戻る) }
command $$call_end_game_dialog			{ $$call_mwbtn_dialog(@確認ダイアログ_モード_ゲームを終了する) }
