//===========================================================================
//!
//!    @file     __sys_cancel.ss
//!    @brief    キャンセルシーン
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     右クリック時の動作指定
//!
//===========================================================================

//---------------------------------------------------------------------------
// キャンセルシーン開始
//---------------------------------------------------------------------------
#z00

// タブレットモードの場合はクイックメニュー画面へ
if( <TABLET_MODE> )
{
	syscom.call_ex(__sys_quick_menu)
	return
}

// タブレットモードでない場合はそれぞれの画面へ
switch( <RCLICK_MODE> ) {
case(<RCLICK_MODE_QUICK_MENU>)		syscom.call_ex(__sys_quick_menu)		// クイックメニュー画面
case(<RCLICK_MODE_WINDOW_CLOSE>)	syscom.set_hide_mwnd_onoff_flag(1)		// メッセージウィンドウ消去
case(<RCLICK_MODE_CONFIG>)			se.play_by_se_no(<BUTTON_SE_DECIDE>)	// ボタン効果音を再生する
									syscom.call_config_menu					// コンフィグ画面
case(<RCLICK_MODE_SAVE>)													// セーブ画面
	
	// セーブが使用不可の場合は遷移を行わない
	if( syscom.check_save_enable == 0 ) {
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
	} else {
		se.play_by_se_no(<BUTTON_SE_DECIDE>)
		syscom.call_save_menu
	}
	
case(<RCLICK_MODE_LOAD>)													// ロード画面
	
	// ロードが使用不可の場合は遷移を行わない
	if( syscom.check_load_enable == 0 ) {
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
	} else {
		se.play_by_se_no(<BUTTON_SE_DECIDE>)
		syscom.call_load_menu
	}
	
default								@dm("__sys_cancel.ss → #z00\n定義されていない右クリック動作が選択されました。\n番号 : " + math.tostr(<RCLICK_MODE>) + "\n処理をスキップします。")
}

return
