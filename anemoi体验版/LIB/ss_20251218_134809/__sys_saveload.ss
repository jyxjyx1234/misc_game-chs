//===========================================================================
//!
//!    @file     __sys_saveload.ss
//!    @brief    セーブ／ロードシーン(システム側)
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

	// ページの種類
	#replace	<PAGE_MODE_NORMAL>	0		// 通常ページ
	#replace	<PAGE_MODE_AUTO>	1		// オートページ
	#replace	<PAGE_MODE_QUICK>	2		// クイックページ
	#replace	<PAGE_MODE_NEW>		3		// ＮＥＷ
	
	#property	$select_btn					// 選択したボタン
	#property	$dialog_select_btn			// 確認ダイアログで選択されたボタン
	#property	$select_thumb_index			// 選択中のサムネイルインデックス
	#property	$select_save_no				// 選択中のセーブ番号
	
	#property	$mode						// セーブ／ロードモード
	#property	$tab						// 現在のタブ
	#property	$tab_max					// 最大タブ
	#property	$page						// 現在のページ
	#property	$page_max					// 最大ページ
	#property	$page_mode					// ページモード(通常ページ／オートページ／クイックページ／ＮＥＷページ)
	#property	$page_mode_list : intlist	// ページモードの並び順
	#property	$thumb_max					// ページ中の最大サムネイル数
	#property	$auto_page					// オートページ
	#property	$quick_page					// クイックページ
	
	#property	$swap_mode					// データ入れ替えモード
	#property	$swap_src_save_no			// 入れ替え元セーブデータ番号
	#property	$swap_dst_save_no			// 入れ替え先セーブデータ番号
	
	#property	$save_thumbnail_x			// セーブサムネイル座標(x)
	#property	$save_thumbnail_y			// セーブサムネイル座標(y)
	#property	$data_swap_anim_x			// 入れ替えアニメーション座標(x)
	#property	$data_swap_anim_y			// 入れ替えアニメーション座標(y)
	
	// コメント管理
	#replace	<COMMENT_DEFAULT_MOJI_MAX>	16		// デフォルトコメント文字最大数
	#property	$comment_moji_max					// コメント最大文字数
	
	// エディットボックス管理
	#replace	<EDITBOX_INDEX>		0		// 使用するエディットボックス

#inc_end

//---------------------------------------------------------------------------
// セーブロードシーン開始
//---------------------------------------------------------------------------

// セーブ処理
#z00

$mode = @セーブロード_モード_セーブ		// セーブモードにする
goto #z02								// 共通処理へ

// ロード処理
#z01

$mode = @セーブロード_モード_ロード		// ロードモードにする
goto #z02								// 共通処理へ

// 共通処理
#z02

$$excall_ready																					// システムコールを準備する
if    ( $mode == @セーブロード_モード_セーブ ) { $$create_save_scene_object(excall.back) }		// シーンオブジェクトを作成する(セーブ)
elseif( $mode == @セーブロード_モード_ロード ) { $$create_load_scene_object(excall.back) }		// シーンオブジェクトを作成する(ロード)
$$create_saveload_scene_object(excall.back)														// シーンオブジェクトを作成する(セーブ／ロード共通)
$$set_scene_data(excall.back)																	// シーンデータを設定する
$$update_scene_object(excall.back)																// シーンオブジェクトの描画を更新する
$$auto_joypad_navigation(@ボタン_セーブロード_閉じる,											// 自動でジョイパッド時のボタン遷移先を設定する
						 @ボタン_セーブロード_サムネイル最大)
if( __SYSTEM_FOOTER_ENABLE ) {
	$$set_footer_joypad_navigation(excall.back)													// 手動でジョイパッド時のボタン遷移先を設定する(フッター)
}
if    ( $mode == @セーブロード_モード_セーブ ) { $$set_save_joypad_navigation(excall.back) }	// 手動でジョイパッド時のボタン遷移先を設定する(セーブ)
elseif( $mode == @セーブロード_モード_ロード ) { $$set_load_joypad_navigation(excall.back) }	// 手動でジョイパッド時のボタン遷移先を設定する(ロード)
if    ( $mode == @セーブロード_モード_セーブ ) { $$show_save_scene_object(excall.back) }		// シーンオブジェクトを表示する(セーブ)
elseif( $mode == @セーブロード_モード_ロード ) { $$show_load_scene_object(excall.back) }		// シーンオブジェクトを表示する(ロード)

// 入力制御を開始する
$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)

