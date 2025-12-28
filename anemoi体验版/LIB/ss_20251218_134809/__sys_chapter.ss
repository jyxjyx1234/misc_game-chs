//===========================================================================
//!
//!    @file     __sys_chapter.ss
//!    @brief    チャプター選択シーン(システム側)
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

	#property	$select_btn		// 選択したボタン
	
	#property	$page_max		// 最大ページ
	#property	$thumb_max		// ページ中の最大サムネイル数
	
	#property	$scenario_list : strlist	// 遷移先のシナリオリスト
	#property	$label_list : intlist		// 遷移先のラベルリスト

#inc_end

//---------------------------------------------------------------------------
// チャプターシーン開始
//---------------------------------------------------------------------------
#z00

$$excall_ready													// システムコールを準備する
$$create_chapter_scene_object(excall.back)						// シーンオブジェクトを作成する
$$set_scene_data(excall.back)									// シーンデータを設定する
$$update_scene_object(excall.back)								// シーンオブジェクトの描画を更新する
$$auto_joypad_navigation(@ボタン_チャプター_閉じる,				// 自動でジョイパッド時のボタン遷移先を設定する
						 @ボタン_チャプター_サムネイル最大)
$$set_chapter_joypad_navigation(excall.back)					// 手動でジョイパッド時のボタン遷移先を設定する
$$set_joypad_focus_button_default(excall.back)					// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$show_chapter_scene_object(excall.back)						// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_チャプター_閉じる
	}
	
	// マウスホイールでページ送りをする
	if    ( mouse.wheel < 0 ) { $$prev_page }
	elseif( mouse.wheel > 0 ) { $$next_page }
	
	// Ｌ１／Ｒ１ボタンでページ送りをする
	// ※ Ｌ１／Ｒ１両方押している処理しないようにする ※
	if( joypad.key[<JOYPAD_L1>].is_down == 0 || joypad.key[<JOYPAD_R1>].is_down == 0 )
	{
		if    ( $$joypad_on_down(<JOYPAD_L1>) ) { $$prev_page }
		elseif( $$joypad_on_down(<JOYPAD_R1>) ) { $$next_page }
	}
	
	// ページボタンが押された場合は現在のページを更新する
	if( @ボタン_チャプター_ページ <= $select_btn && $select_btn <= @ボタン_チャプター_ページ最大 )
	{
		<CHAPTER_PAGE> = $select_btn - @ボタン_チャプター_ページ
		$$rebuild_scene_object(@チャプター_描画更新_ページ切り替え)		// シーンオブジェクトを再構築する
	}
	
	// ジョイパッドで選択されているサムネイルを保存する
	if( @ボタン_チャプター_サムネイル <= $$get_joypad_focus_button && $$get_joypad_focus_button < @ボタン_チャプター_サムネイル最大 ) {
		<CHAPTER_THUMB> = $$get_joypad_focus_button - @ボタン_チャプター_サムネイル
	}
	
	// サムネイルボタンが押された場合はチャプタージャンプを実行する
	if( @ボタン_チャプター_サムネイル <= $select_btn && $select_btn <= @ボタン_チャプター_サムネイル最大 )
	{
		// フェード用のオブジェクトを作成する
		$$set_fade_object(front.object[<OBJ_FADE>], 0, 0, 0)
		
		// チャプター再生中にする
		<CHAPTER_PLAY> = <CHAPTER_PAGE> * $thumb_max + ($select_btn - @ボタン_チャプター_サムネイル + 1)
		
		$$off_system_front_wipe_copy_all					// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
		$$hide_scene_object_in_chapter_jump(excall.front)	// シーンオブジェクトを非表示にする(チャプタージャンプ実行時)
		$$excall_free										// システムコールを解放する
		
		return
	}
	
	// アプリケーション側の処理を更新する
	$$update_chapter_scene_object(excall.front, $select_btn)
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_チャプター_閉じる ) {
		break
	}
	
	// 何も押していないときは画面の更新のみ
	if( $select_btn == -2 )
	{
		input.next		// 入力の更新
		disp			// 画面の更新
	}
}

// タイトルメニューで作成されたチャプター再生用のフェードオブジェクトを非表示にする
if( $select_btn == @ボタン_チャプター_閉じる ) {
	front.object[<OBJ_FADE>].disp = 0
}

$$off_system_front_wipe_copy_all			// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_chapter_scene_object(excall.front)	// シーンオブジェクトを非表示にする
$$excall_free								// システムコールを解放する

return


//---------------------------------------------------------------------------
// チャプター選択シーンの最大サムネイル数を設定する
//---------------------------------------------------------------------------
command $$set_extra_chapter_thumb_max(property $max)
{
	$thumb_max = $max
}

//---------------------------------------------------------------------------
// チャプター選択シーンで遷移するチャプターを設定する
//---------------------------------------------------------------------------
command $$set_extra_chapter(property $page_no, property $thumb_no, property $jump_file : str, property $jump_label)
{
	property $index
	
	// リストのサイズが設定されていない場合はサイズを確保する
	if( $scenario_list.get_size == 0 )
	{
		$scenario_list.resize(<CHAPTER_FLAG_MAX>)
		$label_list.resize(<CHAPTER_FLAG_MAX>)
	}
	
	$index = ($page_no - 1) * $thumb_max + $thumb_no
	
	$scenario_list[$index] = $jump_file
	$label_list[$index]    = $jump_label
}

