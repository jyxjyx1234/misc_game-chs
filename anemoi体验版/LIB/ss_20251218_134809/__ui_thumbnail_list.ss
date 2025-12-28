//===========================================================================
//!
//!    @file     __ui_thumbnail_list.ss
//!    @brief    サムネイルリストＵＩ
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩ
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// サムネイルリストを作成する
//---------------------------------------------------------------------------
command $$create_ui_thumbnail_list(property $obj : object, property $filename : str, property $x, property $y, property $base_button_no, property $button_group_no, property $button_se_no, property $thumb_max, property $disp_max, property $list_x, property $list_y, property $offset_x, property $prev_x, property $prev_y, property $next_x, property $next_y)
{
	property $i
	property $frame_x
	property $frame_y
	
	// 子供オブジェクトの確保、座標の設定
	$obj.init
	$obj.disp = 1
	$obj.wipe_copy = 1
	$obj.child.resize(<UI_TLIST_CHILD_MAX>)
	$obj.set_pos($x, $y)
	
	// システムＵＩフラグを設定する
	$obj.f.resize(<UI_TLIST_F_FLAG_MAX>)					// 汎用フラグを確保する
	$obj.type = <UI_TYPE_THUMB_LIST>						// ＵＩタイプをセレクトボックスにする
	$obj.f_tlist_max = $thumb_max							// サムネイルリスト最大数
	$obj.f_tlist_disp_max = $disp_max						// サムネイル表示最大数
	$obj.f_tlist_select_index = 0							// 選択中のサムネイルインデックス
	$obj.f_tlist_disp_index = 0								// 表示中のサムネイルインデックス
	$obj.f_tlist_offset_x = $offset_x						// サムネイルの表示間隔
	$obj.f_tlist_offset_page = 1							// サムネイルのページ送りオフセット(１つのページ送りでサムネイル何個分を飛ばすか)
	$obj.f_tlist_list_x = $list_x							// サムネイルリストの位置(x)
	$obj.f_tlist_list_y = $list_y							// サムネイルリストの位置(y)
	$obj.f_tlist_list_offset_x = $offset_x					// サムネイルリストの間隔(x)
	$obj.f_tlist_list_button_no = $base_button_no			// サムネイルリストのベースボタン番号
	$obj.f_tlist_list_button_group_no = $button_group_no	// サムネイルリストのボタングループ番号
	$obj.f_tlist_list_button_se_no = $button_se_no			// サムネイルリストのボタンＳＥ番号
	
	// 背景を作成する
	$obj.ui_tlist_bg.create($filename + "_bg", 1)
	$obj.ui_tlist_bg.set_button($base_button_no, $button_group_no, 2, -1)
	
	// サムネイルリストを作成する
	$obj.ui_tlist_thumb.disp = 1
	$obj.ui_tlist_thumb.child.resize($thumb_max)
	
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		$obj.ui_tlist_thumb.child[$i].create($filename + "_thumb", 1, $list_x + $offset_x * $i, $list_y)
		$obj.ui_tlist_thumb.child[$i].patno = $i
		$obj.ui_tlist_thumb.child[$i].set_button($base_button_no + 3 + $i, $button_group_no, 4, $button_se_no)
		$obj.ui_tlist_thumb.child[$i].x_rep.resize(1)
		
		// フレームを作成する
		$obj.ui_tlist_thumb.child[$i].child.resize(1)
		$obj.ui_tlist_thumb.child[$i].child[0].create($filename + "_frame", 1)
		
		// サムネイルとフレーム座標からフレームの位置を保存しておく
		if( $i == 0 )
		{
			$obj.f_tlist_frame_size_x = ($obj.ui_tlist_thumb.child[$i].child[0].get_size_x - $obj.ui_tlist_thumb.child[$i].get_size_x) / 2
			$obj.f_tlist_frame_size_y = ($obj.ui_tlist_thumb.child[$i].child[0].get_size_y - $obj.ui_tlist_thumb.child[$i].get_size_y) / 2
		}
		
		// フレームの座標を設定する
		$obj.ui_tlist_thumb.child[$i].child[0].x = -$obj.f_tlist_frame_size_x
		$obj.ui_tlist_thumb.child[$i].child[0].y = -$obj.f_tlist_frame_size_y
	}
	
	// 前へボタンを作成する
	$obj.ui_tlist_prev.create($filename + "_prev", 0, $prev_x, $prev_y)
	$obj.ui_tlist_prev.set_button($base_button_no + 1, $button_group_no, 1, $button_se_no)
	
	// 次へボタンを作成する
	$obj.ui_tlist_next.create($filename + "_next", 0, $next_x, $next_y)
	$obj.ui_tlist_next.set_button($base_button_no + 2, $button_group_no, 1, $button_se_no)
	
	// 表示範囲を設定する
	$$set_ui_thumbnail_list_auto_clip($obj)
	
	// 描画を更新する
	$$update_ui_thumbnail_list($obj)
	
	// フレームアクションの実行
	$obj.frame_action.start(-1, "$$fa_ui_thumbnail_list")
}

