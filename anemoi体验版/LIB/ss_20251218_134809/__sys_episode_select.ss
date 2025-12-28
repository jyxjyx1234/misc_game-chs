//===========================================================================
//!
//!    @file     __sys_episode_select.ss
//!    @brief    シナリオ選択シーン(システム側)
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
// シナリオ選択シーン開始
//---------------------------------------------------------------------------
#z00

// メニュー画面でのユーザー制御を設定する
$$menu_control_enabled

$$init_scene														// スクリプトシステムの初期化
$$create_episode_select_select_scene_object(back)					// シーンオブジェクトを作成する
$$auto_joypad_navigation(@ボタン_シナリオ選択_閉じる,				// 自動でジョイパッド時のボタン遷移先を設定する
					 	 @ボタン_シナリオ選択_サムネイル最大)
$$set_episode_select_joypad_navigation(back)						// 手動でジョイパッド時のボタン遷移先を設定する
$$set_joypad_focus_button_default(back)								// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$show_episode_select_scene_object(back)							// シーンオブジェクトを表示する

// 入力制御を開始する
$$input_start(front, <OBJBTN_GROUP_NO_MODAL>)

while( 1 )
{
	// 入力制御を更新する
	$select_btn = $$input_update(front, <OBJBTN_GROUP_NO_MODAL>)
	
	// キャンセルは閉じるボタンとして処理する
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		$select_btn = @ボタン_シナリオ選択_閉じる
	}
	
	// サムネイルボタンが押された場合
	if( @ボタン_シナリオ選択_サムネイル <= $select_btn && $select_btn <= @ボタン_シナリオ選択_サムネイル最大 )
	{
		// 各エピソードボタンを押したときの処理へ
		$$push_episode_select_button($select_btn - @ボタン_シナリオ選択_サムネイル + 1)
	}
	
	// アプリケーション側の処理を更新する
	$$update_episode_select_scene_object(excall.front, $select_btn)
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_シナリオ選択_閉じる ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

$$off_system_front_wipe_copy(<OBJ_MODAL>, <OBJ_MAX>)	// シナリオ選択オブジェクトのワイプコピーフラグをオフにする
$$hide_episode_select_scene_object(front)				// シーンオブジェクトを非表示にする

return


//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 先頭のサムネイルボタンをデフォルトにする
	$$set_joypad_focus_button(@ボタン_シナリオ選択_サムネイル)
}
