//===========================================================================
//!
//!    @file     __lib_define.inc
//!    @brief    汎用エンジン定義
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// 汎用定義
//---------------------------------------------------------------------------
#replace	<SCREEN_WIDTH>				1920						// ウィンドウサイズ(横)
#replace	<SCREEN_HEIGHT>				1080						// ウィンドウサイズ(縦)
#define		<SCREEN_CENTER_X>			(<SCREEN_WIDTH>  / 2)		// ウィンドウ中心座標(x)
#define		<SCREEN_CENTER_Y>			(<SCREEN_HEIGHT> / 2)		// ウィンドウ中心座標(y)

#replace	<NONE>						"none"						// 無効な文字列
#replace	<nb>						"no_bs"						// 立ち絵を意図的に表示しない文字列(none_bs)

#define		@dm							system.debug_messagebox_ok	// デバッグメッセージ表示
#define		@dw							system.debug_write_log		// デバッグログ出力

// 座標タイプ
#define		<POS_TYPE_ABSOLUTE>			0							// 絶対座標
#define		<POS_TYPE_RELATIVE>			1							// 相対座標

// レイヤー並び順タイプ
#define		<LAYER_ORDER_TYPE_FRONT>	0							// 前
#define		<LAYER_ORDER_TYPE_BACK>		1							// 後ろ

// 背景ファイル名定義
#replace	bg_kuro				bg_black				// 黒背景
#replace	bg_siro				bg_white				// 白背景
#replace	bg_shiro			bg_white				// 白背景
#replace	bg_aka				bg_red					// 赤背景


//---------------------------------------------------------------------------
// 色定義
//---------------------------------------------------------------------------
//          名前                          r,   g,   b
#replace	<COLOR_WHITE>				255, 255, 255		// 白
#replace	<COLOR_BLACK>				  0,   0,   0		// 黒
#replace	<COLOR_GRAY>				128, 128, 128		// 灰
#replace	<COLOR_RED>					255,   0,   0		// 赤
#replace	<COLOR_GREEN>				  0, 255,   0		// 緑
#replace	<COLOR_BLUE>				  0,   0, 255		// 青
#replace	<COLOR_CYAN>				  0, 255, 255		// シアン
#replace	<COLOR_YELLOW>				255, 255,   0		// 黄
#replace	<COLOR_MAGENTA>				255,   0, 255		// マゼンタ


//---------------------------------------------------------------------------
// フラグ
//---------------------------------------------------------------------------
#define		<FIRSTBOOT>						Z[00]		// 初回起動フラグ
#define		<EFFECT_CUT>					Z[01]		// todo test

#define		<AUTO_SAVE>						Z[04]		// オートセーブ(0:無効／1:有効)
#define		<RCLICK_MODE>					Z[05]		// 右クリック動作(0:クイックメニュー／1:メッセージウィンドウ消去／2:コンフィグ／3:セーブ／4:ロード)
#define		<SIDEBAR_MODE>					Z[06]		// サイドバー動作(0:無効／1:右／2:左)
#define		<SAVELOAD_MODE>					Z[07]		// セーブロードモード(0:セーブ／1:ロード)
#define		<CONFIG_MODE>					Z[08]		// コンフィグモード(0:システム／1:テキスト／2:サウンド／3:ボイス)

