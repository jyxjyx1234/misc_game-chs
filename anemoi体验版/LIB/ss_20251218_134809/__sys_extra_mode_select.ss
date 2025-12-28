//===========================================================================
//!
//!    @file     __sys_extra_mode_select.ss
//!    @brief     エクストラモード選択シーン(システム側)
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
// エクストラモード選択シーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready			// システムコールを準備する

// エクストラのモード選択シーンが無効の場合はイベントＣＧ鑑賞シーンへ
if( __EXTRA_MODE_SELECT_SCENE == 0 ) {
	syscom.call_ex(__sys_extra_cg)
	return
}

$$build_extra_mode_select_scene(excall.back)			// エクストラモード選択シーンを構成する
$$show_extra_mode_select_scene_object(excall.back)		// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_エクストラモード選択_閉じる
	}
	
	// アプリケーション側の処理を更新する
	$$update_extra_mode_select_scene_object(excall.front, $select_btn)
	
	// グラフィック／サウンド／立ち絵鑑賞ボタンが押された場合
	if( $select_btn == @ボタン_エクストラモード選択_グラフィック || $select_btn == @ボタン_エクストラモード選択_サウンド || $select_btn == @ボタン_エクストラモード選択_立ち絵鑑賞 )
	{
		// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
		$$off_system_front_wipe_copy_all
		
		switch( $select_btn ) {
		case(@ボタン_エクストラモード選択_グラフィック)		farcall(__sys_extra_cg)			// グラフィック鑑賞へ
		case(@ボタン_エクストラモード選択_サウンド)			farcall(__sys_extra_sound)		// サウンド鑑賞へ
		case(@ボタン_エクストラモード選択_立ち絵鑑賞)		farcall(__sys_extra_character)	// 立ち絵鑑賞へ
		}
		
		// 入力制御を開始する
		$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
		
		continue
	}
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_エクストラモード選択_閉じる ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

$$off_system_front_wipe_copy_all					// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_extra_mode_select_scene_object(excall.front)	// シーンオブジェクトを非表示にする
$$excall_free										// システムコールを解放する

return


//---------------------------------------------------------------------------
// エクストラモード選択シーンを構成する
//---------------------------------------------------------------------------
command $$build_extra_mode_select_scene(property $stage : stage)
{
	$$create_extra_mode_select_scene_object(excall.back)				// シーンオブジェクトを作成する
	$$add_extra_mode_select_scene_object(excall.back)					// シーンオブジェクトを追加する
	$$auto_joypad_navigation(@ボタン_エクストラモード選択_閉じる,		// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_エクストラモード選択_サウンド)
	$$set_extra_mode_select_joypad_navigation(excall.back)				// 手動でジョイパッド時のボタン遷移先を設定する
	$$set_joypad_focus_button_default(back)								// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 選択ボタンが設定されていない or 閉じるボタンの場合はグラフィック鑑賞ボタンをデフォルトにする
	if( $select_btn == 0 || $select_btn == @ボタン_エクストラモード選択_閉じる )
	{
		$$set_joypad_focus_button(@ボタン_エクストラモード選択_グラフィック)
	}
	else
	{
		// それ以外の場合は選択中のボタンを設定する
		$$set_joypad_focus_button($select_btn)
	}
}
