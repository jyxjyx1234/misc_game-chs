//===========================================================================
//!
//!    @file     __sys_record.ss
//!    @brief    レコードシーン(システム側)
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
	
	// サムネイル座標管理
	#property	$thumb_file : str		// サムネイルファイル名
	#property	$thumb_x				// サムネイル座標(x)
	#property	$thumb_y				// サムネイル座標(y)
	#property	$thumb_offset_x			// サムネイル間隔(x)
	#property	$thumb_offset_y			// サムネイル間隔(y)
	#property	$thumb_w				// サムネイル並び最大数

#inc_end

//---------------------------------------------------------------------------
// レコードシーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready									// システムコールを準備する
$$create_record_scene_object(excall.back)		// シーンオブジェクトを作成する
$$update_scene_object(excall.back)				// シーンオブジェクトの描画を更新する
if( __SYSTEM_FOOTER_ENABLE ) {
	$$set_footer_joypad_navigation(excall.back)	// 手動でジョイパッド時のボタン遷移先を設定する
}
$$set_record_joypad_navigation(excall.back)		// 手動でジョイパッド時のボタン遷移先を設定する
$$show_record_scene_object(excall.back)			// シーンオブジェクトを表示する

// 入力制御を開始する
$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)

while( 1 )
{
	// 入力制御を更新する
	$select_btn = $$input_update(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
	
	// キャンセルは終了する
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		break
	}
	
	// ゲームパッド動作
	switch( $select_btn ) {
	case(@動作_レコード_スクロールフォーカス)
		
		excall.front.object[@ボタン_レコード_スクロールビュー].f_scview_target_obj_no = @ボタン_レコード_スクロールビュー
		$$reset_joypad_focus_button(excall.front)
		$$set_joypad_focus_button(@ボタン_レコード_スクロールビュー)
		
	case(@動作_レコード_スクロールダウン)	$$trigger_ui_scrollview_scroll(excall.front.object[@ボタン_レコード_スクロールビュー], <MOUSE_WHEEL_TYPE_DOWN>)
	case(@動作_レコード_スクロールアップ)	$$trigger_ui_scrollview_scroll(excall.front.object[@ボタン_レコード_スクロールビュー], <MOUSE_WHEEL_TYPE_UP>)
	}
	
	// フッターの入力処理を更新する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		$select_btn = $$update_footer_input(excall.front, $select_btn, @ボタン_フッター_レコード)
		
		// 戻るボタンが押された場合は終了する
		if( $select_btn == @ボタン_フッター_戻る ) {
			break
		}
		
		if( $select_btn == @ボタン_フッター_セーブ || $select_btn == @ボタン_フッター_ロード || $select_btn == @ボタン_フッター_コンフィグ )
		{
			// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
			$$off_system_front_wipe_copy_all
			
			// それぞれの処理を行う
			switch( $select_btn ) {
			case(@ボタン_フッター_セーブ)			jump(__sys_saveload, 0)				// セーブ画面へ
			case(@ボタン_フッター_ロード)			jump(__sys_saveload, 1)				// ロード画面へ
			case(@ボタン_フッター_コンフィグ)		jump(__sys_config_mode_select, 0)	// コンフィグ画面へ
			}
		}
	}
	
	// アプリケーション側の処理を更新する
	$$update_record_scene_object(excall.front, $select_btn)
	
	// 何かのボタンが押された
	if( $select_btn != -2 ) {
		$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

$$off_system_front_wipe_copy_all			// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_record_scene_object(excall.front)	// シーンオブジェクトを非表示にする
$$excall_free								// システムコールを解放する

return


//---------------------------------------------------------------------------
// レコードシーンで使用するすべてのサムネイルオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_record_all_thumb_object(property $stage : stage, property $filename : str, property $x, property $y, property $offset_x, property $offset_y, property $num)
{
	property $i
	
	$thumb_file = $filename
	$thumb_x = $x
	$thumb_y = $y
	$thumb_offset_x = $offset_x
	$thumb_offset_y = $offset_y
	$thumb_w = $num
	
	// サムネイルデータを作成する
	$stage.object[@イメージ_レコード枠].init
	$stage.object[@イメージ_レコード枠].disp = 1
	$stage.object[@イメージ_レコード枠].wipe_copy = 1
	$stage.object[@イメージ_レコード枠].child.resize(@レコード最大数)
	
	for( $i = 0, $i < @レコード最大数, $i += 1 )
	{
		$$create_scene_thumb_object($stage.object[@イメージ_レコード枠].child[$i], $i)
	}
}

//---------------------------------------------------------------------------
// レコードシーンで使用するスクロールビューを作成する
//---------------------------------------------------------------------------
command $$create_record_scrollview(property $obj : object, property $filename : str, property $x, property $y, property $group_no, property $mask_size_y, property $scrollbar_x, property $scrollbar_y, property $bg_button_no, property $handle_button_no, property $button_group_no, property $button_se_no, property $overlay_x, property $overlay_y)
{
	$$create_ui_scrollview($obj, $filename, $x, $y, $group_no, 
						   excall.back.object[@イメージ_レコード枠].child[0], excall.back.object[@イメージ_レコード枠].child[@レコード最大数 - 1],
						   $mask_size_y, $scrollbar_x, $scrollbar_y, $bg_button_no, $handle_button_no, $button_group_no, $button_se_no, $overlay_x, $overlay_y)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	
	// レコード達成率を設定する
	$stage.object[@イメージ_レコード_達成率].set_number($$get_record_complete_rate)
	
	// レコード枠
	for( $i = 0, $i < @レコード最大数, $i += 1 )
	{
		// サムネイルオブジェクトの描画を更新する
		$$update_scene_thumb_object($stage.object[@イメージ_レコード枠].child[$i], $i)
		
		// サムネイルオブジェクトをスクロールビューのグループとして設定する
		$$set_ui_scrollview_group($stage.object[@イメージ_レコード枠].child[$i], @ボタン_レコード_スクロールビュー)
	}
	
	// 共通フッターオブジェクトを作成する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		$$create_record_footer_scene_object($stage)
		$stage.object[@ボタン_フッター_レコード].set_button_state_select
	}
	
	// スクロール目標のオブジェクト番号をスクロールビューに設定する
	$stage.object[@ボタン_レコード_スクロールビュー].f_scview_target_obj_no = @ボタン_レコード_スクロールビュー
	
	// スクロールビューの感度を設定する
	$stage.object[@ボタン_レコード_スクロールビュー].f_scview_sensitivity = 100
	
	// スクロールビューのマージンを０にする
	$$set_ui_scrollview_margin($stage.object[@ボタン_レコード_スクロールビュー], 0)
	
	// ジョイパッドで最初に選択されているボタンを設定する
	$$set_joypad_focus_button(@ボタン_レコード_スクロールビュー)
}

