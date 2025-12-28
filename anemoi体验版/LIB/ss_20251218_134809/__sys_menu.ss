//===========================================================================
//!
//!    @file     __sys_menu.ss
//!    @brief    タイトルメニューシーン(システム側)
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

	#property	$select_btn				// 選択したボタン
	
	#property	$bgm_file : str			// タイトルメニューで再生するＢＧＭファイル名
	#property	$jump_from_title		// 各画面へタイトルから遷移しているフラグ

#inc_end

//---------------------------------------------------------------------------
// メニューシーン開始
//---------------------------------------------------------------------------
#z00

// メニュー画面でのユーザー制御を設定する
$$menu_control_enabled

// チャプター再生中でない場合はタイトルメニュー遷移時のフェードを表示する
if( <CHAPTER_PLAY> == 0 ) {
	$$show_menu_start_fade
}

// チャプター再生用のフェードオブジェクトを作成する
$$set_fade_object(back.object[<OBJ_FADE>], 0, 0, 0)
if( <CHAPTER_PLAY> ) { back.object[<OBJ_FADE>].disp = 1 }
else                 { back.object[<OBJ_FADE>].disp = 0 }

$$init_scene													// スクリプトシステムの初期化
$$create_menu_scene_object(back)								// シーンオブジェクトを作成する
$$auto_joypad_navigation(@ボタン_メニュー_最初から,				// 自動でジョイパッド時のボタン遷移先を設定する
						 @ボタン_メニュー_別ルートから始める３)
$$set_menu_joypad_navigation(back)								// 手動でジョイパッド時のボタン遷移先を設定する
$$set_joypad_focus_button_default(back)							// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$show_menu_scene_object(back)									// シーンオブジェクトを表示する

// 入力制御を開始する
$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)

while(1)
{
	// 入力制御を更新する
	$select_btn = $$input_update(front, <OBJBTN_GROUP_NO_SELECT>)
	
	// チャプター再生中はチャプター選択画面へ
	if( <CHAPTER_PLAY> )
	{
		<CHAPTER_PLAY> = 0
		$select_btn = @ボタン_メニュー_チャプターから始める
	}
	
	// アプリケーション側の処理を更新する
	$$update_menu_scene_object(front, $select_btn)
	
	// キャンセルは何も押していないとして処理する
	if( $select_btn == -1 )
	{
		$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
		$select_btn = -2
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
		
		continue
	}
	
	// 各ボタン処理
	switch( $select_btn ) {
	case(@ボタン_メニュー_最初から)
		
		// excallを行わないのでジョイパッドモードでない場合は選択されたボタンを選択状態にする
		if( syscom.check_joypad_mode == 0 ) {
			front.object[$select_btn].set_button_state_select
		}
		$$push_menu_start_button							// 最初から始めるボタンを押したときの処理へ
		front.object[$select_btn].set_button_state_normal	// 選択されたボタンを元の状態に戻す
		
	case(@ボタン_メニュー_前回の続きから)			$$end_load						// エンドロード
	case(@ボタン_メニュー_別ルートから始める１)		$$push_menu_route_button(1)		// 別ルートから始めるボタンを押したときの処理へ
	case(@ボタン_メニュー_別ルートから始める２)		$$push_menu_route_button(2)		// 別ルートから始めるボタンを押したときの処理へ
	case(@ボタン_メニュー_別ルートから始める３)		$$push_menu_route_button(3)		// 別ルートから始めるボタンを押したときの処理へ
		
	case(@ボタン_メニュー_続きから)
		
		$jump_from_title = 1			// タイトル画面からの遷移フラグをオンにする
		syscom.call_load_menu			// ロード画面へ
		$jump_from_title = 0			// タイトル画面からの遷移フラグをオフにする
		
	case(@ボタン_メニュー_チャプターから始める)
		
		$jump_from_title = 1			// タイトル画面からの遷移フラグをオンにする
		syscom.call_ex(__sys_chapter)	// チャプター選択画面へ
		$jump_from_title = 0			// タイトル画面からの遷移フラグをオフにする
		if( <CHAPTER_PLAY> ) {
			wipe(0, 0)
			$$execute_chapter_jump(<CHAPTER_PLAY>)
		}
		
	case(@ボタン_メニュー_コンフィグ)
		
		$jump_from_title = 1			// タイトル画面からの遷移フラグをオンにする
		syscom.call_config_menu			// コンフィグ画面へ
		$jump_from_title = 0			// タイトル画面からの遷移フラグをオフにする
		
	case(@ボタン_メニュー_エクストラ)
		
		$jump_from_title = 1					// タイトル画面からの遷移フラグをオンにする
		$bgm_file = bgm.get_regist_name			// 再生中のＢＧＭ名を保存する
		syscom.call_ex(__sys_extra_mode_select)	// エクストラ画面へ
		$jump_from_title = 0					// タイトル画面からの遷移フラグをオフにする
		
		// タイトル画面のＢＧＭを再生する
		bgm.play($bgm_file, __MENU_BGM_FADEIN_TIME_FROM_EXTRA, __MENU_BGM_FADEOUT_TIME_FROM_EXTRA)
		
	case(@ボタン_メニュー_ゲーム終了)
		
		// excallを行わないのでジョイパッドモードでない場合は選択されたボタンを選択状態にする
		if( syscom.check_joypad_mode == 0 ) {
			front.object[$select_btn].set_button_state_select
		}
		$$call_yesno_dialog(@確認ダイアログ_モード_ゲームを終了する)	// ゲーム終了確認ダイアログへ
		front.object[$select_btn].set_button_state_normal				// 選択されたボタンを元の状態に戻す
		
	default
		@dm("_menu.ss → #z00\n定義されていないボタンが選択されました。\nボタン番号 : " + math.tostr($select_btn) + "\n処理をスキップします。")
	}
	
	$$set_joypad_focus_button($select_btn)	// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
	$$update_joypad_focus_button(front)		// 選択されたボタンの描画を更新する
	
	// ボタンの選択状態をリセットして入力制御を開始する
	$select_btn = -2
	$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
}