while( 1 )
{
	#ifdef @TRIAL
	#else
	
	b[0] = $auto_page
	b[1] = $quick_page
	b[2] = $tab
	b[3] = $page
	b[4] = $page_mode
	
	#endif
	
	// 入力制御を更新する
	$select_btn = $$input_update(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
	
	// キャンセルの場合
	if( $select_btn == -1 )
	{
		se.play_by_se_no(<BUTTON_SE_CANCEL>)
		
		// データ入れ替えモード時はモードをオフにする
		if( $swap_mode )
		{
			$$swap_mode_off(0)
			
			// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
			if( syscom.check_joypad_mode )
			{
				// フォーカスされている入れ替えボタンの表示を通常に戻す
				$$reset_joypad_focus_button(excall.front)
			}
			
			// ボタンの選択状態をリセットして入力制御を開始する
			$select_btn = -2
			$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
		}
		
		// 閉じるボタンとして処理する
		else
		{
			$select_btn = @ボタン_セーブロード_閉じる
		}
	}
	
	// マウスホイールでページ送りをする
	if    ( mouse.wheel < 0 ) { $$prev_page }
	elseif( mouse.wheel > 0 ) { $$next_page }
	
	// ゲームパッドのキー入力の場合
	if    ( $select_btn == @動作_セーブロード_ページを戻す )   { $$prev_page }
	elseif( $select_btn == @動作_セーブロード_ページを進める ) { $$next_page }
	
	// Ｌ１／Ｒ１ボタンでページ送りをする
	// ※ Ｌ１／Ｒ１両方押している処理しないようにする ※
	if( joypad.key[<JOYPAD_L1>].is_down == 0 || joypad.key[<JOYPAD_R1>].is_down == 0 )
	{
		if    ( $$joypad_on_down(<JOYPAD_L1>) ) { $$prev_page }
		elseif( $$joypad_on_down(<JOYPAD_R1>) ) { $$next_page }
	}
	
	// ページボタンが押された場合は現在のページを更新する
	if( @ボタン_セーブロード_ページ <= $select_btn && $select_btn < @ボタン_セーブロード_ページ最大 )
	{
		$page_mode = $$get_page_mode_index(<PAGE_MODE_NORMAL>)			// ページモードを設定する
		$page = $select_btn - @ボタン_セーブロード_ページ				// 現在のページを設定する
		$$save_saveload_page											// セーブロードページを保存する
		$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)	// シーンオブジェクトを再構築する
	}
	
	// オートページボタンが押された場合は現在のページを更新する
	if( $select_btn == @ボタン_セーブロード_オートページ )
	{
		$page_mode = $$get_page_mode_index(<PAGE_MODE_AUTO>)			// ページモードを設定する
		$tab = 0														// 現在のタブを設定する
		$page = $auto_page												// 現在のページを設定する
		$$save_saveload_page											// セーブロードページを保存する
		$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)	// シーンオブジェクトを再構築する
	}
	
	// クイックページボタンが押された場合は現在のページを更新する
	if( $select_btn == @ボタン_セーブロード_クイックページ )
	{
		$page_mode = $$get_page_mode_index(<PAGE_MODE_QUICK>)			// ページモードを設定する
		$tab = 0														// 現在のタブを設定する
		$page = $quick_page												// 現在のページを設定する
		$$save_saveload_page											// セーブロードページを保存する
		$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)	// シーンオブジェクトを再構築する
	}
	
	// ＮＥＷページボタンが押された場合は現在のページを更新する
	if( $select_btn == @ボタン_セーブロード_ＮＥＷページ )
	{
		$page_mode = $$get_page_mode_index(<PAGE_MODE_NORMAL>)			// ページモードを設定する
		$tab  = $$get_new_tab											// 現在のタブを設定する
		$page = $$get_new_page											// 現在のページを設定する
		$$save_saveload_page											// セーブロードページを保存する
		$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)	// シーンオブジェクトを再構築する
	}
	
	// 前のタブボタンが押された場合は現在のページを更新する
	if( $select_btn == @ボタン_セーブロード_前のタブ )
	{
		$$prev_tab														// 現在のページを設定する
		$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)	// シーンオブジェクトを再構築する
	}
	
	// 次のタブボタンが押された場合は現在のページを更新する
	if( $select_btn == @ボタン_セーブロード_次のタブ )
	{
		$$next_tab														// 現在のページを設定する
		$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)	// シーンオブジェクトを再構築する
	}
	
	// サムネイルボタンが押された場合
	if( @ボタン_セーブロード_サムネイル <= $select_btn && $select_btn < @ボタン_セーブロード_サムネイル最大 )
	{
		// データ入れ替えモードがオンの場合はデータ入れ替え処理を行う
		if( $swap_mode )
		{
			$swap_dst_save_no = $$get_save_no($select_btn - @ボタン_セーブロード_サムネイル)
			
			// 確認ダイアログを呼び出す
			if( $$call_saveload_swap_yesno_dialog(@確認ダイアログ_モード_セーブデータ入れ替え, $swap_src_save_no, $swap_dst_save_no) )
			{
				$$swap_mode_off(1)
			}
			else
			{
				$$swap_mode_off(0)
			}
			
			$$set_joypad_focus_button($select_btn)		// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
			$$update_joypad_focus_button(excall.front)	// 場合は選択されたボタンの描画を更新する
			
			// ボタンの選択状態をリセットして入力制御を開始する
			$select_btn = -2
			$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
			
			continue
		}
		
		// オートページへのセーブの場合は禁止する
		if( $mode == @セーブロード_モード_セーブ && $page == @ボタン_セーブロード_オートページ )
		{
			se.play_by_se_no(<BUTTON_SE_WARNING>)						// ボタン効果音を再生する
			$$call_ok_dialog(@確認ダイアログ_モード_オートセーブ上書き)	// ＯＫダイアログを呼び出す
			$$set_joypad_focus_button($select_btn)						// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
			
			// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
			if( syscom.check_joypad_mode == 0 ) {
				$$update_joypad_focus_button(excall.front)
			}
			
			// ボタンの選択状態をリセットして入力制御を開始する
			$select_btn = -2
			$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
			
			continue
		}
		
		// 選択中のサムネイルインデックスを保存する
		$select_thumb_index = $select_btn - @ボタン_セーブロード_サムネイル
		
		// 選択中のセーブ番号を保存する
		switch( $page ) {
		case($auto_page)		$select_save_no = $$get_auto_save_no($select_thumb_index)
		case($quick_page)		$select_save_no = $$get_quick_save_no($select_thumb_index)
		default					$select_save_no = $$get_save_no($select_thumb_index)
		}
		
		// セーブ／ロード専用ダイアログが有効な場合は専用ダイアログを表示する
		if( __SAVELOAD_DIALOG_SCENE == 1 && syscom.get_save_exist($select_save_no) == 1 )
		{
			// ボタン効果音を再生する
			se.play_by_se_no(<BUTTON_SE_DECIDE>)
			
			// 確認ダイアログを呼び出す
			$dialog_select_btn = $$call_saveload_dialog($select_save_no)
			
			// データ削除が選択された場合はサムネイルオブジェクトの画像を解放してからデータの削除を行う
			if( $dialog_select_btn == @ボタン_セーブロード_ダイアログ_削除 )
			{
				excall.front.object[@ボタン_セーブロード_サムネイル + $select_thumb_index].child[@セーブロード_サムネイル_セーブ画像].free
				syscom.delete_save($select_save_no)
			}
		}
		
		else
		{
			// セーブ処理
			if ( $mode == @セーブロード_モード_セーブ )
			{
				// セーブデータが存在していない場合
				if( syscom.get_save_exist($select_save_no) == 0 )
				{
					// 確認ダイアログが表示される場合は効果音を再生する
					if( <YESNO_DIALOG_SAVE> == 0 ) {
						se.play_by_se_no(<BUTTON_SE_DECIDE>)
					}
					
					// 確認ダイアログを呼び出す
					if( $$call_saveload_yesno_dialog(@確認ダイアログ_モード_セーブ, $select_save_no) )
					{
						// システムメッセージを表示する
						$$show_system_message(excall.front, @セーブロード_メッセージ_セーブ中, 500)
						
						$$set_joypad_focus_button($select_btn)						// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
						$$rebuild_scene_object(@セーブロード_描画更新_セーブ実行)	// シーンオブジェクトを再構築する
						
						$$show_system_message(excall.front, @セーブロード_メッセージ_セーブ完了, 750)
						
						// システムメッセージを非表示にする
						$$hide_system_message(excall.front)
					}
				}
				
				// セーブデータが存在している場合
				else
				{
					// 確認ダイアログが表示される場合は効果音を再生する
					if( <YESNO_DIALOG_OVERWRITE_SAVE> == 0 ) {
						se.play_by_se_no(<BUTTON_SE_DECIDE>)
					}
					
					// 確認ダイアログを呼び出す
					if( $$call_saveload_yesno_dialog(@確認ダイアログ_モード_上書きセーブ, $select_save_no) )
					{
						// システムメッセージを表示する
						$$show_system_message(excall.front, @セーブロード_メッセージ_セーブ中, 500)
						
						$$set_joypad_focus_button($select_btn)						// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
						$$rebuild_scene_object(@セーブロード_描画更新_セーブ実行)	// シーンオブジェクトを再構築する
						
						$$show_system_message(excall.front, @セーブロード_メッセージ_セーブ完了, 750)
						
						// システムメッセージを非表示にする
						$$hide_system_message(excall.front)
					}
				}
			}
			
			// ロード処理
			elseif ( $mode == @セーブロード_モード_ロード )
			{
				// セーブデータが存在している場合
				if( syscom.get_save_exist($select_save_no) == 1 )
				{
					// 確認ダイアログが表示される場合は効果音を再生する
					if( <YESNO_DIALOG_LOAD> == 0 ) {
						se.play_by_se_no(<BUTTON_SE_DECIDE>)
					}
					
					// 確認ダイアログを呼び出す
					$$call_saveload_yesno_dialog(@確認ダイアログ_モード_ロード, $select_save_no)
				}
			}
		}
		
		$$set_joypad_focus_button($select_btn)						// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
		$$rebuild_scene_object(@セーブロード_描画更新_セーブ実行)	// シーンオブジェクトを再構築する
	}
	
	// コメントボタンが押された場合はコメント編集を実行する
	if( @ボタン_セーブロード_コメント <= $select_btn && $select_btn < @ボタン_セーブロード_コメント最大 )
	{
		$$push_comment_button($select_btn - @ボタン_セーブロード_コメント)
	}
	
	// ロックボタンが押された場合はロック反転を実行する
	if( @ボタン_セーブロード_ロック <= $select_btn && $select_btn < @ボタン_セーブロード_ロック最大 )
	{
		$$push_lock_button($select_btn - @ボタン_セーブロード_ロック)
	}
	
	// 入れ替えボタンが押された場合はデータ入れ替えを実行する
	if( @ボタン_セーブロード_入れ替え <= $select_btn && $select_btn < @ボタン_セーブロード_入れ替え最大 )
	{
		$$push_swap_button($select_btn - @ボタン_セーブロード_入れ替え)
	}
	
	// 削除ボタンが押された場合はデータ削除を実行する
	if( @ボタン_セーブロード_削除 <= $select_btn && $select_btn < @ボタン_セーブロード_削除最大 )
	{
		$$push_delete_button($select_btn - @ボタン_セーブロード_削除)
	}
	
	// ヘルプボタンが押された場合はヘルプを表示する
	if( $select_btn == @ボタン_セーブロード_ヘルプ )
	{
		$$push_help_button
	}
	
	// フッターの入力処理を更新する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		// 入れ替えモード時にフッターボタンを押した場合は入れ替えモードをオフにする
		if( $swap_mode )
		{
			if( @ボタン_フッター_セーブ <= $select_btn && $select_btn <= @ボタン_フッター_戻る )
			{
				$$swap_mode_off(0)
			}
		}
		
		if( $mode == @セーブロード_モード_セーブ )
		{
			$select_btn = $$update_footer_input(excall.front, $select_btn, @ボタン_フッター_セーブ)
		}
		elseif( $mode == @セーブロード_モード_ロード )
		{
			$select_btn = $$update_footer_input(excall.front, $select_btn, @ボタン_フッター_ロード)
		}
		
		// 戻るボタンが押された場合は終了する
		if( $select_btn == @ボタン_フッター_戻る )
		{
			$select_btn = @ボタン_セーブロード_閉じる
			break
		}
		
		// 画面遷移ボタンが押された場合はそれぞれの画面遷移へ
		if( $select_btn == @ボタン_フッター_セーブ || $select_btn == @ボタン_フッター_ロード || $select_btn == @ボタン_フッター_コンフィグ || $select_btn == @ボタン_フッター_レコード )
		{
			// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
			$$off_system_front_wipe_copy_all
			
			// それぞれの処理を行う
			switch( $select_btn ) {
			case(@ボタン_フッター_セーブ)			jump(__sys_saveload, 0)				// セーブ画面へ
			case(@ボタン_フッター_ロード)			jump(__sys_saveload, 1)				// ロード画面へ
			case(@ボタン_フッター_コンフィグ)		jump(__sys_config_mode_select, 0)	// コンフィグ画面へ
			case(@ボタン_フッター_レコード)			jump(__sys_record, 0)				// レコード画面へ
			}
		}
	}
	
	// アプリケーション側の処理を更新する
	if    ( $mode == @セーブロード_モード_セーブ ) { $$update_save_scene_object(excall.front, $select_btn) }
	elseif( $mode == @セーブロード_モード_ロード ) { $$update_load_scene_object(excall.front, $select_btn) }
	
	// 閉じるボタンが押された場合は処理を終了する
	if( $select_btn == @ボタン_セーブロード_閉じる ) {
		break
	}
	
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

