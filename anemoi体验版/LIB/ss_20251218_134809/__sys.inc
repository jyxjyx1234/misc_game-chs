//===========================================================================
//!
//!    @file     __sys.inc
//!    @brief   システム画面定義
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// 入力情報取得
//---------------------------------------------------------------------------
#macro	@ボタン選択中(@button_no)			$$is_focused_on_btn(@button_no)


//---------------------------------------------------------------------------
// システム情報取得
//---------------------------------------------------------------------------
#define		@キネティックシステム			(<OBJ_MAX> <= 128)
#define		@フルプライスシステム			(<OBJ_MAX> > 128)


//---------------------------------------------------------------------------
// タイトルメニュー
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_メニュー_最初から					11
#replace	@ボタン_メニュー_前回の続きから				12
#replace	@ボタン_メニュー_続きから					13
#replace	@ボタン_メニュー_チャプターから始める		14
#replace	@ボタン_メニュー_コンフィグ					15
#replace	@ボタン_メニュー_エクストラ					16
#replace	@ボタン_メニュー_ゲーム終了					17
#replace	@ボタン_メニュー_別ルートから始める１		18
#replace	@ボタン_メニュー_別ルートから始める２		19
#replace	@ボタン_メニュー_別ルートから始める３		20

// データ関連
#command $$open_extra : int								// エクストラが解放されているかどうか
#command $$open_chapter_select : int					// チャプター選択が解放されているかどうか
#command $$get_jump_from_title : int					// タイトルメニューシーンから遷移しているかどうかのフラグを取得する

// シーンオブジェクト関連
#command $$create_menu_scene_object(stage)				// シーンオブジェクトを作成する
#command $$update_menu_scene_object(stage, int)			// シーンオブジェクトを更新する
#command $$show_menu_scene_object(stage)				// シーンオブジェクトを表示する
#command $$set_menu_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$show_menu_start_fade							// タイトルメニュー遷移時のフェードを表示する

#command $$create_menu_continue_button(object, str, int, int, int, int, int)	// タイトルメニューシーンで使用する前回の続きから（コンティニュー）ボタンを作成する
#command $$create_menu_load_button(object, str, int, int, int, int, int)		// タイトルメニューシーンで使用する続きから（ロード）ボタンを作成する
#command $$create_menu_chapter_button(object, str, int, int, int, int, int)		// タイトルメニューシーンで使用するチャプター選択ボタンを作成する
#command $$create_menu_extra_button(object, str, int, int, int, int, int)		// タイトルメニューシーンで使用するエクストラボタンを作成する

#command $$push_menu_start_button						// 最初から始めるボタンを押したときの処理
#command $$push_menu_route_button(int)					// 別ルートから始めるボタンを押したときの処理


//---------------------------------------------------------------------------
// シナリオ選択
//---------------------------------------------------------------------------
// 最大数
#replace	@シナリオ選択_選択ボタン最大数				10

// オブジェクト
#define		@オブジェクト_シナリオ選択_背景				(<OBJ_MODAL> + 0)

// ボタン
#define		@ボタン_シナリオ選択_閉じる					(<OBJ_MODAL> + 11)
#define		@ボタン_シナリオ選択_サムネイル				(<OBJ_MODAL> + 12)
#define		@ボタン_シナリオ選択_サムネイル最大			(@ボタン_シナリオ選択_サムネイル + @シナリオ選択_選択ボタン最大数)

// シーンオブジェクト関連
#command $$create_episode_select_select_scene_object(stage)		// シーンオブジェクトを作成する
#command $$update_episode_select_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_episode_select_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_episode_select_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_episode_select_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$push_episode_select_button(int)				// 各エピソードボタンを押したときの処理


//---------------------------------------------------------------------------
// クイックメニュー
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_クイックメニュー_閉じる				11
#replace	@ボタン_クイックメニュー_クイックセーブ		12
#replace	@ボタン_クイックメニュー_クイックロード		13
#replace	@ボタン_クイックメニュー_セーブ				14
#replace	@ボタン_クイックメニュー_ロード				15
#replace	@ボタン_クイックメニュー_オート				16
#replace	@ボタン_クイックメニュー_スキップ			17
#replace	@ボタン_クイックメニュー_コンフィグ			18
#replace	@ボタン_クイックメニュー_タイトルに戻る		19
#replace	@ボタン_クイックメニュー_チャプターに戻る	20
#replace	@ボタン_クイックメニュー_バックログ			21
#replace	@ボタン_クイックメニュー_前の選択肢に戻る	22
#replace	@ボタン_クイックメニュー_ゲームを終了する	23
#replace	@ボタン_クイックメニュー_レコード			24
#replace	@ボタン_クイックメニュー_Ｔｗｉｔｔｅｒ		25
#replace	@ボタン_クイックメニュー_最大				26

// シーンオブジェクト関連
#command $$create_qmenu_scene_object(stage)				// シーンオブジェクトを作成する
#command $$update_qmenu_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_qmenu_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_qmenu_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_qmenu_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$create_qmenu_qsave_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するクイックセーブボタンを作成する
#command $$create_qmenu_qload_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するクイックロードボタンを作成する
#command $$create_qmenu_save_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するセーブボタンを作成する
#command $$create_qmenu_load_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するロードボタンを作成する
#command $$create_qmenu_auto_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するオートボタンを作成する
#command $$create_qmenu_skip_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するスキップボタンを作成する
#command $$create_qmenu_back_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用する前の選択肢へ戻るボタンを作成する
#command $$create_qmenu_log_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するバックログボタンを作成する
#command $$create_qmenu_title_button(object, str, int, int, int, int, int)		// クイックメニューシーンで使用するタイトルへ戻るボタンを作成する
#command $$create_qmenu_chapter_button(object, str, int, int, int, int, int)	// クイックメニューシーンで使用するチャプターへ戻るボタンを作成する


//---------------------------------------------------------------------------
// セーブ／ロード
//---------------------------------------------------------------------------
// 最大数
#replace	@セーブロード_ページ最大数					20
#replace	@セーブロード_サムネイル最大数				10

// オブジェクト
#replace	@イメージ_セーブロード_システムメッセージ	6
#replace	@アニメ_セーブロード_データ入れ替え			7
#replace	@イメージ_セーブロード_ヘルプテキスト		8
#replace	@イメージ_セーブロード_ヘルプ				9

// ボタン
#replace	@ボタン_セーブロード_閉じる					11
#replace	@ボタン_セーブロード_ヘルプ					12
#replace	@ボタン_セーブロード_オートページ			13
#replace	@ボタン_セーブロード_クイックページ			14
#replace	@ボタン_セーブロード_ＮＥＷページ			15
#replace	@ボタン_セーブロード_前のタブ				16
#replace	@ボタン_セーブロード_次のタブ				17
#replace	@ボタン_セーブロード_ページ					18
#define		@ボタン_セーブロード_ページ最大				(@ボタン_セーブロード_ページ + 1 + @セーブロード_ページ最大数)
#define		@ボタン_セーブロード_サムネイル				(@ボタン_セーブロード_ページ最大)
#define		@ボタン_セーブロード_サムネイル最大			(@ボタン_セーブロード_サムネイル + @セーブロード_サムネイル最大数)
#define		@ボタン_セーブロード_入れ替えサムネイル		(@ボタン_セーブロード_サムネイル最大)
#define		@ボタン_セーブロード_入れ替えサムネイル最大	(@ボタン_セーブロード_入れ替えサムネイル + @セーブロード_サムネイル最大数)
#define		@ボタン_セーブロード_コメント				(@ボタン_セーブロード_入れ替えサムネイル最大)
#define		@ボタン_セーブロード_コメント最大			(@ボタン_セーブロード_コメント + @セーブロード_サムネイル最大数)
#define		@ボタン_セーブロード_ロック					(@ボタン_セーブロード_コメント最大)
#define		@ボタン_セーブロード_ロック最大				(@ボタン_セーブロード_ロック + @セーブロード_サムネイル最大数)
#define		@ボタン_セーブロード_入れ替え				(@ボタン_セーブロード_ロック最大)
#define		@ボタン_セーブロード_入れ替え最大			(@ボタン_セーブロード_入れ替え + @セーブロード_サムネイル最大数)
#define		@ボタン_セーブロード_削除					(@ボタン_セーブロード_入れ替え最大)
#define		@ボタン_セーブロード_削除最大				(@ボタン_セーブロード_削除 + @セーブロード_サムネイル最大数)
#define		@テキスト_セーブロード_コメント				(@ボタン_セーブロード_削除最大)
#define		@テキスト_セーブロード_コメント最大			(@テキスト_セーブロード_コメント + @セーブロード_サムネイル最大数)
#define		@ボタン_セーブロード_現在のページ			$$get_saveload_page_obj_index

// サムネイルオブジェクト
#replace	@セーブロード_サムネイル_ベース				0
#replace	@セーブロード_サムネイル_空画像				1
#replace	@セーブロード_サムネイル_セーブ画像			2
#replace	@セーブロード_サムネイル_セーブ番号			3
#replace	@セーブロード_サムネイル_日付_年			4
#replace	@セーブロード_サムネイル_日付_月			5
#replace	@セーブロード_サムネイル_日付_日			6
#replace	@セーブロード_サムネイル_日付_時			7
#replace	@セーブロード_サムネイル_日付_分			8
#replace	@セーブロード_サムネイル_日付				9
#replace	@セーブロード_サムネイル_時間				10
#replace	@セーブロード_サムネイル_セーブタイトル		11
#replace	@セーブロード_サムネイル_セーブメッセージ	12
#replace	@セーブロード_サムネイル_ＮＥＷ				13
#replace	@セーブロード_サムネイル_フレーム			14
#replace	@セーブロード_サムネイル_最大				15

// ゲームパッド動作
#replace	@動作_セーブロード_ページを戻す				-11
#replace	@動作_セーブロード_ページを進める			-12

// モード
#replace	@セーブロード_モード_セーブ					0
#replace	@セーブロード_モード_ロード					1

// 描画更新タイプ
#replace	@セーブロード_描画更新_ページ切り替え		0
#replace	@セーブロード_描画更新_セーブ実行			1

// システムメッセージタイプ
#replace	@セーブロード_メッセージ_セーブ中			0
#replace	@セーブロード_メッセージ_セーブ完了			1
#replace	@セーブロード_メッセージ_セーブ入れ替え		2
#replace	@セーブロード_メッセージ_セーブ削除			3

// データ関連(セーブ／ロード共通)
#command $$get_saveload_mode : int								// セーブ／ロードモードを取得する
#command $$get_saveload_page_obj_index : int					// 現在のページオブジェクトを取得する
#command $$get_auto_save_no(int) : int							// サムネイルインデックスからオートセーブ番号を取得する
#command $$set_save_comment_moji_max(int)						// セーブコメントの最大文字数を設定する

#replace	@セーブロード_コメントタイプ_通常			0
#replace	@セーブロード_コメントタイプ_ロック			1

#command $$get_default_save_comment_text(int) : str				// セーブコメントのデフォルト文字列を取得する

#replace	<OBJBTN_GROUP_NO_SAVELOAD_SWAP>				3		// セーブロードのデータ入れ替え時に使用するオブジェクトボタングループ番号

// シーンオブジェクト関連(セーブ／ロード共通)
#command $$create_saveload_thumbnail(stage, object, str, int, int, int, int, int)	// セーブ／ロードサムネイルを作成する

