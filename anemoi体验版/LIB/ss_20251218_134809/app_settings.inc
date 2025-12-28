//===========================================================================
//!
//!    @file     app_settings.inc
//!    @brief    アプリケーションごとの機能有効／無効設定
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

// システム設定
#replace	__AUTO_SAVE_CNT							10		// オートセーブの個数
#replace	__AUTO_SAVE_DEFAULT						1		// オートセーブ機能の有効(1)／無効(0)
#replace	__DEBUG_MODE							1		// デバッグ機能／表示の有効(1)／無効(0)

// 確認ダイアログデフォルト設定(0:確認する／1:確認しない)
#replace	__YESNO_DIALOG_SAVE_DEFAULT				0		// セーブ確認
#replace	__YESNO_DIALOG_QUICK_SAVE_DEFAULT		0		// クイックセーブ確認
#replace	__YESNO_DIALOG_OVERWRITE_SAVE_DEFAULT	0		// 上書きセーブ確認
#replace	__YESNO_DIALOG_LOAD_DEFAULT				0		// ロード確認
#replace	__YESNO_DIALOG_QUICK_LOAD_DEFAULT		0		// クイックロード確認
#replace	__YESNO_DIALOG_BACK_DEFAULT				0		// 前の選択肢に戻る確認
#replace	__YESNO_DIALOG_BACKLOG_JUMP_DEFAULT		0		// バックログジャンプ確認
#replace	__YESNO_DIALOG_DELETE_DEFAULT			0		// セーブデータ削除確認
#replace	__YESNO_DIALOG_SWAP_DEFAULT				0		// セーブデータ入れ替え確認
#replace	__YESNO_DIALOG_TITLE_DEFAULT			0		// タイトルに戻る確認
#replace	__YESNO_DIALOG_EXTRA_RETURN_DEFAULT		0		// エクストラに戻る確認
#replace	__YESNO_DIALOG_EXIT_DEFAULT				0		// ゲームを終了する確認
#replace	__YESNO_DIALOG_INIT_SETTINGS_DEFAULT	0		// 初期設定に戻す確認

// システムＵＩ設定
#replace	__UI_SLIDER_ANIMATION					1		// スライダーＵＩ選択時アニメーションの有効(1)／無効(0)
#replace	__UI_SLIDER_DECIDE_ANIMATION_RATE		0		// スライダーＵＩ選択成功時のアニメーションの基本明るさ(0～255)
#replace	__UI_SLIDER_DECIDE_ANIMATION_TIME		0		// スライダーＵＩ選択成功時のアニメーションにかける時間(ミリ秒)
#replace	__UI_SLIDER_CANCEL_ANIMATION_RATE		0		// スライダーＵＩ選択失敗時のアニメーションの基本暗さ(0～255)
#replace	__UI_SLIDER_CANCEL_ANIMATION_TIME		0		// スライダーＵＩ選択失敗時のアニメーションにかける時間(ミリ秒)
#replace	__UI_SLIDER_STEP_INTERVAL				8		// スライダーＵＩのステップ間隔(最小値から最大値になるまでの入力回数)

#replace	__UI_SELECTBOX_ANIMATION				1		// セレクトボックスＵＩ選択時アニメーションの有効(1)／無効(0)
#replace	__UI_SELECTBOX_ANIMATION_DIRECTION		0		// セレクトボックスＵＩ選択時のアニメーション方向、縦(1)／横(0)
#replace	__UI_SELECTBOX_ANIMATION_TIME			250		// セレクトボックスＵＩ選択時のアニメーションにかける時間(ミリ秒)
#replace	__UI_SELECTBOX_ANIMATION_MODE			2		// セレクトボックスＵＩ選択時のアニメーションのスピードモード(0=等速、1=加速、2=減速)

#replace	__UI_SCROLLVIEW_MARGIN					100		// スクロールビューＵＩのスクロール範囲マージン
#replace	__UI_SCROLLVIEW_SENSITIVITY				50		// スクロールビューＵＩのスクロール感度
#replace	__UI_SCROLLVIEW_FLICK_SENSITIVITY		50		// スクロールビューＵＩのフリックスクロール感度
#replace	__UI_SCROLLVIEW_SCROLL_TIME				400		// スクロールビューＵＩスクロール時のアニメーションにかける時間(ミリ秒)