// 上記のループを抜けるのはエラーとして扱う
@dm("_menu.ss → #z00\nメニュー画面フローのエラーです。\nゲームを終了します。")

// ゲームを終了する
$$end_game


//---------------------------------------------------------------------------
// タイトルメニューシーンから遷移しているかどうかのフラグを取得する
//---------------------------------------------------------------------------
command $$get_jump_from_title : int
{
	return ($jump_from_title)
}

//---------------------------------------------------------------------------
// タイトルメニューシーンで使用する前回の続きから（コンティニュー）ボタンを作成する
//---------------------------------------------------------------------------
command $$create_menu_continue_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// エンドセーブデータがない場合、ボタンを選択不可にする
	if( syscom.get_save_exist(syscom.get_save_cnt + syscom.get_quick_save_cnt) == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// タイトルメニューシーンで使用する続きから（ロード）ボタンを作成する
//---------------------------------------------------------------------------
command $$create_menu_load_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// セーブデータがない場合、ボタンを選択不可にする
	if( syscom.get_save_new_no == -1 && syscom.get_quick_save_new_no == -1 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// タイトルメニューシーンで使用するチャプター選択ボタンを作成する
//---------------------------------------------------------------------------
command $$create_menu_chapter_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// チャプター選択が解放されていない場合、ボタンを選択不可にする
	if( $$open_chapter_select == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// タイトルメニューシーンで使用するエクストラボタンを作成する
//---------------------------------------------------------------------------
command $$create_menu_extra_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// エクストラが解放されていない場合、ボタンを選択不可にする
	if( $$open_extra == 0 ) {
		$obj.set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	property $focus_btn
	
	// チャプター再生中の場合はチャプターボタンをデフォルトにする
	if( <CHAPTER_PLAY> != 0 )
	{
		$focus_btn = @ボタン_メニュー_チャプターから始める
	}
	else
	{
		// ロードボタンが選択可能な場合はコンティニューかロードボタンをデフォルトにする
		if( $stage.object[@ボタン_メニュー_続きから].get_button_real_state != 4 )
		{
			// コンティニューボタンが表示されている場合はコンティニューボタンをデフォルトにする
			if( $stage.object[@ボタン_メニュー_前回の続きから].disp )
			{
				$focus_btn = @ボタン_メニュー_前回の続きから
			}
			else
			{
				$focus_btn = @ボタン_メニュー_続きから
			}
		}
		else
		{
			// それ以外の場合はスタートボタンをデフォルトにする
			$focus_btn = @ボタン_メニュー_最初から
		}
	}
	
	// ジョイパッドで最初に選択されているボタンを設定する
	$$set_joypad_focus_button($focus_btn)
}
