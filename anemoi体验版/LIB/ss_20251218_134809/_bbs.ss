//===========================================================================
//!
//!    @file     _bbs.ss
//!    @brief    掲示板シーン
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     掲示板システムの制御
//!
//!              掲示板フロー
//!              ①掲示板画面で依頼書を選択
//!              ②依頼書を選択したシナリオへ(依頼を見た主人公の一言など)
//!              ③依頼書画面で依頼を受ける選択→はい／いいえ
//!              ④"はい"の場合は依頼を受けたシナリオへ
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start
	
	// 最大数
	#replace	@掲示板_依頼書最大数					11
	
	// 掲示板／イメージ／ボタン
	#replace	@イメージ_掲示板_背景					5
	#replace	@イメージ_掲示板_フッター				6
	#replace	@イメージ_掲示板_オーバーレイ			7
	#replace	@イメージ_掲示板_ポインタ				8
	#replace	@ボタン_掲示板_セーブ					11
	#replace	@ボタン_掲示板_ロード					12
	#replace	@ボタン_掲示板_コンフィグ				13
	#replace	@ボタン_掲示板_レコード					14
	#replace	@ボタン_掲示板_前の選択肢に戻る			15
	#replace	@ボタン_掲示板_タイトルに戻る			16
	#replace	@ボタン_掲示板_ゲームを終了する			17
	#replace	@ボタン_掲示板_ＵＭＡレース				20
	#replace	@ボタン_掲示板_ヘビヘビパニック			21
	#replace	@ボタン_掲示板_依頼書					22
	#define		@ボタン_掲示板_依頼書最大				(@ボタン_掲示板_依頼書 + @掲示板_依頼書最大数)
	#replace	@デバッグボタン_掲示板_何もしない		50
	
	#define		@ボタン_現在選択している_依頼書			$bbs_select_btn_only_request
	
	// 依頼書／イメージ／ボタン
	#define		@イメージ_依頼書_フィルター				(<OBJ_MODAL> + 0)
	#define		@イメージ_依頼書_詳細					(<OBJ_MODAL> + 1)
	#define		@イメージ_依頼書_ダイアログ背景			(<OBJ_MODAL> + 2)
	#define		@ボタン_依頼書_受ける					(<OBJ_MODAL> + 3)
	#define		@ボタン_依頼書_受けない					(<OBJ_MODAL> + 4)
	
	// 選択したボタン
	#property	$bbs_select_btn							// 掲示板で選択しているボタン
	#property	$bbs_select_btn_only_request			// 選択しているボタン（依頼書ボタンのみ）
	#property	$request_select_btn						// 依頼書詳細で選択しているボタン
	
	// 各依頼書データ
	#property	$request_thumb         : strlist		// 依頼書サムネイルファイル
	#property	$request_info_image    : strlist		// 依頼書詳細ファイル
	#property	$request_character     : intlist		// 依頼書を出したキャラクター
	#property	$request_time          : intlist		// 依頼書にかける時間(0=半日／1=一日)
	#property	$request_select_file   : strlist		// 依頼書を選択したときに実行するファイル名
	#property	$request_select_label  : intlist		// 依頼書を選択したときに実行するラベル名
	#property	$request_select_readed : intlist		// 依頼書を選択したときに遷移するシナリオファイルを読んでいるかどうか
	#property	$request_receive_file  : strlist		// 依頼書を受けたときに実行するファイル名
	#property	$request_receive_label : intlist		// 依頼書を受けたときに実行するラベル名
	
	// 選択依頼書データ
	#property	$select_request_no						// 選択した依頼書番号
	#property	$request_receive_flag					// 依頼を受ける選択をしたフラグ
	
	// アニメーション制御用
	#property	$anim_request_count						// 依頼書の数
	
	// フレームアクション
	#replace	<FRAME_ACTION_CH_MSGBK>			4		// メッセージバック監視
	
	// フラグ管理
	#property	$msgbk_open_flag						// メッセージバック開いているか
	#property	$joypad_focus_button_old				// フォーカスボタン
	#property	$joypad_mode_old						// ゲームパッドモード
	#property	$read_skip_flag							// 既読スキップフラグ
	#property	$auto_skip_flag							// 未読スキップフラグ
	
#inc_end

//---------------------------------------------------------------------------
// 掲示板シーン開始
//---------------------------------------------------------------------------
#z00

// 既読／未読スキップフラグをオフにする
$read_skip_flag = syscom.get_read_skip_onoff_flag
$auto_skip_flag = syscom.get_auto_skip_onoff_flag
syscom.set_read_skip_onoff_flag(0)
syscom.set_auto_skip_onoff_flag(0)

savepoint					// セーブポイントを設定する
stack_selpoint				// 選択肢ポイントを記憶しておく
@選択肢マーカー				// バックログに選択肢画像を挿入する
$$menu_control_enabled		// メニュー画面でのユーザー制御を設定する
$$init_scene				// スクリプトシステムの初期化

// 掲示板シーンループポイント
#bbs_enter_loop

@se(SE_door_open_meguriai)					// 巡りあい入店効果音
@bg_zoom(bg002, 100, 1000, 1250, 2000, 2)	// 巡りあい背景ズーム
@bgm(bgm11)									// ＢＧＭ再生

// ジョイパッドモードを許可する
script.set_allow_joypad_mode_onoff(1)

// マウスカーソルを変更する
script.set_cursor_no(1)

$$create_bbs_scene_object(back)		// 掲示板シーンオブジェクトを作成する
$$show_bbs_scene_object(back)		// 掲示板シーンオブジェクトを表示する

// メッセージバック監視
frame_action_ch[<FRAME_ACTION_CH_MSGBK>].start(-1, "$$fa_msgbk_check")

// 入力制御を開始する
$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)

// 掲示板シーン入力ループポイント
#bbs_input_loop