#replace	__UI_THUMBNAIL_LIST_ANIMATION_TIME		300		// サムネイルリストＵＩスクロールのアニメーションにかける時間(ミリ秒)
#replace	__UI_THUMBNAIL_LIST_ANIMATION_MODE		2		// サムネイルリストＵＩスクロールのアニメーションのスピードモード(0=等速、1=加速、2=減速)

// システム画面設定
#replace	__MENU_BGM_FADEIN_TIME_FROM_EXTRA		1000	// エクストラからタイトルに戻った際のＢＧＭフェードイン時間(ミリ秒)
#replace	__MENU_BGM_FADEOUT_TIME_FROM_EXTRA		1000	// エクストラからタイトルに戻った際のＢＧＭフェードアウト時間(ミリ秒)
#replace	__SAVELOAD_THUMB_HIT_BR					32		// セーブロード画面のサムネイルのマウスヒット時のbright値
#replace	__SAVELOAD_THUMB_PUSHED_BR				64		// セーブロード画面のサムネイルのマウス押下時のbright値
#replace	__SAVELOAD_THUMB_JOYPAD_HIT_BR			32		// セーブロード画面のサムネイルのジョイパッドヒット時のbright値
#replace	__SAVELOAD_THUMB_JOYPAD_PUSHED_BR		64		// セーブロード画面のサムネイルのジョイパッド押下時のbright値
#replace	__SAVELOAD_THUMB_SCALE					1000	// セーブロード画面のサムネイル表示拡縮率(1000=1倍)
#replace	__SAVELOAD_DIALOG_SCENE					0		// セーブ／ロード専用ダイアログを有効(1)／無効(0)
#replace	__SAVELOAD_DIALOG_SAVE_WAIT				750		// セーブ／ロード専用ダイアログでセーブを行った際の待ち時間(ミリ秒)
#replace	__SAVELOAD_DIALOG_LOAD_WAIT				250		// セーブ／ロード専用ダイアログでセーブを行った際の待ち時間(ミリ秒)
#replace	__CONFIG_MODE_SELECT_SCENE				0		// コンフィグのモード選択シーン有効(1)／無効(0)
#replace	__SELECT_DEFAULT_OPEN_DIALOG			1		// コンフィグ設定を初期化選択時にダイアログ表示を有効(1)／無効(0)
#replace	__EXTRA_MODE_SELECT_SCENE				1		// エクストラのモード選択シーン有効(1)／無効(0)
#replace	__EXTRA_CG_DIFF_MODE					0		// エクストラのＣＧモードの自動差分計算カテゴリ 大分類＋小分類(1)／小分類のみ(0)
#replace	__EXTRA_CG_L_DIFF_MAX					10		// エクストラのＣＧモードの自動差分計算最大数(大分類)
#replace	__EXTRA_CG_S_DIFF_MAX					10		// エクストラのＣＧモードの自動差分計算最大数(小分類)
#replace	__EXTRA_CG_DIFF_END_LOOP				0		// エクストラのＣＧモードでＣＧ差分の終点で差分の始点にループする有効(1)／無効(0)
#replace	__DIALOG_AUTO_MOUSE_MOVE				0		// ダイアログ表示時に自動でマウスカーソルをフォーカスされているボタンに移動する
#replace	__CHAPTER_JUMP_MODE						0		// チャプタージャンプモード 回想シーン※セーブ／ロード不可(1)／シナリオフロー※指定シナリオから最後まで(0)
#replace	__EXTRA_CHARACTER_BMP_CODE				8015823	// 立ち絵鑑賞保存／読み込みbmpを識別するコード(立ち絵鑑賞モードを使用するときはタイトルごとにかぶらない値に変更する必要があります)
#replace	__EXTRA_CHARACTER_SNAP_X				15		// 立ち絵鑑賞の立ち絵移動時に基本座標にスナップする範囲(x)
#replace	__EXTRA_CHARACTER_SNAP_Y				15		// 立ち絵鑑賞の立ち絵移動時に基本座標にスナップする範囲(y)
#replace	__EXTRA_CHARACTER_HIT_BRIGHT			24		// 立ち絵鑑賞の立ち絵マウスヒット時のbright値
#replace	__EXTRA_CHARACTER_PAD_MOVE_ACCEL		2		// 立ち絵鑑賞の立ち絵移動(ゲームパッド)時の加速度
#replace	__EXTRA_CHARACTER_PAD_MOVE_SPEED_MAX	150		// 立ち絵鑑賞の立ち絵移動(ゲームパッド)時の最大移動速度
#replace	__SYSTEM_FOOTER_ENABLE					1		// セーブロード／コンフィグ／レコード画面でフッター表示の有効(1)／無効(0)