//---------------------------------------------------------------------------
// サムネイルリストの描画を更新する
//---------------------------------------------------------------------------
command $$update_ui_thumbnail_list(property $obj : object)
{
	property $i
	property $index
	
	// 選択／表示中サムネイルの位置によって移動させるインデックスを計算する
	if( $obj.f_tlist_disp_index >= $obj.f_tlist_max - $obj.f_tlist_disp_max && $obj.f_tlist_disp_max < $obj.f_tlist_max )
	{
		$index = $obj.f_tlist_max - $obj.f_tlist_disp_max
	}
	else
	{
		$index = $obj.f_tlist_disp_index
	}
	
	// サムネイルリストを移動する
	for( $i = 0, $i < $obj.f_tlist_max, $i += 1 )
	{
		if( $obj.f_tlist_disp_max < $obj.f_tlist_max ) {
			$obj.ui_tlist_thumb.child[$i].x_rep_eve[0].set(-$index * $obj.f_tlist_offset_x, __UI_THUMBNAIL_LIST_ANIMATION_TIME, 0, __UI_THUMBNAIL_LIST_ANIMATION_MODE)
		}
		
		// 選択中のサムネイルの場合はフレームを変更する
		if( $i == $obj.f_tlist_select_index )
		{
			$obj.ui_tlist_thumb.child[$i].child[0].patno = 1
			$obj.ui_tlist_thumb.child[$i].set_button_state_select
		}
		else
		{
			$obj.ui_tlist_thumb.child[$i].child[0].patno = 0
			$obj.ui_tlist_thumb.child[$i].set_button_state_normal
		}
	}
	
	// サムネイルリストの表示状況によって戻る／進むボタンを表示／非表示にする
	if( 0 < $obj.f_tlist_max )
	{
		$obj.ui_tlist_prev.disp = 1
		$obj.ui_tlist_next.disp = 1
	}
	else
	{
		$obj.ui_tlist_prev.disp = 0
		$obj.ui_tlist_next.disp = 0
	}
	
	// サムネが左端の場合、 戻るボタンを押せないようにする
	if( $obj.f_tlist_max <= $obj.f_tlist_disp_max || $obj.f_tlist_disp_index <= 0 )
	{
		$obj.ui_tlist_prev.set_button_state_disable
	}
	else
	{
		$obj.ui_tlist_prev.set_button_state_normal
	}
	
	// サムネが右端の場合、 進むボタンを押せないようにする
	if( $obj.f_tlist_max < $obj.f_tlist_disp_max || $obj.f_tlist_disp_index >= $obj.f_tlist_max - $obj.f_tlist_disp_max )
	{
		$obj.ui_tlist_next.set_button_state_disable
	}
	else
	{
		$obj.ui_tlist_next.set_button_state_normal
	}
}

