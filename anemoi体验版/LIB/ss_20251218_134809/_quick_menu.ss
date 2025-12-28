//===========================================================================
//!
//!    @file     _quick_menu.ss
//!    @brief    クイックメニューシーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_qmenu_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _qmenu_bg, 0, 0)
	$$create_qmenu_save_button($stage.object[@ボタン_クイックメニュー_セーブ], _qmenu_save_btn, 640, 303, @ボタン_クイックメニュー_セーブ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_load_button($stage.object[@ボタン_クイックメニュー_ロード], _qmenu_load_btn, 870, 303, @ボタン_クイックメニュー_ロード, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_auto_button($stage.object[@ボタン_クイックメニュー_オート], _qmenu_auto_btn, 525, 514, @ボタン_クイックメニュー_オート, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_skip_button($stage.object[@ボタン_クイックメニュー_スキップ], _qmenu_skip_btn, 755, 514, @ボタン_クイックメニュー_スキップ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_コンフィグ], _qmenu_config_btn, 984, 514, @ボタン_クイックメニュー_コンフィグ, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_qmenu_back_button($stage.object[@ボタン_クイックメニュー_前の選択肢に戻る], _qmenu_back_btn, 1100, 303, @ボタン_クイックメニュー_前の選択肢に戻る, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_クイックメニュー_レコード], _qmenu_record_btn, 1213, 514, @ボタン_クイックメニュー_レコード, <OBJBTN_GROUP_NO_EXCALL>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_qmenu_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_qmenu_scene_object(property $stage : stage)
{
	property $i
	property $button_list : intlist[7]
	
	// 体験版処理（レコードボタンは押せない）
	$stage.object[@ボタン_クイックメニュー_レコード].set_button_state_disable
	
	// アニメーションするボタンの順番を設定する
	$button_list.sets(0, @ボタン_クイックメニュー_オート,
						 @ボタン_クイックメニュー_セーブ,
						 @ボタン_クイックメニュー_スキップ,
						 @ボタン_クイックメニュー_ロード,
						 @ボタン_クイックメニュー_コンフィグ,
						 @ボタン_クイックメニュー_前の選択肢に戻る,
						 @ボタン_クイックメニュー_レコード
	)
	
	// ボタン効果音を再生する
	se.play_by_se_no(<BUTTON_SE_DECIDE>)
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		// ボタンをアニメーションする
		for( $i = 0, $i < $button_list.get_size, $i += 1 )
		{
			$$set_scale_eve($stage.object[$button_list[$i]], 0, 1000, 200, $i * 50, 2)
			$$set_tr_eve($stage.object[$button_list[$i]], 0, 255, 200, $i * 50, 2)
		}
		
		wipe(0, 250, wait=1)
		
		excall[excall.is_excall].front.object[$button_list[$i - 1]].all_eve.wait
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_qmenu_scene_object(property $stage : stage)
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
command $$set_qmenu_joypad_navigation(property $stage : stage)
{
	$stage.object[@ボタン_クイックメニュー_セーブ].joypad_up    = @ボタン_クイックメニュー_スキップ
	$stage.object[@ボタン_クイックメニュー_セーブ].joypad_down  = @ボタン_クイックメニュー_スキップ
	$stage.object[@ボタン_クイックメニュー_セーブ].joypad_left  = @ボタン_クイックメニュー_前の選択肢に戻る
	$stage.object[@ボタン_クイックメニュー_セーブ].joypad_right = @ボタン_クイックメニュー_ロード
	
	$stage.object[@ボタン_クイックメニュー_ロード].joypad_up    = @ボタン_クイックメニュー_コンフィグ
	$stage.object[@ボタン_クイックメニュー_ロード].joypad_down  = @ボタン_クイックメニュー_コンフィグ
	$stage.object[@ボタン_クイックメニュー_ロード].joypad_left  = @ボタン_クイックメニュー_セーブ
	$stage.object[@ボタン_クイックメニュー_ロード].joypad_right = @ボタン_クイックメニュー_前の選択肢に戻る
	
	$stage.object[@ボタン_クイックメニュー_前の選択肢に戻る].joypad_up    = @ボタン_クイックメニュー_レコード
	$stage.object[@ボタン_クイックメニュー_前の選択肢に戻る].joypad_down  = @ボタン_クイックメニュー_レコード
	$stage.object[@ボタン_クイックメニュー_前の選択肢に戻る].joypad_left  = @ボタン_クイックメニュー_ロード
	$stage.object[@ボタン_クイックメニュー_前の選択肢に戻る].joypad_right = @ボタン_クイックメニュー_セーブ
	
	$stage.object[@ボタン_クイックメニュー_オート].joypad_up    = @ボタン_クイックメニュー_セーブ
	$stage.object[@ボタン_クイックメニュー_オート].joypad_down  = @ボタン_クイックメニュー_セーブ
	$stage.object[@ボタン_クイックメニュー_オート].joypad_left  = @ボタン_クイックメニュー_レコード
	$stage.object[@ボタン_クイックメニュー_オート].joypad_right = @ボタン_クイックメニュー_スキップ
	
	$stage.object[@ボタン_クイックメニュー_スキップ].joypad_up    = @ボタン_クイックメニュー_セーブ
	$stage.object[@ボタン_クイックメニュー_スキップ].joypad_down  = @ボタン_クイックメニュー_セーブ
	$stage.object[@ボタン_クイックメニュー_スキップ].joypad_left  = @ボタン_クイックメニュー_オート
	$stage.object[@ボタン_クイックメニュー_スキップ].joypad_right = @ボタン_クイックメニュー_コンフィグ
	
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_up    = @ボタン_クイックメニュー_ロード
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_down  = @ボタン_クイックメニュー_ロード
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_left  = @ボタン_クイックメニュー_スキップ
	$stage.object[@ボタン_クイックメニュー_コンフィグ].joypad_right = @ボタン_クイックメニュー_レコード
	
	$stage.object[@ボタン_クイックメニュー_レコード].joypad_up    = @ボタン_クイックメニュー_前の選択肢に戻る
	$stage.object[@ボタン_クイックメニュー_レコード].joypad_down  = @ボタン_クイックメニュー_前の選択肢に戻る
	$stage.object[@ボタン_クイックメニュー_レコード].joypad_left  = @ボタン_クイックメニュー_コンフィグ
	$stage.object[@ボタン_クイックメニュー_レコード].joypad_right = @ボタン_クイックメニュー_オート
}
