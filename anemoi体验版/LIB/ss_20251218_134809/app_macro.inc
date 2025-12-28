//===========================================================================
//!
//!    @file     __app_macro.inc
//!    @brief    アプリケーション専用マクロ
//!
//!    @author   Copyright (C)2024- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     汎用的でないアプリケーション固有のマクロ
//!
//===========================================================================

//---------------------------------------------------------------------------
// オブジェクト定義
//---------------------------------------------------------------------------
#replace	<OBJ_APP_EFFECT01>		90			// エフェクト
#replace	<OBJ_APP_EFFECT02>		91			// エフェクト
#replace	<OBJ_APP_EFFECT03>		92			// エフェクト
#replace	<OBJ_APP_EFFECT04>		93			// エフェクト


//---------------------------------------------------------------------------
// フォント定義
//---------------------------------------------------------------------------
#replace	@アイテム獲得フォント		"FOT-キアロ Std B"


//---------------------------------------------------------------------------
// システム
//---------------------------------------------------------------------------
#macro	@本編ユーザー制御
	syscom.set_syscom_menu_disable			// システムコマンドを禁止する
	syscom.set_hide_mwnd_enable_flag(0)		// ウィンドウを消すを禁止する
	script.set_mouse_disp_off				// マウスカーソルを非表示にする
	script.set_msg_back_disable				// メッセージバックを禁止する
	script.set_shortcut_disable				// ショートカットを禁止する

#macro	@本編ユーザー制御解除
	syscom.set_syscom_menu_enable			// システムコマンドを許可する
	syscom.set_hide_mwnd_enable_flag(1)		// ウィンドウを消すを許可する
	script.set_mouse_disp_on				// マウスカーソルを表示する
	script.set_msg_back_enable				// メッセージバックを許可する
	script.set_shortcut_enable				// ショートカットを許可する

#macro	@ゲームパッド早送り可能制御
	script.set_allow_joypad_mode_onoff(1)
	frame_action_ch[<FRAME_ACTION_CH_CHK_PAD_INPUT>].start(-1, "$$fa_check_joypad_input")

#macro	@ゲームパッド早送り可能制御解除
	script.set_allow_joypad_mode_onoff_default
	frame_action_ch[<FRAME_ACTION_CH_CHK_PAD_INPUT>].end
	frame		// フレームアクション終了処理が先に終わる保証がなさそうな気がするので念のため時間を更新する

// メッセージウィンドウが一度も表示されてないタイトルメニューなどから既読スキップを可能にする特殊な命令
// ※特殊なので冒頭など以外では使用しない※
#macro	@既読スキップ可能用空行挿入
	set_waku(2)			// 枠を透明に変更する
	""					// 空行
	clear				// メッセージウィンドウをクリアする
	close				// メッセージウィンドウを閉じる
	
	// タブレットモードによって戻す枠を変更する
	if( <TABLET_MODE> == <TABLET_MODE_OFF> ) {
		set_waku(__DEFAULT_MW_WAKU_NO)
	} else {
		set_waku(__TABLET_MODE_WAKU_NO)
	}

#replace	<FRAME_ACTION_CH_CHK_PAD_INPUT>		5		// パッド入力監視

#command $$fa_check_joypad_input(frameaction)			// ユーザー制御中にパッド入力を監視するフレームアクション


//---------------------------------------------------------------------------
// ムービー
//---------------------------------------------------------------------------
#macro	@ＯＰムービー
	$$play_movie("anemoi_op", @ＯＰを見た)
	@ＯＰを見た = 1
	//bgmtable.set_listen_by_name(bgmxxx, 1)		// ＢＧＭフラグ(ＯＰ)
	@fade(0, 1000)
	@waitkey(2000)


//---------------------------------------------------------------------------
// フェード系
//---------------------------------------------------------------------------
#macro	@時間経過(@wipe_no(3), @wait_time(1000), @se_fade_time(2000))
	@se_stop_all(@se_fade_time)
	@fade(@wipe_no, @wait_time)
	@waitkey(@wait_time)

#macro	@その場で時間経過(@fade_wipe_no(3), @wait_time(1000), @disp_wipe_no(3))
	K[0] = front.object[<OBJ_BG>].get_file_name
	@fade(@fade_wipe_no, @wait_time)
	@waitkey(@wait_time)
	@bg(K[0], @disp_wipe_no)

#macro	@移動(@wait_time(1000), @bgm_stop_time(2000))
	if( @bgm_stop_time != -1 ) {
		@bgm_stop(@bgm_stop_time)
	}
	@fade(25)
	if( @wait_time > 0 ) {
		@waitkey(@wait_time)
	}

#macro	@場所移動(@bg_name, @wait_time(1000))
	@fade(25)
	if( @wait_time > 0 ) {
		@waitkey(@wait_time)
	}
	@bg(@bg_name, 25)


//---------------------------------------------------------------------------
// ベース演出の拡張系
//---------------------------------------------------------------------------
// 立ち絵フォーカス
#macro	@focus(@bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @bg_name(<NONE>), @close(__DEFAULT_BG_MSG_CLOSE), @bg_scale(2000), @bg_offset_x(0), @bg_offset_y(0))
	if( @close ) { close }
	if( @bg_name == <NONE> ) { K[0] = front.object[<OBJ_BG>].get_file_name }
	else { K[0] = $$get_bg_time_control_name(@bg_name) }
	if( K[0].left(2) != "b_" ) { K[0] = "b_" + K[0] }
	if( $$exists_g00(K[0]) == 0 ) { K[0] = K[0].mid(2, K[0].cnt) }
	@bg_set(K[0], @bg_scale, @bg_offset_x, @bg_offset_y)
	@bs_set(@bs_name)
	@wipe(@wipe_no)