while(1)
{
	// 入力制御を更新する
	$bbs_select_btn = $$input_update(front, <OBJBTN_GROUP_NO_SELECT>)
	
	// キャンセルは何も押していないとして処理する
	if( $bbs_select_btn == -1 )
	{
		$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
		$bbs_select_btn = -2
	}
	
	// システムボタン(確認ダイアログが発生しない)が選択された場合
	if( @ボタン_掲示板_セーブ <= $bbs_select_btn &&  $bbs_select_btn <= @ボタン_掲示板_レコード )
	{
		// マウスカーソルを戻す
		script.set_cursor_no(0)
		
		// ジョイパッドモードの許可をデフォルトに戻す
		script.set_allow_joypad_mode_onoff_default
		
		// それぞれの処理を行う
		switch( $bbs_select_btn ) {
		case(@ボタン_掲示板_セーブ)				syscom.call_save_menu			// セーブ画面へ
		case(@ボタン_掲示板_ロード)				syscom.call_load_menu			// ロード画面へ
		case(@ボタン_掲示板_コンフィグ)			syscom.call_config_menu			// コンフィグ画面へ
		case(@ボタン_掲示板_レコード)			syscom.call_ex(__sys_record)	// レコード画面へ
		}
		
		// マウスカーソルを変更する
		script.set_cursor_no(1)
		
		// ジョイパッドモードを許可する
		script.set_allow_joypad_mode_onoff(1)
		
		// 選択されたボタンを元の状態に戻す
		front.object[$bbs_select_btn].set_button_state_normal
		
		$$set_joypad_focus_button($bbs_select_btn)	// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		$$update_joypad_focus_button(front)			// 選択されたボタンの描画を更新する
	}
	
	// システムボタン(確認ダイアログが発生する)が選択された場合
	if( @ボタン_掲示板_前の選択肢に戻る <= $bbs_select_btn && $bbs_select_btn <= @ボタン_掲示板_ゲームを終了する )
	{
		// マウスカーソルを戻す
		script.set_cursor_no(0)
		
		// excallを行わないのでジョイパッドモードでない場合は選択されたボタンを選択状態にする
		if( syscom.check_joypad_mode == 0 ) {
			front.object[$bbs_select_btn].set_button_state_select
		}
		
		switch( $bbs_select_btn ) {
		case(@ボタン_掲示板_前の選択肢に戻る)	$$call_yesno_dialog(@確認ダイアログ_モード_前の選択肢に戻る)	// 前の選択肢に戻る確認ダイアログへ
		case(@ボタン_掲示板_タイトルに戻る)		$$call_yesno_dialog(@確認ダイアログ_モード_タイトルに戻る)		// タイトルに戻る確認ダイアログへ
		case(@ボタン_掲示板_ゲームを終了する)	$$call_yesno_dialog(@確認ダイアログ_モード_ゲームを終了する)	// ゲームを終了する確認ダイアログへ
		}
		
		// マウスカーソルを変更する
		script.set_cursor_no(1)
		
		// 選択されたボタンを元の状態に戻す
		front.object[$bbs_select_btn].set_button_state_normal
		
		$$set_joypad_focus_button($bbs_select_btn)	// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		$$update_joypad_focus_button(front)			// 選択されたボタンの描画を更新する
	}
	
	$$hit_animation
	$joypad_mode_old = syscom.check_joypad_mode
	
	// ゲームパッドの場合はポインタの表示をオンにする
	front.object[@イメージ_掲示板_ポインタ].disp = syscom.check_joypad_mode
	if( $$get_joypad_focus_button < @ボタン_掲示板_依頼書 || @ボタン_掲示板_依頼書最大 < $$get_joypad_focus_button ) {
		front.object[@イメージ_掲示板_ポインタ].disp = 0
	}
	
	// 依頼書ボタンが選択された場合
	if( @ボタン_掲示板_依頼書 <= $bbs_select_btn && $bbs_select_btn <= @ボタン_掲示板_依頼書最大 )
	{
		// 依頼書番号を設定する
		$select_request_no = $bbs_select_btn - @ボタン_掲示板_依頼書
		
		// 依頼書確認シーンへ
		goto #request_info
	}
	
	// ＵＭＡレースボタンが選択された場合
	#ifdef @TRIAL
	#else
	
	if( $bbs_select_btn == @ボタン_掲示板_ＵＭＡレース )
	{
		$$set_front_wipe_copy_all(0)
		
		farcall(___mng_urace)
		
		if( @日付_日 == <URACE_ENTRY_DATE> && @日付_時間帯 == @午前 )
		{
			// ＵＭＡレース参加日は必ず掲示板を終了する
			goto #end
		}
		
		if( $$get_urace_played_race_in_bbs == 0 )
		{
			// レースに参加していない場合は掲示板での選択が可能
			goto #bbs_enter_loop
		}
		elseif( $$get_urace_played_race_in_bbs == -1 )
		{
			// デバッグ用：ＵＭＡ掲示板で何もしないを選択した場合
			$bbs_select_btn = @デバッグボタン_掲示板_何もしない
		}
		else
		{
			// レースに参加している場合は掲示板を終了する
			goto #end
		}
	}
	
	// ヘビヘビパニックが選択された場合
	if( $bbs_select_btn == @ボタン_掲示板_ヘビヘビパニック )
	{
		$$set_front_wipe_copy_all(0)
		
		farcall(___mng_hhp)
		
		goto #end
	}
	
	// デバッグ（何もしないで終了）ボタンが選択された場合
	if( $bbs_select_btn == @デバッグボタン_掲示板_何もしない )
	{
		$$set_front_wipe_copy_all(0)
		
		goto #end
	}
	
	#endif
	
	// 何かのボタンが押された場合はボタンの選択状態をリセットして入力制御を開始する
	if( $bbs_select_btn != -2 )
	{
		$bbs_select_btn = -2
		$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
	}
	
	// 何も押していないときは画面の更新のみ
	if( $bbs_select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// 依頼書確認シーン開始
#request_info

$$create_request_scene_object(back)			// 依頼書確認シーンオブジェクトを作成する
$$show_request_scene_object(back)			// 依頼書確認シーンオブジェクトを表示する

// 依頼書選択シナリオを読んでいない場合は各シナリオへ
if( $request_select_readed[$select_request_no] == 0 && $request_select_file[$select_request_no] != "" )
{
	timewait_key(500)		// 時間待ち

	// メニュー画面でのユーザー制御を解除する
	$$menu_control_disabled
	
	// セーブポイントは設定しない
	script.set_auto_savepoint_off
	
	// 既読／未読スキップフラグを元に戻す
	syscom.set_read_skip_onoff_flag($read_skip_flag)
	syscom.set_auto_skip_onoff_flag($auto_skip_flag)
	
	// 依頼書選択シナリオに遷移する
	farcall($request_select_file[$select_request_no], $request_select_label[$select_request_no])

	// 既読／未読スキップフラグをオフにする
	$read_skip_flag = syscom.get_read_skip_onoff_flag
	$auto_skip_flag = syscom.get_auto_skip_onoff_flag
	syscom.set_read_skip_onoff_flag(0)
	syscom.set_auto_skip_onoff_flag(0)
	
	close
	
	// メニュー画面でのユーザー制御を設定する
	$$menu_control_enabled
	
	// 依頼書選択シナリオを読んだフラグをオンにする
	$request_select_readed[$select_request_no] = 1
}

// 依頼を受ける／受けないダイアログオブジェクトを表示する
$$show_request_dialog_object(front)

// 入力制御を開始する
$$input_start(front, <OBJBTN_GROUP_NO_MODAL>)

while(1)
{
	// 入力制御を更新する
	$request_select_btn = $$input_update(front, <OBJBTN_GROUP_NO_MODAL>)
	
	// キャンセルは依頼を受けないボタンとして処理する
	if( $request_select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		$request_select_btn = @ボタン_依頼書_受けない
	}
	
	if( $request_select_btn == @ボタン_依頼書_受ける )
	{
		$request_receive_flag = 1
		break
	}
	
	elseif( $request_select_btn == @ボタン_依頼書_受けない )
	{
		$request_receive_flag = 0
		break
	}
	
	// 何かのボタンが押された
	if( $request_select_btn != -2 ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $request_select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// 依頼を受けない選択をした場合
if( $request_receive_flag == 0 )
{
	// シーンオブジェクトを非表示にする
	$$hide_request_scene_object(front)
	
	// セーブポイントを設定する
	savepoint
	
	// 選択されたボタンを元の状態に戻す
	front.object[$bbs_select_btn].set_button_state_normal
	
	$$set_joypad_focus_button($bbs_select_btn)	// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
	$$update_joypad_focus_button(front)			// 選択されたボタンの描画を更新する
	
	// ボタンの選択状態をリセットして入力制御を開始する
	$bbs_select_btn = -2
	$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
	
	goto #bbs_input_loop
}

// 終了処理
#end

drop_selpoint				// 記憶した選択肢ポイントを降ろす
$$menu_control_disabled		// メニュー画面でのユーザー制御を解除する

// 依頼を受ける選択をした場合
if( $request_receive_flag == 1 )
{
	// シーンオブジェクトを非表示にする
	$$hide_bbs_scene_object(front)
	
	// マウスカーソルを戻す
	script.set_cursor_no(0)
	
	// ジョイパッドモードの許可をデフォルトに戻す
	script.set_allow_joypad_mode_onoff_default
	
	// メニュー画面でのユーザー制御を解除する
	$$menu_control_disabled
	
	// 既読／未読スキップフラグを元に戻す
	syscom.set_read_skip_onoff_flag($read_skip_flag)
	syscom.set_auto_skip_onoff_flag($auto_skip_flag)
	
	l[0] = $bbs_select_btn - @ボタン_掲示板_依頼書
	
	farcall($request_receive_file[l[0]], $request_receive_label[l[0]])
	
	if( @日付_時間帯 == @午前 )
	{
		@午前依頼を選択したキャラクター = $request_character[l[0]]
	}
	
	@依頼にかける時間 = $request_time[l[0]]
}

// メッセージバック監視
frame_action_ch[<FRAME_ACTION_CH_MSGBK>].end

return


//---------------------------------------------------------------------------
// メッセージバック監視
//---------------------------------------------------------------------------
command $$fa_msgbk_check(property $fa : frameaction)
{
	if( syscom.check_msg_back_open )
	{
		if( $msgbk_open_flag == 0 )
		{
			$joypad_focus_button_old = $$get_joypad_focus_button
			
			$msgbk_open_flag = 1
			$joypad_focus_button_old = $$get_joypad_focus_button
		}
	}
	else
	{
		if( $msgbk_open_flag )
		{
			$$set_joypad_focus_button($joypad_focus_button_old)
			$$update_joypad_focus_button(front)
			
			$msgbk_open_flag = 0
			
			$joypad_focus_button_old = $$get_joypad_focus_button
		}
	}
}

//---------------------------------------------------------------------------
// 掲示板データ初期化
//---------------------------------------------------------------------------
command $$init_bbs_data
{
	property $i
	
	$request_receive_flag = 0
	
	// サイズが確保されていない場合はサイズを確保する
	if( $request_select_file.get_size == 0 )
	{
		$request_thumb.resize(@掲示板_依頼書最大数)
		$request_info_image.resize(@掲示板_依頼書最大数)
		$request_character.resize(@掲示板_依頼書最大数)
		$request_time.resize(@掲示板_依頼書最大数)
		$request_select_file.resize(@掲示板_依頼書最大数)
		$request_select_label.resize(@掲示板_依頼書最大数)
		$request_select_readed.resize(@掲示板_依頼書最大数)
		$request_receive_file.resize(@掲示板_依頼書最大数)
		$request_receive_label.resize(@掲示板_依頼書最大数)
	}
	
	// 各データを初期化する
	for( $i = 0, $i < @掲示板_依頼書最大数, $i += 1 )
	{
		$request_thumb[$i]         = ""
		$request_info_image[$i]    = ""
		$request_character[$i]     = 0
		$request_time[$i]          = 0
		$request_select_file[$i]   = ""
		$request_select_label[$i]  = 0
		$request_select_readed[$i] = 0
		$request_receive_file[$i]  = ""
		$request_receive_label[$i] = 0
	}
}

//---------------------------------------------------------------------------
// 掲示板の依頼書データを設定する
//---------------------------------------------------------------------------
command $$set_bbs_request_data(property $thumb_file : str, property $info_image : str, property $cell_no, property $character, property $time, property $receive_file : str, property $receive_label, property $select_file : str, property $select_label)
{
	// データエラーチェック
	if( $cell_no < 1 || @掲示板_依頼書最大数 < $cell_no )
	{
		$$debug_message("依頼書のセル番号が正しい数値ではありません。\nセル番号は０から" + math.tostr(@掲示板_依頼書最大数) + "の範囲で設定してください。\nセル番号 → " + math.tostr($cell_no) + "\n依頼書作成処理をスキップします。")
		return
	}
	if( @日付_時間帯 == @午後 && $time == @依頼時間_一日 ) {
		$$debug_message("「午後の掲示板」に「一日イベント」が設定されています。\n日付 → " + math.tostr(@日付_月) + "/" + math.tostr(@日付_日) + "\nファイル → " + $receive_file + ".ss\n午後行動で一日イベントが設定されていて問題ないか確認してください。")
	}
	
	$cell_no -= 1
	
	// 依頼書データ(選択時の遷移先など)を設定する
	$request_thumb[$cell_no]         = $thumb_file
	$request_info_image[$cell_no]    = $info_image
	$request_character[$cell_no]     = $character
	$request_time[$cell_no]          = $time
	$request_select_file[$cell_no]   = $select_file
	$request_select_label[$cell_no]  = $select_label
	$request_receive_file[$cell_no]  = $receive_file
	$request_receive_label[$cell_no] = $receive_label
}

//---------------------------------------------------------------------------
// 掲示板シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_bbs_scene_object(property $stage : stage)
{
	// 背景
	$$create_ui_image($stage.object[@イメージ_掲示板_背景], _bbs_bg, 0, 0)
	$$set_image_center_rep($stage.object[@イメージ_掲示板_背景])
	$stage.object[@イメージ_掲示板_背景].patno = 2
	
	$$create_ui_image($stage.object[@イメージ_掲示板_フッター], _bbs_bg, 0, 0)
	$stage.object[@イメージ_掲示板_フッター].patno = 1
	
	$$create_ui_image($stage.object[@イメージ_掲示板_オーバーレイ], _bbs_bg, 0, 0)
	$$set_image_center_rep($stage.object[@イメージ_掲示板_オーバーレイ])
	
	$$create_ui_image($stage.object[@イメージ_掲示板_ポインタ], _bbs_cursor, 0, 0)
	$stage.object[@イメージ_掲示板_ポインタ].layer = 100
	
	// システムボタン
	$$create_ui_button($stage.object[@ボタン_掲示板_セーブ], _bbs_sys_save_btn, 153, 972, @ボタン_掲示板_セーブ, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_掲示板_ロード], _bbs_sys_load_btn, 360, 972, @ボタン_掲示板_ロード, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_掲示板_コンフィグ], _bbs_sys_config_btn, 564, 972, @ボタン_掲示板_コンフィグ, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_掲示板_レコード], _bbs_sys_record_btn, 816, 972, @ボタン_掲示板_レコード, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_掲示板_タイトルに戻る], _bbs_sys_title_btn, 1073, 972, @ボタン_掲示板_タイトルに戻る, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_掲示板_ゲームを終了する], _bbs_sys_quit_btn, 1302, 972, @ボタン_掲示板_ゲームを終了する, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_掲示板_前の選択肢に戻る], _bbs_sys_back_btn, 1549, 972, @ボタン_掲示板_前の選択肢に戻る, <OBJBTN_GROUP_NO_SELECT>, 1)
	
	// 体験版処理（レコードボタンは押せない）
	$stage.object[@ボタン_掲示板_レコード].set_button_state_disable
	
	// 前の選択肢に戻るが不可能な場合はボタンを押せないようにする
	if( syscom.check_return_to_sel_enable == 0 ) {
		$stage.object[@ボタン_掲示板_前の選択肢に戻る].set_button_state_disable
	}
	
	// 各依頼書ボタン
	$$create_bbs_request_button($stage)
	
	#ifdef @TRIAL
	#else
	
	// ミニゲームボタン
	$$create_bbs_mng_button($stage)
	
	// デバッグボタン（何もしないで掲示板終了）
	if( $$check_debug_mode_enable ) {
		$$create_mng_debug_button($stage.object[@デバッグボタン_掲示板_何もしない], 10, 930, @デバッグボタン_掲示板_何もしない, <OBJBTN_GROUP_NO_SELECT>, "[デバッグボタン]何もしないで終了", "#F7402F", 1)
	}
	
	#endif
	
	// 表示更新
	disp
}

