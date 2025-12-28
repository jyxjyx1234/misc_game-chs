//===========================================================================
//!
//!    @file     __ui.inc
//!    @brief    ＵＩ定義
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     主にシステム画面で使用するＵＩの定義等
//!
//===========================================================================

//---------------------------------------------------------------------------
// 共通定義
//---------------------------------------------------------------------------
// ＵＩタイプ
#replace	<UI_TYPE_IMAGE>					0		// 単画像
#replace	<UI_TYPE_MULTI_IMAGE>			1		// 複数画像
#replace	<UI_TYPE_NUMBER_IMAGE>			2		// 数字画像
#replace	<UI_TYPE_BUTTON>				3		// ボタン
#replace	<UI_TYPE_TOGGLE_BUTTON>			4		// トグルボタン（ＯＮ／ＯＦＦ切り替え）
#replace	<UI_TYPE_SELECTABLE_BUTTON>		5		// 選択可能ボタン
#replace	<UI_TYPE_STRING>				6		// テキスト
#replace	<UI_TYPE_SLIDER>				7		// スライダー
#replace	<UI_TYPE_SELECTBOX>				8		// セレクトボックス
#replace	<UI_TYPE_SCROLLVIEW>			9		// スクロールビュー
#replace	<UI_TYPE_THUMB_LIST>			10		// サムネイルリスト

// 全ＵＩ共通変数
#define		.type							.f[0]			// ＵＩタイプ
#define		.group_no						.f[1]			// ＵＩグループ
#define		.default_patno					.f[2]			// 表示中のパターン番号(例えばトグルボタンならOFFのときは0、ONのときは10になる)
#define		.joypad_up						.f[3]			// ジョイパッド↑時に遷移するボタン番号
#define		.joypad_down					.f[4]			// ジョイパッド↓時に遷移するボタン番号
#define		.joypad_left					.f[5]			// ジョイパッド←時に遷移するボタン番号
#define		.joypad_right					.f[6]			// ジョイパッド→時に遷移するボタン番号
#replace	<UI_F_FLAG_MAX>					   7			// 確保するfフラグ最大数

// 関数
#command $$copy_all_scene_object_to_back					// すべてのシーンオブジェクトを裏画面にコピーする
#command $$copy_scene_object_to_back(int, int)				// 指定した範囲のシーンオブジェクトを裏画面にコピーする
#command $$get_system_disp_object_max(stage, int, int)		// 指定範囲内の表示されているオブジェクトの最大数を取得する
#command $$get_system_ui_get_size_y(object) : int			// 指定したＵＩの縦サイズを取得する


//---------------------------------------------------------------------------
// イメージ
//---------------------------------------------------------------------------
// 関数
#command $$create_ui_image(object, str, int, int)							// イメージを作成する
#command $$create_ui_number_image(object, str, int, int)					// 数字イメージを作成する


//---------------------------------------------------------------------------
// ボタン
//---------------------------------------------------------------------------
#command $$create_ui_button(object, str, int, int, int, int, int)			// ボタンを作成する


//---------------------------------------------------------------------------
// トグルボタン（ＯＮ／ＯＦＦ切り替え）
//---------------------------------------------------------------------------
#command $$create_ui_toggle_button(object, str, int, int, int, int, int, int)	// トグルボタンを作成する
#command $$update_ui_toggle_button(object, int)									// トグルボタンの描画を更新する


//---------------------------------------------------------------------------
// テキスト
//---------------------------------------------------------------------------
// 整列
#replace	<STRING_ALIGN_LEFT>				0			// 左寄せ
#replace	<STRING_ALIGN_RIGHT>			1			// 右寄せ
#replace	<STRING_ALIGN_CENTER>			2			// 中央揃え

// 変数
#define		.f_align						.f[7]		// 整列
#define		.f_font_size					.f[8]		// フォントサイズ
#define		.f_text_width					.f[9]		// テキストの幅
#define		.f_text_height					.f[10]		// テキストの高さ
#replace	<UI_STRING_F_FLAG_MAX>			   11		// 確保するfフラグ最大数

// 関数
#command $$create_ui_string(object, int, int, int, int, int)						// 文字列を作成する
#command $$update_ui_string(object, str)											// 文字列の描画を更新する
#command $$update_ui_string_param(object, int, int, int, int, int, int, int, int)	// 文字列のパラメータを更新する


#command $$get_message_over_text : str				// 文字数がテキスト描画範囲をオーバーした際に表示する文字列を取得する


//---------------------------------------------------------------------------
// スライダー
//---------------------------------------------------------------------------
// バーの増加方向定義
#replace	<SLIDER_DIRECTION_UD>			0			// 上から下(↓)
#replace	<SLIDER_DIRECTION_DU>			1			// 下から上(↑)
#replace	<SLIDER_DIRECTION_LR>			2			// 左から右(→)
#replace	<SLIDER_DIRECTION_RL>			3			// 右から左(←)