// 立ち絵フォーカス終了
#macro	@focus_end(@bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @bg_name(<NONE>), @close(__DEFAULT_BG_MSG_CLOSE))
	if( @close ) { close }
	if( @bg_name == <NONE> ) { K[0] = front.object[<OBJ_BG>].get_file_name }
	else { K[0] = $$get_bg_time_control_name(@bg_name) }
	if( K[0].left(2) == "b_" ) { K[0] = K[0].mid(2, K[0].cnt) }
	if( $$exists_g00(K[0]) == 0 ) { K[0] = K[0].mid(2, K[0].cnt) }
	@bg_set(K[0])
	@bs_set(@bs_name)
	@wipe(@wipe_no)

// 立ち絵パン(x)
#macro	@bgs_pan_x(@bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @bg_name(<NONE>), @move_time(3000), @speed_mode(2), @bs_pos_x(0), @bs_pos_y(0), @move_x(100), @close(__DEFAULT_BG_MSG_CLOSE))
	if( @close ) { close }
	if( @bg_name == <NONE> ) { K[0] = front.object[<OBJ_BG>].get_file_name }
	else { K[0] = $$get_bg_time_control_name(@bg_name) }
	if( K[0].left(2) != "b_" ) { K[0] = "b_" + K[0] }
	if( $$exists_g00(K[0]) == 0 ) { K[0] = K[0].mid(2, K[0].cnt) }
	@bg_move(K[0], -1, -@move_x / 2, 0, 0, 0, @move_time, @speed_mode)
	@bs_set(@bs_name, @bs_pos_x - @move_x, @bs_pos_y)
	@bs_move_x(@bs_name, @move_x, @move_time, 0, @speed_mode, 0, 1)
	@wipe(@wipe_no)

// 立ち絵パン(y)
#macro	@bgs_pan_y(@bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @bg_name(<NONE>), @move_time(3000), @speed_mode(2), @bs_pos_x(0), @bs_pos_y(0), @move_y(100), @close(__DEFAULT_BG_MSG_CLOSE))
	if( @close ) { close }
	if( @bg_name == <NONE> ) { K[0] = front.object[<OBJ_BG>].get_file_name }
	else { K[0] = $$get_bg_time_control_name(@bg_name) }
	if( K[0].left(2) != "b_" ) { K[0] = "b_" + K[0] }
	if( $$exists_g00(K[0]) == 0 ) { K[0] = K[0].mid(2, K[0].cnt) }
	@bg_move(K[0], -1, 0, -@move_y / 2, 0, 0, @move_time, @speed_mode)
	@bs_set(@bs_name, @bs_pos_x, @bs_pos_y - @move_y)
	@bs_move_y(@bs_name, @move_y, @move_time, 0, @speed_mode, 0, 1)
	@wipe(@wipe_no)

// 立ち絵ドラマパン(x)
#macro	@bgs_drama_pan_x(@bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @bg_name(<NONE>), @move_time(3000), @speed_mode(2), @bs_pos_x(0), @bs_pos_y(0), @move_x(100), @close(__DEFAULT_BG_MSG_CLOSE))
	if( @close ) { close }
	if( @bg_name == <NONE> ) { K[0] = front.object[<OBJ_BG>].get_file_name }
	else { K[0] = $$get_bg_time_control_name(@bg_name) }
	if( K[0].left(2) != "b_" ) { K[0] = "b_" + K[0] }
	if( $$exists_g00(K[0]) == 0 ) { K[0] = K[0].mid(2, K[0].cnt) }
	@bg_move(K[0], -1, @move_x / 2, 0, 0, 0, @move_time, @speed_mode)
	@bs_set(@bs_name, @bs_pos_x - @move_x, @bs_pos_y)
	@bs_move_x(@bs_name, @move_x, @move_time, 0, @speed_mode, 0, 1)
	@wipe(@wipe_no)

// 立ち絵ドラマパン(y)
#macro	@bgs_drama_pan_y(@bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @bg_name(<NONE>), @move_time(3000), @speed_mode(2), @bs_pos_x(0), @bs_pos_y(0), @move_y(100), @close(__DEFAULT_BG_MSG_CLOSE))
	if( @close ) { close }
	if( @bg_name == <NONE> ) { K[0] = front.object[<OBJ_BG>].get_file_name }
	else { K[0] = $$get_bg_time_control_name(@bg_name) }
	if( K[0].left(2) != "b_" ) { K[0] = "b_" + K[0] }
	if( $$exists_g00(K[0]) == 0 ) { K[0] = K[0].mid(2, K[0].cnt) }
	@bg_move(K[0], -1, 0, @move_y / 2, 0, 0, @move_time, @speed_mode)
	@bs_set(@bs_name, @bs_pos_x, @bs_pos_y - @move_y)
	@bs_move_y(@bs_name, @move_y, @move_time, 0, @speed_mode, 0, 1)
	@wipe(@wipe_no)

