//===========================================================================
//!
//!    @file     __sys_config_sound.ss
//!    @brief    コンフィグ音量設定シーン(システム側)
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
	#property	$now_volume		// 現在の音量
	#property	$i

#inc_end

//---------------------------------------------------------------------------
// コンフィグ音量設定シーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready														// システムコールを準備する
$$create_config_sound_scene_object(excall.back)						// シーンオブジェクトを作成する
if( @キネティックシステム ) {
	$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,				// 自動でジョイパッド時のボタン遷移先を設定する
							 @ボタン_コンフィグ_ムービー音量 + 1)
} else {
	$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,				// 自動でジョイパッド時のボタン遷移先を設定する
							 @コンフィグ_最大)
}
farcall(__sys_config)
$$set_config_sound_joypad_navigation(excall.back)					// 手動でジョイパッド時のボタン遷移先を設定する
$$show_config_sound_scene_object(excall.back)						// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_コンフィグ_閉じる
	}
	
	// 初期設定に戻すボタンが押された場合はすべての音量をデフォルトにする
	if( $select_btn == @ボタン_コンフィグ_初期設定に戻す )
	{
		// コンフィグ設定を初期化選択時にダイアログ表示を有効の場合は確認ダイアログを呼び出す
		if( __SELECT_DEFAULT_OPEN_DIALOG )
		{
			if( $$call_yesno_dialog(@確認ダイアログ_モード_初期設定に戻す) )
			{
				// はいが選択された場合は初期設定に戻す
				$$system_settings_default
			}
		}
		else
		{
			// 初期設定に戻す
			$$system_settings_default
		}
		
		$$update_scene_object(excall.front)			// シーンオブジェクトの描画を更新する
		$$set_joypad_focus_button($select_btn)		// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		
		// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
		if( syscom.check_joypad_mode == 0 ) {
			$$update_joypad_focus_button(excall.front)
		}
	}
	
	// マウスでスライダーを押している場合
	for( $i = @ボタン_コンフィグ_マスター音量, $i <= @ボタン_コンフィグ_ムービー音量, $i += 2 )
	{
		if( excall.front.object[$i].f.get_size == 0 ) {
			continue
		}
		
		if( excall.front.object[$i].f_slider_on_value_changed )
		{
			// スライダーの値を取得する
			$now_volume = $$get_ui_slider_value(excall.front.object[$i])
			
			// 各スライダーの値を各音量に反映する
			switch( $i ) {
			case(@ボタン_コンフィグ_マスター音量)			syscom.set_all_volume($now_volume)
			case(@ボタン_コンフィグ_ＢＧＭ音量)				syscom.set_bgm_volume($now_volume)
			case(@ボタン_コンフィグ_ＢＧＭフェード音量)		syscom.set_bgmfade_volume($now_volume)
			case(@ボタン_コンフィグ_ボイス音量)				syscom.set_koe_volume($now_volume)
			case(@ボタン_コンフィグ_ＳＥ音量)				syscom.set_pcm_volume($now_volume)
			case(@ボタン_コンフィグ_システムＳＥ音量)		syscom.set_se_volume($now_volume)
			case(@ボタン_コンフィグ_ムービー音量)			syscom.set_mov_volume($now_volume)
			}
		}
	}
	
	// ゲームパッドのキー入力の場合
	switch( $select_btn ) {
	case(@動作_コンフィグ_マスター音量_下げる)			$$step_slider(excall.front, @ボタン_コンフィグ_マスター音量, 0)
	case(@動作_コンフィグ_マスター音量_上げる)			$$step_slider(excall.front, @ボタン_コンフィグ_マスター音量, 1)
	case(@動作_コンフィグ_ＢＧＭ音量_下げる)			$$step_slider(excall.front, @ボタン_コンフィグ_ＢＧＭ音量, 0)
	case(@動作_コンフィグ_ＢＧＭ音量_上げる)			$$step_slider(excall.front, @ボタン_コンフィグ_ＢＧＭ音量, 1)
	case(@動作_コンフィグ_ＢＧＭフェード音量_下げる)	$$step_slider(excall.front, @ボタン_コンフィグ_ＢＧＭフェード音量, 0)
	case(@動作_コンフィグ_ＢＧＭフェード音量_上げる)	$$step_slider(excall.front, @ボタン_コンフィグ_ＢＧＭフェード音量, 1)
	case(@動作_コンフィグ_ボイス音量_下げる)			$$step_slider(excall.front, @ボタン_コンフィグ_ボイス音量, 0)
	case(@動作_コンフィグ_ボイス音量_上げる)			$$step_slider(excall.front, @ボタン_コンフィグ_ボイス音量, 1)
	case(@動作_コンフィグ_ＳＥ音量_下げる)				$$step_slider(excall.front, @ボタン_コンフィグ_ＳＥ音量, 0)
	case(@動作_コンフィグ_ＳＥ音量_上げる)				$$step_slider(excall.front, @ボタン_コンフィグ_ＳＥ音量, 1)
	case(@動作_コンフィグ_システムＳＥ音量_下げる)		$$step_slider(excall.front, @ボタン_コンフィグ_システムＳＥ音量, 0)
	case(@動作_コンフィグ_システムＳＥ音量_上げる)		$$step_slider(excall.front, @ボタン_コンフィグ_システムＳＥ音量, 1)
	case(@動作_コンフィグ_ムービー音量_下げる)			$$step_slider(excall.front, @ボタン_コンフィグ_ムービー音量, 0)
	case(@動作_コンフィグ_ムービー音量_上げる)			$$step_slider(excall.front, @ボタン_コンフィグ_ムービー音量, 1)
	}
	
	if( @フルプライスシステム )
	{
		// コンフィグ／多機能版を更新する
		$select_btn = $$update_config_ex($select_btn)
		
		// Ｌ１／Ｒ１ボタンでヘッダーのページ送りをする
		// ※ Ｌ１／Ｒ１両方押している処理しないようにする ※
		if( joypad.key[<JOYPAD_L1>].is_down == 0 || joypad.key[<JOYPAD_R1>].is_down == 0 )
		{
			// Ｌ１ボタンを押した場合
			if( $$joypad_on_down(<JOYPAD_L1>) )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				$select_btn = @ボタン_コンフィグ_ヘッダー_テキスト
			}
			
			// Ｒ１ボタンを押した場合
			elseif( $$joypad_on_down(<JOYPAD_R1>) )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				$select_btn = @ボタン_コンフィグ_ヘッダー_システム
			}
		}
		
		// モードセレクト／多機能版
		switch( $select_btn ) {
		case(@ボタン_コンフィグ_ヘッダー_システム)
			
			$$set_prev_config_mode(<CONFIG_MODE>)	// 現在のモードを保存
			<CONFIG_MODE> = 0						// 新しいモードを設定
			$$off_system_front_wipe_copy_all		// ワイプコピーをオフにする
			jump(__sys_config_system)				// 選択したモードへ
			
		case(@ボタン_コンフィグ_ヘッダー_テキスト)
			
			$$set_prev_config_mode(<CONFIG_MODE>)	// 現在のモードを保存
			<CONFIG_MODE> = 1						// 新しいモードを設定
			$$off_system_front_wipe_copy_all		// ワイプコピーをオフにする
			jump(__sys_config_text)					// 選択したモードへ
			
		case(@ボタン_コンフィグ_ヘッダー_サウンド)
			
			$$set_prev_config_mode(<CONFIG_MODE>)	// 現在のモードを保存
			<CONFIG_MODE> = 2						// 新しいモードを設定
			$$off_system_front_wipe_copy_all		// ワイプコピーをオフにする
			jump(__sys_config_sound)				// 選択したモードへ
		}
	}
	
	// フッターの入力処理を更新する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		$select_btn = $$update_footer_input(excall.front, $select_btn, @ボタン_フッター_コンフィグ)
		
		// 戻るボタンが押された場合は終了する
		if( $select_btn == @ボタン_フッター_戻る )
		{
			$select_btn = @ボタン_コンフィグ_閉じる
		}
		
		// 各画面遷移ボタンが押されている場合はそのまま戻る
		if( $select_btn == @ボタン_フッター_セーブ || $select_btn == @ボタン_フッター_ロード || $select_btn == @ボタン_フッター_レコード )
		{
			return ($select_btn)
		}
	}
	
	// アプリケーション側の処理を更新する
	$$update_config_sound_scene_object(excall.front, $select_btn)
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_コンフィグ_閉じる ) {
		break
	}
	
	// 何らかのボタンが押されている場合
	if( $select_btn != -2 ) {
		$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)	// 入力制御を再開始する
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// コンフィグのモード選択シーンが有効の場合はモード選択オブジェクトを構成する
if( __CONFIG_MODE_SELECT_SCENE == 1 ) {
	$$build_config_mode_select_scene(excall.back)
}