// シーンオブジェクト関連(セーブ)
#command $$create_save_scene_object(stage)					// シーンオブジェクトを作成する
#command $$create_save_thumb_object(stage, object, int)		// サムネイルオブジェクトを作成する
#command $$update_save_scene_object(stage, int)				// シーンオブジェクトを更新する
#command $$redraw_save_scene_object(stage, int)				// シーンオブジェクトの再描画
#command $$show_save_scene_object(stage)					// シーンオブジェクトを表示する
#command $$hide_save_scene_object(stage)					// シーンオブジェクトを非表示にする
#command $$set_save_joypad_navigation(stage)				// パッド入力の遷移を設定する

// シーンオブジェクト関連(ロード)
#command $$create_load_scene_object(stage)					// シーンオブジェクトを作成する
#command $$create_load_thumb_object(stage, object, int)		// サムネイルオブジェクトを作成する
#command $$update_load_scene_object(stage, int)				// シーンオブジェクトを更新する
#command $$redraw_load_scene_object(stage, int)				// シーンオブジェクトの再描画
#command $$show_load_scene_object(stage)					// シーンオブジェクトを表示する
#command $$hide_load_scene_object(stage)					// シーンオブジェクトを非表示にする
#command $$set_load_joypad_navigation(stage)				// パッド入力の遷移を設定する

// シーンオブジェクト関連(セーブ／ロード共通)
#command $$create_saveload_scene_object(stage)				// シーンオブジェクトを作成する



#command $$create_save_all_page_button(stage, str, int, int, int, int, int)
#command $$create_load_all_page_button(stage, str, int, int, int, int, int)

//---------------------------------------------------------------------------
// コンフィグ／モード選択
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_コンフィグモード選択_閉じる				11
#replace	@ボタン_コンフィグモード選択_システム			12
#replace	@ボタン_コンフィグモード選択_テキスト			13
#replace	@ボタン_コンフィグモード選択_サウンド			14
#replace	@ボタン_コンフィグモード選択_ボイス				15

// シーンオブジェクト関連
#command $$create_config_mode_select_scene_object(stage)			// シーンオブジェクトを作成する
#command $$add_config_mode_select_scene_object(stage)				// シーンオブジェクトを追加する
#command $$update_config_mode_select_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_config_mode_select_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_config_mode_select_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_config_mode_select_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$build_config_mode_select_scene(stage)					// コンフィグモード選択シーンを構成する


//---------------------------------------------------------------------------
// コンフィグ／システム
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_コンフィグ_閉じる						11
#replace	@ボタン_コンフィグ_初期設定に戻す				12
#replace	@ボタン_コンフィグ_ウィンドウモード				13			// セレクトボックスのため前、次ボタンの２つを確保する
#replace	@ボタン_コンフィグ_右クリック動作				15			// セレクトボックス
#replace	@ボタン_コンフィグ_暗転効果						17			// セレクトボックス
#replace	@ボタン_コンフィグ_ウィンドウ設定				19
#replace	@ボタン_コンフィグ_ゲームパッド設定				20

// ゲームパッド動作
#replace	@動作_コンフィグ_ウィンドウモード_前に戻す		-11
#replace	@動作_コンフィグ_ウィンドウモード_次へ進める	-12
#replace	@動作_コンフィグ_右クリック動作_前に戻す		-13
#replace	@動作_コンフィグ_右クリック動作_次へ進める		-14
#replace	@動作_コンフィグ_暗転効果_前に戻す				-15
#replace	@動作_コンフィグ_暗転効果_次へ進める			-16

// シーンオブジェクト関連
#command $$create_config_system_scene_object(stage)				// シーンオブジェクトを作成する
#command $$update_config_system_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_config_system_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_config_system_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_config_system_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$create_config_system_window_mode_selectbox(object, str, int, int, int, int, int, int, int, int, int, int, int, int)		// コンフィグシーンで使用するウィンドウモードのセレクトボックスを作成する
#command $$create_config_system_rclick_mode_selectbox(object, str, int, int, int, int, int, int, int, int, int, int, int, int)		// コンフィグシーンで使用する右クリック動作のセレクトボックスを作成する
#command $$create_config_system_fade_setting_selectbox(object, str, int, int, int, int, int, int, int, int, int, int, int, int)		// コンフィグシーンで使用する暗転効果のセレクトボックスを作成する


//---------------------------------------------------------------------------
// コンフィグ／テキスト
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_コンフィグ_メッセージスキップ			13			// セレクトボックスのため前、次ボタンの２つを確保する
#replace	@ボタン_コンフィグ_ノーウェイト					15			// セレクトボックス
#replace	@ボタン_コンフィグ_オートモード速度				17			// スライダーのため下地、ハンドルボタンの２つを確保する
#replace	@ボタン_コンフィグ_メッセージ速度				19			// スライダー
#replace	@ボタン_コンフィグ_ウィンドウ透過				21			// スライダー
#replace	@イメージ_コンフィグ_ウィンドウ透過フィルター	23
#replace	@ボタン_コンフィグ_テキストスクロールビュー		24

// ゲームパッド動作
#replace	@動作_コンフィグ_メッセージスキップ_前に戻す	-11
#replace	@動作_コンフィグ_メッセージスキップ_次へ進める	-12
#replace	@動作_コンフィグ_ノーウェイト_前に戻す			-13
#replace	@動作_コンフィグ_ノーウェイト_次へ進める		-14
#replace	@動作_コンフィグ_オートモード速度_下げる		-15
#replace	@動作_コンフィグ_オートモード速度_上げる		-16
#replace	@動作_コンフィグ_メッセージ速度_下げる			-17
#replace	@動作_コンフィグ_メッセージ速度_上げる			-18
#replace	@動作_コンフィグ_ウィンドウ透過_下げる			-19
#replace	@動作_コンフィグ_ウィンドウ透過_上げる			-20

// シーンオブジェクト関連
#command $$create_config_text_scene_object(stage)			// シーンオブジェクトを作成する
#command $$update_config_text_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_config_text_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_config_text_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_config_text_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$create_config_text_messageskip_mode_selectbox(object, str, int, int, int, int, int, int, int, int, int, int, int, int)		// コンフィグシーンで使用するメッセージスキップのセレクトボックスを作成する
#command $$create_config_text_nowait_mode_selectbox(object, str, int, int, int, int, int, int, int, int, int, int, int, int)		// コンフィグシーンで使用するノーウェイト動作のセレクトボックスを作成する
#command $$create_config_text_automode_slider(object, str, int, int, int, int, int, int, int)			// コンフィグシーンで使用するオートモード速度(文字待ち時間)スライダーを作成する
#command $$create_config_text_automode_min_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するオートモード速度(最小待ち時間)スライダーを作成する
#command $$create_config_text_message_speed_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するメッセージ速度スライダーを作成する
#command $$create_config_text_mw_filter_r_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するウィンドウ(赤)スライダーを作成する
#command $$create_config_text_mw_filter_g_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するウィンドウ(緑)スライダーを作成する
#command $$create_config_text_mw_filter_b_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するウィンドウ(青)スライダーを作成する
#command $$create_config_text_mw_filter_a_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するウィンドウ透過スライダーを作成する


//---------------------------------------------------------------------------
// コンフィグ／サウンド
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_コンフィグ_マスター音量					13			// スライダーのため下地、ハンドルボタンの２つを確保する
#replace	@ボタン_コンフィグ_ＢＧＭ音量					15			// スライダー
#replace	@ボタン_コンフィグ_ＢＧＭフェード音量			17			// スライダー
#replace	@ボタン_コンフィグ_ボイス音量					19			// スライダー
#replace	@ボタン_コンフィグ_ＳＥ音量						21			// スライダー
#replace	@ボタン_コンフィグ_システムＳＥ音量				23			// スライダー
#replace	@ボタン_コンフィグ_ムービー音量					25			// スライダー
#replace	@ボタン_コンフィグ_サウンドスクロールビュー		27

// ゲームパッド動作
#replace	@動作_コンフィグ_マスター音量_下げる			-11
#replace	@動作_コンフィグ_マスター音量_上げる			-12
#replace	@動作_コンフィグ_ＢＧＭ音量_下げる				-13
#replace	@動作_コンフィグ_ＢＧＭ音量_上げる				-14
#replace	@動作_コンフィグ_ＢＧＭフェード音量_下げる		-15
#replace	@動作_コンフィグ_ＢＧＭフェード音量_上げる		-16
#replace	@動作_コンフィグ_ボイス音量_下げる				-17
#replace	@動作_コンフィグ_ボイス音量_上げる				-18
#replace	@動作_コンフィグ_ＳＥ音量_下げる				-19
#replace	@動作_コンフィグ_ＳＥ音量_上げる				-20
#replace	@動作_コンフィグ_システムＳＥ音量_下げる		-21
#replace	@動作_コンフィグ_システムＳＥ音量_上げる		-22
#replace	@動作_コンフィグ_ムービー音量_下げる			-23
#replace	@動作_コンフィグ_ムービー音量_上げる			-24

// シーンオブジェクト関連
#command $$create_config_sound_scene_object(stage)			// シーンオブジェクトを作成する
#command $$update_config_sound_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_config_sound_scene_object(stage)			// シーンオブジェクトを表示する
#command $$hide_config_sound_scene_object(stage)			// シーンオブジェクトを非表示にする
#command $$set_config_sound_joypad_navigation(stage)		// パッド入力の遷移を設定する

#command $$create_config_sound_master_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するマスター音量スライダーを作成する
#command $$create_config_sound_bgm_slider(object, str, int, int, int, int, int, int, int)			// コンフィグシーンで使用するＢＧＭ音量スライダーを作成する
#command $$create_config_sound_bgm_fade_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するＢＧＭフェード音量スライダーを作成する
#command $$create_config_sound_voice_slider(object, str, int, int, int, int, int, int, int)			// コンフィグシーンで使用するボイス音量スライダーを作成する
#command $$create_config_sound_se_slider(object, str, int, int, int, int, int, int, int)			// コンフィグシーンで使用するＳＥ音量スライダーを作成する
#command $$create_config_sound_system_se_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するシステムＳＥ音量スライダーを作成する
#command $$create_config_sound_movie_slider(object, str, int, int, int, int, int, int, int)			// コンフィグシーンで使用するムービー音量スライダーを作成する


//---------------------------------------------------------------------------
// コンフィグ／ボイス
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_コンフィグ_キャラクター１音量			13			// スライダーのため下地、ハンドルボタンの２つを確保する
#replace	@ボタン_コンフィグ_キャラクター２音量			15			// スライダー
#replace	@ボタン_コンフィグ_キャラクター３音量			17			// スライダー
#replace	@ボタン_コンフィグ_キャラクター４音量			19			// スライダー
#replace	@ボタン_コンフィグ_キャラクター５音量			21			// スライダー
#replace	@ボタン_コンフィグ_キャラクター６音量			23			// スライダー
#replace	@ボタン_コンフィグ_キャラクター７音量			25			// スライダー
#replace	@ボタン_コンフィグ_キャラクター８音量			27			// スライダー
#replace	@ボタン_コンフィグ_キャラクター９音量			29			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１０音量			31			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１１音量			33			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１２音量			35			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１３音量			37			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１４音量			39			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１５音量			41			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１６音量			43			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１７音量			45			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１８音量			47			// スライダー
#replace	@ボタン_コンフィグ_キャラクター１９音量			49			// スライダー
#replace	@ボタン_コンフィグ_キャラクター２０音量			51			// スライダー
#replace	@ボタン_コンフィグ_ボイススクロールビュー		53			// スライダー

