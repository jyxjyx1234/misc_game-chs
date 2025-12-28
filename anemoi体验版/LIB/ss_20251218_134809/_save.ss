//===========================================================================
//!
//!    @file     _save.ss
//!    @brief    セーブシーン(アプリケーション側)
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   [ここにアプリケーションごとの担当者の名前を記述してください]
//!    @note     レイアウトなどアプリケーションごとに挙動を調整する必要がある処理
//!
//===========================================================================

#z00

//---------------------------------------------------------------------------
// シーンオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_save_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[0], _save_bg, 0, 0)
	$$create_ui_button($stage.object[@ボタン_セーブロード_ＮＥＷページ], _save_page_new_btn, 540, 56, @ボタン_セーブロード_ＮＥＷページ, <OBJBTN_GROUP_NO_EXCALL>, 4)
	$$create_ui_button($stage.object[@ボタン_セーブロード_前のタブ], _save_page_prev_btn, 424, 56, @ボタン_セーブロード_前のタブ, <OBJBTN_GROUP_NO_EXCALL>, 4)
	$$create_ui_button($stage.object[@ボタン_セーブロード_次のタブ], _save_page_next_btn, 482, 56, @ボタン_セーブロード_次のタブ, <OBJBTN_GROUP_NO_EXCALL>, 4)
	$$create_ui_button($stage.object[@ボタン_セーブロード_オートページ], _save_page_auto_btn, 1758, 56, @ボタン_セーブロード_オートページ, <OBJBTN_GROUP_NO_EXCALL>, 4)
	$$create_ui_button($stage.object[@ボタン_セーブロード_クイックページ], _save_page_quick_btn, 1816, 56, @ボタン_セーブロード_クイックページ, <OBJBTN_GROUP_NO_EXCALL>, 4)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 0], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (0 % 5), 142 + 410 * (0 / 5), @ボタン_セーブロード_サムネイル + 0, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 1], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (1 % 5), 142 + 410 * (1 / 5), @ボタン_セーブロード_サムネイル + 1, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 2], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (2 % 5), 142 + 410 * (2 / 5), @ボタン_セーブロード_サムネイル + 2, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 3], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (3 % 5), 142 + 410 * (3 / 5), @ボタン_セーブロード_サムネイル + 3, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 4], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (4 % 5), 142 + 410 * (4 / 5), @ボタン_セーブロード_サムネイル + 4, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 5], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (5 % 5), 142 + 410 * (5 / 5), @ボタン_セーブロード_サムネイル + 5, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 6], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (6 % 5), 142 + 410 * (6 / 5), @ボタン_セーブロード_サムネイル + 6, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 7], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (7 % 5), 142 + 410 * (7 / 5), @ボタン_セーブロード_サムネイル + 7, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 8], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (8 % 5), 142 + 410 * (8 / 5), @ボタン_セーブロード_サムネイル + 8, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + 9], _save_thumbnail_btn + math.tostr_zero(1, 2), 61 + 360 * (9 % 5), 142 + 410 * (9 / 5), @ボタン_セーブロード_サムネイル + 9, <OBJBTN_GROUP_NO_EXCALL>, 0)
	$$create_save_all_page_button($stage, _save_page_btn, 601, 56, 58, 0, 20)
}