//---------------------------------------------------------------------------
// サムネイルリストの描画をリセットする
//---------------------------------------------------------------------------
command $$reset_ui_thumbnail_list(property $obj : object)
{
	property $i
	
	// 表示中のサムネイルインデックスを選択中のインデックスに更新する
	$obj.f_tlist_disp_index = $obj.f_tlist_select_index
	
	// 描画を更新する
	$$update_ui_thumbnail_list($obj)
	
	// アニメーションをスキップする
	for( $i = 0, $i < $obj.f_tlist_max, $i += 1 )
	{
		$obj.ui_tlist_thumb.child[$i].x_rep_eve[0].end
	}
}

//---------------------------------------------------------------------------
// サムネイルリストのフレームアクション
//---------------------------------------------------------------------------
command $$fa_ui_thumbnail_list(property $fa : frameaction, property $obj : object)
{
	property $i
	
	// ゲームパッドで選択されている場合は背景のパターン番号を変更する
	if( syscom.check_joypad_mode == 1 && $$get_joypad_focus_button == $obj.f_tlist_list_button_no )
	{
		for( $i = 0, $i < $obj.f_tlist_max, $i += 1 )
		{
			if( $i == $obj.f_tlist_disp_index )
			{
				$obj.ui_tlist_thumb.child[$i].child[0].patno = 2
			}
		}
	}
	else
	{
		for( $i = 0, $i < $obj.f_tlist_max, $i += 1 )
		{
			if( $i == $obj.f_tlist_select_index )
			{
				$obj.ui_tlist_thumb.child[$i].child[0].patno = 1
			}
			elseif( $i == $obj.f_tlist_disp_index )
			{
				$obj.ui_tlist_thumb.child[$i].child[0].patno = 0
			}
		}
	}
}

//---------------------------------------------------------------------------
// サムネイルリストを前に更新する
//---------------------------------------------------------------------------
command $$prev_ui_thumbnail_list(property $obj : object, property $offset_page)
{
	// 指定ページ分送り
	if( $offset_page )
	{
		// 表示中のインデックスを前に戻す
		$obj.f_tlist_disp_index -= $obj.f_tlist_offset_page
		if( $obj.f_tlist_disp_index < 0 ) {
			$obj.f_tlist_disp_index = 0
		}
	}
	
	// １ページ送り
	else
	{
		// 表示中のインデックスを前に戻す
		$obj.f_tlist_disp_index -= 1
		if( $obj.f_tlist_disp_index < 0 ) {
			$obj.f_tlist_disp_index = 0
		}
	}
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($obj)
}

//---------------------------------------------------------------------------
// サムネイルリストを次に更新する
//---------------------------------------------------------------------------
command $$next_ui_thumbnail_list(property $obj : object, property $offset_page)
{
	// 指定ページ分送り
	if( $offset_page )
	{
		// 表示中のインデックスを次に進める
		$obj.f_tlist_disp_index += $obj.f_tlist_offset_page
		if( $obj.f_tlist_disp_index >= $obj.f_tlist_max - $obj.f_tlist_disp_max ) {
			$obj.f_tlist_disp_index = $obj.f_tlist_max - $obj.f_tlist_disp_max
		}
	}
	
	// １ページ送り
	else
	{
		// 表示中のインデックスを次に進める
		$obj.f_tlist_disp_index += 1
		if( $obj.f_tlist_disp_index >= $obj.f_tlist_max - 1 ) {
			$obj.f_tlist_disp_index = $obj.f_tlist_max - 1
		}
	}
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($obj)
}

