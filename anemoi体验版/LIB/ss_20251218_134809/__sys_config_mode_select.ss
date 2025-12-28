//===========================================================================
//!
//!    @file     __sys_config_mode_select.ss
//!    @brief    コンフィグモード選択シーン(システム側)
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
// コンフィグモード選択シーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready			// システムコールを準備する

// コンフィグのモード選択シーンが無効の場合は直接コンフィグシーンへ
if( __CONFIG_MODE_SELECT_SCENE == 0 )
{
	$$set_prev_config_mode(<CONFIG_MODE>)
	
	switch( <CONFIG_MODE> ) {
	case(0)		$select_btn = farcall(__sys_config_system)		// システム設定へ
	case(1)		$select_btn = farcall(__sys_config_text)		// テキスト設定へ
	case(2)		$select_btn = farcall(__sys_config_sound)		// 音量設定へ
	case(3)		$select_btn = farcall(__sys_config_voice)		// キャラクターボイス設定へ
	}
	
	// フッターの入力処理を更新する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		$select_btn = $$update_footer_input(excall.front, $select_btn, @ボタン_フッター_コンフィグ)
		
		// 画面遷移ボタンが押された場合はそれぞれの画面遷移へ
		if( $select_btn == @ボタン_フッター_セーブ || $select_btn == @ボタン_フッター_ロード || $select_btn == @ボタン_フッター_レコード )
		{
			// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
			$$off_system_front_wipe_copy_all
			
			// それぞれの処理を行う
			switch( $select_btn ) {
			case(@ボタン_フッター_セーブ)			jump(__sys_saveload, 0)				// セーブ画面へ
			case(@ボタン_フッター_ロード)			jump(__sys_saveload, 1)				// ロード画面へ
			case(@ボタン_フッター_レコード)			jump(__sys_record, 0)				// レコード画面へ
			}
		}
	}
	
	$$excall_free							// システムコールを解放する
	return
}

$$build_config_mode_select_scene(excall.back)			// コンフィグモード選択シーンを構成する
$$set_joypad_focus_button_default(excall.back)			// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$show_config_mode_select_scene_object(excall.back)		// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_コンフィグモード選択_閉じる
	}
	
	// アプリケーション側の処理を更新する
	$$update_config_mode_select_scene_object(excall.front, $select_btn)
	
	// 各ボタンが押された場合
	if( @ボタン_コンフィグモード選択_システム <= $select_btn && $select_btn <= @ボタン_コンフィグモード選択_ボイス )
	{
		// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
		$$off_system_front_wipe_copy_all
		
		switch( $select_btn ) {
		case(@ボタン_コンフィグモード選択_システム)		farcall(__sys_config_system)	// システム設定へ
		case(@ボタン_コンフィグモード選択_テキスト)		farcall(__sys_config_text)		// テキスト設定へ
		case(@ボタン_コンフィグモード選択_サウンド)		farcall(__sys_config_sound)		// 音量設定へ
		case(@ボタン_コンフィグモード選択_ボイス)		farcall(__sys_config_voice)		// キャラクターボイス設定へ
		}
		
		// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
		$$set_joypad_focus_button_default(excall.back)
		
		// 入力制御を開始する
		$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
		
		continue
	}
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_コンフィグモード選択_閉じる ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

$$off_system_front_wipe_copy_all						// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_config_mode_select_scene_object(excall.front)	// シーンオブジェクトを非表示にする
$$excall_free											// システムコールを解放する

return


//---------------------------------------------------------------------------
// コンフィグモード選択シーンを構成する
//---------------------------------------------------------------------------
command $$build_config_mode_select_scene(property $stage : stage)
{
	$$create_config_mode_select_scene_object(excall.back)			// シーンオブジェクトを作成する
	$$add_config_mode_select_scene_object(excall.back)				// シーンオブジェクトを追加する
	$$auto_joypad_navigation(@ボタン_コンフィグモード選択_閉じる,	// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_コンフィグモード選択_ボイス)
	$$set_config_mode_select_joypad_navigation(excall.back)			// 手動でジョイパッド時のボタン遷移先を設定する
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 選択ボタンが設定されていない or 閉じるボタンの場合はシステムボタンをデフォルトにする
	if( $select_btn == 0 || $select_btn == @ボタン_コンフィグモード選択_閉じる )
	{
		$$set_joypad_focus_button(@ボタン_コンフィグモード選択_システム)
	}
	else
	{
		// それ以外の場合は選択中のボタンを設定する
		$$set_joypad_focus_button($select_btn)
	}
}