// 確認ダイアログフラグ(0:確認する／1:確認しない)
#define		<YESNO_DIALOG_SAVE>				Z[10]		// セーブ確認
#define		<YESNO_DIALOG_QUICK_SAVE>		Z[11]		// クイックセーブ確認
#define		<YESNO_DIALOG_OVERWRITE_SAVE>	Z[12]		// 上書きセーブ確認
#define		<YESNO_DIALOG_LOAD>				Z[13]		// ロード確認
#define		<YESNO_DIALOG_QUICK_LOAD>		Z[14]		// クイックロード確認
#define		<YESNO_DIALOG_BACK>				Z[15]		// 前の選択肢に戻る確認
#define		<YESNO_DIALOG_BACKLOG_JUMP>		Z[16]		// バックログジャンプ確認
#define		<YESNO_DIALOG_DELETE>			Z[17]		// セーブデータ削除確認
#define		<YESNO_DIALOG_SWAP>				Z[18]		// セーブデータ入れ替え確認
#define		<YESNO_DIALOG_TITLE>			Z[19]		// タイトルに戻る確認
#define		<YESNO_DIALOG_EXTRA_RETURN>		Z[20]		// エクストラに戻る確認
#define		<YESNO_DIALOG_EXIT>				Z[21]		// ゲームを終了する確認
#define		<YESNO_DIALOG_INIT_SETTINGS>	Z[22]		// 初期設定に戻す確認

// 表示速度
#define		<EFFECT_SPEED_BG>				Z[30]		// 表示速度／背景(0:通常／1:瞬間)
#define		<EFFECT_SPEED_CHARACTER>		Z[31]		// 表示速度／キャラクター(0:通常／1:瞬間)
#define		<EFFECT_SPEED_CG>				Z[32]		// 表示速度／イベントＣＧ(0:通常／1:瞬間)
#define		<EFFECT_SPEED_MW>				Z[33]		// 表示速度／メッセージウィンドウ(0:通常／1:瞬間)
#define		<EFFECT_SPEED_SYS_MENU>			Z[34]		// 表示速度／システムメニュー(0:通常／1:瞬間)

// メッセージウィンドウボタンロックフラグ(0:ロックしていない／1:ロック中)
#define		<MWBTN_LOCK_TYPE1>				Z[50]		// type1(下消去)ロックフラグ
#define		<MWBTN_LOCK_TYPE2>				Z[51]		// type2(右消去)ロックフラグ

// タブレットモード
#define		<TABLET_MODE>					Z[60]		// タブレットモード(0:無効／1:右／2:左)
#define		<TABLET_MODE_HELP>				Z[61]		// タブレットモードヘルプフラグ(0:一度もヘルプを見ていない／1:ヘルプを見た)

// レコード
#define		<RECORD_DISP>					Z[70]		// レコード取得時の表示(0:無効／1:有効)

// フォント
#define		<FONT_TYPE>						Z[75]		// フォントタイプ

// ページ管理
#define		<CHAPTER_PAGE>					Z[80]		// チャプターで選択しているページ
#define		<CHAPTER_THUMB>					Z[81]		// チャプターで選択しているサムネイル
#define		<SAVELOAD_PAGE>					Z[82]		// セーブロードで選択しているページ

// チャプター
#define		<CHAPTER_PLAY>					Z[100]		// チャプター再生中
#replace	<CHAPTER_FLAG_START>			101			// チャプターフラグ開始値
#replace	<CHAPTER_FLAG_MAX>				100			// チャプター最大数

// レコード
#replace	<RECORD_FLAG_START>				201			// レコードフラグ開始値
#replace	<RECORD_FLAG_MAX>				250			// レコード最大数


//---------------------------------------------------------------------------
// 右クリック動作定義
//---------------------------------------------------------------------------
#replace	<RCLICK_MODE_QUICK_MENU>		0		// クイックメニュー画面
#replace	<RCLICK_MODE_WINDOW_CLOSE>		1		// メッセージウィンドウ消去
#replace	<RCLICK_MODE_CONFIG>			2		// コンフィグ画面
#replace	<RCLICK_MODE_SAVE>				3		// セーブ画面
#replace	<RCLICK_MODE_LOAD>				4		// ロード画面
#replace	<RCLICK_MODE_MAX>				5


//---------------------------------------------------------------------------
// タブレットモード定義
//---------------------------------------------------------------------------
#replace	<TABLET_MODE_OFF>				0		// 無効
#replace	<TABLET_MODE_R>					1		// 有効／右
#replace	<TABLET_MODE_L>					2		// 有効／左
#replace	<TABLET_MODE_MAX>				3