//---------------------------------------------------------------------------
// サムネイルオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_scene_thumb_object(property $obj : object, property $index)
{
	property $i
	
	// サムネイルオブジェクトを設定する
	$$create_ui_image($obj, $thumb_file, $thumb_x + $thumb_offset_x * ($index % $thumb_w), $thumb_y + $thumb_offset_y * ($index / $thumb_w))
	
	// 子供オブジェクトを確保する
	$obj.child.resize(@イメージ_レコード枠_最大数)
	
	// サムネイルオブジェクトを作成する
	$$create_record_thumb_object($obj)
	
	// 親オブジェクトから各サムネイルオブジェクトの座標を補正する
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		if( $obj.child[$i].disp ) {
			$obj.child[$i].x -= excall.back.object[@イメージ_レコード枠].child[0].x
			$obj.child[$i].y -= excall.back.object[@イメージ_レコード枠].child[0].y
		}
	}
}

//---------------------------------------------------------------------------
// サムネイルオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_thumb_object(property $obj : object, property $index)
{
	// レコード番号
	$obj.child[@イメージ_レコード枠_番号_取得済].set_number($index + 1)
	$obj.child[@イメージ_レコード枠_番号_未取得].set_number($index + 1)
	
	// レコードを取得済みの場合
	if( $$get_record_flag($index) )
	{
		$obj.patno = 0
		$obj.child[@イメージ_レコード枠_番号_取得済].disp = 1
		$obj.child[@イメージ_レコード枠_番号_未取得].disp = 0
		$obj.child[@イメージ_レコード枠_テキスト].set_string($$get_record_name($index))
		$obj.child[@イメージ_レコード枠_テキスト].set_string_param(21, -2, 0, 0, @レコード_取得済_テキストカラー, -1, 0, -1)
	}
	
	// レコードを未取得の場合
	else
	{
		$obj.patno = 1
		$obj.child[@イメージ_レコード枠_番号_取得済].disp = 0
		$obj.child[@イメージ_レコード枠_番号_未取得].disp = 1
		$obj.child[@イメージ_レコード枠_テキスト].set_string($$get_record_name(-1))
		$obj.child[@イメージ_レコード枠_テキスト].set_string_param(21, -2, 0, 0, @レコード_未取得_テキストカラー, -1, 0, -1)
	}
}

//---------------------------------------------------------------------------
// レコード達成率を取得する
//---------------------------------------------------------------------------
command $$get_record_complete_rate : int
{
	property $i
	property $count
	
	for( $i = 0, $i < @レコード最大数, $i += 1 )
	{
		if( $$get_record_flag($i) ) {
			$count += 1
		}
	}
	
	return ($count * 100 / @レコード最大数)
}