// ゲームパッド動作
#replace	@動作_コンフィグ_キャラクター１音量_下げる		-11
#replace	@動作_コンフィグ_キャラクター１音量_上げる		-12
#replace	@動作_コンフィグ_キャラクター２音量_下げる		-13
#replace	@動作_コンフィグ_キャラクター２音量_上げる		-14
#replace	@動作_コンフィグ_キャラクター３音量_下げる		-15
#replace	@動作_コンフィグ_キャラクター３音量_上げる		-16
#replace	@動作_コンフィグ_キャラクター４音量_下げる		-17
#replace	@動作_コンフィグ_キャラクター４音量_上げる		-18
#replace	@動作_コンフィグ_キャラクター５音量_下げる		-19
#replace	@動作_コンフィグ_キャラクター５音量_上げる		-20
#replace	@動作_コンフィグ_キャラクター６音量_下げる		-21
#replace	@動作_コンフィグ_キャラクター６音量_上げる		-22
#replace	@動作_コンフィグ_キャラクター７音量_下げる		-23
#replace	@動作_コンフィグ_キャラクター７音量_上げる		-24

// データ取得
#define		@コンフィグ_キャラクターボイス最大数			$$get_config_charakoe_max

// データ関連
#command $$set_config_charakoe(int, int)						// コンフィグのキャラクター音量設定で使用するキャラクターを設定する
#command $$set_config_charakoe_list								// コンフィグのキャラクター音量設定で使用するキャラクターリストを設定する
#command $$get_config_charakoe_max : int						// コンフィグのキャラクター音量設定で使用するキャラクター最大数を取得する
#command $$get_config_charakoe(int) : int						// コンフィグのキャラクター音量設定で使用するキャラクター音声の登録番号を取得する
#command $$get_config_charakoe_koe_no(int) : int				// コンフィグのキャラクター音量設定で使用するキャラクター音声の声番号を取得する
#command $$get_config_charakoe_from_btn_no(int) : int			// コンフィグのキャラクター音量設定で使用するボタン番号からキャラクター音声の登録番号を取得する
#command $$get_config_charakoe_btn_no_from_func_no(int) : int	// コンフィグのキャラクター音量設定で使用する動作番号からボタン番号を取得する
#command $$set_config_charakoe_sample_voice(int, int)			// コンフィグのキャラクター音量設定で使用するサンプルボイスを設定する
#command $$get_config_charakoe_sample_voice(int) : int			// コンフィグのキャラクター音量設定で使用するサンプルボイスを取得する

// シーンオブジェクト関連
#command $$create_config_voice_scene_object(stage)			// シーンオブジェクトを作成する
#command $$update_config_voice_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_config_voice_scene_object(stage)			// シーンオブジェクトを表示する
#command $$hide_config_voice_scene_object(stage)			// シーンオブジェクトを非表示にする
#command $$set_config_voice_joypad_navigation(stage)		// パッド入力の遷移を設定する

#command $$create_config_voice_character_slider(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するキャラクター音量スライダーを作成する


//---------------------------------------------------------------------------
// コンフィグ／多機能版
//---------------------------------------------------------------------------
// イメージ／ボタン
#replace	@ボタン_コンフィグ_画面モード_標準ウィンドウ						130
#replace	@ボタン_コンフィグ_画面モード_フルスクリーン						131
#replace	@ボタン_コンフィグ_表示速度_キャラクター_通常						132
#replace	@ボタン_コンフィグ_表示速度_キャラクター_瞬時						133
#replace	@ボタン_コンフィグ_表示速度_背景_通常								134
#replace	@ボタン_コンフィグ_表示速度_背景_瞬時								135
#replace	@ボタン_コンフィグ_表示速度_イベントＣＧ_通常						136
#replace	@ボタン_コンフィグ_表示速度_イベントＣＧ_瞬時						137
#replace	@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常				138
#replace	@ボタン_コンフィグ_表示速度_メッセージウィンドウ_瞬時				139
#replace	@ボタン_コンフィグ_表示速度_システムメニュー_通常					140
#replace	@ボタン_コンフィグ_表示速度_システムメニュー_瞬時					141
#replace	@ボタン_コンフィグ_メッセージスキップ_既読のみ						142
#replace	@ボタン_コンフィグ_メッセージスキップ_未読含む						143
#replace	@ボタン_コンフィグ_オートセーブ_無効								144
#replace	@ボタン_コンフィグ_オートセーブ_有効								145
#replace	@ボタン_コンフィグ_レコード表示_無効								146
#replace	@ボタン_コンフィグ_レコード表示_有効								147
#replace	@ボタン_コンフィグ_タブレットモード_無効							148
#replace	@ボタン_コンフィグ_タブレットモード_右								149
#replace	@ボタン_コンフィグ_タブレットモード_左								150
#replace	@ボタン_コンフィグ_右クリック_クイックメニュー						151
#replace	@ボタン_コンフィグ_右クリック_ウィンドウ消去						152
#replace	@ボタン_コンフィグ_右クリック_コンフィグ画面						153
#replace	@ボタン_コンフィグ_右クリック_セーブ画面							154
#replace	@ボタン_コンフィグ_右クリック_ロード画面							155
#replace	@ボタン_コンフィグ_確認ダイアログ_セーブ							156
#replace	@ボタン_コンフィグ_確認ダイアログ_クイックセーブ					157
#replace	@ボタン_コンフィグ_確認ダイアログ_上書きセーブ						158
#replace	@ボタン_コンフィグ_確認ダイアログ_ロード							159
#replace	@ボタン_コンフィグ_確認ダイアログ_クイックロード					160
#replace	@ボタン_コンフィグ_確認ダイアログ_前の選択肢へ戻る					161
#replace	@ボタン_コンフィグ_確認ダイアログ_履歴から再開する					162
#replace	@ボタン_コンフィグ_確認ダイアログ_セーブデータ入れ替え				163
#replace	@ボタン_コンフィグ_確認ダイアログ_セーブデータ削除					164
#replace	@ボタン_コンフィグ_確認ダイアログ_初期設定に戻す					165
#replace	@ボタン_コンフィグ_確認ダイアログ_タイトルに戻る					166
#replace	@ボタン_コンフィグ_確認ダイアログ_ゲームを終了する					167
#replace	@ボタン_コンフィグ_その他の設定_マウスホイールで読み進める			168
#replace	@ボタン_コンフィグ_その他の設定_スムーズに動作						169
#replace	@ボタン_コンフィグ_サイドバー_無効									170
#replace	@ボタン_コンフィグ_サイドバー_右									171
#replace	@ボタン_コンフィグ_サイドバー_左									172
#replace	@ボタン_コンフィグ_ムービー_詳細設定								173
#replace	@ボタン_コンフィグ_ゲームパッド_詳細設定							174

#replace	@ボタン_コンフィグ_文字設定_フォントＡ								175
#replace	@ボタン_コンフィグ_文字設定_フォントＢ								176
#replace	@ボタン_コンフィグ_文字設定_フォント_詳細設定						177
#replace	@ボタン_コンフィグ_文字設定_初期設定								178
#replace	@ボタン_コンフィグ_文字設定_ノーウェイト							179
#replace	@ボタン_コンフィグ_ウィンドウ背景_初期設定							180
#replace	@イメージ_コンフィグ_ウィンドウ背景_フィルター						181
#replace	@テキスト_コンフィグ_ウィンドウ背景_サンプルテキスト				182
#replace	@ボタン_コンフィグ_オートモード_使用する							183
#replace	@ボタン_コンフィグ_オートモード_初期設定							184
#replace	@イメージ_コンフィグ_オートモード_文字時間_前						185
#replace	@イメージ_コンフィグ_オートモード_文字時間_後						186
#replace	@イメージ_コンフィグ_オートモード_最小時間_前						187
#replace	@イメージ_コンフィグ_オートモード_最小時間_後						188
#replace	@イメージ_コンフィグ_オートモード_１０文字時間_前					189
#replace	@イメージ_コンフィグ_オートモード_１０文字時間_後					190

#replace	@ボタン_コンフィグ_音量設定_ミュート_マスター						191
#replace	@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭ							192
#replace	@ボタン_コンフィグ_音量設定_ミュート_ＢＧＭフェード					193
#replace	@ボタン_コンフィグ_音量設定_ミュート_音声							194
#replace	@ボタン_コンフィグ_音量設定_ミュート_効果音							195
#replace	@ボタン_コンフィグ_音量設定_ミュート_システム音						196
#replace	@ボタン_コンフィグ_音量設定_ミュート_ムービー						197
#replace	@ボタン_コンフィグ_音量設定_再生_マスター							198
#replace	@ボタン_コンフィグ_音量設定_再生_ＢＧＭ								199
#replace	@ボタン_コンフィグ_音量設定_再生_ＢＧＭフェード						200
#replace	@ボタン_コンフィグ_音量設定_再生_音声								201
#replace	@ボタン_コンフィグ_音量設定_再生_効果音								202
#replace	@ボタン_コンフィグ_音量設定_再生_システム音							203
#replace	@ボタン_コンフィグ_音量設定_再生_ムービー							204
#replace	@ボタン_コンフィグ_音量設定_初期設定								205
#replace	@ボタン_コンフィグ_再生設定_音声を続ける							206
#replace	@ボタン_コンフィグ_キャラクター別音声_全てオン						207
#replace	@ボタン_コンフィグ_キャラクター別音声_全てオフ						208
#replace	@ボタン_コンフィグ_キャラクター別音声_初期設定						209

#replace	@ボタン_コンフィグ_キャラクター１_ミュート							210
#replace	@ボタン_コンフィグ_キャラクター２_ミュート							211
#replace	@ボタン_コンフィグ_キャラクター３_ミュート							212
#replace	@ボタン_コンフィグ_キャラクター４_ミュート							213
#replace	@ボタン_コンフィグ_キャラクター５_ミュート							214
#replace	@ボタン_コンフィグ_キャラクター６_ミュート							215
#replace	@ボタン_コンフィグ_キャラクター７_ミュート							216
#replace	@ボタン_コンフィグ_キャラクター８_ミュート							217
#replace	@ボタン_コンフィグ_キャラクター９_ミュート							218
#replace	@ボタン_コンフィグ_キャラクター１０_ミュート						219
#replace	@ボタン_コンフィグ_キャラクター１１_ミュート						220
#replace	@ボタン_コンフィグ_キャラクター１２_ミュート						221
#replace	@ボタン_コンフィグ_キャラクター１３_ミュート						222
#replace	@ボタン_コンフィグ_キャラクター１４_ミュート						223
#replace	@ボタン_コンフィグ_キャラクター１５_ミュート						224
#replace	@ボタン_コンフィグ_キャラクター１６_ミュート						225
#replace	@ボタン_コンフィグ_キャラクター１７_ミュート						226
#replace	@ボタン_コンフィグ_キャラクター１８_ミュート						227
#replace	@ボタン_コンフィグ_キャラクター１９_ミュート						228
#replace	@ボタン_コンフィグ_キャラクター２０_ミュート						229
#replace	@ボタン_コンフィグ_キャラクター１_ボイス再生						230
#replace	@ボタン_コンフィグ_キャラクター２_ボイス再生						231
#replace	@ボタン_コンフィグ_キャラクター３_ボイス再生						232
#replace	@ボタン_コンフィグ_キャラクター４_ボイス再生						233
#replace	@ボタン_コンフィグ_キャラクター５_ボイス再生						234
#replace	@ボタン_コンフィグ_キャラクター６_ボイス再生						235
#replace	@ボタン_コンフィグ_キャラクター７_ボイス再生						236
#replace	@ボタン_コンフィグ_キャラクター８_ボイス再生						237
#replace	@ボタン_コンフィグ_キャラクター９_ボイス再生						238
#replace	@ボタン_コンフィグ_キャラクター１０_ボイス再生						239
#replace	@ボタン_コンフィグ_キャラクター１１_ボイス再生						240
#replace	@ボタン_コンフィグ_キャラクター１２_ボイス再生						241
#replace	@ボタン_コンフィグ_キャラクター１３_ボイス再生						242
#replace	@ボタン_コンフィグ_キャラクター１４_ボイス再生						243
#replace	@ボタン_コンフィグ_キャラクター１５_ボイス再生						244
#replace	@ボタン_コンフィグ_キャラクター１６_ボイス再生						245
#replace	@ボタン_コンフィグ_キャラクター１７_ボイス再生						246
#replace	@ボタン_コンフィグ_キャラクター１８_ボイス再生						247
#replace	@ボタン_コンフィグ_キャラクター１９_ボイス再生						248
#replace	@ボタン_コンフィグ_キャラクター２０_ボイス再生						249