//---------------------------------------------------------------------------
// シーンデータを設定する
//---------------------------------------------------------------------------
command $$set_scene_data(property $stage : stage)
{
	property $tmp
	
	// ページ最大数を取得する
	$page_max = $$get_system_disp_object_max($stage, @ボタン_チャプター_ページ, @ボタン_チャプター_ページ最大) - @ボタン_チャプター_ページ
	
	// サムネイル最大数を取得する
	$tmp = $thumb_max
	$thumb_max = $$get_system_disp_object_max($stage, @ボタン_チャプター_サムネイル, @ボタン_チャプター_サムネイル最大) - @ボタン_チャプター_サムネイル
	
	// エラーチェック
	if( $tmp != $thumb_max ) {
		@dm("_chapter.ss → $$set_scene_data\n$$set_extra_chapter_listで定義されたサムネイル最大数とシステム画面出力で出力したサムネイル最大数に違いがあります。\n$$set_extra_chapter_list : " + math.tostr($tmp) + "\nシステム画面出力 : " + math.tostr($thumb_max) + "\nチャプタージャンプが正しい動作をしない可能性があります。")
	}
}

//---------------------------------------------------------------------------
// 前のページへ戻る
//---------------------------------------------------------------------------
command $$prev_page
{
	<CHAPTER_PAGE> -= 1
	if( <CHAPTER_PAGE> < 0 ) {
		<CHAPTER_PAGE> = $page_max - 1
	}
	
	// システム決定音を再生する
	se.play_by_se_no(<BUTTON_SE_CHANGE_PAGE>)
	
	// シーンオブジェクトを再構築する
	$$rebuild_scene_object(@チャプター_描画更新_ページ切り替え)
}

//---------------------------------------------------------------------------
// 次のページへ進む
//---------------------------------------------------------------------------
command $$next_page
{
	<CHAPTER_PAGE> += 1
	if( <CHAPTER_PAGE> >= $page_max ) {
		<CHAPTER_PAGE> = 0
	}
	
	// システム決定音を再生する
	se.play_by_se_no(<BUTTON_SE_CHANGE_PAGE>)
	
	// シーンオブジェクトを再構築する
	$$rebuild_scene_object(@チャプター_描画更新_ページ切り替え)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	property $filename : str
	
	// ページボタンの更新
	for( $i = 0, $i < $page_max, $i += 1 )
	{
		// 現在のページであれば選択状態／なければ通常状態にする
		if( <CHAPTER_PAGE> == $i ) {
			$stage.object[@ボタン_チャプター_ページ + $i].set_button_state_select
		} else {
			$stage.object[@ボタン_チャプター_ページ + $i].set_button_state_normal
		}
	}
	
	// サムネイルボタンの更新
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		// サムネイルのファイル名を取得
		$filename = $stage.object[@ボタン_チャプター_サムネイル + $i].get_file_name
		$filename = $filename.left_len($filename.len - 2)
		$filename = $filename + math.tostr_zero(<CHAPTER_PAGE> * $thumb_max + ($i + 1), 2)
		
		if( $$exists_g00($filename) ) {
			$stage.object[@ボタン_チャプター_サムネイル + $i].change_file($filename)
		}
		
		if( $scenario_list[<CHAPTER_PAGE> * $thumb_max + $i + 1] != "" && $$get_chapter_flag(<CHAPTER_PAGE> * $thumb_max + $i + 1) ) {
			$stage.object[@ボタン_チャプター_サムネイル + $i].set_button_state_normal
		} else {
			$stage.object[@ボタン_チャプター_サムネイル + $i].set_button_state_disable
		}
	}
}

//---------------------------------------------------------------------------
// シーンオブジェクトを再構築する
//---------------------------------------------------------------------------
command $$rebuild_scene_object(property $redraw_type)
{
	// すべてのシーンオブジェクトを裏画面にコピーする
	$$copy_all_scene_object_to_back
	
	// 裏画面のシーンオブジェクトを更新する
	$$update_scene_object(excall.back)
	
	// 裏画面のジョイパッドで選択中のボタンの描画を更新する
	$$update_joypad_focus_button(excall.back)
	
	// アプリケーション側の処理を更新する
	$$redraw_chapter_scene_object(excall.back, $redraw_type)
	
	// 入力制御を再開始する
	$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 先頭のサムネイルボタンをデフォルトにする
	// チャプターを実行している場合は選択しているチャプター番号を加算する
	$$set_joypad_focus_button(@ボタン_チャプター_サムネイル + <CHAPTER_THUMB>)
}

//---------------------------------------------------------------------------
// チャプター遷移を実行する
//---------------------------------------------------------------------------
command $$execute_chapter_jump(property $charapter_index)
{
	// メニュー画面でのユーザー制御を解除する
	$$menu_control_disabled
	
	// ユーザー制御を可能にする
	$$user_control_enabled
	
	// チャプターモードによって処理を変更する
	// 回想シーン ※セーブ／ロード不可
	if( __CHAPTER_JUMP_MODE )
	{
		// セーブ／ロードを禁止にする
		syscom.set_save_enable_flag(0)
		syscom.set_load_enable_flag(0)
		
		// 遷移先データが存在しない場合はタイトルに戻す
		if( $scenario_list[$charapter_index] == "" ) {
			@dm("_chapter.ss → $$chapter_jump\nチャプターの遷移先が設定されていません。\nチャプター番号 : " + math.tostr($charapter_index) + "\nタイトルへ戻ります。")
			syscom.return_to_menu(0, 0, 0)
		}
		
		// シナリオ遷移
		farcall($scenario_list[$charapter_index], $label_list[$charapter_index])
	}
	
	// シナリオフロー ※指定シナリオから最後まで
	else
	{
		// チャプター再生フラグをオフにする
		<CHAPTER_PLAY> = 0
		
		jump($scenario_list[$charapter_index], $label_list[$charapter_index])
	}
}