//---------------------------------------------------------------------------
// サイドバー動作定義
//---------------------------------------------------------------------------
#replace	<SIDEBAR_MODE_OFF>				0		// 無効
#replace	<SIDEBAR_MODE_R>				1		// 有効／右
#replace	<SIDEBAR_MODE_L>				2		// 有効／左
#replace	<SIDEBAR_MODE_MAX>				3


//---------------------------------------------------------------------------
// コンフィグモード定義
//---------------------------------------------------------------------------
#replace	<CONIFG_MODE_SYSTEM>			0		// システム
#replace	<CONIFG_MODE_TEXT>				1		// テキスト
#replace	<CONIFG_MODE_SOUND>				2		// サウンド
#replace	<CONIFG_MODE_VOICE>				3		// ボイス
#replace	<CONIFG_MODE_MAX>				4


//---------------------------------------------------------------------------
// 入力定義
//---------------------------------------------------------------------------
// マウスホイール定義
#replace	<MOUSE_WHEEL_TYPE_NONE>			0		// マウスホイールしていない
#replace	<MOUSE_WHEEL_TYPE_UP>			1		// マウスホイール ↑
#replace	<MOUSE_WHEEL_TYPE_DOWN>			2		// マウスホイール ↓

// フリック定義
#replace	<FLICK_TYPE_NONE>				0		// フリックしていない
#replace	<FLICK_TYPE_UP>					1		// フリック ↑
#replace	<FLICK_TYPE_DOWN>				2		// フリック ↓
#replace	<FLICK_TYPE_LEFT>				3		// フリック ←
#replace	<FLICK_TYPE_RIGHT>				4		// フリック →


//---------------------------------------------------------------------------
// ジョイパッド定義
//---------------------------------------------------------------------------
// パッドキー定義
#replace	<JOYPAD_UP>						0		// 十字キー ↑
#replace	<JOYPAD_DOWN>					1		// 十字キー ↓
#replace	<JOYPAD_LEFT>					2		// 十字キー ←
#replace	<JOYPAD_RIGHT>					3		// 十字キー →
#replace	<JOYPAD_BUTTON1>				4		// ボタン１（Ａボタン／×ボタン）
#replace	<JOYPAD_BUTTON2>				5		// ボタン２（Ｂボタン／○ボタン）
#replace	<JOYPAD_BUTTON3>				6		// ボタン３（Ｘボタン／□ボタン）
#replace	<JOYPAD_BUTTON4>				7		// ボタン４（Ｙボタン／△ボタン）
#replace	<JOYPAD_L1>						8		// Ｌ１ボタン
#replace	<JOYPAD_R1>						9		// Ｒ１ボタン
#replace	<JOYPAD_L2>						10		// Ｌ２ボタン
#replace	<JOYPAD_R2>						11		// Ｒ２ボタン
#replace	<JOYPAD_EX1>					12		// ＥＸボタン１（START）
#replace	<JOYPAD_EX2>					13		// ＥＸボタン２（BACK）
#replace	<JOYPAD_LSTICK_UP>				16		// 左スティック↑
#replace	<JOYPAD_LSTICK_DOWN>			17		// 左スティック↓
#replace	<JOYPAD_LSTICK_LEFT>			18		// 左スティック←
#replace	<JOYPAD_LSTICK_RIGHT>			19		// 左スティック→
#replace	<JOYPAD_RSTICK_UP>				20		// 右スティック↑
#replace	<JOYPAD_RSTICK_DOWN>			21		// 右スティック↓
#replace	<JOYPAD_RSTICK_LEFT>			22		// 右スティック←
#replace	<JOYPAD_RSTICK_RIGHT>			23		// 右スティック→
#replace	<JOYPAD_L3>						24		// Ｌ３ボタン（左スティック押し込み）
#replace	<JOYPAD_R3>						25		// Ｒ３ボタン（右スティック押し込み）
#replace	<JOYPAD_MAX>					26