// メッセージウィンドウボタンロック設定
// ロックtype1／type2共通
#replace	__MWBTN_LOCK_MWND_NO_START			0			// ロック機能を適用するメッセージウィンドウ開始番号
#replace	__MWBTN_LOCK_MWND_NO_END			0			// ロック機能を適用するメッセージウィンドウ終了番号
// ロックtype1(下消去)
#replace	__MWBTN_LOCK_TYPE1_ENABLE			1			// ウィンドウボタンロック機能(type1)を有効(1)／無効(0)
#replace	__MWBTN_LOCK_TYPE1_BTN				13			// ロックボタン(type1)番号
#replace	__MWBTN_LOCK_TYPE1_BTN_START		0			// ロック(type1)に追従するボタン開始番号
#replace	__MWBTN_LOCK_TYPE1_BTN_END			13			// ロック(type1)に追従するボタン終了番号
#replace	__MWBTN_LOCK_TYPE1_HIDE_Y			70			// 非表示時の座標(y)
#replace	__MWBTN_LOCK_TYPE1_RECT_X			1800		// マウス範囲x(1800ならmouse_x<1800で表示)
#replace	__MWBTN_LOCK_TYPE1_RECT_Y			1000		// マウス範囲y(1000ならmouse_y<1000で表示)
#replace	__MWBTN_LOCK_TYPE1_SHOW_TIME		250			// ウィンドウボタン(type1)の表示にかける時間
#replace	__MWBTN_LOCK_TYPE1_HIDE_TIME		250			// ウィンドウボタン(type1)の消去にかける時間
// ロックtype2(右消去)
#replace	__MWBTN_LOCK_TYPE2_ENABLE			1			// ウィンドウボタンロック機能(type2)を有効(1)／無効(0)
#replace	__MWBTN_LOCK_TYPE2_BTN				17			// ロックボタン(type2)番号
#replace	__MWBTN_LOCK_TYPE2_BTN_START		14			// ロック(type2)に追従するボタン開始番号
#replace	__MWBTN_LOCK_TYPE2_BTN_END			17			// ロック(type2)に追従するボタン終了番号
#replace	__MWBTN_LOCK_TYPE2_HIDE_X			150			// 非表示時の座標(x)
#replace	__MWBTN_LOCK_TYPE2_RECT_X			1800		// マウス範囲x(1800ならmouse_x>1800で表示)
#replace	__MWBTN_LOCK_TYPE2_RECT_Y			820			// マウス範囲y(820ならmouse_y>820で表示)
#replace	__MWBTN_LOCK_TYPE2_SHOW_TIME		250			// ウィンドウボタン(type2)の表示にかける時間
#replace	__MWBTN_LOCK_TYPE2_HIDE_TIME		300			// ウィンドウボタン(type2)の消去にかける時間

// トースト（レコード取得時のポップアップなど）設定
#replace	__TOAST_ENABLE					0		// トースト機能(type1)を有効(1)／無効(0)
#replace	__TOAST_SHOW_TIME				500		// トーストの表示にかける時間
#replace	__TOAST_HIDE_TIME				500		// トーストの消去にかける時間
#replace	__TOAST_WAIT_TIME				4000	// トースト表示待機時間
#replace	__TOAST_MARGIN_RIGHT			16		// トーストの文字右の余白

