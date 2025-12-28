//===========================================================================
//!
//!    @file     __sys_config_voice.ss
//!    @brief    コンフィグボイス設定シーン(システム側)
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

	#replace	<SAMPLE_VOICE_MAX>		3		// 設定できるサンプルボイスの最大数
	
	#property	$chara_list  : intlist	// キャラクターリスト
	#property	$koeno_list  : intlist	// 声番号リスト
	
	#property	$voice_list : intlist	// サンプルボイスリスト
	#property	$voice_index			// サンプルボイスインデックス
	#property	$select_btn				// 選択したボタン
	#property	$now_volume				// 現在の音量
	#property	$i

#inc_end

//---------------------------------------------------------------------------
// コンフィグボイス設定シーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready															// システムコールを準備する
$$create_config_voice_scene_object(excall.back)							// シーンオブジェクトを作成する
$$auto_joypad_navigation(@ボタン_コンフィグ_閉じる,						// 自動でジョイパッド時のボタン遷移先を設定する
						 @ボタン_コンフィグ_キャラクター２０音量 + 1)
$$set_config_voice_joypad_navigation(excall.back)						// 手動でジョイパッド時のボタン遷移先を設定する
$$show_config_voice_scene_object(excall.back)							// シーンオブジェクトを表示する

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
	for( $i = @ボタン_コンフィグ_キャラクター１音量, $i <= @ボタン_コンフィグ_キャラクター２０音量, $i += 2 )
	{
		// オブジェクトが表示されていない場合は処理をスキップする
		if( excall.front.object[$i].disp == 0 ) {
			continue
		}
		
		if( excall.front.object[$i].f_slider_on_value_changed )
		{
			// スライダーの値を取得する
			$now_volume = $$get_ui_slider_value(excall.front.object[$i])
			
			// 各スライダーの値を各音量に反映する
			syscom.set_charakoe_volume($$get_config_charakoe_from_btn_no($i), $now_volume)
		}
	}
	
	// ゲームパッドのキー入力の場合はスライダー増減処理を行う
	if( $select_btn <= @動作_コンフィグ_キャラクター１音量_下げる )
	{
		$$step_slider(excall.front, $$get_config_charakoe_btn_no_from_func_no($select_btn), ($select_btn * -1) % 2)
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
		if( $select_btn == $select_btn == @ボタン_フッター_セーブ || $select_btn == @ボタン_フッター_ロード || $select_btn == @ボタン_フッター_レコード )
		{
			return ($select_btn)
		}
	}
	
	// アプリケーション側の処理を更新する
	$$update_config_voice_scene_object(excall.front, $select_btn)
	
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
$$hide_config_voice_scene_object(excall.front)		// シーンオブジェクトを非表示にする

return ($select_btn)


