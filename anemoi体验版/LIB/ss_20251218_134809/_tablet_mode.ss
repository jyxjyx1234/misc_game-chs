//===========================================================================
//!
//!    @file     _tablet_mode.ss
//!    @brief    タブレットモード(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//!              <TABLET_MODE> = 0    タブレットモード無効
//!              <TABLET_MODE> = 1    タブレットモード有効／右配置
//!              <TABLET_MODE> = 2    タブレットモード有効／左配置
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクト(右配置)を作成する
//---------------------------------------------------------------------------
command $$create_tabletR_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _tablet_mode_bg01, 1488, 22)
	$$create_qmenu_qsave_button($stage.object[@ボタン_クイックメニュー_クイックセーブ], _tablet_mode_qsave_btn, 1615, 130, @ボタン_クイックメニュー_クイックセーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_qload_button($stage.object[@ボタン_クイックメニュー_クイックロード], _tablet_mode_qload_btn, 1753, 130, @ボタン_クイックメニュー_クイックロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_save_button($stage.object[@ボタン_クイックメニュー_セーブ], _tablet_mode_save_btn, 1615, 263, @ボタン_クイックメニュー_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_load_button($stage.object[@ボタン_クイックメニュー_ロード], _tablet_mode_load_btn, 1753, 263, @ボタン_クイックメニュー_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_back_button($stage.object[@ボタン_クイックメニュー_前の選択肢に戻る], _tablet_mode_back_btn, 1615, 396, @ボタン_クイックメニュー_前の選択肢に戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_auto_button($stage.object[@ボタン_クイックメニュー_オート], _tablet_mode_auto_btn, 1753, 396, @ボタン_クイックメニュー_オート, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_skip_button($stage.object[@ボタン_クイックメニュー_スキップ], _tablet_mode_skip_btn, 1615, 529, @ボタン_クイックメニュー_スキップ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_レコード], _tablet_mode_record_btn, 1753, 529, @ボタン_クイックメニュー_レコード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_title_button($stage.object[@ボタン_クイックメニュー_タイトルに戻る], _tablet_mode_title_btn, 1615, 662, @ボタン_クイックメニュー_タイトルに戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_ゲームを終了する], _tablet_mode_exit_btn, 1753, 662, @ボタン_クイックメニュー_ゲームを終了する, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_コンフィグ], _tablet_mode_config_btn, 1684, 795, @ボタン_クイックメニュー_コンフィグ, <OBJBTN_GROUP_NO_EXCALL>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクト(左配置)を作成する
//---------------------------------------------------------------------------
command $$create_tabletL_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _tablet_mode_bg02, 0, 22)
	$$create_qmenu_qsave_button($stage.object[@ボタン_クイックメニュー_クイックセーブ], _tablet_mode_qsave_btn, 43, 130, @ボタン_クイックメニュー_クイックセーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_qload_button($stage.object[@ボタン_クイックメニュー_クイックロード], _tablet_mode_qload_btn, 181, 130, @ボタン_クイックメニュー_クイックロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_save_button($stage.object[@ボタン_クイックメニュー_セーブ], _tablet_mode_save_btn, 43, 263, @ボタン_クイックメニュー_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_load_button($stage.object[@ボタン_クイックメニュー_ロード], _tablet_mode_load_btn, 181, 263, @ボタン_クイックメニュー_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_back_button($stage.object[@ボタン_クイックメニュー_前の選択肢に戻る], _tablet_mode_back_btn, 43, 396, @ボタン_クイックメニュー_前の選択肢に戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_auto_button($stage.object[@ボタン_クイックメニュー_オート], _tablet_mode_auto_btn, 181, 396, @ボタン_クイックメニュー_オート, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_skip_button($stage.object[@ボタン_クイックメニュー_スキップ], _tablet_mode_skip_btn, 43, 529, @ボタン_クイックメニュー_スキップ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_レコード], _tablet_mode_record_btn, 181, 529, @ボタン_クイックメニュー_レコード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_title_button($stage.object[@ボタン_クイックメニュー_タイトルに戻る], _tablet_mode_title_btn, 43, 662, @ボタン_クイックメニュー_タイトルに戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_ゲームを終了する], _tablet_mode_exit_btn, 181, 662, @ボタン_クイックメニュー_ゲームを終了する, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_コンフィグ], _tablet_mode_config_btn, 112, 795, @ボタン_クイックメニュー_コンフィグ, <OBJBTN_GROUP_NO_EXCALL>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_tablet_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_tablet_scene_object(property $stage : stage)
{
	property $i
	
	// ボタン効果音を再生する
	se.play_by_se_no(<BUTTON_SE_DECIDE>)
	
	// 体験版処理（レコードボタンは押せない）
	$stage.object[@ボタン_クイックメニュー_レコード].set_button_state_disable
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		// それぞれ画面端から移動させながら表示する
		for( $i = 0, $i < @ボタン_クイックメニュー_最大, $i += 1 )
		{
			if( $stage.object[$i].disp )
			{
				$stage.object[$i].x_rep.resize(1)
				
				if( <TABLET_MODE> == 1 )	 { $stage.object[$i].x_rep[0] =  324 }
				elseif( <TABLET_MODE> == 2 ) { $stage.object[$i].x_rep[0] = -324 }
				
				$stage.object[$i].x_rep_eve[0].set(0, 300, 0, 2)
			}
		}
		
		// クイックセーブボタンをデフォルトにする
		$$set_joypad_focus_button(@ボタン_クイックメニュー_クイックセーブ)
		
		// ワイプ
		wipe(0, 0, wait=1)
		
		// オブジェクトイベントの終了を待つ
		excall.front.object[0].x_rep_eve[0].wait
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_tablet_scene_object(property $stage : stage)
{
	property $i
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		// それぞれ画面端へ移動させながら消去する
		for( $i = 0, $i < @ボタン_クイックメニュー_最大, $i += 1 )
		{
			if( $stage.object[$i].disp )
			{
				if( <TABLET_MODE> == 1 )	 { $stage.object[$i].x_rep_eve[0].set( 324, 300, 0, 2) }
				elseif( <TABLET_MODE> == 2 ) { $stage.object[$i].x_rep_eve[0].set(-324, 300, 0, 2) }
			}
		}
		
		// オブジェクトイベントの終了を待つ
		$stage.object[0].x_rep_eve[0].wait
	}
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_tablet_joypad_navigation(property $stage : stage)
{
	$stage.object[@ボタン_クイックメニュー_クイックセーブ].joypad_up   = @ボタン_クイックメニュー_コンフィグ
	$stage.object[@ボタン_クイックメニュー_クイックセーブ].joypad_left = @ボタン_クイックメニュー_クイックロード
	
	$stage.object[@ボタン_クイックメニュー_クイックロード].joypad_up    = @ボタン_クイックメニュー_コンフィグ
	$stage.object[@ボタン_クイックメニュー_クイックロード].joypad_right = @ボタン_クイックメニュー_クイックセーブ
	
	$stage.object[@ボタン_クイックメニュー_セーブ].joypad_left = @ボタン_クイックメニュー_ロード
	$stage.object[@ボタン_クイックメニュー_ロード].joypad_right = @ボタン_クイックメニュー_セーブ
	
	$stage.object[@ボタン_クイックメニュー_前の選択肢に戻る].joypad_left = @ボタン_クイックメニュー_オート
	$stage.object[@ボタン_クイックメニュー_オート].joypad_right = @ボタン_クイックメニュー_前の選択肢に戻る
	
	$stage.object[@ボタン_クイックメニュー_スキップ].joypad_left = @ボタン_クイックメニュー_レコード
	$stage.object[@ボタン_クイックメニュー_レコード].joypad_right = @ボタン_クイックメニュー_スキップ
	
	$stage.object[@ボタン_クイックメニュー_タイトルに戻る].joypad_left = @ボタン_クイックメニュー_ゲームを終了する
	$stage.object[@ボタン_クイックメニュー_ゲームを終了する].joypad_right = @ボタン_クイックメニュー_タイトルに戻る
	
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_up    = @ボタン_クイックメニュー_タイトルに戻る
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_down  = @ボタン_クイックメニュー_クイックセーブ
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_left  = -1
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_right = -1
}



//---------------------------------------------------------------------------
// シーンオブジェクト(タブレットモードヘルプ)を作成する
//---------------------------------------------------------------------------
command $$create_tablet_help_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[@オブジェクト_タブレットモード_ヘルプ_背景], _tablet_mode_help_bg, 0, 0)
	$$create_ui_button($stage.object[@ボタン_タブレットモード_ヘルプ_閉じる], _tablet_mode_help_close_btn, 1712, 997, @ボタン_タブレットモード_ヘルプ_閉じる, <OBJBTN_GROUP_NO_MODAL>, 2)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_tablet_help_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_tablet_help_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_tablet_help_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_tablet_help_joypad_navigation(property $stage : stage)
{
}