// サイドバーが有効の場合は更新する
if( <SIDEBAR_MODE> && <TABLET_MODE> == <TABLET_MODE_OFF> ) {
	$$update_sidebar_object(front.object[<OBJ_SIDEBAR>])
}

$$off_system_front_wipe_copy_all															// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
if    ( $mode == @セーブロード_モード_セーブ ) { $$hide_save_scene_object(excall.front) }	// シーンオブジェクトを非表示にする(セーブ)
elseif( $mode == @セーブロード_モード_ロード ) { $$hide_load_scene_object(excall.front) }	// シーンオブジェクトを非表示にする(ロード)
$$excall_free																				// システムコールを解放する

return


//---------------------------------------------------------------------------
// シーンデータを設定する
//---------------------------------------------------------------------------
command $$set_scene_data(property $stage : stage)
{
	property $i
	
	// ページモードを設定する
	$page_mode = 0
	$page_mode_list.resize(1)
	$page_mode_list[0] = <PAGE_MODE_NORMAL>
	
	// オートページが存在している場合はページモードに追加する
	if( $stage.object[@ボタン_セーブロード_オートページ].f.get_size )
	{
		$page_mode_list.resize($page_mode_list.get_size + 1)
		$page_mode_list[$page_mode_list.get_size - 1] = <PAGE_MODE_AUTO>
	}
	
	// クイックページが存在している場合はページモードに追加する
	if( $stage.object[@ボタン_セーブロード_クイックページ].f.get_size )
	{
		$page_mode_list.resize($page_mode_list.get_size + 1)
		$page_mode_list[$page_mode_list.get_size - 1] = <PAGE_MODE_QUICK>
	}
	
	// ページ最大数を取得する
	$page_max = $$get_system_disp_object_max($stage, @ボタン_セーブロード_ページ, @ボタン_セーブロード_ページ最大) - @ボタン_セーブロード_ページ
	
	// サムネイル最大数を取得する
	$thumb_max = $$get_system_disp_object_max($stage, @ボタン_セーブロード_サムネイル, @ボタン_セーブロード_サムネイル最大) - @ボタン_セーブロード_サムネイル
	
	// タブ最大数を取得する
	$tab_max = (syscom.get_save_cnt - __AUTO_SAVE_CNT) / ($page_max * $thumb_max)
	
	// オートページインデックスを取得する
	$auto_page = (syscom.get_save_cnt - __AUTO_SAVE_CNT) / $thumb_max
	
	// クイックページインデックスを取得する
	$quick_page = syscom.get_save_cnt / $thumb_max
	
	// セーデータページを設定する
	if( @キネティックシステム )
	{
		// キネティックシステムは最新のセーブデータページをデフォルトのページにする
		$tab  = 0
		$page = $$get_new_page
	}
	else
	{
		// セーブロードページからタブ／ページインデックスを取得する
		if( <SAVELOAD_PAGE> == $auto_page )
		{
			$page_mode = $$get_page_mode_index(<PAGE_MODE_AUTO>)
			$tab = 0
			$page = $auto_page
		}
		elseif( <SAVELOAD_PAGE> == $quick_page )
		{
			$page_mode = $$get_page_mode_index(<PAGE_MODE_QUICK>)
			$tab = 0
			$page = $quick_page
		}
		else
		{
			$page_mode = $$get_page_mode_index(<PAGE_MODE_NORMAL>)
			$tab  = <SAVELOAD_PAGE> / $page_max
			$page = <SAVELOAD_PAGE> % $page_max
		}
	}
	
	// データ入れ替えモードを初期化する
	$swap_mode = 0
	
	// セーブサムネイルの座標を保存する
	$save_thumbnail_x = $stage.object[@ボタン_セーブロード_サムネイル].child[@セーブロード_サムネイル_セーブ画像].x
	$save_thumbnail_y = $stage.object[@ボタン_セーブロード_サムネイル].child[@セーブロード_サムネイル_セーブ画像].y
	
	// デフォルトコメント文字最大数を設定する
	$comment_moji_max = <COMMENT_DEFAULT_MOJI_MAX>
	
	// データ入れ替えのベース背景が設定されている場合はパターン番号管理用フラグを設定する
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		if( $stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_ベース].disp )
		{
			$stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_ベース].f.resize(1)
			$stage.object[@ボタン_セーブロード_サムネイル + $i].child[@セーブロード_サムネイル_ベース].f[0] = 0
		}
	}
	
	// データ入れ替えアニメが設定されている場合は非表示にしてレイヤー値を上げる
	if( $stage.object[@アニメ_セーブロード_データ入れ替え].disp )
	{
		$data_swap_anim_x = $stage.object[@アニメ_セーブロード_データ入れ替え].x - $stage.object[@ボタン_セーブロード_サムネイル].x
		$data_swap_anim_y = $stage.object[@アニメ_セーブロード_データ入れ替え].y - $stage.object[@ボタン_セーブロード_サムネイル].y
		
		$$set_image_center_rep($stage.object[@アニメ_セーブロード_データ入れ替え])
		
		$stage.object[@アニメ_セーブロード_データ入れ替え].tr = 0
		$stage.object[@アニメ_セーブロード_データ入れ替え].layer += 1
	}
	
	// システムメッセージが設定されている場合は非表示にしてレイヤー値を上げる
	if( $stage.object[@イメージ_セーブロード_システムメッセージ].disp )
	{
		$stage.object[@イメージ_セーブロード_システムメッセージ].disp = 0
		$stage.object[@イメージ_セーブロード_システムメッセージ].layer += 1
	}
	
	// ヘルプが設定されている場合は非表示にしてレイヤー値を上げる
	if( $stage.object[@イメージ_セーブロード_ヘルプ].disp )
	{
		$stage.object[@イメージ_セーブロード_ヘルプ].disp = 0
		$stage.object[@イメージ_セーブロード_ヘルプ].layer += 1
	}
	
	// 共通フッターオブジェクトを作成する
	if( __SYSTEM_FOOTER_ENABLE )
	{
		if( $mode == @セーブロード_モード_セーブ )
		{
			$$create_save_footer_scene_object($stage)
			$stage.object[@ボタン_フッター_セーブ].set_button_state_select
		}
		elseif( $mode == @セーブロード_モード_ロード )
		{
			$$create_load_footer_scene_object($stage)
			$stage.object[@ボタン_フッター_ロード].set_button_state_select
		}
	}
}

//---------------------------------------------------------------------------
// サムネイルインデックスからセーブ番号を取得する
//---------------------------------------------------------------------------
command $$get_save_no(property $thumb_index) : int
{
	return (($tab * $page_max * $thumb_max) + ($page * $thumb_max) + $thumb_index)
}

//---------------------------------------------------------------------------
// サムネイルインデックスからオートセーブ番号を取得する
//---------------------------------------------------------------------------
command $$get_auto_save_no(property $thumb_index) : int
{
	return ($$get_auto_save_start_no + $thumb_index)
}

//---------------------------------------------------------------------------
// オートセーブ開始番号を取得する
//---------------------------------------------------------------------------
command $$get_auto_save_start_no : int
{
	return (syscom.get_save_cnt - __AUTO_SAVE_CNT)
}

//---------------------------------------------------------------------------
// サムネイルインデックスからクイックセーブ番号を取得する
//---------------------------------------------------------------------------
command $$get_quick_save_no(property $thumb_index) : int
{
	return (syscom.get_save_cnt + $thumb_index)
}

//---------------------------------------------------------------------------
// セーブ／ロードモードを取得する
//---------------------------------------------------------------------------
command $$get_saveload_mode : int
{
	return ($mode)
}

//---------------------------------------------------------------------------
// セーブロードページを保存する
//---------------------------------------------------------------------------
command $$save_saveload_page
{
	switch( $page_mode_list[$page_mode] ) {
	case(<PAGE_MODE_NORMAL>)		<SAVELOAD_PAGE> = $tab * $page_max + $page
	case(<PAGE_MODE_AUTO>)			<SAVELOAD_PAGE> = $auto_page
	case(<PAGE_MODE_QUICK>)			<SAVELOAD_PAGE> = $quick_page
	}
}

//---------------------------------------------------------------------------
// 前のタブへ戻る
//---------------------------------------------------------------------------
command $$prev_tab
{
	if( $page_mode_list[$page_mode] == <PAGE_MODE_NORMAL> )
	{
		$tab -= 1
		if( $tab < 0 ) {
			$tab = $tab_max - 1
		}
	}
	else
	{
		$page_mode = $$get_page_mode_index(<PAGE_MODE_NORMAL>)
		$tab  = $tab_max - 1
		$page = 0
	}
	
	// セーブロードページを保存する
	$$save_saveload_page
}