// 立ち絵影化
#macro	@bs_shadow(@bs_name, @dark(255), @tr(255))
	l[0] = $$get_bs_obj_index(@bs_name)
	back.object[l[0]].color_r = 0
	back.object[l[0]].color_g = 0
	back.object[l[0]].color_b = 0
	back.object[l[0]].color_rate = @dark
	back.object[l[0]].tr = @tr
	back.object[l[0]].dark = @dark

// 立ち絵拡縮
#macro	@bs_scale(@bs_name, @src_zoom(1500), @dst_zoom(1000), @zoom_time(30000), @speed_mode(0), @center_rep_y(980))
	back.object[$$get_bs_obj_index(@bs_name)].center_rep_y = @center_rep_y
	$$set_scale_eve(back.object[$$get_bs_obj_index(@bs_name)], @src_zoom, @dst_zoom, @zoom_time, 0, @speed_mode)


//---------------------------------------------------------------------------
// 日付
//---------------------------------------------------------------------------
#command $$set_date(str)			// 日付の設定(文字列指定)


//---------------------------------------------------------------------------
// 称号（マクロは000_称号.inc）
//---------------------------------------------------------------------------
#command $$get_title : str								// 現在の称号を取得する
#command $$set_title(str)								// 現在の称号を設定する
#command $$has_title(str) : int							// 過去に称号を取得したことがあるか
#command $$get_title_get_text(str) : str				// 称号獲得時のテキストを取得する
#command $$play_title_get_animation(object, str, int)	// 称号獲得アニメーションを再生する


//---------------------------------------------------------------------------
// アイテム
//---------------------------------------------------------------------------
#macro	@アイテムを獲得(@メッセージ, @アニメーションタイプ(0))
	close
	$$play_item_get_animation(front.object[<OBJ_APP_EFFECT01>], @メッセージ, @アニメーションタイプ)

#command $$play_item_get_animation(object, str, int)	// アイテム獲得アニメーションを再生する


//---------------------------------------------------------------------------
// 画像文字（声再生のみ行わない）
//---------------------------------------------------------------------------
#macro	@画像文字_声再生なし(@filename, @patno(0), @name(""), @msg(""), @koe_no(-1), @chara_no(-1), @pos_x(0), @pos_y(0), @savepoint(1))

	// メッセージが設定されている／セーブポイントフラグがオンの場合はセーブポイントを設定する
	if( @msg != "" && @savepoint ) {
		savepoint
	}
	
	// ファイルネームは = デフォルトネーム + 末尾数字２桁(言語バージョン)にしています
	back.object[<OBJ_IMAGE_TEXT>].create(@filename + math.tostr_zero(@check_lang, 2), 1, @pos_x, @pos_y, @patno)
	back.object[<OBJ_IMAGE_TEXT>].layer = <LAYER_SCREEN>
	
	// メッセージバックに追加する
	$$add_msgback(@koe_no, @chara_no, @name, @msg)


//---------------------------------------------------------------------------
// アバン（冒頭）
//---------------------------------------------------------------------------
// 冒頭の画像文字
#macro	@アバン画像文字(@patno, @text, @koe_no(-1), @chara_no(-1), @wait_time(1500))
	@アバン画像文字表示(@patno, @text,				// 表示
						@koe_no, @chara_no)
	@アバン画像文字消去(@wait_time)					// 消去

// 冒頭の画像文字／個別制御版／表示
#macro	@アバン画像文字表示(@patno, @text, @koe_no(-1), @chara_no(-1))
	@画像文字_声再生なし(ef_avan_text, @patno, "",	// 画像文字作成
						@text, @koe_no, @chara_no)
	back.object[<OBJ_IMAGE_TEXT>].wipe_copy = 1		// ワイプコピーオン
	@wipe_nowait(54, 2500)							// 表示
	@waitkey(500)									// 待ち時間
	exkoe(@koe_no, @chara_no)						// 声の再生
	@waitkey(1250)									// 待ち時間

// 冒頭の画像文字／個別制御版／消去
#macro	@アバン画像文字消去(@wait_time(2500), @end_wait_time(500))
	koe_wait_key									// 声終了待ち
	@waitkey(@wait_time)							// 待ち時間
	front.object[<OBJ_IMAGE_TEXT>].wipe_copy = 0	// ワイプコピーオフ
	@wipe(54, 1000)									// 消去
	@waitkey(@end_wait_time)						// 待ち時間


//---------------------------------------------------------------------------
// 過去ストーリー
//---------------------------------------------------------------------------
// 過去に起きたことの画像文字
#macro	@過去ストーリー文字(@patno, @text, @koe_no(-1), @chara_no(-1), @wait_time(1500), @end_wait_time(500))
	@過去ストーリー文字準備(@patno, @text, @koe_no, @chara_no)	// 準備
	@wipe(0, 1500)												// 表示
	@過去ストーリー文字待ち										// 待ち

// 過去に起きたことの画像文字／裏待機
#macro	@過去ストーリー文字準備(@patno, @text, @koe_no(-1), @chara_no(-1))
	@画像文字(ef_story_text, @patno, "", @text,		// 画像文字作成
			  @koe_no, @chara_no)
	back.object[<OBJ_IMAGE_TEXT>].wipe_copy = 1		// ワイプコピーオン

// 過去に起きたことの画像文字／声終了待ち
#macro	@過去ストーリー文字待ち(@wait_time(1500), @end_wait_time(500))
	koe_wait_key									// 声終了待ち
	@waitkey(@wait_time)							// 待ち時間
	front.object[<OBJ_IMAGE_TEXT>].wipe_copy = 0	// ワイプコピーオフ
	@wipe(0, 2000)									// 消去
	@waitkey(@end_wait_time)						// 待ち時間