// 依頼書ボタンを作成する
command $$create_bbs_request_button(property $stage : stage)
{
	property $i
	property $x
	property $y
	property $btn_no
	property $base_x
	property $base_y
	property $offset_x
	property $offset_y
	property $random_offset_x
	property $random_offset_y
	
	$base_x = 181				// 依頼書ベースx座標(左上の依頼書の座標)
	$base_y = 252				// 依頼書ベースy座標
	$offset_x = 263				// 依頼書オフセットx座標(依頼書ごとの間隔)
	$offset_y = 249				// 依頼書オフセットy座標
	$random_offset_x = 4		// 依頼書ランダムx座標(依頼書一枚ごとのランダムなずれ)
	$random_offset_y = 15		// 依頼書ランダムy座標
	
	// 各キャラクターの依頼をチェックする
	for( $i = 0, $i < @掲示板_依頼書最大数, $i += 1 )
	{
		// 依頼がない場合は処理をスキップする
		if( $request_thumb[$i] == ""  ) {
			continue
		}
		
		// 依頼があるので各表示データを設定する
		$btn_no = @ボタン_掲示板_依頼書 + $i
		$x = $base_x + ($i % 6) * $offset_x + math.rand(-$random_offset_x, $random_offset_x)
		$y = $base_y + ($i / 6) * $offset_y + math.rand(-$random_offset_y, $random_offset_y)
		
		// 依頼書ボタンを作成する
		$$create_ui_button($stage.object[$btn_no], _bbs_request_btn, $x, $y, $btn_no, <OBJBTN_GROUP_NO_SELECT>, 1)
		$stage.object[$btn_no].child.resize(1)
		
		// 依頼書
		$stage.object[$btn_no].child[0].create($request_info_image[$i], 1)
		$stage.object[$btn_no].child[0].center_x = $stage.object[$btn_no].child[0].get_size_x / 2
		$stage.object[$btn_no].child[0].set_scale(300, 300)
		$stage.object[$btn_no].child[0].x = $stage.object[$btn_no].child[0].get_size_x * 300 / 1000 / 2
	}
}