// オブジェクト
#define		.ui_slider_bg				.child[0]		// 背景
#define		.ui_slider_overlay			.child[1]		// オーバーレイ
#define		.ui_slider_handle			.child[2]		// ハンドル
#replace	<UI_SLIDER_CHILD_MAX> 			   3		// 確保する子供オブジェクトの数

// 変数
#define		.f_slider_direction				.f[7]		// バーの増加方向
#define		.f_slider_value_min				.f[8]		// 値の最小値
#define		.f_slider_value_max				.f[9]		// 値の最大値
#define		.f_slider_clip_min				.f[10]		// 表示矩形の最小値
#define		.f_slider_clip_max				.f[11]		// 表示矩形の最大値
#define		.f_slider_clip_offset			.f[12]		// 表示矩形の座標補正値
#define		.f_slider_on_value_changed		.f[13]		// 値が変更されたかどうか
#define		.f_slider_scroll_init			.f[14]		// スクロール初期化フラグ
#define		.f_slider_anim_flag				.f[15]		// アニメーションの有効(1)／無効(0)
#define		.f_slider_decide_anim_rate		.f[16]		// スライダーＵＩ選択成功時のアニメーションの基本明るさ(0～255)
#define		.f_slider_decide_anim_time		.f[17]		// スライダーＵＩ選択成功時のアニメーションにかける時間(ミリ秒)
#define		.f_slider_cancel_anim_rate		.f[18]		// スライダーＵＩ選択失敗時のアニメーションの基本暗さ(0～255)
#define		.f_slider_cancel_anim_time		.f[19]		// スライダーＵＩ選択失敗時のアニメーションにかける時間(ミリ秒)
#define		.f_slider_step_interval			.f[20]		// ステップ間隔(最小値から最大値になるまでの入力回数)
#replace	<UI_SLIDER_F_FLAG_MAX>			   21		// 確保するfフラグ最大数

// 関数
#command $$create_ui_slider(object, str, int, int, int, int, int, int,		// スライダーを作成する
								int, int, int, int, int, int)
#command $$update_ui_slider(object, int)									// スライダーの描画を更新する
#command $$prev_step_ui_slider(object) : int								// スライダーの値を減少させる
#command $$next_step_ui_slider(object) : int								// スライダーの値を増加させる
#command $$get_ui_slider_value(object) : int								// スライダーの現在値を取得する


//---------------------------------------------------------------------------
// セレクトボックス
//---------------------------------------------------------------------------
// オブジェクト
#define		.ui_slbox_bg				.child[0]		// 背景
#define		.ui_slbox_list				.child[1]		// リスト
#define		.ui_slbox_prev				.child[2]		// 前へボタン
#define		.ui_slbox_next				.child[3]		// 次へボタン
#replace	<UI_SELECTBOX_CHILD_MAX>		   4		// 確保する子供オブジェクトの数

// 変数
#define		.f_slbox_clip_top				.f[7]		// 表示範囲(上)
#define		.f_slbox_clip_bottom			.f[8]		// 表示範囲(下)
#define		.f_slbox_anim_flag				.f[9]		// アニメーションの有効(1)／無効(0)
#define		.f_slbox_anim_direction			.f[10]		// アニメーション方向、縦(1)／横(0)
#define		.f_slbox_anim_time				.f[11]		// アニメーションにかける時間(ミリ秒)
#define		.f_slbox_anim_mode				.f[12]		// アニメーションのスピードモード(0=等速、1=加速、2=減速)
#replace	<UI_SELECTBOX_F_FLAG_MAX>		   13		// 確保するfフラグ最大数

// 関数
#command $$create_ui_selectbox(object, str, int, int, int, int, int, int,		// セレクトボックスを作成する
								   int, int, int, int, int, int, int)
#command $$update_ui_selectbox(object, int)										// セレクトボックスの描画を更新する
#command $$prev_ui_selectbox(object) : int										// セレクトボックスのリストを前に更新する
#command $$next_ui_selectbox(object) : int										// セレクトボックスのリストを次に更新する


//---------------------------------------------------------------------------
// スクロールビュー
//---------------------------------------------------------------------------
// オブジェクト
#define		.ui_scview_bg				.child[0]			// 背景
#define		.ui_scview_scrollbar		.child[1]			// スクロールバー
#replace	<UI_SCROLLVIEW_CHILD_MAX>		   2			// 確保する子供オブジェクトの数