//---------------------------------------------------------------------------
// オブジェクト定義
//---------------------------------------------------------------------------
// ゲームオブジェクト
#replace	<OBJ_START>						 0			// オブジェクト開始番号
#replace	<OBJ_BG>						 1			// 背景
#replace	<OBJ_CG>						 2			// イベントＣＧ
#replace	<OBJ_CHARACTER>					 3			// キャラクター
#replace	<OBJ_CHARACTER_MAX>				29			// キャラクター最大数
#replace	<OBJ_EFFECT>					30			// エフェクト
#replace	<OBJ_EFFECT_FILM_NOISE>			31			// - フィルムノイズ
#replace	<OBJ_EFFECT_DOT_NOISE>			32			// - ドットノイズ
#replace	<OBJ_EFFECT_RECOLLECT>			33			// - 回想枠
#replace	<OBJ_EFFECT_LINE_CENTER>		34			// - 集中線
#replace	<OBJ_EFFECT_LINE_HORIZONTAL>	35			// - 水平集中線
#replace	<OBJ_EFFECT_LINE_VERTICAL>		36			// - 垂直集中線
#replace	<OBJ_EFFECT_DIZZY_BG>			37			// - 目眩(背景)
#replace	<OBJ_EFFECT_DIZZY_CHARACTER>	38			// - 目眩(キャラクター)
#replace	<OBJ_EFFECT_STEAM_BACK>			39			// - 湯気(奥)
#replace	<OBJ_EFFECT_STEAM_FRONT>		40			// - 湯気(手前)
#replace	<OBJ_EFFECT_SMOKE_BACK>			41			// - 煙(奥)
#replace	<OBJ_EFFECT_SMOKE_FRONT>		42			// - 煙(手前)
#replace	<OBJ_EFFECT_FOG_BACK>			43			// - 霧(奥)
#replace	<OBJ_EFFECT_FOG_FRONT>			44			// - 霧(手前)
#replace	<OBJ_EFFECT_LENS_FLARE>			45			// - レンズフレア
#replace	<OBJ_EFFECT_SCREEN_FILTER>		46			// - スクリーンフィルター
#replace	<OBJ_EFFECT_CINEMA_SCOPE>		47			// - シネマスコープ
#replace	<OBJ_EFFECT_FLASH>				48			// - フラッシュ
#replace	<OBJ_EFFECT_MAX>				49			// エフェクト最大数
#replace	<OBJ_WEATHER_BACK>				50			// 環境エフェクト(奥)
#replace	<OBJ_WEATHER_FRONT>				51			// 環境エフェクト(手前)
#replace	<OBJ_CUTIN>						52			// カットイン
#replace	<OBJ_IMAGE_TEXT>				59			// 画像文字
#replace	<OBJ_FADE>						60			// フェード
// システムオブジェクト／キネティックノベル
/*
#replace	<OBJ_END>						95			// ゲームオブジェクト終了番号
#replace	<OBJ_SYS_TOAST>					96			// システムトースト（オートセーブ時のポップアップなど）
#replace	<OBJ_DEBUG_SC_KEY>				97			// デバッグショートカットキー
#replace	<OBJ_DEBUG_MSG>					98			// デバッグメッセージ
#replace	<OBJ_RESOURCE_MSG>				99			// リソースメッセージ
#replace	<OBJ_MODAL>						100			// モーダルオブジェクト
#replace	<OBJ_MAX>						128			// オブジェクト最大数(Gameexe.ini #OBJECT.CNT に対応する)
*/
// システムオブジェクト／フルプライス
#replace	<OBJ_END>						399			// ゲームオブジェクト終了番号
#replace	<OBJ_MODAL>						400			// モーダルオブジェクト
#replace	<OBJ_SIDEBAR>					506			// サイドバー
#replace	<OBJ_SYS_TOAST>					507			// システムトースト（オートセーブ時のポップアップなど）
#replace	<OBJ_TOAST>						508			// トースト（レコード取得時のポップアップなど）
#replace	<OBJ_DEBUG_SC_KEY>				509			// デバッグショートカットキー
#replace	<OBJ_DEBUG_MSG>					510			// デバッグメッセージ
#replace	<OBJ_RESOURCE_MSG>				511			// リソースメッセージ
#replace	<OBJ_MAX>						512			// オブジェクト最大数(Gameexe.ini #OBJECT.CNT に対応する)