//---------------------------------------------------------------------------
// 次のタブへ進む
//---------------------------------------------------------------------------
command $$next_tab
{
	if( $page_mode_list[$page_mode] == <PAGE_MODE_NORMAL> )
	{
		$tab += 1
		if( $tab >= $tab_max ) {
			$tab = 0
		}
	}
	else
	{
		$page_mode = $$get_page_mode_index(<PAGE_MODE_NORMAL>)
		$tab  = 0
		$page = 0
	}
	
	// セーブロードページを保存する
	$$save_saveload_page
}

//---------------------------------------------------------------------------
// 最新のセーブタブを取得する
//---------------------------------------------------------------------------
command $$get_new_tab : int
{
	return (syscom.get_save_new_no(0, syscom.get_save_cnt - __AUTO_SAVE_CNT) / $thumb_max / $page_max)
}

//---------------------------------------------------------------------------
// 最新のセーブページを取得する
//---------------------------------------------------------------------------
command $$get_new_page : int
{
	return (syscom.get_save_new_no(0, syscom.get_save_cnt - __AUTO_SAVE_CNT) / $thumb_max % $page_max)
}

//---------------------------------------------------------------------------
// 現在のページを取得する
//---------------------------------------------------------------------------
command $$get_saveload_page_obj_index : int
{
	property $index
	
	switch( $page ) {
	case($auto_page)	$index = @ボタン_セーブロード_オートページ
	case($quick_page)	$index = @ボタン_セーブロード_クイックページ
	default				$index = @ボタン_セーブロード_ページ + $page
	}
	
	return ($index)
}

//---------------------------------------------------------------------------
// 前のページへ戻る
//---------------------------------------------------------------------------
command $$prev_page
{
	if( $page_mode_list[$page_mode] == <PAGE_MODE_NORMAL> )
	{
		$page -= 1
		if( $page < 0 )
		{
			$page_mode -= 1
			if( $page_mode < 0 ) {
				$page_mode = $page_mode_list.get_size - 1
			}
		}
	}
	else
	{
		$page_mode -= 1
		if( $page_mode < 0 ) {
			$page_mode = $page_mode_list.get_size - 1
		}
		
		if( $page_mode_list[$page_mode] == <PAGE_MODE_NORMAL> )
		{
			$page = $page_max - 1
		}
	}
	
	switch( $page_mode_list[$page_mode] ) {
	case(<PAGE_MODE_AUTO>)		$page = $auto_page
	case(<PAGE_MODE_QUICK>)		$page = $quick_page
	case(<PAGE_MODE_NEW>)		$page = $$get_new_page
	}
	
	// セーブロードページを保存する
	$$save_saveload_page
	
	// システム決定音を再生する
	se.play_by_se_no(<BUTTON_SE_CHANGE_PAGE>)
	
	// シーンオブジェクトを再構築する
	$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)
}

//---------------------------------------------------------------------------
// 次のページへ進む
//---------------------------------------------------------------------------
command $$next_page
{
	if( $page_mode_list[$page_mode] == <PAGE_MODE_NORMAL> )
	{
		$page += 1
		if( $page >= $page_max ) {
			$page_mode += 1
			if( $page_mode >= $page_mode_list.get_size ) {
				$page_mode = 0
			}
		}
	}
	else
	{
		$page_mode += 1
		if( $page_mode >= $page_mode_list.get_size ) {
			$page_mode = 0
		}
		
		if( $page_mode_list[$page_mode] == <PAGE_MODE_NORMAL> )
		{
			$page = 0
		}
	}
	
	switch( $page_mode_list[$page_mode] ) {
	case(<PAGE_MODE_AUTO>)		$page = $auto_page
	case(<PAGE_MODE_QUICK>)		$page = $quick_page
	case(<PAGE_MODE_NEW>)		$page = $$get_new_page
	}
	
	// セーブロードページを保存する
	$$save_saveload_page
	
	// システム音を再生する
	se.play_by_se_no(<BUTTON_SE_CHANGE_PAGE>)
	
	// シーンオブジェクトを再構築する
	$$rebuild_scene_object(@セーブロード_描画更新_ページ切り替え)
}

//---------------------------------------------------------------------------
// ページモードリストから指定したページモードのインデックス取得する
//---------------------------------------------------------------------------
command $$get_page_mode_index(property $page_mode_type)
{
	property $i
	property $len
	
	$len = $page_mode_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		if( $page_mode_list[$i] == $page_mode_type )
		{
			return ($i)
		}
	}
	
	return (-1)
}

//---------------------------------------------------------------------------
// セーブコメントを取得する
//---------------------------------------------------------------------------
command $$get_save_comment(property $save_no) : str
{
	property $comment : str
	
	$comment = syscom.get_save_comment($save_no)
	
	// セーブコメントが空の場合はデフォルトコメントを設定する
	if( $comment == "" )
	{
		// セーブデータがロックされている場合
		if( $$get_savedata_lock($save_no) )
		{
			$comment = $$get_default_save_comment_text(@セーブロード_コメントタイプ_ロック)
		}
		
		// それ以外の場合
		else
		{
			$comment = $$get_default_save_comment_text(@セーブロード_コメントタイプ_通常)
		}
	}
	
	return ($comment)
}

//---------------------------------------------------------------------------
// セーブコメントの最大文字数を設定する
//---------------------------------------------------------------------------
command $$set_save_comment_moji_max(property $max)
{
	$comment_moji_max = $max
}

//---------------------------------------------------------------------------
// コメントボタンが押された
//---------------------------------------------------------------------------
command $$push_comment_button(property $thumb_index)
{
	property $editbox_x
	property $editbox_y
	property $editbox_w
	property $editbox_h
	property $editbox_moji_size
	property $tmp : str
	property $input
	
	// テキストを非表示にする
	excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].disp = 0
	
	// エディットボックスの設定を取得する
	$editbox_x = excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].x
	$editbox_y = excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].y
	$editbox_w = excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].f_text_width
	$editbox_h = excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].f_text_height
	$editbox_moji_size = excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].f_font_size
	
	// エディットボックスを作成する
	editbox[<EDITBOX_INDEX>].create($editbox_x, $editbox_y, $editbox_w, $editbox_h, $editbox_moji_size)
	editbox[<EDITBOX_INDEX>].set_text(syscom.get_save_comment($$get_save_no($thumb_index)))
	editbox[<EDITBOX_INDEX>].set_focus
	
	// 入力を開始する
	input.clear
	while(1)
	{
		// マウス操作の場合
		if( syscom.check_joypad_mode == 0 )
		{
			// エディットボックス範囲外をクリックした場合
			if( $$is_mouse_hit_pos($editbox_x, $editbox_y, $editbox_x + $editbox_w, $editbox_y + $editbox_h) == 0 )
			{
				// 決定キーなら入力を反映する
				if( input.decide.on_down_up ) {
					$input = 1
				}
				
				// キャンセルキーは入力を反映しない
				elseif( input.cancel.on_down_up ) {
					$input = -1
				}
			}
		}
		
		// ゲームパッド操作の場合
		else
		{
			// 決定キーなら入力を反映する
			if( input.decide.on_down ) {
				$input = 1
			}
			
			// キャンセルキーは入力を反映しない
			elseif( input.cancel.on_down ) {
				$input = -1
			}
		}
		
		// エディットボックス／決定
		if( editbox[<EDITBOX_INDEX>].check_decided == 1 ) {
			$input = 1
		}
		
		// エディットボックス／キャンセル
		elseif( editbox[<EDITBOX_INDEX>].check_canceled == 1 ) {
			$input = -1
		}
		
		// エディットボックスの入力をメッセージに反映する
		if( $input == 1 )
		{
			$tmp = editbox[<EDITBOX_INDEX>].get_text
			
			// テキスト中に#がある場合は入力をはじく
			if( $tmp.search("#") != -1 )
			{
				se.play_by_se_no(<BUTTON_SE_WARNING>)
				message_box(" # は入力できません。")
			}
			else
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				
				// 設定した名前／本文の最大文字数に収まるようにする
				if( $tmp.len > $comment_moji_max * 2 ) {
					$tmp = $tmp.left_len($comment_moji_max * 2)
				}
				
				// セーブコメントを保存する
				syscom.set_save_comment($$get_save_no($thumb_index), $tmp)
			}
			
			break
		}
		elseif( $input == -1 )
		{
			// キャンセルされた場合は何もせず終了する
			se.play_by_se_no(<BUTTON_SE_CANCEL>)
			break
		}
		
		input.next		// 入力の更新
		disp			// 画面の更新
	}
	
	// 入力をクリアする
	input.clear
	
	// テキストを表示する
	excall.front.object[@テキスト_セーブロード_コメント + $thumb_index].disp = 1
	
	// コメントの描画を更新する
	$$update_comment_text(excall.front, $thumb_index)
	
	// エディットボックスを終了する
	editbox[<EDITBOX_INDEX>].destroy
}

//---------------------------------------------------------------------------
// ロックボタンが押された
//---------------------------------------------------------------------------
command $$push_lock_button(property $thumb_index)
{
	// セーブデータのロックを反転する
	$$reverse_savedata_lock($$get_save_no($thumb_index))
	
	// セーブ／ロードサムネイルの描画を更新する
	$$update_saveload_thumbnail(excall.front, excall.front.object[@ボタン_セーブロード_サムネイル + $thumb_index], $$get_save_no($thumb_index), $thumb_index)
}