//---------------------------------------------------------------------------
// 火の粉（過去ストーリー）
//---------------------------------------------------------------------------
#macro	@過去ストーリー火の粉(@type(0))
	$$create_fire_spark_particle(back.object[<OBJ_APP_EFFECT01>], @type)

#macro	@過去ストーリー火の粉終了
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0

#command $$create_fire_spark_particle(object, int)		// 火の粉（過去ストーリー）



//---------------------------------------------------------------------------
// アイキャッチ
//---------------------------------------------------------------------------
#macro	@アイキャッチ(@date, @bg_name(ef_avan_bg02))

	// 0701冒頭は何もしない
	if( @date == "0701" )
	{
	}
	else
	{
		$$eye_catch(@date, @bg_name)
	}

#command $$eye_catch(str, str)			// アイキャッチ


//---------------------------------------------------------------------------
// オーロラ
//---------------------------------------------------------------------------
#macro	@オーロラ(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @close(__DEFAULT_BG_MSG_CLOSE), @type(0), @wipe_copy(0))
	if( @close ) { close }
	@オーロラ準備(@bg_name, @type, @wipe_copy)
	@オーロラ再生
	@wipe(@wipe_no)

#macro	@オーロラパン(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_block(4), @dst_block(6), @move_time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @type(0), @wipe_copy(0))
	if( @close ) { close }
	@オーロラ準備(@bg_name, @type, @wipe_copy)
	$$move_image_block(back.object[<OBJ_BG>], @src_block, @dst_block, @scale, @move_time, 0, @speed_mode)
	$$move_image_block(back.object[<OBJ_APP_EFFECT01>], @src_block, @dst_block, @scale, @move_time, 0, @speed_mode)
	@オーロラ再生
	@wipe(@wipe_no, -1, @wait, 0)

#macro	@オーロラパン→(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @type(0), @wipe_copy(0))
	@オーロラパン(@bg_name, @wipe_no, 4, 6, @time, @speed_mode, @scale, @close, @wait, @type, @wipe_copy)

#macro	@オーロラパン←(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @type(0), @wipe_copy(0))
	@オーロラパン(@bg_name, @wipe_no, 6, 4, @time, @speed_mode, @scale, @close, @wait, @type, @wipe_copy)

#macro	@オーロラパン↓(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(25000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @type(0), @wipe_copy(0))
	@オーロラパン(@bg_name, @wipe_no, 2, 8, @time, @speed_mode, @scale, @close, @wait, @type, @wipe_copy)

#macro	@オーロラパン↑(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(25000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @type(0), @wipe_copy(0))
	@オーロラパン(@bg_name, @wipe_no, 8, 2, @time, @speed_mode, @scale, @close, @wait, @type, @wipe_copy)

#macro	@オーロラ移動(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_x(0), @src_y(0), @dst_x(0), @dst_y(0), @move_time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @type(0), @wipe_copy(0))
	if( @close ) { close }
	@オーロラ準備(@bg_name, @type, @wipe_copy)
	back.object[<OBJ_BG>].set_scale(@scale, @scale)
	$$set_pos_eve(back.object[<OBJ_BG>], @src_x, @src_y, @dst_x, @dst_y, @move_time, 0, @speed_mode)
	back.object[<OBJ_APP_EFFECT01>].set_scale(@scale, @scale)
	$$set_pos_eve(back.object[<OBJ_APP_EFFECT01>], @src_x, @src_y, @dst_x, @dst_y, @move_time, 0, @speed_mode)
	@オーロラ再生
	@wipe(@wipe_no, -1, @wait, 0)

#macro	@オーロラズーム(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_scale(1500), @dst_scale(1000), @zoom_time(30000), @speed_mode(0), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @center_rep_x(-1), @center_rep_y(-1), @type(0), @wipe_copy(0))
	@オーロラ準備(@bg_name, @type, @wipe_copy)
	$$set_scale_eve(back.object[<OBJ_BG>], @src_scale, @dst_scale, @zoom_time, 0, @speed_mode)
	if( @center_rep_x != -1 ) {
		back.object[<OBJ_BG>].center_rep_x = @center_rep_x
	}
	if( @center_rep_y != -1 ) {
		back.object[<OBJ_BG>].center_rep_y = @center_rep_y
	}
	$$set_scale_eve(back.object[<OBJ_APP_EFFECT01>], @src_scale, @dst_scale, @zoom_time, 0, @speed_mode)
	if( @center_rep_x != -1 ) {
		back.object[<OBJ_APP_EFFECT01>].center_rep_x = @center_rep_x
	}
	if( @center_rep_y != -1 ) {
		back.object[<OBJ_APP_EFFECT01>].center_rep_y = @center_rep_y
	}
	@オーロラ再生
	@wipe(@wipe_no)

#macro	@オーロラズームアップ(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @zoom_time(30000), @speed_mode(0), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @center_rep_x(-1), @center_rep_y(-1), @type(0), @wipe_copy(0))
	@オーロラズーム(@bg_name, @wipe_no, 1000, 1500, @zoom_time, @speed_mode, @close, @wait, @center_rep_x, @center_rep_y, @type, @wipe_copy)
	