// スライダー／スライダーはバー、ハンドル２つのボタンを確保する
#replace	@スライダー_コンフィグ_文字設定_メッセージ速度						300
#replace	@スライダー_コンフィグ_ウィンドウ背景_赤							302
#replace	@スライダー_コンフィグ_ウィンドウ背景_緑							304
#replace	@スライダー_コンフィグ_ウィンドウ背景_青							306
#replace	@スライダー_コンフィグ_ウィンドウ背景_不透明度						308
#replace	@スライダー_コンフィグ_オートモード_文字時間						310
#replace	@スライダー_コンフィグ_オートモード_最小時間						312
#replace	@スライダー_コンフィグ_音量設定_マスター							314
#replace	@スライダー_コンフィグ_音量設定_ＢＧＭ								316
#replace	@スライダー_コンフィグ_音量設定_ＢＧＭフェード						318
#replace	@スライダー_コンフィグ_音量設定_音声								320
#replace	@スライダー_コンフィグ_音量設定_効果音								322
#replace	@スライダー_コンフィグ_音量設定_システム音							324
#replace	@スライダー_コンフィグ_音量設定_ムービー							326
#replace	@スライダー_コンフィグ_キャラクター１_音量							328
#replace	@スライダー_コンフィグ_キャラクター２_音量							330
#replace	@スライダー_コンフィグ_キャラクター３_音量							332
#replace	@スライダー_コンフィグ_キャラクター４_音量							334
#replace	@スライダー_コンフィグ_キャラクター５_音量							336
#replace	@スライダー_コンフィグ_キャラクター６_音量							338
#replace	@スライダー_コンフィグ_キャラクター７_音量							340
#replace	@スライダー_コンフィグ_キャラクター８_音量							342
#replace	@スライダー_コンフィグ_キャラクター９_音量							344
#replace	@スライダー_コンフィグ_キャラクター１０_音量						346
#replace	@スライダー_コンフィグ_キャラクター１１_音量						348
#replace	@スライダー_コンフィグ_キャラクター１２_音量						350
#replace	@スライダー_コンフィグ_キャラクター１３_音量						352
#replace	@スライダー_コンフィグ_キャラクター１４_音量						354
#replace	@スライダー_コンフィグ_キャラクター１５_音量						356
#replace	@スライダー_コンフィグ_キャラクター１６_音量						358
#replace	@スライダー_コンフィグ_キャラクター１７_音量						360
#replace	@スライダー_コンフィグ_キャラクター１８_音量						362
#replace	@スライダー_コンフィグ_キャラクター１９_音量						364
#replace	@スライダー_コンフィグ_キャラクター２０_音量						366

#replace	@コンフィグ_コンテンツ_最大											379

// ヘッダー
#replace	@ボタン_コンフィグ_ヘッダー_システム								380
#replace	@ボタン_コンフィグ_ヘッダー_テキスト								381
#replace	@ボタン_コンフィグ_ヘッダー_サウンド								382

#replace	@コンフィグ_最大													385

// ゲームパッド動作
#replace	@スライダー動作_コンフィグ_文字設定_メッセージ速度_下げる			-50
#replace	@スライダー動作_コンフィグ_文字設定_メッセージ速度_上げる			-51
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_赤_下げる					-52
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_赤_上げる					-53
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_緑_下げる					-54
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_緑_上げる					-55
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_青_下げる					-56
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_青_上げる					-57
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_不透明度_下げる			-58
#replace	@スライダー動作_コンフィグ_ウィンドウ背景_不透明度_上げる			-59
#replace	@スライダー動作_コンフィグ_オートモード_文字時間_下げる				-60
#replace	@スライダー動作_コンフィグ_オートモード_文字時間_上げる				-61
#replace	@スライダー動作_コンフィグ_オートモード_最小時間_下げる				-62
#replace	@スライダー動作_コンフィグ_オートモード_最小時間_上げる				-63
#replace	@スライダー動作_コンフィグ_音量設定_マスター_下げる					-64
#replace	@スライダー動作_コンフィグ_音量設定_マスター_上げる					-65
#replace	@スライダー動作_コンフィグ_音量設定_ＢＧＭ_下げる					-66
#replace	@スライダー動作_コンフィグ_音量設定_ＢＧＭ_上げる					-67
#replace	@スライダー動作_コンフィグ_音量設定_ＢＧＭフェード_下げる			-68
#replace	@スライダー動作_コンフィグ_音量設定_ＢＧＭフェード_上げる			-69
#replace	@スライダー動作_コンフィグ_音量設定_音声_下げる						-70
#replace	@スライダー動作_コンフィグ_音量設定_音声_上げる						-71
#replace	@スライダー動作_コンフィグ_音量設定_効果音_下げる					-72
#replace	@スライダー動作_コンフィグ_音量設定_効果音_上げる					-73
#replace	@スライダー動作_コンフィグ_音量設定_システム音_下げる				-74
#replace	@スライダー動作_コンフィグ_音量設定_システム音_上げる				-75
#replace	@スライダー動作_コンフィグ_音量設定_ムービー_下げる					-76
#replace	@スライダー動作_コンフィグ_音量設定_ムービー_上げる					-77
#replace	@スライダー動作_コンフィグ_キャラクター１音声_下げる				-78
#replace	@スライダー動作_コンフィグ_キャラクター１音声_上げる				-79
#replace	@スライダー動作_コンフィグ_キャラクター２音声_下げる				-80
#replace	@スライダー動作_コンフィグ_キャラクター２音声_上げる				-81
#replace	@スライダー動作_コンフィグ_キャラクター３音声_下げる				-82
#replace	@スライダー動作_コンフィグ_キャラクター３音声_上げる				-83
#replace	@スライダー動作_コンフィグ_キャラクター４音声_下げる				-84
#replace	@スライダー動作_コンフィグ_キャラクター４音声_上げる				-85
#replace	@スライダー動作_コンフィグ_キャラクター５音声_下げる				-86
#replace	@スライダー動作_コンフィグ_キャラクター５音声_上げる				-87
#replace	@スライダー動作_コンフィグ_キャラクター６音声_下げる				-88
#replace	@スライダー動作_コンフィグ_キャラクター６音声_上げる				-89
#replace	@スライダー動作_コンフィグ_キャラクター７音声_下げる				-90
#replace	@スライダー動作_コンフィグ_キャラクター７音声_上げる				-91
#replace	@スライダー動作_コンフィグ_キャラクター８音声_下げる				-92
#replace	@スライダー動作_コンフィグ_キャラクター８音声_上げる				-93
#replace	@スライダー動作_コンフィグ_キャラクター９音声_下げる				-94
#replace	@スライダー動作_コンフィグ_キャラクター９音声_上げる				-95
#replace	@スライダー動作_コンフィグ_キャラクター１０音声_下げる				-96
#replace	@スライダー動作_コンフィグ_キャラクター１０音声_上げる				-97
#replace	@スライダー動作_コンフィグ_キャラクター１１音声_下げる				-98
#replace	@スライダー動作_コンフィグ_キャラクター１１音声_上げる				-99
#replace	@スライダー動作_コンフィグ_キャラクター１２音声_下げる				-100
#replace	@スライダー動作_コンフィグ_キャラクター１２音声_上げる				-101
#replace	@スライダー動作_コンフィグ_キャラクター１３音声_下げる				-102
#replace	@スライダー動作_コンフィグ_キャラクター１３音声_上げる				-103
#replace	@スライダー動作_コンフィグ_キャラクター１４音声_下げる				-104
#replace	@スライダー動作_コンフィグ_キャラクター１４音声_上げる				-105
#replace	@スライダー動作_コンフィグ_キャラクター１５音声_下げる				-106
#replace	@スライダー動作_コンフィグ_キャラクター１５音声_上げる				-107
#replace	@スライダー動作_コンフィグ_キャラクター１６音声_下げる				-108
#replace	@スライダー動作_コンフィグ_キャラクター１６音声_上げる				-109
#replace	@スライダー動作_コンフィグ_キャラクター１７音声_下げる				-110
#replace	@スライダー動作_コンフィグ_キャラクター１７音声_上げる				-111
#replace	@スライダー動作_コンフィグ_キャラクター１８音声_下げる				-112
#replace	@スライダー動作_コンフィグ_キャラクター１８音声_上げる				-113
#replace	@スライダー動作_コンフィグ_キャラクター１９音声_下げる				-114
#replace	@スライダー動作_コンフィグ_キャラクター１９音声_上げる				-115
#replace	@スライダー動作_コンフィグ_キャラクター２０音声_下げる				-116
#replace	@スライダー動作_コンフィグ_キャラクター２０音声_上げる				-117

#define		@ボタン_コンフィグ_現在のタブ							(@ボタン_コンフィグ_ヘッダー_システム + <CONFIG_MODE>)
#define		@ボタン_コンフィグ_現在の画面モード						$$get_config_radio_button_select(@ボタン_コンフィグ_画面モード_標準ウィンドウ)
#define		@ボタン_コンフィグ_現在の表示速度_キャラクター			$$get_config_radio_button_select(@ボタン_コンフィグ_表示速度_キャラクター_通常)
#define		@ボタン_コンフィグ_現在の表示速度_背景					$$get_config_radio_button_select(@ボタン_コンフィグ_表示速度_背景_通常)
#define		@ボタン_コンフィグ_現在の表示速度_イベントＣＧ			$$get_config_radio_button_select(@ボタン_コンフィグ_表示速度_イベントＣＧ_通常)
#define		@ボタン_コンフィグ_現在の表示速度_メッセージウィンドウ	$$get_config_radio_button_select(@ボタン_コンフィグ_表示速度_メッセージウィンドウ_通常)
#define		@ボタン_コンフィグ_現在の表示速度_システムメニュー		$$get_config_radio_button_select(@ボタン_コンフィグ_表示速度_システムメニュー_通常)
#define		@ボタン_コンフィグ_現在のメッセージスキップ				$$get_config_radio_button_select(@ボタン_コンフィグ_メッセージスキップ_既読のみ)
#define		@ボタン_コンフィグ_現在のオートセーブ					$$get_config_radio_button_select(@ボタン_コンフィグ_オートセーブ_無効)
#define		@ボタン_コンフィグ_現在のレコード表示					$$get_config_radio_button_select(@ボタン_コンフィグ_レコード表示_無効)
#define		@ボタン_コンフィグ_現在のタブレットモード				$$get_config_radio_button_select(@ボタン_コンフィグ_タブレットモード_無効)
#define		@ボタン_コンフィグ_現在の右クリック動作					$$get_config_radio_button_select(@ボタン_コンフィグ_右クリック_クイックメニュー)
#define		@ボタン_コンフィグ_現在のサイドバー						$$get_config_radio_button_select(@ボタン_コンフィグ_サイドバー_無効)
#define		@ボタン_コンフィグ_現在のフォント						$$get_config_radio_button_select(@ボタン_コンフィグ_文字設定_フォントＡ)