//---------------------------------------------------------------------------
// サムネイルオブジェクトを作成する
//---------------------------------------------------------------------------
command $$create_save_thumb_object(property $stage : stage, property $obj : object, property $index)
{
	$$create_ui_image($obj.child[@セーブロード_サムネイル_ＮＥＷ], _save_thumbnail_new, 89, 208)
	$$create_ui_number_image($obj.child[@セーブロード_サムネイル_セーブ番号], _save_thumbnail_number, 82, 155)
	$$create_ui_string($obj.child[@セーブロード_サムネイル_日付], 251, 155, 96, 21, 18)
	$$create_ui_string($obj.child[@セーブロード_サムネイル_時間], 354, 156, 46, 21, 18)
	$$create_ui_string($obj.child[@セーブロード_サムネイル_セーブタイトル], 84, 399, 308, 20, 18)
	$$create_ui_string($obj.child[@セーブロード_サムネイル_セーブメッセージ], 84, 434, 310, 20, 17)
	$$create_ui_image($obj.child[@セーブロード_サムネイル_空画像], _save_thumbnail_empty, 89, 203)
	$$create_ui_image($obj.child[@セーブロード_サムネイル_セーブ画像], "", 89, 203)
	$$create_ui_image($obj.child[@セーブロード_サムネイル_ベース], _save_thumbnail_frame, 61, 142)
	$$create_ui_button($stage.object[@ボタン_セーブロード_コメント+$index], _save_thumbnail_comment_btn, 81, 454, @ボタン_セーブロード_コメント+$index, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_toggle_button($stage.object[@ボタン_セーブロード_ロック+$index], _save_thumbnail_lock_btn, 161, 492, @ボタン_セーブロード_ロック+$index, <OBJBTN_GROUP_NO_EXCALL>, 1, 0)
	$$create_ui_button($stage.object[@ボタン_セーブロード_入れ替え+$index], _save_thumbnail_swap_btn, 220, 492, @ボタン_セーブロード_入れ替え+$index, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_button($stage.object[@ボタン_セーブロード_削除+$index], _save_thumbnail_erase_btn, 279, 492, @ボタン_セーブロード_削除+$index, <OBJBTN_GROUP_NO_EXCALL>, 1)
	$$create_ui_string($stage.object[@テキスト_セーブロード_コメント+$index], 126, 463, 271, 20, 17)
}

//---------------------------------------------------------------------------
// シーンオブジェクト(セーブ／ロード共通)を作成する
//---------------------------------------------------------------------------
command $$create_saveload_scene_object(property $stage : stage)
{
	$$create_ui_image($stage.object[@アニメ_セーブロード_データ入れ替え], _saveload_swap_anim, 209, 261)
	$$create_ui_image($stage.object[@イメージ_セーブロード_システムメッセージ], _saveload_system_message, 710, 501)
	
	// 入れ替えアニメを回転ループ
	$stage.object[@アニメ_セーブロード_データ入れ替え].rotate_z_eve.loop(0, 3600, 1500, 0, 0)
}

//---------------------------------------------------------------------------
// シーンオブジェクトを更新する
// - 毎フレーム処理を追加することができます
//---------------------------------------------------------------------------
command $$update_save_scene_object(property $stage : stage, property $select_btn)
{
}

//---------------------------------------------------------------------------
// シーンオブジェクトの再描画
// - ページ、サムネイルなどを再描画する際の処理を追加することができます
//---------------------------------------------------------------------------
command $$redraw_save_scene_object(property $stage : stage, property $redraw_type)
{
	property $i
	property $anim_check_obj_no
	
	// ページ切り替えによる描画更新が行われた場合
	if( $redraw_type == @セーブロード_描画更新_ページ切り替え )
	{
		// サムネイルボタン上段の↑パッド遷移先を現在のページにする
		for( $i = 0, $i < 5, $i += 1 ) {
			$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_up = @ボタン_セーブロード_現在のページ
		}
		
		// フッターの↓パッド遷移先を現在のページにする
		$stage.object[@ボタン_フッター_セーブ].joypad_down = @ボタン_セーブロード_現在のページ
		$stage.object[@ボタン_フッター_ロード].joypad_down = @ボタン_セーブロード_現在のページ
		$stage.object[@ボタン_フッター_コンフィグ].joypad_down = @ボタン_セーブロード_現在のページ
		$stage.object[@ボタン_フッター_レコード].joypad_down = @ボタン_セーブロード_現在のページ
		$stage.object[@ボタン_フッター_タイトルに戻る].joypad_down = @ボタン_セーブロード_現在のページ
		$stage.object[@ボタン_フッター_ゲームを終了する].joypad_down = @ボタン_セーブロード_現在のページ
		$stage.object[@ボタン_フッター_戻る].joypad_down = @ボタン_セーブロード_現在のページ
		
		// ワイプ（表示速度によって変更）
		if( <EFFECT_SPEED_SYS_MENU> )
		{
			// 瞬間表示
			wipe(0, 0, wait=1)
		}
		else
		{
			// 現在のページを左へ
			for( $i = @ボタン_セーブロード_サムネイル, $i <= @テキスト_セーブロード_コメント最大, $i += 1 )
			{
				if( excall.front.object[$i].f.get_size == 0 ) {
					continue
				}
				
				excall.front.object[$i].x_rep.resize(2)
				excall.front.object[$i].x_rep[1] = 0
				excall.front.object[$i].x_rep_eve[1].set(-<SCREEN_WIDTH>, 500, 0, 2)
			}
			
			// 現在のページを右から表示
			for( $i = @ボタン_セーブロード_サムネイル, $i <= @テキスト_セーブロード_コメント最大, $i += 1 )
			{
				if( $stage.object[$i].f.get_size == 0 ) {
					continue
				}
				
				$stage.object[$i].x_rep.resize(2)
				$stage.object[$i].x_rep[1] = <SCREEN_WIDTH>
				$stage.object[$i].x_rep_eve[1].set(0, 500, 0, 2)
				
				$anim_check_obj_no = $i
			}
			
			// ワイプ(ジョイパッドのＲ１がキースキップするのでキースキップできないようにする)
			wipe(0, 250, wait=1, key_skip=0)
			
			// アニメーションの終了を待つ
			excall.front.object[$anim_check_obj_no].all_eve.wait
		}
	}
	
	// セーブ実行による描画更新が行われた場合
	elseif( $redraw_type == @セーブロード_描画更新_セーブ実行 )
	{
		// ワイプ(即表示)
		wipe(0, 0, wait=1)
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを表示する
// - シーン表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$show_save_scene_object(property $stage : stage)
{
	property $i
	property $anim_check_obj_no
	
	// ジョイパッドで最初に選択されているボタンを設定する
	$$set_joypad_focus_button(@ボタン_セーブロード_サムネイル)
	
	// セーブタイトル／メッセージ／コメントの文字カラーを変更する
	for( $i = 0, $i < @セーブロード_サムネイル最大数, $i += 1 )
	{
		// セーブ番号／字幅調整
		$stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_セーブ番号].set_number_param(4, 1, 0, 0, 0, 2)
		
		// セーブタイトル／フォントカラー調整
		$stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_セーブタイトル].set_string_param($stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_セーブタイトル].f_font_size, 0, 0, 0, 25, 1, 0)
		
		// セーブメッセージ／フォントカラー調整
		$stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_セーブメッセージ].set_string_param($stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_セーブメッセージ].f_font_size, 0, 0, 0, 25, 1, 0)
		
		// セーブコメント／フォントカラー調整
		$stage.object[@テキスト_セーブロード_コメント + $i].set_string_param($stage.object[@テキスト_セーブロード_コメント + $i].f_font_size, 0, 0, 0, 25, 1, 0)
	}
	
	// アニメ―ション前に画面を更新する
	disp
	
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 現在のページを右から表示
		for( $i = @ボタン_セーブロード_サムネイル, $i <= @テキスト_セーブロード_コメント最大, $i += 1 )
		{
			if( $stage.object[$i].f.get_size == 0 ) {
				continue
			}
			
			$stage.object[$i].x_rep.resize(2)
			$stage.object[$i].x_rep[1] = <SCREEN_WIDTH>
			$stage.object[$i].x_rep_eve[1].set(0, 500, 0, 2)
			
			$anim_check_obj_no = $i
		}
		
		// 通常表示
		wipe(0, 250, wait=1)
		
		// アニメーションの終了を待つ
		excall.front.object[$anim_check_obj_no].all_eve.wait
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを非表示にする
// - シーン非表示時の処理を追加することができます
//---------------------------------------------------------------------------
command $$hide_save_scene_object(property $stage : stage)
{
	// ワイプ（表示速度によって変更）
	if( <EFFECT_SPEED_SYS_MENU> )
	{
		// 瞬間表示
		wipe(0, 0, wait=1)
	}
	else
	{
		// 通常表示
		wipe(0, 250, wait=1)
	}
}