#macro	@オーロラズームダウン(@bg_name(ef_bg05), @wipe_no(__DEFAULT_BG_WIPE_NO), @zoom_time(30000), @speed_mode(0), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @center_rep_x(-1), @center_rep_y(-1), @type(0), @wipe_copy(0))
	@オーロラズーム(@bg_name, @wipe_no, 1500, 1000, @zoom_time, @speed_mode, @close, @wait, @center_rep_x, @center_rep_y, @type, @wipe_copy)

#macro	@オーロラ消去
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0

#macro	@オーロラ準備(@bg_name(ef_bg05), @type(0), @wipe_copy(1))
	@bg_set(@bg_name)
	if( @type == 0 ) { back.object[<OBJ_APP_EFFECT01>].create_movie_loop(ef_aurora_slow, 1, ready_only = 1) }
	else			 { back.object[<OBJ_APP_EFFECT01>].create_movie_loop(ef_aurora_fast, 1, ready_only = 1) }
	$$set_image_center_rep(back.object[<OBJ_APP_EFFECT01>])
	if( @wipe_copy ) { back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1 }
	disp

#macro	@オーロラ再生
	back.object[<OBJ_APP_EFFECT01>].resume_movie


//---------------------------------------------------------------------------
// 光の葉
//---------------------------------------------------------------------------
// ワイプで表示
#macro	@光の葉
	$$create_light_leaf_particle(back.object[<OBJ_APP_EFFECT01>], 0)
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1

#macro	@光の葉大きめ
	$$create_large_light_leaf_particle(back.object[<OBJ_APP_EFFECT01>])
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1

#macro	@光の葉終了
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0

#macro	@光の葉＋レンズフレア
	// 葉
	$$create_light_leaf_particle(back.object[<OBJ_APP_EFFECT01>], 1)
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1
	// レンズフレア
	@レンズフレア(<LENS_FLARE_TYPE_EVENING_RL>, 255, 4)
	back.object[<OBJ_EFFECT_LENS_FLARE>].wipe_copy = 1

#macro	@光の葉＋レンズフレア_フェードアウト(@time(12000))
	front.object[<OBJ_APP_EFFECT01>].tr_eve.set(0, @time, 0, 0)
	front.object[<OBJ_EFFECT_LENS_FLARE>].tr_eve.set(0, @time, 0, 0)

#macro	@光の葉＋レンズフレア終了
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 0
	back.object[<OBJ_EFFECT_LENS_FLARE>].wipe_copy = 0

#command $$create_light_leaf_particle(object, int)				// 光る葉っぱパーティクル
#command $$create_large_light_leaf_particle(object)				// 光る葉っぱパーティクル(大きめ)


//---------------------------------------------------------------------------
// 災獣
//---------------------------------------------------------------------------
#macro	@災獣_狼(@wipe_no(3))
	@災獣_表示(ef_dark_monster01, @wipe_no)

#macro	@災獣_表示(@filename, @wipe_no(3))
	back.object[<OBJ_APP_EFFECT01>].create_movie_loop(@filename, 1)
	// 960x480
	back.object[<OBJ_APP_EFFECT01>].set_scale(2000, 2000)
	back.object[<OBJ_APP_EFFECT01>].set_center_rep(960 / 2, 540 / 2)
	back.object[<OBJ_APP_EFFECT01>].set_pos(960 / 2, 540 / 2)
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1
	back.object[<OBJ_APP_EFFECT01>].layer = <LAYER_CHARACTER>
	$$set_image_center_rep(back.object[<OBJ_APP_EFFECT01>])
	@wipe(@wipe_no)

#macro	@災獣_拡大(@wipe_no(3), @scale(2500))
	back.object[<OBJ_APP_EFFECT01>].set_scale(@scale, @scale)
	@wipe(@wipe_no)

#macro	@災獣_縦スクロール(@wipe_no(3), @src_y(0), @dst_y(0), @scale(3000), @move_time(10000), @speed_mode(0), @offset_x(0))
	back.object[<OBJ_APP_EFFECT01>].set_scale(@scale, @scale)
	back.object[<OBJ_APP_EFFECT01>].x += @offset_x
	back.object[<OBJ_APP_EFFECT01>].y = @src_y
	back.object[<OBJ_APP_EFFECT01>].y_eve.set(@dst_y, @move_time, 0, @speed_mode)
	@wipe(@wipe_no)

#macro	@災獣_横スクロール(@wipe_no(3), @src_x(0), @dst_x(0), @scale(3000), @move_time(10000), @speed_mode(0), @offset_y(0))
	back.object[<OBJ_APP_EFFECT01>].set_scale(@scale, @scale)
	back.object[<OBJ_APP_EFFECT01>].x = @src_x
	back.object[<OBJ_APP_EFFECT01>].x_eve.set(@dst_x, @move_time, 0, @speed_mode)
	back.object[<OBJ_APP_EFFECT01>].y += @offset_y
	@wipe(@wipe_no)

#macro	@災獣_ズーム(@wipe_no(3), @src_scale(2500), @dst_scale(2500), @move_time(10000), @speed_mode(0))
	$$set_scale_eve(back.object[<OBJ_APP_EFFECT01>], @src_scale, @dst_scale, @move_time, 0, @speed_mode)
	@wipe(@wipe_no)