// データ関連
#command $$get_config_sample_text : str				// コンフィグ／テキストで表示するサンプルテキストを取得する
#command $$set_config_prefont_name(int, str)		// コンフィグに登録されているフォント名を設定する
#command $$get_prev_config_mode : int				// 前回のコンフィグモードを取得する
#command $$set_prev_config_mode(int)				// 前回のコンフィグモードを設定する

// シーンオブジェクト関連
#command $$update_config_ex(int)							// コンフィグ／多機能版を更新する

#command $$create_config_header_scene_object(stage)			// シーンオブジェクト（ヘッダー）を作成する

#command $$create_config_radio_button(object, str, int, int, int, int, int, int, int)		// コンフィグシーンで使用するラジオボタンを作成する
#command $$update_config_radio_button(stage, int, int, int)									// コンフィグシーンで使用するラジオボタンを更新する
#command $$get_config_radio_button_select(int) : int										// コンフィグシーンで使用するラジオボタンで選択されているボタンを取得する

#command $$create_config_automode_moji_wait_number1(object, str, int, int)					// オートモードの時間表示を作成する
#command $$create_config_automode_moji_wait_number2(object, str, int, int)					// オートモードの時間表示を作成する
#command $$create_config_automode_min_wait_number1(object, str, int, int)					// オートモードの時間表示を作成する
#command $$create_config_automode_min_wait_number2(object, str, int, int)					// オートモードの時間表示を作成する
#command $$create_config_automode_total_wait_number1(object, str, int, int)					// オートモードの時間表示を作成する
#command $$create_config_automode_total_wait_number2(object, str, int, int)					// オートモードの時間表示を作成する
#command $$create_config_text_sample_text(object, int, int, int, int, int)					// コンフィグシーンで使用するサンプルテキストを作成する



//---------------------------------------------------------------------------
// エクストラ／モード選択
//---------------------------------------------------------------------------
// ボタン
#replace	@ボタン_エクストラモード選択_閉じる				11
#replace	@ボタン_エクストラモード選択_グラフィック		12
#replace	@ボタン_エクストラモード選択_サウンド			13
#replace	@ボタン_エクストラモード選択_立ち絵鑑賞			14

// シーンオブジェクト関連
#command $$create_extra_mode_select_scene_object(stage)				// シーンオブジェクトを作成する
#command $$add_extra_mode_select_scene_object(stage)				// シーンオブジェクトを追加する
#command $$update_extra_mode_select_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_extra_mode_select_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_extra_mode_select_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_extra_mode_select_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$build_extra_mode_select_scene(stage)						// エクストラモード選択シーンを構成する


//---------------------------------------------------------------------------
// エクストラ／ＣＧ鑑賞
//---------------------------------------------------------------------------
// 最大数
#replace	@エクストラ_ＣＧ_タブ最大数					10
#replace	@エクストラ_ＣＧ_ページ最大数				10
#replace	@エクストラ_ＣＧ_サムネイル最大数			30

// オブジェクト
#replace	@オブジェクト_エクストラ_表示中のＣＧ		100

// ボタン
#replace	@ボタン_エクストラ_ＣＧ_閉じる				11
#replace	@ボタン_エクストラ_ＣＧ_タブ				12
#define		@ボタン_エクストラ_ＣＧ_タブ最大			(@ボタン_エクストラ_ＣＧ_タブ + @エクストラ_ＣＧ_タブ最大数)
#define		@ボタン_エクストラ_ＣＧ_ページ				(@ボタン_エクストラ_ＣＧ_タブ最大 + 1)
#define		@ボタン_エクストラ_ＣＧ_ページ最大			(@ボタン_エクストラ_ＣＧ_ページ + @エクストラ_ＣＧ_ページ最大数)
#define		@ボタン_エクストラ_ＣＧ_サムネイル			(@ボタン_エクストラ_ＣＧ_ページ最大 + 1)
#define		@ボタン_エクストラ_ＣＧ_サムネイル最大		(@ボタン_エクストラ_ＣＧ_サムネイル + @エクストラ_ＣＧ_サムネイル最大数)

#define		@ボタン_エクストラ_ＣＧ_現在のタブ			(@ボタン_エクストラ_ＣＧ_タブ + $$get_extra_cg_tab_index)
#define		@ボタン_エクストラ_ＣＧ_現在のページ		(@ボタン_エクストラ_ＣＧ_ページ + $$get_extra_cg_page_index)

// 描画更新タイプ
#replace	@エクストラ_ＣＧ_描画更新_タブ切り替え			0
#replace	@エクストラ_ＣＧ_描画更新_ページ切り替え		1

// データ取得
#define		@現在表示中のＣＧファイル名					$$get_extra_cg_disp_filename

// データ関連
#command $$set_extra_cg_thumb_max(int)						// イベントＣＧ鑑賞シーンの最大サムネイル数を設定する
#command $$set_extra_cg(int, int, str)						// イベントＣＧ鑑賞シーンで表示するイベントＣＧを設定する
#command $$get_extra_cg(int) : str							// イベントＣＧ鑑賞シーンで表示するイベントＣＧを取得する
#command $$get_extra_cg_cnt : int							// イベントＣＧ鑑賞シーンで表示するイベントＣＧ数を取得する
#command $$set_extra_cg_list								// イベントＣＧ鑑賞シーンで表示するイベントＣＧリストを設定する
															// ※各タイトルごとにextra_settings.ssで設定
#command $$get_extra_cg_tab_index : int						// 現在のタブを取得する
#command $$get_extra_cg_page_index : int					// 現在のページを取得する
#command $$get_extra_cg_disp_filename : str					// 現在表示中のＣＧファイル名を取得する

// シーンオブジェクト関連
#command $$create_extra_cg_scene_object(stage)				// シーンオブジェクトを作成する
#command $$update_extra_cg_scene_object(stage, int)			// シーンオブジェクトを更新する
#command $$redraw_extra_cg_scene_object(stage, int)			// シーンオブジェクトの再描画
#command $$show_extra_cg_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_extra_cg_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_extra_cg_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$show_extra_cg_diff(stage)					// イベントＣＧ鑑賞シーンのイベントＣＧを表示する
#command $$change_extra_cg_diff(stage)					// イベントＣＧ鑑賞シーンで閲覧中のＣＧ差分を変更する
#command $$hide_extra_cg_diff(stage)					// イベントＣＧ鑑賞シーンのイベントＣＧを非表示にする


//---------------------------------------------------------------------------
// エクストラ／サウンド鑑賞
//---------------------------------------------------------------------------
// 最大数
#replace	@エクストラ_サウンド_登録ＢＧＭ最大数			50

// ボタン
#replace	@ボタン_エクストラ_サウンド_閉じる				11
#replace	@ボタン_エクストラ_サウンド_再生				12
#replace	@ボタン_エクストラ_サウンド_停止				13
#replace	@ボタン_エクストラ_サウンド_前へ				14
#replace	@ボタン_エクストラ_サウンド_次へ				15
#replace	@ボタン_エクストラ_サウンド_サムネイル			16
#define		@ボタン_エクストラ_サウンド_サムネイル最大		(@ボタン_エクストラ_サウンド_サムネイル + @エクストラ_サウンド_登録ＢＧＭ最大数)
#define		@ボタン_エクストラ_サウンドスクロールビュー		(@ボタン_エクストラ_サウンド_サムネイル最大 + 1)

// データ関連
#command $$set_extra_music(int, str)						// サウンド鑑賞シーンで再生するＢＧＭを設定する
#command $$get_extra_music(int) : str						// サウンド鑑賞シーンで再生するＢＧＭを取得する
#command $$get_extra_music_cnt : int						// サウンド鑑賞シーンで再生するＢＧＭ数を取得する
#command $$set_extra_music_list								// サウンド鑑賞シーンで再生するＢＧＭリストを設定する
															// ※各タイトルごとにextra_settings.ssで設定

// シーンオブジェクト関連
#command $$create_extra_sound_scene_object(stage)			// シーンオブジェクトを作成する
#command $$update_extra_sound_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_extra_sound_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_extra_sound_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_extra_sound_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$create_extra_sound_play_button(object, str, int, int, int, int, int)		// サウンド鑑賞シーンで使用する再生ボタンを作成する


//---------------------------------------------------------------------------
// エクストラ／立ち絵鑑賞
//---------------------------------------------------------------------------
// 最大登録数
#replace	@登録_立ち絵鑑賞_背景最大数						200
#replace	@登録_立ち絵鑑賞_立ち絵最大数					20
#replace	@登録_立ち絵鑑賞_服装最大数						10
#replace	@登録_立ち絵鑑賞_ポーズ最大数					10
#replace	@登録_立ち絵鑑賞_表情最大数						40
#replace	@登録_立ち絵鑑賞_表情パターン最大数				100

// オブジェクト
#replace	@オブジェクト_立ち絵鑑賞_背景					0
#replace	@オブジェクト_立ち絵鑑賞_立ち絵					1
#define		@オブジェクト_立ち絵鑑賞_立ち絵_最大			(@オブジェクト_立ち絵鑑賞_立ち絵 + @登録_立ち絵鑑賞_立ち絵最大数)
#replace	@イメージ_立ち絵鑑賞_ヘッダー					30
#replace	@イメージ_立ち絵鑑賞_表示／非表示フレーム		31
#replace	@フレーム_立ち絵鑑賞_距離						32
#replace	@フレーム_立ち絵鑑賞_ブラー背景					33
#replace	@フレーム_立ち絵鑑賞_操作パネル					34
#replace	@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前		400
#replace	@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文		401
#replace	@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前		406
#replace	@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文		407
#replace	@イメージ_立ち絵鑑賞_編集_入力_背景				408
#replace	@イメージ_立ち絵鑑賞_ダイアログ_フィルター		410
#replace	@イメージ_立ち絵鑑賞_ダイアログ_背景			411
#replace	@イメージ_立ち絵鑑賞_ダイアログ_メッセージ		412

