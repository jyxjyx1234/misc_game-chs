//===========================================================================
//!
//!    @file     __sys_saveload_dialog.ss
//!    @brief    セーブ／ロードダイアログシーン(システム側)
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
	#property	$save_no		// セーブ番号

#inc_end

//---------------------------------------------------------------------------
// セーブ／ロードダイアログシーン開始
//---------------------------------------------------------------------------
#z00

$save_no = l[0]		// セーブ番号を設定する

$$create_saveload_dialog_scene_object(excall.back)					// シーンオブジェクトを作成する
$$update_scene_object(excall.back, $save_no)						// シーンオブジェクトの描画を更新する
$$auto_joypad_navigation(@ボタン_セーブロード_ダイアログ_閉じる,	// 自動でジョイパッド時のボタン遷移先を設定する
						 @ボタン_セーブロード_ダイアログ_削除)
$$set_saveload_dialog_joypad_navigation(excall.back)				// 手動でジョイパッド時のボタン遷移先を設定する
$$show_saveload_dialog_scene_object(excall.back)					// シーンオブジェクトを表示する

// 入力制御を開始する
$$input_start(excall.front, <OBJBTN_GROUP_NO_MODAL>)

while( 1 )
{
	// 入力制御を更新する
	$select_btn = $$input_update(excall.front, <OBJBTN_GROUP_NO_MODAL>)
	
	// キャンセルは閉じるボタンとして処理する
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		$select_btn = @ボタン_セーブロード_ダイアログ_閉じる
	}
	
	// 各ボタンの処理
	switch( $select_btn ) {
	case(@ボタン_セーブロード_ダイアログ_上書きセーブ)		$$save($save_no)
															$$update_scene_object(excall.front, $save_no)
															timewait_key(__SAVELOAD_DIALOG_SAVE_WAIT)
	case(@ボタン_セーブロード_ダイアログ_ロード)			timewait_key(__SAVELOAD_DIALOG_LOAD_WAIT)
															$$load($save_no)
	case(@ボタン_セーブロード_ダイアログ_削除)				// ※データ削除処理は__sys_saveloadで行う
	}
	
	// アプリケーション側の処理を更新する
	$$update_saveload_dialog_scene_object(excall.front, $select_btn)
	
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

$$copy_scene_object_to_back(0, <OBJ_MODAL> - 1)			// モーダル以外のオブジェクトを裏画面にコピーする
$$off_system_front_wipe_copy(<OBJ_MODAL>, <OBJ_MAX>)	// ダイアログオブジェクトのワイプコピーフラグをオフにする
$$hide_saveload_dialog_scene_object(excall.front)		// シーンオブジェクトを非表示にする

return ($select_btn)


//---------------------------------------------------------------------------
// セーブ／ロードダイアログを呼び出す
//---------------------------------------------------------------------------
command $$call_saveload_dialog(property $save_no)
{
	l[0] = farcall(__sys_saveload_dialog, 0, $save_no)
	return (l[0])
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage, property $save_no)
{
	property $mode
	property $thumb_x
	property $thumb_y
	
	// セーブ／ロードモードを取得する
	$mode = $$get_saveload_mode
	
	// セーブモードによって表示するボタンを変更する
	if( $mode == @セーブロード_モード_セーブ )
	{
		if( $stage.object[@ボタン_セーブロード_ダイアログ_上書きセーブ].disp ) {
			$stage.object[@ボタン_セーブロード_ダイアログ_上書きセーブ].disp = 1
		}
		if( $stage.object[@ボタン_セーブロード_ダイアログ_ロード].disp ) {
			$stage.object[@ボタン_セーブロード_ダイアログ_ロード].disp = 0
		}
	}
	elseif( $mode == @セーブロード_モード_ロード )
	{
		if( $stage.object[@ボタン_セーブロード_ダイアログ_上書きセーブ].disp ) {
			$stage.object[@ボタン_セーブロード_ダイアログ_上書きセーブ].disp = 0
		}
		if( $stage.object[@ボタン_セーブロード_ダイアログ_ロード].disp ) {
			$stage.object[@ボタン_セーブロード_ダイアログ_ロード].disp = 1
		}
	}
	
	// サムネイルを作成する
	$thumb_x = $stage.object[@セーブロード_ダイアログ_サムネイル].x
	$thumb_y = $stage.object[@セーブロード_ダイアログ_サムネイル].y
	$stage.object[@セーブロード_ダイアログ_サムネイル].create_save_thumb($save_no, 1, $thumb_x, $thumb_y)
	
	// セーブ日付
	if( $stage.object[@セーブロード_ダイアログ_日付_年].disp ) {
		$stage.object[@セーブロード_ダイアログ_日付_年].set_number(syscom.get_save_year($save_no))
		$stage.object[@セーブロード_ダイアログ_日付_年].set_number_param(4, 1, 0, 0, 0, 0)
	}
	
	if( $stage.object[@セーブロード_ダイアログ_日付_月].disp ) {
		$stage.object[@セーブロード_ダイアログ_日付_月].set_number(syscom.get_save_month($save_no))
		$stage.object[@セーブロード_ダイアログ_日付_月].set_number_param(2, 1, 0, 0, 0, 0)
	}
	
	if( $stage.object[@セーブロード_ダイアログ_日付_日].disp ) {
		$stage.object[@セーブロード_ダイアログ_日付_日].set_number(syscom.get_save_day($save_no))
		$stage.object[@セーブロード_ダイアログ_日付_日].set_number_param(2, 1, 0, 0, 0, 0)
	}
	
	if( $stage.object[@セーブロード_ダイアログ_日付_時].disp ) {
		$stage.object[@セーブロード_ダイアログ_日付_時].set_number(syscom.get_save_hour($save_no))
		$stage.object[@セーブロード_ダイアログ_日付_時].set_number_param(2, 1, 0, 0, 0, 0)
	}
	
	if( $stage.object[@セーブロード_ダイアログ_日付_分].disp ) {
		$stage.object[@セーブロード_ダイアログ_日付_分].set_number(syscom.get_save_minute($save_no))
		$stage.object[@セーブロード_ダイアログ_日付_分].set_number_param(2, 1, 0, 0, 0, 0)
	}
	
	// セーブタイトル
	if( $stage.object[@セーブロード_ダイアログ_セーブタイトル].disp ) {
		$$update_ui_string($stage.object[@セーブロード_ダイアログ_セーブタイトル], syscom.get_save_title($save_no))
	}
	
	// セーブメッセージ
	if( $stage.object[@セーブロード_ダイアログ_セーブメッセージ].disp ) {
		$$update_ui_string($stage.object[@セーブロード_ダイアログ_セーブメッセージ], syscom.get_save_message($save_no))
	}
}