//---------------------------------------------------------------------------
// レイヤー値定義
//---------------------------------------------------------------------------
#replace	<LAYER_BG>						   0		// 背景
#replace	<LAYER_BG_FILTER>				  50		// 背景フィルター
#replace	<LAYER_CHARACTER>				 100		// キャラクター
#replace	<LAYER_CG>						1000		// イベントＣＧ
#replace	<LAYER_ALL_FILTER>				1200		// 全体フィルター
#replace	<LAYER_SCREEN>					1400		// スクリーン
#replace	<LAYER_FADE>					1500		// フェード
#replace	<LAYER_UI>						1800		// ＵＩ
#replace	<LAYER_MAX>						2000
#replace	<LAYER_CHARACTER_RANGE_OFFSET>	 100		// キャラクターの距離によって加算するレイヤー値


//---------------------------------------------------------------------------
// オーダー値定義
//---------------------------------------------------------------------------
#replace	<ORDER_SIDEBAR>					3			// サイドバー
#replace	<ORDER_TOAST>					4			// トースト
#replace	<ORDER_DEBUG>					5			// デバッグ


//---------------------------------------------------------------------------
// 座標定義
//---------------------------------------------------------------------------
// 立ち絵座標
#define		<BS_POS_1>				$$get_default_bs_pos(0)			// １人
#define		<BS_POS_2L>				$$get_default_bs_pos(1)			// ２人左
#define		<BS_POS_2R>				$$get_default_bs_pos(2)			// ２人右
#define		<BS_POS_3L>				$$get_default_bs_pos(3)			// ３人左
#define		<BS_POS_3C>				$$get_default_bs_pos(4)			// ３人中
#define		<BS_POS_3R>				$$get_default_bs_pos(5)			// ３人右
#define		<BS_POS_4LL>			$$get_default_bs_pos(6)			// ４人最左
#define		<BS_POS_4L>				$$get_default_bs_pos(7)			// ４人左
#define		<BS_POS_4R>				$$get_default_bs_pos(8)			// ４人右
#define		<BS_POS_4RR>			$$get_default_bs_pos(9)			// ４人最右
#define		<BS_POS_5LL>			$$get_default_bs_pos(10)		// ５人最左
#define		<BS_POS_5L>				$$get_default_bs_pos(11)		// ５人左
#define		<BS_POS_5C>				$$get_default_bs_pos(12)		// ５人中
#define		<BS_POS_5R>				$$get_default_bs_pos(13)		// ５人右
#define		<BS_POS_5RR>			$$get_default_bs_pos(14)		// ５人最右


//---------------------------------------------------------------------------
// フレームアクション定義
//---------------------------------------------------------------------------
#replace	<FRAME_ACTION_CH_DEBUG>		0			// デバッグ用ショートカットキーに使用するフレームアクション番号
#replace	<FRAME_ACTION_CH_MWBTN>		1			// メッセージウィンドウボタン制御に使用するフレームアクション番号
#replace	<FRAME_ACTION_CH_TOAST>		2			// トースト（レコード取得時のポップアップなど）制御に使用するフレームアクション番号
#replace	<FRAME_ACTION_CH_SIDEBAR>	3			// サイドバー制御に使用するフレームアクション番号