// ミニゲームボタンを作成する
command $$create_bbs_mng_button(property $stage : stage)
{
	#ifdef @TRIAL
	#else
	
	// ＵＭＡレースボタン(※参加可能日は必ず表示される)
	if( @日付_日 == <URACE_ENTRY_DATE> && @日付_時間帯 == @午前 )
	{
		$$create_ui_button($stage.object[@ボタン_掲示板_ＵＭＡレース], _bbs_uma_race_btn01, 1690, 560, @ボタン_掲示板_ＵＭＡレース, <OBJBTN_GROUP_NO_SELECT>, 1)
	}
	else
	{
		if( @ＵＭＡレースに参加している )
		{
			// 7/25午前はグランドレース出場ボタン
			if( @日付_日 == <URACE_GRAND_ENTRY_DATE> && @日付_時間帯 == @午前 )
			{
				// グランドレース出場条件を満たしている場合のみ
				if( $$get_urace_grand_entry_flag )
				{
					$$create_ui_button($stage.object[@ボタン_掲示板_ＵＭＡレース], _bbs_uma_race_btn02, 1690, 560, @ボタン_掲示板_ＵＭＡレース, <OBJBTN_GROUP_NO_SELECT>, 1)
				}
			}
			
			// 7/25までは通常ボタン todo いったん午前中のみ開催
			elseif( @日付_日 < <URACE_GRAND_ENTRY_DATE> && @日付_時間帯 == @午前 )
			{
				$$create_ui_button($stage.object[@ボタン_掲示板_ＵＭＡレース], _bbs_uma_race_btn01, 1690, 560, @ボタン_掲示板_ＵＭＡレース, <OBJBTN_GROUP_NO_SELECT>, 1)
			}
			
			// それ以外はＵＭＡレースボタンを表示しない
			else
			{
			}
		}
	}
	
	// ヘビヘビパニックボタン
	if( 1 )
	{
		$$create_ui_button($stage.object[@ボタン_掲示板_ヘビヘビパニック], _bbs_hhp_btn, 492, 742, @ボタン_掲示板_ヘビヘビパニック, <OBJBTN_GROUP_NO_SELECT>, 1)
	}
	
	#endif
}

