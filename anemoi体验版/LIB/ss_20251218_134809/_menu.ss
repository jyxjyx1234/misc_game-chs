//===========================================================================
//!
//!    @file     _menu.ss
//!    @brief    タイトルメニューシーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#inc_start
	
	// オブジェクト
	#replace	@イメージ_空背景			0
	#replace	@イメージ_ブランドロゴ		1
	#replace	@イメージ_背景キャラなし	2
	#replace	@イメージ_背景キャラあり	3
	#replace	@イメージ_タイトルロゴ		4
	#replace	@イメージ_コピーライト		5
	#replace	@イメージ_フィルター		6
	#replace	@パーティクル_キャラ表示	7
	#replace	@パーティクル_空全体		8
	//@ボタン_メニュー_最初から 			11 ～
	//@ボタン_メニュー_別ルートから始める３	20
	#replace	@ムービー_塵_空				21
	#replace	@ムービー_塵_遠				22
	#replace	@ムービー_塵_近				23
	#replace	@ムービー_風_最初			24
	#replace	@ムービー_風上段_ループ		25
	#replace	@ムービー_風下段_ループ		26
	#replace	@イメージ_パッド背景		27
	#replace	@イメージ_ボタン背景		28
	#replace	@イメージ_ボタンテキスト	29
	
	// 変数
	#property	$hit_button_old				// 前回当たっていたボタン番号
	