//---------------------------------------------------------------------------
// オブジェクトボタングループ定義
//---------------------------------------------------------------------------
#replace	<OBJBTN_GROUP_NO_SELECT>	0			// 汎用選択肢に使用するオブジェクトボタングループ番号
#replace	<OBJBTN_GROUP_NO_EXCALL>	1			// システムコール中に使用するオブジェクトボタングループ番号
#replace	<OBJBTN_GROUP_NO_MODAL>		2			// モーダルウィンドウに使用するオブジェクトボタングループ番号
#replace	<OBJBTN_GROUP_NO_SIDEBAR>	3			// サイドバーに使用するオブジェクトボタングループ番号


//---------------------------------------------------------------------------
// マスク定義
//---------------------------------------------------------------------------
#replace	<MASK_GROUP_FACE>			0			// 顔グラ


//---------------------------------------------------------------------------
// 時間帯定義
//---------------------------------------------------------------------------
#replace	<TIME_CONTROL_DAYTIME>		0			// 昼
#replace	<TIME_CONTROL_EVENING>		1			// 夕
#replace	<TIME_CONTROL_NIGHT>		2			// 夜
#replace	<TIME_CONTROL_NIGHT_OFF>	3			// 消灯
#replace	<TIME_CONTROL_MORNING>		4			// 朝
#replace	<TIME_CONTROL_EX1>			5			// 特殊１
#replace	<TIME_CONTROL_EX2>			6			// 特殊２


//---------------------------------------------------------------------------
// イベントＣＧ定義
//---------------------------------------------------------------------------
// イベントＣＧワイプ判定定義
// ＣＧ表示命令に以下の定義が指定されている場合は
// 背景等からのイベントＣＧ表示／イベントＣＧがすでに表示されている状態での差分表示でデフォルトのワイプ定義を切り替える
#replace	<DEFAULT_CG_WIPE_NO>		-999		// イベントＣＧのデフォルトワイプ番号
#replace	<DEFAULT_CG_MSG_CLOSE>		-999		// イベントＣＧ表示時にメッセージウィンドウを閉じるかどうか
#replace	<DEFAULT_CG_WAIT>			-999		// イベントＣＧ表示時に待ちを行うかどうか


//---------------------------------------------------------------------------
// 立ち絵定義
//---------------------------------------------------------------------------
// 表示モード
#replace	<BS_DISP_MODE_WIPE>			0		// ワイプ表示
#replace	<BS_DISP_MODE_SLIDE>		1		// スライド表示

// 画像サイズ
#replace	<BS_IMAGE_SIZE_Y>			2048	// 画像サイズ(y)

//---------------------------------------------------------------------------
// アクションオブジェクト定義
//---------------------------------------------------------------------------
#replace	<ACTION_COMMAND>		_act_			// アクションコマンドの識別子

// オブジェクト補正座標タイプ
#replace	<ACTION_REP_INDEX_POS>			0		// 補正座標
#replace	<ACTION_REP_INDEX_ACTION>		1		// アクション
#replace	<ACTION_REP_INDEX_SLIDE>		2		// スライド移動
#replace	<ACTION_REP_INDEX_MAX>			3		// 最大数