command $$set_request_anim(property $obj : object)
{
	$obj.center_rep_y = 0
	$obj.layer = $anim_request_count
	$obj.frame_action.start(-1, "$$fa_request_button_show", 500 + $anim_request_count * 80)
	
	// 依頼書の数(アニメーション制御用)を加算する
	$anim_request_count += 1
}

// 依頼ボタン表示時のフレームアクション
command $$fa_request_button_show(property $fa : frameaction, property $obj : object, property $start_time)
{
	l[0] = $fa.counter.get
	
	$obj.tr = math.timetable(l[0], $start_time, 0, [0, 250, 255, 2])
	$obj.scale_x = math.timetable(l[0], $start_time, 3000, [0, 250, 1000, 1])
	$obj.scale_y = math.timetable(l[0], $start_time, 3000, [0, 250, 1000, 1])
	$obj.rotate_z = math.timetable(l[0], $start_time + 250, 0, [0, 150, 300, 2], [150, 350, 0, 1], [350, 450, -150, 2],
												[470, 620, 0, 1], [620, 750, 90, 2], [750, 920, 0, 1],
												[920, 1020, -40, 2], [1020, 1120, 0, 1], [1120, 1200, 30, 2], [1200, 1320, 0, 1],
												[1320, 1420, -15, 2], [1420, 1510, 0, 1])
}

//---------------------------------------------------------------------------
// 依頼書のマウスヒット／パッドオン時アニメーション
//---------------------------------------------------------------------------
command $$hit_animation
{
	property $i
	
	/* チェック用
	b[5] = $bbs_select_btn_only_request
	b[6] = $$get_joypad_focus_button
	b[7] = $$get_hit_btn
	*/
	
	for( $i = @ボタン_掲示板_依頼書, $i < @ボタン_掲示板_依頼書最大, $i += 1 )
	{
		// ボタンが生成されていない場合は処理をスキップする
		if( front.object[$i].f.get_size == 0 ) {
			continue
		}
		
		// ゲームパッド時の動作
		if( syscom.check_joypad_mode )
		{
			// ボタンにフォーカスされていて前回と違うボタンが選択されている場合はアニメーションする
			if( $$get_joypad_focus_button == $i )
			{
				if( $bbs_select_btn_only_request != $i )
				{
					front.object[$i].child[0].frame_action.start_real(-1, "$$fa_request_button_hit")
					
					$$save_last_request_button($i)
				}
			}
		}
		
		// マウス時の動作
		else
		{
			// ボタンに当たっていて前回と違うボタンが選択されている場合はアニメーションする
			if( $$get_hit_btn == $i )
			{
				if( $bbs_select_btn_only_request != $i )
				{
					front.object[$i].child[0].frame_action.start_real(-1, "$$fa_request_button_hit")
					
					$$save_last_request_button($i)
				}
			}
		}
	}
	
	// ゲームパッド時の動作
	if( syscom.check_joypad_mode )
	{
		if( $$get_joypad_focus_button != -1 )
		{
			// 依頼書でないボタンがフォーカスされている場合はリセットする
			if( $$get_joypad_focus_button < @ボタン_掲示板_依頼書 || @ボタン_掲示板_依頼書最大 < $$get_joypad_focus_button )
			{
				$bbs_select_btn_only_request = -1
				front.object[@イメージ_掲示板_ポインタ].disp = 0
			}
		}
	}
	// マウス時の動作
	else
	{
		if( $$get_hit_btn != -1 )
		{
			// 依頼書でないボタンが当たっている場合はリセットする
			if( $$get_hit_btn < @ボタン_掲示板_依頼書 || @ボタン_掲示板_依頼書最大 < $$get_hit_btn )
			{
				$bbs_select_btn_only_request = -1
				front.object[@イメージ_掲示板_ポインタ].disp = 0
			}
		}
	}
}

// 依頼ボタンマウスヒット／パッドオン時のフレームアクション
command $$fa_request_button_hit(property $fa : frameaction, property $obj : object)
{
	l[0] = $fa.counter.get
	
	$obj.rotate_z = math.timetable(l[0], 0, 0, [0, 150, 150, 2], [150, 350, 0, 1], [350, 450, -75, 2],
												[470, 620, 0, 1], [620, 750, 90, 2], [750, 920, 0, 1],
												[920, 1020, -40, 2], [1020, 1120, 0, 1], [1120, 1200, 30, 2], [1200, 1320, 0, 1],
												[1320, 1420, -15, 2], [1420, 1510, 0, 1])
}