// システムトースト（オートセーブしましたのポップアップなど）設定
#replace	__SYSTEM_TOAST_ENABLE			1						// システムトースト機能(type1)を有効(1)／無効(0)
#replace	__SYSTEM_TOAST_FILENAME			"_sys_toast"			// システムトーストに使用する画像ファイル
#replace	__SYSTEM_TOAST_POS_X			1644					// システムトースト座標(x)
#replace	__SYSTEM_TOAST_POS_Y			731						// システムトースト座標(y)
#replace	__SYSTEM_TOAST_ANIM_X			200						// システムトーストアニメーション座標(x)
#replace	__SYSTEM_TOAST_ANIM_Y			0						// システムトーストアニメーション座標(y)
#replace	__SYSTEM_TOAST_SHOW_TIME		500						// システムトーストの表示にかける時間
#replace	__SYSTEM_TOAST_HIDE_TIME		500						// システムトーストの消去にかける時間
#replace	__SYSTEM_TOAST_WAIT_TIME		1500					// システムトースト表示待機時間

// サイドバー設定
#replace	__SIDEBAR_MODE_DEFAULT			1		// サイドバー動作のデフォルト設定
#replace	__SIDEBAR_MOVE_POS				500		// サイドバーの移動座標
#replace	__SIDEBAR_SHOW_TIME				500		// サイドバーの表示にかける時間
#replace	__SIDEBAR_HIDE_TIME				500		// サイドバーの消去にかける時間
#replace	__SIDEBAR_R_SHOW_HIT_RECT_L		1820	// 右サイドバー表示当たり判定（左）
#replace	__SIDEBAR_R_SHOW_HIT_RECT_T		0		// 右サイドバー表示当たり判定（上）
#replace	__SIDEBAR_R_SHOW_HIT_RECT_B		807		// 右サイドバー表示当たり判定（下）
#replace	__SIDEBAR_R_HIDE_HIT_RECT_L		1520	// 右サイドバー表示当たり判定（左）
#replace	__SIDEBAR_R_HIDE_HIT_RECT_T		0		// 右サイドバー表示当たり判定（上）
#replace	__SIDEBAR_R_HIDE_HIT_RECT_B		807		// 右サイドバー表示当たり判定（下）
#replace	__SIDEBAR_L_SHOW_HIT_RECT_R		100		// 左サイドバー表示当たり判定（右）
#replace	__SIDEBAR_L_SHOW_HIT_RECT_T		0		// 左サイドバー表示当たり判定（上）
#replace	__SIDEBAR_L_SHOW_HIT_RECT_B		807		// 左サイドバー表示当たり判定（下）
#replace	__SIDEBAR_L_HIDE_HIT_RECT_R		400		// 左サイドバー表示当たり判定（右）
#replace	__SIDEBAR_L_HIDE_HIT_RECT_T		0		// 左サイドバー表示当たり判定（上）
#replace	__SIDEBAR_L_HIDE_HIT_RECT_B		807		// 左サイドバー表示当たり判定（下）

// レコード取得時の表示設定
#replace	__RECORD_DISP_DEFAULT			1		// レコード取得時の表示を有効(1)／無効(0)

// タブレットモード設定
#replace	__TABLET_MODE_DEFAULT				0			// タブレットモードのデフォルト設定
#replace	__TABLET_MODE_CLOSE_DECIDE_LEFT		324			// 決定キーによるタブレットモード消去処理をする左座標
#replace	__TABLET_MODE_CLOSE_DECIDE_RIGHT	1596		// 決定キーによるタブレットモード消去処理をする右座標
#replace	__TABLET_MODE_WAKU_NO				3			// タブレットモードで使用する枠番号
#replace	__DEFAULT_MW_WAKU_NO				0			// デフォルトで使用する枠番号

