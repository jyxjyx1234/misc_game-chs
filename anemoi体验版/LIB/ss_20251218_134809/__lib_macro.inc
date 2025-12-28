//===========================================================================
//!
//!    @file     __lib_macro.inc
//!    @brief    汎用マクロ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// ワイプ
//---------------------------------------------------------------------------
#macro	@wipe(@wipe_no(-1), @time(-1), @wait(1), @wipe_all(0))
	if( <SIDEBAR_MODE> != <SIDEBAR_MODE_OFF> ) {
		back.objbtngroup[<FRAME_ACTION_CH_SIDEBAR>].start
	}
	if( @wipe_no != -1 )
	{
		if( $$get_wipe_type_ready == 0 ) {
			$$set_wipe_data_default(@wipe_no)
		}
		if( @time != -1 ) {
			$$set_wipe_time(@time)
		}
		//-- deb
		$$set_bg_auto_blur
		$$auto_update_dizzy_object
		//--
		if( $$get_wipe_wait_ready == 0 ) {
			$$set_wipe_wait(@wait)
		}
		$$set_wipe_all(@wipe_all)
		$$wipe
	}
	else
	{
		// @wipe_no == -1
		// ↑の場合はワイプを実行しない
	}

#macro	@wipe_nowait(@wipe_no, @time(-1), @wipe_all(0))
	@wipe(@wipe_no, @time, 0, @wipe_all)

#macro	@wipe_wait(@wipe_no, @time(-1), @wipe_all(0))
	@wipe(@wipe_no, @time, 1, @wipe_all)

#macro	@set_wipe_type(@wipe_no, @time(-1))
	if( @wipe_no != -1 ) {
		$$set_wipe_data_default(@wipe_no)
	}
	if( @time != -1 ) {
		$$set_wipe_time(@time)
	}
	$$set_wipe_type_ready(1)

#macro	@set_wipe_wait(@wait)
	$$set_wipe_wait_ready(1)
	$$set_wipe_wait(@wait)



//---------------------------------------------------------------------------
// フェード
//---------------------------------------------------------------------------
// 命令置換
#define		@フェード				@fade
#define		@白フェード				@fade_w
#define		@フェード全体			@fade_all
#define		@白フェード全体			@fade_w_all
#define		@カラーフェード			@fade_color
#define		@カラーフェード全体		@fade_color_all

// 黒フェード
#macro	@fade(@wipe_no(__DEFAULT_FADE_WIPE_NO), @time(-1), @close(__DEFAULT_FADE_MSG_CLOSE), @wait(__DEFAULT_FADE_WAIT))
	$$fade(<COLOR_BLACK>, @wipe_no, @time, @wait, 0, @close)

// 白フェード
#macro	@fade_w(@wipe_no(__DEFAULT_FADE_WIPE_NO), @time(-1), @close(__DEFAULT_FADE_MSG_CLOSE), @wait(__DEFAULT_FADE_WAIT))
	$$fade(<COLOR_WHITE>, @wipe_no, @time, @wait, 0, @close)

// 色指定フェード
#macro	@fade_color(@red, @green, @blue, @wipe_no(__DEFAULT_FADE_WIPE_NO), @time(-1), @close(__DEFAULT_FADE_MSG_CLOSE), @wait(__DEFAULT_FADE_WAIT))
	$$fade(@red, @green, @blue, @wipe_no, @time, @wait, 0, @close)

// 黒フェード／メッセージウィンドウごと
#macro	@fade_all(@wipe_no(__DEFAULT_FADE_WIPE_NO), @time(-1), @wait(__DEFAULT_FADE_WAIT))
	$$fade(<COLOR_BLACK>, @wipe_no, @time, @wait, 1, 0)

// 白フェード／メッセージウィンドウごと
#macro	@fade_w_all(@wipe_no(__DEFAULT_FADE_WIPE_NO), @time(-1), @wait(__DEFAULT_FADE_WAIT))
	$$fade(<COLOR_WHITE>, @wipe_no, @time, @wait, 1, 0)

// 色指定フェード／メッセージウィンドウごと
#macro	@fade_color_all(@red, @green, @blue, @wipe_no(__DEFAULT_FADE_WIPE_NO), @time(-1), @wait(__DEFAULT_FADE_WAIT))
	$$fade(@red, @green, @blue, @wipe_no, @time, @wait, 1, 0)


//---------------------------------------------------------------------------
// 時間帯管理
//---------------------------------------------------------------------------
#macro	@昼				$$set_time_control(<TIME_CONTROL_DAYTIME>)
#macro	@夕				$$set_time_control(<TIME_CONTROL_EVENING>)
#macro	@夜				$$set_time_control(<TIME_CONTROL_NIGHT>)
#macro	@消灯			$$set_time_control(<TIME_CONTROL_NIGHT_OFF>)
#macro	@朝				$$set_time_control(<TIME_CONTROL_MORNING>)
#macro	@特殊時間１		$$set_time_control(<TIME_CONTROL_EX1>)
#macro	@特殊時間２		$$set_time_control(<TIME_CONTROL_EX2>)


//---------------------------------------------------------------------------
// 分割ブロック指定
//---------------------------------------------------------------------------
#macro	@set_block(@width, @height)
	$$set_image_block(@width, @height)



//---------------------------------------------------------------------------
// 背景
//---------------------------------------------------------------------------
// 命令置換
#define		@disp_bg	front.object[<OBJ_BG>].get_file_name	// 表示中の背景