//---------------------------------------------------------------------------
// 入れ替えボタンが押された
//---------------------------------------------------------------------------
command $$push_swap_button(property $thumb_index)
{
	property $i
	
	// データ入れ替えモードをオンにする
	$swap_mode = 1
	
	// 入れ替え元セーブ番号を取得する
	$swap_src_save_no = $$get_save_no($thumb_index)
	
	// セーブ／ロードサムネイルの描画を更新する
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		$$update_saveload_thumbnail(excall.front, excall.front.object[@ボタン_セーブロード_サムネイル + $i], $$get_save_no($i), $i)
	}
	
	// データ入れ替えアニメがある場合は表示する
	if( excall.front.object[@アニメ_セーブロード_データ入れ替え].disp )
	{
		excall.front.object[@アニメ_セーブロード_データ入れ替え].x = excall.front.object[@ボタン_セーブロード_サムネイル + $thumb_index].x + $data_swap_anim_x
		excall.front.object[@アニメ_セーブロード_データ入れ替え].y = excall.front.object[@ボタン_セーブロード_サムネイル + $thumb_index].y + $data_swap_anim_y
		
		excall.front.object[@アニメ_セーブロード_データ入れ替え].tr = 255
		
		if( excall.front.object[@アニメ_セーブロード_データ入れ替え].get_pat_cnt > 1 )
		{
			excall.front.object[@アニメ_セーブロード_データ入れ替え].patno_eve.loop(0, excall.front.object[@アニメ_セーブロード_データ入れ替え].get_pat_cnt, 1000, 0, 0)
		}
	}
	
	// ヘルプテキストの更新
	$$update_help_text(excall.front, 1)
	
	// フォーカスされている入れ替えボタンの表示を通常に戻す
	$$reset_joypad_focus_button(excall.front)
	
	// ジョイパッドで選択中のボタンをサムネイルに変更する
	$$set_joypad_focus_button(@ボタン_セーブロード_サムネイル + $thumb_index)
}

//---------------------------------------------------------------------------
// データ入れ替えモードをオフにする
//---------------------------------------------------------------------------
command $$swap_mode_off(property $swap_flag)
{
	property $i
	
	// データ入れ替えモードをオフにする
	$swap_mode = 0
	
	// データ入れ替えアニメがある場合は非表示にする
	if( excall.front.object[@アニメ_セーブロード_データ入れ替え].disp )
	{
		excall.front.object[@アニメ_セーブロード_データ入れ替え].tr = 0
		excall.front.object[@アニメ_セーブロード_データ入れ替え].patno_eve.end
	}
	
	// セーブ／ロードサムネイルの描画を更新する
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		$$update_saveload_thumbnail(excall.front, excall.front.object[@ボタン_セーブロード_サムネイル + $i], $$get_save_no($i), $i)
	}
	
	// データ入れ替えが発生している場合は描画を更新する
	if( $swap_flag )
	{
		// システムメッセージを表示する
		$$show_system_message(excall.front, @セーブロード_メッセージ_セーブ入れ替え, 750)
		
		// システムメッセージを非表示にする
		$$hide_system_message(excall.front)
	}
	
	// ヘルプテキストの更新
	$$update_help_text(excall.front, 0)
}

//---------------------------------------------------------------------------
// 削除ボタンが押された
//---------------------------------------------------------------------------
command $$push_delete_button(property $thumb_index)
{
	property $i
	
	// 削除ボタンを選択状態にする
	if( syscom.check_joypad_mode == 0 ) {
		excall.front.object[@ボタン_セーブロード_削除 + $thumb_index].set_button_state_select
	}
	
	// 確認ダイアログを呼び出す
	if( $$call_saveload_yesno_dialog(@確認ダイアログ_モード_セーブデータ削除, $$get_save_no($thumb_index)) )
	{
		// セーブ／ロードサムネイルの描画を更新する
		for( $i = 0, $i < $thumb_max, $i += 1 )
		{
			$$update_saveload_thumbnail(excall.front, excall.front.object[@ボタン_セーブロード_サムネイル + $i], $$get_save_no($i), $i)
		}
		
		// システムメッセージを表示する
		$$show_system_message(excall.front, @セーブロード_メッセージ_セーブ削除, 750)
		
		// システムメッセージを非表示にする
		$$hide_system_message(excall.front)
	}
	else
	{
		// 削除ボタンを元に戻す
		excall.front.object[@ボタン_セーブロード_削除 + $thumb_index].set_button_state_normal
	}
	
	$$set_joypad_focus_button(@ボタン_セーブロード_削除 + $thumb_index)	// 選択されたボタンをジョイパッドで選択中のボタンに再設定する
	$$update_joypad_focus_button(excall.front)							// 選択されたボタンの描画を更新する
}

//---------------------------------------------------------------------------
// ヘルプボタンが押された
//---------------------------------------------------------------------------
command $$push_help_button
{
	// ヘルプを表示する
	excall.front.object[@イメージ_セーブロード_ヘルプ].disp = 1
	
	input.clear
	while( 1 )
	{
		// 入力があった場合終了する
		if( input.decide.on_down_up || input.cancel.on_down_up ) {
			break
		}
		
		input.next		// 入力の更新
		disp			// 画面の更新
	}
	
	// ヘルプを非表示にする
	excall.front.object[@イメージ_セーブロード_ヘルプ].disp = 0
}

//---------------------------------------------------------------------------
// 指定したボタンオブジェクトのグループ番号のみを変更する
//---------------------------------------------------------------------------
command $$change_object_btngroup_no(property $obj : object, property $btngroup_no)
{
	$obj.set_button($obj.get_button_no, $btngroup_no, $obj.get_button_action_no, $obj.get_button_se_no)
}

//---------------------------------------------------------------------------
// シーンオブジェクトの描画を更新する
//---------------------------------------------------------------------------
command $$update_scene_object(property $stage : stage)
{
	property $i
	
	// ページボタンの更新
	$$update_saveload_all_page_button($stage)
	
	for( $i = 0, $i < $page_max, $i += 1 )
	{
		// 現在のページであれば選択状態／なければ通常状態にする
		if( $page == $i ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].set_button_state_select
		} else {
			$stage.object[@ボタン_セーブロード_ページ + $i].set_button_state_normal
		}
	}
	
	// オートページボタンの更新
	if( $stage.object[@ボタン_セーブロード_オートページ].disp )
	{
		// オートページであれば選択状態／なければ通常状態にする
		if( $page == $auto_page ) {
			$stage.object[@ボタン_セーブロード_オートページ].set_button_state_select
		} else {
			$stage.object[@ボタン_セーブロード_オートページ].set_button_state_normal
		}
	}
	
	// クイックページボタンの更新
	if( $stage.object[@ボタン_セーブロード_クイックページ].disp )
	{
		// クイックページであれば選択状態／なければ通常状態にする
		if( $page == $quick_page ) {
			$stage.object[@ボタン_セーブロード_クイックページ].set_button_state_select
		} else {
			$stage.object[@ボタン_セーブロード_クイックページ].set_button_state_normal
		}
	}
	
	// ＮＥＷページボタンの更新
	if( $stage.object[@ボタン_セーブロード_ＮＥＷページ].disp )
	{
		// ＮＥＷページであれば選択状態／なければ通常状態にする
		if( $tab == $$get_new_tab && $page == $$get_new_page ) {
			$stage.object[@ボタン_セーブロード_ＮＥＷページ].set_button_state_select
		} else {
			$stage.object[@ボタン_セーブロード_ＮＥＷページ].set_button_state_normal
		}
	}
	
	// サムネイルボタンの更新
	for( $i = 0, $i < $thumb_max, $i += 1 )
	{
		// サムネイルが表示されている場合は描画を更新する
		if( $stage.object[@ボタン_セーブロード_サムネイル + $i].disp ) {
			switch( $page ) {
			case($auto_page)		$$update_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + $i], $$get_auto_save_no($i), $i)
			case($quick_page)		$$update_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + $i], $$get_quick_save_no($i), $i)
			default					$$update_saveload_thumbnail($stage, $stage.object[@ボタン_セーブロード_サムネイル + $i], $$get_save_no($i), $i)
			}
		}
	}
	
	// データ入れ替えアニメがある場合は入れ替えモード／入れ替え元データの存在によって表示／非表示にする
	if( $stage.object[@アニメ_セーブロード_データ入れ替え].disp )
	{
		// データ入れ替えモードがオンの場合は
		if( $swap_mode && $tab == $swap_src_save_no / $thumb_max / $page_max && $page == $swap_src_save_no / $thumb_max % $page_max )
		{
			$stage.object[@アニメ_セーブロード_データ入れ替え].tr = 255
		}
		else
		{
			$stage.object[@アニメ_セーブロード_データ入れ替え].tr = 0
		}
	}
	
	// ヘルプテキストの更新
	$$update_help_text($stage, 0)
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
	if    ( $mode == @セーブロード_モード_セーブ ) { $$redraw_save_scene_object(excall.back, $redraw_type) }
	elseif( $mode == @セーブロード_モード_ロード ) { $$redraw_load_scene_object(excall.back, $redraw_type) }
	
	// 入力制御を再開始する
	$$input_start(excall.front, <OBJBTN_GROUP_NO_EXCALL>)
}