// ゲームパッド設定
#replace	__JOYPAD_KEY_REPEAT				1		// ゲームパッドのキーリピート(キーを押し続けることで連続入力する)機能の有効(1)／無効(0)
#replace	__JOYPAD_KEY_REPEAT_DELAY		500		// ゲームパッドのキーリピート有効時にリピートが発生するまでの時間(500なら0.5秒押し続けるとリピート入力が発生する)
#replace	__JOYPAD_KEY_REPEAT_RATE		100		// ゲームパッドのキーリピート有効時にリピートが発生した後の入力発生間隔(100なら0.1秒ごとに入力が発生する)

#replace	__JOYPAD_LINK_STICK_WITH_KEY	1		// ゲームパッドの左スティックと十字キーを連動させる機能の有効(1)／無効(0)
#replace	__JOYPAD_DECIDE_BTN_WAIT		0		// ゲームパッドで決定を押した際のウェイト待ち時間(ミリ秒)

// ブロック分割設定
#replace	__DEFAULT_IMAGE_BLOCK_WIDTH		3		// パン移動に使用する分割ブロック数(x)
#replace	__DEFAULT_IMAGE_BLOCK_HEIGHT	3		// パン移動に使用する分割ブロック数(y)

// フェード設定
#replace	__DEFAULT_FADE_WIPE_NO			3		// フェードのデフォルトワイプ番号
#replace	__DEFAULT_FADE_MSG_CLOSE		1		// フェード時にメッセージウィンドウを閉じるかどうか
#replace	__DEFAULT_FADE_WAIT				1		// フェード時に待ちを行うかどうか

// 背景設定
#replace	__DEFAULT_BG_WIPE_NO			3		// 背景のデフォルトワイプ番号
#replace	__DEFAULT_BG_MSG_CLOSE			1		// 背景表示時にメッセージウィンドウを閉じるかどうか
#replace	__DEFAULT_BG_WAIT				1		// 背景表示時に待ちを行うかどうか

#replace	__AUTO_BG_BLUR					0		// 立ち絵表示時の背景自動ブラー有効(1)／無効(0)
#replace	__BG_BLUR_PREFIX				"b_"	// ブラーファイル接頭名

#replace	__USE_TIME_CONTROL				1		// 時間帯管理の有効(1)／無効(0)
#replace	__TIME_CONTROL_SUFFIX_DAYTIME	"_01"	// 時間帯管理のファイル末尾名(昼)
#replace	__TIME_CONTROL_SUFFIX_EVENING	"_02"	// 時間帯管理のファイル末尾名(夕)
#replace	__TIME_CONTROL_SUFFIX_NIGHT		"_03"	// 時間帯管理のファイル末尾名(夜)
#replace	__TIME_CONTROL_SUFFIX_NIGHT_OFF	"_04"	// 時間帯管理のファイル末尾名(消灯)
#replace	__TIME_CONTROL_SUFFIX_MORNING	"_80"	// 時間帯管理のファイル末尾名(朝)
#replace	__TIME_CONTROL_SUFFIX_EX1		"_04"	// 時間帯管理のファイル末尾名(特殊１)
#replace	__TIME_CONTROL_SUFFIX_EX2		"_05"	// 時間帯管理のファイル末尾名(特殊２)

// 立ち絵設定
#replace	__DEFAULT_BS_WIPE_NO			0		// 立ち絵のデフォルトワイプ番号
#replace	__DEFAULT_BS_WAIT				0		// 立ち絵表示時に待ちを行うかどうか

#replace	__BS_WIPE_SLIDE					1		// 立ち絵ワイプ時の位置調整にスライド移動有効(1)／無効(0)
#replace	__BS_WIPE_SLIDE_TIME			350		// 立ち絵ワイプ時の位置調整スライドにかける時間(ミリ秒)
#replace	__BS_RANGE_DEFAULT				2		// 立ち絵が初めて表示された際のデフォルト距離(2であればbs2がデフォルトで表示される)
#replace	__FACE_RANGE_DEFAULT			2		// 顔グラのデフォルト距離(1であればbs1がデフォルトで表示される)