// 最後に選択した依頼書ボタンを保存する
command $$save_last_request_button(property $button_no)
{
	// 依頼書ボタンでない場合は処理しない
	if( $button_no < @ボタン_掲示板_依頼書 || @ボタン_掲示板_依頼書最大 < $button_no ) {
		return
	}
	
	// 選択しているボタン（依頼書ボタンのみ）を更新する
	$bbs_select_btn_only_request = $button_no
	
	// 掲示板シーンのパッド入力の遷移を更新する
	$$update_bbs_joypad_navigation(front)
	
	// ゲームパッド時のポインタ表示位置を更新する
	front.object[@イメージ_掲示板_ポインタ].x = front.object[$button_no].x + 200
	front.object[@イメージ_掲示板_ポインタ].y = front.object[$button_no].y + 200
}

//---------------------------------------------------------------------------
// 掲示板シーンオブジェクトを表示する
//---------------------------------------------------------------------------
command $$show_bbs_scene_object(property $stage : stage)
{
	property $i
	property $start_time
	
	//---------------------------------------------------------------------------
	// ゲームパッド
	
	// 自動でジョイパッド時のボタン遷移先を設定する
	$$auto_joypad_navigation(@ボタン_掲示板_セーブ,
							 @ボタン_掲示板_依頼書最大)
	
	// 先頭のサムネイルボタンをデフォルトにする
	for( $i = @ボタン_掲示板_依頼書, $i < @ボタン_掲示板_依頼書最大, $i += 1 )
	{
		if( $stage.object[$i].f.get_size )
		{
			$$set_joypad_focus_button($i)
			break
		}
	}
	
	// パッド入力の遷移を設定する
	$$set_bbs_joypad_navigation($stage)
	
	//---------------------------------------------------------------------------
	// 表示アニメーション
	
	// 背景
	$stage.object[@イメージ_掲示板_背景].set_scale(1150, 1150)
	$stage.object[@イメージ_掲示板_背景].scale_x_eve.set(1000, 1000, 0, 2)
	$stage.object[@イメージ_掲示板_背景].scale_y_eve.set(1000, 1000, 0, 2)
	$stage.object[@イメージ_掲示板_オーバーレイ].set_scale(1150, 1150)
	$stage.object[@イメージ_掲示板_オーバーレイ].scale_x_eve.set(1000, 1000, 0, 2)
	$stage.object[@イメージ_掲示板_オーバーレイ].scale_y_eve.set(1000, 1000, 0, 2)
	
	// ポインタ
	$stage.object[@イメージ_掲示板_ポインタ].disp = 0
	
	// 依頼書の数(アニメーション制御用)を初期化する
	$anim_request_count = 0
	
	// 各依頼書のアニメーションを開始する
	for( $i = @ボタン_掲示板_依頼書, $i <= @ボタン_掲示板_依頼書最大, $i += 1 )
	{
		if( $stage.object[$i].disp ) {
			$$set_request_anim($stage.object[$i])
		}
	}
	
	if( $stage.object[@ボタン_掲示板_ＵＭＡレース].disp ) {
		$$set_request_anim($stage.object[@ボタン_掲示板_ＵＭＡレース])
	}
	
	if( $stage.object[@ボタン_掲示板_ヘビヘビパニック].disp ) {
		$$set_request_anim($stage.object[@ボタン_掲示板_ヘビヘビパニック])
	}
	
	$start_time = 500 + $anim_request_count * 80
	
	$stage.object[@イメージ_掲示板_フッター].y_rep.resize(1)
	$stage.object[@イメージ_掲示板_フッター].y_rep[0] = 50
	$stage.object[@イメージ_掲示板_フッター].y_rep_eve[0].set(0, 500, $start_time, 2)
	$stage.object[@イメージ_掲示板_フッター].tr = 0
	$stage.object[@イメージ_掲示板_フッター].tr_eve.set(255, 500, $start_time, 2)
	
	// システムボタン
	for( $i = @ボタン_掲示板_セーブ, $i <= @ボタン_掲示板_ゲームを終了する, $i += 1 )
	{
		$stage.object[$i].y_rep.resize(1)
		$stage.object[$i].y_rep[0] = 50
		$stage.object[$i].y_rep_eve[0].set(0, 500, $start_time, 2)
		$stage.object[$i].tr = 0
		$stage.object[$i].tr_eve.set(255, 500, $start_time, 2)
	}
	
	//---------------------------------------------------------------------------
	// ワイプ
	
	wipe(0, 250, wait=1)
	
	// 演出終了待ち
	front.object[@ボタン_掲示板_ゲームを終了する].tr_eve.wait
}

//---------------------------------------------------------------------------
// 掲示板シーンオブジェクトを非表示にする
//---------------------------------------------------------------------------
command $$hide_bbs_scene_object(property $stage : stage)
{
	// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
	$$off_system_front_wipe_copy_all
	
	// ワイプ
	wipe(0, 250, wait=1)
}