//---------------------------------------------------------------------------
// セーブ／ロードサムネイルを作成する
//---------------------------------------------------------------------------
command $$create_saveload_thumbnail(property $stage : stage, property $obj : object, property $filename : str, property $x, property $y, property $button_no, property $button_group_no, property $button_se_no)
{
	property $i
	property $offset_x
	property $offset_y
	
	// ボタンを作成する
	$$create_ui_button($obj, $filename, $x, $y, $button_no, $button_group_no, $button_se_no)
	
	// サムネイルオブジェクトの数を確保する
	$obj.child.resize(@セーブロード_サムネイル_最大)
	
	// モードによって作成するサムネイルを変更する
	$i = $button_no - @ボタン_セーブロード_サムネイル
	if    ( $mode == @セーブロード_モード_セーブ ) { $$create_save_thumb_object($stage, $obj, $i) }
	elseif( $mode == @セーブロード_モード_ロード ) { $$create_load_thumb_object($stage, $obj, $i) }
	
	// コメント／ロック／入れ替え／削除ボタンが設定されている場合は座標を補正する
	$offset_x = $obj.x - $stage.object[@ボタン_セーブロード_サムネイル].x
	$offset_y = $obj.y - $stage.object[@ボタン_セーブロード_サムネイル].y
	if( $stage.object[@ボタン_セーブロード_入れ替えサムネイル + $i].disp ) {
		$stage.object[@ボタン_セーブロード_入れ替えサムネイル + $i].disp = 0
		$stage.object[@ボタン_セーブロード_入れ替えサムネイル + $i].x += $offset_x
		$stage.object[@ボタン_セーブロード_入れ替えサムネイル + $i].y += $offset_y
	}
	if( $stage.object[@ボタン_セーブロード_コメント + $i].disp ) {
		$stage.object[@ボタン_セーブロード_コメント + $i].x += $offset_x
		$stage.object[@ボタン_セーブロード_コメント + $i].y += $offset_y
	}
	if( $stage.object[@ボタン_セーブロード_ロック + $i].disp ) {
		$stage.object[@ボタン_セーブロード_ロック + $i].x += $offset_x
		$stage.object[@ボタン_セーブロード_ロック + $i].y += $offset_y
	}
	if( $stage.object[@ボタン_セーブロード_入れ替え + $i].disp ) {
		$stage.object[@ボタン_セーブロード_入れ替え + $i].x += $offset_x
		$stage.object[@ボタン_セーブロード_入れ替え + $i].y += $offset_y
	}
	if( $stage.object[@ボタン_セーブロード_削除 + $i].disp ) {
		$stage.object[@ボタン_セーブロード_削除 + $i].x += $offset_x
		$stage.object[@ボタン_セーブロード_削除 + $i].y += $offset_y
	}
	if( $stage.object[@テキスト_セーブロード_コメント + $i].disp ) {
		$stage.object[@テキスト_セーブロード_コメント + $i].x += $offset_x
		$stage.object[@テキスト_セーブロード_コメント + $i].y += $offset_y
	}
	
	// 数値オブジェクトのパラメータを設定する
	$obj.child[@セーブロード_サムネイル_セーブ番号].set_number_param(4, 1, 0, 0, 0, 0)
	if( $obj.child[@セーブロード_サムネイル_日付_年].disp ) { $obj.child[@セーブロード_サムネイル_日付_年].set_number_param(4, 1, 0, 0, 0, 0) }
	if( $obj.child[@セーブロード_サムネイル_日付_月].disp ) { $obj.child[@セーブロード_サムネイル_日付_月].set_number_param(2, 1, 0, 0, 0, 0) }
	if( $obj.child[@セーブロード_サムネイル_日付_日].disp ) { $obj.child[@セーブロード_サムネイル_日付_日].set_number_param(2, 1, 0, 0, 0, 0) }
	if( $obj.child[@セーブロード_サムネイル_日付_時].disp ) { $obj.child[@セーブロード_サムネイル_日付_時].set_number_param(2, 1, 0, 0, 0, 0) }
	if( $obj.child[@セーブロード_サムネイル_日付_分].disp ) { $obj.child[@セーブロード_サムネイル_日付_分].set_number_param(2, 1, 0, 0, 0, 0) }
	
	// 文字列オブジェクトのパラメータを設定する
	if( $obj.child[@セーブロード_サムネイル_日付].disp ) { $obj.child[@セーブロード_サムネイル_日付].set_string_param($obj.child[@セーブロード_サムネイル_日付].f_font_size, 0, 0, 0, 0, 1, 0) }
	if( $obj.child[@セーブロード_サムネイル_時間].disp ) { $obj.child[@セーブロード_サムネイル_時間].set_string_param($obj.child[@セーブロード_サムネイル_時間].f_font_size, 0, 0, 0, 0, 1, 0) }
	
	// 親オブジェクトから各サムネイルオブジェクトの座標を補正する
	for( $i = 0, $i < $obj.child.get_size, $i += 1 )
	{
		if( $obj.child[$i].disp ) {
			$obj.child[$i].x -= $stage.object[@ボタン_セーブロード_サムネイル].x
			$obj.child[$i].y -= $stage.object[@ボタン_セーブロード_サムネイル].y
		}
	}
	
	// フレームアクションの実行
	$obj.frame_action.start(-1, "$$fa_saveload_thumbnail", $button_no - @ボタン_セーブロード_サムネイル)
}

//---------------------------------------------------------------------------
// セーブ／ロードサムネイルのフレームアクション
//---------------------------------------------------------------------------
command $$fa_saveload_thumbnail(property $fa : frameaction, property $obj : object, property $index)
{
	// ベース／ベース入れ替えが存在している場合はボタン状態に追従する
	if( $obj.child[@セーブロード_サムネイル_ベース].disp )
	{
		$obj.child[@セーブロード_サムネイル_ベース].patno = $obj.child[@セーブロード_サムネイル_ベース].f[0] + $obj.get_button_hit_state
		
		if( syscom.check_joypad_mode == 1 && $$get_joypad_focus_button == @ボタン_セーブロード_サムネイル + $index ) {
			$obj.child[@セーブロード_サムネイル_ベース].patno += 5
		}
		
		if( syscom.get_save_exist($$get_save_no($index)) == 0 || $$get_savedata_lock($$get_save_no($index)) ) {
			
			$obj.child[@セーブロード_サムネイル_ベース].patno += 10
		}
	}
	
	// 操作によってサムネイルの状態を変更する
	if( syscom.check_joypad_mode == 1 )
	{
		// ゲームパッドでサムネイルを選択中
		if( $obj.get_button_no == $$get_joypad_focus_button )
		{
			// ゲームパッドでサムネイルを決定
			if( $$get_joypad_decided )
			{
				$obj.child[@セーブロード_サムネイル_空画像].bright = __SAVELOAD_THUMB_JOYPAD_PUSHED_BR
				$obj.child[@セーブロード_サムネイル_セーブ画像].bright = __SAVELOAD_THUMB_JOYPAD_PUSHED_BR
				$obj.child[@セーブロード_サムネイル_フレーム].patno = 4
				
				return
			}
			else
			{
				$obj.child[@セーブロード_サムネイル_空画像].bright = __SAVELOAD_THUMB_JOYPAD_HIT_BR
				$obj.child[@セーブロード_サムネイル_セーブ画像].bright = __SAVELOAD_THUMB_JOYPAD_HIT_BR
				$obj.child[@セーブロード_サムネイル_フレーム].patno = 3
				
				return
			}
		}
	}
	else
	{
		// マウスでサムネイルを選択中
		if( $obj.get_button_no == $$get_hit_btn )
		{
			$obj.child[@セーブロード_サムネイル_空画像].bright = __SAVELOAD_THUMB_HIT_BR
			$obj.child[@セーブロード_サムネイル_セーブ画像].bright = __SAVELOAD_THUMB_HIT_BR
			$obj.child[@セーブロード_サムネイル_フレーム].patno = 1
			
			return
		}
		
		// マウスでサムネイルを決定
		elseif( $obj.get_button_no == $$get_pushed_btn )
		{
			$obj.child[@セーブロード_サムネイル_空画像].bright = __SAVELOAD_THUMB_PUSHED_BR
			$obj.child[@セーブロード_サムネイル_セーブ画像].bright = __SAVELOAD_THUMB_PUSHED_BR
			$obj.child[@セーブロード_サムネイル_フレーム].patno = 1
			
			return
		}
	}
	
	// それ以外の場合は通常状態に戻す
	$obj.child[@セーブロード_サムネイル_空画像].bright = 0
	$obj.child[@セーブロード_サムネイル_セーブ画像].bright = 0
	$obj.child[@セーブロード_サムネイル_フレーム].patno = 0
}