#replace	__DEFAULT_BS_MOVE_COMMAND_WAIT	0		// 立ち絵の移動命令(@bs_move)時に待ちを行うかどうか

#replace	__BS_NAME_IDENTIFIER_DIGIT		2		// キャラクター識別子の桁数
													// 例) 2		hz11_01
													// 例) 3		haz11_01
#replace	__BS_NAME_DIRECTION_ARMS_SWAP	0		// 立ち絵指定名で向き指定と腕指定の入れ替え有効(1)／無効(0)
													// 例) 無効(0)	hz12_01		hz + 向き指定(1) + 腕指定(2) + _01
													// 例) 有効(1)	hz21_01		hz + 腕指定(2) + 向き指定(1) + _01
#replace	__USE_BS_TONECURVE				1		// 立ち絵のトーンカーブの有効(1)／無効(0)

// イベントＣＧ設定
#replace	__DEFAULT_CG_WIPE_NO			3		// イベントＣＧのデフォルトワイプ番号
#replace	__DEFAULT_CG_MSG_CLOSE			1		// イベントＣＧ表示時にメッセージウィンドウを閉じるかどうか
#replace	__DEFAULT_CG_WAIT				1		// イベントＣＧ表示時に待ちを行うかどうか

#replace	__USE_CG_DIFF_DEFAULT_WIPE		1		// イベントＣＧ(差分)のデフォルトワイプ機能有効(1)／無効(0)
#replace	__DEFAULT_CG_DIFF_WIPE_NO		0		// イベントＣＧ(差分)のデフォルトワイプ番号
#replace	__DEFAULT_CG_DIFF_MSG_CLOSE		1		// イベントＣＧ(差分)表示時にメッセージウィンドウを閉じるかどうか
#replace	__DEFAULT_CG_DIFF_WAIT			1		// イベントＣＧ(差分)表示時に待ちを行うかどうか

// エフェクト設定
#replace	__DEFAULT_CINEMASCPOE_SIZE		190				// シネマスコープエフェクトのデフォルトサイズ
#replace	__DEFAULT_LINEFEECT_H_SIZE		200				// 集中線(水平)エフェクトのデフォルトサイズ
#replace	__DEFAULT_LINEFEECT_V_SIZE		200				// 集中線(垂直)エフェクトのデフォルトサイズ
#replace	__DAYTIME_SKY_FILENAME			bg999_01		// 陽光命令に使用する背景ファイル名(空背景：昼)
#replace	__EVENING_SKY_FILENAME			bg999_02		// 夕陽命令に使用する背景ファイル名(空背景：夕)

// 演出設定
#replace	__DEFAULT_LARGE_FONT_SIZE		48		// 大声命令時の文字サイズ
#replace	__DEFAULT_LARGE_FONT_POS_Y		-10		// 大声命令時の文字位置補正座標(y)
#replace	__DEFAULT_SMALL_FONT_SIZE		28		// 小声命令時の文字サイズ
#replace	__DEFAULT_SMALL_FONT_POS_Y		10		// 小声命令時の文字位置補正座標(y)

// テキストセンタリング設定
#replace	__MWND02_MOJI_SIZE				38			// Gameexe.ini #MWND.002.MOJI_SIZE
#replace	__MWND02_MOJI_SPACE_X			0			// Gameexe.ini #MWND.002.MOJI_SPACE
#replace	__MWND02_MOJI_SPACE_Y			18			// Gameexe.ini #MWND.002.MOJI_SPACE
#replace	__MWND02_MESSAGE_POS_X			0			// Gameexe.ini #MWND.002.MESSAGE_POS
#replace	__MWND02_LINE_SPACE				100			// 各行間のスペース

/*
// 立ち絵
#replace	__AUTO_MOUTH_CLOSE		0			// 立ち絵の自動口閉じ
*/

// アクションコマンド
#define		@1a				<ACTION_COMMAND> + ac_1a			// サンプル
#define		@u1_ai			<ACTION_COMMAND> + slide_u1_ai		// 愛乃用／傘で上から降ってくる