//---------------------------------------------------------------------------
// コンフィグ設定を初期化する
//---------------------------------------------------------------------------
command $$system_settings_default
{
	property $i
	
	for( $i = 0, $i < $chara_list.get_size, $i += 1 ) {
		syscom.set_charakoe_volume_default($chara_list[$i])
	}
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するキャラクターを設定する
//---------------------------------------------------------------------------
command $$set_config_charakoe(property $regist_no, property $charakoe_no)
{
	$chara_list.resize($chara_list.get_size + 1)
	$chara_list[$chara_list.get_size - 1] = $regist_no
	
	$koeno_list.resize($koeno_list.get_size + 1)
	$koeno_list[$koeno_list.get_size - 1] = $charakoe_no
	
	$voice_list.resize($voice_list.get_size + <SAMPLE_VOICE_MAX>)
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するキャラクター最大数を取得する
//---------------------------------------------------------------------------
command $$get_config_charakoe_max : int
{
	return ($chara_list.get_size)
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するキャラクター音声の登録番号を取得する
//---------------------------------------------------------------------------
command $$get_config_charakoe(property $index) : int
{
	if( $chara_list.get_size == 0 )
	{
		@dm("__sys_config_voice.ss → $$get_config_charakoe\nコンフィグキャラクターボイスデータが作成されていません。\nインデックス : " + math.tostr($index) + "\nシーン開始命令か$$init_sceneを実行してください。\n処理をスキップします。")
		
		return (0)
	}
	
	return ($chara_list[$index])
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するキャラクター音声の声番号を取得する
//---------------------------------------------------------------------------
command $$get_config_charakoe_koe_no(property $index) : int
{
	if( $koeno_list.get_size == 0 )
	{
		@dm("__sys_config_voice.ss → $$get_config_charakoe_koe_no\nコンフィグキャラクターボイスデータが作成されていません。\nインデックス : " + math.tostr($index) + "\nシーン開始命令か$$init_sceneを実行してください。\n処理をスキップします。")
		
		return (0)
	}
	
	return ($koeno_list[$index])
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するボタン番号からキャラクター音声の登録番号を取得する
//---------------------------------------------------------------------------
command $$get_config_charakoe_from_btn_no(property $btn_no) : int
{
	if( $chara_list.get_size == 0 )
	{
		@dm("__sys_config_voice.ss → $$get_charakoe_from_btn_no\nコンフィグキャラクターボイスデータが作成されていません。\nボタン番号 : " + math.tostr($btn_no) + "\nシーン開始命令か$$init_sceneを実行してください。\n処理をスキップします。")
		
		return (0)
	}
	
	if( @キネティックシステム )
	{
		return ($chara_list[($btn_no - @ボタン_コンフィグ_キャラクター１音量) / 2])
	}
	else
	{
		return ($chara_list[($btn_no - @スライダー_コンフィグ_キャラクター１_音量) / 2])
	}
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用する動作番号からボタン番号を取得する
//---------------------------------------------------------------------------
command $$get_config_charakoe_btn_no_from_func_no(property $func_no) : int
{
	property $value
	
	if( @キネティックシステム )
	{
		$value = ($func_no * -1) + @動作_コンフィグ_キャラクター１音量_下げる
		$value = $value / 2
		
		return (@ボタン_コンフィグ_キャラクター１音量 + $value * 2)
	}
	else
	{
		$value = ($func_no * -1) + @スライダー動作_コンフィグ_キャラクター１音声_下げる
		$value = $value / 2
		
		return (@スライダー_コンフィグ_キャラクター１_音量 + $value * 2)
	}
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するサンプルボイスを設定する
//---------------------------------------------------------------------------
command $$set_config_charakoe_sample_voice(property $regist_no, property $voice_no)
{
	if( $voice_list.get_size == 0 )
	{
		@dm("__sys_config_voice.ss → $$set_config_charakoe_sample_voice\nコンフィグキャラクターボイスデータが作成されていません。\nキャラクター制御番号 : " + math.tostr($regist_no) + "\nシーン開始命令か$$init_sceneを実行してください。\n処理をスキップします。")
		
		return (0)
	}
	
	for( $i = 0, $i < <SAMPLE_VOICE_MAX>, $i += 1 )
	{
		if( $voice_list[($regist_no - 1) * <SAMPLE_VOICE_MAX> + $i] == 0 )
		{
			$voice_list[($regist_no - 1) * <SAMPLE_VOICE_MAX> + $i] = $voice_no
			
			return
		}
	}
	
	@dm("__sys_config_voice.ss → $$set_config_charakoe_sample_voice\nサンプルボイスの設定に失敗しました。\n一つのキャラクターに設定できるサンプルボイスの最大数は" + math.tostr(<SAMPLE_VOICE_MAX>) + "です。\n処理をスキップします。")
}

//---------------------------------------------------------------------------
// コンフィグのキャラクター音量設定で使用するサンプルボイスを取得する
//---------------------------------------------------------------------------
command $$get_config_charakoe_sample_voice(property $index) : int
{
	property $voice_no
	
	if( $voice_list.get_size == 0 )
	{
		@dm("__sys_config_voice.ss → $$get_config_charakoe_sample_voice\nコンフィグキャラクターボイスデータが作成されていません。\nインデックス : " + math.tostr($index) + "\nシーン開始命令か$$init_sceneを実行してください。\n処理をスキップします。")
		
		return (0)
	}
	
	$voice_no = $voice_list[$index * <SAMPLE_VOICE_MAX> + $voice_index]
	
	$voice_index += 1
	if( <SAMPLE_VOICE_MAX> <= $voice_index ) {
		$voice_index = 0
	}
	
	return ($voice_no)
}

//---------------------------------------------------------------------------
// ボイス設定シーンで使用するキャラクター音量スライダーを作成する
//---------------------------------------------------------------------------
command $$create_config_voice_character_slider(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	property $charakoe
	
	// キャラクター音声の登録番号を取得する
	$charakoe = $$get_config_charakoe_from_btn_no($button_no)
	
	// スライダーを作成する
	$$create_ui_slider($obj, $filename, $x, $y, $button_no, $button_no + 1, $button_group_no, $button_se_no, $overlay_x, $overlay_y, <SLIDER_DIRECTION_LR>, syscom.get_charakoe_volume($charakoe), 0, 255)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	property $value
	
	for( $i = @ボタン_コンフィグ_キャラクター１音量, $i <= @ボタン_コンフィグ_キャラクター２０音量, $i += 2 )
	{
		// ＵＩとして作成されていないオブジェクトは処理を行わない
		if( $stage.object[$i].f.get_size == 0 ) {
			continue
		}
		
		// スライダーの描画を更新する
		$$update_ui_slider($stage.object[$i], syscom.get_charakoe_volume($$get_config_charakoe_from_btn_no($i)))
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
	case(0)		$slider_limit = $$next_step_ui_slider($stage.object[$btn_no])
	case(1)		$slider_limit = $$prev_step_ui_slider($stage.object[$btn_no])
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
	syscom.set_charakoe_volume($$get_config_charakoe_from_btn_no($btn_no), $value)
	
	// スライダーの描画を更新する
	$$update_ui_slider($stage.object[$btn_no], $value)
}