//---------------------------------------------------------------------------
// セーブ／ロードサムネイルの描画を更新する
//---------------------------------------------------------------------------
command $$update_saveload_thumbnail(property $stage : stage, property $obj : object, property $save_no, property $index)
{
	property $new_save_no
	
	$obj.set_button_state_normal
	
	switch( $page ) {
	case($auto_page)	$obj.child[@セーブロード_サムネイル_セーブ番号].set_number($save_no - $$get_auto_save_start_no + 1)
	case($quick_page)	$obj.child[@セーブロード_サムネイル_セーブ番号].set_number($save_no - syscom.get_save_cnt + 1)
	default				$obj.child[@セーブロード_サムネイル_セーブ番号].set_number($save_no + 1)
	}
	
	// セーブサムネイルを作成する
	if( syscom.get_save_exist($save_no) )
	{
		$obj.child[@セーブロード_サムネイル_空画像].disp = 0
		
		$obj.child[@セーブロード_サムネイル_セーブ画像].create_save_thumb($save_no, 1, $save_thumbnail_x, $save_thumbnail_y)
		$obj.child[@セーブロード_サムネイル_セーブ画像].wipe_copy = 1
		$obj.child[@セーブロード_サムネイル_セーブ画像].set_scale(__SAVELOAD_THUMB_SCALE, __SAVELOAD_THUMB_SCALE)
		
		if( $obj.child[@セーブロード_サムネイル_日付_年].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_年].set_number(syscom.get_save_year($save_no))
			$obj.child[@セーブロード_サムネイル_日付_年].disp = 1
		}
		if( $obj.child[@セーブロード_サムネイル_日付_月].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_月].set_number(syscom.get_save_month($save_no))
			$obj.child[@セーブロード_サムネイル_日付_月].disp = 1
		}
		if( $obj.child[@セーブロード_サムネイル_日付_日].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_日].set_number(syscom.get_save_day($save_no))
			$obj.child[@セーブロード_サムネイル_日付_日].disp = 1
		}
		if( $obj.child[@セーブロード_サムネイル_日付_時].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_時].set_number(syscom.get_save_hour($save_no))
			$obj.child[@セーブロード_サムネイル_日付_時].disp = 1
		}
		if( $obj.child[@セーブロード_サムネイル_日付_分].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_分].set_number(syscom.get_save_minute($save_no))
			$obj.child[@セーブロード_サムネイル_日付_分].disp = 1
		}
		if( $obj.child[@セーブロード_サムネイル_日付].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付].set_string($$get_savedata_date_str($save_no))
			$obj.child[@セーブロード_サムネイル_日付].disp = 1
		}
		if( $obj.child[@セーブロード_サムネイル_時間].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_時間].set_string($$get_savedata_time_str($save_no))
			$obj.child[@セーブロード_サムネイル_時間].disp = 1
		}
		
		$$update_ui_string($obj.child[@セーブロード_サムネイル_セーブタイトル],   syscom.get_save_title($save_no))
		$$update_ui_string($obj.child[@セーブロード_サムネイル_セーブメッセージ], syscom.get_save_message($save_no))
		$obj.child[@セーブロード_サムネイル_セーブタイトル].disp   = 1
		$obj.child[@セーブロード_サムネイル_セーブメッセージ].disp = 1
		
		switch( $page ) {
		case($auto_page)		$new_save_no = syscom.get_save_new_no(syscom.get_save_cnt - __AUTO_SAVE_CNT, syscom.get_save_cnt)
		case($quick_page)		$new_save_no = syscom.get_save_cnt + syscom.get_quick_save_new_no
		default					$new_save_no = syscom.get_save_new_no(0, syscom.get_save_cnt - __AUTO_SAVE_CNT)
		}
		
		if( $new_save_no == $save_no ) {
			$obj.child[@セーブロード_サムネイル_ＮＥＷ].disp = 1
		} else {
			$obj.child[@セーブロード_サムネイル_ＮＥＷ].disp = 0
		}
		
		if( $mode == @セーブロード_モード_セーブ && $$get_savedata_lock($save_no) ) {
			$obj.set_button_state_disable
		}
		
		// データ入れ替えモード／データ入れ替え元の場合は選択不可状態にする
		if( $swap_mode && $swap_src_save_no == $save_no ) {
			$obj.set_button_state_disable
		}
	}
	else
	{
		$obj.child[@セーブロード_サムネイル_空画像].disp = 1
		$obj.child[@セーブロード_サムネイル_セーブ画像].free
		
		if( $obj.child[@セーブロード_サムネイル_日付_年].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_年].disp = 0
		}
		if( $obj.child[@セーブロード_サムネイル_日付_月].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_月].disp = 0
		}
		if( $obj.child[@セーブロード_サムネイル_日付_日].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_日].disp = 0
		}
		if( $obj.child[@セーブロード_サムネイル_日付_時].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_時].disp = 0
		}
		if( $obj.child[@セーブロード_サムネイル_日付_分].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付_分].disp = 0
		}
		if( $obj.child[@セーブロード_サムネイル_日付].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_日付].disp = 0
		}
		if( $obj.child[@セーブロード_サムネイル_時間].f.get_size ) {
			$obj.child[@セーブロード_サムネイル_時間].disp = 0
		}
		
		$obj.child[@セーブロード_サムネイル_セーブタイトル].disp = 0
		$obj.child[@セーブロード_サムネイル_セーブメッセージ].disp = 0
		
		$obj.child[@セーブロード_サムネイル_ＮＥＷ].disp = 0
		
		if( $mode == @セーブロード_モード_ロード && $swap_mode == 0 ) {
			$obj.set_button_state_disable
		}
	}
	
	// オートページはセーブ不可
	if( $mode == @セーブロード_モード_セーブ && $page_mode_list[$page_mode] == <PAGE_MODE_AUTO> && $swap_mode == 0 ) {
		$obj.set_button_state_disable
	}
	
	// クイックページはセーブ不可
	if( $mode == @セーブロード_モード_セーブ && $page_mode_list[$page_mode] == <PAGE_MODE_QUICK> && $swap_mode == 0 ) {
		$obj.set_button_state_disable
	}
	
	// 各描画を更新する
	$$update_comment_button($stage, $index)		// コメントボタン
	$$update_comment_text($stage, $index)		// コメント
	$$update_lock_button($stage, $index)		// ロックボタン
	$$update_swap_button($stage, $index)		// 入れ替えボタン
	$$update_delete_button($stage, $index)		// 削除ボタン
}