$$off_system_front_wipe_copy_all					// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_config_sound_scene_object(excall.front)		// シーンオブジェクトを非表示にする

return ($select_btn)


//---------------------------------------------------------------------------
// コンフィグ設定を初期化する
//---------------------------------------------------------------------------
command $$system_settings_default
{
	syscom.set_all_volume_default
	syscom.set_bgm_volume_default
	syscom.set_bgmfade_volume_default
	syscom.set_koe_volume_default
	syscom.set_pcm_volume_default
	syscom.set_se_volume_default
	syscom.set_mov_volume_default
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するマスター音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_master_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_all_volume, 0, 255)
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するＢＧＭ音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_bgm_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_bgm_volume, 0, 255)
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するＢＧＭフェード音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_bgm_fade_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_bgmfade_volume, 0, 255)
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するボイス音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_voice_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_koe_volume, 0, 255)
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するＳＥ音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_se_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_pcm_volume, 0, 255)
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するシステムＳＥ音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_system_se_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_se_volume, 0, 255)
}

//---------------------------------------------------------------------------
// 音量設定シーンで使用するムービー音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_sound_movie_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_mov_volume, 0, 255)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	property $value
	
	for( $i = @ボタン_コンフィグ_マスター音量, $i <= @ボタン_コンフィグ_ムービー音量, $i += 2 )
	{
		// ＵＩとして作成されていないオブジェクトは処理を行わない
		if( $stage.object[$i].f.get_size == 0 ) {
			continue
		}
		
		switch( $i ) {
		case(@ボタン_コンフィグ_マスター音量)			$value = syscom.get_all_volume
		case(@ボタン_コンフィグ_ＢＧＭ音量)				$value = syscom.get_bgm_volume
		case(@ボタン_コンフィグ_ＢＧＭフェード音量)		$value = syscom.get_bgmfade_volume
		case(@ボタン_コンフィグ_ボイス音量)				$value = syscom.get_koe_volume
		case(@ボタン_コンフィグ_ＳＥ音量)				$value = syscom.get_pcm_volume
		case(@ボタン_コンフィグ_システムＳＥ音量)		$value = syscom.get_se_volume
		case(@ボタン_コンフィグ_ムービー音量)			$value = syscom.get_mov_volume
		}
		
		// スライダーの描画を更新する
		$$update_ui_slider($stage.object[$i], $value)
	}
}

