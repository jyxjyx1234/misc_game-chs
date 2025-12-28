//===========================================================================
//!
//!    @file     _config_text.ss
//!    @brief    コンフィグテキスト設定シーン(アプリケーション側)
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
command $$create_config_text_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _config_text_bg, 0, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_文字設定_フォントＡ], _config_text_moji_font_a_btn, 106, 253, @ボタン_コンフィグ_文字設定_フォントＡ, <OBJBTN_GROUP_NO_EXCALL>, 1, <FONT_TYPE>, 0)
	$$create_config_radio_button($stage.object[@ボタン_コンフィグ_文字設定_フォントＢ], _config_text_moji_font_b_btn, 296, 253, @ボタン_コンフィグ_文字設定_フォントＢ, <OBJBTN_GROUP_NO_EXCALL>, 1, <FONT_TYPE>, 1)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_文字設定_フォント_詳細設定], _config_text_moji_font_other_btn, 486, 253, @ボタン_コンフィグ_文字設定_フォント_詳細設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_文字設定_ノーウェイト], _config_text_moji_nowait_btn, 110, 311, @ボタン_コンフィグ_文字設定_ノーウェイト, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_message_nowait)
	$$create_config_text_message_speed_slider($stage.object[@スライダー_コンフィグ_文字設定_メッセージ速度], _config_text_common_slider, 159, 361, @スライダー_コンフィグ_文字設定_メッセージ速度, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_文字設定_初期設定], _config_common_default_btn, 742, 193, @ボタン_コンフィグ_文字設定_初期設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_config_text_mw_filter_r_slider($stage.object[@スライダー_コンフィグ_ウィンドウ背景_赤], _config_text_mw_filter_r_slider, 159, 488, @スライダー_コンフィグ_ウィンドウ背景_赤, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_text_mw_filter_g_slider($stage.object[@スライダー_コンフィグ_ウィンドウ背景_緑], _config_text_mw_filter_g_slider, 159, 533, @スライダー_コンフィグ_ウィンドウ背景_緑, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_text_mw_filter_b_slider($stage.object[@スライダー_コンフィグ_ウィンドウ背景_青], _config_text_mw_filter_b_slider, 159, 578, @スライダー_コンフィグ_ウィンドウ背景_青, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_text_mw_filter_a_slider($stage.object[@スライダー_コンフィグ_ウィンドウ背景_不透明度], _config_text_mw_filter_a_slider, 159, 623, @スライダー_コンフィグ_ウィンドウ背景_不透明度, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_ウィンドウ背景_初期設定], _config_common_default_btn, 742, 423, @ボタン_コンフィグ_ウィンドウ背景_初期設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_config_text_sample_text($stage.object[@テキスト_コンフィグ_ウィンドウ背景_サンプルテキスト], 617, 785, 684, 42, 36)
	$$create_ui_image($stage.object[@イメージ_コンフィグ_ウィンドウ背景_フィルター], _config_text_mw_filter, 164, 693)
	$$create_ui_toggle_button($stage.object[@ボタン_コンフィグ_オートモード_使用する], _config_text_auto_use_btn, 1016, 248, @ボタン_コンフィグ_オートモード_使用する, <OBJBTN_GROUP_NO_EXCALL>, 1, syscom.get_auto_mode_onoff_flag)
	$$create_config_text_automode_slider($stage.object[@スライダー_コンフィグ_オートモード_文字時間], _config_text_common_slider, 1075, 466, @スライダー_コンフィグ_オートモード_文字時間, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_config_text_automode_min_slider($stage.object[@スライダー_コンフィグ_オートモード_最小時間], _config_text_common_slider, 1075, 568, @スライダー_コンフィグ_オートモード_最小時間, <OBJBTN_GROUP_NO_EXCALL>, 1, 3, 3)
	$$create_ui_button($stage.object[@ボタン_コンフィグ_オートモード_初期設定], _config_common_default_btn, 1597, 196, @ボタン_コンフィグ_オートモード_初期設定, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_config_automode_moji_wait_number1($stage.object[@イメージ_コンフィグ_オートモード_文字時間_前], _config_text_auto_mode_number, 1185, 418)
	$$create_config_automode_moji_wait_number2($stage.object[@イメージ_コンフィグ_オートモード_文字時間_後], _config_text_auto_mode_number, 1245, 418)
	$$create_config_automode_min_wait_number1($stage.object[@イメージ_コンフィグ_オートモード_最小時間_前], _config_text_auto_mode_number, 1215, 520)
	$$create_config_automode_min_wait_number2($stage.object[@イメージ_コンフィグ_オートモード_最小時間_後], _config_text_auto_mode_number, 1274, 520)
	$$create_config_automode_total_wait_number1($stage.object[@イメージ_コンフィグ_オートモード_１０文字時間_前], _config_text_auto_mode_number, 1577, 624)
	$$create_config_automode_total_wait_number2($stage.object[@イメージ_コンフィグ_オートモード_１０文字時間_後], _config_text_auto_mode_number, 1667, 624)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_config_text_scene_object(property $stage : stage, property $select_btn)
{
	// 選択されたボタンによってパッドの遷移を変更する
	if( $select_btn == @ボタン_コンフィグ_文字設定_フォントＡ || $select_btn == @ボタン_コンフィグ_文字設定_フォントＢ )
	{
		$stage.object[@ボタン_コンフィグ_文字設定_初期設定].joypad_down  = @ボタン_コンフィグ_現在のフォント
		
		$stage.object[@ボタン_コンフィグ_文字設定_ノーウェイト].joypad_up    = @ボタン_コンフィグ_現在のフォント
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_config_text_scene_object(property $stage : stage)
{
	property $i
	property $reverse
	property $anim_check_obj_no
	
	// コンフィグに登録されているフォント名を設定する
	$$set_config_prefont_name(0, "Noto Sans CJK JP DemiLight")
	$$set_config_prefont_name(1, "FOT-キアロ Std B")
	
	// ジョイパッドで最初に選択されているボタンを設定する
	$$set_joypad_focus_button(@ボタン_コンフィグ_ヘッダー_テキスト)
	
	// 背景
	$$create_ui_image($stage.object[1], $stage.object[0].get_file_name, 0, 0)
	$$create_ui_image($stage.object[2], $stage.object[0].get_file_name, 0, 0)
	$stage.object[0].patno = 2
	$stage.object[1].patno = 1
	$stage.object[2].patno = 0
	
	// アニメ―ション前に画面を更新する
	disp
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 前回のモードがサウンドの場合は逆方向にアニメーションする
		$reverse = 1
		if( $$get_prev_config_mode == 2 ) {
			$reverse = -1
		}
		
		// 表示中のモードを左へ
		for( $i = 2, $i <= @コンフィグ_コンテンツ_最大, $i += 1 )
		{
			if( excall.front.object[$i].f.get_size == 0 ) {
				continue
			}
			
			excall.front.object[$i].x_rep.resize(2)
			excall.front.object[$i].x_rep[1] = 0
			excall.front.object[$i].x_rep_eve[1].set(-<SCREEN_WIDTH> * $reverse, 500, 0, 2)
		}
		
		// システムモードを右から表示
		for( $i = 2, $i <= @コンフィグ_コンテンツ_最大, $i += 1 )
		{
			if( $stage.object[$i].f.get_size == 0 ) {
				continue
			}
			
			$stage.object[$i].x_rep.resize(2)
			$stage.object[$i].x_rep[1] = <SCREEN_WIDTH> * $reverse
			$stage.object[$i].x_rep_eve[1].set(0, 500, 0, 2)
			
			$anim_check_obj_no = $i
		}
		
		// 通常表示(ジョイパッドのＲ１がキースキップするのでキースキップできないようにする)
		wipe(0, 250, wait=1, key_skip=0)
		
		// アニメーションの終了を待つ
		excall.front.object[$anim_check_obj_no].all_eve.wait
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_config_text_scene_object(property $stage : stage)
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
command $$set_config_text_joypad_navigation(property $stage : stage)
{
	property $i
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_down  = @ボタン_コンフィグ_文字設定_初期設定
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_left  = @ボタン_コンフィグ_ヘッダー_サウンド
	$stage.object[@ボタン_コンフィグ_ヘッダー_システム].joypad_right = @ボタン_コンフィグ_ヘッダー_テキスト
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_down  = @ボタン_コンフィグ_文字設定_初期設定
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_left  = @ボタン_コンフィグ_ヘッダー_システム
	$stage.object[@ボタン_コンフィグ_ヘッダー_テキスト].joypad_right = @ボタン_コンフィグ_ヘッダー_サウンド
	
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_up    = @ボタン_フッター_コンフィグ
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_down  = @ボタン_コンフィグ_文字設定_初期設定
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_left  = @ボタン_コンフィグ_ヘッダー_テキスト
	$stage.object[@ボタン_コンフィグ_ヘッダー_サウンド].joypad_right = @ボタン_コンフィグ_ヘッダー_システム
	
	$stage.object[@ボタン_コンフィグ_文字設定_初期設定].joypad_up    = @ボタン_コンフィグ_現在のタブ
	$stage.object[@ボタン_コンフィグ_文字設定_初期設定].joypad_down  = @ボタン_コンフィグ_現在のフォント
	$stage.object[@ボタン_コンフィグ_文字設定_初期設定].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_文字設定_初期設定].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＡ].joypad_up    = @ボタン_コンフィグ_文字設定_初期設定
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＡ].joypad_down  = @ボタン_コンフィグ_文字設定_ノーウェイト
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＡ].joypad_left  = @ボタン_コンフィグ_文字設定_フォント_詳細設定
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＡ].joypad_right = @ボタン_コンフィグ_文字設定_フォントＢ
	
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＢ].joypad_up    = @ボタン_コンフィグ_文字設定_初期設定
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＢ].joypad_down  = @ボタン_コンフィグ_文字設定_ノーウェイト
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＢ].joypad_left  = @ボタン_コンフィグ_文字設定_フォントＡ
	$stage.object[@ボタン_コンフィグ_文字設定_フォントＢ].joypad_right = @ボタン_コンフィグ_文字設定_フォント_詳細設定
	
	$stage.object[@ボタン_コンフィグ_文字設定_フォント_詳細設定].joypad_up    = @ボタン_コンフィグ_文字設定_初期設定
	$stage.object[@ボタン_コンフィグ_文字設定_フォント_詳細設定].joypad_down  = @ボタン_コンフィグ_文字設定_ノーウェイト
	$stage.object[@ボタン_コンフィグ_文字設定_フォント_詳細設定].joypad_left  = @ボタン_コンフィグ_文字設定_フォントＢ
	$stage.object[@ボタン_コンフィグ_文字設定_フォント_詳細設定].joypad_right = @ボタン_コンフィグ_文字設定_フォントＡ
	
	$stage.object[@ボタン_コンフィグ_文字設定_ノーウェイト].joypad_up    = @ボタン_コンフィグ_現在のフォント
	$stage.object[@ボタン_コンフィグ_文字設定_ノーウェイト].joypad_down  = @スライダー_コンフィグ_文字設定_メッセージ速度
	$stage.object[@ボタン_コンフィグ_文字設定_ノーウェイト].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_文字設定_ノーウェイト].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_文字設定_メッセージ速度].joypad_up    = @ボタン_コンフィグ_文字設定_ノーウェイト
	$stage.object[@スライダー_コンフィグ_文字設定_メッセージ速度].joypad_down  = @ボタン_コンフィグ_ウィンドウ背景_初期設定
	$stage.object[@スライダー_コンフィグ_文字設定_メッセージ速度].joypad_left  = @スライダー動作_コンフィグ_文字設定_メッセージ速度_下げる
	$stage.object[@スライダー_コンフィグ_文字設定_メッセージ速度].joypad_right = @スライダー動作_コンフィグ_文字設定_メッセージ速度_上げる
	
	$stage.object[@ボタン_コンフィグ_ウィンドウ背景_初期設定].joypad_up    = @スライダー_コンフィグ_文字設定_メッセージ速度
	$stage.object[@ボタン_コンフィグ_ウィンドウ背景_初期設定].joypad_down  = @スライダー_コンフィグ_ウィンドウ背景_赤
	$stage.object[@ボタン_コンフィグ_ウィンドウ背景_初期設定].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_ウィンドウ背景_初期設定].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_赤].joypad_up    = @ボタン_コンフィグ_ウィンドウ背景_初期設定
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_赤].joypad_down  = @スライダー_コンフィグ_ウィンドウ背景_緑
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_赤].joypad_left  = @スライダー動作_コンフィグ_ウィンドウ背景_赤_下げる
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_赤].joypad_right = @スライダー動作_コンフィグ_ウィンドウ背景_赤_上げる
	
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_緑].joypad_up    = @スライダー_コンフィグ_ウィンドウ背景_赤
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_緑].joypad_down  = @スライダー_コンフィグ_ウィンドウ背景_青
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_緑].joypad_left  = @スライダー動作_コンフィグ_ウィンドウ背景_緑_下げる
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_緑].joypad_right = @スライダー動作_コンフィグ_ウィンドウ背景_緑_上げる
	
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_青].joypad_up    = @スライダー_コンフィグ_ウィンドウ背景_緑
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_青].joypad_down  = @スライダー_コンフィグ_ウィンドウ背景_不透明度
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_青].joypad_left  = @スライダー動作_コンフィグ_ウィンドウ背景_青_下げる
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_青].joypad_right = @スライダー動作_コンフィグ_ウィンドウ背景_青_上げる
	
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_不透明度].joypad_up    = @スライダー_コンフィグ_ウィンドウ背景_青
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_不透明度].joypad_down  = @ボタン_コンフィグ_オートモード_初期設定
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_不透明度].joypad_left  = @スライダー動作_コンフィグ_ウィンドウ背景_不透明度_下げる
	$stage.object[@スライダー_コンフィグ_ウィンドウ背景_不透明度].joypad_right = @スライダー動作_コンフィグ_ウィンドウ背景_不透明度_上げる
	
	$stage.object[@ボタン_コンフィグ_オートモード_初期設定].joypad_up    = @スライダー_コンフィグ_ウィンドウ背景_不透明度
	$stage.object[@ボタン_コンフィグ_オートモード_初期設定].joypad_down  = @ボタン_コンフィグ_オートモード_使用する
	$stage.object[@ボタン_コンフィグ_オートモード_初期設定].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_オートモード_初期設定].joypad_right = -1
	
	$stage.object[@ボタン_コンフィグ_オートモード_使用する].joypad_up    = @ボタン_コンフィグ_オートモード_初期設定
	$stage.object[@ボタン_コンフィグ_オートモード_使用する].joypad_down  = @スライダー_コンフィグ_オートモード_文字時間
	$stage.object[@ボタン_コンフィグ_オートモード_使用する].joypad_left  = -1
	$stage.object[@ボタン_コンフィグ_オートモード_使用する].joypad_right = -1
	
	$stage.object[@スライダー_コンフィグ_オートモード_文字時間].joypad_up    = @ボタン_コンフィグ_オートモード_使用する
	$stage.object[@スライダー_コンフィグ_オートモード_文字時間].joypad_down  = @スライダー_コンフィグ_オートモード_最小時間
	$stage.object[@スライダー_コンフィグ_オートモード_文字時間].joypad_left  = @スライダー動作_コンフィグ_オートモード_文字時間_下げる
	$stage.object[@スライダー_コンフィグ_オートモード_文字時間].joypad_right = @スライダー動作_コンフィグ_オートモード_文字時間_上げる
	
	$stage.object[@スライダー_コンフィグ_オートモード_最小時間].joypad_up    = @スライダー_コンフィグ_オートモード_文字時間
	$stage.object[@スライダー_コンフィグ_オートモード_最小時間].joypad_down  = @ボタン_フッター_コンフィグ
	$stage.object[@スライダー_コンフィグ_オートモード_最小時間].joypad_left  = @スライダー動作_コンフィグ_オートモード_最小時間_下げる
	$stage.object[@スライダー_コンフィグ_オートモード_最小時間].joypad_right = @スライダー動作_コンフィグ_オートモード_最小時間_上げる
	
	for( $i = @ボタン_フッター_セーブ, $i <= @ボタン_フッター_戻る, $i += 1 )
	{
		$stage.object[$i].joypad_up   = @スライダー_コンフィグ_オートモード_最小時間
		$stage.object[$i].joypad_down = @ボタン_コンフィグ_現在のタブ
	}
}