#inc_end

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_menu_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _menu_bg01, 0, 0)
	$$create_ui_image($stage.object[2], _menu_bg01, 0, 0)
	$$create_ui_image($stage.object[3], _menu_bg02, 0, 0)
	$$create_ui_image($stage.object[4], _menu_title_logo, 703, 0)
	$$create_ui_image($stage.object[5], _menu_logo, 1648, 1022)
	$$create_ui_button($stage.object[@ボタン_メニュー_最初から], _menu_start_btn, 410, 948, @ボタン_メニュー_最初から, <OBJBTN_GROUP_NO_SELECT>, 0)
	$$create_menu_load_button($stage.object[@ボタン_メニュー_続きから], _menu_load_btn, 912, 947, @ボタン_メニュー_続きから, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_menu_continue_button($stage.object[@ボタン_メニュー_前回の続きから], _menu_continue_btn, 621, 948, @ボタン_メニュー_前回の続きから, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_メニュー_コンフィグ], _menu_config_btn, 1114, 947, @ボタン_メニュー_コンフィグ, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_メニュー_ゲーム終了], _menu_exit_btn, 1313, 948, @ボタン_メニュー_ゲーム終了, <OBJBTN_GROUP_NO_SELECT>, 1)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_menu_scene_object(property $stage : stage, property $select_btn)
{
	property $i
	property $hit_button
	
	// キャンセルは何も処理しない
	if( $select_btn == -1 ) {
		return
	}
	
	// 当たっているボタンを取得する
	if( syscom.check_joypad_mode )
	{
		$hit_button = $$get_joypad_focus_button
		$stage.object[@イメージ_パッド背景].disp = 1
	}
	else
	{
		$hit_button = $$get_hit_btn
		$stage.object[@イメージ_ボタン背景].patno = 0
		$stage.object[@イメージ_パッド背景].disp = 0
		
		if( $hit_button == -1 || $hit_button == -2 )
		{
			$hit_button = $$get_pushed_btn
			$stage.object[@イメージ_ボタン背景].patno = 1
		}
		
		if( $hit_button == -1 || $hit_button == -2 )
		{
			$hit_button = $select_btn
		}
		
		if( $hit_button == -1 || $hit_button == -2 )
		{
			$stage.object[@イメージ_ボタン背景].patno = 0
		}
	}
	
	if( @ボタン_メニュー_最初から <= $hit_button && $hit_button <= @ボタン_メニュー_別ルートから始める３ )
	{
		if( $hit_button != $hit_button_old )
		{
			// 前回当たっているボタンがある場合は下に移動する
			if( @ボタン_メニュー_最初から <= $hit_button_old && $hit_button_old <= @ボタン_メニュー_別ルートから始める３ )
			{
				$stage.object[@イメージ_ボタンテキスト + $hit_button_old].y_rep[0] = -10
				$stage.object[@イメージ_ボタンテキスト + $hit_button_old].y_rep_eve[0].set_real(0, 250, 0, 2)
			}
			
			// 当たっているボタンが選択不可の場合はボタン背景を非表示にする
			if( $stage.object[$hit_button].get_button_state == 4 )
			{
				$stage.object[@イメージ_ボタン背景].disp = 0
			}
			else
			{
				$stage.object[@イメージ_ボタン背景].disp = 1
			}
			
			// 今回当たっているボタンを上に移動する
			$stage.object[@イメージ_ボタンテキスト + $hit_button].y_rep[0] = 0
			$stage.object[@イメージ_ボタンテキスト + $hit_button].y_rep_eve[0].set_real(-10, 250, 0, 2)
			
			// ボタン背景の表示アニメーションを開始する
			$stage.object[@イメージ_ボタン背景].x = $stage.object[$hit_button].x + ($stage.object[$hit_button].get_size_x - $stage.object[@イメージ_ボタン背景].get_size_x) / 2
			$stage.object[@イメージ_ボタン背景].y = $stage.object[$hit_button].y - 10
			$stage.object[@イメージ_ボタン背景].x_rep[0] = -50
			$stage.object[@イメージ_ボタン背景].x_rep_eve[0].set_real(0, 250, 0, 2)
			$stage.object[@イメージ_ボタン背景].tr = 0
			$stage.object[@イメージ_ボタン背景].tr_eve.set_real(255, 250, 0, 2)
			
			// パッド背景の表示アニメーションを開始する
			$stage.object[@イメージ_パッド背景].x = $stage.object[$hit_button].x + ($stage.object[$hit_button].get_size_x - $stage.object[@イメージ_パッド背景].get_size_x) / 2
			$stage.object[@イメージ_パッド背景].y = $stage.object[$hit_button].y - 10
			$stage.object[@イメージ_パッド背景].tr = 0
			$stage.object[@イメージ_パッド背景].tr_eve.set_real(255, 250, 0, 2)
			$stage.object[@イメージ_パッド背景].set_scale(0, 0)
			$stage.object[@イメージ_パッド背景].scale_x_eve.set_real(1000, 250, 0, 2)
			$stage.object[@イメージ_パッド背景].scale_y_eve.set_real(1000, 250, 0, 2)
			
			// 当たっているボタンを保存する
			$hit_button_old = $hit_button
		}
	}
	else
	{
		if( input.cancel.on_down_up == 0 && $hit_button != $hit_button_old )
		{
			// 前回当たっているボタンがある場合は下に移動する
			if( @ボタン_メニュー_最初から <= $hit_button_old && $hit_button_old <= @ボタン_メニュー_別ルートから始める３ )
			{
				$stage.object[@イメージ_ボタンテキスト + $hit_button_old].y_rep[0] = -10
				$stage.object[@イメージ_ボタンテキスト + $hit_button_old].y_rep_eve[0].set_real(0, 250, 0, 2)
			}
			
			// ボタン背景の非表示アニメーションを開始する
			$stage.object[@イメージ_ボタン背景].x_rep[0] = 0
			$stage.object[@イメージ_ボタン背景].x_rep_eve[0].set_real(50, 200, 0, 2)
			$stage.object[@イメージ_ボタン背景].tr_eve.set(0, 200, 0, 2)
			
			// パッド背景の非表示アニメーションを開始する
			$stage.object[@イメージ_パッド背景].scale_x_eve.set_real(0, 250, 0, 2)
			$stage.object[@イメージ_パッド背景].scale_y_eve.set_real(0, 250, 0, 2)
			
			// 当たっているボタンを保存する
			$hit_button_old = $hit_button
		}
	}
	
	// ボタンテキストはボタンの状態に追従させる
	for( $i = @ボタン_メニュー_最初から, $i <= @ボタン_メニュー_別ルートから始める３, $i += 1 )
	{
		if( $stage.object[$i].f.get_size == 0 ) {
			continue
		}
		
		$stage.object[@イメージ_ボタンテキスト + $i].patno = $stage.object[$i].get_button_real_state
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_menu_scene_object(property $stage : stage)
{
	property $i
	property $tmp_pos
	property $omv_animation_flag
	property $animation_end_flag
	
	// シーンオブジェクトを追加で作成する
	$$create_add_menu_scene_object($stage)
	
	// タイトルＢＧＭを準備する
	bgm.ready(bgm27)
	
	// シーンオブジェクトのアニメーションを設定する
	$$set_scene_object_animation($stage)
	
	// タイトルＢＧＭを再生する
	bgm.resume
	
	// ワイプ
	wipe(0, 1000)
	
	counter[0].start_real
	$omv_animation_flag = 0
	
	//---------------------------------------------------------------------------
	// アニメーション終了 or 入力待ち
	while( 1 )
	{
		$animation_end_flag = 0
		
		if( counter[0].get > 0 && $omv_animation_flag == 0 )
		{
			// ムービー（風）再生
			front.object[@ムービー_風_最初].seek_movie(0)
			front.object[@ムービー_風_最初].resume_movie
			
			$omv_animation_flag = 1
		}
		
		// 決定、キャンセルキーいずれかの入力があったとき、アニメーションをスキップする
		if( input.decide.on_down_up == 1 || input.cancel.on_down_up == 1 )
		{
			for( $i = 0, $i < <OBJ_MAX>, $i += 1 )
			{
				// オブジェクトが表示されている場合はイベントを終了する
				if( front.object[$i].disp ) {
					front.object[$i].all_eve.end
				}
			}
			
			// パーティクル（キャラ表示時）を終了する
			front.object[@パーティクル_キャラ表示].child[0].frame_action.end
			front.object[@パーティクル_キャラ表示].child[1].frame_action.end
		}
		
		for( $i = 0, $i < <OBJ_MAX>, $i += 1 )
		{
			// オブジェクトがイベント中か判定する
			if( front.object[$i].disp && front.object[$i].all_eve.check )
			{
				$animation_end_flag = 1
				break
			}
		}
		// アニメーションが終了している場合はループから抜ける
		if( $animation_end_flag == 0 )
		{
			// ムービー（風）は非表示にする
			front.object[@ムービー_風_最初].set_movie_auto_free(1)
			front.object[@ムービー_風_最初].disp = 0
			
			// パーティクル（空全体）を再生する
			$$play_menu_particle_sky(front.object[@パーティクル_空全体])
			
			break
		}
		
		input.next
		disp
	}
}

// シーンオブジェクトを追加で作成する
command $$create_add_menu_scene_object(property $stage : stage)
{
	property $i
	property $filename : str
	
	// ブランドロゴの設定をする
	// ※スタートシーンで作成済みのためfront
	front.object[@イメージ_ブランドロゴ].layer = 1
	front.object[@イメージ_ブランドロゴ].wipe_copy = 1
	
	// 背景（キャラなし）に子供オブジェクトを追加して縦長にする
	$stage.object[@イメージ_背景キャラなし].child.resize(1)
	$stage.object[@イメージ_背景キャラなし].child[0].create(_menu_bg01, 1, 0, -1080, 1)
	
	// タイトルロゴの設定をする
	$stage.object[@イメージ_タイトルロゴ].layer = 1
	
	// フィルター
	$stage.object[@イメージ_フィルター].create(ef_eye_catch_filter, 1)
	$stage.object[@イメージ_フィルター].blend = 1
	
	// パーティクル（キャラ表示時）
	$$create_menu_particle_disp_chara($stage.object[@パーティクル_キャラ表示], 18500)
	
	// パーティクル（空全体）
	$$create_menu_particle_sky($stage.object[@パーティクル_空全体])
	
	// ムービー（塵／空）
	$stage.object[@ムービー_塵_空].create_movie_loop(ef_wind_dust02, 1, ready_only = 1, real_time = 1)
	$stage.object[@ムービー_塵_空].blend = 1
	$$set_image_center_rep($stage.object[@ムービー_塵_空])
	
	// ムービー（塵／遠）
	$stage.object[@ムービー_塵_遠].create_movie_loop(ef_wind_dust01, 1, ready_only = 1, real_time = 1)
	$stage.object[@ムービー_塵_遠].blend = 1
	$stage.object[@ムービー_塵_遠].tr_rep.resize(1)
	$$set_image_center_rep($stage.object[@ムービー_塵_遠])
	
	// ムービー（塵／近）
	$stage.object[@ムービー_塵_近].create_movie_loop(ef_wind_dust02, 1, ready_only = 1, real_time = 1)
	$stage.object[@ムービー_塵_近].blend = 1
	$stage.object[@ムービー_塵_近].tr_rep.resize(1)
	$$set_image_center_rep($stage.object[@ムービー_塵_近])
	
	// ムービー（風）
	$stage.object[@ムービー_風_最初].create_movie(ef_wind04, 1, ready_only = 1, real_time = 1, auto_free = 0)
	$stage.object[@ムービー_風_最初].y = 300
	$stage.object[@ムービー_風_最初].tr = 128
	$stage.object[@ムービー_風_最初].blend = 1
	
	// ムービー（風ループ）
	$stage.object[@ムービー_風上段_ループ].create_movie(ef_wind04, 1, 0, -50, real_time = 1, auto_free = 0)
	$stage.object[@ムービー_風上段_ループ].tr = 0
	$stage.object[@ムービー_風上段_ループ].blend = 1
	$stage.object[@ムービー_風上段_ループ].wipe_copy = 1
	$stage.object[@ムービー_風上段_ループ].f.resize(1)
	$stage.object[@ムービー_風上段_ループ].frame_action.start_real(-1, "$$fa_movie_loop", 7000)
	
	$stage.object[@ムービー_風下段_ループ].create_movie(ef_wind03, 1, 0, 600, real_time = 1, auto_free = 0)
	$stage.object[@ムービー_風下段_ループ].tr = 0
	$stage.object[@ムービー_風下段_ループ].blend = 4
	$stage.object[@ムービー_風下段_ループ].wipe_copy = 1
	$stage.object[@ムービー_風下段_ループ].f.resize(1)
	$stage.object[@ムービー_風下段_ループ].frame_action.start_real(-1, "$$fa_movie_loop", 9000)
	
	// ボタン背景
	$stage.object[@イメージ_ボタン背景].create(_menu_btn_mouse_overlay, 1)
	$stage.object[@イメージ_ボタン背景].tr = 0
	$stage.object[@イメージ_ボタン背景].wipe_copy = 1
	$stage.object[@イメージ_ボタン背景].x_rep.resize(1)
	$stage.object[@イメージ_ボタン背景].f.resize(1)
	
	// パッド背景
	$stage.object[@イメージ_パッド背景].create(_menu_btn_pad_overlay, 1)
	$stage.object[@イメージ_パッド背景].tr = 0
	$stage.object[@イメージ_パッド背景].wipe_copy = 1
	$stage.object[@イメージ_パッド背景].f.resize(1)
	$$set_image_center_rep($stage.object[@イメージ_パッド背景])
	
	// ボタンテキスト
	for( $i = @ボタン_メニュー_最初から, $i < @ボタン_メニュー_別ルートから始める３, $i += 1 )
	{
		if( $stage.object[$i].disp == 0 ) {
			continue
		}
		
		switch( $i ) {
		case(@ボタン_メニュー_最初から)			$filename = "_menu_start_text"
		case(@ボタン_メニュー_前回の続きから)	$filename = "_menu_continue_text"
		case(@ボタン_メニュー_続きから)			$filename = "_menu_load_text"
		case(@ボタン_メニュー_コンフィグ)		$filename = "_menu_config_text"
//		case(@ボタン_メニュー_エクストラ)		$filename = ""
		case(@ボタン_メニュー_ゲーム終了)		$filename = "_menu_exit_text"
//		case(@ボタン_メニュー_別ルートから始める１)	$filename = ""
		}
		
		$stage.object[@イメージ_ボタンテキスト + $i].create($filename, 1, $stage.object[$i].x, $stage.object[$i].y)
		$stage.object[@イメージ_ボタンテキスト + $i].wipe_copy = 1
		$stage.object[@イメージ_ボタンテキスト + $i].y_rep.resize(1)
	}
}

// 指定した間隔でムービーをループ再生するフレームアクション
command $$fa_movie_loop(property $fa : frameaction, property $obj : object, property $loop_time)
{
	l[0] = $fa.counter.get / $loop_time
	
	if( l[0] != $obj.f[0] )
	{
		$obj.seek_movie(0)
		$obj.resume_movie
		
		$obj.f[0] = l[0]
	}
}

// シーンオブジェクトのアニメーションを設定する
command $$set_scene_object_animation(property $stage : stage)
{
	property $i
	
	// 空背景
	$stage.object[@イメージ_空背景].patno = 1
	$stage.object[@イメージ_空背景].set_scale(2000, 2000)
	$stage.object[@イメージ_空背景].scale_x_eve.set_real(1500, 12000, 0, 0)
	$stage.object[@イメージ_空背景].scale_y_eve.set_real(1500, 12000, 0, 0)
	$stage.object[@イメージ_空背景].bright = 255
	$stage.object[@イメージ_空背景].bright_eve.set_real(0, 2500, 0, 0)
	
	// フィルター
	$stage.object[@イメージ_フィルター].tr = 255
	$stage.object[@イメージ_フィルター].tr_eve.set_real(0, 1500, 0, 2)
	
	// 背景（キャラなし）
	$stage.object[@イメージ_背景キャラなし].tr = 0
	$stage.object[@イメージ_背景キャラなし].tr_eve.set_real(255, 2000, 7500, 0)
	$stage.object[@イメージ_背景キャラなし].y = 1080
	$stage.object[@イメージ_背景キャラなし].y_eve.set_real(0, 18000, 0, 0)
	$stage.object[@イメージ_背景キャラなし].bright = 255
	$stage.object[@イメージ_背景キャラなし].bright_eve.set_real(0, 4000, 8500, 0)
	
	// 背景（キャラあり）
	$stage.object[@イメージ_背景キャラあり].set_scale(1020, 1020)
	$stage.object[@イメージ_背景キャラあり].scale_x_eve.set_real(1000, 500, 18000, 2)
	$stage.object[@イメージ_背景キャラあり].scale_y_eve.set_real(1000, 500, 18000, 2)
	$stage.object[@イメージ_背景キャラあり].tr = 0
	$stage.object[@イメージ_背景キャラあり].tr_eve.set_real(255, 1000, 18000, 0)
	$stage.object[@イメージ_背景キャラあり].bright = 196
	$stage.object[@イメージ_背景キャラあり].bright_eve.set_real(0, 1000, 18000, 0)
	
	// ブランドロゴ
	// ※スタートシーンで作成済みのためfront
	front.object[@イメージ_ブランドロゴ].tr_eve.set_real(0, 2000, 4500, 0)
	
	// タイトルロゴ
	$stage.object[@イメージ_タイトルロゴ].tr = 0
	$stage.object[@イメージ_タイトルロゴ].tr_eve.set_real(255, 1500, 19000, 0)
	$stage.object[@イメージ_タイトルロゴ].set_scale(1250, 1250)
	$stage.object[@イメージ_タイトルロゴ].scale_x_eve.set_real(1000, 1500, 19000, 0)
	$stage.object[@イメージ_タイトルロゴ].scale_y_eve.set_real(1000, 1500, 19000, 0)
	
	// copyright
	$stage.object[@イメージ_コピーライト].tr = 0
	$stage.object[@イメージ_コピーライト].tr_eve.set_real(255, 1000, 21000, 0)
	
	// ボタン／ボタンテキスト
	for( $i = @ボタン_メニュー_最初から, $i < @ボタン_メニュー_別ルートから始める３, $i += 1 )
	{
		if( $stage.object[$i].disp == 0 ) {
			continue
		}
		
		// ボタンは画像を持たないので限りなく不透明にする
		$stage.object[$i].tr = 0
		$stage.object[$i].tr_eve.set_real(1, 1000, 21000, 0)
		
		// ボタンテキスト
		$stage.object[@イメージ_ボタンテキスト + $i].y_rep.resize(1)
		$stage.object[@イメージ_ボタンテキスト + $i].y_rep[0] = 30
		$stage.object[@イメージ_ボタンテキスト + $i].y_rep_eve[0].set_real(0, 1000, 21000, 0)
		$stage.object[@イメージ_ボタンテキスト + $i].tr = 0
		$stage.object[@イメージ_ボタンテキスト + $i].tr_eve.set_real(255, 1000, 21000, 0)
	}
	
	// ムービー（塵／空）
	$stage.object[@ムービー_塵_空].set_scale(2000, 2000)
	$stage.object[@ムービー_塵_空].scale_x_eve.set_real(1500, 12000, 0, 0)
	$stage.object[@ムービー_塵_空].scale_y_eve.set_real(1500, 12000, 0, 0)
	$stage.object[@ムービー_塵_空].tr_eve.set_real(0, 1000, 9500, 0)
	$stage.object[@ムービー_塵_空].resume_movie
	
	// ムービー（塵／遠）
	$stage.object[@ムービー_塵_遠].set_scale(1000, 1000)
	$stage.object[@ムービー_塵_遠].scale_x_eve.set_real(1500, 10000, 8500, 0)
	$stage.object[@ムービー_塵_遠].scale_y_eve.set_real(1500, 10000, 8500, 0)
	$stage.object[@ムービー_塵_遠].tr = 0
	$stage.object[@ムービー_塵_遠].tr_eve.set_real(255, 2000, 8500, 2)
	$stage.object[@ムービー_塵_遠].tr_rep[0] = 255
	$stage.object[@ムービー_塵_遠].tr_rep_eve[0].set_real(0, 2000, 17500, 2)
	$stage.object[@ムービー_塵_遠].resume_movie
	
	// ムービー（塵／近）
	$stage.object[@ムービー_塵_近].set_scale(1000, 1000)
	$stage.object[@ムービー_塵_近].scale_x_eve.set_real(1500, 10000, 8500, 0)
	$stage.object[@ムービー_塵_近].scale_y_eve.set_real(1500, 10000, 8500, 0)
	$stage.object[@ムービー_塵_近].tr = 0
	$stage.object[@ムービー_塵_近].tr_eve.set_real(255, 2000, 8500, 2)
	$stage.object[@ムービー_塵_近].tr_rep[0] = 255
	$stage.object[@ムービー_塵_近].tr_rep_eve[0].set_real(0, 2000, 17500, 2)
	$stage.object[@ムービー_塵_近].resume_movie
	
	// ムービー（風ループ）
	$stage.object[@ムービー_風上段_ループ].tr_eve.set_real( 32, 500, 12500, 0)
	$stage.object[@ムービー_風下段_ループ].tr_eve.set_real(128, 500, 12500, 0)
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_menu_joypad_navigation(property $stage : stage)
{
	$stage.object[@ボタン_メニュー_最初から].joypad_up    = -1
	$stage.object[@ボタン_メニュー_最初から].joypad_down  = -1
	$stage.object[@ボタン_メニュー_最初から].joypad_left  = @ボタン_メニュー_ゲーム終了
	$stage.object[@ボタン_メニュー_最初から].joypad_right = @ボタン_メニュー_前回の続きから
	
	$stage.object[@ボタン_メニュー_前回の続きから].joypad_up    = -1
	$stage.object[@ボタン_メニュー_前回の続きから].joypad_down  = -1
	$stage.object[@ボタン_メニュー_前回の続きから].joypad_left  = @ボタン_メニュー_最初から
	$stage.object[@ボタン_メニュー_前回の続きから].joypad_right = @ボタン_メニュー_続きから
	
	$stage.object[@ボタン_メニュー_続きから].joypad_up    = -1
	$stage.object[@ボタン_メニュー_続きから].joypad_down  = -1
	$stage.object[@ボタン_メニュー_続きから].joypad_left  = @ボタン_メニュー_前回の続きから
	$stage.object[@ボタン_メニュー_続きから].joypad_right = @ボタン_メニュー_コンフィグ
	
	$stage.object[@ボタン_メニュー_コンフィグ].joypad_up    = -1
	$stage.object[@ボタン_メニュー_コンフィグ].joypad_down  = -1
	$stage.object[@ボタン_メニュー_コンフィグ].joypad_left  = @ボタン_メニュー_続きから
	$stage.object[@ボタン_メニュー_コンフィグ].joypad_right = @ボタン_メニュー_ゲーム終了
	
	$stage.object[@ボタン_メニュー_ゲーム終了].joypad_up    = -1
	$stage.object[@ボタン_メニュー_ゲーム終了].joypad_down  = -1
	$stage.object[@ボタン_メニュー_ゲーム終了].joypad_left  = @ボタン_メニュー_コンフィグ
	$stage.object[@ボタン_メニュー_ゲーム終了].joypad_right = @ボタン_メニュー_最初から
}

//---------------------------------------------------------------------------
// タイトルメニュー遷移時のフェードを表示する
//---------------------------------------------------------------------------
command $$show_menu_start_fade
{
}

//---------------------------------------------------------------------------
// スタートボタンを押したときの処理
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$push_menu_start_button
{
	// ボタン効果音を再生する
	se.play_by_se_no(<BUTTON_SE_COMPLETE>)
	
	@bgm_stop(3000)
	@fade_w(0, 3000)
	
	// メニュー画面でのユーザー制御を解除する
	$$menu_control_disabled
	
	// エピソード選択画面へ
	jump("001_シナリオフロー", 00)
}

//---------------------------------------------------------------------------
// 別ルートから始めるボタンを押したときの処理
// ※システム画面psdで別ルートから始めるボタンが指定されていない場合は実行されません
//---------------------------------------------------------------------------
command $$push_menu_route_button(property $route_no)
{
	// ボタン効果音を再生する
	se.play_by_se_no(<BUTTON_SE_COMPLETE>)
	
	@bgm_stop(1000)		// ＢＧＭを停止する
	@fade_w(3)			// 白フェード
	timewait_key(500)	// ウェイト待ち
	
	// メニュー画面でのユーザー制御を解除する
	$$menu_control_disabled
	
	// 各シナリオへ
	switch( $route_no ) {
	case(1)		jump("001_シナリオフロー", 400)
	}
}

//---------------------------------------------------------------------------
// パーティクル（キャラ表示時）
//---------------------------------------------------------------------------
command $$create_menu_particle_disp_chara(property $obj : object, property $start_time)
{
	$obj.disp = 1
	$obj.child.resize(2)
	$obj.blend = 1
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[0], ef_light_ball,		// 使用するオブジェクト, 画像
						64, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						5000, 7000,						// 消滅する時間(最小、最大)
						4, 8, -10, -2					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[0],			// 使用するオブジェクト
								300, 1060, 700, 930		// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[0], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						25, 50, 25, 50				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[0],					// 使用するオブジェクト
						$start_time, $start_time		// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[0], 0,				// 使用するオブジェクト, 角度を固定するか
						-7200, 7200, -3600, 3600		// 回転角(最小、最大)
	)
	// パーティクルの外力を設定する
	$$set_particle_outside_force($obj.child[0],			// 使用するオブジェクト
						-2, 1, -1, 0					// 外力(x最小、x最大、y最小、y最大)
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[0], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[0],					// 使用するオブジェクト
						"#00fa9a", "#7fff00", 128		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	// パーティクルをワンショットにする
	$$set_particle_oneshot($obj.child[0])
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[1], ef_particle01,		// 使用するオブジェクト, 画像
						64, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						5000, 7000,						// 消滅する時間(最小、最大)
						4, 6, -10, -2					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[1],			// 使用するオブジェクト
								760, 1520, 700, 930		// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[1], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						125, 150, 125, 150				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[1],					// 使用するオブジェクト
						$start_time, $start_time		// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[1], 0,				// 使用するオブジェクト, 角度を固定するか
						-7200, 7200, -3600, 3600		// 回転角(最小、最大)
	)
	// パーティクルの外力を設定する
	$$set_particle_outside_force($obj.child[1],			// 使用するオブジェクト
						-1, 2, -1, 0					// 外力(x最小、x最大、y最小、y最大)
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[1], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[1],					// 使用するオブジェクト
						"#00fa9a", "#7fff00", 128		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	// パーティクルをワンショットにする
	$$set_particle_oneshot($obj.child[1])
	
	// パーティクルの実行
	$obj.child[0].frame_action.start_real(-1, "$$fa_particle")
	$obj.child[1].frame_action.start_real(-1, "$$fa_particle")
}

//---------------------------------------------------------------------------
// パーティクル（空）
//---------------------------------------------------------------------------
command $$create_menu_particle_sky(property $obj : object)
{
	$obj.disp = 0
	$obj.wipe_copy = 1
	$obj.child.resize(2)
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[0], ef_particle01,		// 使用するオブジェクト, 画像
						48, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						10000, 12000,					// 消滅する時間(最小、最大)
						-2, 2, -2, 2					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[0],			// 使用するオブジェクト
								0, 1920, 0, 200			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[0], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						100, 125, 100, 125				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[0],					// 使用するオブジェクト
						0, 8000							// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[0], 0,				// 使用するオブジェクト, 角度を固定するか
						-3600, 3600, -3600, 3600		// 回転角(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[0],					// 使用するオブジェクト
						"#98fb98", "#1e90ff", 128		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[0], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	
	$obj.child[0].blend = 1									// 合成タイプを加算にする
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[1], ef_particle01,		// 使用するオブジェクト, 画像
						48, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						10000, 12000,					// 消滅する時間(最小、最大)
						-1, 1, -1, 1					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[1],			// 使用するオブジェクト
								0, 1920, 0, 200			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[1], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						50, 75, 50, 75					// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[1],					// 使用するオブジェクト
						0, 8000							// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[1], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, 1800, -1800, 1800		// 回転角(最小、最大)
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[1], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[1],					// 使用するオブジェクト
						"#98fb98", "#1e90ff", 128		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	
	$obj.child[1].blend = 1									// 合成タイプを加算にする
	$obj.child[1].tr = 128									// 不透明度を160=62%にする
}

command $$play_menu_particle_sky(property $obj : object)
{
	$obj.child[0].frame_action.start_real(-1, "$$fa_particle")	// パーティクルの実行
	$obj.child[1].frame_action.start_real(-1, "$$fa_particle")	// パーティクルの実行
	$obj.disp = 1
}
