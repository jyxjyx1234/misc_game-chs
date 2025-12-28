//===========================================================================
//!
//!    @file     __sys_tablet_mode.ss
//!    @brief    タブレットモードシーン
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     ※タブレットモードの実動作はクイックメニュー側に統合
//!              ここに記述しているのはタブレットモードについてのヘルプシーンのみ
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	#property	$select_btn		// 選択したボタン

#inc_end

//---------------------------------------------------------------------------
// タブレットモードヘルプシーン開始
//---------------------------------------------------------------------------
#z00

$$create_tablet_help_scene_object(excall.back)						// シーンオブジェクトを作成する
$$auto_joypad_navigation(@ボタン_タブレットモード_ヘルプ_閉じる,	// 自動でジョイパッド時のボタン遷移先を設定する
					 	 @ボタン_タブレットモード_ヘルプ_最大)
$$set_tablet_help_joypad_navigation(excall.back)					// 手動でジョイパッド時のボタン遷移先を設定する
$$set_joypad_focus_button_default(excall.back)						// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$show_tablet_help_scene_object(excall.back)						// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_タブレットモード_ヘルプ_閉じる
	}
	
	// アプリケーション側の処理を更新する
	$$update_tablet_help_scene_object(excall.front, $select_btn)
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_タブレットモード_ヘルプ_閉じる ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

$$off_system_front_wipe_copy(<OBJ_MODAL>, <OBJ_MAX>)	// タブレットモードヘルプオブジェクトのワイプコピーフラグをオフにする
$$hide_tablet_help_scene_object(excall.front)					// シーンオブジェクトを非表示にする

return


//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 閉じるボタンをデフォルトにする
	$$set_joypad_focus_button(@ボタン_タブレットモード_ヘルプ_閉じる)
}