// ボタン
#replace	@ボタン_立ち絵鑑賞_閉じる						35
#replace	@ボタン_エクストラ_ギャラリー					36
#replace	@ボタン_エクストラ_レコード						37
#replace	@ボタン_エクストラ_キャラクター					38
#replace	@ボタン_エクストラ_タイトル						39
#replace	@ボタン_立ち絵鑑賞_距離_遠						40
#replace	@ボタン_立ち絵鑑賞_距離_中						41
#replace	@ボタン_立ち絵鑑賞_距離_近						42
#replace	@ボタン_立ち絵鑑賞_ブラー背景_オン				45
#replace	@ボタン_立ち絵鑑賞_ブラー背景_オフ				46
#replace	@ボタン_立ち絵鑑賞_操作パネル_閉じる			50
#replace	@ボタン_立ち絵鑑賞_操作パネル_セーブ			51
#replace	@ボタン_立ち絵鑑賞_操作パネル_ロード			52
#replace	@ボタン_立ち絵鑑賞_操作パネル_テキスト編集		53
#replace	@ボタン_立ち絵鑑賞_操作パネル_位置移動			54
#replace	@ボタン_立ち絵鑑賞_操作パネル_位置初期化		55
#replace	@ボタン_立ち絵鑑賞_操作パネル_全初期化			56
#replace	@ボタン_立ち絵鑑賞_表示／非表示					60
#define		@ボタン_立ち絵鑑賞_表示／非表示_最大			(@ボタン_立ち絵鑑賞_表示／非表示 + @登録_立ち絵鑑賞_立ち絵最大数)
#replace	@サムネイルリスト_立ち絵鑑賞_背景				100
#define		@ボタン_立ち絵鑑賞_背景_フレーム				(@サムネイルリスト_立ち絵鑑賞_背景 + 0)
#define		@ボタン_立ち絵鑑賞_背景_戻る					(@サムネイルリスト_立ち絵鑑賞_背景 + 1)
#define		@ボタン_立ち絵鑑賞_背景_進む					(@サムネイルリスト_立ち絵鑑賞_背景 + 2)
#define		@ボタン_立ち絵鑑賞_背景_サムネイル				(@サムネイルリスト_立ち絵鑑賞_背景 + 3)
#define		@ボタン_立ち絵鑑賞_背景_サムネイル_最大			(@ボタン_立ち絵鑑賞_背景_サムネイル + @登録_立ち絵鑑賞_背景最大数)
#replace	@サムネイルリスト_立ち絵鑑賞_服装				310
#define		@ボタン_立ち絵鑑賞_服装_フレーム				(@サムネイルリスト_立ち絵鑑賞_服装 + 0)
#define		@ボタン_立ち絵鑑賞_服装_戻る					(@サムネイルリスト_立ち絵鑑賞_服装 + 1)
#define		@ボタン_立ち絵鑑賞_服装_進む					(@サムネイルリスト_立ち絵鑑賞_服装 + 2)
#define		@ボタン_立ち絵鑑賞_服装_サムネイル				(@サムネイルリスト_立ち絵鑑賞_服装 + 3)
#define		@ボタン_立ち絵鑑賞_服装_サムネイル_最大			(@ボタン_立ち絵鑑賞_服装_サムネイル + @登録_立ち絵鑑賞_服装最大数)
#replace	@サムネイルリスト_立ち絵鑑賞_ポーズ				330
#define		@ボタン_立ち絵鑑賞_ポーズ_フレーム				(@サムネイルリスト_立ち絵鑑賞_ポーズ + 0)
#define		@ボタン_立ち絵鑑賞_ポーズ_戻る					(@サムネイルリスト_立ち絵鑑賞_ポーズ + 1)
#define		@ボタン_立ち絵鑑賞_ポーズ_進む					(@サムネイルリスト_立ち絵鑑賞_ポーズ + 2)
#define		@ボタン_立ち絵鑑賞_ポーズ_サムネイル			(@サムネイルリスト_立ち絵鑑賞_ポーズ + 3)
#define		@ボタン_立ち絵鑑賞_ポーズ_サムネイル_最大		(@ボタン_立ち絵鑑賞_ポーズ_サムネイル + @登録_立ち絵鑑賞_ポーズ最大数)
#replace	@サムネイルリスト_立ち絵鑑賞_表情				350
#define		@ボタン_立ち絵鑑賞_表情_フレーム				(@サムネイルリスト_立ち絵鑑賞_表情 + 0)
#define		@ボタン_立ち絵鑑賞_表情_戻る					(@サムネイルリスト_立ち絵鑑賞_表情 + 1)
#define		@ボタン_立ち絵鑑賞_表情_進む					(@サムネイルリスト_立ち絵鑑賞_表情 + 2)
#define		@ボタン_立ち絵鑑賞_表情_サムネイル				(@サムネイルリスト_立ち絵鑑賞_表情 + 3)
#define		@ボタン_立ち絵鑑賞_表情_サムネイル_最大			(@ボタン_立ち絵鑑賞_表情_サムネイル + @登録_立ち絵鑑賞_表情最大数)
#replace	@ボタン_立ち絵鑑賞_編集_名前変更				402
#replace	@ボタン_立ち絵鑑賞_編集_テキスト変更			403
#replace	@ボタン_立ち絵鑑賞_編集_ウィンドウ表示			404
#replace	@ボタン_立ち絵鑑賞_編集_閉じる					405
#replace	@ボタン_立ち絵鑑賞_ダイアログ_はい				413
#replace	@ボタン_立ち絵鑑賞_ダイアログ_いいえ			414

#define		@立ち絵鑑賞_メインＵＩ_開始						30
#define		@立ち絵鑑賞_メインＵＩ_終了						399
#define		@立ち絵鑑賞_編集ＵＩ_開始						400
#define		@立ち絵鑑賞_編集ＵＩ_終了						408
#define		@立ち絵鑑賞_ダイアログＵＩ_開始					410
#define		@立ち絵鑑賞_ダイアログＵＩ_終了					414

// ゲームパッド動作
#replace	@動作_立ち絵鑑賞_背景_サムネイル_前へ			-11
#replace	@動作_立ち絵鑑賞_背景_サムネイル_次へ			-12
#replace	@動作_立ち絵鑑賞_服装_サムネイル_前へ			-13
#replace	@動作_立ち絵鑑賞_服装_サムネイル_次へ			-14
#replace	@動作_立ち絵鑑賞_ポーズ_サムネイル_前へ			-15
#replace	@動作_立ち絵鑑賞_ポーズ_サムネイル_次へ			-16
#replace	@動作_立ち絵鑑賞_表情_サムネイル_前へ			-17
#replace	@動作_立ち絵鑑賞_表情_サムネイル_次へ			-18

// データ関連
#define		@立ち絵鑑賞_登録されている背景の数				$$get_extra_character_register_bg_max
#define		@立ち絵鑑賞_登録されているキャラクターの数		$$get_extra_character_register_ch_max
#define		@立ち絵鑑賞_フォーカス中のキャラクター			$$get_extra_character_focus_ch
#define		@ボタン_立ち絵鑑賞_距離_選択中					$$get_extra_character_select_ch_range_button
#define		@ボタン_立ち絵鑑賞_ブラー背景_選択中			$$get_extra_character_select_bg_blur_button
#define		@立ち絵鑑賞_名前欄_最大文字数					$$get_extra_character_mw_len_max(0)
#define		@立ち絵鑑賞_本文欄_最大文字数					$$get_extra_character_mw_len_max(1)

#command $$get_extra_character_register_bg_max : int			// 立ち絵鑑賞に登録されている背景の数を取得する
#command $$get_extra_character_register_ch_max : int			// 立ち絵鑑賞に登録されているキャラクターの数を取得する
#command $$get_extra_character_focus_ch : int					// フォーカス中のキャラクターの登録番号を取得する
#command $$get_extra_character_select_ch_range_button : int		// 距離で選択中のボタンを取得する
#command $$get_extra_character_select_bg_blur_button : int		// ブラー背景で選択中のボタンを取得する

#command $$set_extra_character_list										// 立ち絵鑑賞シーンで使用する各データを設定する
#command $$set_extra_character_bg_list(str)								// 背景リストに指定した背景を追加する
#command $$set_extra_character_bs_list(str)								// 立ち絵リストに指定した立ち絵を追加する
#command $$set_extra_character_dress_list(str, int, int)				// 服装リストに指定した服装を追加する
#command $$set_extra_character_pose_list(str, int, int)					// ポーズリストに指定したポーズを追加する
#command $$set_extra_character_face_list(str, int, int, int)			// 表情リストに指定した表情を追加する
#command $$set_extra_character_face_pat_list(str, int, int, int, int)	// 表情パターンリストに指定した表情パターンを追加する
#command $$set_extra_character_mw_pos(int, int, int)					// メッセージウィンドウのテキスト位置を設定する
#command $$set_extra_character_mw_default_text(int, str)				// メッセージウィンドウに表示されるデフォルトのテキストを設定する
#command $$set_extra_character_mw_text_center(int, int)					// メッセージウィンドウに表示されるテキストのセンタリングを設定する
#command $$get_extra_character_mw_len_max(int) : int					// メッセージウィンドウに表示されるテキストの最大文字数を取得する
#command $$set_extra_character_mw_len_max(int, int)						// メッセージウィンドウに表示されるテキストの最大文字数を設定する
#command $$set_extra_character_editbox(int, int, int, int, int)			// エディットボックスを設定する

#command $$get_extra_character_save_filename : str				// 立ち絵鑑賞保存時に使用するファイル名を取得する

// シーンオブジェクト関連
#command $$create_extra_character_scene_object(stage)			// シーンオブジェクトを作成する
#command $$show_extra_character_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_extra_character_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_extra_character_joypad_navigation(stage)			// パッド入力の遷移を設定する
#command $$update_extra_character_joypad_navigation(stage)		// パッド入力の遷移を更新する

// マクロ
#macro		@立ち絵鑑賞_背景登録(@bg_name)
	$$set_extra_character_bg_list(@bg_name)

#macro		@立ち絵鑑賞_立ち絵登録(@bs_name)
	$$set_extra_character_bs_list(@bs_name)

#macro		@立ち絵鑑賞_服装登録(@bs_name, @dress1, @dress2(-1), @dress3(-1), @dress4(-1), @dress5(-1), @dress6(-1), @dress7(-1), @dress8(-1), @dress9(-1), @dress10(-1))
	$$set_extra_character_dress_list(@bs_name, 0, @dress1)
	$$set_extra_character_dress_list(@bs_name, 1, @dress2)
	$$set_extra_character_dress_list(@bs_name, 2, @dress3)
	$$set_extra_character_dress_list(@bs_name, 3, @dress4)
	$$set_extra_character_dress_list(@bs_name, 4, @dress5)
	$$set_extra_character_dress_list(@bs_name, 5, @dress6)
	$$set_extra_character_dress_list(@bs_name, 6, @dress7)
	$$set_extra_character_dress_list(@bs_name, 7, @dress8)
	$$set_extra_character_dress_list(@bs_name, 8, @dress9)
	$$set_extra_character_dress_list(@bs_name, 9, @dress10)

#macro		@立ち絵鑑賞_ポーズ登録(@bs_name, @pose1, @pose2(-1), @pose3(-1), @pose4(-1), @pose5(-1), @pose6(-1), @pose7(-1), @pose8(-1), @pose9(-1), @pose10(-1))
	$$set_extra_character_pose_list(@bs_name, 0, @pose1)
	$$set_extra_character_pose_list(@bs_name, 1, @pose2)
	$$set_extra_character_pose_list(@bs_name, 2, @pose3)
	$$set_extra_character_pose_list(@bs_name, 3, @pose4)
	$$set_extra_character_pose_list(@bs_name, 4, @pose5)
	$$set_extra_character_pose_list(@bs_name, 5, @pose6)
	$$set_extra_character_pose_list(@bs_name, 6, @pose7)
	$$set_extra_character_pose_list(@bs_name, 7, @pose8)
	$$set_extra_character_pose_list(@bs_name, 8, @pose9)
	$$set_extra_character_pose_list(@bs_name, 9, @pose10)