//---------------------------------------------------------------------------
// 掲示板シーンのパッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_bbs_joypad_navigation(property $stage : stage)
{
	property $i
	property $j
	property $btn_no
	property $tmp
	
	for( $i = 0, $i < @掲示板_依頼書最大数, $i += 1 )
	{
		// ボタンがない場合は処理をスキップする
		if( $stage.object[@ボタン_掲示板_依頼書 + $i].f.get_size == 0 ) {
			continue
		}
		
		$btn_no = @ボタン_掲示板_依頼書 + $i
		
		// 上段
		if( $i / 6 == 0 )
		{
			$stage.object[$btn_no].joypad_up    = -1
			
			$tmp = $$get_bbs_request_joypad_navigation($stage, $btn_no - @ボタン_掲示板_依頼書, 1)
			if( $tmp == -1 ) {
				$stage.object[$btn_no].joypad_down  = @ボタン_掲示板_セーブ
			} else {
				$stage.object[$btn_no].joypad_down  = $tmp
			}
			
			for( $j = $i - 1, $j >= 0, $j -= 1 )
			{
				if( $stage.object[@ボタン_掲示板_依頼書 + $j].f.get_size != 0 )
				{
					$stage.object[$btn_no].joypad_left  = @ボタン_掲示板_依頼書 + $j
					break
				}
			}
			if( $j == -1 ) {
				$stage.object[$btn_no].joypad_left  = -1
			}
			
			for( $j = $i + 1, $j < 6, $j += 1 )
			{
				if( $stage.object[@ボタン_掲示板_依頼書 + $j].f.get_size != 0 )
				{
					$stage.object[$btn_no].joypad_right  = @ボタン_掲示板_依頼書 + $j
					break
				}
			}
			if( $j == 6 ) {
				$stage.object[$btn_no].joypad_right  = -1
			}
		}
		
		// 下段
		else
		{
			$tmp = $$get_bbs_request_joypad_navigation($stage, $btn_no - @ボタン_掲示板_依頼書, 0)
			if( $tmp == -1 ) {
				$stage.object[$btn_no].joypad_up  = -1
			} else {
				$stage.object[$btn_no].joypad_up  = $tmp
			}
			
			$stage.object[$btn_no].joypad_down  = @ボタン_掲示板_セーブ
			
			for( $j = $i - 1, $j >= 6, $j -= 1 )
			{
				if( $stage.object[@ボタン_掲示板_依頼書 + $j].f.get_size != 0 )
				{
					$stage.object[$btn_no].joypad_left  = @ボタン_掲示板_依頼書 + $j
					break
				}
			}
			if( $j == 5 ) {
				$stage.object[$btn_no].joypad_left  = -1
			}
			
			for( $j = $i + 1, $j < 12, $j += 1 )
			{
				if( $stage.object[@ボタン_掲示板_依頼書 + $j].f.get_size != 0 )
				{
					$stage.object[$btn_no].joypad_right  = @ボタン_掲示板_依頼書 + $j
					break
				}
			}
			if( $j == 12 ) {
				$stage.object[$btn_no].joypad_right  = -1
			}
		}
	}
	
	$stage.object[@ボタン_掲示板_セーブ].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_セーブ].joypad_down  = -1
	$stage.object[@ボタン_掲示板_セーブ].joypad_left  = @ボタン_掲示板_前の選択肢に戻る
	$stage.object[@ボタン_掲示板_セーブ].joypad_right = @ボタン_掲示板_ロード
	
	$stage.object[@ボタン_掲示板_セーブ].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_セーブ].joypad_down  = -1
	$stage.object[@ボタン_掲示板_セーブ].joypad_left  = @ボタン_掲示板_前の選択肢に戻る
	$stage.object[@ボタン_掲示板_セーブ].joypad_right = @ボタン_掲示板_ロード
	
	$stage.object[@ボタン_掲示板_ロード].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_ロード].joypad_down  = -1
	$stage.object[@ボタン_掲示板_ロード].joypad_left  = @ボタン_掲示板_セーブ
	$stage.object[@ボタン_掲示板_ロード].joypad_right = @ボタン_掲示板_コンフィグ
	
	$stage.object[@ボタン_掲示板_コンフィグ].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_コンフィグ].joypad_down  = -1
	$stage.object[@ボタン_掲示板_コンフィグ].joypad_left  = @ボタン_掲示板_ロード
	$stage.object[@ボタン_掲示板_コンフィグ].joypad_right = @ボタン_掲示板_レコード
	
	$stage.object[@ボタン_掲示板_レコード].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_レコード].joypad_down  = -1
	$stage.object[@ボタン_掲示板_レコード].joypad_left  = @ボタン_掲示板_コンフィグ
	$stage.object[@ボタン_掲示板_レコード].joypad_right = @ボタン_掲示板_タイトルに戻る
	
	$stage.object[@ボタン_掲示板_タイトルに戻る].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_タイトルに戻る].joypad_down  = -1
	$stage.object[@ボタン_掲示板_タイトルに戻る].joypad_left  = @ボタン_掲示板_レコード
	$stage.object[@ボタン_掲示板_タイトルに戻る].joypad_right = @ボタン_掲示板_ゲームを終了する
	
	$stage.object[@ボタン_掲示板_ゲームを終了する].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_ゲームを終了する].joypad_down  = -1
	$stage.object[@ボタン_掲示板_ゲームを終了する].joypad_left  = @ボタン_掲示板_タイトルに戻る
	$stage.object[@ボタン_掲示板_ゲームを終了する].joypad_right = @ボタン_掲示板_前の選択肢に戻る
	
	$stage.object[@ボタン_掲示板_前の選択肢に戻る].joypad_up    = @ボタン_現在選択している_依頼書
	$stage.object[@ボタン_掲示板_前の選択肢に戻る].joypad_down  = -1
	$stage.object[@ボタン_掲示板_前の選択肢に戻る].joypad_left  = @ボタン_掲示板_ゲームを終了する
	$stage.object[@ボタン_掲示板_前の選択肢に戻る].joypad_right = @ボタン_掲示板_セーブ
}

// 指定した依頼書から違う段／近くにいる依頼書ボタンを取得する
command $$get_bbs_request_joypad_navigation(property $stage : stage, property $base_btn_no, property $line)
{
	property $i
	property $btn_list : intlist[6]
	property $list_add_pat
	property $list_offset
	property $btn_offset
	property $left_offset
	property $right_offset
	
	// 指定した段によって検索範囲を変更する
	if( $line == 0 )
	{
		$list_offset = -6
		$btn_offset = 0
	}
	else
	{
		$list_offset = 6
		$btn_offset = 6
	}
	
	// 検索するボタンリストを作成する
	//
	// 0|1|2|3|4|5
	// -+-+-+-+-+-+-
	// 6|7|8|9|10|11
	// 
	// 上記の並びで'3'を指定した場合
	// パッドで'3'の下遷移の候補は[9, 8, 10, 7, 11, 6]の順で探される
	
	$left_offset = -1
	$right_offset = 1
	
	for( $i = 0, $i < 6, $i += 1 )
	{
		switch( $list_add_pat ) {
		case(0)
			
			$btn_list[$i] = $base_btn_no + $list_offset
			
			$list_add_pat = 1
			
		case(1)
			
			if( $base_btn_no + $list_offset + $left_offset >= $btn_offset )
			{
				$btn_list[$i] = $base_btn_no + $list_offset + $left_offset
				
				$left_offset -= 1
				$list_add_pat = 2
			}
			else
			{
				$i -= 1
				$list_add_pat = 2
			}
			
		case(2)
			
			if( $base_btn_no + $list_offset + $right_offset < $btn_offset + 6 )
			{
				$btn_list[$i] = $base_btn_no + $list_offset + $right_offset
				
				$right_offset += 1
				$list_add_pat = 1
			}
			else
			{
				$i -= 1
				$list_add_pat = 1
			}
		}
	}
	
	// 検索するボタンリストからボタンが存在しているかチェックする
	for( $i = 0, $i < 6, $i += 1 )
	{
		if( $stage.object[@ボタン_掲示板_依頼書 + $btn_list[$i]].f.get_size == 0 ) {
			continue
		}
		
		// ボタンが存在している場合はパッド遷移先として設定する
		return (@ボタン_掲示板_依頼書 + $btn_list[$i])
	}
	
	return (-1)
}

