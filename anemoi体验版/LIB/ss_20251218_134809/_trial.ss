//===========================================================================
//!
//!    @file     _trial.ss
//!    @brief    製品版告知シーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

//---------------------------------------------------------------------------
// 定義
//---------------------------------------------------------------------------
#inc_start
	
	// ボタン
	#replace	@ボタン_体験版_ショップ			11
	#replace	@ボタン_体験版_タイトル			12
	
	#property	$select_btn				// 選択したボタン
	
#inc_end

//---------------------------------------------------------------------------
// 製品版告知シーン開始
//---------------------------------------------------------------------------
#z00

script.set_ctrl_skip_disable			// 早送りを禁止する

// サウンド系を停止する
@all_sound_stop(0)
koe_stop

@fade_w			// 白フェード
@bgm(bgm24c)	// ＢＧＭ再生

// メニュー画面でのユーザー制御を設定する
$$menu_control_enabled

// メッセージバックを禁止する
script.set_msg_back_disable

$$create_scene_object(back)		// シーンオブジェクトを作成する
$$show_scene_object(back)		// シーンオブジェクトを表示する

// 入力制御を開始する
$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)

while(1)
{
	// 入力制御を更新する
	$select_btn = $$input_update(front, <OBJBTN_GROUP_NO_SELECT>)
	
	// キャンセルは何も押していないとして処理する
	if( $select_btn == -1 )
	{
		$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
		$select_btn = -2
	}
	
	// ショップボタンが押された場合
	if( $select_btn == @ボタン_体験版_ショップ )
	{
		// ウィンドウモードに戻す
		syscom.set_window_mode(0)
		
		// ウェブページを開く
		system.shell_open_web("https://key.visualarts.gr.jp/anemoi/shop_guide.html")
		
		// ボタンの選択状態をリセットして入力制御を再開始する
		$$input_start(front, <OBJBTN_GROUP_NO_SELECT>)
		$select_btn = -2
	}
	
	// タイトルボタンが押された場合
	if( $select_btn == @ボタン_体験版_タイトル )
	{
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

@bgm_stop(1500)
$$hide_scene_object(front)		// シーンオブジェクトを非表示にする

return


//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_scene_object(property $stage : stage)
{
	$stage.object[0].create(_trial_bg, 1, 0, 0, 7)
	$stage.object[1].create(_trial_bg, 1, 0, 0, 0)
	$stage.object[2].create(_trial_bg, 1, 0, 0, 1)
	$stage.object[3].create(_trial_bg, 1, 0, 0, 2)
	$stage.object[4].create(_trial_bg, 1, 0, 0, 3)
	$stage.object[5].create(_trial_bg, 1, 0, 0, 4)
	$stage.object[6].create(_trial_bg, 1, 0, 0, 5)
	$stage.object[7].create(_trial_bg, 1, 0, 0, 6)
	$$create_ui_button($stage.object[@ボタン_体験版_ショップ], _trial_shop_btn, 977, 833, @ボタン_体験版_ショップ, <OBJBTN_GROUP_NO_SELECT>, 1)
	$$create_ui_button($stage.object[@ボタン_体験版_タイトル], _trial_title_btn, 1420, 833, @ボタン_体験版_タイトル, <OBJBTN_GROUP_NO_SELECT>, 3)
	
	$$create_trial_particle($stage.object[8])
	
	$stage.object[9].create_movie(ef_wind02, 1, 0, -100, auto_free = 0)
	$stage.object[9].set_scale(500, 500)
	$stage.object[9].blend = 4
	$stage.object[9].tr = 96
	$stage.object[9].f.resize(1)
	$stage.object[9].frame_action.start(-1, "$$fa_movie_loop", 8000)
	
	$stage.object[10].create_movie(ef_wind02, 1, 0, 410, auto_free = 0)
	$stage.object[10].set_scale(650, 650)
	$stage.object[10].blend = 1
	$stage.object[10].tr = 64
	$stage.object[10].f.resize(1)
	$stage.object[10].frame_action.start(-1, "$$fa_movie_loop", 10000)
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

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_joypad_navigation(property $stage : stage)
{
	$stage.object[@ボタン_体験版_ショップ].joypad_up    = -1
	$stage.object[@ボタン_体験版_ショップ].joypad_down  = -1
	$stage.object[@ボタン_体験版_ショップ].joypad_left  = @ボタン_体験版_タイトル
	$stage.object[@ボタン_体験版_ショップ].joypad_right = @ボタン_体験版_タイトル
	
	$stage.object[@ボタン_体験版_タイトル].joypad_up    = -1
	$stage.object[@ボタン_体験版_タイトル].joypad_down  = -1
	$stage.object[@ボタン_体験版_タイトル].joypad_left  = @ボタン_体験版_ショップ
	$stage.object[@ボタン_体験版_タイトル].joypad_right = @ボタン_体験版_ショップ
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
//---------------------------------------------------------------------------
command $$show_scene_object(property $stage : stage)
{
	property $i
	
	// ショップボタンをデフォルトにする
	$$set_joypad_focus_button(@ボタン_体験版_ショップ)
	
	// パッド入力の遷移を設定する
	$$set_joypad_navigation($stage)
	
	//---------------------------------------------------------------------------
	// アニメーション設定
	
	// 背景
	$$set_image_center_rep($stage.object[0])
	$stage.object[0].set_scale(1050, 1050)
	$stage.object[0].scale_x_eve.set(1000, 2000, 0, 2)
	$stage.object[0].scale_y_eve.set(1000, 2000, 0, 2)
	$stage.object[0].bright = 255
	$stage.object[0].bright_eve.set(0, 2000, 0, 1)
	
	// 初回限定版
	$$set_tr_eve($stage.object[1], 0, 255, 1500, 3000, 2)
	$$set_pos_y_rep_eve($stage.object[1], 0, 20, 0, 1500, 3000, 2)
	
	// 初回限定版（内容）
	$$set_tr_eve($stage.object[2], 0, 255, 1500, 4500, 2)
	$$set_pos_y_rep_eve($stage.object[2], 0, 20, 0, 1500, 4500, 2)
	
	// スタッフ
	$$set_tr_eve($stage.object[3], 0, 255, 1500, 6500, 2)
	$$set_pos_y_rep_eve($stage.object[3], 0, 20, 0, 1500, 6500, 2)
	
	// スタッフ（内容）
	$$set_tr_eve($stage.object[4], 0, 255, 1500, 6500, 2)
	$$set_pos_y_rep_eve($stage.object[4], 0, 20, 0, 1500, 6500, 2)
	
	// 発売日
	$stage.object[5].set_center_rep(1415, 724)
	$$set_tr_eve($stage.object[5], 0, 255, 1500, 8500, 2)
	$$set_scale_eve($stage.object[5], 1100, 1000, 1500, 8500, 2)
	
	// ボタン
	$$set_tr_eve($stage.object[@ボタン_体験版_ショップ], 0, 255, 1000, 10500, 2)
	$$set_pos_y_rep_eve($stage.object[@ボタン_体験版_ショップ], 0, 20, 0, 1000, 10500, 2)
	
	$$set_tr_eve($stage.object[@ボタン_体験版_タイトル], 0, 255, 1000, 10500, 2)
	$$set_pos_y_rep_eve($stage.object[@ボタン_体験版_タイトル], 0, 20, 0, 1000, 10500, 2)
	
	// 予約受付中
	$$set_tr_eve($stage.object[6], 0, 255, 1000, 11500, 0)
	
	// ブランドロゴ
	$$set_tr_eve($stage.object[7], 0, 255, 1000, 11500, 0)
	
	// ワイプ
	wipe(0, 1000, wait=1)
	
	counter[0].start_real
	
	//---------------------------------------------------------------------------
	// アニメーション終了 or 入力待ち
	while( 1 )
	{
		// アニメーション終了時間を経過している
		if( counter[0].get > 12500 ) {
			break
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
			
			break
		}
		
		input.next
		disp
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
//---------------------------------------------------------------------------
command $$hide_scene_object(property $stage : stage)
{
	// 全てのオブジェクトのワイプコピーフラグをオフにする
	$$off_system_front_wipe_copy_all
	
	// ワイプ
	wipe(0, 1500, wait=1)
}

//---------------------------------------------------------------------------
// パーティクル
//---------------------------------------------------------------------------
command $$create_trial_particle(property $obj : object)
{
	$obj.disp = 1
	$obj.child.resize(2)
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[0], ef_particle01,		// 使用するオブジェクト, 画像
						48, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						5000, 8000,						// 消滅する時間(最小、最大)
						-2, 2, -2, 2					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[0],			// 使用するオブジェクト
								0, 953, 0, 800			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[0], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						100, 125, 100, 125				// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[0],					// 使用するオブジェクト
						0, 5000							// ディレイ時間(最小、最大)
	)
	// パーティクルの回転角を設定する
	$$set_particle_rotate($obj.child[0], 0,				// 使用するオブジェクト, 角度を固定するか
						-1800, 1800, -1800, 1800		// 回転角(最小、最大)
	)
	// パーティクルの色を設定する
	$$set_particle_color($obj.child[0],					// 使用するオブジェクト
						"#98fb98", "#1e90ff", 128		// カラーコード範囲(最小、最大), どれぐらい色を適用するか
	)
	// パーティクルのパターン番号を設定する
	$$set_particle_patno($obj.child[0], 				// 使用するオブジェクト
						0, 1							// パターン番号(最小、最大)
	)
	
	$obj.child[0].blend = 1								// 合成タイプを加算にする
	
	$obj.child[0].frame_action.start_real(-1, "$$fa_particle")	// パーティクルの実行
	
	// パーティクル(直線)を作成する
	$$create_particle($obj.child[1], ef_particle01,		// 使用するオブジェクト, 画像
						48, 1,							// パーティクルの数, 中心座標を画像中心にするか(g00で設定しているなら0)
						5000, 8000,						// 消滅する時間(最小、最大)
						-1, 1, -1, 1					// 動く方向x(最小、最大), 動く方向y(最小、最大)
	)
	// パーティクルの発生範囲を矩形にする
	$$set_particle_shape_to_box($obj.child[1],			// 使用するオブジェクト
								0, 953, 0, 800			// 矩形範囲(x最小、x最大、y最小、y最大)
	)
	
	// パーティクルの拡縮率を設定する
	$$set_particle_scale($obj.child[1], 1, 				// 使用するオブジェクト, アスペクト比を維持するか
						50, 75, 50, 75					// 拡縮率(x最小、x最大、y最小、y最大)
	)
	// パーティクルのディレイ時間を設定する
	$$set_particle_delay($obj.child[1],					// 使用するオブジェクト
						0, 5000							// ディレイ時間(最小、最大)
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
	
	$obj.child[1].blend = 1								// 合成タイプを加算にする
	;$obj.child[1].tr = 128								// 不透明度を128=50%にする
	
	$obj.child[1].frame_action.start_real(-1, "$$fa_particle")	// パーティクルの実行
}