#macro		@立ち絵鑑賞_表情登録(@face_pat, @bs_name,      @face1,  @face2(-1),  @face3(-1),  @face4(-1),  @face5(-1),  @face6(-1),  @face7(-1),  @face8(-1),  @face9(-1), @face10(-1),
													  @face11(-1), @face12(-1), @face13(-1), @face14(-1), @face15(-1), @face16(-1), @face17(-1), @face18(-1), @face19(-1), @face20(-1),
													  @face21(-1), @face22(-1), @face23(-1), @face24(-1), @face25(-1), @face26(-1), @face27(-1), @face28(-1), @face29(-1), @face30(-1),
													  @face31(-1), @face32(-1), @face33(-1), @face34(-1), @face35(-1), @face36(-1), @face37(-1), @face38(-1), @face39(-1), @face40(-1))
	$$set_extra_character_face_list(@bs_name, @face_pat,  0, @face1)
	$$set_extra_character_face_list(@bs_name, @face_pat,  1, @face2)
	$$set_extra_character_face_list(@bs_name, @face_pat,  2, @face3)
	$$set_extra_character_face_list(@bs_name, @face_pat,  3, @face4)
	$$set_extra_character_face_list(@bs_name, @face_pat,  4, @face5)
	$$set_extra_character_face_list(@bs_name, @face_pat,  5, @face6)
	$$set_extra_character_face_list(@bs_name, @face_pat,  6, @face7)
	$$set_extra_character_face_list(@bs_name, @face_pat,  7, @face8)
	$$set_extra_character_face_list(@bs_name, @face_pat,  8, @face9)
	$$set_extra_character_face_list(@bs_name, @face_pat,  9, @face10)
	$$set_extra_character_face_list(@bs_name, @face_pat, 10, @face11)
	$$set_extra_character_face_list(@bs_name, @face_pat, 11, @face12)
	$$set_extra_character_face_list(@bs_name, @face_pat, 12, @face13)
	$$set_extra_character_face_list(@bs_name, @face_pat, 13, @face14)
	$$set_extra_character_face_list(@bs_name, @face_pat, 14, @face15)
	$$set_extra_character_face_list(@bs_name, @face_pat, 15, @face16)
	$$set_extra_character_face_list(@bs_name, @face_pat, 16, @face17)
	$$set_extra_character_face_list(@bs_name, @face_pat, 17, @face18)
	$$set_extra_character_face_list(@bs_name, @face_pat, 18, @face19)
	$$set_extra_character_face_list(@bs_name, @face_pat, 19, @face20)
	$$set_extra_character_face_list(@bs_name, @face_pat, 20, @face21)
	$$set_extra_character_face_list(@bs_name, @face_pat, 21, @face22)
	$$set_extra_character_face_list(@bs_name, @face_pat, 22, @face23)
	$$set_extra_character_face_list(@bs_name, @face_pat, 23, @face24)
	$$set_extra_character_face_list(@bs_name, @face_pat, 24, @face25)
	$$set_extra_character_face_list(@bs_name, @face_pat, 25, @face26)
	$$set_extra_character_face_list(@bs_name, @face_pat, 26, @face27)
	$$set_extra_character_face_list(@bs_name, @face_pat, 27, @face28)
	$$set_extra_character_face_list(@bs_name, @face_pat, 28, @face29)
	$$set_extra_character_face_list(@bs_name, @face_pat, 29, @face30)
	$$set_extra_character_face_list(@bs_name, @face_pat, 30, @face31)
	$$set_extra_character_face_list(@bs_name, @face_pat, 31, @face32)
	$$set_extra_character_face_list(@bs_name, @face_pat, 32, @face33)
	$$set_extra_character_face_list(@bs_name, @face_pat, 33, @face34)
	$$set_extra_character_face_list(@bs_name, @face_pat, 34, @face35)
	$$set_extra_character_face_list(@bs_name, @face_pat, 35, @face36)
	$$set_extra_character_face_list(@bs_name, @face_pat, 36, @face37)
	$$set_extra_character_face_list(@bs_name, @face_pat, 37, @face38)
	$$set_extra_character_face_list(@bs_name, @face_pat, 38, @face39)
	$$set_extra_character_face_list(@bs_name, @face_pat, 39, @face40)

#macro		@立ち絵鑑賞_表情パターン登録(@face_pat, @bs_name, @dress(-1), @direction(-1), @arms(-1))
	$$set_extra_character_face_pat_list(@bs_name, @face_pat, @dress, @direction, @arms)

#macro		@立ち絵鑑賞_名前欄_位置登録(@x, @y)			$$set_extra_character_mw_pos(0, @x, @y)
#macro		@立ち絵鑑賞_本文欄_位置登録(@x, @y)			$$set_extra_character_mw_pos(1, @x, @y)
#macro		@立ち絵鑑賞_デフォルト名前欄登録(@text)		$$set_extra_character_mw_default_text(0, @text)
#macro		@立ち絵鑑賞_デフォルト本文欄登録(@text)		$$set_extra_character_mw_default_text(1, @text)
#macro		@立ち絵鑑賞_名前欄_最大文字数登録(@len)		$$set_extra_character_mw_len_max(0, @len)
#macro		@立ち絵鑑賞_本文欄_最大文字数登録(@len)		$$set_extra_character_mw_len_max(1, @len)
#macro		@立ち絵鑑賞_名前欄_センタリング_オン		$$set_extra_character_mw_text_center(0, 1)

#macro		@立ち絵鑑賞_エディットボックス登録(@x, @y, @w, @h, @moji_size)
	$$set_extra_character_editbox(@x, @y, @w, @h, @moji_size)


//---------------------------------------------------------------------------
// チャプター
//---------------------------------------------------------------------------
// 最大数
#replace	@チャプター_ページ最大数				10
#replace	@チャプター_サムネイル最大数			30

// ボタン
#replace	@ボタン_チャプター_閉じる				11
#replace	@ボタン_チャプター_ページ				12
#define		@ボタン_チャプター_ページ最大			(@ボタン_チャプター_ページ + @チャプター_ページ最大数)
#define		@ボタン_チャプター_サムネイル			(@ボタン_チャプター_ページ最大 + 1)
#define		@ボタン_チャプター_サムネイル最大		(@ボタン_チャプター_サムネイル + @チャプター_サムネイル最大数)

#define		@ボタン_チャプター_現在のページ			(@ボタン_チャプター_ページ + <CHAPTER_PAGE>)

// 描画更新タイプ
#replace	@チャプター_描画更新_ページ切り替え		1

// データ関連
#command $$set_extra_chapter_thumb_max(int)				// チャプター選択シーンの最大サムネイル数を設定する
#command $$set_extra_chapter(int, int, str, int)		// チャプター選択シーンで遷移するチャプターを設定する
#command $$set_extra_chapter_list						// チャプター選択シーンで遷移するチャプターリストを設定する
														// ※各タイトルごとにextra_settings.ssで設定
#command $$execute_chapter_jump(int)					// チャプター遷移を実行する

// シーンオブジェクト関連
#command $$create_chapter_scene_object(stage)			// シーンオブジェクトを作成する
#command $$update_chapter_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$redraw_chapter_scene_object(stage, int)		// シーンオブジェクトの再描画
#command $$show_chapter_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_chapter_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$hide_scene_object_in_chapter_jump(stage)		// シーンオブジェクトを非表示にする(チャプタージャンプ実行)
#command $$set_chapter_joypad_navigation(stage)			// パッド入力の遷移を設定する


//---------------------------------------------------------------------------
// 確認ダイアログ
//---------------------------------------------------------------------------
// オブジェクト
#define		@オブジェクト_確認ダイアログ_背景			(<OBJ_MODAL> + 0)
#define		@オブジェクト_確認ダイアログ_ベース			(<OBJ_MODAL> + 1)
#define		@オブジェクト_確認ダイアログ_メッセージ		(<OBJ_MODAL> + 2)

// ボタン
#define		@ボタン_確認ダイアログ_はい					(<OBJ_MODAL> + 11)
#define		@ボタン_確認ダイアログ_いいえ				(<OBJ_MODAL> + 12)
#define		@ボタン_確認ダイアログ_ＯＫ					(<OBJ_MODAL> + 13)
#define		@ボタン_確認ダイアログ_チェックボックス		(<OBJ_MODAL> + 14)

// タイプ
#replace	@確認ダイアログ_タイプ_はいいいえ			0
#replace	@確認ダイアログ_タイプ_ＯＫ					1
#replace	@確認ダイアログ_タイプ_セーブ				2

#define		@確認ダイアログ_現在のタイプ				$$get_dialog_type

// モード
#replace	@確認ダイアログ_モード_セーブ					0
#replace	@確認ダイアログ_モード_クイックセーブ			1
#replace	@確認ダイアログ_モード_上書きセーブ				2
#replace	@確認ダイアログ_モード_ロード					3
#replace	@確認ダイアログ_モード_クイックロード			4
#replace	@確認ダイアログ_モード_前の選択肢に戻る			5
#replace	@確認ダイアログ_モード_バックログジャンプ		6
#replace	@確認ダイアログ_モード_セーブデータ削除			7
#replace	@確認ダイアログ_モード_セーブデータ入れ替え		8
#replace	@確認ダイアログ_モード_タイトルに戻る			9
#replace	@確認ダイアログ_モード_エクストラに戻る			10
#replace	@確認ダイアログ_モード_ゲームを終了する			11
#replace	@確認ダイアログ_モード_初期設定に戻す			12
#replace	@確認ダイアログ_モード_オートセーブ上書き		13

#define		@確認ダイアログ_現在のモード					$$get_dialog_mode

// 確認ダイアログ呼び出し
#command $$call_yesno_dialog(int) : int							// はい／いいえ確認ダイアログを呼び出す
#command $$call_saveload_yesno_dialog(int, int) : int			// はい／いいえ確認ダイアログを呼び出す(セーブ／ロード用)
#command $$call_saveload_swap_yesno_dialog(int, int, int) : int	// はい／いいえ確認ダイアログを呼び出す(セーブデータ入れ替え用)
#command $$call_ok_dialog(int) : int							// ＯＫ確認ダイアログを呼び出す

// データ関連
#command $$get_dialog_type : int					// ダイアログタイプを取得する
#command $$get_dialog_mode : int					// ダイアログモードを取得する
#command $$get_dialog_text(int) : str				// 確認ダイアログで表示するテキストを取得する

// シーンオブジェクト関連
#command $$create_yesno_dialog_scene_object(stage)			// シーンオブジェクトを作成する(はい／いいえ)
#command $$update_yesno_dialog_scene_object(stage, int)		// シーンオブジェクトを更新する(はい／いいえ)
#command $$show_yesno_dialog_scene_object(stage)			// シーンオブジェクトを表示する(はい／いいえ)
#command $$hide_yesno_dialog_scene_object(stage)			// シーンオブジェクトを非表示にする(はい／いいえ)
#command $$set_yesno_dialog_joypad_navigation(stage)		// パッド入力の遷移を設定する(はい／いいえ)

#command $$create_dialog_message(object, str, int, int)								// ダイアログシーンで使用するメッセージを作成する
#command $$create_dialog_system_font_message(object, int, int, int, int, int)		// ダイアログシーンで使用するシステム文字を使用したメッセージを作成する
#command $$create_dialog_redisp_checkbox(object, str, int, int, int, int, int)		// ダイアログシーンで使用する再表示チェックボックスを作成する

#command $$create_ok_dialog_scene_object(stage)				// シーンオブジェクトを作成する(ＯＫ)
#command $$update_ok_dialog_scene_object(stage, int)		// シーンオブジェクトを更新する(ＯＫ)
#command $$show_ok_dialog_scene_object(stage)				// シーンオブジェクトを表示する(ＯＫ)
#command $$hide_ok_dialog_scene_object(stage)				// シーンオブジェクトを非表示にする(ＯＫ)


//---------------------------------------------------------------------------
// セーブ／ロードダイアログ
//---------------------------------------------------------------------------
// オブジェクト
#define		@セーブロード_ダイアログ_背景				(<OBJ_MODAL> + 0)
#define		@セーブロード_ダイアログ_ベース				(<OBJ_MODAL> + 1)
#define		@セーブロード_ダイアログ_サムネイル			(<OBJ_MODAL> + 2)
#define		@セーブロード_ダイアログ_フレーム			(<OBJ_MODAL> + 3)
#define		@セーブロード_ダイアログ_日付_年			(<OBJ_MODAL> + 4)
#define		@セーブロード_ダイアログ_日付_月			(<OBJ_MODAL> + 5)
#define		@セーブロード_ダイアログ_日付_日			(<OBJ_MODAL> + 6)
#define		@セーブロード_ダイアログ_日付_時			(<OBJ_MODAL> + 7)
#define		@セーブロード_ダイアログ_日付_分			(<OBJ_MODAL> + 8)
#define		@セーブロード_ダイアログ_セーブタイトル		(<OBJ_MODAL> + 9)
#define		@セーブロード_ダイアログ_セーブメッセージ	(<OBJ_MODAL> + 10)

