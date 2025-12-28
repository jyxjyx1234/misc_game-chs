//===========================================================================
//!
//!    @file     __sys_footer.ss
//!    @brief    フッターボタン制御
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     アプリケーションに依存しないシステムの共通処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// フッターの入力処理を更新する
//---------------------------------------------------------------------------
command $$update_footer_input(property $stage : stage, property $select_btn, property $base_btn) : int
{
	property $focus_btn
	
	// 現在のフォーカスボタンを取得する
	$focus_btn = $$get_joypad_focus_button
	
	// Ｌ２／Ｒ２ボタンでフッターのページ送りをする
	// ※ Ｌ２／Ｒ２両方押している処理しないようにする ※
	if( joypad.key[<JOYPAD_L2>].is_down == 0 || joypad.key[<JOYPAD_R2>].is_down == 0 )
	{
		// Ｌ２ボタンを押した場合
		if( $$joypad_on_down(<JOYPAD_L2>) )
		{
			// 現在のフォーカスボタンの表示を通常に戻す
			$$reset_joypad_focus_button($stage)
			
			// フォーカスボタンがフッターの場合は選択中のボタンの一つ左に移動する
			if( @ボタン_フッター_セーブ <= $focus_btn && $focus_btn <= @ボタン_フッター_戻る )
			{
				se.play_by_se_no(<BUTTON_SE_HIT>)
				$$set_joypad_focus_button($stage.object[$focus_btn].joypad_left)
			}
			
			// フォーカスボタンがフッターでない場合はベースボタンの一つ左に移動する
			else
			{
				se.play_by_se_no(<BUTTON_SE_HIT>)
				$$set_joypad_focus_button($stage.object[$base_btn].joypad_left)
			}
		}
		
		// Ｒ２ボタンを押した場合
		elseif( $$joypad_on_down(<JOYPAD_R2>) )
		{
			// 現在のフォーカスボタンの表示を通常に戻す
			$$reset_joypad_focus_button($stage)
			
			// フォーカスボタンがフッターの場合は選択中のボタンの一つ右に移動する
			if( @ボタン_フッター_セーブ <= $focus_btn && $focus_btn <= @ボタン_フッター_戻る )
			{
				se.play_by_se_no(<BUTTON_SE_HIT>)
				$$set_joypad_focus_button($stage.object[$focus_btn].joypad_right)
			}
			
			// フォーカスボタンがフッターでない場合はベースボタンの一つ右に移動する
			else
			{
				se.play_by_se_no(<BUTTON_SE_HIT>)
				$$set_joypad_focus_button($stage.object[$base_btn].joypad_right)
			}
		}
	}
	
	// 確認ダイアログへ遷移するボタンが選択された場合
	if( $select_btn == @ボタン_フッター_タイトルに戻る || $select_btn == @ボタン_フッター_ゲームを終了する )
	{
		// excallを行わないのでジョイパッドモードでない場合は選択されたボタンを選択状態にする
		if( syscom.check_joypad_mode == 0 ) {
			excall.front.object[$select_btn].set_button_state_select
		}
		
		// それぞれの処理を行う
		switch( $select_btn ) {
		case(@ボタン_フッター_タイトルに戻る)		$$call_yesno_dialog(@確認ダイアログ_モード_タイトルに戻る)		// タイトルに戻る確認ダイアログへ
		case(@ボタン_フッター_ゲームを終了する)		$$call_yesno_dialog(@確認ダイアログ_モード_ゲームを終了する)	// ゲーム終了確認ダイアログへ
		}
		
		// 選択されたボタンを元の状態に戻す
		excall.front.object[$select_btn].set_button_state_normal
		
		$$set_joypad_focus_button($select_btn)		// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		$$update_joypad_focus_button(excall.front)	// 場合は選択されたボタンの描画を更新する
	}
	
	return ($select_btn)
}

//---------------------------------------------------------------------------
// フッターシーンで使用するセーブボタンを作成する
//---------------------------------------------------------------------------
command $$create_footer_save_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// セーブが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_save_enable == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// フッターシーンで使用するロードボタンを作成する
//---------------------------------------------------------------------------
command $$create_footer_load_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// ロードが使用不可の場合、ボタンを選択不可にする
	if( syscom.check_load_enable == 0 ) {
		$obj.set_button_state_disable
	}
}