#macro	@災獣_咆哮(@type(0))
	if( @type == 0 ) {
		back.object[<OBJ_BG>].set_scale(1500, 1500)
		back.object[<OBJ_BG>].scale_x_eve.set(1000, 500, 0, 2)
		back.object[<OBJ_BG>].scale_y_eve.set(1000, 500, 0, 2)
		back.object[<OBJ_APP_EFFECT01>].set_scale(3000, 3000)
		back.object[<OBJ_APP_EFFECT01>].scale_x_eve.set(2000, 500, 0, 2)
		back.object[<OBJ_APP_EFFECT01>].scale_y_eve.set(2000, 500, 0, 2)
	}
	back.object[<OBJ_APP_EFFECT01>].blend = 0
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1
	@揺れ中
	@集中線(64)
	@wipe(122, 500)
	
	@集中線終了
	@wipe_nowait(121)
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0
	@揺れ強

#macro	@災獣_出現エフェクト(@bg_name)
	back.object[<OBJ_APP_EFFECT02>].create_movie_loop(ef_wind_dust02, 1)
	back.object[<OBJ_APP_EFFECT02>].blend = 4
	back.object[<OBJ_APP_EFFECT02>].wipe_copy = 1
	back.object[<OBJ_APP_EFFECT02>].color_add_b = 128
	back.object[<OBJ_APP_EFFECT02>].set_scale(2000, 2000)
	back.object[<OBJ_APP_EFFECT02>].y = 400
	back.object[<OBJ_APP_EFFECT02>].y_eve.set(-400, 5000, 0, 2)
	@bg_move(@bg_name, 3, 0, -200, 0, 200, 1000, 2, 2000)
	@waitkey(1000)
	@se(SE_creature_appear1, 500, 1)
	
#macro	@災獣_出現エフェクト消去
	front.object[<OBJ_APP_EFFECT02>].wipe_copy = 0

#macro	@災獣_出現一段階
	back.object[<OBJ_APP_EFFECT01>].set_scale(8000, 8000)
	back.object[<OBJ_APP_EFFECT01>].bright = 255
	back.object[<OBJ_APP_EFFECT01>].color_add_b = 128
	back.object[<OBJ_APP_EFFECT01>].color_add_r = 128
	back.object[<OBJ_APP_EFFECT01>].blend = 1
	back.object[<OBJ_APP_EFFECT01>].tr_eve.set(128, 1000, 0, 0)
	disp
	@wipe(122, 1500)
	@waitkey(1500)

#macro	@災獣_出現二段階
	back.object[<OBJ_APP_EFFECT01>].set_scale(5000, 5000)
	back.object[<OBJ_APP_EFFECT01>].y_eve.set(200, 5000, 0, 2)
	back.object[<OBJ_APP_EFFECT01>].bright = 128
	back.object[<OBJ_APP_EFFECT01>].color_add_b = 128
	back.object[<OBJ_APP_EFFECT01>].color_add_r = 128
	back.object[<OBJ_APP_EFFECT01>].blend = 1
	back.object[<OBJ_APP_EFFECT01>].tr_eve.set(128, 2000, 0, 0)
	disp
	@se(SE_creature_appear2)
	@wipe(112, 1500)

#macro	@災獣_出現三段階
	back.object[<OBJ_APP_EFFECT01>].color_add_r = 128
	back.object[<OBJ_APP_EFFECT01>].color_add_b = 128
	back.object[<OBJ_APP_EFFECT01>].color_add_r_eve.set(0, 1000, 0, 1)
	back.object[<OBJ_APP_EFFECT01>].color_add_b_eve.set(0, 1000, 0, 1)
	@災獣_咆哮
	@se(SE_creature_shout, 0, 1)
	@se(SE_creature_scream)
	
#macro	@災獣_消滅(@wipe_no(4), @color_time(1000), @scale_time(3000), @wait_time(1000))
	@災獣_消去
	front.object[<OBJ_APP_EFFECT01>].color_add_r_eve.set(255, @color_time, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].color_add_g_eve.set(255, @color_time, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].color_add_b_eve.set(255, @color_time, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].scale_x_eve.set(2500, @scale_time, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].scale_y_eve.set(2500, @scale_time, 0, 0)
	@waitkey(@wait_time)
	@wipe(@wipe_no)

#macro	@災獣_風化
	front.object[<OBJ_APP_EFFECT01>].color_add_r_eve.set(128, 1000, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].color_add_b_eve.set(128, 1000, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].scale_x_eve.set(2500, 3000, 0, 0)
	front.object[<OBJ_APP_EFFECT01>].scale_y_eve.set(2500, 3000, 0, 0)

#macro	@災獣_消去
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0


//---------------------------------------------------------------------------
// 災獣（出現前）
//---------------------------------------------------------------------------
#macro	@災獣_予兆(@wipe_no(112), @wipe_time(1500), @offset_y(-30))
	back.object[<OBJ_APP_EFFECT02>].create_movie_loop(ef_dark_ball, 1, <SCREEN_CENTER_X>, <SCREEN_CENTER_Y> + @offset_y)
	$$set_image_center(back.object[<OBJ_APP_EFFECT02>])
	back.object[<OBJ_APP_EFFECT02>].blend = 1
	back.object[<OBJ_APP_EFFECT02>].wipe_copy = 1
	back.object[<OBJ_APP_EFFECT02>].layer = <LAYER_ALL_FILTER>
	@wipe(@wipe_no, @wipe_time)

#macro	@災獣_予兆_背景
	back.object[<OBJ_APP_EFFECT01>].create_movie_loop(ef_wind_dust01, 1)
	back.object[<OBJ_APP_EFFECT01>].blend = 1
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1
	back.object[<OBJ_APP_EFFECT01>].color_add_b = 128