//---------------------------------------------------------------------------
// パッド入力の遷移を設定する
//---------------------------------------------------------------------------
command $$set_save_joypad_navigation(property $stage : stage)
{
	property $i
	
	// サムネイルボタン
	for( $i = 0, $i < 10, $i += 1 )
	{
		// 各ページボタンの←→にサムネイルボタンを設定する
		$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_down  = @ボタン_セーブロード_コメント + $i
		$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_left  = @ボタン_セーブロード_サムネイル + ($i - 1)
		$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_right = @ボタン_セーブロード_サムネイル + ($i + 1)
		
		// 左端のサムネイルボタンは右端を設定する
		if( $i == 0 || $i == 5 ) {
			$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_left  = @ボタン_セーブロード_サムネイル + ($i + 4)
		}
		// 右端のサムネイルボタンは左端を設定する
		elseif( $i == 4 || $i == 9 ) {
			$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_right = @ボタン_セーブロード_サムネイル + ($i - 4)
		}
		
		// 上段は↑にページボタンを設定する
		if( $i < 5 ) {
			$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_up = @ボタン_セーブロード_現在のページ
		}
		// 下段は↑にサムネイルボタンを設定する
		elseif( $i >= 5 ) {
			$stage.object[@ボタン_セーブロード_サムネイル + $i].joypad_up = @ボタン_セーブロード_サムネイル + ($i - 5)
		}
	}
	
	// コメントボタン
	for( $i = 0, $i < 10, $i += 1 )
	{
		$stage.object[@ボタン_セーブロード_コメント + $i].joypad_up    = @ボタン_セーブロード_サムネイル + $i
		$stage.object[@ボタン_セーブロード_コメント + $i].joypad_down  = @ボタン_セーブロード_ロック + $i
		$stage.object[@ボタン_セーブロード_コメント + $i].joypad_left  = @ボタン_セーブロード_コメント + ($i - 1)
		$stage.object[@ボタン_セーブロード_コメント + $i].joypad_right = @ボタン_セーブロード_コメント + ($i + 1)
		
		// 左端のコメントボタンは右端を設定する
		if( $i == 0 || $i == 5 ) {
			$stage.object[@ボタン_セーブロード_コメント + $i].joypad_left  = @ボタン_セーブロード_コメント + ($i + 4)
		}
		// 右端のコメントボタンは左端を設定する
		elseif( $i == 4 || $i == 9 ) {
			$stage.object[@ボタン_セーブロード_コメント + $i].joypad_right = @ボタン_セーブロード_コメント + ($i - 4)
		}
	}
	
	// ロックボタン
	for( $i = 0, $i < 10, $i += 1 )
	{
		$stage.object[@ボタン_セーブロード_ロック + $i].joypad_up    = @ボタン_セーブロード_コメント + $i
		$stage.object[@ボタン_セーブロード_ロック + $i].joypad_left  = @ボタン_セーブロード_削除 + $i
		$stage.object[@ボタン_セーブロード_ロック + $i].joypad_right = @ボタン_セーブロード_入れ替え + $i
		
		// 上段は↓にページボタンを設定する
		if( $i < 5 ) {
			$stage.object[@ボタン_セーブロード_ロック + $i].joypad_down = @ボタン_セーブロード_サムネイル + ($i + 5)
		}
		// 下段は↓にヘルプボタンを設定する
		elseif( $i >= 5 ) {
			$stage.object[@ボタン_セーブロード_ロック + $i].joypad_down = @ボタン_フッター_セーブ
		}
	}
	
	// 入れ替えボタン
	for( $i = 0, $i < 10, $i += 1 )
	{
		$stage.object[@ボタン_セーブロード_入れ替え + $i].joypad_up    = @ボタン_セーブロード_コメント + $i
		$stage.object[@ボタン_セーブロード_入れ替え + $i].joypad_left  = @ボタン_セーブロード_ロック + $i
		$stage.object[@ボタン_セーブロード_入れ替え + $i].joypad_right = @ボタン_セーブロード_削除 + $i
		
		// 上段は↓にページボタンを設定する
		if( $i < 5 ) {
			$stage.object[@ボタン_セーブロード_入れ替え + $i].joypad_down = @ボタン_セーブロード_サムネイル + ($i + 5)
		}
		// 下段は↓にヘルプボタンを設定する
		elseif( $i >= 5 ) {
			$stage.object[@ボタン_セーブロード_入れ替え + $i].joypad_down = @ボタン_フッター_セーブ
		}
	}
	
	// 削除ボタン
	for( $i = 0, $i < 10, $i += 1 )
	{
		$stage.object[@ボタン_セーブロード_削除 + $i].joypad_up    = @ボタン_セーブロード_コメント + $i
		$stage.object[@ボタン_セーブロード_削除 + $i].joypad_left  = @ボタン_セーブロード_入れ替え + $i
		$stage.object[@ボタン_セーブロード_削除 + $i].joypad_right = @ボタン_セーブロード_ロック + $i
		
		// 上段は↓にページボタンを設定する
		if( $i < 5 ) {
			$stage.object[@ボタン_セーブロード_削除 + $i].joypad_down = @ボタン_セーブロード_サムネイル + ($i + 5)
		}
		// 下段は↓にヘルプボタンを設定する
		elseif( $i >= 5 ) {
			$stage.object[@ボタン_セーブロード_削除 + $i].joypad_down = @ボタン_フッター_セーブ
		}
	}
	
	// ページボタン
	for( $i = 0, $i < 20, $i += 1 )
	{
		// 各ページボタンの←→に隣接するページボタン、↑にフッター、↓にサムネイルを設定する
		$stage.object[@ボタン_セーブロード_ページ + $i].joypad_up    = @ボタン_フッター_ロード
		$stage.object[@ボタン_セーブロード_ページ + $i].joypad_down  = @ボタン_セーブロード_サムネイル + 0
		$stage.object[@ボタン_セーブロード_ページ + $i].joypad_left  = @ボタン_セーブロード_ページ + ($i - 1)
		$stage.object[@ボタン_セーブロード_ページ + $i].joypad_right = @ボタン_セーブロード_ページ + ($i + 1)
		
		// 左端のページボタンは←入力で閉じるボタンにする
		if( $i == 0 ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].joypad_left  = @ボタン_セーブロード_ＮＥＷページ
		}
		
		// 右端のページボタンは→入力でオートページボタンにする
		if( $i == 19 ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].joypad_right = @ボタン_セーブロード_オートページ
		}
	}
	
	$stage.object[@ボタン_セーブロード_前のタブ].joypad_up    = @ボタン_フッター_ロード
	$stage.object[@ボタン_セーブロード_前のタブ].joypad_down  = @ボタン_セーブロード_サムネイル
	$stage.object[@ボタン_セーブロード_前のタブ].joypad_left  = @ボタン_セーブロード_クイックページ
	$stage.object[@ボタン_セーブロード_前のタブ].joypad_right = @ボタン_セーブロード_次のタブ
	
	$stage.object[@ボタン_セーブロード_次のタブ].joypad_up    = @ボタン_フッター_ロード
	$stage.object[@ボタン_セーブロード_次のタブ].joypad_down  = @ボタン_セーブロード_サムネイル
	$stage.object[@ボタン_セーブロード_次のタブ].joypad_left  = @ボタン_セーブロード_前のタブ
	$stage.object[@ボタン_セーブロード_次のタブ].joypad_right = @ボタン_セーブロード_ＮＥＷページ
	
	$stage.object[@ボタン_セーブロード_ＮＥＷページ].joypad_up    = @ボタン_フッター_ロード
	$stage.object[@ボタン_セーブロード_ＮＥＷページ].joypad_down  = @ボタン_セーブロード_サムネイル
	$stage.object[@ボタン_セーブロード_ＮＥＷページ].joypad_left  = @ボタン_セーブロード_次のタブ
	$stage.object[@ボタン_セーブロード_ＮＥＷページ].joypad_right = @ボタン_セーブロード_ページ
	
	$stage.object[@ボタン_セーブロード_オートページ].joypad_up    = @ボタン_フッター_ロード
	$stage.object[@ボタン_セーブロード_オートページ].joypad_down  = @ボタン_セーブロード_サムネイル
	$stage.object[@ボタン_セーブロード_オートページ].joypad_left  = @ボタン_セーブロード_ページ + 19
	$stage.object[@ボタン_セーブロード_オートページ].joypad_right = @ボタン_セーブロード_クイックページ
	
	$stage.object[@ボタン_セーブロード_クイックページ].joypad_up    = @ボタン_フッター_ロード
	$stage.object[@ボタン_セーブロード_クイックページ].joypad_down  = @ボタン_セーブロード_サムネイル
	$stage.object[@ボタン_セーブロード_クイックページ].joypad_left  = @ボタン_セーブロード_オートページ
	$stage.object[@ボタン_セーブロード_クイックページ].joypad_right = @ボタン_セーブロード_前のタブ
	
	$stage.object[@ボタン_フッター_セーブ].joypad_up   = @ボタン_セーブロード_サムネイル + 5
	$stage.object[@ボタン_フッター_セーブ].joypad_down = @ボタン_セーブロード_現在のページ
	
	$stage.object[@ボタン_フッター_ロード].joypad_up   = @ボタン_セーブロード_サムネイル + 5
	$stage.object[@ボタン_フッター_ロード].joypad_down = @ボタン_セーブロード_現在のページ
	
	$stage.object[@ボタン_フッター_コンフィグ].joypad_up   = @ボタン_セーブロード_サムネイル + 5
	$stage.object[@ボタン_フッター_コンフィグ].joypad_down = @ボタン_セーブロード_現在のページ
	
	$stage.object[@ボタン_フッター_レコード].joypad_up   = @ボタン_セーブロード_サムネイル + 5
	$stage.object[@ボタン_フッター_レコード].joypad_down = @ボタン_セーブロード_現在のページ
	
	$stage.object[@ボタン_フッター_タイトルに戻る].joypad_up   = @ボタン_セーブロード_サムネイル + 5
	$stage.object[@ボタン_フッター_タイトルに戻る].joypad_down = @ボタン_セーブロード_現在のページ
	
	$stage.object[@ボタン_フッター_ゲームを終了する].joypad_up   = @ボタン_セーブロード_サムネイル + 5
	$stage.object[@ボタン_フッター_ゲームを終了する].joypad_down = @ボタン_セーブロード_現在のページ
	
	$stage.object[@ボタン_フッター_戻る].joypad_up   = @ボタン_セーブロード_サムネイル + 9
	$stage.object[@ボタン_フッター_戻る].joypad_down = @ボタン_セーブロード_現在のページ
}