//---------------------------------------------------------------------------
// 掲示板シーンのパッド入力の遷移を更新する
//---------------------------------------------------------------------------
command $$update_bbs_joypad_navigation(property $stage : stage)
{
	property $i
	
	for( $i = @ボタン_掲示板_セーブ, $i <= @ボタン_掲示板_ゲームを終了する, $i += 1 )
	{
		$stage.object[$i].joypad_up = @ボタン_現在選択している_依頼書
	}
}



//---------------------------------------------------------------------------
// 依頼書シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_request_scene_object(property $stage : stage)
{
	// 背景
	$$create_ui_image($stage.object[@イメージ_依頼書_フィルター], _bbs_request_bg, 0, 0)
	
	// 依頼書詳細
	$$create_ui_image($stage.object[@イメージ_依頼書_詳細], $request_info_image[$select_request_no], 567, 68)
	
	// ダイアログ背景
	$$create_ui_image($stage.object[@イメージ_依頼書_ダイアログ背景], _bbs_request_dialog_bg, 748, 845)
	
	// はい／いいえボタン
	$$create_ui_button($stage.object[@ボタン_依頼書_受ける], _bbs_request_yes_btn, 679, 932, @ボタン_依頼書_受ける, <OBJBTN_GROUP_NO_MODAL>, 1)
	$$create_ui_button($stage.object[@ボタン_依頼書_受けない], _bbs_request_no_btn, 967, 932, @ボタン_依頼書_受けない, <OBJBTN_GROUP_NO_MODAL>, 2)
}

//---------------------------------------------------------------------------
// 依頼書シーンオブジェクトを表示する
//---------------------------------------------------------------------------
command $$show_request_scene_object(property $stage : stage)
{
	property $i
	
	// はい／いいえダイアログは表示しない
	$stage.object[@イメージ_依頼書_ダイアログ背景].disp = 0
	$stage.object[@ボタン_依頼書_受ける].disp = 0
	$stage.object[@ボタン_依頼書_受けない].disp = 0
	
	// 依頼書のアニメーションを設定する
	$stage.object[@イメージ_依頼書_詳細].y_rep.resize(1)
	$stage.object[@イメージ_依頼書_詳細].y_rep[0] = 100
	$stage.object[@イメージ_依頼書_詳細].y_rep_eve[0].set(0, 350, 0, 2)
	$stage.object[@イメージ_依頼書_詳細].tr = 0
	$stage.object[@イメージ_依頼書_詳細].tr_eve.set(255, 350, 0, 2)
	
	// 依頼書は掲示板よりも上のレイヤーにする
	for( $i = <OBJ_MODAL>, $i < <OBJ_MAX>, $i += 1 )
	{
		$stage.object[$i].layer += 100
	}
	
	// ダイアログはさらに上のレイヤーにする
	$stage.object[@イメージ_依頼書_ダイアログ背景].layer += 1
	$stage.object[@ボタン_依頼書_受ける].layer += 1
	$stage.object[@ボタン_依頼書_受けない].layer += 1
	
	// ワイプ
	wipe(0, 350, wait=1)
}

//---------------------------------------------------------------------------
// 依頼書シーンダイアログオブジェクトを表示する
//---------------------------------------------------------------------------
command $$show_request_dialog_object(property $stage : stage)
{
	// 自動でジョイパッド時のボタン遷移先を設定する
	$$auto_joypad_navigation(@ボタン_依頼書_受ける,
							 @ボタン_依頼書_受けない)
	
	// パッド入力の遷移を設定する
	$$set_request_joypad_navigation($stage)
	
	// はいボタンをデフォルトにする
	$$set_joypad_focus_button(@ボタン_依頼書_受ける)
	
	// ダイアログアニメーションを設定する
	$$set_pos_y_rep_eve($stage.object[@イメージ_依頼書_ダイアログ背景], 0, 50, 0, 250, 0, 2)
	$$set_tr_eve($stage.object[@イメージ_依頼書_ダイアログ背景], 0,  255, 250, 0, 2)
	$$set_scale_eve($stage.object[@ボタン_依頼書_受ける], 1250, 1000, 250, 250, 2)
	$$set_tr_eve($stage.object[@ボタン_依頼書_受ける], 0,  255, 250, 250, 2)
	$$set_scale_eve($stage.object[@ボタン_依頼書_受けない], 1250, 1000, 250, 250, 2)
	$$set_tr_eve($stage.object[@ボタン_依頼書_受けない], 0, 255, 250, 250, 2)
	
	// はい／いいえダイアログを表示する
	$stage.object[@イメージ_依頼書_ダイアログ背景].disp = 1
	$stage.object[@ボタン_依頼書_受ける].disp = 1
	$stage.object[@ボタン_依頼書_受けない].disp = 1
}

//---------------------------------------------------------------------------
// 依頼書シーンオブジェクトを非表示にする
//---------------------------------------------------------------------------
command $$hide_request_scene_object(property $stage : stage)
{
	// 依頼書オブジェクトのワイプコピーフラグをオフにする
	$$off_system_front_wipe_copy(<OBJ_MODAL>, <OBJ_MAX>)
	
	// ワイプ
	wipe(0, 250, wait=1)
}

//---------------------------------------------------------------------------
// 依頼書シーンのパッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_request_joypad_navigation(property $stage : stage)
{
	$stage.object[@ボタン_依頼書_受ける].joypad_up    = -1
	$stage.object[@ボタン_依頼書_受ける].joypad_down  = -1
	$stage.object[@ボタン_依頼書_受ける].joypad_left  = @ボタン_依頼書_受けない
	$stage.object[@ボタン_依頼書_受ける].joypad_right = @ボタン_依頼書_受けない
	
	$stage.object[@ボタン_依頼書_受けない].joypad_up    = -1
	$stage.object[@ボタン_依頼書_受けない].joypad_down  = -1
	$stage.object[@ボタン_依頼書_受けない].joypad_left  = @ボタン_依頼書_受ける
	$stage.object[@ボタン_依頼書_受けない].joypad_right = @ボタン_依頼書_受ける
}
