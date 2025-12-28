//===========================================================================
//!
//!    @file     _extra_sound.ss
//!    @brief    サウンド鑑賞シーン
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start

	#property	$select_btn		// 選択したボタン
	
	// ＢＧＭリスト
	#property	$music_list : strlist[@エクストラ_サウンド_登録ＢＧＭ最大数]
	
	#property	$play_index			// 再生中のＢＧＭインデックス
	#property	$is_play			// ＢＧＭを再生中かどうか
	#property	$is_pause			// ＢＧＭを一時停止中かどうか
	#property	$music_list_max		// ＢＧＭリストに登録されているＢＧＭの数

#inc_end

//---------------------------------------------------------------------------
// サウンド鑑賞シーン開始
//---------------------------------------------------------------------------
#z00

$$init_scene_data														// シーンデータを初期化する
$$create_extra_sound_scene_object(excall.back)							// シーンオブジェクトを作成する
$$update_scene_object(excall.back)										// シーンオブジェクトの描画を更新する
$$auto_joypad_navigation(@ボタン_エクストラ_サウンド_閉じる,			// 自動でジョイパッド時のボタン遷移先を設定する
						 @ボタン_エクストラ_サウンド_サムネイル最大)
$$set_extra_sound_joypad_navigation(excall.back)						// 手動でジョイパッド時のボタン遷移先を設定する
$$set_joypad_focus_button_default(excall.back)							// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$show_extra_sound_scene_object(excall.back)							// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_エクストラ_サウンド_閉じる
	}
	
	// ＢＧＭボタンが押された場合はＢＧＭを再生する
	if( @ボタン_エクストラ_サウンド_サムネイル <= $select_btn && $select_btn <= @ボタン_エクストラ_サウンド_サムネイル最大 )
	{
		$$play_music($select_btn - @ボタン_エクストラ_サウンド_サムネイル)
	}
	
	// 再生ボタンが押された場合はＢＧＭを再生する
	if( $select_btn == @ボタン_エクストラ_サウンド_再生 )
	{
		// 再生中の場合は一時停止処理を行う
		if( $is_play )
		{
			// 一時停止中の場合は再開する
			if( $is_pause )
			{
				@bgm_resume(500)
				$is_pause = 0
			}
			else
			{
				// 一時停止中でない場合は一時停止をする
				@bgm_pause(500)
				$is_pause = 1
			}
		}
		else
		{
			// 再生中でない場合は再生をする
			$$play_music($play_index)
		}
	}
	
	// 停止ボタンが押された場合はＢＧＭを停止する
	if( $select_btn == @ボタン_エクストラ_サウンド_停止 ) {
		$is_play = 0
		@bgm_stop
	}
	
	// 前へボタンが押された場合は前のＢＧＭを再生する
	if( $select_btn == @ボタン_エクストラ_サウンド_前へ ) {
		$$prev_music
	}
	
	// 次へボタンが押された場合は次のＢＧＭを再生する
	if( $select_btn == @ボタン_エクストラ_サウンド_次へ ) {
		$$next_music
	}
	
	// ジョイパッド操作時、ボタンの選択が分かるように少しウェイトを入れる
	if( $select_btn == @ボタン_エクストラ_サウンド_再生 || $select_btn == @ボタン_エクストラ_サウンド_停止 || $select_btn == @ボタン_エクストラ_サウンド_前へ || $select_btn == @ボタン_エクストラ_サウンド_次へ )
	{
		if( syscom.check_joypad_mode == 1 ) {
			timewait_key(150)
		}
	}
	
	// 何らかのボタンが押されている場合
	if( $select_btn != -2 )
	{
		$$update_scene_object(excall.front)						// 描画を更新する
		$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)	// 入力制御を再開始する
	}
	
	// アプリケーション側の処理を更新する
	$$update_extra_sound_scene_object(excall.front, $select_btn)
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_エクストラ_サウンド_閉じる ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// エクストラのモード選択シーンが有効の場合はモード選択オブジェクトを構成する
if( __EXTRA_MODE_SELECT_SCENE == 1 ) {
	$$build_extra_mode_select_scene(excall.back)
}

$$off_system_front_wipe_copy_all				// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_extra_sound_scene_object(excall.front)	// シーンオブジェクトを非表示にする

return


//---------------------------------------------------------------------------
// サウンド鑑賞シーンで再生するＢＧＭを設定する
//---------------------------------------------------------------------------
command $$set_extra_music(property $bgm_index, property $bgm_name : str)
{
	$music_list[$bgm_index - 1] = $bgm_name
}

//---------------------------------------------------------------------------
// サウンド鑑賞シーンで再生するＢＧＭを取得する
//---------------------------------------------------------------------------
command $$get_extra_music(property $bgm_index) : str
{
	return ($music_list[$bgm_index])
}