//---------------------------------------------------------------------------
// スライダーのステップ処理を行う
//---------------------------------------------------------------------------
command $$step_slider(property $stage : stage, property $btn_no, property $step_direction)
{
	property $value
	property $slider_limit
	
	// 指定方向によってスライダーの増減処理を変更する
	switch( $step_direction ) {
	case(0)		$slider_limit = $$prev_step_ui_slider($stage.object[$btn_no])
	case(1)		$slider_limit = $$next_step_ui_slider($stage.object[$btn_no])
	}
	
	// スライダーの増減処理が限界だった場合
	if( $slider_limit )
	{
		// キャンセル音を再生する
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
	}
	else
	{
		// 決定音を再生する
		se.play_by_se_no(<BUTTON_SE_DECIDE>)
	}
	
	// スライダーの現在値を取得する
	$value = $$get_ui_slider_value($stage.object[$btn_no])
	
	// 値を各音量に設定する
	switch( $btn_no ) {
	case(@ボタン_コンフィグ_マスター音量)			syscom.set_all_volume($value)
	case(@ボタン_コンフィグ_ＢＧＭ音量)				syscom.set_bgm_volume($value)
	case(@ボタン_コンフィグ_ＢＧＭフェード音量)		syscom.set_bgmfade_volume($value)
	case(@ボタン_コンフィグ_ボイス音量)				syscom.set_koe_volume($value)
	case(@ボタン_コンフィグ_ＳＥ音量)				syscom.set_pcm_volume($value)
	case(@ボタン_コンフィグ_システムＳＥ音量)		syscom.set_se_volume($value)
	case(@ボタン_コンフィグ_ムービー音量)			syscom.set_mov_volume($value)
	}
	
	// スライダーの描画を更新する
	$$update_ui_slider($stage.object[$btn_no], $value)
}