// 変数
#define		.f_scview_sensitivity			.f[7]			// スクロールの感度
#define		.f_scview_flick_sensitivity		.f[8]			// フリックスクロールの感度
#define		.f_scview_scroll_time			.f[9]			// スクロールにかける時間
#define		.f_scview_scroll_range			.f[10]			// スクロール範囲
#define		.f_scview_scroll_margin			.f[11]			// スクロール矩形のマージン
#define		.f_scview_start_y				.f[12]			// スクロール開始座標(y)
#define		.f_scview_now_y					.f[13]			// スクロール現在の座標(y)
#define		.f_scview_target_y				.f[14]			// スクロール終了座標(y)
#define		.f_scview_start_time			.f[15]			// スクロール開始時間
#define		.f_scview_now_time				.f[16]			// スクロール現在の時間
#define		.f_scview_target_time			.f[17]			// スクロール終了時間
#define		.f_scview_target_obj_no			.f[18]			// スクロール目標のオブジェクト番号
#define		.f_scview_mask_size_y			.f[19]			// マスク終端y座標
#define		.f_scview_top_y					.f[20]			// スクロールオブジェクトの先端y座標
#define		.f_scview_bottom_size_y			.f[21]			// スクロールオブジェクトの終端y座標
#define		.f_scview_enable				.f[22]			// スクロールオブジェクトの有効／無効
#define		.f_scview_trigger_scroll		.f[23]			// スクロールの外部入力トリガー(オンにするとスクロール処理を実行する)
#replace	<UI_SCROLLVIEW_F_FLAG_MAX>		   24			// 確保するfフラグ最大数

// 関数
#command $$create_ui_scrollview(object, str, int, int, int, object, object,		// スクロールビューを作成する
									int, int, int, int, int, int, int, int, int)
#command $$set_ui_scrollview_margin(object, int)								// スクロールビューのスクロール範囲のマージンを設定する
#command $$set_ui_scrollview_group(object, int)									// 指定したオブジェクトをスクロールビューのグループとして設定する
#command $$trigger_ui_scrollview_scroll(object, int)							// スクロールの外部入力トリガーを実行する


//---------------------------------------------------------------------------
// サムネイルリスト
//---------------------------------------------------------------------------
// オブジェクト
#define		.ui_tlist_bg				.child[0]			// 背景
#define		.ui_tlist_thumb				.child[1]			// サムネイルボタン
#define		.ui_tlist_prev				.child[2]			// 前へボタン
#define		.ui_tlist_next				.child[3]			// 次へボタン
#replace	<UI_TLIST_CHILD_MAX>			   4			// 確保する子供オブジェクトの数

// 変数
#define		.f_tlist_max					.f[7]			// サムネイル最大数
#define		.f_tlist_disp_max				.f[8]			// サムネイル表示最大数
#define		.f_tlist_select_index			.f[9]			// 選択中のサムネイルインデックス
#define		.f_tlist_disp_index				.f[10]			// 表示中のサムネイルインデックス
#define		.f_tlist_offset_x				.f[11]			// サムネイルの表示間隔
#define		.f_tlist_offset_page			.f[12]			// サムネイルのページ送りオフセット(１つのページ送りでサムネイル何個分を飛ばすか)
#define		.f_tlist_list_x					.f[13]			// サムネイルリストの位置(x)
#define		.f_tlist_list_y					.f[14]			// サムネイルリストの位置(y)
#define		.f_tlist_list_offset_x			.f[15]			// サムネイルリストの間隔(x)
#define		.f_tlist_list_button_no			.f[16]			// サムネイルリストのベースボタン番号
#define		.f_tlist_list_button_group_no	.f[17]			// サムネイルリストのボタングループ番号
#define		.f_tlist_list_button_se_no		.f[18]			// サムネイルリストのボタンＳＥ番号
#define		.f_tlist_frame_size_x			.f[19]			// サムネイルフレームのサイズ(x)
#define		.f_tlist_frame_size_y			.f[20]			// サムネイルフレームのサイズ(y)
#replace	<UI_TLIST_F_FLAG_MAX>			   21			// 確保するfフラグ最大数

// 関数
#command $$create_ui_thumbnail_list(object, str, int, int, int, int, int, int,		// サムネイルリストを作成する
									int, int, int, int, int, int, int, int)
#command $$update_ui_thumbnail_list(object)											// サムネイルリストの描画を更新する
#command $$reset_ui_thumbnail_list(object)											// サムネイルリストの描画をリセットする
#command $$prev_ui_thumbnail_list(object, int) : int								// サムネイルリストを前に更新する
#command $$next_ui_thumbnail_list(object, int) : int								// サムネイルリストを次に更新する
#command $$change_ui_thumbnail_list(object, int, int, int)							// サムネイルリストを変更する
#command $$get_ui_thumbnail_list_disp_button_state(object) : int					// サムネイルリストで表示中のボタンの状態を取得する