//---------------------------------------------------------------------------
// サウンド鑑賞シーンで再生するＢＧＭ数を取得する
//---------------------------------------------------------------------------
command $$get_extra_music_cnt : int
{
	return ($music_list.get_size)
}

//---------------------------------------------------------------------------
// シーンデータを初期化する
//---------------------------------------------------------------------------
command $$init_scene_data
{
	property $i
	
	for( $i = 0, $i < @エクストラ_サウンド_登録ＢＧＭ最大数, $i += 1 )
	{
		// 再生中のＢＧＭインデックスを取得する
		if( bgm.get_regist_name != "" )
		{
			if( $music_list[$i] == bgm.get_regist_name )
			{
				$play_index = $i
				$is_play = 1
			}
		}
		
		// ＢＧＭリストに登録されているＢＧＭの数を取得する
		if( $music_list[$i] == "" )
		{
			$music_list_max = $i
			
			break
		}
	}
}

//---------------------------------------------------------------------------
// ＢＧＭを再生する
//---------------------------------------------------------------------------
command $$play_music(property $bgm_index)
{
	// 少し待つ
	timewait(250)
	
	// システム効果音を停止する
	se.stop(100)
	
	$play_index = $bgm_index
	$is_play = 1
	$is_pause = 0
	
	if( $music_list[$play_index] == "" ) {
		@dm("_extra_sound.ss → $$play_music\nＢＧＭリストに登録されていないＢＧＭが再生されました。\n再生ボタン番号 : " + math.tostr($play_index + 1) + "\n処理をスキップします。")
	}
	
	bgm.play($music_list[$play_index])
}

//---------------------------------------------------------------------------
// 前のＢＧＭを再生する
//---------------------------------------------------------------------------
command $$prev_music
{
	while( 1 )
	{
		$play_index -= 1
		
		if( $play_index < 0 ) {
			$play_index = $music_list_max - 1
		}
		
		if( bgmtable.get_listen_by_name($music_list[$play_index]) == 1 )
		{
			break
		}
	}
	
	$$play_music($play_index)
}

//---------------------------------------------------------------------------
// 次のＢＧＭを再生する
//---------------------------------------------------------------------------
command $$next_music
{
	while( 1 )
	{
		$play_index += 1
		
		if( $play_index > $music_list_max - 1 ) {
			$play_index = 0
		}
		
		if( bgmtable.get_listen_by_name($music_list[$play_index]) == 1 )
		{
			break
		}
	}
	
	$$play_music($play_index)
}

//---------------------------------------------------------------------------
// サウンド鑑賞シーンで使用する再生ボタンを作成する
//---------------------------------------------------------------------------
command $$create_extra_sound_play_button(property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	// トグルボタンを作成する
	$$create_ui_toggle_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no, $is_play)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	
	// ＢＧＭボタンの描画更新
	for( $i = 0, $i < @エクストラ_サウンド_登録ＢＧＭ最大数, $i += 1 )
	{
		// ＢＧＭ設定されていない場合は処理を終了する
		if( $music_list[$i] == "" ) {
			break
		}
		
		// ＢＧＭを聴いていない場合は選択不可にする
		if( bgmtable.get_listen_by_name($music_list[$i]) == 0 )
		{
			$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].set_button_state_disable
		}
		
		// 再生中のＢＧＭボタンは選択状態にする
		elseif( $music_list[$i] == bgm.get_regist_name )
		{
			$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].set_button_state_select
		}
		else
		{
			// 再生中でないＢＧＭボタンは通常状態に戻す
			$stage.object[@ボタン_エクストラ_サウンド_サムネイル + $i].set_button_state_normal
		}
	}
	
	// 曲情報を更新する
	$stage.object[1].patno = $play_index
	
	// 再生ボタンを更新する
	if( $is_pause )
	{
		// 一時停止中の場合は再生ボタンにする
		$$update_ui_toggle_button($stage.object[@ボタン_エクストラ_サウンド_再生], 0)
	}
	else
	{
		// 一時停止中でない場合は再生中かどうかで一時停止ボタンか再生ボタンにする
		$$update_ui_toggle_button($stage.object[@ボタン_エクストラ_サウンド_再生], $is_play)
	}
	
	// ＢＧＭが再生中の場合
	if( $is_play == 1 )
	{
		$stage.object[@ボタン_エクストラ_サウンド_停止].set_button_state_normal		// 停止ボタンを選択不可にする
	}
	else
	{
		$stage.object[@ボタン_エクストラ_サウンド_停止].set_button_state_disable	// 停止ボタンを通常状態にする
	}
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 先頭のサムネイルボタンをデフォルトにする
	$$set_joypad_focus_button(@ボタン_エクストラ_サウンド_サムネイル)
}