// ボタン
#define		@ボタン_セーブロード_ダイアログ_閉じる			(<OBJ_MODAL> + 11)
#define		@ボタン_セーブロード_ダイアログ_上書きセーブ	(<OBJ_MODAL> + 12)
#define		@ボタン_セーブロード_ダイアログ_ロード			(<OBJ_MODAL> + 13)
#define		@ボタン_セーブロード_ダイアログ_削除			(<OBJ_MODAL> + 14)

// 確認ダイアログ呼び出し
#command $$call_saveload_dialog(int) : int

#command $$create_saveload_dialog_scene_object(stage)			// シーンオブジェクトを作成する
#command $$update_saveload_dialog_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_saveload_dialog_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_saveload_dialog_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_saveload_dialog_joypad_navigation(stage)			// パッド入力の遷移を設定する


//---------------------------------------------------------------------------
// レコード
//---------------------------------------------------------------------------
// オブジェクト
#replace	@イメージ_レコード_達成率				1
#replace	@イメージ_レコード枠					10

// 子供オブジェクト
#replace	@イメージ_レコード枠_番号_取得済		0
#replace	@イメージ_レコード枠_番号_未取得		1
#replace	@イメージ_レコード枠_テキスト			2
#replace	@イメージ_レコード枠_最大数				3

// ボタン
#replace	@ボタン_レコード_スクロールビュー		2

// ゲームパッド動作
#replace	@動作_レコード_スクロールフォーカス		-11
#replace	@動作_レコード_スクロールアップ			-12
#replace	@動作_レコード_スクロールダウン			-13

// データ関連
#replace	@レコード_取得済_テキストカラー			009		// Gameexe.ini #COLOR_TABLE.009
#replace	@レコード_未取得_テキストカラー			010		// Gameexe.ini #COLOR_TABLE.010

#command $$get_record_title : str						// レコードを獲得したときのテキストを取得する
#command $$get_record_name(int) : str					// レコード名を取得する

// シーンオブジェクト関連
#command $$create_record_scene_object(stage)			// シーンオブジェクトを作成する
#command $$create_record_thumb_object(object)			// サムネイルオブジェクトを作成する
#command $$update_record_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_record_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_record_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_record_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$create_record_all_thumb_object(stage, str, int, int, int, int, int)		// レコードシーンで使用するすべてのサムネイルオブジェクトを作成する
#command $$create_record_scrollview(object, str, int, int, int,						// レコードシーンで使用するスクロールビューを作成する
									int, int, int, int, int, int, int, int, int)


//---------------------------------------------------------------------------
// トースト（レコード取得時のポップアップなど）
//---------------------------------------------------------------------------
// オブジェクト
#define		@オブジェクト_トースト_背景						<OBJ_TOAST>
#define		@オブジェクト_トースト_タイトル					<OBJ_TOAST>].child[0
#define		@オブジェクト_トースト_本文						<OBJ_TOAST>].child[1

// シーンオブジェクト関連
#command $$create_toast_scene_object(stage)				// シーンオブジェクトを作成する

// データ関連
#command $$init_toast(stage)							// トーストを初期化する
#command $$push_toast(str, str)							// トーストを追加する（追加した順に自動で表示される）
#command $$get_toast_size : int							// 現在追加されているトーストの数を取得する（表示中を含む）


//---------------------------------------------------------------------------
// サイドバー(セーブ／ロード)
//---------------------------------------------------------------------------
// 最大数
#replace	@サイドバー_タブ最大数					12
#replace	@サイドバー_ページ最大数				10
#replace	@サイドバー_データ最大数				10

// オブジェクト
#replace	@イメージ_サイドバー_背景				0
#replace	@ボタン_サイドバー_領域					1
#replace	@ボタン_サイドバー_モード_セーブ		2
#replace	@ボタン_サイドバー_モード_ロード		3
#replace	@イメージ_サイドバー_ページ番号			4
#replace	@ボタン_サイドバー_ページ_戻る			5
#replace	@ボタン_サイドバー_ページ_進む			6
#replace	@ボタン_サイドバー_タブ					7
#define		@ボタン_サイドバー_タブ_最大			(@ボタン_サイドバー_タブ + @サイドバー_タブ最大数)
#define		@ボタン_サイドバー_データ				(@ボタン_サイドバー_タブ_最大)
#define		@ボタン_サイドバー_データ_最大			(@ボタン_サイドバー_データ + @サイドバー_データ最大数)
#define		@イメージ_サイドバー_ＮＥＷ				(@ボタン_サイドバー_データ_最大)
#define		@イメージ_サイドバー_サムネイル			(@イメージ_サイドバー_ＮＥＷ + 1)

#replace	@イメージ_サイドバー_データ_セーブ番号		0
#replace	@イメージ_サイドバー_データ_日時_背景		1
#replace	@イメージ_サイドバー_データ_日付_年			2
#replace	@イメージ_サイドバー_データ_日付_月			3
#replace	@イメージ_サイドバー_データ_日付_日			4
#replace	@イメージ_サイドバー_データ_時間_時			5
#replace	@イメージ_サイドバー_データ_時間_分			6
#replace	@イメージ_サイドバー_データ_ロック			7

#replace	@イメージ_サイドバー_サムネイル_画像			0
#replace	@イメージ_サイドバー_サムネイル_タイトル		1
#replace	@イメージ_サイドバー_サムネイル_メッセージ		2

// データ関連
#replace	@サイドバー_通常_テキストカラー				011		// Gameexe.ini #COLOR_TABLE.011
#replace	@サイドバー_セーブ_テキストカラー			012		// Gameexe.ini #COLOR_TABLE.012
#replace	@サイドバー_ロード_テキストカラー			013		// Gameexe.ini #COLOR_TABLE.013

#command $$set_sidebar_save_title_moji_max(int)			// サムネイルのセーブタイトル文字最大数(半角)を設定する
#command $$set_sidebar_save_message_moji_max(int)		// サムネイルのセーブメッセージ文字最大数(半角)を設定する

// シーンオブジェクト関連
#command $$init_sidebar(stage, object)					// サイドバーを初期化する
#command $$end_sidebar(stage, object)					// サイドバーを終了する

#command $$create_sidebar_r_object(stage, object)		// 右配置／サイドバーオブジェクトを作成する
#command $$create_sidebar_r_data_object(object)			// 右配置／サイドバーデータオブジェクトを作成する
#command $$create_sidebar_r_save_thumbnail(object)		// 右配置／サイドバーセーブサムネイルを作成する
#command $$create_sidebar_l_object(stage, object)		// 左配置／サイドバーオブジェクトを作成する
#command $$create_sidebar_l_data_object(object)			// 左配置／サイドバーデータオブジェクトを作成する
#command $$create_sidebar_l_save_thumbnail(object)		// 左配置／サイドバーセーブサムネイルを作成する
#command $$update_sidebar_object(object)				// サイドバーオブジェクトを更新する
#command $$adjust_sidebar_object(object)				// サイドバーオブジェクトを調整する

#command $$create_sidebar_image(object, str, int, int)							// サイドバーで使用するイメージを作成する
#command $$create_sidebar_number_image(object, str, int, int)					// サイドバーで使用する 数字イメージを作成する
#command $$create_sidebar_button(object, str, int, int, int, int, int)			// サイドバーで使用するボタンを作成する
#command $$create_sidebar_string(object, int, int, int, int, int)				// サイドバーで使用する文字列を作成する
#command $$create_sidebar_all_data_button(stage, str, int, int, int, int, int)	// サイドバーで使用するすべてのデータボタンを作成する


//---------------------------------------------------------------------------
// タブレットモード
// ※タブレットモードはＵＩが違うだけで、クイックメニューとして動作する
//---------------------------------------------------------------------------
// オブジェクト
#define		@オブジェクト_タブレットモード_ヘルプ_背景		(<OBJ_MODAL> + 0)

// ボタン
#define		@ボタン_タブレットモード_ヘルプ_閉じる			(<OBJ_MODAL> + 11)
#define		@ボタン_タブレットモード_ヘルプ_最大			(<OBJ_MODAL> + 12)

// シーンオブジェクト関連
#command $$create_tabletR_scene_object(stage)			// シーンオブジェクト(右配置)を作成する
#command $$create_tabletL_scene_object(stage)			// シーンオブジェクト(左配置)を作成する
#command $$update_tablet_scene_object(stage, int)		// シーンオブジェクトを更新する
#command $$show_tablet_scene_object(stage)				// シーンオブジェクトを表示する
#command $$hide_tablet_scene_object(stage)				// シーンオブジェクトを非表示にする
#command $$set_tablet_joypad_navigation(stage)			// パッド入力の遷移を設定する

// シーンオブジェクト関連(ヘルプ画面)
#command $$create_tablet_help_scene_object(stage)		// シーンオブジェクトを作成する
#command $$update_tablet_help_scene_object(stage, int)	// シーンオブジェクトを更新する
#command $$show_tablet_help_scene_object(stage)			// シーンオブジェクトを表示する
#command $$hide_tablet_help_scene_object(stage)			// シーンオブジェクトを非表示にする
#command $$set_tablet_help_joypad_navigation(stage)		// パッド入力の遷移を設定する


//---------------------------------------------------------------------------
// フッター
//---------------------------------------------------------------------------
// イメージ／ボタン
#replace	@イメージ_フッター_背景						390
#replace	@ボタン_フッター_セーブ						391
#replace	@ボタン_フッター_ロード						392
#replace	@ボタン_フッター_コンフィグ					393
#replace	@ボタン_フッター_レコード					394
#replace	@ボタン_フッター_タイトルに戻る				395
#replace	@ボタン_フッター_ゲームを終了する			396
#replace	@ボタン_フッター_戻る						397

// シーンオブジェクト関連
#command $$create_save_footer_scene_object(stage)		// シーンオブジェクト（セーブ画面）を作成する
#command $$create_load_footer_scene_object(stage)		// シーンオブジェクト（ロード画面）を作成する
#command $$create_config_footer_scene_object(stage)		// シーンオブジェクト（コンフィグ画面）を作成する
#command $$create_record_footer_scene_object(stage)		// シーンオブジェクト（レコード画面）を作成する
#command $$set_footer_joypad_navigation(stage)			// パッド入力の遷移を設定する

#command $$create_footer_save_button(object, str, int, int, int, int, int)		// フッターシーンで使用するセーブボタンを作成する
#command $$create_footer_load_button(object, str, int, int, int, int, int)		// フッターシーンで使用するロードボタンを作成する

// データ関連
#command $$update_footer_input(stage, int, int) : int	// フッターの入力処理を更新する


//---------------------------------------------------------------------------
// システムメッセージ
//---------------------------------------------------------------------------
#replace	@システムトースト_タイプ_オートセーブ		0
#replace	@システムトースト_タイプ_クイックセーブ		1

#command $$show_system_toast(int)						// システムメッセージを表示する


//---------------------------------------------------------------------------
// メッセージウィンドウボタン
//---------------------------------------------------------------------------
#command $$fa_mwbtn(frameaction)						// メッセージウィンドウボタンの制御を開始する
#command $$update_mwbtn									// メッセージウィンドウボタンを更新する