// アクション識別子
#define		@0a			<ACTION_COMMAND> + ac_0a	// うんと小さく頷く
#define		@0b			<ACTION_COMMAND> + ac_0b	// うんうんと頷く（２回）
#define		@0c			<ACTION_COMMAND> + ac_0c	// お辞儀をする
#define		@0d			<ACTION_COMMAND> + ac_0d	// えっと短くジャンプ
#define		@0e			<ACTION_COMMAND> + ac_0e	// やったーっと短くジャンプ（２回）
#define		@0f			<ACTION_COMMAND> + ac_0f	// いやと首を振る
#define		@0g			<ACTION_COMMAND> + ac_0g	// いやいやと首を早く振る
#define		@0h			<ACTION_COMMAND> + ac_0h	// びくっと動揺する
#define		@0i			<ACTION_COMMAND> + ac_0i	// ぶるるっと悪寒がする
#define		@0j			<ACTION_COMMAND> + ac_0j	// がくぶると動揺する（ループ）
#define		@0k			<ACTION_COMMAND> + ac_0k	// 疲れ果ててふらふらする（ループ）
#define		@0l			<ACTION_COMMAND> + ac_0l	// はーはーと息を切らす（ループ）
#define		@0m			<ACTION_COMMAND> + ac_0m	// うーんとつま先立ちするように（ループ）
#define		@0n			<ACTION_COMMAND> + ac_0n	// 空中で浮いているように（ループ）
#define		@0o			<ACTION_COMMAND> + ac_0o	// ぴょんぴょんと飛び跳ねる（ループ）
#define		@0p			<ACTION_COMMAND> + ac_0p	// ふらふらと崩れ落ちる
#define		@0q			<ACTION_COMMAND> + ac_0q	// ※以下、確保のみ未実装
#define		@0r			<ACTION_COMMAND> + ac_0r
#define		@0s			<ACTION_COMMAND> + ac_0s
#define		@0t			<ACTION_COMMAND> + ac_0t
#define		@0u			<ACTION_COMMAND> + ac_0u
#define		@0v			<ACTION_COMMAND> + ac_0v
#define		@0w			<ACTION_COMMAND> + ac_0w
#define		@0x			<ACTION_COMMAND> + ac_0x
#define		@0y			<ACTION_COMMAND> + ac_0y
#define		@0z			<ACTION_COMMAND> + ac_0z	// アクション停止

#define		@un				@0a
#define		@un2			@0b
#define		@ojigi			@0c
#define		@jump			@0d
#define		@jump2			@0e
#define		@iya			@0f
#define		@iya2			@0g
#define		@biku			@0h
#define		@bururu			@0i
#define		@gkbr			@0j
#define		@fura2			@0k
#define		@haa2			@0l
#define		@senobi			@0m
#define		@fuyuu			@0n
#define		@pyon2			@0o
#define		@kuzureru		@0p
#define		@stop			@0z

// スライドアクション識別子
#define		@l1			<ACTION_COMMAND> + slide_l1
#define		@l2			<ACTION_COMMAND> + slide_l2
#define		@l3			<ACTION_COMMAND> + slide_l3
#define		@r1			<ACTION_COMMAND> + slide_r1
#define		@r2			<ACTION_COMMAND> + slide_r2
#define		@r3			<ACTION_COMMAND> + slide_r3
#define		@u1			<ACTION_COMMAND> + slide_u1
#define		@u2			<ACTION_COMMAND> + slide_u2
#define		@u3			<ACTION_COMMAND> + slide_u3
#define		@d1			<ACTION_COMMAND> + slide_d1
#define		@d2			<ACTION_COMMAND> + slide_d2
#define		@d3			<ACTION_COMMAND> + slide_d3


//---------------------------------------------------------------------------
// エフェクト定義
//---------------------------------------------------------------------------
#replace	<EFFECT_TYPE_FLASH>					0		// フラッシュ
#replace	<EFFECT_TYPE_SCREEN_FILTER>			1		// スクリーンフィルター
#replace	<EFFECT_TYPE_CINEMASCOPE>			2		// シネマスコープ
#replace	<EFFECT_TYPE_RECOLLECT>				3		// 回想枠
#replace	<EFFECT_TYPE_FILM_NOISE>			4		// フィルムノイズ
#replace	<EFFECT_TYPE_DOT_NOISE>				5		// ドットノイズ
#replace	<EFFECT_TYPE_LINE>					6

// シネマスコープタイプ
#replace	<CINEMASCOPE_TYPE_HORIZONTAL>		0		// 水平
#replace	<CINEMASCOPE_TYPE_VERTICAL>			1		// 垂直