// 背景の表示
#macro	@bg(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @wipe_time(-1), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	if( @close ) { close }
	$$set_bg_object(back.object[<OBJ_BG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	@wipe(@wipe_no, @wipe_time, @wait, 0)

// 背景を裏画面に待機させる
#macro	@bg_set(@filename(@disp_bg), @scale(1000), @pos_x(0), @pos_y(0))
	$$set_bg_object(back.object[<OBJ_BG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	back.object[<OBJ_BG>].set_scale(@scale, @scale)
	back.object[<OBJ_BG>].set_pos(@pos_x, @pos_y)

// 背景の移動
#macro	@bg_move(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_x(0), @src_y(0), @dst_x(0), @dst_y(0), @move_time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	if( @close ) { close }
	// (※※既存のデータに影響がないように調整 deb 後で修正する※※)
	if( @scale > 1000 && $$exists_g00(@filename + "_EX") )
	{
		$$set_ex_bg_object(back.object[<OBJ_BG>], @filename, @scale)
	}
	else
	{
		$$set_bg_object(back.object[<OBJ_BG>], @filename)
		back.object[<OBJ_BG>].set_scale(@scale, @scale)
	}
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	$$set_pos_eve(back.object[<OBJ_BG>], @src_x, @src_y, @dst_x, @dst_y, @move_time, 0, @speed_mode)
	@wipe(@wipe_no, -1, @wait, 0)

// 背景のパン
#macro	@bg_pan(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_block(4), @dst_block(6), @move_time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	if( @close ) { close }
	$$set_bg_object(back.object[<OBJ_BG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	$$move_image_block(back.object[<OBJ_BG>], @src_block, @dst_block, @scale, @move_time, 0, @speed_mode)
	@wipe(@wipe_no, -1, @wait, 0)

// 背景パン→(左から右)
#macro	@bg_pan_lr(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	@bg_pan(@filename, @wipe_no, 4, 6, @time, @speed_mode, @scale, @close, @wait)

// 背景パン←(右から左)
#macro	@bg_pan_rl(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(30000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	@bg_pan(@filename, @wipe_no, 6, 4, @time, @speed_mode, @scale, @close, @wait)

// 背景パン↓(上から下)
#macro	@bg_pan_ud(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(25000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	@bg_pan(@filename, @wipe_no, 2, 8, @time, @speed_mode, @scale, @close, @wait)

// 背景パン↑(下から上)
#macro	@bg_pan_du(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @time(25000), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	@bg_pan(@filename, @wipe_no, 8, 2, @time, @speed_mode, @scale, @close, @wait)

// 背景ターン
#macro	@bg_turn(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_block(4), @dst_block(6), @move_time(30000), @wait_time(0), @speed_mode(0), @scale(1500), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	if( @close ) { close }
	$$set_bg_object(back.object[<OBJ_BG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	$$turn_image_block(back.object[<OBJ_BG>], @src_block, @dst_block, @scale, @move_time, 0, @speed_mode, @wait_time)
	@wipe(@wipe_no, -1, @wait, 0)

// 背景の拡縮
#macro	@bg_zoom(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @src_scale(1500), @dst_scale(1000), @zoom_time(30000), @speed_mode(0), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @center_rep_x(-1), @center_rep_y(-1))
	if( @close ) { close }
	$$set_bg_object(back.object[<OBJ_BG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	$$set_scale_eve(back.object[<OBJ_BG>], @src_scale, @dst_scale, @zoom_time, 0, @speed_mode)
	if( @center_rep_x != -1 ) {
		back.object[<OBJ_BG>].center_rep_x = @center_rep_x
	}
	if( @center_rep_y != -1 ) {
		back.object[<OBJ_BG>].center_rep_y = @center_rep_y
	}
	@wipe(@wipe_no, -1, @wait, 0)

// 背景ズームアップ
#macro	@bg_zoom_up(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @zoom_time(30000), @speed_mode(0), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @center_rep_x(-1), @center_rep_y(-1))
	@bg_zoom(@filename, @wipe_no, 1000, 1500, @zoom_time, @speed_mode, @close, @wait, @center_rep_x, @center_rep_y)

// 背景ズームダウン
#macro	@bg_zoom_down(@filename(@disp_bg), @wipe_no(__DEFAULT_BG_WIPE_NO), @zoom_time(30000), @speed_mode(0), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT), @center_rep_x(-1), @center_rep_y(-1))
	@bg_zoom(@filename, @wipe_no, 1500, 1000, @zoom_time, @speed_mode, @close, @wait, @center_rep_x, @center_rep_y)



//---------------------------------------------------------------------------
// イベントＣＧ
//---------------------------------------------------------------------------
// 命令置換
#define		@disp_cg	front.object[<OBJ_CG>].get_file_name	// 表示中のイベントＣＧ

// イベントＣＧの表示
#macro	@cg(@filename(@disp_cg), @wipe_no(<DEFAULT_CG_WIPE_NO>), @wipe_time(-1), @close(<DEFAULT_CG_MSG_CLOSE>), @wait(<DEFAULT_CG_WAIT>))
	if( $$get_disp_cg_msg_close(@close) ) { close }
	$$set_cg_object(back.object[<OBJ_CG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	@wipe($$get_disp_cg_wipe_no(@wipe_no), @wipe_time, $$get_disp_cg_wait(@wait), 0)

// イベントＣＧの非表示
#macro	@cg_del(@wipe_no(__DEFAULT_CG_WIPE_NO), @wipe_time(-1), @close(__DEFAULT_CG_MSG_CLOSE), @wait(__DEFAULT_CG_WAIT))
	if( @close ) { close }
	$$set_front_wipe_copy_cg(0)
	@wipe(@wipe_no, @wipe_time, @wait, 0)

// イベントＣＧを裏画面に待機させる
#macro	@cg_set(@filename(@disp_cg), @scale(1000), @pos_x(0), @pos_y(0))
	$$set_cg_object(back.object[<OBJ_CG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	back.object[<OBJ_CG>].set_scale(@scale, @scale)
	back.object[<OBJ_CG>].set_pos(@pos_x, @pos_y)

// イベントＣＧの移動
#macro	@cg_move(@filename(@disp_cg), @wipe_no(<DEFAULT_CG_WIPE_NO>), @src_x(0), @src_y(0), @dst_x(0), @dst_y(0), @move_time(30000), @speed_mode(0), @scale(1500), @close(<DEFAULT_CG_MSG_CLOSE>), @wait(<DEFAULT_CG_WAIT>))
	if( $$get_disp_cg_msg_close(@close) ) { close }
	$$set_cg_object(back.object[<OBJ_CG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	back.object[<OBJ_CG>].set_scale(@scale, @scale)
	$$set_pos_eve(back.object[<OBJ_CG>], @src_x, @src_y, @dst_x, @dst_y, @move_time, 0, @speed_mode)
	@wipe($$get_disp_cg_wipe_no(@wipe_no), -1, $$get_disp_cg_wait(@wait), 0)

// イベントＣＧのパン
#macro	@cg_pan(@filename(@disp_cg), @wipe_no(<DEFAULT_CG_WIPE_NO>), @src_block(4), @dst_block(6), @move_time(30000), @speed_mode(0), @scale(1500), @close(<DEFAULT_CG_MSG_CLOSE>), @wait(<DEFAULT_CG_WAIT>))
	if( $$get_disp_cg_msg_close(@close) ) { close }
	$$set_cg_object(back.object[<OBJ_CG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	back.object[<OBJ_CG>].set_scale(@scale, @scale)
	$$move_image_block(back.object[<OBJ_CG>], @src_block, @dst_block, @scale, @move_time, 0, @speed_mode)
	@wipe($$get_disp_cg_wipe_no(@wipe_no), -1, $$get_disp_cg_wait(@wait), 0)

// イベントＣＧの拡縮
#macro	@cg_zoom(@filename(@disp_cg), @wipe_no(<DEFAULT_CG_WIPE_NO>), @src_scale(1500), @dst_scale(1000), @zoom_time(30000), @speed_mode(0), @close(<DEFAULT_CG_MSG_CLOSE>), @wait(<DEFAULT_CG_WAIT>), @center_rep_x(-1), @center_rep_y(-1))
	if( $$get_disp_cg_msg_close(@close) ) { close }
	$$set_cg_object(back.object[<OBJ_CG>], @filename)
	$$set_front_wipe_copy_bs_all(0)
	$$set_front_wipe_copy_cg(0)
	$$set_scale_eve(back.object[<OBJ_CG>], @src_scale, @dst_scale, @zoom_time, 0, @speed_mode)
	if( @center_rep_x != -1 ) {
		back.object[<OBJ_CG>].center_rep_x = @center_rep_x
	}
	if( @center_rep_y != -1 ) {
		back.object[<OBJ_CG>].center_rep_y = @center_rep_y
	}
	@wipe($$get_disp_cg_wipe_no(@wipe_no), -1, $$get_disp_cg_wait(@wait), 0)

// イベントＣＧズームアップ
#macro	@cg_zoom_up(@filename(@disp_cg), @wipe_no(<DEFAULT_CG_WIPE_NO>), @zoom_time(30000), @speed_mode(0), @close(<DEFAULT_CG_MSG_CLOSE>), @wait(<DEFAULT_CG_WAIT>), @center_rep_x(-1), @center_rep_y(-1))
	@cg_zoom(@filename, @wipe_no, 1000, 1500, @zoom_time, @speed_mode, @close, @wait, @center_rep_x, @center_rep_y)

// イベントＣＧズームダウン
#macro	@cg_zoom_down(@filename(@disp_cg), @wipe_no(<DEFAULT_CG_WIPE_NO>), @zoom_time(30000), @speed_mode(0), @close(<DEFAULT_CG_MSG_CLOSE>), @wait(<DEFAULT_CG_WAIT>), @center_rep_x(-1), @center_rep_y(-1))
	@cg_zoom(@filename, @wipe_no, 1500, 1000, @zoom_time, @speed_mode, @close, @wait, @center_rep_x, @center_rep_y)



//---------------------------------------------------------------------------
// 立ち絵
//---------------------------------------------------------------------------
// 座標
#define		@１人					(<BS_POS_1>   - <SCREEN_CENTER_X>)
#define		@２人左					(<BS_POS_2L>  - <SCREEN_CENTER_X>)
#define		@２人右					(<BS_POS_2R>  - <SCREEN_CENTER_X>)
#define		@３人左					(<BS_POS_3L>  - <SCREEN_CENTER_X>)
#define		@３人中					(<BS_POS_3C>  - <SCREEN_CENTER_X>)
#define		@３人右					(<BS_POS_3R>  - <SCREEN_CENTER_X>)
#define		@４人左					(<BS_POS_4LL> - <SCREEN_CENTER_X>)
#define		@４人左中				(<BS_POS_4L>  - <SCREEN_CENTER_X>)
#define		@４人右中				(<BS_POS_4R>  - <SCREEN_CENTER_X>)
#define		@４人右					(<BS_POS_4RR> - <SCREEN_CENTER_X>)
#define		@５人左					(<BS_POS_5LL> - <SCREEN_CENTER_X>)
#define		@５人左中				(<BS_POS_5L>  - <SCREEN_CENTER_X>)
#define		@５人中					(<BS_POS_5C>  - <SCREEN_CENTER_X>)
#define		@５人右中				(<BS_POS_5R>  - <SCREEN_CENTER_X>)
#define		@５人右					(<BS_POS_5RR> - <SCREEN_CENTER_X>)

// 立ち絵の表示(自動位置調整あり)
#macro	@bs(@bs_name1(<NONE>), @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	$$create_bs_object(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)
	@wipe(__DEFAULT_BS_WIPE_NO, -1, __DEFAULT_BS_WAIT)

// 立ち絵の表示(ワイプ番号指定)
#macro	@bs_w(@wipe_no, @bs_name1(<NONE>), @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	$$create_bs_object(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)
	@wipe(@wipe_no, -1, __DEFAULT_BS_WAIT)

// 立ち絵の表情変更
#macro	@bf(@bs_name1, @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	$$change_bs_face(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)
	@wipe(__DEFAULT_BS_WIPE_NO, -1, __DEFAULT_BS_WAIT)

// 立ち絵の表情変更(ワイプ番号指定)
#macro	@bf_w(@wipe_no, @bs_name1, @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	$$change_bs_face(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)
	@wipe(@wipe_no, -1, __DEFAULT_BS_WAIT)

// 立ち絵の消去(自動位置調整なし)
#macro	@bs_del(@bs_name1, @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	$$delete_bs_object(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)
	@wipe(__DEFAULT_BS_WIPE_NO, -1, __DEFAULT_BS_WAIT)

// 立ち絵の消去(ワイプ番号指定)
#macro	@bs_del_w(@wipe_no, @bs_name1, @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	$$delete_bs_object(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)
	@wipe(@wipe_no, -1, __DEFAULT_BS_WAIT)

// 立ち絵を裏画面に待機させる
#macro	@bs_set(@bs_name, @offset_x(0), @offset_y(0), @scale(1000), @rotate(0))
	$$create_bs_object_back(@bs_name, @offset_x, @offset_y, @scale, @rotate)

// 立ち絵を指定座標に移動させる(現在の立ち絵座標から補正指定 pos_x=100の場合は現在の立ち絵のx座標に+100した場所に移動する)
#macro	@bs_move(@bs_name, @pos_x, @pos_y(0), @move_time(1000), @wait(__DEFAULT_BS_MOVE_COMMAND_WAIT), @speed_mode(0), @start_time(0), @only_back_move(0))
	$$move_bs_object_y(@bs_name, <POS_TYPE_RELATIVE>, @pos_y, @move_time, @start_time, @speed_mode, 0, @only_back_move)
	$$move_bs_object_x(@bs_name, <POS_TYPE_RELATIVE>, @pos_x, @move_time, @start_time, @speed_mode, @wait, @only_back_move)
	
#macro	@bs_move_x(@bs_name, @pos_x, @move_time(1000), @wait(__DEFAULT_BS_MOVE_COMMAND_WAIT), @speed_mode(0), @start_time(0), @only_back_move(0))
	$$move_bs_object_x(@bs_name, <POS_TYPE_RELATIVE>, @pos_x, @move_time, @start_time, @speed_mode, @wait, @only_back_move)

#macro	@bs_move_y(@bs_name, @pos_y, @move_time(1000), @wait(__DEFAULT_BS_MOVE_COMMAND_WAIT), @speed_mode(0), @start_time(0), @only_back_move(0))
	$$move_bs_object_y(@bs_name, <POS_TYPE_RELATIVE>, @pos_y, @move_time, @start_time, @speed_mode, @wait, @only_back_move)

// 立ち絵を指定座標に移動させる(座標を直接指定 pos_x=100の場合はx=100の座標へ移動する)
#macro	@bs_move_abs(@bs_name, @pos_x, @pos_y(0), @move_time(1000), @wait(__DEFAULT_BS_MOVE_COMMAND_WAIT), @speed_mode(0), @start_time(0), @only_back_move(0))
	$$move_bs_object_y(@bs_name, <POS_TYPE_ABSOLUTE>, @pos_y, @move_time, @start_time, @speed_mode, 0, @only_back_move)
	$$move_bs_object_x(@bs_name, <POS_TYPE_ABSOLUTE>, @pos_x, @move_time, @start_time, @speed_mode, @wait, @only_back_move)

#macro	@bs_move_abs_x(@bs_name, @pos_x, @move_time(1000), @wait(__DEFAULT_BS_MOVE_COMMAND_WAIT), @speed_mode(0), @start_time(0), @only_back_move(0))
	$$move_bs_object_x(@bs_name, <POS_TYPE_ABSOLUTE>, @pos_x, @move_time, @start_time, @speed_mode, @wait, @only_back_move)

#macro	@bs_move_abs_y(@bs_name, @pos_y, @move_time(1000), @wait(__DEFAULT_BS_MOVE_COMMAND_WAIT), @speed_mode(0), @start_time(0), @only_back_move(0))
	$$move_bs_object_y(@bs_name, <POS_TYPE_ABSOLUTE>, @pos_y, @move_time, @start_time, @speed_mode, @wait, @only_back_move)

// 立ち絵の並び順を変更する(指定キャラクターを対象キャラクターの前／後ろにする)
#macro	@bs_layer_front(@bs_name1, @bs_name2)
	$$bring_bs_layer(@bs_name1, @bs_name2, <LAYER_ORDER_TYPE_FRONT>)

#macro	@bs_layer_back(@bs_name1, @bs_name2)
	$$bring_bs_layer(@bs_name1, @bs_name2, <LAYER_ORDER_TYPE_BACK>)

// 立ち絵の並び順を変更する(レイヤー値を直接指定)
#macro	@set_bs_layer(@bs_name, @layer)
	$$set_bs_layer(@bs_name, @layer)

// 立ち絵の不透明度を変更する
#macro	@bs_tr(@bs_name, @src_tr, @dst_tr(-1), @time(0), @speed_mode(0), @start_time(0))
	$$set_bs_tr(@bs_name, @src_tr, @dst_tr, @time, @start_time, @speed_mode)

// 立ち絵の表示モードをワイプにする
#macro	@bs_mode_wipe
	$$set_bs_disp_mode(<BS_DISP_MODE_WIPE>)

// 立ち絵の表示モードをスライドにする
#macro	@bs_mode_slide
	$$set_bs_disp_mode(<BS_DISP_MODE_SLIDE>)

// 立ち絵の表示モードがスライドのときスライド移動にかける時間を設定する
#macro	@bs_slide_time(@time)
	$$set_bs_disp_slide_time(@time)

// 非同期命令の発行
#macro	@cc
	$$init_bs_async_change_time
	script.set_msg_async_mode_on_once
	script.set_skip_trigger

// 非同期命令の発行を自動置き換え
#define		】「	】@cc「
#define		】（	】@cc（
#define		】『	】@cc『

// 非同期での時間待ち
#macro	@delay(@delay_time)
	$$wait_bs_async_change_time(@delay_time)

// 非同期での立ち絵変更
#macro	@bc(@delay_time, @bs_name1, @bs_name2(<NONE>), @bs_name3(<NONE>), @bs_name4(<NONE>), @bs_name5(<NONE>))
	@delay(@delay_time)
	@bf(@bs_name1, @bs_name2, @bs_name3, @bs_name4, @bs_name5)


//---------------------------------------------------------------------------
// 顔グラ
//---------------------------------------------------------------------------
// 顔グラを表示する
#macro	@face(@bs_name)
	$$create_face(@bs_name)


//---------------------------------------------------------------------------
// 背景＋立ち絵
//---------------------------------------------------------------------------
#macro	@bgs(@bg_name, @bs_name, @wipe_no(__DEFAULT_BG_WIPE_NO), @wipe_time(-1), @close(__DEFAULT_BG_MSG_CLOSE), @wait(__DEFAULT_BG_WAIT))
	@bg(@bg_name, -1, -1, @close)
	@bs_set(@bs_name)
	@wipe(@wipe_no, @wipe_time, @wait)


//-----------------------------------------------------------------
// カットイン：シンプル(一枚絵)
//-----------------------------------------------------------------
#macro	@cutin(@filename, @wipe_no(0), @wipe_time(-1), @wait(1), @offset_x(0), @offset_y(0), @patno(0))
	$$set_simple_cutin_object(back.object[<OBJ_CUTIN>], @filename, @offset_x, @offset_y, @patno)
	@wipe(@wipe_no, @wipe_time, @wait)

#macro	@cutin_del(@action(""), @wipe_no(0), @wipe_time(-1), @wait(1))
	$$delete_simple_cutin_object(front.object[<OBJ_CUTIN>], @action)
	@wipe(@wipe_no, @wipe_time, @wait)


//-----------------------------------------------------------------
// エフェクト：フィルムノイズ
//-----------------------------------------------------------------
#macro	@フィルムノイズ(@tr(192), @red(0), @green(0), @blue(0), @offset_layer(0))
	$$set_film_noise_object(back.object[<OBJ_EFFECT_FILM_NOISE>])
	back.object[<OBJ_EFFECT_FILM_NOISE>].tr = @tr
	back.object[<OBJ_EFFECT_FILM_NOISE>].layer += @offset_layer
	back.object[<OBJ_EFFECT_FILM_NOISE>].color_add_r = @red
	back.object[<OBJ_EFFECT_FILM_NOISE>].color_add_g = @green
	back.object[<OBJ_EFFECT_FILM_NOISE>].color_add_b = @blue

#macro	@フィルムノイズ終了
	front.object[<OBJ_EFFECT_FILM_NOISE>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：ドットノイズ
//-----------------------------------------------------------------
#macro	@ドットノイズ小(@tr(255), @offset_layer(0))
	$$set_dot_noise_object(back.object[<OBJ_EFFECT_DOT_NOISE>], <DOT_NOISE_TYPE_SMALL>)
	back.object[<OBJ_EFFECT_DOT_NOISE>].tr = @tr
	back.object[<OBJ_EFFECT_DOT_NOISE>].layer += @offset_layer

#macro	@ドットノイズ中(@tr(255), @offset_layer(0))
	$$set_dot_noise_object(back.object[<OBJ_EFFECT_DOT_NOISE>], <DOT_NOISE_TYPE_MEDIUM>)
	back.object[<OBJ_EFFECT_DOT_NOISE>].tr = @tr
	back.object[<OBJ_EFFECT_DOT_NOISE>].layer += @offset_layer

#macro	@ドットノイズ大(@tr(255), @offset_layer(0))
	$$set_dot_noise_object(back.object[<OBJ_EFFECT_DOT_NOISE>], <DOT_NOISE_TYPE_LARGE>)
	back.object[<OBJ_EFFECT_DOT_NOISE>].tr = @tr
	back.object[<OBJ_EFFECT_DOT_NOISE>].layer += @offset_layer

#macro	@ドットノイズ終了
	front.object[<OBJ_EFFECT_DOT_NOISE>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：回想枠
//-----------------------------------------------------------------
#macro	@回想枠(@tr(255), @offset_layer(0))
	@回想枠白(@tr, @offset_layer)

#macro	@回想枠白(@tr(255), @offset_layer(0))
	$$set_recollect_object(back.object[<OBJ_EFFECT_RECOLLECT>], <RECOLLECT_TYPE_WHITE>)
	back.object[<OBJ_EFFECT_RECOLLECT>].tr = @tr
	back.object[<OBJ_EFFECT_RECOLLECT>].layer += @offset_layer

#macro	@回想枠黒(@tr(255), @offset_layer(0))
	$$set_recollect_object(back.object[<OBJ_EFFECT_RECOLLECT>], <RECOLLECT_TYPE_BLACK>)
	back.object[<OBJ_EFFECT_RECOLLECT>].tr = @tr
	back.object[<OBJ_EFFECT_RECOLLECT>].layer += @offset_layer

#macro	@回想枠終了
	front.object[<OBJ_EFFECT_RECOLLECT>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：集中線
//-----------------------------------------------------------------
#macro	@集中線(@tr(255), @offset_layer(0))
	@集中線白(@tr, @offset_layer)

#macro	@集中線白(@tr(255), @offset_layer(0))
	$$set_concentration_line_object(back.object[<OBJ_EFFECT_LINE_CENTER>], <LINE_TYPE_WHITE>)
	back.object[<OBJ_EFFECT_LINE_CENTER>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_CENTER>].layer += @offset_layer

#macro	@集中線黒(@tr(255), @offset_layer(0))
	$$set_concentration_line_object(back.object[<OBJ_EFFECT_LINE_CENTER>], <LINE_TYPE_BLACK>)
	back.object[<OBJ_EFFECT_LINE_CENTER>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_CENTER>].layer += @offset_layer

#macro	@集中線終了
	front.object[<OBJ_EFFECT_LINE_CENTER>].wipe_copy = 0

#macro	@横集中線(@tr(255), @length(__DEFAULT_LINEFEECT_H_SIZE), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_HORIZONTAL>], <LINE_TYPE_HORIZONTAL>, @length)
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].layer = <LAYER_SCREEN> + @offset_layer

#macro	@横集中線背景(@tr(255), @length(__DEFAULT_LINEFEECT_H_SIZE), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_HORIZONTAL>], <LINE_TYPE_HORIZONTAL>, @length)
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].layer = <LAYER_BG_FILTER> + @offset_layer

#macro	@横全体集中線(@tr(255), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_HORIZONTAL>], <LINE_TYPE_HORIZONTAL_ALL>, -1)
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].layer = <LAYER_SCREEN> + @offset_layer

#macro	@横全体集中線背景(@tr(255), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_HORIZONTAL>], <LINE_TYPE_HORIZONTAL_ALL>, -1)
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_HORIZONTAL>].layer = <LAYER_BG_FILTER> + @offset_layer

#macro	@横集中線終了
	front.object[<OBJ_EFFECT_LINE_HORIZONTAL>].wipe_copy = 0

#macro	@縦集中線(@tr(255), @length(__DEFAULT_LINEFEECT_V_SIZE), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_VERTICAL>], <LINE_TYPE_VERTICAL>, @length)
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].layer = <LAYER_SCREEN> + @offset_layer

#macro	@縦集中線背景(@tr(255), @length(__DEFAULT_LINEFEECT_V_SIZE), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_VERTICAL>], <LINE_TYPE_VERTICAL>, @length)
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].layer = <LAYER_BG_FILTER> + @offset_layer

#macro	@縦全体集中線(@tr(255), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_VERTICAL>], <LINE_TYPE_VERTICAL_ALL>, -1)
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].layer = <LAYER_SCREEN> + @offset_layer

#macro	@縦全体集中線背景(@tr(255), @offset_layer(0))
	$$set_concentration_xy_line_object(back.object[<OBJ_EFFECT_LINE_VERTICAL>], <LINE_TYPE_VERTICAL_ALL>, -1)
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].tr = @tr
	back.object[<OBJ_EFFECT_LINE_VERTICAL>].layer = <LAYER_BG_FILTER> + @offset_layer

#macro	@縦集中線終了
	front.object[<OBJ_EFFECT_LINE_VERTICAL>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：目眩
//-----------------------------------------------------------------
#macro	@目眩(@power(1), @disp_time(1000))
	$$set_dizzy_object(front.object[<OBJ_EFFECT_DIZZY_BG>], front.object[<OBJ_EFFECT_DIZZY_CHARACTER>], 0, @power, @disp_time, 0)

#macro	@目眩強(@disp_time(1000))
	$$set_dizzy_object(front.object[<OBJ_EFFECT_DIZZY_BG>], front.object[<OBJ_EFFECT_DIZZY_CHARACTER>], 0, 2, @disp_time, 0)

#macro	@目眩ループ(@power(1), @disp_time(1000), @wait_time(0))
	$$set_dizzy_object(front.object[<OBJ_EFFECT_DIZZY_BG>], front.object[<OBJ_EFFECT_DIZZY_CHARACTER>], 1, @power, @disp_time, @wait_time)

#macro	@目眩強ループ(@disp_time(1000), @wait_time(0))
	$$set_dizzy_object(front.object[<OBJ_EFFECT_DIZZY_BG>], front.object[<OBJ_EFFECT_DIZZY_CHARACTER>], 1, 2, @disp_time, @wait_time)

#macro	@目眩ループ終了(@wipe_no(3), @wipe_time(1000))
	$$delete_dizzy_object(front.object[<OBJ_EFFECT_DIZZY_BG>], front.object[<OBJ_EFFECT_DIZZY_CHARACTER>])
	@wipe(@wipe_no, @wipe_time, 1, 0)


//-----------------------------------------------------------------
// エフェクト：湯気
//-----------------------------------------------------------------
#macro	@湯気(@tr(192), @blend(4), @offset_layer(0), @flip_ud(0))
	$$set_steam_object(back.object[<OBJ_EFFECT_STEAM_BACK>], back.object[<OBJ_EFFECT_STEAM_FRONT>], @flip_ud)
	back.object[<OBJ_EFFECT_STEAM_BACK>].tr  = @tr
	back.object[<OBJ_EFFECT_STEAM_FRONT>].tr = @tr
	back.object[<OBJ_EFFECT_STEAM_BACK>].blend  = @blend
	back.object[<OBJ_EFFECT_STEAM_FRONT>].blend = @blend
	back.object[<OBJ_EFFECT_STEAM_BACK>].layer  += @offset_layer
	back.object[<OBJ_EFFECT_STEAM_FRONT>].layer += @offset_layer

#macro	@湯気反転(@tr(192), @blend(4), @offset_layer(0))
	@湯気(@tr, @blend, @offset_layer, 1)

#macro	@湯気終了
	front.object[<OBJ_EFFECT_STEAM_BACK>].wipe_copy  = 0
	front.object[<OBJ_EFFECT_STEAM_FRONT>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：煙
//-----------------------------------------------------------------
#macro	@煙(@tr(255), @blend(4), @offset_layer(0), @flip_ud(0), @color(0))
	$$set_smoke_object(back.object[<OBJ_EFFECT_SMOKE_BACK>], back.object[<OBJ_EFFECT_SMOKE_FRONT>], @flip_ud)
	back.object[<OBJ_EFFECT_SMOKE_BACK>].tr  = @tr
	back.object[<OBJ_EFFECT_SMOKE_FRONT>].tr = @tr
	back.object[<OBJ_EFFECT_SMOKE_BACK>].blend  = @blend
	back.object[<OBJ_EFFECT_SMOKE_FRONT>].blend = @blend
	back.object[<OBJ_EFFECT_SMOKE_BACK>].layer  += @offset_layer
	back.object[<OBJ_EFFECT_SMOKE_FRONT>].layer += @offset_layer
	back.object[<OBJ_EFFECT_SMOKE_BACK>].color_rate  = @color
	back.object[<OBJ_EFFECT_SMOKE_FRONT>].color_rate = @color

#macro	@煙反転(@tr(255), @blend(4), @offset_layer(0))
	@煙(@tr, @blend, @offset_layer, 1)

#macro	@黒煙(@black(255), @tr(255), @offset_layer(0), @flip_ud(0))
	@煙(@tr, 0, @offset_layer, @flip_ud, @black)

#macro	@黒煙反転(@black(255), @tr(255), @blend(4), @offset_layer(0))
	@黒煙(@black, @tr, @offset_layer, 1)

#macro	@灰煙(@tr(255), @offset_layer(0), @flip_ud(0))
	@煙(@tr, 0, @offset_layer, @flip_ud, 128)

#macro	@灰煙反転(@tr(255), @offset_layer(0))
	@灰煙(@tr, @offset_layer, 1)

#macro	@煙終了
	front.object[<OBJ_EFFECT_SMOKE_BACK>].wipe_copy  = 0
	front.object[<OBJ_EFFECT_SMOKE_FRONT>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：霧(きり)
//-----------------------------------------------------------------
#macro	@霧(@tr(96), @blend(4), @offset_layer(0))
	$$set_fogA_object(back.object[<OBJ_EFFECT_FOG_BACK>], back.object[<OBJ_EFFECT_FOG_FRONT>])
	back.object[<OBJ_EFFECT_FOG_BACK>].tr  = @tr
	back.object[<OBJ_EFFECT_FOG_FRONT>].tr = @tr
	back.object[<OBJ_EFFECT_FOG_BACK>].blend  = @blend
	back.object[<OBJ_EFFECT_FOG_FRONT>].blend = @blend
	back.object[<OBJ_EFFECT_FOG_BACK>].layer  += @offset_layer
	back.object[<OBJ_EFFECT_FOG_FRONT>].layer += @offset_layer

#macro	@流れる霧(@tr(192), @blend(0), @offset_layer(0), @flip_lr(0))
	$$set_fogB_object(back.object[<OBJ_EFFECT_FOG_BACK>], back.object[<OBJ_EFFECT_FOG_FRONT>], @flip_lr)
	back.object[<OBJ_EFFECT_FOG_BACK>].tr  = @tr
	back.object[<OBJ_EFFECT_FOG_FRONT>].tr = @tr
	back.object[<OBJ_EFFECT_FOG_BACK>].blend  = @blend
	back.object[<OBJ_EFFECT_FOG_FRONT>].blend = @blend
	back.object[<OBJ_EFFECT_FOG_BACK>].layer  += @offset_layer
	back.object[<OBJ_EFFECT_FOG_FRONT>].layer += @offset_layer

#macro	@流れる霧反転(@tr(192), @blend(0), @offset_layer(0))
	@流れる霧(@tr, @blend, @offset_layer, 1)

#macro	@霧終了
	front.object[<OBJ_EFFECT_FOG_BACK>].wipe_copy  = 0
	front.object[<OBJ_EFFECT_FOG_FRONT>].wipe_copy = 0


//-----------------------------------------------------------------
// エフェクト：レンズフレア
//-----------------------------------------------------------------
#macro	@レンズフレア(@type, @tr(255), @blend(4))
	$$set_lens_flare_object(back.object[<OBJ_EFFECT_LENS_FLARE>], @type)
	back.object[<OBJ_EFFECT_LENS_FLARE>].tr  = @tr
	back.object[<OBJ_EFFECT_LENS_FLARE>].blend  = @blend


//-----------------------------------------------------------------
// エフェクト：陽光(レンズフレア)
//-----------------------------------------------------------------
#macro	@陽光↑(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_DAYTIME_DU>, @tr, @blend)
	@bg_pan_du(__DAYTIME_SKY_FILENAME, @wipe_no, 40000)

#macro	@陽光↓(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_DAYTIME_UD>, @tr, @blend)
	@bg_pan_ud(__DAYTIME_SKY_FILENAME, @wipe_no, 40000)

#macro	@陽光→(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_DAYTIME_LR>, @tr, @blend)
	@bg_pan_lr(__DAYTIME_SKY_FILENAME, @wipe_no, 40000)

#macro	@陽光←(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_DAYTIME_LR>, @tr, @blend)
	@bg_pan_rl(__DAYTIME_SKY_FILENAME, @wipe_no, 40000)

//-----------------------------------------------------------------
// エフェクト：夕陽(レンズフレア)
//-----------------------------------------------------------------
#macro	@夕陽↑(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_EVENING_DU>, @tr, @blend)
	@bg_pan_du(__EVENING_SKY_FILENAME, @wipe_no, 40000)

#macro	@夕陽↓(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_EVENING_UD>, @tr, @blend)
	@bg_pan_ud(__EVENING_SKY_FILENAME, @wipe_no, 40000)

#macro	@夕陽→(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_EVENING_LR>, @tr, @blend)
	@bg_pan_lr(__EVENING_SKY_FILENAME, @wipe_no, 40000)

#macro	@夕陽←(@wipe_no(__DEFAULT_BG_WIPE_NO), @tr(255), @blend(4))
	@レンズフレア(<LENS_FLARE_TYPE_EVENING_RL>, @tr, @blend)
	@bg_pan_rl(__EVENING_SKY_FILENAME, @wipe_no, 40000)


//---------------------------------------------------------------------------
// エフェクト：フラッシュ
//---------------------------------------------------------------------------
// 命令置換
#define		@白フラッシュ		@flash_w
#define		@白フラッシュ背景	@flash_w_bg
#define		@黒フラッシュ		@flash_b
#define		@黒フラッシュ背景	@flash_b_bg
#define		@赤フラッシュ		@flash_r
#define		@赤フラッシュ背景	@flash_r_bg
#define		@フラッシュ			@flash
#define		@フラッシュ背景		@flash_bg

// 白フラッシュ／全体
#macro	@flash_w(@tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], 255, 255, 255, @tr, @time, @speed_mode, @wait, <LAYER_SCREEN> + @offset_layer)

// 白フラッシュ／背景
#macro	@flash_w_bg(@tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], 255, 255, 255, @tr, @time, @speed_mode, @wait, <LAYER_BG_FILTER> + @offset_layer)

// 黒フラッシュ／全体
#macro	@flash_b(@tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], 0, 0, 0, @tr, @time, @speed_mode, @wait, <LAYER_SCREEN> + @offset_layer)

// 黒フラッシュ／背景
#macro	@flash_b_bg(@tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], 0, 0, 0, @tr, @time, @speed_mode, @wait, <LAYER_BG_FILTER> + @offset_layer)

// 赤フラッシュ／全体
#macro	@flash_r(@tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], 255, 0, 0, @tr, @time, @speed_mode, @wait, <LAYER_SCREEN> + @offset_layer)

// 赤フラッシュ／背景
#macro	@flash_r_bg(@tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], 255, 0, 0, @tr, @time, @speed_mode, @wait, <LAYER_BG_FILTER> + @offset_layer)

// 色指定フラッシュ／全体
#macro	@flash(@red(255), @green(255), @blue(255), @tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], @red, @green, @blue, @tr, @time, @speed_mode, @wait, <LAYER_SCREEN> + @offset_layer)

// 色指定フラッシュ／背景
#macro	@flash_bg(@red(255), @green(255), @blue(255), @tr(192), @time(300), @wait(1), @speed_mode(0), @offset_layer(0))
	$$set_flash_object(front.object[<OBJ_EFFECT_FLASH>], @red, @green, @blue, @tr, @time, @speed_mode, @wait, <LAYER_BG_FILTER> + @offset_layer)


//---------------------------------------------------------------------------
// エフェクト：揺れ
//---------------------------------------------------------------------------
// 命令置換
#define		@揺れ			@shake_round
#define		@縦揺れ			@shake_ud
#define		@横揺れ			@shake_lr
#define		@拡縮揺れ		@shake_zoom

// 回転揺れ
#macro	@揺れ弱(@wait(0), @time(120), @end_order(0))		@shake_round(@wait, @time, 2, 10, @end_order)
#macro	@揺れ中(@wait(0), @time(120), @end_order(0))		@shake_round(@wait, @time, 3, 20, @end_order)
#macro	@揺れ強(@wait(0), @time(120), @end_order(0))		@shake_round(@wait, @time, 4, 30, @end_order)

#macro	@全揺れ弱(@wait(0), @time(120))						@shake_round(@wait, @time, 2, 10, 2)
#macro	@全揺れ中(@wait(0), @time(120))						@shake_round(@wait, @time, 3, 20, 2)
#macro	@全揺れ強(@wait(0), @time(120))						@shake_round(@wait, @time, 4, 30, 2)

#macro	@shake_round(@wait(0), @time(120), @count(2), @power(10), @end_order(0), @start_order(0))
	screen.quake[0].start(1, @time, @count, 0, @start_order, @end_order, [@power, 0])
	screen.quake[1].start(1, @time - 50, @count, 0, @start_order, @end_order, [@power, 6])
	if( @wait ) { screen.quake[0].wait screen.quake[1].wait }

// 縦揺れ
#macro	@縦揺れ弱(@wait(0), @time(120), @end_order(0))		@shake_ud(@wait, @time, 2, 10, @end_order)
#macro	@縦揺れ中(@wait(0), @time(120), @end_order(0))		@shake_ud(@wait, @time, 3, 20, @end_order)
#macro	@縦揺れ強(@wait(0), @time(120), @end_order(0))		@shake_ud(@wait, @time, 4, 30, @end_order)

#macro	@全縦揺れ弱(@wait(0), @time(120))					@shake_ud(@wait, @time, 2, 10, 2)
#macro	@全縦揺れ中(@wait(0), @time(120))					@shake_ud(@wait, @time, 3, 20, 2)
#macro	@全縦揺れ強(@wait(0), @time(120))					@shake_ud(@wait, @time, 4, 30, 2)

#macro	@shake_ud(@wait(0), @time(120), @count(2), @power(10), @end_order(0), @start_order(0))
	screen.quake[0].start(1, @time, @count, 0, @start_order, @end_order, [@power, 0])
	if( @wait ) { screen.quake[0].wait }

// 横揺れ
#macro	@横揺れ弱(@wait(0), @time(120), @end_order(0))		@shake_lr(@wait, @time, 2, 10, @end_order)
#macro	@横揺れ中(@wait(0), @time(120), @end_order(0))		@shake_lr(@wait, @time, 3, 20, @end_order)
#macro	@横揺れ強(@wait(0), @time(120), @end_order(0))		@shake_lr(@wait, @time, 4, 30, @end_order)

#macro	@全横揺れ弱(@wait(0), @time(120))					@shake_lr(@wait, @time, 2, 10, 2)
#macro	@全横揺れ中(@wait(0), @time(120))					@shake_lr(@wait, @time, 3, 20, 2)
#macro	@全横揺れ強(@wait(0), @time(120))					@shake_lr(@wait, @time, 4, 30, 2)

#macro	@shake_lr(@wait(0), @time(120), @count(2), @power(10), @end_order(0), @start_order(0))
	screen.quake[1].start(1, @time, @count, 0, @start_order, @end_order, [@power, 6])
	if( @wait ) { screen.quake[1].wait }

// 拡縮揺れ
#macro	@拡縮揺れ弱(@wait(0), @time(120), @end_order(0))	@shake_zoom(@wait, @time, 1, 20, @end_order)
#macro	@拡縮揺れ中(@wait(0), @time(120), @end_order(0))	@shake_zoom(@wait, @time, 2, 40, @end_order)
#macro	@拡縮揺れ強(@wait(0), @time(120), @end_order(0))	@shake_zoom(@wait, @time, 3, 60, @end_order)

#macro	@全拡縮揺れ弱(@wait(0), @time(120))					@shake_zoom(@wait, @time, 1, 20, 2)
#macro	@全拡縮揺れ中(@wait(0), @time(120))					@shake_zoom(@wait, @time, 2, 40, 2)
#macro	@全拡縮揺れ強(@wait(0), @time(120))					@shake_zoom(@wait, @time, 3, 60, 2)

#macro	@shake_zoom(@wait(0), @time(120), @count(2), @power(10), @end_order(0), @start_order(0))
	screen.quake[2].start(2, @time, @count, 0, @start_order, @end_order, [@power, <SCREEN_CENTER_X>, <SCREEN_CENTER_Y>])
	if( @wait ) { screen.quake[2].wait }

// 揺れループ
#macro	@揺れ弱ループ(@time(120), @end_order(0))		@shake_round(0, @time, 0, 5, @end_order)
#macro	@揺れ中ループ(@time(120), @end_order(0))		@shake_round(0, @time, 0, 10, @end_order)
#macro	@揺れ強ループ(@time(120), @end_order(0))		@shake_round(0, @time, 0, 15, @end_order)

#macro	@縦揺れ弱ループ(@time(120), @end_order(0))		@shake_ud(0, @time, 0, 5, @end_order)
#macro	@縦揺れ中ループ(@time(120), @end_order(0))		@shake_ud(0, @time, 0, 10, @end_order)
#macro	@縦揺れ強ループ(@time(120), @end_order(0))		@shake_ud(0, @time, 0, 15, @end_order)

#macro	@横揺れ弱ループ(@time(120), @end_order(0))		@shake_lr(0, @time, 0, 5, @end_order)
#macro	@横揺れ中ループ(@time(120), @end_order(0))		@shake_lr(0, @time, 0, 10, @end_order)
#macro	@横揺れ強ループ(@time(120), @end_order(0))		@shake_lr(0, @time, 0, 15, @end_order)

#macro	@拡縮揺れ弱ループ(@time(120), @end_order(0))	@shake_zoom(0, @time, 0, 10, @end_order)
#macro	@拡縮揺れ中ループ(@time(120), @end_order(0))	@shake_zoom(0, @time, 0, 20, @end_order)
#macro	@拡縮揺れ強ループ(@time(120), @end_order(0))	@shake_zoom(0, @time, 0, 30, @end_order)

#macro	@全揺れ弱ループ(@time(120))			@shake_round(0, @time, 0, 5, 2)
#macro	@全揺れ中ループ(@time(120))			@shake_round(0, @time, 0, 10, 2)
#macro	@全揺れ強ループ(@time(120))			@shake_round(0, @time, 0, 15, 2)

#macro	@全縦揺れ弱ループ(@time(120))		@shake_ud(0, @time, 0, 5, 2)
#macro	@全縦揺れ中ループ(@time(120))		@shake_ud(0, @time, 0, 10, 2)
#macro	@全縦揺れ強ループ(@time(120))		@shake_ud(0, @time, 0, 15, 2)

#macro	@全横揺れ弱ループ(@time(120))		@shake_lr(0, @time, 0, 5, 2)
#macro	@全横揺れ中ループ(@time(120))		@shake_lr(0, @time, 0, 10, 2)
#macro	@全横揺れ強ループ(@time(120))		@shake_lr(0, @time, 0, 15, 2)

#macro	@全拡縮揺れ弱ループ(@time(120))		@shake_zoom(0, @time, 0, 10, 2)
#macro	@全拡縮揺れ中ループ(@time(120))		@shake_zoom(0, @time, 0, 20, 2)
#macro	@全拡縮揺れ強ループ(@time(120))		@shake_zoom(0, @time, 0, 30, 2)

#macro	@揺れループ停止
	screen.quake[0].end
	screen.quake[1].end
	screen.quake[2].end


//---------------------------------------------------------------------------
// エフェクト：色調変化
//---------------------------------------------------------------------------
// 命令置換
#define		@モノクロ			@mono
#define		@モノクロ終了		@mono_end
#define		@セピア				@sepia
#define		@セピア終了			@sepia_end
#define		@ネガポジ			@nega
#define		@ネガポジ終了		@nega_end
#define		@シャドウ			@shadow
#define		@シャドウ終了		@shadow_end

// モノクロ
#macro	@mono
	back.effect[0].mono = 255
	back.effect[0].wipe_copy = 1

#macro	@mono_end
	front.effect[0].wipe_copy = 0

// セピア
#macro	@sepia
	back.effect[0].color_add_r = 42
	back.effect[0].color_add_g = 16
	back.effect[0].color_add_b = 5
	back.effect[0].mono = 255
	back.effect[0].dark = 40
	back.effect[0].wipe_copy = 1

#macro	@sepia_end
	front.effect[0].wipe_copy = 0

// ネガポジ反転
#macro	@nega
	back.effect[0].reverse = 255
	back.effect[0].wipe_copy = 1

#macro	@nega_end
	front.effect[0].wipe_copy = 0

// シャドウ
#macro	@shadow(@dark(128))
	back.effect[0].dark = @dark
	back.effect[0].wipe_copy = 1
	if( front.effect[0].wipe_copy && front.effect[0].dark )
	{
		back.effect[0].wipe_erase = 1		// 既にシャドウを設定済みの場合のみ消去する
	}

#macro	@shadow_end
	front.effect[0].wipe_copy = 0


//---------------------------------------------------------------------------
// エフェクト：全体フィルター
//---------------------------------------------------------------------------
// 命令置換
#define		@白フィルター			@filter_w
#define		@白フィルター全体		@filter_w_all
#define		@黒フィルター			@filter_b
#define		@黒フィルター全体		@filter_b_all
#define		@フィルター				@filter
#define		@フィルター全体			@filter_all
#define		@フィルター終了			@filter_end

// 白フィルター
#macro	@filter_w(@tr(128), @offset_layer(0))
	$$set_screen_filter_object(back.object[<OBJ_EFFECT_SCREEN_FILTER>], 255, 255, 255, @tr, <LAYER_BG_FILTER> + @offset_layer)

// 白フィルター全体
#macro	@filter_w_all(@tr(128), @offset_layer(0))
	$$set_screen_filter_object(back.object[<OBJ_EFFECT_SCREEN_FILTER>], 255, 255, 255, @tr, <LAYER_ALL_FILTER> + @offset_layer)

// 黒フィルター
#macro	@filter_b(@tr(128), @offset_layer(0))
	$$set_screen_filter_object(back.object[<OBJ_EFFECT_SCREEN_FILTER>], 0, 0, 0, @tr, <LAYER_BG_FILTER> + @offset_layer)

// 黒フィルター全体
#macro	@filter_b_all(@tr(128), @offset_layer(0))
	$$set_screen_filter_object(back.object[<OBJ_EFFECT_SCREEN_FILTER>], 0, 0, 0, @tr, <LAYER_ALL_FILTER> + @offset_layer)

// 色指定フィルター
#macro	@filter(@red(0), @green(0), @blue(0), @tr(128), @offset_layer(0))
	$$set_screen_filter_object(back.object[<OBJ_EFFECT_SCREEN_FILTER>], @red, @green, @blue, @tr, <LAYER_BG_FILTER> + @offset_layer)

// 色指定フィルター全体
#macro	@filter_all(@red(0), @green(0), @blue(0), @tr(128), @offset_layer(0))
	$$set_screen_filter_object(back.object[<OBJ_EFFECT_SCREEN_FILTER>], @red, @green, @blue, @tr, <LAYER_ALL_FILTER> + @offset_layer)

// フィルター終了
#macro	@filter_end
	front.object[<OBJ_EFFECT_SCREEN_FILTER>].wipe_copy = 0


//---------------------------------------------------------------------------
// エフェクト：シネマスコープ
//---------------------------------------------------------------------------
// 命令置換
#define		@シネスコ				@cinema
#define		@シネスコ全体			@cinema_all
#define		@縦シネスコ				@cinema_v
#define		@縦シネスコ全体			@cinema_v_all
#define		@シネスコ終了			@cinema_end

#define		@シネスコアニメ			@cinema_anim
#define		@シネスコアニメ全体		@cinema_all_anim
#define		@縦シネスコアニメ		@cinema_v_anim
#define		@縦シネスコアニメ全体	@cinema_v_all_anim
#define		@シネスコアニメ終了		@cinema_end_anim

// シネマスコープ(水平)
#macro	@cinema(@length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_HORIZONTAL>, @length, @red, @green, @blue, @tr, <LAYER_BG_FILTER> + @offset_layer)

// シネマスコープ全体(水平)
#macro	@cinema_all(@length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_HORIZONTAL>, @length, @red, @green, @blue, @tr, <LAYER_ALL_FILTER> + @offset_layer)

// シネマスコープ(垂直)
#macro	@cinema_v(@length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_VERTICAL>, @length, @red, @green, @blue, @tr, <LAYER_BG_FILTER> + @offset_layer)

// シネマスコープ全体(垂直)
#macro	@cinema_v_all(@length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_VERTICAL>, @length, @red, @green, @blue, @tr, <LAYER_ALL_FILTER> + @offset_layer)

// シネマスコープ終了
#macro	@cinema_end
	front.object[<OBJ_EFFECT_CINEMA_SCOPE>].wipe_copy = 0

// アニメーションありシネマスコープ(水平)
#macro	@cinema_anim(@time(1000), @speed_mode(0), @length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_HORIZONTAL>, @length, @red, @green, @blue, @tr, <LAYER_BG_FILTER> + @offset_layer)
	$$set_cinemascope_show_animation(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], @time, 0, @speed_mode)

// アニメーションありシネマスコープ全体(水平)
#macro	@cinema_all_anim(@time(1000), @speed_mode(0), @length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_HORIZONTAL>, @length, @red, @green, @blue, @tr, <LAYER_ALL_FILTER> + @offset_layer)
	$$set_cinemascope_show_animation(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], @time, 0, @speed_mode)

// アニメーションありシネマスコープ(垂直)
#macro	@cinema_v_anim(@time(1000), @speed_mode(0), @length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_VERTICAL>, @length, @red, @green, @blue, @tr, <LAYER_BG_FILTER> + @offset_layer)
	$$set_cinemascope_show_animation(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], @time, 0, @speed_mode)

// アニメーションありシネマスコープ全体(垂直)
#macro	@cinema_v_all_anim(@time(1000), @speed_mode(0), @length(__DEFAULT_CINEMASCPOE_SIZE), @red(0), @green(0), @blue(0), @tr(255), @offset_layer(0))
	$$set_cinemascope_object(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], <CINEMASCOPE_TYPE_VERTICAL>, @length, @red, @green, @blue, @tr, <LAYER_ALL_FILTER> + @offset_layer)
	$$set_cinemascope_show_animation(back.object[<OBJ_EFFECT_CINEMA_SCOPE>], @time, 0, @speed_mode)

// アニメーションありシネマスコープ終了
#macro	@cinema_end_anim(@time(1000), @speed_mode(0), @wait(0))
	front.object[<OBJ_EFFECT_CINEMA_SCOPE>].wipe_copy = 0
	$$set_cinemascope_hide_animation(front.object[<OBJ_EFFECT_CINEMA_SCOPE>], @time, 0, @speed_mode, @wait)



//---------------------------------------------------------------------------
// 環境エフェクト：雪
//---------------------------------------------------------------------------
#macro	@雪(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(0), @tr(255))
	$$create_snow_weatherA_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@見上げる雪(@amount(@量_少ない), @speed(@速度_遅い), @blend(0), @tr(255))
	$$create_snow_weatherB_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@印象的な雪(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(1), @tr(255))
	$$create_snow_weatherC_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@雪終了
	front.object[<OBJ_WEATHER_BACK>].wipe_copy = 0
	front.object[<OBJ_WEATHER_FRONT>].wipe_copy = 0


//---------------------------------------------------------------------------
// 環境エフェクト：雨
//---------------------------------------------------------------------------
#macro	@雨(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(0), @tr(255))
	$$create_rain_weatherA_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@見上げる雨(@amount(@量_少ない), @speed(@速度_遅い), @blend(0), @tr(255))
	$$create_rain_weatherB_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@印象的な雨(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(1), @tr(255))
	$$create_rain_weatherC_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@雨終了
	front.object[<OBJ_WEATHER_BACK>].wipe_copy = 0
	front.object[<OBJ_WEATHER_FRONT>].wipe_copy = 0


//---------------------------------------------------------------------------
// 環境エフェクト：塵
//---------------------------------------------------------------------------
#macro	@塵(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(0), @tr(255))
	$$create_dust_weatherA_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@印象的な塵(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(0), @tr(255))
	$$create_dust_weatherC_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@塵終了
	front.object[<OBJ_WEATHER_BACK>].wipe_copy = 0
	front.object[<OBJ_WEATHER_FRONT>].wipe_copy = 0


//---------------------------------------------------------------------------
// 環境エフェクト：火の粉
//---------------------------------------------------------------------------
#macro	@火の粉(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(0), @tr(255))
	$$create_fire_spark_weatherA_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@印象的な火の粉(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(1), @tr(255))
	$$create_fire_spark_weatherC_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@火の粉終了
	front.object[<OBJ_WEATHER_BACK>].wipe_copy = 0
	front.object[<OBJ_WEATHER_FRONT>].wipe_copy = 0


//---------------------------------------------------------------------------
// 環境エフェクト：光の玉
//---------------------------------------------------------------------------
#macro	@光の玉(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(1), @tr(255))
	$$create_light_ball_weatherA_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@印象的な光の玉(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(1), @tr(255))
	$$create_light_ball_weatherC_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@光の玉終了
	front.object[<OBJ_WEATHER_BACK>].wipe_copy = 0
	front.object[<OBJ_WEATHER_FRONT>].wipe_copy = 0


//---------------------------------------------------------------------------
// 環境エフェクト：桜
//---------------------------------------------------------------------------
#macro	@桜(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(0), @tr(255))
	$$create_sakura_weatherA_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@見上げる桜(@amount(@量_少ない), @speed(@速度_遅い), @blend(0), @tr(255))
	$$create_sakura_weatherB_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@印象的な桜(@amount(@量_少ない), @speed(@速度_遅い), @direction(@方向_中心から), @blend(1), @tr(255))
	$$create_sakura_weatherC_object(back.object[<OBJ_WEATHER_BACK>], back.object[<OBJ_WEATHER_FRONT>], @amount, @speed, @direction)
	back.object[<OBJ_WEATHER_BACK>].tr = @tr
	back.object[<OBJ_WEATHER_BACK>].blend = @blend
	back.object[<OBJ_WEATHER_FRONT>].tr = @tr
	back.object[<OBJ_WEATHER_FRONT>].blend = @blend

#macro	@桜終了
	front.object[<OBJ_WEATHER_BACK>].wipe_copy = 0
	front.object[<OBJ_WEATHER_FRONT>].wipe_copy = 0


//---------------------------------------------------------------------------
// 演出：時間待ち
//---------------------------------------------------------------------------
#macro	@waitkey(@wait_time)
	if( <EFFECT_SPEED_BG> == 0 ) {
		timewait_key(@wait_time)
	}


//---------------------------------------------------------------------------
// 演出：ブライトイン／アウト(明るさ変更)
//---------------------------------------------------------------------------
// ブライトイン(白い画面から通常に戻る)
#macro	@bright_in(@time(2000), @wait(1), @speed_mode(0), @bright(255), @wipe_no(99))
	$$set_bright_eve_game_object(back, @bright, 0, @time, 0, @speed_mode)
	@wipe(@wipe_no)
	if( @wait ) {
		front.object[<OBJ_START>].bright_eve.wait_key
	}

// ブライトアウト(画面が通常から白くなる)
#macro	@bright_out(@time(2000), @wait(1), @speed_mode(0), @bright(255))
	$$set_bright_eve_game_object(front, 0, @bright, @time, 0, @speed_mode)
	if( @wait ) {
		front.object[<OBJ_START>].bright_eve.wait_key
	}


//---------------------------------------------------------------------------
// 演出：画像文字
//---------------------------------------------------------------------------
#macro	@画像文字(@filename, @patno(0), @name(""), @msg(""), @koe_no(-1), @chara_no(-1), @pos_x(0), @pos_y(0), @savepoint(1))

	// メッセージが設定されている／セーブポイントフラグがオンの場合はセーブポイントを設定する
	if( @msg != "" && @savepoint ) {
		savepoint
	}
	
	// 声の再生
	if( @koe_no != -1 ) {
		exkoe(@koe_no, @chara_no)
	}
	
	// ファイルネームは = デフォルトネーム + 末尾数字２桁(言語バージョン)にしています
	back.object[<OBJ_IMAGE_TEXT>].create(@filename + math.tostr_zero(@check_lang, 2), 1, @pos_x, @pos_y, @patno)
	back.object[<OBJ_IMAGE_TEXT>].layer = <LAYER_SCREEN>
	
	// メッセージバックに追加する
	$$add_msgback(@koe_no, @chara_no, @name, @msg)


//---------------------------------------------------------------------------
// 演出：文字サイズ
//---------------------------------------------------------------------------
// 命令置換
#define		@声リセ		@声リセット

#macro	@大声(@font_size(__DEFAULT_LARGE_FONT_SIZE), @pos_y(__DEFAULT_LARGE_FONT_POS_Y))
	size(@font_size)
	rep_pos(0, @pos_y)

#macro	@小声(@font_size(__DEFAULT_SMALL_FONT_SIZE), @pos_y(__DEFAULT_SMALL_FONT_POS_Y))
	size(@font_size)
	rep_pos(0, @pos_y)

#macro	@声リセット
	size
	rep_pos
	" "


//---------------------------------------------------------------------------
// 演出：テキストセンタリング
//---------------------------------------------------------------------------
#macro	@テキストセンタリング開始(@close(1))
	script.set_msg_back_off
	if( @close ) { close }
	set_mwnd(2)

#macro	@テキストセンタリング(@msg, @koe_no(-1), @chara_no(-1), @name(""), @line_no(1), @line_max(1))
	$$add_msgback(@koe_no, @chara_no, @name, @msg)
	if( @koe_no != -1 ) {
		KOE(@koe_no, @chara_no)
	}
	$$print_centering_text(@msg, @line_no, @line_max)

#macro	@テキストセンタリング終了(@close(1))
	rep_pos
	script.set_msg_back_on
	if( @close ) { close }
	clear
	set_mwnd(0)



//---------------------------------------------------------------------------
// サウンド
//---------------------------------------------------------------------------
// ＢＧＭ再生
#macro	@bgm(@filename, @fade_in_time(0), @fade_out_time(0))
	bgm.play(@filename, @fade_in_time, @fade_out_time)

// ＢＧＭ停止
#macro	@bgm_stop(@time(1000), @wait(0))
	$$bgm_stop(@time, @wait)

// ＢＧＭ一時停止
#macro	@bgm_pause(@time(1000))
	bgm.pause(@time)

// ＢＧＭ再開
#macro	@bgm_resume(@time(1000))
	bgm.resume(@time)

// ＢＧＭの音量を変更
#macro	@bgm_volume(@volume, @time(0))
	bgm.set_volume(@volume, @time)

// ＢＧＭの音量をデフォルトに戻す
#macro	@bgm_volume_default(@time(0))
	$$bgm_volume_default(@time)

// ＳＥ再生
#macro	@se(@filename, @time(0), @ch(0))
	pcmch[@ch].play(@filename, fade = @time)

// ＳＥ再生(終了待ちを行う)
#macro	@se_wait(@filename, @time(0), @ch(0))
	pcmch[@ch].play(@filename, fade = @time)
	pcmch[@ch].wait_key

// ＳＥ再生(ループ)
#macro	@se_loop(@filename, @time(0), @ch(5))
	pcmch[@ch].play(@filename, loop = 1, fade = @time)

// ＳＥ再生(遅延)
#macro	@se_delay(@filename, @start_time, @ch(0))
	pcmevent[@ch].start_oneshot(
		@ch,
		["", @start_time],
		[@filename, 1000]
	)

// ＳＥ停止
#macro	@se_stop(@time(1000), @ch(0), @wait(0))
	$$se_stop(@time, @ch, @wait)

// ＳＥ停止(ループ)
#macro	@se_loop_stop(@time(1000), @ch(5), @wait(0))
	$$se_stop(@time, @ch, @wait)

// すべてのＳＥを停止
#macro	@se_stop_all(@time(1000), @wait(0))
	$$se_stop_all(@time, @wait)

// ＳＥ一時停止
#macro	@se_pause(@ch(0), @time(1000))
	pcmch[@ch].pause(@time)

// ＳＥを再開
#macro	@se_resume(@ch(0), @time(1000))
	pcmch[@ch].resume(@time)

// すべてのＳＥを一時停止
#macro	@se_pause_all(@time(1000))
	$$se_pause_all(@time)

// すべてのＳＥを再開
#macro	@se_resume_all(@time(1000))
	$$se_resume_all(@time)

// ＳＥの音量を変更
#macro	@se_volume(@volume, @ch(0), @time(0))
	pcmch[@ch].set_volume(@volume, @time)

// ＳＥの音量を初期値に戻す
#macro	@se_volume_default(@ch(0), @time(0))
	pcmch[@ch].set_volume(255, @time)

// すべてのサウンドを停止する
#macro	@all_sound_stop(@time(1000), @wait(0))
	@bgm_stop(@time, 0)
	@se_stop_all(@time, @wait)

// すべてのサウンドを一時停止
#macro	@all_sound_pause(@time(1000))
	@bgm_pause(@time)
	@se_pause_all(@time)

// すべてのサウンドを再開
#macro	@all_sound_resume(@time(1000))
	@bgm_resume(@time)
	@se_resume_all(@time)



//---------------------------------------------------------------------------
// システム
//---------------------------------------------------------------------------
#macro	@シーン開始
	$$init_scene
	@start_debug_shortcut

#macro	@シーン終了(@fade_time(1000), @wait_time(0))
	@all_sound_stop(@fade_time)
	@fade(0, @fade_time)
	timewait_key(@wait_time)

#macro	@チャプター終了
	if( <CHAPTER_PLAY> ) {
		syscom.return_to_menu(0, 0, 0)
	}

#macro	@オートセーブ
	if( <AUTO_SAVE> ) {
		$$auto_save
	}

#macro	@オートセーブしました表示
	if( <AUTO_SAVE> ) {
		$$show_system_toast(@システムトースト_タイプ_オートセーブ)
	}



//---------------------------------------------------------------------------
// エクストラ
//---------------------------------------------------------------------------
#macro	@チャプター登録(@chapter_no)
	$$chapter_flag_on(@chapter_no)



//---------------------------------------------------------------------------
// レコード
//---------------------------------------------------------------------------
#macro	@レコード獲得(@record_no)
	if( $$get_record_flag(@record_no) == 0 )
	{
		if( __TOAST_ENABLE == 0 ) {
			@dm("__lib_macro.inc → レコード獲得\n__TOAST_ENABLEが0のためレコード獲得表示はされません。\nレコード表示をするには__TOAST_ENABLEを1に設定する必要があります。")
		}
		
		// レコード取得時の表示が有効の場合トーストを表示する
		if( <RECORD_DISP> ) {
			$$push_toast($$get_record_title, $$get_record_name(@record_no))
		}
		
		// レコードフラグをオンにする
		$$record_flag_on(@record_no)
	}


//---------------------------------------------------------------------------
// デバッグ
//---------------------------------------------------------------------------
#macro	@start_debug_shortcut
	if( system.check_debug_flag )
	{
		if( __DEBUG_MODE )
		{
			$$show_debug_key_shortcut_msg
			frame_action_ch[<FRAME_ACTION_CH_DEBUG>].start(-1, "$$debug_key_shortcut")
		}
	}

// デバッグメッセージ
#macro	@todo(@msg)
	if( system.check_debug_flag )
	{
		if( __DEBUG_MODE )
		{
			if( front.object[<OBJ_DEBUG_MSG>].f.get_size == 0 )
			{
				// デバッグメッセージマネージャーが作成されていない場合は作成する
				$$create_debug_msg_manager(front.object[<OBJ_DEBUG_MSG>], 40, 40)
				$$set_debug_msg_manager(front.object[<OBJ_DEBUG_MSG>], 34, 0, 1, 5, 64, -100, 10000)
			}
			$$show_debug_msg(front.object[<OBJ_DEBUG_MSG>], @msg)
		}
	}