#macro	@災獣_予兆_横パン(@move_time(1000), @speed_mode(2))
	@災獣_予兆_背景
	back.object[<OBJ_APP_EFFECT01>].set_scale(1100, 1100)
	$$set_tr_eve(back.object[<OBJ_APP_EFFECT01>], 0, 255, @move_time, 0, @speed_mode)
	@災獣_予兆(-1)
	disp
	$$set_pos_x_eve(back.object[<OBJ_APP_EFFECT01>], -100, 0, @move_time, 0, @speed_mode)
	$$set_pos_x_eve(back.object[<OBJ_APP_EFFECT02>], <SCREEN_CENTER_X> - 150, <SCREEN_CENTER_X>, @move_time, 0, @speed_mode)

#macro	@災獣_予兆_消去
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0
	front.object[<OBJ_APP_EFFECT02>].wipe_copy = 0


//---------------------------------------------------------------------------
// 黒風（災獣周り）
//---------------------------------------------------------------------------
#macro	@黒い風(@wipe_no(102), @wipe_time(500), @shake(1))
	$$create_black_wind(back.object[<OBJ_APP_EFFECT02>])
	@wipe(@wipe_no, @wipe_time)
	if( @shake ) {
		@揺れ中ループ
	}

#macro	@黒い風終了(@shake(1))
	front.object[<OBJ_APP_EFFECT02>].wipe_copy = 0
	if( @shake ) {
		@揺れループ停止
	}

#command $$create_black_wind(object)


//---------------------------------------------------------------------------
// 過剰集中
//---------------------------------------------------------------------------
#macro	@過剰集中(@bgm_pause_flag(1), @se_loop_flag(1))
	close
	if( @bgm_pause_flag ) {
		@bgm_pause(2000)
	}
	$$concentration_start(back.object[<OBJ_APP_EFFECT01>])
	if( @se_loop_flag ) {
		@se_loop(SE_pulse_heart_loop, 2000, 6)
	}
	@wipe(121, 1000)
	
#macro	@過剰集中終了(@bgm_pause_flag(1), @se_loop_flag(1))
	close
	if( @se_loop_flag ) {
		@se_loop_stop(2000, 6)
	}
	$$concentration_end(front.object[<OBJ_APP_EFFECT01>])
	@se(SE_trigger_out)
	@mono_end
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0
	@wipe(121, 1000)
	if( @bgm_pause_flag ) {
		@bgm_resume(2000)
	}

#command $$concentration_start(object)
#command $$concentration_end(object)


//---------------------------------------------------------------------------
// 寝起きの薄目（上下に黒フィルター）
//---------------------------------------------------------------------------
#macro	@寝起きフィルター(@type(1))
	back.object[<OBJ_APP_EFFECT01>].create(ef_eye_filter, 1, 0, 0, @type)
	back.object[<OBJ_APP_EFFECT01>].layer = <LAYER_SCREEN>
	back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1

#macro	@寝起きフィルター終了
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0


//---------------------------------------------------------------------------
// 淡雪スタンプ
//---------------------------------------------------------------------------
#macro	@淡雪スタンプハナマル(@wipe_no(2), @se_play(1), @bg_name(<NONE>))
	@淡雪スタンプ共通(1, @wipe_no, @se_play, @bg_name)

#macro	@淡雪スタンプハナマル２つ(@wipe_no(2), @se_play(1), @bg_name(<NONE>))
	@淡雪スタンプ共通(1, @wipe_no, @se_play, @bg_name, -420)
	@淡雪スタンプ共通(1, @wipe_no, @se_play, @bg_name,  420, 1)

#macro	@淡雪スタンプハート(@wipe_no(2), @se_play(1), @bg_name(<NONE>))
	@淡雪スタンプ共通(0, @wipe_no, @se_play, @bg_name)

#macro	@淡雪スタンプ共通(@patno, @wipe_no(2), @se_play(1), @bg_name(<NONE>), @offset_x(0), @offset_obj_no(0))
	close
	if( @se_play ) {
		@se(SE_stamp_pon)
	}
	if( @bg_name != <NONE> ) {
		@bg_set(__BG_BLUR_PREFIX + $$chop_bg_blur_name(@bg_name))
	} else {
		@bg_set(__BG_BLUR_PREFIX + $$chop_bg_blur_name(front.object[<OBJ_BG>].get_file_name))
	}
	$$set_simple_cutin_object(back.object[<OBJ_CUTIN> + @offset_obj_no], ef_cutin_hi_stamp, @offset_x, 0, @patno)
	back.object[<OBJ_CUTIN> + @offset_obj_no].wipe_copy = 1
	back.object[<OBJ_CUTIN> + @offset_obj_no].frame_action.start(-1, "$$fa_hi_stamp")
	@wipe(@wipe_no)

#macro	@淡雪スタンプ消去(@wipe_no(2), @bg_name(<NONE>))
	close
	if( @bg_name != <NONE> ) {
		@bg_set(@bg_name)
	} else {
		@bg_set($$chop_bg_blur_name(front.object[<OBJ_BG>].get_file_name))
	}
	front.object[<OBJ_CUTIN> + 0].wipe_copy = 0
	front.object[<OBJ_CUTIN> + 1].wipe_copy = 0
	@wipe(@wipe_no)

#command $$fa_hi_stamp(frameaction, object)		// スタンプフレームアクション