//---------------------------------------------------------------------------
// コメントボタンの描画を更新する
//---------------------------------------------------------------------------
command $$update_comment_button(property $stage : stage, property $thumb_index)
{
	property $save_no
	
	// 表示されていない場合は処理を終了する
	if( $stage.object[@ボタン_セーブロード_コメント + $thumb_index].disp == 0 ) {
		return
	}
	
	// セーブ番号を取得する
	$save_no = $$get_save_no($thumb_index)
	
	// セーブデータがある／ロックされていない／データ入れ替えモードでない場合はコメントボタンを選択可能にする
	if( syscom.get_save_exist($save_no) && $$get_savedata_lock($save_no) == 0 && $swap_mode == 0 )
	{
		$stage.object[@ボタン_セーブロード_コメント + $thumb_index].set_button_state_normal
	}
	else
	{
		$stage.object[@ボタン_セーブロード_コメント + $thumb_index].set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// コメントの描画を更新する
//---------------------------------------------------------------------------
command $$update_comment_text(property $stage : stage, property $thumb_index)
{
	property $save_no
	
	// 表示されていない場合は処理を終了する
	if( $stage.object[@テキスト_セーブロード_コメント + $thumb_index].f.get_size == 0 ) {
		return
	}
	
	// セーブ番号を取得する
	$save_no = $$get_save_no($thumb_index)
	
	// テキストの描画を更新する
	$$update_ui_string($stage.object[@テキスト_セーブロード_コメント + $thumb_index], $$get_save_comment($save_no))
	
	// セーブデータがある場合は表示する
	if( syscom.get_save_exist($save_no) )
	{
		$stage.object[@テキスト_セーブロード_コメント + $thumb_index].disp = 1
	}
	else
	{
		$stage.object[@テキスト_セーブロード_コメント + $thumb_index].disp = 0
	}
}

//---------------------------------------------------------------------------
// ロックボタンの描画を更新する
//---------------------------------------------------------------------------
command $$update_lock_button(property $stage : stage, property $thumb_index)
{
	property $save_no
	
	// 表示されていない場合は処理を終了する
	if( $stage.object[@ボタン_セーブロード_ロック + $thumb_index].f.get_size == 0 ) {
		return
	}
	
	// セーブ番号を取得する
	$save_no = $$get_save_no($thumb_index)
	
	// トグルボタンの描画を更新する
	$$update_ui_toggle_button($stage.object[@ボタン_セーブロード_ロック + $thumb_index], $$get_savedata_lock($save_no))
	
	// セーブデータがある／データ入れ替えモードでない場合はロックボタンを選択可能にする
	if( syscom.get_save_exist($save_no) && $swap_mode == 0 )
	{
		$stage.object[@ボタン_セーブロード_ロック + $thumb_index].set_button_state_normal
	}
	else
	{
		$stage.object[@ボタン_セーブロード_ロック + $thumb_index].set_button_state_disable
	}
	
	// オートページはロック不可
	if( $page_mode_list[$page_mode] == <PAGE_MODE_AUTO> ) {
		$stage.object[@ボタン_セーブロード_ロック + $thumb_index].set_button_state_disable
	}
	
	// クイックページはロック不可
	if( $page_mode_list[$page_mode] == <PAGE_MODE_QUICK> ) {
		$stage.object[@ボタン_セーブロード_ロック + $thumb_index].set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// 入れ替えボタンの描画を更新する
//---------------------------------------------------------------------------
command $$update_swap_button(property $stage : stage, property $thumb_index)
{
	property $save_no
	
	// 表示されていない場合は処理を終了する
	if( $stage.object[@ボタン_セーブロード_入れ替え + $thumb_index].f.get_size == 0 ) {
		return
	}
	
	// セーブ番号を取得する
	$save_no = $$get_save_no($thumb_index)
	
	// セーブデータがある／ロックされていない／データ入れ替えモードでない場合は入れ替えボタンを選択可能にする
	if( syscom.get_save_exist($save_no) && $$get_savedata_lock($save_no) == 0 && $swap_mode == 0 )
	{
		$stage.object[@ボタン_セーブロード_入れ替え + $thumb_index].set_button_state_normal
	}
	else
	{
		$stage.object[@ボタン_セーブロード_入れ替え + $thumb_index].set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// 削除ボタンの描画を更新する
//---------------------------------------------------------------------------
command $$update_delete_button(property $stage : stage, property $thumb_index)
{
	property $save_no
	
	// 表示されていない場合は処理を終了する
	if( $stage.object[@ボタン_セーブロード_削除 + $thumb_index].f.get_size == 0 ) {
		return
	}
	
	// セーブ番号を取得する
	$save_no = $$get_save_no($thumb_index)
	
	// セーブデータがある／ロックされていない／／データ入れ替えモードでない場合は削除ボタンを選択可能にする
	if( syscom.get_save_exist($save_no) && $$get_savedata_lock($save_no) == 0 && $swap_mode == 0 )
	{
		$stage.object[@ボタン_セーブロード_削除 + $thumb_index].set_button_state_normal
	}
	else
	{
		$stage.object[@ボタン_セーブロード_削除 + $thumb_index].set_button_state_disable
	}
}

//---------------------------------------------------------------------------
// ヘルプテキストの描画を更新する
//---------------------------------------------------------------------------
command $$update_help_text(property $stage : stage, property $swap_mode)
{
	// 表示されていない場合は処理を終了する
	if( $stage.object[@イメージ_セーブロード_ヘルプテキスト].f.get_size == 0 ) {
		return
	}
	
	if( $swap_mode ) {
		$stage.object[@イメージ_セーブロード_ヘルプテキスト].patno = 3
	}
	elseif( $page == $auto_page ) {
		$stage.object[@イメージ_セーブロード_ヘルプテキスト].patno = 1
	}
	elseif( $page == $quick_page ) {
		$stage.object[@イメージ_セーブロード_ヘルプテキスト].patno = 2
	}
	else {
		$stage.object[@イメージ_セーブロード_ヘルプテキスト].patno = 0
	}
}

//---------------------------------------------------------------------------
// システムメッセージを表示する
//---------------------------------------------------------------------------
command $$show_system_message(property $stage : stage, property $type, property $wait_time)
{
	// 表示されていない場合は処理を終了する
	if( $stage.object[@イメージ_セーブロード_システムメッセージ].f.get_size == 0 ) {
		return
	}
	
	$$set_pos_y_rep_eve($stage.object[@イメージ_セーブロード_システムメッセージ], 0, 20, 0, 250, 0, 2)
	$$set_tr_eve($stage.object[@イメージ_セーブロード_システムメッセージ], 0, 255, 250, 0, 2)
	
	$stage.object[@イメージ_セーブロード_システムメッセージ].patno = $type
	$stage.object[@イメージ_セーブロード_システムメッセージ].disp = 1
	
	timewait($wait_time)
}

//---------------------------------------------------------------------------
// システムメッセージを非表示にする
//---------------------------------------------------------------------------
command $$hide_system_message(property $stage : stage)
{
	// 表示されていない場合は処理を終了する
	if( $stage.object[@イメージ_セーブロード_システムメッセージ].f.get_size == 0 ) {
		return
	}
	
	$stage.object[@イメージ_セーブロード_システムメッセージ].disp = 0
}



#inc_start
	#property $tmp
#inc_end

command $$create_save_all_page_button(property $stage : stage, property $filename : str, property $x, property $y, property $offset_x, property $offset_y, property $num)
{
	property $i
	
	for( $i = 0, $i < $num, $i += 1 )
	{
		$$create_ui_button($stage.object[@ボタン_セーブロード_ページ + $i], $filename, $x + $offset_x * $i, $y, @ボタン_セーブロード_ページ + $i, <OBJBTN_GROUP_NO_EXCALL>, 4)
		
		$stage.object[@ボタン_セーブロード_ページ + $i].child.resize(1)
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].create_number(_save_page_number, 1, 63, 14)
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].set_number($tab * $page_max + $i + 1)
		
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x = $stage.object[@ボタン_セーブロード_ページ + $i].get_size_x / 2 - $stage.object[@ボタン_セーブロード_ページ + $i].child[0].get_size_x / 2
		
		if( $i >= 9 ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x -= $stage.object[@ボタン_セーブロード_ページ + $i].child[0].get_size_x / 2
		}
		
		// フレームアクションの実行
		$stage.object[@ボタン_セーブロード_ページ + $i].frame_action.start(-1, "$$fa_saveload_page")
	}
	
	$tmp = 1
}

command $$create_load_all_page_button(property $stage : stage, property $filename : str, property $x, property $y, property $offset_x, property $offset_y, property $num)
{
	property $i
	property $number
	
	for( $i = 0, $i < $num, $i += 1 )
	{
		$$create_ui_button($stage.object[@ボタン_セーブロード_ページ + $i], $filename, $x + $offset_x * $i, $y, @ボタン_セーブロード_ページ + $i, <OBJBTN_GROUP_NO_EXCALL>, 4)
		
		$stage.object[@ボタン_セーブロード_ページ + $i].child.resize(1)
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].create_number(_load_page_number, 1, 63, 14)
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].set_number($tab * $page_max + $i + 1)
		
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x = $stage.object[@ボタン_セーブロード_ページ + $i].get_size_x / 2 - $stage.object[@ボタン_セーブロード_ページ + $i].child[0].get_size_x / 2
		
		if( $i >= 9 ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x -= $stage.object[@ボタン_セーブロード_ページ + $i].child[0].get_size_x / 2
		}
		
		// フレームアクションの実行
		$stage.object[@ボタン_セーブロード_ページ + $i].frame_action.start(-1, "$$fa_saveload_page")
	}
	
	$tmp = 1
}

//---------------------------------------------------------------------------
// ページボタンの更新
//---------------------------------------------------------------------------
command $$update_saveload_all_page_button(property $stage : stage)
{
	property $i
	property $base_number
	property $number
	
	if( $tmp == 0 ) {
		return
	}
	
	// オートページ／クイックページの場合は処理を終了する
	if( $page == $auto_page || $page == $quick_page )
	{
		$base_number = 0
	}
	else
	{
		$base_number = ($page / $page_max) * $page_max + $tab * $page_max
	}
	
	for( $i = 0, $i < $page_max, $i += 1 )
	{
		$number = $base_number + $i + 1
		
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].set_number($number)
		
		$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x = ($stage.object[@ボタン_セーブロード_ページ + $i].get_size_x - 2) / 2 - 18
		
		if( $number <= 9 ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x += 9
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].set_number_param(1, 0, 0, 0, 0, 0)
		}
		elseif( $number >= 100 ) {
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].x -= 9
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].set_number_param(3, 0, 0, 0, 0, -2)
		}
		else {
			$stage.object[@ボタン_セーブロード_ページ + $i].child[0].set_number_param(2, 0, 0, 0, 0, 0)
		}
	}
}

command $$fa_saveload_page(property $fa : frameaction, property $obj : object)
{
	property $state
	
	$state = $obj.get_button_real_state
	
	if( syscom.check_joypad_mode ) {
		
		if( $$get_joypad_decided == $obj.get_button_no )
		{
			if( $state != 3 ) {
				$state = 4
			}
		}
		elseif( $$get_joypad_focus_button == $obj.get_button_no )
		{
			if( $state != 3 ) {
				$state = 1
			}
		}
	}
	
	switch( $state ) {
	case(0)		$obj.child[0].patno = 0
	case(1)		$obj.child[0].patno = 10
	case(2)		$obj.child[0].patno = 20
	case(3)		$obj.child[0].patno = 20
	case(4)		$obj.child[0].patno = 30
	}
}