// シネマスコープデータ
#define		.cinemascope_type					.f[1]			// シネマスコープタイプ
#define		.cinemascope_length					.f[2]			// シネマスコープタイプの長さ
#replace	<CINEMASCOPE_FLAG>					   3			// 確保するfフラグ最大数

// ドットノイズタイプ
#replace	<DOT_NOISE_TYPE_SMALL>				0		// 小
#replace	<DOT_NOISE_TYPE_MEDIUM>				1		// 中
#replace	<DOT_NOISE_TYPE_LARGE>				2		// 大

// 回想枠タイプ
#replace	<RECOLLECT_TYPE_WHITE>				0		// 白
#replace	<RECOLLECT_TYPE_BLACK>				1		// 黒

// 集中線タイプ
#replace	<LINE_TYPE_HORIZONTAL>				1		// 水平
#replace	<LINE_TYPE_VERTICAL>				2		// 垂直
#replace	<LINE_TYPE_HORIZONTAL_ALL>			3		// 水平全体
#replace	<LINE_TYPE_VERTICAL_ALL>			4		// 垂直全体

// 集中線色タイプ
#replace	<LINE_TYPE_WHITE>					0		// 白
#replace	<LINE_TYPE_BLACK>					1		// 黒

// レンズフレアタイプ
#replace	<LENS_FLARE_TYPE_DAYTIME_DU>		01		// 昼空↑(下から上)
#replace	<LENS_FLARE_TYPE_DAYTIME_LR>		02		// 昼空→(左から右)
#replace	<LENS_FLARE_TYPE_DAYTIME_UD>		03		// 昼空↓(上から下)
#replace	<LENS_FLARE_TYPE_DAYTIME_RL>		04		// 昼空←(右から左)
#replace	<LENS_FLARE_TYPE_EVENING_DU>		11		// 夕空↑(下から上)
#replace	<LENS_FLARE_TYPE_EVENING_LR>		12		// 夕空→(左から右)
#replace	<LENS_FLARE_TYPE_EVENING_UD>		13		// 夕空↓(上から下)
#replace	<LENS_FLARE_TYPE_EVENING_RL>		14		// 夕空←(右から左)


//---------------------------------------------------------------------------
// 環境エフェクト定義
//---------------------------------------------------------------------------
// 環境エフェクトの量
#replace	@量_少ない					0
#replace	@量_普通					1
#replace	@量_多い					2

// 環境エフェクトの速度
#replace	@速度_遅い					0
#replace	@速度_普通					1
#replace	@速度_速い					2

// 環境エフェクトの方向
#replace	@方向_中心から				0
#replace	@方向_左から				1
#replace	@方向_右から				2


//---------------------------------------------------------------------------
// サウンド定義
//---------------------------------------------------------------------------
#replace	<SE_CH_MAX>					8			// 効果音チャンネル最大数(Gameexe.ini #PCMCH.CNT に対応する)

// ボタン効果音
#replace	<BUTTON_SE_HIT>				0			// ボタン効果音(Gameexe.ini #BUTTON.SE.000 に対応する)
#replace	<BUTTON_SE_DECIDE>			1			// ボタン効果音(Gameexe.ini #BUTTON.SE.001 に対応する)
#replace	<BUTTON_SE_CANCEL>			2			// ボタン効果音(Gameexe.ini #BUTTON.SE.002 に対応する)
#replace	<BUTTON_SE_WARNING>			3			// ボタン効果音(Gameexe.ini #BUTTON.SE.003 に対応する)
#replace	<BUTTON_SE_COMPLETE>		8			// ボタン効果音(Gameexe.ini #BUTTON.SE.008 に対応する)
#replace	<BUTTON_SE_CHANGE_PAGE>		9			// ボタン効果音(Gameexe.ini #BUTTON.SE.009 に対応する)