//---------------------------------------------------------------------------
// よい子はマネしないでください
//---------------------------------------------------------------------------
#macro	@よい子はマネしないでください(@text)
	@画像文字(ef_reminder_text, 0, "", @text)		// 画像文字作成
	back.object[<OBJ_IMAGE_TEXT>].y = 50
	back.object[<OBJ_IMAGE_TEXT>].y_eve.set(0, 1000, 0, 2)
	@wipe(0)


//---------------------------------------------------------------------------
// 汎用演出系
//---------------------------------------------------------------------------


#macro	@空に浮かぶキャラ_左(@bs_name, @wipe_no(0))		@float_chara(@bs_name, @wipe_no, 0)
#macro	@空に浮かぶキャラ_右(@bs_name, @wipe_no(0))		@float_chara(@bs_name, @wipe_no, 1)
#macro	@空に浮かぶキャラ_中(@bs_name, @wipe_no(0))		@float_chara(@bs_name, @wipe_no, 2)

#macro	@float_chara(@bs_name, @wipe_no(0), @type(0))
	mask[2].init
	switch( @type ) {
	case(0)		mask[2].create(ef_bs_mask_l)
				@bs_set(@bs_name, -500)
	case(1)		mask[2].create(ef_bs_mask_r)
				@bs_set(@bs_name, 500)
	case(2)		mask[2].create(ef_bs_mask_c)
				@bs_set(@bs_name, 0)
	}
	back.object[$$get_bs_obj_index(@bs_name)].mask_no = 2
	@wipe(@wipe_no)


//---------------------------------------------------------------------------
// テスト中
//---------------------------------------------------------------------------
#macro	@bs_in(@bs_name, @wipe_no(2), @close(1))
	if( @close ) {
		close
	}
	@set_wipe_wait(1)
	@bs_w(@wipe_no, @bs_name)

#macro	@bs_out(@bs_name, @wipe_no(2), @close(1))
	if( @close ) {
		close
	}
	@set_wipe_wait(1)
	@bs_del_w(@wipe_no, @bs_name)

// レンズフレアパラメータ指定
#macro	@フェードアウトレンズフレア(@type, @tr(255), @blend(4), @fade_time(3000), @speed_mode(0))
	@レンズフレア(@type, @tr, @blend)
	$$set_tr_eve(back.object[<OBJ_EFFECT_LENS_FLARE>], @tr, 0, @fade_time, 0, @speed_mode)





//---------------------------------------------------------------------------
// 汎用エンジンに入れたほうがよさそうなもの
//---------------------------------------------------------------------------

// 立ち絵カットイン
#macro	@bs_cutin(@bs_name, @bg_name(bg_kuro), @wipe_no(0), @layer(<LAYER_CG>), @shadow(0))

	l[0] = $$get_bs_obj_index(@bs_name)
	
	if( front.object[<OBJ_APP_EFFECT01>].disp )
	{
		back.object[l[0]].create_copy_from(front.object[l[0]])
		$$change_bs_image(back.object[l[0]], @bs_name)
	}
	else
	{
		mask[1].init
		mask[1].create(cutin_maskc)
		mask[1].x = (1920 - 750) / 2 - 100
		mask[1].x_eve.set((1920 - 750) / 2, 500, 0, 2)
		
		$$set_bg_object(back.object[<OBJ_APP_EFFECT01>], @disp_bg)
		back.object[<OBJ_APP_EFFECT01>].change_file(@bg_name)
		back.object[<OBJ_APP_EFFECT01>].mask_no = 1
		back.object[<OBJ_APP_EFFECT01>].layer = @layer
		back.object[<OBJ_APP_EFFECT01>].wipe_copy = 1
		$$set_pos_x_eve(back.object[<OBJ_APP_EFFECT01>], -100, 0, 500, 0, 2)
		if( @bg_name == bg_kuro ) {
			back.object[<OBJ_APP_EFFECT01>].tr = 128
		}
		
		$$set_bs_object(back.object[l[0]], @bs_name)
		back.object[l[0]].mask_no = 1
		back.object[l[0]].layer = @layer + 1
		$$set_pos_x_eve(back.object[l[0]], <SCREEN_CENTER_X> - 100, <SCREEN_CENTER_X>, 500, 0, 2)
		if( @shadow ) {
			back.object[l[0]].dark = @shadow
		}
	}
	@wipe(@wipe_no, -1, __DEFAULT_BS_WAIT)

// 立ち絵カットイン消去
#macro	@bs_cutin_del(@bs_name, @wipe_no(0))
	l[0] = $$get_bs_obj_index(@bs_name)
	front.object[<OBJ_APP_EFFECT01>].wipe_copy = 0
	front.object[l[0]].wipe_copy = 0
	$$set_pos_x_eve(front.object[<OBJ_APP_EFFECT01>], 0, 100, 500, 0, 2)
	$$set_pos_x_eve(front.object[l[0]], <SCREEN_CENTER_X>, <SCREEN_CENTER_X> + 100, 500, 0, 2)
	mask[1].x_eve.set((1920 - 750) / 2 + 100, 500, 0, 2)
	@wipe(@wipe_no, -1, __DEFAULT_BS_WAIT)

#macro	@回想シーン
	@回想枠
	@セピア_演出除外

#macro	@回想シーン終了
	@回想枠終了
	@セピア終了

#macro	@セピア_演出除外
	@セピア
	back.effect[0].begin_layer = 0
	back.effect[0].end_layer = <LAYER_SCREEN> - 1
