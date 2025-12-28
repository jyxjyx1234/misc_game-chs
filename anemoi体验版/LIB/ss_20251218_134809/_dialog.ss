//===========================================================================
//!
//!    @file     _dialog.ss
//!    @brief    ダイアログシーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する(はい／いいえ)
//---------------------------------------------------------------------------
command $$create_yesno_dialog_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[@オブジェクト_確認ダイアログ_背景], _dialog_bg, 0, 0)
	$$create_ui_image($stage.object[@オブジェクト_確認ダイアログ_ベース], _dialog_yesno_bg, 633, 475)
	$$create_ui_button($stage.object[@ボタン_確認ダイアログ_はい], _dialog_yes_btn, 762, 534, @ボタン_確認ダイアログ_はい, <OBJBTN_GROUP_NO_MODAL>, 1)
	$$create_ui_button($stage.object[@ボタン_確認ダイアログ_いいえ], _dialog_no_btn, 966, 534, @ボタン_確認ダイアログ_いいえ, <OBJBTN_GROUP_NO_MODAL>, 2)
	$$create_dialog_message($stage.object[@オブジェクト_確認ダイアログ_メッセージ], _dialog_message, 700, 496)
	$$create_dialog_redisp_checkbox($stage.object[@ボタン_確認ダイアログ_チェックボックス], _dialog_checkbox, 816, 600, @ボタン_確認ダイアログ_チェックボックス, <OBJBTN_GROUP_NO_MODAL>, 1)
	
	// ※バックログジャンプは$$show_yesno_dialog_scene_objectを経由せずfrontで直接表示されるため
	//   アニメーションの指定はここに記述する
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
	}
	else
	{
		$stage.object[@オブジェクト_確認ダイアログ_ベース].center_rep_x = 0
		$stage.object[@オブジェクト_確認ダイアログ_ベース].scale_x = 0
		$stage.object[@オブジェクト_確認ダイアログ_ベース].scale_x_eve.set(1000, 250, 0, 2)
		
		$stage.object[@ボタン_確認ダイアログ_はい].tr = 0
		$stage.object[@ボタン_確認ダイアログ_はい].tr_eve.set(255, 250, 250, 2)
		$stage.object[@ボタン_確認ダイアログ_はい].y_rep.resize(1)
		$stage.object[@ボタン_確認ダイアログ_はい].y_rep[0] = 20
		$stage.object[@ボタン_確認ダイアログ_はい].y_rep_eve[0].set(0, 250, 250, 2)
		
		$stage.object[@ボタン_確認ダイアログ_いいえ].tr = 0
		$stage.object[@ボタン_確認ダイアログ_いいえ].tr_eve.set(255, 250, 250, 2)
		$stage.object[@ボタン_確認ダイアログ_いいえ].y_rep.resize(1)
		$stage.object[@ボタン_確認ダイアログ_いいえ].y_rep[0] = 20
		$stage.object[@ボタン_確認ダイアログ_いいえ].y_rep_eve[0].set(0, 250, 250, 2)
		
		$stage.object[@オブジェクト_確認ダイアログ_メッセージ].tr = 0
		$stage.object[@オブジェクト_確認ダイアログ_メッセージ].tr_eve.set(255, 250, 250, 2)
		$stage.object[@オブジェクト_確認ダイアログ_メッセージ].x_rep.resize(1)
		$stage.object[@オブジェクト_確認ダイアログ_メッセージ].x_rep[0] = -20
		$stage.object[@オブジェクト_確認ダイアログ_メッセージ].x_rep_eve[0].set(0, 250, 250, 2)
		
		$stage.object[@ボタン_確認ダイアログ_チェックボックス].tr = 0
		$stage.object[@ボタン_確認ダイアログ_チェックボックス].tr_eve.set(255, 250, 250, 2)
		$stage.object[@ボタン_確認ダイアログ_チェックボックス].y_rep.resize(1)
		$stage.object[@ボタン_確認ダイアログ_チェックボックス].y_rep[0] = 20
		$stage.object[@ボタン_確認ダイアログ_チェックボックス].y_rep_eve[0].set(0, 250, 250, 2)
		
		disp
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する(はい／いいえ)
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_yesno_dialog_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する(はい／いいえ)
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_yesno_dialog_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1, start_order=0, end_order=0)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1, start_order=0, end_order=0)
	}
	
	excall[excall.is_excall].front.object[@ボタン_確認ダイアログ_チェックボックス].all_eve.wait
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする(はい／いいえ)
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_yesno_dialog_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1, start_order=0, end_order=0)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1, start_order=0, end_order=0)
	}
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する(はい／いいえ)
//---------------------------------------------------------------------------
command $$set_yesno_dialog_joypad_navigation(property $stage : stage)
{
	$stage.object[@ボタン_確認ダイアログ_はい].joypad_up    = @ボタン_確認ダイアログ_チェックボックス
	$stage.object[@ボタン_確認ダイアログ_はい].joypad_down  = @ボタン_確認ダイアログ_チェックボックス
	$stage.object[@ボタン_確認ダイアログ_はい].joypad_left  = @ボタン_確認ダイアログ_いいえ
	$stage.object[@ボタン_確認ダイアログ_はい].joypad_right = @ボタン_確認ダイアログ_いいえ
	
	$stage.object[@ボタン_確認ダイアログ_いいえ].joypad_up    = @ボタン_確認ダイアログ_チェックボックス
	$stage.object[@ボタン_確認ダイアログ_いいえ].joypad_down  = @ボタン_確認ダイアログ_チェックボックス
	$stage.object[@ボタン_確認ダイアログ_いいえ].joypad_left  = @ボタン_確認ダイアログ_はい
	$stage.object[@ボタン_確認ダイアログ_いいえ].joypad_right = @ボタン_確認ダイアログ_はい
	
	$stage.object[@ボタン_確認ダイアログ_チェックボックス].joypad_up    = @ボタン_確認ダイアログ_いいえ
	$stage.object[@ボタン_確認ダイアログ_チェックボックス].joypad_down  = @ボタン_確認ダイアログ_いいえ
	$stage.object[@ボタン_確認ダイアログ_チェックボックス].joypad_left  = -1
	$stage.object[@ボタン_確認ダイアログ_チェックボックス].joypad_right = -1
}




//---------------------------------------------------------------------------
// シーンオブジェクトを作成する(ＯＫ)
//---------------------------------------------------------------------------
command $$create_ok_dialog_scene_object(property $stage : stage)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する(ＯＫ)
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_ok_dialog_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する(ＯＫ)
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_ok_dialog_scene_object(property $stage : stage)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする(ＯＫ)
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_ok_dialog_scene_object(property $stage : stage)
{
}