//---------------------------------------------------------------------------
// サムネイルリストの表示矩形を自動で設定する
//---------------------------------------------------------------------------
command $$set_ui_thumbnail_list_auto_clip(property $obj : object)
{
	property $obj_max
	property $clip_l
	property $clip_t
	property $clip_r
	property $clip_b
	
	// サムネイルリストの最大数が設定されていない場合は処理をスキップする
	if( $obj.f_tlist_max < 1 ) {
		return
	}
	
	// 右端のオブジェクトを取得する
	$obj_max = $obj.f_tlist_disp_max
	if( $obj.f_tlist_max < $obj_max ) {
		$obj_max =  $obj.f_tlist_max
	}
	
	// サムネイルサイズとフレームサイズから表示矩形を設定する
	$clip_l = $obj.x + $obj.ui_tlist_thumb.child[0].x - $obj.f_tlist_frame_size_x
	$clip_t = $obj.y - $obj.f_tlist_frame_size_y
	$clip_r = $obj.x + $obj.ui_tlist_thumb.child[$obj_max - 1].x + $obj.ui_tlist_thumb.child[$obj_max - 1].get_size_x + $obj.f_tlist_frame_size_x * 2
	$clip_b = $obj.y + $obj.ui_tlist_thumb.child[0].y + $obj.ui_tlist_thumb.child[0].get_size_y + $obj.f_tlist_frame_size_y * 2
	
	$obj.ui_tlist_thumb.set_clip(1, $clip_l, $clip_t, $clip_r, $clip_b)
}

//---------------------------------------------------------------------------
// サムネイルリストを変更する
//---------------------------------------------------------------------------
command $$change_ui_thumbnail_list(property $obj : object, property $list_no, property $thumb_max, property $select_index)
{
	property $i
	property $len
	property $filename : str
	
	// ベースのファイル名を取得する
	$filename = $obj.ui_tlist_bg.get_file_name
	$filename = $filename.left($filename.cnt - 3)
	
	// サムネイルリストを初期化する
	$len = $obj.ui_tlist_thumb.child.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		$obj.ui_tlist_thumb.child[$i].init
	}
	
	// サムネイルリストを作成する
	$obj.ui_tlist_thumb.child.resize($thumb_max)
	
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		$obj.ui_tlist_thumb.child[$i].create($filename + "_thumb" + math.tostr_zero($list_no, 2), 1, $obj.f_tlist_list_x + $obj.f_tlist_list_offset_x * $i, $obj.f_tlist_list_y)
		$obj.ui_tlist_thumb.child[$i].patno = $i
		$obj.ui_tlist_thumb.child[$i].set_button($obj.f_tlist_list_button_no + 3 + $i, $obj.f_tlist_list_button_group_no, 4, $obj.f_tlist_list_button_se_no)
		$obj.ui_tlist_thumb.child[$i].x_rep.resize(1)
		
		// フレームを作成する
		$obj.ui_tlist_thumb.child[$i].child.resize(1)
		$obj.ui_tlist_thumb.child[$i].child[0].create($filename + "_frame", 1)
		
		// サムネイルとフレーム座標からフレームの位置を保存しておく
		if( $i == 0 )
		{
			$obj.f_tlist_frame_size_x = ($obj.ui_tlist_thumb.child[$i].child[0].get_size_x - $obj.ui_tlist_thumb.child[$i].get_size_x) / 2
			$obj.f_tlist_frame_size_y = ($obj.ui_tlist_thumb.child[$i].child[0].get_size_y - $obj.ui_tlist_thumb.child[$i].get_size_y) / 2
		}
		
		// フレームの座標を設定する
		$obj.ui_tlist_thumb.child[$i].child[0].x = -$obj.f_tlist_frame_size_x
		$obj.ui_tlist_thumb.child[$i].child[0].y = -$obj.f_tlist_frame_size_y
	}
	
	// システムＵＩフラグを設定する
	$obj.f_tlist_max = $thumb_max				// サムネイルリスト最大数
	$obj.f_tlist_select_index = $select_index	// 選択中のサムネイルインデックス
	$obj.f_tlist_disp_index = $select_index		// 表示中のサムネイルインデックス
	
	// 表示範囲を設定する
	$$set_ui_thumbnail_list_auto_clip($obj)
	
	// 描画を更新する
	$$update_ui_thumbnail_list($obj)
}

//---------------------------------------------------------------------------
// サムネイルリストで表示中のボタンの状態を取得する
//---------------------------------------------------------------------------
command $$get_ui_thumbnail_list_disp_button_state(property $obj : object) : int
{
	return ($obj.ui_tlist_thumb.child[$obj.f_tlist_disp_index].get_button_real_state)
}
