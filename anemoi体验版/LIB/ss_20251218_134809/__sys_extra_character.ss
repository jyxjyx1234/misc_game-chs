//===========================================================================
//!
//!    @file     __sys_extra_character.ss
//!    @brief    立ち絵鑑賞シーン(システム側)
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

	// 登録データ
	#property	$bg_list : strlist			// 背景リスト
	#property	$bs_list : strlist			// 立ち絵リスト
	#property	$dress_list : intlist		// 服装リスト
	#property	$pose_list : intlist		// ポーズリスト
	#property	$face_list : intlist		// 表情リスト
	#property	$face_pat_list : intlist	// 表情パターンリスト
	#property	$register					// 登録フラグ
	
	// 立ち絵
	#property	$focus_character			// フォーカス中の立ち絵
	#property	$ch_dress : intlist			// 服装
	#property	$ch_pose  : intlist			// ポーズ
	#property	$ch_face  : intlist			// 表情
	#property	$ch_range : intlist			// 距離
	#property	$ch_disp  : intlist			// 表示／非表示
	#property	$ch_pos_x : intlist			// x座標
	#property	$ch_pos_y : intlist			// y座標
	#property	$ch_layer : intlist			// レイヤー値
	#property	$ch_face_pat : intlist		// 表情パターン
	
	// ブラー背景
	#property	$bg_blur_flag				// ブラー背景フラグ
	
	// メッセージウィンドウ
	#property	$mw_disp						// メッセージウィンドウ表示／非表示
	#property	$mw_pos : intlist[4]			// メッセージウィンドウの表示位置
	#property	$mw_text : strlist[2]			// メッセージウィンドウに表示されるテキスト(名前／本文)
	#property	$mw_text_default : strlist[2]	// メッセージウィンドウに表示されるデフォルトのテキスト(名前／本文)
	#property	$mw_text_center : intlist[2]	// メッセージウィンドウに表示されるテキストのセンタリング
	#property	$mw_moji_max : intlist[2]		// メッセージウィンドウの最大文字数
	
	// エディットボックス管理
	#replace	<EDITBOX_INDEX>		0		// 使用するエディットボックス
	#property	$editbox_x					// x座標
	#property	$editbox_y					// y座標
	#property	$editbox_w					// xサイズ
	#property	$editbox_h					// yサイズ
	#property	$editbox_moji_size			// 文字サイズ
	
	// ＵＩ管理
	#replace	<TLIST_BG>			0		// サムネイルリストタイプ／背景
	#replace	<TLIST_DRESS>		1		// サムネイルリストタイプ／服装
	#replace	<TLIST_POSE>		2		// サムネイルリストタイプ／ポーズ
	#replace	<TLIST_FACE>		3		// サムネイルリストタイプ／表情
	#replace	<TLIST_MAX>			4		// サムネイルリスト最大
	
	#property	$main_interface_disp		// メインＵＩの表示／非表示
	
	// セーブデータ管理
	#define		$save_int_data		B		// int値はＢフラグを使用する
	#define		$save_str_data		S		// str値はＳフラグを使用する
	
	// 入力
	#property	$select_btn		// 選択したボタン
	
#inc_end

//---------------------------------------------------------------------------
// 立ち絵鑑賞シーン開始
//---------------------------------------------------------------------------
#z00

// 立ち絵鑑賞データが未登録の場合
if( $register == 0 )
{
	$$init_scene_data			// シーンデータを初期化する
	$$set_extra_character_list	// 立ち絵鑑賞シーンで使用する各データを設定する
	$$set_scene_data			// シーンデータを設定する
	$register = 1				// 立ち絵鑑賞登録フラグをオンにする
}
$$create_extra_character_scene_object(excall.back)			// シーンオブジェクトを作成する
$$adjust_extra_character_scene_object(excall.back)			// 設定されたシーンオブジェクトを調整する
$$auto_joypad_navigation(@立ち絵鑑賞_メインＵＩ_開始,		// 自動でジョイパッド時のボタン遷移先を設定する
						 @立ち絵鑑賞_メインＵＩ_終了)
$$auto_joypad_navigation(@立ち絵鑑賞_編集ＵＩ_開始,			// 自動でジョイパッド時のボタン遷移先を設定する
						 @立ち絵鑑賞_編集ＵＩ_終了)
$$set_extra_character_joypad_navigation(excall.back)		// 手動でジョイパッド時のボタン遷移先を設定する
$$set_joypad_focus_button_default(excall.back)				// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
$$update_extra_character_joypad_navigation(excall.back)		// パッド入力の遷移を更新する
$$show_extra_character_scene_object(excall.back)			// シーンオブジェクトを表示する

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
		$select_btn = @ボタン_立ち絵鑑賞_操作パネル_閉じる
	}
	
	// メインＵＩが消えている場合は決定ボタンでもメインＵＩを復帰させる
	if( $select_btn == -2 && input.decide.on_down )
	{
		if( $main_interface_disp == 0 )
		{
			$select_btn = @ボタン_立ち絵鑑賞_操作パネル_閉じる
		}
	}
	
	switch( $select_btn ) {
	case(@ボタン_立ち絵鑑賞_背景_フレーム)
		if( syscom.check_joypad_mode == 1 ) {
			if( $$get_ui_thumbnail_list_disp_button_state(excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景]) == 0 ) {
				$$push_bg_button(excall.front, excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_disp_index)
			}
		}
	case(@ボタン_立ち絵鑑賞_服装_フレーム)
		if( syscom.check_joypad_mode == 1 ) {
			if( $$get_ui_thumbnail_list_disp_button_state(excall.front.object[@サムネイルリスト_立ち絵鑑賞_服装]) == 0 ) {
				$$push_ch_dress_button(excall.front, excall.front.object[@サムネイルリスト_立ち絵鑑賞_服装].f_tlist_disp_index)
			}
		}
	case(@ボタン_立ち絵鑑賞_ポーズ_フレーム)
		if( syscom.check_joypad_mode == 1 ) {
			if( $$get_ui_thumbnail_list_disp_button_state(excall.front.object[@サムネイルリスト_立ち絵鑑賞_ポーズ]) == 0 ) {
				$$push_ch_pose_button(excall.front, excall.front.object[@サムネイルリスト_立ち絵鑑賞_ポーズ].f_tlist_disp_index)
			}
		}
	case(@ボタン_立ち絵鑑賞_表情_フレーム)
		if( syscom.check_joypad_mode == 1 ) {
			$$push_ch_face_button(excall.front, excall.front.object[@サムネイルリスト_立ち絵鑑賞_表情].f_tlist_disp_index)
		}
		
	// サムネイルリストのページボタン
	case(@ボタン_立ち絵鑑賞_背景_戻る)					$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景],   <TLIST_BG>,    1)
	case(@ボタン_立ち絵鑑賞_背景_進む)					$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景],   <TLIST_BG>,    1)
	case(@ボタン_立ち絵鑑賞_服装_戻る)					$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_服装],   <TLIST_DRESS>, 1)
	case(@ボタン_立ち絵鑑賞_服装_進む)					$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_服装],   <TLIST_DRESS>, 1)
	case(@ボタン_立ち絵鑑賞_ポーズ_戻る)				$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], <TLIST_POSE>,  1)
	case(@ボタン_立ち絵鑑賞_ポーズ_進む)				$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], <TLIST_POSE>,  1)
	case(@ボタン_立ち絵鑑賞_表情_戻る)					$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_表情],   <TLIST_FACE>,  1)
	case(@ボタン_立ち絵鑑賞_表情_進む)					$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_表情],   <TLIST_FACE>,  1)
	case(@動作_立ち絵鑑賞_背景_サムネイル_前へ)			$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景],   <TLIST_BG>,    0)
	case(@動作_立ち絵鑑賞_背景_サムネイル_次へ)			$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景],   <TLIST_BG>,    0)
	case(@動作_立ち絵鑑賞_服装_サムネイル_前へ)			$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_服装],   <TLIST_DRESS>, 0)
	case(@動作_立ち絵鑑賞_服装_サムネイル_次へ)			$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_服装],   <TLIST_DRESS>, 0)
	case(@動作_立ち絵鑑賞_ポーズ_サムネイル_前へ)		$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], <TLIST_POSE>,  0)
	case(@動作_立ち絵鑑賞_ポーズ_サムネイル_次へ)		$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], <TLIST_POSE>,  0)
	case(@動作_立ち絵鑑賞_表情_サムネイル_前へ)			$$prev_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_表情],   <TLIST_FACE>,  0)
	case(@動作_立ち絵鑑賞_表情_サムネイル_次へ)			$$next_thumbnail_list(excall.front.object[@サムネイルリスト_立ち絵鑑賞_表情],   <TLIST_FACE>,  0)
		
	// 各ボタン
	case(@ボタン_立ち絵鑑賞_距離_遠)					$$push_ch_range_button(excall.front, 1)
	case(@ボタン_立ち絵鑑賞_距離_中)					$$push_ch_range_button(excall.front, 2)
	case(@ボタン_立ち絵鑑賞_距離_近)					$$push_ch_range_button(excall.front, 3)
	case(@ボタン_立ち絵鑑賞_ブラー背景_オン)			$$push_bg_blur_button(excall.front, 1)
	case(@ボタン_立ち絵鑑賞_ブラー背景_オフ)			$$push_bg_blur_button(excall.front, 0)
	case(@ボタン_立ち絵鑑賞_操作パネル_閉じる)			$$reverse_main_interface(excall.front)
	case(@ボタン_立ち絵鑑賞_操作パネル_セーブ)			$$save_bmp
	case(@ボタン_立ち絵鑑賞_操作パネル_ロード)			$$load_bmp
	case(@ボタン_立ち絵鑑賞_操作パネル_テキスト編集)	$$push_edit_text(excall.front)
	case(@ボタン_立ち絵鑑賞_操作パネル_位置移動)		$$move_focus_ch_pos(excall.front)
	case(@ボタン_立ち絵鑑賞_操作パネル_位置初期化)		$$reset_focus_ch_pos(excall.front)
	case(@ボタン_立ち絵鑑賞_操作パネル_全初期化)		$$reset_all(excall.front)
	case(@ボタン_立ち絵鑑賞_閉じる)						break
	case(@ボタン_エクストラ_ギャラリー)					@dm("遷移調整中")
	case(@ボタン_エクストラ_レコード)					@dm("遷移調整中")
	case(@ボタン_エクストラ_タイトル)					@dm("遷移調整中")
	}
	
	// 立ち絵表示／非表示ボタンが押された場合
	if( @ボタン_立ち絵鑑賞_表示／非表示 <= $select_btn && $select_btn < @ボタン_立ち絵鑑賞_表示／非表示_最大 )
	{
		$$push_ch_disp_button(excall.front, $select_btn - @ボタン_立ち絵鑑賞_表示／非表示)
	}
	
	// 立ち絵にマウスヒットしている場合
	if( syscom.check_joypad_mode == 0 && @オブジェクト_立ち絵鑑賞_立ち絵 <= $$get_hit_btn && $$get_hit_btn < @立ち絵鑑賞_メインＵＩ_開始 )
	{
		excall.front.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].bright = __EXTRA_CHARACTER_HIT_BRIGHT
	}
	else
	{
		excall.front.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].bright = 0
	}
	
	// 立ち絵が押された場合
	if( @オブジェクト_立ち絵鑑賞_立ち絵 <= $$get_pushed_btn && $$get_pushed_btn < @立ち絵鑑賞_メインＵＩ_開始 )
	{
		excall.front.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].bright = __EXTRA_CHARACTER_HIT_BRIGHT
		$focus_character = $$get_pushed_btn - @オブジェクト_立ち絵鑑賞_立ち絵
		$$drag_ch_object(excall.front, $focus_character)
	}
	
	// 背景が押された場合
	if( @ボタン_立ち絵鑑賞_背景_サムネイル <= $select_btn && $select_btn < @ボタン_立ち絵鑑賞_背景_サムネイル_最大 )
	{
		$$push_bg_button(excall.front, $select_btn - @ボタン_立ち絵鑑賞_背景_サムネイル)
	}
	
	// 服装が押された場合
	if( @ボタン_立ち絵鑑賞_服装_サムネイル <= $select_btn && $select_btn < @ボタン_立ち絵鑑賞_服装_サムネイル_最大 )
	{
		$$push_ch_dress_button(excall.front, $select_btn - @ボタン_立ち絵鑑賞_服装_サムネイル)
	}
	
	// ポーズが押された場合
	if( @ボタン_立ち絵鑑賞_ポーズ_サムネイル <= $select_btn && $select_btn < @ボタン_立ち絵鑑賞_ポーズ_サムネイル_最大 )
	{
		$$push_ch_pose_button(excall.front, $select_btn - @ボタン_立ち絵鑑賞_ポーズ_サムネイル)
	}
	
	// 表情が押された場合
	if( @ボタン_立ち絵鑑賞_表情_サムネイル <= $select_btn && $select_btn < @ボタン_立ち絵鑑賞_表情_サムネイル_最大 )
	{
		$$push_ch_face_button(excall.front, $select_btn - @ボタン_立ち絵鑑賞_表情_サムネイル)
	}
	
	// 操作パネルのヘルプを更新する
	$$update_control_panel_help(excall.front)
	
	// マウスホイール動作を実行する
	$$update_mouse_wheel(excall.front)
	
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

// エクストラのモード選択シーンが有効の場合はモード選択オブジェクトを構成する
if( __EXTRA_MODE_SELECT_SCENE == 1 ) {
	$$build_extra_mode_select_scene(excall.back)
}

$$off_system_front_wipe_copy_all			// 全てのシステムオブジェクトのワイプコピーフラグをオフにする
$$hide_extra_cg_scene_object(excall.front)	// シーンオブジェクトを非表示にする

return


//---------------------------------------------------------------------------
// シーンデータを初期化する
//---------------------------------------------------------------------------
command $$init_scene_data
{
	// 登録データ
	$bg_list.init
	$bs_list.init
	$dress_list.init
	$pose_list.init
	$face_list.init
	$face_pat_list.init
	
	// 立ち絵
	$ch_dress.init
	$ch_pose.init
	$ch_face.init
	$ch_range.init
	$ch_pos_x.init
	$ch_pos_y.init
	$ch_layer.init
	$ch_face_pat.init
	
	// その他
	$mw_disp = 1
	$main_interface_disp = 1
}

//---------------------------------------------------------------------------
// シーンデータを設定する
//---------------------------------------------------------------------------
command $$set_scene_data
{
	property $i
	property $len
	
	// 立ち絵
	$len = $bs_list.get_size
	$ch_dress.resize($len)
	$ch_pose.resize($len)
	$ch_face.resize($len)
	$ch_range.resize($len)
	$ch_disp.resize($len)
	$ch_pos_x.resize($len)
	$ch_pos_y.resize($len)
	$ch_layer.resize($len)
	$ch_face_pat.resize($len)
	
	for( $i = 0, $i < $len, $i += 1 )
	{
		$ch_dress[$i] = 0
		$ch_pose[$i]  = 0
		$ch_face[$i]  = 0
		$ch_range[$i] = 1
		$ch_disp[$i]  = 0
		$ch_pos_x[$i] = $$get_ch_base_x
		$ch_pos_y[$i] = $$get_ch_base_y
		$ch_layer[$i] = 200
		$ch_face_pat[$i] = -1
	}
	
	// その他
	$focus_character = -1
	$bg_blur_flag = 0
	$mw_text[0] = $mw_text_default[0]
	$mw_text[1] = $mw_text_default[1]
}

//---------------------------------------------------------------------------
// 背景リストに指定した背景を追加する
//---------------------------------------------------------------------------
command $$set_extra_character_bg_list(property $bg_name : str)
{
	if( $bg_list.get_size >= @登録_立ち絵鑑賞_背景最大数 ) {
		@dm("__sys_extra_character.ss → $$set_extra_character_bg_list\n背景の最大数を超えて登録しようとしています。この背景は登録できません。\n背景ファイル名 : " + $bg_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_背景最大数) + "\n現在の登録数 : " + math.tostr($bg_list.get_size))
		return
	}
	
	$bg_list.resize($bg_list.get_size + 1)
	$bg_list[$bg_list.get_size - 1] = $bg_name
}

//---------------------------------------------------------------------------
// 立ち絵リストに指定した立ち絵を追加する
//---------------------------------------------------------------------------
command $$set_extra_character_bs_list(property $bs_name : str)
{
	if( $bs_list.get_size >= @登録_立ち絵鑑賞_立ち絵最大数 ) {
		@dm("__sys_extra_character.ss → $$set_extra_character_bs_list\n立ち絵の最大数を超えて登録しようとしています。この立ち絵は登録できません。\n立ち絵ファイル名 : " + $bs_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_立ち絵最大数) + "\n現在の登録数 : " + math.tostr($bs_list.get_size))
		return
	}
	
	$bs_list.resize($bs_list.get_size + 1)
	$bs_list[$bs_list.get_size - 1] = $bs_name
}

//---------------------------------------------------------------------------
// 服装リストに指定した服装を追加する
//---------------------------------------------------------------------------
command $$set_extra_character_dress_list(property $bs_name : str, property $dress_index, property $dress_type)
{
	property $index
	
	// 初期化(リストのサイズが確保されていない場合)
	if( $dress_list.get_size == 0 ) {
		$dress_list.resize($bs_list.get_size * @登録_立ち絵鑑賞_服装最大数)
	}
	
	// 指定インデックスが登録服装最大数を超えていないかチェックする
	if( $dress_index >= @登録_立ち絵鑑賞_服装最大数 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_dress_list\n服装の最大数を超えて登録しようとしています。この服装は登録できません。\n立ち絵識別子 : " + $bs_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_服装最大数) + "\n現在の登録インデックス : " + math.tostr($dress_index))
		return
	}
	
	// 登録している立ち絵識別子から同じ識別子を検索する
	$index = $$get_ch_identifier_index($bs_name)
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_dress_list\n識別子が一致する立ち絵がありません。この服装は登録できません。\n立ち絵識別子 : " + $bs_name)
		return
	}
	
	$dress_list[$index * @登録_立ち絵鑑賞_服装最大数 + $dress_index] = $dress_type
}

//---------------------------------------------------------------------------
// ポーズリストに指定したポーズを追加する
//---------------------------------------------------------------------------
command $$set_extra_character_pose_list(property $bs_name : str, property $pose_index, property $pose_type)
{
	property $index
	
	// 初期化(リストのサイズが確保されていない場合)
	if( $pose_list.get_size == 0 ) {
		$pose_list.resize($bs_list.get_size * @登録_立ち絵鑑賞_ポーズ最大数)
	}
	
	// 指定インデックスが登録服装最大数を超えていないかチェックする
	if( $pose_index >= @登録_立ち絵鑑賞_ポーズ最大数 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_pose_list\nポーズの最大数を超えて登録しようとしています。このポーズは登録できません。\n立ち絵識別子 : " + $bs_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_ポーズ最大数) + "\n現在の登録インデックス : " + math.tostr($pose_index))
		return
	}
	
	// 登録している立ち絵識別子から同じ識別子を検索する
	$index = $$get_ch_identifier_index($bs_name)
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_pose_list\n識別子が一致する立ち絵がありません。このポーズは登録できません。\n立ち絵識別子 : " + $bs_name)
		return
	}
	
	$pose_list[$index * @登録_立ち絵鑑賞_ポーズ最大数 + $pose_index] = $pose_type
}

//---------------------------------------------------------------------------
// 表情リストに指定した表情を追加する
//---------------------------------------------------------------------------
command $$set_extra_character_face_list(property $bs_name : str, property $face_pat, property $face_index, property $face_type)
{
	property $i
	property $index
	
	// 初期化(リストのサイズが確保されていない場合)
	if( $face_list.get_size == 0 ) {
		$face_list.resize((@登録_立ち絵鑑賞_表情最大数 + 1) * @登録_立ち絵鑑賞_表情パターン最大数)
		
		for( $i = 0, $i < $face_list.get_size, $i += 1 )
		{
			$face_list[$i] = -1
		}
	}
	
	// 指定インデックスが登録表情最大数を超えていないかチェックする
	if( $face_index >= @登録_立ち絵鑑賞_表情最大数 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_face_list\n表情の最大数を超えて登録しようとしています。この表情は登録できません。\n立ち絵識別子 : " + $bs_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_表情最大数) + "\n現在の登録インデックス : " + math.tostr($face_index))
		return
	}
	
	// 指定パターンが登録表情パターン最大数を超えていないかチェックする
	if( $face_pat >= @登録_立ち絵鑑賞_表情パターン最大数 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_face_list\n表情パターンの最大数を超えて登録しようとしています。この表情は登録できません。\n立ち絵識別子 : " + $bs_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_表情パターン最大数) + "\n現在の登録インデックス : " + math.tostr($face_pat))
		return
	}
	
	// 登録している立ち絵識別子から同じ識別子を検索する
	$index = $$get_ch_identifier_index($bs_name)
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_face_list\n識別子が一致する立ち絵がありません。この表情は登録できません。\n立ち絵識別子 : " + $bs_name)
		return
	}
	
	$face_list[$face_pat * (@登録_立ち絵鑑賞_表情最大数 + 1)] = $index
	$face_list[$face_pat * (@登録_立ち絵鑑賞_表情最大数 + 1) + $face_index + 1] = $face_type
}

//---------------------------------------------------------------------------
// 表情パターンリストに指定した表情パターンを追加する
//---------------------------------------------------------------------------
command $$set_extra_character_face_pat_list(property $bs_name : str, property $face_pat, property $dress, property $direction, property $arms)
{
	property $i
	property $index
	
	// 初期化(リストのサイズが確保されていない場合)
	if( $face_pat_list.get_size == 0 ) {
		$face_pat_list.resize(@登録_立ち絵鑑賞_表情パターン最大数 * 3)
		
		for( $i = 0, $i < $face_pat_list.get_size, $i += 1 )
		{
			$face_pat_list[$i] = -2
		}
	}
	
	// 指定パターンが登録表情パターン最大数を超えていないかチェックする
	if( $face_pat >= @登録_立ち絵鑑賞_表情パターン最大数 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_face_pat_list\n表情パターンの最大数を超えて登録しようとしています。この表情パターンは登録できません。\n立ち絵識別子 : " + $bs_name + "\n登録最大数 : " + math.tostr(@登録_立ち絵鑑賞_表情パターン最大数) + "\n現在の登録インデックス : " + math.tostr($face_pat))
		return
	}
	
	// 登録している立ち絵識別子から同じ識別子を検索する
	$index = $$get_ch_identifier_index($bs_name)
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_face_pat_list\n識別子が一致する立ち絵がありません。この表情パターンは登録できません。\n立ち絵識別子 : " + $bs_name)
		return
	}
	
	// 表情リストに登録されているキャラクター名をチェックする
	if( $index != $face_list[$face_pat * (@登録_立ち絵鑑賞_表情最大数 + 1)] )
	{
		@dm("__sys_extra_character.ss → $$set_extra_character_face_pat_list\n表情パターンとして登録されているキャラクターが一致しません。この表情パターンは登録できません。\n登録済み表情キャラクター : " + $bs_list[$face_list[$face_pat * (@登録_立ち絵鑑賞_表情最大数 + 1)]] + "\n新たにパターンとして登録するキャラクター : " + $bs_name + "\n表情パターン番号 : " + math.tostr($face_pat))
		return
	}
	
	$index = $face_pat * 3
	$face_pat_list[$face_pat * 3 + 0] = $dress
	$face_pat_list[$face_pat * 3 + 1] = $direction
	$face_pat_list[$face_pat * 3 + 2] = $arms
}

//---------------------------------------------------------------------------
// メッセージウィンドウのテキスト位置を設定する
//---------------------------------------------------------------------------
command $$set_extra_character_mw_pos(property $type, property $x, property $y)
{
	$mw_pos[$type * 2 + 0] = $x
	$mw_pos[$type * 2 + 1] = $y
}

//---------------------------------------------------------------------------
// メッセージウィンドウに表示されるデフォルトのテキストを設定する
//---------------------------------------------------------------------------
command $$set_extra_character_mw_default_text(property $type, property $text : str)
{
	$mw_text_default[$type] = $text
}

//---------------------------------------------------------------------------
// メッセージウィンドウに表示されるテキストのセンタリングを設定する
//---------------------------------------------------------------------------
command $$set_extra_character_mw_text_center(property $type, property $centering)
{
	$mw_text_center[$type] = $centering
}

//---------------------------------------------------------------------------
// メッセージウィンドウに表示されるテキストの最大文字数を取得する
//---------------------------------------------------------------------------
command $$get_extra_character_mw_len_max(property $type) : int
{
	return ($mw_moji_max[$type])
}

//---------------------------------------------------------------------------
// メッセージウィンドウに表示されるテキストの最大文字数を設定する
//---------------------------------------------------------------------------
command $$set_extra_character_mw_len_max(property $type, property $max)
{
	$mw_moji_max[$type] = $max
}

//---------------------------------------------------------------------------
// 登録されている背景の数を取得する
//---------------------------------------------------------------------------
command $$get_extra_character_register_bg_max : int
{
	return ($bg_list.get_size)
}

//---------------------------------------------------------------------------
// 登録されているキャラクターの数を取得する
//---------------------------------------------------------------------------
command $$get_extra_character_register_ch_max : int
{
	return ($bs_list.get_size)
}

//---------------------------------------------------------------------------
// 立ち絵識別子からリストインデックスを取得する
//---------------------------------------------------------------------------
command $$get_ch_identifier_index(property $bs_name : str) : int
{
	property $i
	property $len
	
	$len = $bs_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 一致する立ち絵識別子がある場合
		if( $bs_list[$i] == $bs_name )
		{
			return ($i)
		}
	}
	
	return (-1)
}

//---------------------------------------------------------------------------
// 登録されている服装の数を取得する
//---------------------------------------------------------------------------
command $$get_ch_dress_max(property $bs_name : str) : int
{
	property $i
	property $index
	
	// 立ち絵識別子からリストインデックスを取得する
	$index = $$get_ch_identifier_index($bs_name)
	
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$get_ch_dress_max\n識別子が一致する立ち絵がありません。\n立ち絵識別子 : " + $bs_name)
		return (0)
	}
	
	// 登録されている各服装データをチェックする
	for( $i = 0, $i < @登録_立ち絵鑑賞_服装最大数, $i += 1 )
	{
		if( $dress_list[$index * @登録_立ち絵鑑賞_服装最大数 + $i] == -1 ) {
			return ($i)
		}
	}
	
	return (@登録_立ち絵鑑賞_服装最大数)
}

//---------------------------------------------------------------------------
// 登録された服装から指定されたインデックスの服装を取得する
//---------------------------------------------------------------------------
command $$get_ch_dress_type(property $bs_name : str, property $dress_index) : int
{
	property $index
	
	// 立ち絵識別子からリストインデックスを取得する
	$index = $$get_ch_identifier_index($bs_name)
	
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$get_ch_dress_max\n識別子が一致する立ち絵がありません。\n立ち絵識別子 : " + $bs_name)
		return (0)
	}
	
	return ($dress_list[$index * @登録_立ち絵鑑賞_服装最大数 + $dress_index])
}

//---------------------------------------------------------------------------
// 登録されているポーズの数を取得する
//---------------------------------------------------------------------------
command $$get_ch_pose_max(property $bs_name : str) : int
{
	property $i
	property $index
	
	// 立ち絵識別子からリストインデックスを取得する
	$index = $$get_ch_identifier_index($bs_name)
	
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$get_ch_pose_max\n識別子が一致する立ち絵がありません。\n立ち絵識別子 : " + $bs_name)
		return (0)
	}
	
	// 登録されている各ポーズデータをチェックする
	for( $i = 0, $i < @登録_立ち絵鑑賞_ポーズ最大数, $i += 1 )
	{
		if( $pose_list[$index * @登録_立ち絵鑑賞_ポーズ最大数 + $i] == -1 ) {
			return ($i)
		}
	}
	
	return (@登録_立ち絵鑑賞_ポーズ最大数)
}

//---------------------------------------------------------------------------
// 登録されたポーズから指定されたインデックスのポーズを取得する
//---------------------------------------------------------------------------
command $$get_ch_pose_type(property $bs_name : str, property $pose_index) : int
{
	property $pose
	property $index
	property $tmp : str
	property $dic : str
	property $arm : str
	
	// 立ち絵識別子からリストインデックスを取得する
	$index = $$get_ch_identifier_index($bs_name)
	
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$get_ch_pose_max\n識別子が一致する立ち絵がありません。\n立ち絵識別子 : " + $bs_name)
		return (0)
	}
	
	$pose = $pose_list[$index * @登録_立ち絵鑑賞_ポーズ最大数 + $pose_index]
	
	// 立ち絵指定名で向き指定と腕指定の入れ替えが有効の場合は向きと腕指定を入れ替える
	if( __BS_NAME_DIRECTION_ARMS_SWAP == 1 )
	{
		$tmp = math.tostr($pose)
		$dic = $tmp.mid(1, 1)
		$arm = $tmp.left(1)
		$pose = $dic.tonum() * 10 + $arm.tonum()
	}
	
	return ($pose)
}

//---------------------------------------------------------------------------
// 登録されている表情の数を取得する
//---------------------------------------------------------------------------
command $$get_ch_face_max(property $bs_name : str, property $face_pat) : int
{
	property $i
	property $index
	
	// 立ち絵識別子からリストインデックスを取得する
	$index = $$get_ch_identifier_index($bs_name)
	
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$get_ch_pose_max\n識別子が一致する立ち絵がありません。\n立ち絵識別子 : " + $bs_name)
		return (0)
	}
	
	// 登録されている各表情データをチェックする
	for( $i = 0, $i < @登録_立ち絵鑑賞_表情最大数, $i += 1 )
	{
		if( $face_list[$face_pat * (@登録_立ち絵鑑賞_表情最大数 + 1) + 1 + $i] == -1 ) {
			return ($i)
		}
	}
	
	return (@登録_立ち絵鑑賞_表情最大数)
}

//---------------------------------------------------------------------------
// 登録された表情から指定された表情パターン、インデックスの表情を取得する
//---------------------------------------------------------------------------
command $$get_ch_face_type(property $bs_name : str, property $face_pat, property $face_index) : int
{
	property $index
	
	// 立ち絵識別子からリストインデックスを取得する
	$index = $$get_ch_identifier_index($bs_name)
	
	if( $index == -1 )
	{
		@dm("__sys_extra_character.ss → $$get_ch_pose_max\n識別子が一致する立ち絵がありません。\n立ち絵識別子 : " + $bs_name)
		return (0)
	}
	
	return ($face_list[$face_pat * (@登録_立ち絵鑑賞_表情最大数 + 1) + 1 + $face_index])
}

//---------------------------------------------------------------------------
// 登録された表情パターンから指定されたキャラクターの表情パターンを取得する
//---------------------------------------------------------------------------
command $$get_ch_face_pat(property $ch_no) : int
{
	property $i
	property $index
	property $dress
	property $dic
	property $arm
	property $tmp : str
	
	for( $i = @登録_立ち絵鑑賞_表情パターン最大数 - 1, $i > 0, $i -= 1 )
	{
		// 立ち絵識別子からリストインデックスを取得する
		$index = $$get_ch_identifier_index($bs_list[$ch_no])
		
		// 指定されたキャラクターと表情パターンに登録されているキャラクターの識別子が同じかチェックする
		if( $face_list[$i * (@登録_立ち絵鑑賞_表情最大数 + 1)] != $ch_no )
		{
			// 表情パターンに登録されているキャラクターでない場合は処理をスキップする
			continue
		}
		
		// 表情パターンに登録されている服装、向き、腕データを取得する
		$dress = $face_pat_list[$i * 3 + 0]
		$dic   = $face_pat_list[$i * 3 + 1]
		$arm   = $face_pat_list[$i * 3 + 2]
		
		// 服装指定がある場合
		if( $dress != -1 )
		{
			// 登録データが初期値の場合はスキップする
			if( $dress == -2 ) {
				continue
			}
			
			// 登録されている服装データと現在の服装が違う場合はスキップする
			if( $dress != $$get_ch_dress_type($bs_list[$ch_no], $ch_dress[$ch_no]) )
			{
				continue
			}
		}
		
		// 向き指定がある場合
		if( $dic != -1 )
		{
			// 登録データが初期値の場合はスキップする
			if( $dic == -2 ) {
				continue
			}
			
			// 登録されている向きデータと現在の向きが違う場合はスキップする
			$tmp = math.tostr($$get_ch_pose_type($bs_list[$ch_no], $ch_pose[$ch_no]))
			
			if( __BS_NAME_DIRECTION_ARMS_SWAP == 1 ) { $tmp = $tmp.mid(1, 1) }
			else                                     { $tmp = $tmp.left(1)   }
			
			if( $dic != $tmp.tonum() ) {
				continue
			}
		}
		
		// 腕指定がある場合
		if( $arm != -1 )
		{
			// 登録データが初期値の場合はスキップする
			if( $arm == -2 ) {
				continue
			}
			
			// 登録されている腕データと現在の腕が違う場合はスキップする
			$tmp = math.tostr($$get_ch_pose_type($bs_list[$ch_no], $ch_pose[$ch_no]))
			
			if( __BS_NAME_DIRECTION_ARMS_SWAP == 1 ) { $tmp = $tmp.left(1)   }
			else                                     { $tmp = $tmp.mid(1, 1) }
			
			if( $dic != $tmp.tonum() ) {
				continue
			}
		}
		
		return ($i)
	}
	
	@dm("__sys_extra_character.ss → $$_get_face_pat\n表情パターンに登録されていないデータが選択されました。表情パターン登録を確認してください。\n立ち絵識別子 : " + $bs_list[$ch_no])
	
	return (0)
}

//---------------------------------------------------------------------------
// 設定されたシーンオブジェクトを調整する
//---------------------------------------------------------------------------
command $$adjust_extra_character_scene_object(property $stage : stage)
{
	property $i
	property $tmp_button_no
	
	// 背景／表情サムネイルリストはページオフセットを設定する
	$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_offset_page = $stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_disp_max
	$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].f_tlist_offset_page = $stage.object[@サムネイルリスト_立ち絵鑑賞_表情].f_tlist_disp_max
	
	// キャラ表示／非表示ボタンのフレームはサイズを計算して位置を補正する
	$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].x_rep.resize(1)
	$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].y_rep.resize(1)
	$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].x_rep[0] = -($stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].get_size_x - $stage.object[@ボタン_立ち絵鑑賞_表示／非表示].get_size_x) / 2
	$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].y_rep[0] = -($stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].get_size_y - $stage.object[@ボタン_立ち絵鑑賞_表示／非表示].get_size_y) / 2
	
	// 各フレームは当たり判定を持ち、マウスカーソルがフレームの上にある場合は立ち絵をドラッグできないようにする
	$tmp_button_no = 999
	$stage.object[@フレーム_立ち絵鑑賞_距離].set_button($tmp_button_no, <OBJBTN_GROUP_NO_EXCALL>, 2, -1)
	$stage.object[@フレーム_立ち絵鑑賞_ブラー背景].set_button($tmp_button_no, <OBJBTN_GROUP_NO_EXCALL>, 2, -1)
	$stage.object[@フレーム_立ち絵鑑賞_操作パネル].set_button($tmp_button_no, <OBJBTN_GROUP_NO_EXCALL>, 2, -1)
	
	// 編集ウィンドウで表示されるものは初期では表示しない
	$$set_edit_interface_disp($stage, 0)
	
	// 編集ウィンドウのメッセージウィンドウ表示フラグを元にトグルボタンを更新する
	$$update_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示], $mw_disp)
	
	// 編集ウィンドウのテキスト入力背景は初期では表示しない
	$stage.object[@イメージ_立ち絵鑑賞_編集_入力_背景].disp = 0
	
	// メッセージウィンドウはフィルターカラーを適用する
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前].tr = syscom.get_filter_color_a
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前].color_add_r = syscom.get_filter_color_r
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前].color_add_g = syscom.get_filter_color_g
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前].color_add_b = syscom.get_filter_color_b
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文].tr = syscom.get_filter_color_a
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文].color_add_r = syscom.get_filter_color_r
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文].color_add_g = syscom.get_filter_color_g
	$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文].color_add_b = syscom.get_filter_color_b
	
	// メッセージウィンドウの文字パラメータを適用する
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].create_string($mw_text[0], 0, $mw_pos[0], $mw_pos[1])
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].set_string_param(36, 0, 10, $mw_moji_max[0], 0, 1, -1)
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].create_string($mw_text[1], 0, $mw_pos[2], $mw_pos[3])
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].set_string_param(38, 0, 18, $mw_moji_max[1] / 3, 0, 1, -1)
	
	// 名前欄はセンタリングができるよう補正座標を持つ
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].x_rep.resize(1)
	
	// 確認ダイアログは非表示にする
	$stage.object[@イメージ_立ち絵鑑賞_ダイアログ_フィルター].disp = 0
	$stage.object[@イメージ_立ち絵鑑賞_ダイアログ_背景].disp       = 0
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_はい].disp         = 0
	$stage.object[@ボタン_立ち絵鑑賞_ダイアログ_いいえ].disp       = 0
	$stage.object[@イメージ_立ち絵鑑賞_ダイアログ_メッセージ].disp = 0
	
	// ＵＩオブジェクトの場合はレイヤー値を設定する
	for( $i = @立ち絵鑑賞_メインＵＩ_開始, $i <= @立ち絵鑑賞_ダイアログＵＩ_終了, $i += 1 )
	{
		$stage.object[$i].layer = <LAYER_UI>
	}
	
	// キャラ表示／非表示ボタンフレームはさらに上にする
	$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].layer += 1
	
	// すべてのオブジェクトを更新する
	$$update_all_object($stage)
}

//---------------------------------------------------------------------------
// すべてのオブジェクトを更新する
//---------------------------------------------------------------------------
command $$update_all_object(property $stage : stage)
{
	// 背景
	$$set_bg($stage, $stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index)
	
	// 背景リスト
	$$reset_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_背景])
	
	// キャラ表示／非表示
	$$update_ch_disp_button($stage)
	
	// フォーカスキャラクターパネル
	$$update_focus_ch_panel($stage)
	
	// 距離ボタンを更新する
	$$update_ch_range_button($stage)
	
	// ブラー背景
	$$update_bg_blur_button($stage)
	
	// すべてのキャラクター
	$$update_ch_object_all($stage)
	
	// メッセージウィンドウ
	$$update_mw_object($stage)
	
	// 操作パネル
	$$update_control_panel($stage)
}

//---------------------------------------------------------------------------
// 背景ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_bg_button(property $stage : stage, property $select_index)
{
	// 背景を設定する
	$$set_bg($stage, $select_index)
	
	// 選択中のサムネイルを設定する
	$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index = $select_index
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_背景])
	
	// ブラー背景ボタンを更新する
	$$update_bg_blur_button($stage)
}

//---------------------------------------------------------------------------
// 背景を設定する
//---------------------------------------------------------------------------
command $$set_bg(property $stage : stage, property $index)
{
	property $i
	property $len
	property $bg_name : str
	
	// 選択中の背景からファイル名を取得する
	$bg_name = $bg_list[$index]
	
	// ブラー背景フラグがオンの場合はブラー背景に変更する
	if( $bg_blur_flag ) {
		$bg_name = __BG_BLUR_PREFIX + $bg_name
	}
	
	// ブラー背景が存在しない場合、背景を通常に戻す
	if( $$exists_g00($bg_name) == 0 )
	{
		$bg_name = $$chop_bg_blur_name($bg_name)
		$bg_blur_flag = 0
	}
	
	// 背景を設定する
	$$set_bg_object($stage.object[@オブジェクト_立ち絵鑑賞_背景], $bg_name)
	
	// トーンカーブが有効な場合は設定する
	if( __USE_BS_TONECURVE )
	{
		$len = $bs_list.get_size
		for( $i = 0, $i < $len, $i += 1 )
		{
			// 表示中のキャラクターにトーンカーブを適用する
			if( $ch_disp[$i] ) {
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].tonecurve_no = $$get_bg_tonecurve_no
			}
		}
	}
}

//---------------------------------------------------------------------------
// キャラクターを作成する
//---------------------------------------------------------------------------
command $$create_ch_object(property $stage : stage, property $ch_no)
{
	// 服装を設定する
	$$set_bs_dress_type($bs_list[$ch_no], $$get_ch_dress_type($bs_list[$ch_no], $ch_dress[$ch_no]))
	
	// オブジェクトを生成する
	$$set_bs_object($stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no], $$get_ch_name($ch_no))
	
	// 各パラメータを反映する
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].disp  = $ch_disp[$ch_no]
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x     = $ch_pos_x[$ch_no]
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y     = $ch_pos_y[$ch_no]
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].layer = $ch_layer[$ch_no]
}

//---------------------------------------------------------------------------
// キャラクターの基本座標を取得する
//---------------------------------------------------------------------------
command $$get_ch_base_x : int { return (<SCREEN_CENTER_X>) }
command $$get_ch_base_y : int { return (-(<BS_IMAGE_SIZE_Y> - <SCREEN_HEIGHT>) / 2) }

//---------------------------------------------------------------------------
// すべてのキャラクターを更新する
//---------------------------------------------------------------------------
command $$update_ch_object_all(property $stage : stage)
{
	property $i
	property $j
	property $len
	
	$len = $bs_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		if( $ch_disp[$i] )
		{
			$$create_ch_object($stage, $i)
			$$focus_ch_object($stage, $focus_character)
		}
		else
		{
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].init
		}
	}
}

//---------------------------------------------------------------------------
// キャラクターのボタン判定を更新する
//---------------------------------------------------------------------------
command $$update_ch_object_button(property $stage : stage, property $flag)
{
	property $i
	property $len
	
	$len = $bs_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 表示されていない立ち絵の処理はスキップする
		if( $ch_disp[$i] == 0 ) {
			continue
		}
		
		// フラグがオンの場合はすべてボタンをクリアにする
		if( $flag )
		{
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].clear_button
		}
		else
		{
			// フォーカスされているキャラクターにはボタンを設定する
			if( $focus_character == $i )
			{
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].set_button(@オブジェクト_立ち絵鑑賞_立ち絵 + $i, <OBJBTN_GROUP_NO_EXCALL>, 2, -1)
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].set_button_alpha_test(1)
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].set_button_pushkeep(1)
			}
			else
			{
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].clear_button
			}
		}
	}
}

//---------------------------------------------------------------------------
// キャラクターの不透明度を更新する
//---------------------------------------------------------------------------
command $$update_ch_object_tr(property $stage : stage, property $flag)
{
	property $i
	property $len
	
	$len = $bs_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 表示されていない立ち絵の処理はスキップする
		if( $ch_disp[$i] == 0 ) {
			continue
		}
		
		// フラグがオンの場合はすべて不透明にする
		if( $flag )
		{
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].tr = 255
		}
		
		// フラグがオフの場合はフォーカスキャラクター以外は半透明にする
		else
		{
			if( $focus_character == $i )
			{
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].tr = 255
			}
			else
			{
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].tr = 128
			}
		}
	}
}

//---------------------------------------------------------------------------
// キャラクターをドラッグする(座標を変更する)
//---------------------------------------------------------------------------
command $$drag_ch_object(property $stage : stage, property $ch_no)
{
	property $x
	property $y
	property $base_x
	property $base_y
	property $tmp_mw_disp
	
	// 立ち絵とマウスの座標の差を保存する
	$x = mouse.get_pos_x - $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x
	$y = mouse.get_pos_y - $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y
	
	// 立ち絵のデフォルト座標を設定する
	$base_x = $$get_ch_base_x
	$base_y = $$get_ch_base_y
	
	// インターフェイスを元に戻す
	$tmp_mw_disp = $mw_disp					// メッセージウィンドウの表示状態を保存する
	$mw_disp = 0							// ドラッグ中は必ずメッセージウィンドウを表示しない
	$$set_main_interface_disp($stage, 0)	// メインＵＩを非表示にする
	
	input.clear
	while(1)
	{
		// 入力制御を更新する
		$$input_update($stage, <OBJBTN_GROUP_NO_EXCALL>)
		
		// 立ち絵をマウス座標に追従する
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x = mouse.get_pos_x - $x
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y = mouse.get_pos_y - $y
		
		// スナップが設定されている場合は立ち絵座標をスナップする
		$$snap_ch_object($stage, $ch_no)
		
		// ドラッグしているキャラクターの範囲を制限する
		$$drag_ch_limit($stage, $ch_no)
		
		// マウスが離されたときドラッグ処理終了する
		if( $$get_pushed_btn == -1 )
		{
			// キャラクター座標を保存する
			$ch_pos_x[$ch_no] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x
			$ch_pos_y[$ch_no] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y
			
			break
		}
		
		input.next		// 入力の更新
		disp			// 画面の更新
	}
	
	// システム効果音
	se.play_by_se_no(<BUTTON_SE_DECIDE>)
	
	// インターフェイスを元に戻す
	$mw_disp = $tmp_mw_disp					// 保存したメッセージウィンドウの表示状態から復元する
	$$set_main_interface_disp($stage, 1)	// メインＵＩを表示する
}

//---------------------------------------------------------------------------
// ドラッグしているキャラクターの範囲を制限する
//---------------------------------------------------------------------------
command $$drag_ch_limit(property $stage : stage, property $ch_no)
{
	property $w
	property $h
	
	$w = <SCREEN_CENTER_X>						// スクリーンサイズ(x) / 2
	$h = <BS_IMAGE_SIZE_Y> - <SCREEN_HEIGHT>	// 画像サイズ(y) - スクリーンサイズ(y)
	
	// x座標
	if( $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x < -$w )
	{
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x = -$w
	}
	elseif( $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x > <SCREEN_WIDTH> + $w )
	{
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x = <SCREEN_WIDTH> + $w
	}
	
	// y座標
	if( $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y < -$h )
	{
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y = -$h
	}
	elseif( $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y > $h )
	{
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y = $h
	}
}

//---------------------------------------------------------------------------
// ドラッグしているキャラクターの範囲を制限する(キャラデータ)
//---------------------------------------------------------------------------
command $$drag_ch_pos_limit(property $stage : stage, property $ch_no)
{
	property $w
	property $h
	
	$w = <SCREEN_CENTER_X>						// スクリーンサイズ(x) / 2
	$h = <BS_IMAGE_SIZE_Y> - <SCREEN_HEIGHT>	// 画像サイズ(y) - スクリーンサイズ(y)
	
	// x座標
	if( $ch_pos_x[$ch_no] < -$w )
	{
		$ch_pos_x[$ch_no] = -$w
	}
	elseif( $ch_pos_x[$ch_no] > <SCREEN_WIDTH> + $w )
	{
		$ch_pos_x[$ch_no] = <SCREEN_WIDTH> + $w
	}
	
	// y座標
	if( $ch_pos_y[$ch_no] < -$h )
	{
		$ch_pos_y[$ch_no] = -$h
	}
	elseif( $ch_pos_y[$ch_no] > $h )
	{
		$ch_pos_y[$ch_no] = $h
	}
}

//---------------------------------------------------------------------------
// キャラクターをスナップする
//---------------------------------------------------------------------------
command $$snap_ch_object(property $stage : stage, property $ch_no)
{
	property $base_x
	property $base_y
	
	// キャラクターの基本座標を取得する
	$base_x = $$get_ch_base_x
	$base_y = $$get_ch_base_y
	
	if( $base_x - __EXTRA_CHARACTER_SNAP_X < $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x && $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x < $base_x + __EXTRA_CHARACTER_SNAP_X )
	{
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].x = $base_x
	}
	if( $base_y - __EXTRA_CHARACTER_SNAP_Y < $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y && $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y < $base_y + __EXTRA_CHARACTER_SNAP_Y )
	{
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].y = $base_y
	}
}

//---------------------------------------------------------------------------
// 指定したキャラクターの立ち絵名を取得する
//---------------------------------------------------------------------------
command $$get_ch_name(property $ch_no) : str
{
	property $filename : str
	
	// 立ち絵名を組み立てる
	$filename = "bs" + math.tostr($ch_range[$ch_no]) + "_" + $bs_list[$ch_no] + 									// bs1_hz
				math.tostr_zero($$get_ch_pose_type($bs_list[$ch_no], $ch_pose[$ch_no]), 2) + "_" +					// 11_
				math.tostr_zero($$get_ch_face_type($bs_list[$ch_no], $ch_face_pat[$ch_no], $ch_face[$ch_no]), 2)	// 01
	
	return ($filename)
}

//---------------------------------------------------------------------------
// 指定したキャラクターにフォーカスする
//---------------------------------------------------------------------------
command $$focus_ch_object(property $stage : stage, property $ch_no)
{
	property $i
	property $len
	property $layer
	
	// フォーカスキャラクターを設定する
	$focus_character = $ch_no
	
	// レイヤー値の最大を調べる
	$len = $bs_list.get_size
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 表示されていない立ち絵の処理はスキップする
		if( $ch_disp[$i] == 0 ) {
			continue
		}
		
		if( $layer < $ch_layer[$i] )
		{
			$layer = $ch_layer[$i]
		}
		
		$ch_layer[$i] -= 1
	}
	
	// レイヤー値の最大をフォーカスキャラクターに設定する
	$ch_layer[$focus_character] = $layer
	
	// レイヤー値を反映する
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 表示されていない立ち絵の処理はスキップする
		if( $ch_disp[$i] == 0 ) {
			continue
		}
		
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $i].layer = $ch_layer[$i]
	}
	
	// キャラクターのボタン判定を更新する
	$$update_ch_object_button($stage, 0)
	
	// キャラクターの不透明度を更新する
	$$update_ch_object_tr($stage, 0)
}

//---------------------------------------------------------------------------
// フォーカス中のキャラクターの登録番号を取得する
//---------------------------------------------------------------------------
command $$get_extra_character_focus_ch : int
{
	return ($focus_character)
}

//---------------------------------------------------------------------------
// キャラクター表示／非表示ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_ch_disp_button(property $stage : stage, property $ch_no)
{
	property $i
	
	// 表示されていない場合
	if( $ch_disp[$ch_no] == 0 )
	{
		$ch_disp[$ch_no] = 1		// 表示フラグをオンにする
		$ch_face_pat[$ch_no] = $$get_ch_face_pat($ch_no)		// 表情パターンを取得する
		
		$$create_ch_object($stage, $ch_no)	// キャラクターを作成する
		$$focus_ch_object($stage, $ch_no)	// キャラクターをフォーカスする
	}
	
	// 既に表示されている場合
	else
	{
		// フォーカスされているキャラクターの場合は非表示にする
		if( $focus_character == $ch_no )
		{
			$ch_disp[$ch_no] = 0		// 表示フラグをオフにする
			
			// 表示中のキャラクターからフォーカスするキャラクターを設定する
			for( $i = 0, $i < $bs_list.get_size, $i += 1 )
			{
				// 最初に発見した表示中のキャラクターをフォーカスする
				if( $ch_disp[$i] )
				{
					$$focus_ch_object($stage, $i)	// キャラクターをフォーカスする
					
					break
				}
				
				// 誰も見つからなかった場合はフォーカスキャラクターをなしにする
				if( $i == $bs_list.get_size - 1 )
				{
					$focus_character = -1
					$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].init
				}
			}
		}
		
		// フォーカスされていないキャラクターの場合はフォーカスする
		else
		{
			$$focus_ch_object($stage, $ch_no)
		}
	}
	
	// キャラクターを表示／非表示にする
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $ch_no].disp = $ch_disp[$ch_no]
	
	// キャラクター表示／非表示ボタンを更新する
	$$update_ch_disp_button($stage)
	
	// フォーカスパネルを更新する
	$$update_focus_ch_panel($stage)
	
	// 操作パネルを更新する
	$$update_control_panel($stage)
	
	// パッド入力の遷移を更新する
	$$update_extra_character_joypad_navigation($stage)
}

//---------------------------------------------------------------------------
// キャラクター表示／非表示ボタンを更新する
//---------------------------------------------------------------------------
command $$update_ch_disp_button(property $stage : stage)
{
	property $i
	
	// フォーカス中のキャラクターがいる場合はボタンフレームを表示する
	if( $focus_character == -1 )
	{
		$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].disp = 0
	}
	else
	{
		$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].disp = 1
	}
	
	// 各ボタンの状態を更新する
	for( $i = 0, $i < $bs_list.get_size, $i += 1 )
	{
		// 表示されていないボタンは処理をスキップする
		if( $stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].disp == 0 ) {
			continue
		}
		
		// ボタンフレームの位置を設定する
		if( $focus_character == $i )
		{
			$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].x = $stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].x
			$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].y = $stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i].y
		}
		
		// 表示／非表示状態に応じてトグルボタンを更新する
		$$update_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_表示／非表示 + $i], $ch_disp[$i])
	}
}

//---------------------------------------------------------------------------
// フォーカスキャラクターパネルを更新する
//---------------------------------------------------------------------------
command $$update_focus_ch_panel(property $stage : stage)
{
	property $dress_index
	property $dress_max
	property $pose_index
	property $pose_max
	property $face_index
	property $face_max
	property $face_pat
	
	// フォーカスキャラクターがいない場合は初期値
	if( $focus_character == -1 )
	{
		$dress_index = 0
		$dress_max   = 0
		$pose_index  = 0
		$pose_max    = 0
		$face_index  = 0
		$face_max    = 0
		$face_pat    = 0
	}
	
	// フォーカスキャラクターがいる場合は各キャラクターデータから読み込み
	else
	{
		$dress_index = $ch_dress[$focus_character]
		$dress_max   = $$get_ch_dress_max($bs_list[$focus_character])
		$pose_index  = $ch_pose[$focus_character]
		$pose_max    = $$get_ch_pose_max($bs_list[$focus_character])
		$face_index  = $ch_face[$focus_character]
		$face_pat    = $$get_ch_face_pat($focus_character)
		$face_max    = $$get_ch_face_max($bs_list[$focus_character], $face_pat)
	}
	
	// 服装サムネイルリストを変更する
	$$change_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_服装], 1 + $focus_character * 2, $dress_max, $dress_index)
	
	// ポーズサムネイルリストを変更する
	$$change_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], 1 + $focus_character * 2, $pose_max, $pose_index)
	
	// 表情サムネイルリストを更新する
	$$change_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情], $face_pat, $face_max, $face_index)
	
	// 服装サムネイルリストを更新する
	$$update_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_服装], <TLIST_DRESS>)
	
	// ポーズサムネイルリストを更新する
	$$update_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ], <TLIST_POSE>)
	
	// 表情サムネイルリストを更新する
	$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情])
	
	// 距離ボタンを更新する
	$$update_ch_range_button($stage)
}

//---------------------------------------------------------------------------
// サムネイルリストを更新する
//---------------------------------------------------------------------------
command $$update_thumbnail_list(property $obj : object, property $list_type)
{
	// リストタイプが背景以外でフォーカスキャラクターがいない場合は処理をスキップする
	if( $list_type != <TLIST_BG> && $focus_character == -1 ) {
		return
	}
	
	// サムネイルリストの選択中を更新する
	switch( $list_type ) {
	case(<TLIST_DRESS>)		$obj.f_tlist_select_index = $ch_dress[$focus_character]		// 服装
	case(<TLIST_POSE>)		$obj.f_tlist_select_index = $ch_pose[$focus_character]		// ポーズ
	}
	$obj.f_tlist_disp_index = $obj.f_tlist_select_index
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($obj)
	
	// 各サムネイルリストを調整する
	switch( $list_type ) {
	case(<TLIST_DRESS>)		$$adjust_dress_thumbnail_list($obj)		// 服装
	case(<TLIST_POSE>)		$$adjust_pose_thumbnail_list($obj)		// ポーズ
	}
}

//---------------------------------------------------------------------------
// サムネイルリストを前に更新する
//---------------------------------------------------------------------------
command $$prev_thumbnail_list(property $obj : object, property $list_type, property $offset_page)
{
	// リストタイプが背景以外でフォーカスキャラクターがいない場合は処理をスキップする
	if( $list_type != <TLIST_BG> && $focus_character == -1 ) {
		return
	}
	
	// システム効果音
	if( syscom.check_joypad_mode == 1 ) {
		if( $obj.f_tlist_disp_index > 0 ) {
			se.play_by_se_no(<BUTTON_SE_HIT>)
		}
	}
	
	// サムネイルリストを前に更新する
	$$prev_ui_thumbnail_list($obj, $offset_page)
	
	// 各サムネイルリストを調整する
	switch( $list_type ) {
	case(<TLIST_DRESS>)		$$adjust_dress_thumbnail_list($obj)		// 服装
	case(<TLIST_POSE>)		$$adjust_pose_thumbnail_list($obj)		// ポーズ
	}
}

//---------------------------------------------------------------------------
// サムネイルリストを次に更新する
//---------------------------------------------------------------------------
command $$next_thumbnail_list(property $obj : object, property $list_type, property $offset_page)
{
	// リストタイプが背景以外でフォーカスキャラクターがいない場合は処理をスキップする
	if( $list_type != <TLIST_BG> && $focus_character == -1 ) {
		return
	}
	
	// システム効果音
	if( syscom.check_joypad_mode == 1 ) {
		if( $obj.f_tlist_disp_index < $obj.f_tlist_max - 1 ) {
			se.play_by_se_no(<BUTTON_SE_HIT>)
		}
	}
	
	// サムネイルリストを前に更新する
	$$next_ui_thumbnail_list($obj, $offset_page)
	
	// 各サムネイルリストを調整する
	switch( $list_type ) {
	case(<TLIST_DRESS>)		$$adjust_dress_thumbnail_list($obj)		// 服装
	case(<TLIST_POSE>)		$$adjust_pose_thumbnail_list($obj)		// ポーズ
	}
}

//---------------------------------------------------------------------------
// 服装ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_ch_dress_button(property $stage : stage, property $select_index)
{
	property $face_pat
	
	// 服装データを保存する
	$ch_dress[$focus_character] = $select_index
	
	// 服装を変更する
	$$set_bs_dress_type($bs_list[$focus_character], $$get_ch_dress_type($bs_list[$focus_character], $ch_dress[$focus_character]))
	
	// 選択中のサムネイルを設定する
	$stage.object[@サムネイルリスト_立ち絵鑑賞_服装].f_tlist_select_index = $select_index
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_服装])
	
	// 服装サムネイルリストを調整する
	$$adjust_dress_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_服装])
	
	// ポーズサムネイルリストを調整する
	$$adjust_pose_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ])
	
	// 表情パターンを取得する
	$face_pat = $$get_ch_face_pat($focus_character)
	
	// 表情パターンが変更される場合は表情を更新する
	if( $ch_face_pat[$focus_character] != $face_pat )
	{
		// 表情パターンを更新する
		$ch_face_pat[$focus_character] = $face_pat
		
		// 表情をリセットする
		$ch_face[$focus_character] = 0
		
		// 表情サムネイルリストを変更する
		$$change_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情], $face_pat, $$get_ch_face_max($bs_list[$focus_character], $face_pat), $ch_face[$focus_character])
		
		// 表情サムネイルリストを更新する
		$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情])
	}
	
	// キャラクターを更新する
	$$change_bs_image($stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character], $$get_ch_name($focus_character))
}

//---------------------------------------------------------------------------
// 服装サムネイルリストを調整する
//---------------------------------------------------------------------------
command $$adjust_dress_thumbnail_list(property $obj : object)
{
	property $i
	property $len
	property $filename_enable  : str
	property $filename_disable : str
	
	// フォーカスキャラクターがいない場合は処理をスキップする
	if( $focus_character == -1 ) {
		return
	}
	
	// 選択可能な場合のサムネイルリストファイル名を取得する
	$filename_enable = $obj.ui_tlist_thumb.child[0].get_file_name
	
	// 選択不可の場合のサムネイルリストファイル名を設定する
	k[0] = $filename_enable.right(2)
	$filename_disable = $filename_enable.left($filename_enable.cnt - 2) + math.tostr_zero(k[0].tonum() + 1, 2)
	
	// 現在のポーズの場合、選択可能／不可能なポーズを設定する
	$len = $obj.f_tlist_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 指定の服装に一時的に変更する
		$$set_bs_dress_type($bs_list[$focus_character], $$get_ch_dress_type($bs_list[$focus_character], $i))
		
		// 各服装に必要なファイル名を取得する
		k[0] = $$get_bs_image_name($$get_ch_name($focus_character))
		k[0] = k[0].left(14)
		
		// 現在のポーズの時、指定の服装が存在していない場合はボタンを押せないようにする
		if( $$exists_g00(k[0]) == 0 )
		{
			$obj.ui_tlist_thumb.child[$i].change_file($filename_disable)
			$obj.ui_tlist_thumb.child[$i].set_button_state_disable
		}
		else
		{
			$obj.ui_tlist_thumb.child[$i].change_file($filename_enable)
			$obj.ui_tlist_thumb.child[$i].set_button_state_normal
		}
	}
	
	// 元の服装に戻す
	$$set_bs_dress_type($bs_list[$focus_character], $$get_ch_dress_type($bs_list[$focus_character], $ch_dress[$focus_character]))
}

//---------------------------------------------------------------------------
// ポーズボタンを押したとき
//---------------------------------------------------------------------------
command $$push_ch_pose_button(property $stage : stage, property $select_index)
{
	property $face_pat
	
	// ポーズデータを保存する
	$ch_pose[$focus_character] = $select_index
	
	// 選択中のサムネイルを設定する
	$stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ].f_tlist_select_index = $select_index
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ])
	
	// ポーズサムネイルリストを調整する
	$$adjust_pose_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_ポーズ])
	
	// 服装サムネイルリストを調整する
	$$adjust_dress_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_服装])
	
	// 表情パターンを取得する
	$face_pat = $$get_ch_face_pat($focus_character)
	
	// 表情パターンが変更される場合は表情を更新する
	if( $ch_face_pat[$focus_character] != $face_pat )
	{
		// 表情パターンを更新する
		$ch_face_pat[$focus_character] = $face_pat
		
		// 表情をリセットする
		$ch_face[$focus_character] = 0
		
		// 表情サムネイルリストを変更する
		$$change_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情], $face_pat, $$get_ch_face_max($bs_list[$focus_character], $face_pat), $ch_face[$focus_character])
		
		// 表情サムネイルリストを更新する
		$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情])
	}
	
	// キャラクターを更新する
	$$change_bs_image($stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character], $$get_ch_name($focus_character))
}

//---------------------------------------------------------------------------
// ポーズサムネイルリストを調整する
//---------------------------------------------------------------------------
command $$adjust_pose_thumbnail_list(property $obj : object)
{
	property $i
	property $len
	property $pose
	property $filename_enable  : str
	property $filename_disable : str
	
	// フォーカスキャラクターがいない場合は処理をスキップする
	if( $focus_character == -1 ) {
		return
	}
	
	// 選択可能な場合のサムネイルリストファイル名を取得する
	$filename_enable = $obj.ui_tlist_thumb.child[0].get_file_name
	
	// 選択不可の場合のサムネイルリストファイル名を設定する
	k[0] = $filename_enable.right(2)
	$filename_disable = $filename_enable.left($filename_enable.cnt - 2) + math.tostr_zero(k[0].tonum() + 1, 2)
	
	// 現在の服装の場合、選択可能／不可能なポーズを設定する
	$len = $obj.f_tlist_max
	for( $i = 0, $i < $len, $i += 1 )
	{
		// 各ポーズに必要なファイル名を取得する
		$pose = $$get_ch_pose_type($bs_list[$focus_character], $i)
		
		k[0] = $$get_ch_name($focus_character)
		k[0] = k[0].left(6) + math.tostr_zero($pose, 2) + k[0].mid(8, k[0].cnt)
		
		k[0] = $$get_bs_image_name(k[0])
		k[0] = k[0].left(14)
		
		// 現在の服装の時、指定のポーズが存在していない場合はボタンを押せないようにする
		if( $$exists_g00(k[0]) == 0 )
		{
			$obj.ui_tlist_thumb.child[$i].change_file($filename_disable)
			$obj.ui_tlist_thumb.child[$i].set_button_state_disable
		}
		else
		{
			$obj.ui_tlist_thumb.child[$i].change_file($filename_enable)
			$obj.ui_tlist_thumb.child[$i].set_button_state_normal
		}
	}
}

//---------------------------------------------------------------------------
// 表情ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_ch_face_button(property $stage : stage, property $select_index)
{
	// 表情データを保存する
	$ch_face[$focus_character] = $select_index
	
	// 選択中のサムネイルを設定する
	$stage.object[@サムネイルリスト_立ち絵鑑賞_表情].f_tlist_select_index = $select_index
	
	// サムネイルリストを更新する
	$$update_ui_thumbnail_list($stage.object[@サムネイルリスト_立ち絵鑑賞_表情])
	
	// キャラクターを更新する
	$$change_bs_image($stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character], $$get_ch_name($focus_character))
}

//---------------------------------------------------------------------------
// 距離ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_ch_range_button(property $stage : stage, property $range)
{
	// フォーカス中のキャラクターがいない場合はエラーになるので処理しない
	if( $focus_character == -1 ) {
		return
	}
	
	// 距離データを設定する
	$ch_range[$focus_character] = $range
	
	// 距離ボタンを更新する
	$$update_ch_range_button($stage)
	
	// キャラクターを更新する
	$$change_bs_image($stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character], $$get_ch_name($focus_character))
	
	// パッド入力の遷移を更新する
	$$update_extra_character_joypad_navigation($stage)
}

//---------------------------------------------------------------------------
// 距離ボタンを更新する
//---------------------------------------------------------------------------
command $$update_ch_range_button(property $stage : stage)
{
	property $i
	
	if( $focus_character == -1 )
	{
		$stage.object[@ボタン_立ち絵鑑賞_距離_遠].disp = 0
		$stage.object[@ボタン_立ち絵鑑賞_距離_中].disp = 0
		$stage.object[@ボタン_立ち絵鑑賞_距離_近].disp = 0
	}
	else
	{
		$stage.object[@ボタン_立ち絵鑑賞_距離_遠].disp = 1
		$stage.object[@ボタン_立ち絵鑑賞_距離_中].disp = 1
		$stage.object[@ボタン_立ち絵鑑賞_距離_近].disp = 1
		
		for( $i = 0, $i < 3, $i += 1 )
		{
			if( $i == $ch_range[$focus_character] - 1 )
			{
				$stage.object[@ボタン_立ち絵鑑賞_距離_遠 + $i].set_button_state_select
			}
			else
			{
				$stage.object[@ボタン_立ち絵鑑賞_距離_遠 + $i].set_button_state_normal
			}
		}
	}
}

//---------------------------------------------------------------------------
// 距離で選択中のボタンを取得する
//---------------------------------------------------------------------------
command $$get_extra_character_select_ch_range_button : int
{
	// フォーカス中のキャラクターがいない場合はエラーになるので処理しない
	if( $focus_character == -1 ) {
		return (-1)
	}
	
	switch( $ch_range[$focus_character] ) {
	case(1)		return (@ボタン_立ち絵鑑賞_距離_遠)
	case(2)		return (@ボタン_立ち絵鑑賞_距離_中)
	case(3)		return (@ボタン_立ち絵鑑賞_距離_近)
	}
	
	return (-1)
}

//---------------------------------------------------------------------------
// ブラー背景ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_bg_blur_button(property $stage : stage, property $flag)
{
	// ブラー背景フラグを設定する
	$bg_blur_flag = $flag
	
	// 背景を設定する
	$$set_bg($stage, $stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index)
	
	// ブラー背景ボタンを更新する
	$$update_bg_blur_button($stage)
	
	// パッド入力の遷移を更新する
	$$update_extra_character_joypad_navigation($stage)
}

//---------------------------------------------------------------------------
// ブラー背景ボタンを更新する
//---------------------------------------------------------------------------
command $$update_bg_blur_button(property $stage : stage)
{
	property $bg_name : str
	
	// 現在の背景にブラー背景があるかチェックする
	$bg_name = $bg_list[$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index]
	
	// ブラー背景フラグがオンの場合はブラー背景に変更する
	if( $bg_blur_flag ) {
		$bg_name = __BG_BLUR_PREFIX + $bg_name
	}
	
	if( $$exists_g00($bg_name) == 0 )
	{
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].set_button_state_disable
		$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].set_button_state_disable
	}
	else
	{
		if( $bg_blur_flag )
		{
			$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].set_button_state_select
			$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].set_button_state_normal
		}
		else
		{
			$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オン].set_button_state_normal
			$stage.object[@ボタン_立ち絵鑑賞_ブラー背景_オフ].set_button_state_select
		}
	}
}

//---------------------------------------------------------------------------
// ブラー背景で選択中のボタンを取得する
//---------------------------------------------------------------------------
command $$get_extra_character_select_bg_blur_button : int
{
	if( $bg_blur_flag )
	{
		return (@ボタン_立ち絵鑑賞_ブラー背景_オン)
	}
	
	return (@ボタン_立ち絵鑑賞_ブラー背景_オフ)
}

//---------------------------------------------------------------------------
// テキスト編集ボタンを押したとき
//---------------------------------------------------------------------------
command $$push_edit_text(property $stage : stage)
{
	property $focus_btn
	
	// メインＵＩの表示を反転する
	$$reverse_main_interface($stage)
	
	// 編集ウィンドウでのみ表示されるＵＩを表示する
	$$set_edit_interface_disp($stage, 1)
	
	// フォーカスボタンを変更する
	$focus_btn = $$get_joypad_focus_button
	$$set_joypad_focus_button(@ボタン_立ち絵鑑賞_編集_名前変更)
	
	// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
	if( syscom.check_joypad_mode == 0 ) {
		$$update_joypad_focus_button($stage)
	}
	
	// 入力制御を開始する
	$$input_start($stage, <OBJBTN_GROUP_NO_EXCALL>)
	while(1)
	{
		// 入力制御を更新する
		$select_btn = $$input_update($stage, <OBJBTN_GROUP_NO_EXCALL>)
		
		// キャンセルは閉じるボタンとして処理する
		if( $select_btn == -1 )
		{
			se.play_by_se_no(<BUTTON_SE_CANCEL>)
			
			$select_btn = @ボタン_立ち絵鑑賞_編集_閉じる
		}
		
		if( $select_btn == @ボタン_立ち絵鑑賞_編集_閉じる ) {
			
			// ジョイパッドモードがオンの場合はフォーカスボタンを更新する
			if( syscom.check_joypad_mode ) {
				$stage.object[$$get_joypad_focus_button].patno = $stage.object[$$get_joypad_focus_button].default_patno
			}
			break
		}
		
		// 各ボタンの動作
		switch( $select_btn ) {
		case(@ボタン_立ち絵鑑賞_編集_名前変更)			$$input_editbox($stage, 0)
		case(@ボタン_立ち絵鑑賞_編集_テキスト変更)		$$input_editbox($stage, 1)
		case(@ボタン_立ち絵鑑賞_編集_ウィンドウ表示)
			$mw_disp = $$reverse_flag($mw_disp)			// フラグを判定してボタンを更新する
			$$update_ui_toggle_button($stage.object[@ボタン_立ち絵鑑賞_編集_ウィンドウ表示], $mw_disp)
		}
		
		// 何かのボタンが押された
		if( $select_btn != -2 ) {
			$$input_start($stage, <OBJBTN_GROUP_NO_EXCALL>)
		}
		
		input.next		// 入力の更新
		disp			// 画面の更新
	}
	
	// 入力状態をクリアする
	input.clear
	
	// 編集ウィンドウでのみ表示されるものを表示しないようにする
	$$set_edit_interface_disp($stage, 0)
	
	// メインＵＩの表示を反転する
	$$reverse_main_interface($stage)
	
	// フォーカスボタンを元に戻す
	$$set_joypad_focus_button($focus_btn)
	
	// ジョイパッドモードがオフの場合はフォーカスボタンを更新する
	if( syscom.check_joypad_mode == 0 ) {
		$$update_joypad_focus_button($stage)
	}
}

//---------------------------------------------------------------------------
// エディットボックスでのテキスト入力を開始する
//---------------------------------------------------------------------------
command $$input_editbox(property $stage : stage, property $type)
{
	property $tmp : str
	property $input
	
	// テキスト入力背景を表示する
	$stage.object[@イメージ_立ち絵鑑賞_編集_入力_背景].disp = 1
	
	// エディットボックスを作成する
	editbox[<EDITBOX_INDEX>].create($editbox_x, $editbox_y, $editbox_w, $editbox_h, $editbox_moji_size)
	editbox[<EDITBOX_INDEX>].set_text($mw_text[$type])
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
				
				// 正常の場合はテキストを保存して反映する
				$mw_text[$type] = $tmp
				
				// 設定した名前／本文の最大文字数に収まるようにする
				if( $mw_text[$type].len > $mw_moji_max[$type] * 2 ) {
					$mw_text[$type] = $mw_text[$type].left_len($mw_moji_max[$type] * 2)
				}
				
				// メッセージウィンドウを更新する
				$$update_mw_object($stage)
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
	
	// テキスト入力背景を非表示にする
	$stage.object[@イメージ_立ち絵鑑賞_編集_入力_背景].disp = 0
	
	// エディットボックスを終了する
	editbox[<EDITBOX_INDEX>].destroy
}

//---------------------------------------------------------------------------
// エディットボックスを設定する
//---------------------------------------------------------------------------
command $$set_extra_character_editbox(property $x, property $y, property $w, property $h, property $moji_size)
{
	$editbox_x = $x
	$editbox_y = $y
	$editbox_w = $w
	$editbox_h = $h
	$editbox_moji_size = $moji_size
}


//---------------------------------------------------------------------------
// フォーカスキャラクターの位置を移動する
//---------------------------------------------------------------------------
command $$move_focus_ch_pos(property $stage : stage)
{
	property $x
	property $y
	property $tmp_mw_disp
	property $input
	property $speed
	
	// フォーカス中のキャラクターがいない場合はエラーになるので処理しない
	if( $focus_character == -1 ) {
		return
	}
	
	// 移動する前の座標を保存しておく
	$x = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x
	$y = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y
	
	// インターフェイスを非表示にする
	$tmp_mw_disp = $mw_disp					// メッセージウィンドウの表示状態を保存する
	$mw_disp = 0							// ドラッグ中は必ずメッセージウィンドウを表示しない
	$$set_main_interface_disp($stage, 0)	// メインＵＩを非表示にする
	
	// フォーカスしている立ち絵を光らせる
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].bright = __EXTRA_CHARACTER_HIT_BRIGHT
	
	// ジョイパッド時の処理
	if( syscom.check_joypad_mode )
	{
		input.clear
		while( 1 )
		{
			// 決定ボタンが押された場合
			if( joypad.key[<JOYPAD_BUTTON1>].on_down )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				
				// キャラクター座標を保存する
				$ch_pos_x[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x
				$ch_pos_y[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y
				
				break
			}
			
			// キャンセルボタンが押された場合
			if( joypad.key[<JOYPAD_BUTTON2>].on_down )
			{
				se.play_by_se_no(<BUTTON_SE_CANCEL>)
				
				// 移動前の座標に戻す
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $x
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $y
				
				$ch_pos_x[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x
				$ch_pos_y[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y
				
				break
			}
			
			// ジョイパッドモードがオフになった場合
			if( syscom.check_joypad_mode == 0 )
			{
				se.play_by_se_no(<BUTTON_SE_CANCEL>)
				
				// 移動前の座標に戻す
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $x
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $y
				
				$ch_pos_x[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x
				$ch_pos_y[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y
				
				break
			}
			
			// 十字キー入力がある場合
			if( joypad.key[<JOYPAD_UP>].is_down || joypad.key[<JOYPAD_DOWN>].is_down || joypad.key[<JOYPAD_LEFT>].is_down || joypad.key[<JOYPAD_RIGHT>].is_down ||
			    joypad.key[<JOYPAD_LSTICK_UP>].is_down || joypad.key[<JOYPAD_LSTICK_DOWN>].is_down || joypad.key[<JOYPAD_LSTICK_LEFT>].is_down || joypad.key[<JOYPAD_LSTICK_RIGHT>].is_down )
			{
				// 移動速度を加算する
				$speed = math.limit(1, $speed + __EXTRA_CHARACTER_PAD_MOVE_ACCEL, __EXTRA_CHARACTER_PAD_MOVE_SPEED_MAX)
			}
			else
			{
				// 移動速度を初期化する
				$speed = 1
			}
			
			// 十字キー入力の各方向にキャラクターを移動する
			// ※パッドだと座標の加算処理が行われるのでスナップ処理に反映されない
			// ※そのため直接キャラクター座標に適用でなく、キャラクターデータに座標を設定する
			if( joypad.key[<JOYPAD_UP>].is_down || joypad.key[<JOYPAD_LSTICK_UP>].is_down ) {
				$ch_pos_y[$focus_character] -= $speed / 5
			}
			elseif( joypad.key[<JOYPAD_DOWN>].is_down || joypad.key[<JOYPAD_LSTICK_DOWN>].is_down ) {
				$ch_pos_y[$focus_character] += $speed / 5
			}
			
			if( joypad.key[<JOYPAD_LEFT>].is_down || joypad.key[<JOYPAD_LSTICK_LEFT>].is_down ) {
				$ch_pos_x[$focus_character] -= $speed / 5
			}
			elseif( joypad.key[<JOYPAD_RIGHT>].is_down || joypad.key[<JOYPAD_LSTICK_RIGHT>].is_down ) {
				$ch_pos_x[$focus_character] += $speed / 5
			}
			
			// ドラッグしているキャラクターの範囲を制限する
			$$drag_ch_pos_limit($stage, $focus_character)
			
			// キャラクター座標を保存する
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $ch_pos_x[$focus_character]
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $ch_pos_y[$focus_character]
			
			// スナップが設定されている場合は立ち絵座標をスナップする
			$$snap_ch_object($stage, $focus_character)
			
			// ドラッグしているキャラクターの範囲を制限する
			$$drag_ch_limit($stage, $focus_character)
			
			input.next		// 入力の更新
			disp			// 画面の更新
		}
	}
	
	// マウス時の処理
	else
	{
		// マウスを画面の中心にする
		mouse.set_pos(<SCREEN_CENTER_X>, <SCREEN_CENTER_Y>)
		
		// 立ち絵を画面の中心にする
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $$get_ch_base_x
		$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $$get_ch_base_y
		
		frame
		
		// 立ち絵とマウスの座標の差を保存する
		l[0] = mouse.get_pos_x - $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x
		l[1] = mouse.get_pos_y - $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y
		
		input.clear
		while( 1 )
		{
			// 決定ボタンが押された場合
			if( input.decide.on_down )
			{
				se.play_by_se_no(<BUTTON_SE_DECIDE>)
				
				// キャラクター座標を保存する
				$ch_pos_x[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x
				$ch_pos_y[$focus_character] = $stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y
				
				break
			}
			
			// キャンセルボタンが押された場合
			elseif( input.cancel.on_down )
			{
				se.play_by_se_no(<BUTTON_SE_CANCEL>)
				
				// 移動前の座標に戻す
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $x
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $y
				
				break
			}
			
			// ジョイパッドモードがオンになった場合、キャンセル処理
			if( syscom.check_joypad_mode == 1 )
			{
				se.play_by_se_no(<BUTTON_SE_CANCEL>)
				
				// キャラクター座標を保存する
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $x
				$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $y
				
				break
			}
			
			// 立ち絵をマウス座標に追従する
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = mouse.get_pos_x - l[0]
			$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = mouse.get_pos_y - l[1]
			
			// スナップが設定されている場合は立ち絵座標をスナップする
			$$snap_ch_object($stage, $focus_character)
			
			// ドラッグしているキャラクターの範囲を制限する
			$$drag_ch_limit($stage, $focus_character)
			
			input.next		// 入力の更新
			disp			// 画面の更新
		}
	}
	
	// フォーカスしている立ち絵の色を戻す
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].bright = 0
	
	// インターフェイスを元に戻す
	$mw_disp = $tmp_mw_disp					// 保存したメッセージウィンドウの表示状態から復元する
	$$set_main_interface_disp($stage, 1)	// メインＵＩを表示する
}

//---------------------------------------------------------------------------
// フォーカスキャラクターの位置をリセットする
//---------------------------------------------------------------------------
command $$reset_focus_ch_pos(property $stage : stage)
{
	// フォーカス中のキャラクターがいない場合はエラーになるので処理しない
	if( $focus_character == -1 ) {
		return
	}
	
	$ch_pos_x[$focus_character] = $$get_ch_base_x
	$ch_pos_y[$focus_character] = $$get_ch_base_y
	
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].x = $ch_pos_x[$focus_character]
	$stage.object[@オブジェクト_立ち絵鑑賞_立ち絵 + $focus_character].y = $ch_pos_y[$focus_character]
}

//---------------------------------------------------------------------------
// すべてをリセットする
//---------------------------------------------------------------------------
command $$reset_all(property $stage : stage)
{
	property $i
	property $focus_btn
	
	// ダイアログＵＩを表示する
	for( $i = @立ち絵鑑賞_ダイアログＵＩ_開始, $i <= @立ち絵鑑賞_ダイアログＵＩ_終了, $i += 1 )
	{
		$stage.object[$i].disp = 1
	}
	
	// フォーカスボタンを保存しておく
	$focus_btn = $$get_joypad_focus_button
	
	// ダイアログボタンにフォーカスする
	$$set_joypad_focus_button(@ボタン_立ち絵鑑賞_ダイアログ_いいえ)
	
	// ダイアログ表示時に自動でマウスカーソルをフォーカスされているボタンに移動する
	if( __DIALOG_AUTO_MOUSE_MOVE && syscom.check_joypad_mode == 0 ) {
		mouse.set_pos($stage.object[$$get_joypad_focus_button].x + $stage.object[$$get_joypad_focus_button].get_size_x / 2,
					  $stage.object[$$get_joypad_focus_button].y + $stage.object[$$get_joypad_focus_button].get_size_y / 2)
	}
	
	// 入力制御を開始する
	$$input_start($stage, <OBJBTN_GROUP_NO_MODAL>)
	
	input.clear
	while( 1 )
	{
		// 入力制御を更新する
		$select_btn = $$input_update($stage, <OBJBTN_GROUP_NO_MODAL>)
		
		// キャンセルはいいえボタンとして処理する
		if( $select_btn == -1 )
		{
			se.play_by_se_no(<BUTTON_SE_CANCEL>)
			$select_btn = @ボタン_立ち絵鑑賞_ダイアログ_いいえ
		}
		
		// はいを押した場合
		if( $select_btn == @ボタン_立ち絵鑑賞_ダイアログ_はい )
		{
			// シーンデータを設定する
			$$set_scene_data
			
			// 背景を初期化する
			$stage.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index = 0
			
			// すべてのオブジェクトを更新する
			$$update_all_object($stage)
			
			break
		}
		
		// いいえを押した場合
		if( $select_btn == @ボタン_立ち絵鑑賞_ダイアログ_いいえ )
		{
			break
		}
		
		input.next		// 入力の更新
		disp			// 画面の更新
	}
	
	// ダイアログＵＩを非表示にする
	for( $i = @立ち絵鑑賞_ダイアログＵＩ_開始, $i <= @立ち絵鑑賞_ダイアログＵＩ_終了, $i += 1 )
	{
		$stage.object[$i].disp = 0
	}
	
	// ジョイパッドモードがオンの場合はフォーカスボタンを更新する
	if( syscom.check_joypad_mode ) {
		$stage.object[$$get_joypad_focus_button].patno = $stage.object[$$get_joypad_focus_button].default_patno
	}
	
	// フォーカスボタンを元に戻す
	$$set_joypad_focus_button($focus_btn)
}

//---------------------------------------------------------------------------
// 操作パネルを更新する
//---------------------------------------------------------------------------
command $$update_control_panel(property $stage : stage)
{
	if( $focus_character == -1 )
	{
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動].set_button_state_disable
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].set_button_state_disable
	}
	else
	{
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動].set_button_state_normal
		$stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化].set_button_state_normal
	}
}

//---------------------------------------------------------------------------
// 操作パネルのヘルプを更新する
//---------------------------------------------------------------------------
command $$update_control_panel_help(property $stage : stage)
{
	// 操作パネルはマウスオーバーでヘルプが表示される
	if( syscom.check_joypad_mode == 0 )
	{
		// マウスの場合
		if    ( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_閉じる]) )       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 1 }
		elseif( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_セーブ]) )       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 2 }
		elseif( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_ロード]) )       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 3 }
		elseif( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_テキスト編集]) ) { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 4 }
		elseif( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置移動]) )     { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 5 }
		elseif( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_位置初期化]) )   { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 6 }
		elseif( $$is_mouse_hit_object($stage.object[@ボタン_立ち絵鑑賞_操作パネル_全初期化]) )     { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 7 }
		else                                                                                       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 0 }
	}
	else
	{
		// ゲームパッドの場合
		if    ( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_閉じる) )       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 1 }
		elseif( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_セーブ) )       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 2 }
		elseif( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_ロード) )       { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 3 }
		elseif( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_テキスト編集) ) { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 4 }
		elseif( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_位置移動) )     { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 5 }
		elseif( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_位置初期化) )   { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 6 }
		elseif( $$is_focused_on_btn(@ボタン_立ち絵鑑賞_操作パネル_全初期化) )     { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 7 }
		else                                                                      { $stage.object[@フレーム_立ち絵鑑賞_操作パネル].patno = 0 }
	}
}

//---------------------------------------------------------------------------
// メッセージウィンドウを更新する
//---------------------------------------------------------------------------
command $$update_mw_object(property $stage : stage)
{
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].set_string($mw_text[0])
	$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].set_string($mw_text[1])
	
	// 名前欄のセンタリング
	if( $mw_text_center[0] ) {
		$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].x_rep[0] = -($mw_text[0].len - $mw_text_default[0].len) * 36 / 2 / 2
	}
}

//---------------------------------------------------------------------------
// マウスホイール動作を実行する
//---------------------------------------------------------------------------
command $$update_mouse_wheel(property $stage : stage)
{
	property $i
	property $x
	property $y
	property $w
	property $h
	property $obj_no
	
	if( mouse.wheel > 0 )
	{
		for( $i = 0, $i < <TLIST_MAX>, $i += 1 )
		{
			switch( $i ) {
			case(<TLIST_BG>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_背景
			case(<TLIST_DRESS>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_服装
			case(<TLIST_POSE>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_ポーズ
			case(<TLIST_FACE>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_表情
			}
			
			$x = $stage.object[$obj_no].x
			$y = $stage.object[$obj_no].y
			$w = $stage.object[$obj_no].x + $stage.object[$obj_no].ui_tlist_bg.get_size_x
			$h = $stage.object[$obj_no].y + $stage.object[$obj_no].ui_tlist_bg.get_size_y
			
			if( $$is_mouse_hit_pos($x, $y, $w, $h) )
			{
				$$next_thumbnail_list($stage.object[$obj_no], $i, 1)
				break
			}
		}
	}
	elseif( mouse.wheel < 0 )
	{
		for( $i = 0, $i < <TLIST_MAX>, $i += 1 )
		{
			switch( $i ) {
			case(<TLIST_BG>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_背景
			case(<TLIST_DRESS>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_服装
			case(<TLIST_POSE>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_ポーズ
			case(<TLIST_FACE>)		$obj_no = @サムネイルリスト_立ち絵鑑賞_表情
			}
			
			$x = $stage.object[$obj_no].x
			$y = $stage.object[$obj_no].y
			$w = $stage.object[$obj_no].x + $stage.object[$obj_no].ui_tlist_bg.get_size_x
			$h = $stage.object[$obj_no].y + $stage.object[$obj_no].ui_tlist_bg.get_size_y
			
			if( $$is_mouse_hit_pos($x, $y, $w, $h) )
			{
				$$prev_thumbnail_list($stage.object[$obj_no], $i, 1)
				break
			}
		}
	}
}

//---------------------------------------------------------------------------
// メインＵＩの表示を反転する
//---------------------------------------------------------------------------
command $$reverse_main_interface(property $stage : stage)
{
	// ＵＩ表示フラグを反転させる
	$main_interface_disp = $$reverse_flag($main_interface_disp)
	
	// メインＵＩを表示／非表示にする
	$$set_main_interface_disp($stage, $main_interface_disp)
	
	// キャラクターのボタン設定を更新する
	$$update_ch_object_button($stage, $$reverse_flag($main_interface_disp))
	
	// キャラクターの不透明度を更新する
	$$update_ch_object_tr($stage, $$reverse_flag($main_interface_disp))
}

//---------------------------------------------------------------------------
// メインＵＩを表示／非表示にする
//---------------------------------------------------------------------------
command $$set_main_interface_disp(property $stage : stage, property $disp)
{
	property $i
	
	for( $i = @立ち絵鑑賞_メインＵＩ_開始, $i <= @立ち絵鑑賞_メインＵＩ_終了, $i += 1 )
	{
		$stage.object[$i].disp = $disp
		
		if( $focus_character == -1 )
		{
			// フォーカスキャラクターがいない場合はボタンフレームを表示しない
			if( $i == @イメージ_立ち絵鑑賞_表示／非表示フレーム ) {
				$stage.object[@イメージ_立ち絵鑑賞_表示／非表示フレーム].disp = 0
			}
			
			// フォーカスキャラクターがいない場合は距離ボタンを表示しない
			if( $i == @ボタン_立ち絵鑑賞_距離_遠) {
				$stage.object[@ボタン_立ち絵鑑賞_距離_遠].disp = 0
			}
			if( $i == @ボタン_立ち絵鑑賞_距離_中) {
				$stage.object[@ボタン_立ち絵鑑賞_距離_中].disp = 0
			}
			if( $i == @ボタン_立ち絵鑑賞_距離_近) {
				$stage.object[@ボタン_立ち絵鑑賞_距離_近].disp = 0
			}
		}
	}
	
	if( $disp == 0 )
	{
		if( $mw_disp )
		{
			$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前].disp = 1
			$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文].disp = 1
			$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].disp = 1
			$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].disp = 1
			
			$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].set_string($mw_text[0])
			$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].set_string($mw_text[1])
		}
	}
	else
	{
		if( $mw_disp )
		{
			$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_名前].disp = 0
			$stage.object[@イメージ_立ち絵鑑賞_編集_ウィンドウ_本文].disp = 0
			$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_名前].disp = 0
			$stage.object[@テキスト_立ち絵鑑賞_編集_ウィンドウ_本文].disp = 0
		}
	}
}

//---------------------------------------------------------------------------
// 編集ＵＩを表示／非表示にする
//---------------------------------------------------------------------------
command $$set_edit_interface_disp(property $stage : stage, property $disp)
{
	property $i
	
	for( $i = @立ち絵鑑賞_編集ＵＩ_開始, $i <= @立ち絵鑑賞_編集ＵＩ_終了, $i += 1 )
	{
		$stage.object[$i].disp = $disp
		
	}
	
	// 編集ウィンドウのテキスト入力背景はエディットボックス入力になるまで表示しない
	$stage.object[@イメージ_立ち絵鑑賞_編集_入力_背景].disp = 0
}

//---------------------------------------------------------------------------
// 立ち絵鑑賞データのbmp保存をする
//---------------------------------------------------------------------------
command $$save_bmp
{
	property $i
	property $filename : str
	
	//---------------------------------------------------------------------------
	// 保存するファイル名の設定(タイトル＋日時)
	system.get_calendar(l[0], l[1], l[2], l[3], l[4], l[5], l[6], l[7])
	$filename = $$get_extra_character_save_filename + 												// タイトル
				math.tostr_zero(l[0], 4) + math.tostr_zero(l[1], 2) + math.tostr_zero(l[2], 2) + 	// 年月日
				math.tostr_zero(l[4], 2) + math.tostr_zero(l[5], 2) + math.tostr_zero(l[6], 2)		// 時分秒
	
	// キャプチャー用のインターフェイスを設定する
	$$reverse_main_interface(excall.front)
	
	// キャプチャー設定
	syscom.create_capture_buffer(<SCREEN_WIDTH>, <SCREEN_HEIGHT>)
	syscom.capture_to_capture_buffer(0, 0)
	
	//---------------------------------------------------------------------------
	// 保存するデータを設定する
	
	// bmpコード
	$save_int_data[0] = __EXTRA_CHARACTER_BMP_CODE
	
	// 背景
	$save_int_data[1] = excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index		// 選択中の背景
	$save_int_data[2] = excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_disp_index		// 表示中の背景
	$save_int_data[3] = $bg_blur_flag				// ブラー背景フラグ
	
	// キャラクター
	$save_int_data[4] = $focus_character			// フォーカス中のキャラクター
	
	for( $i = 0, $i < @登録_立ち絵鑑賞_立ち絵最大数, $i += 1 )
	{
		if( $i >= $bs_list.get_size ) {
			break
		}
		
		$save_int_data[5 + $i * 9 + 0] = $ch_dress[$i]		// 服装
		$save_int_data[5 + $i * 9 + 1] = $ch_pose[$i]		// ポーズ
		$save_int_data[5 + $i * 9 + 2] = $ch_face[$i]		// 表情
		$save_int_data[5 + $i * 9 + 3] = $ch_range[$i]		// 距離
		$save_int_data[5 + $i * 9 + 4] = $ch_disp[$i]		// 表示／非表示
		$save_int_data[5 + $i * 9 + 5] = $ch_pos_x[$i]		// x座標
		$save_int_data[5 + $i * 9 + 6] = $ch_pos_y[$i]		// y座標
		$save_int_data[5 + $i * 9 + 7] = $ch_layer[$i]		// レイヤー値
		$save_int_data[5 + $i * 9 + 8] = $ch_face_pat[$i]	// 表情パターン
		
	}
	
	// ウィンドウ
	$save_int_data[220] = $mw_disp			// 表示／非表示
	$save_str_data[0] = $mw_text[0]			// 名前欄
	$save_str_data[1] = $mw_text[1]			// 本文
	
	//---------------------------------------------------------------------------
	// ファイル出力
	l[0] = syscom.save_capture_buffer_to_file($filename, "bmp", dialog = 1, dialog_title = "保存先を選択", flag = $save_int_data, flag_index = 0, flag_cnt = 500, str_flag = $save_str_data, str_flag_index = 0, str_flag_cnt = 100)
	syscom.destroy_capture_buffer
	
	// システム効果音
	se.play_by_se_no(<BUTTON_SE_COMPLETE>)
	
	// インターフェイスを元に戻す
	$$reverse_main_interface(excall.front)
}

//---------------------------------------------------------------------------
// 立ち絵鑑賞データのbmp読み込みをする
//---------------------------------------------------------------------------
command $$load_bmp
{
	property $i
	
	//---------------------------------------------------------------------------
	// ファイルを読み込む
	l[0] = syscom.load_flag_from_capture_file("", "bmp", dialog = 1, dialog_title = "画像を選択", flag = $save_int_data, flag_index = 0, flag_cnt = 500, str_flag = $save_str_data, str_flag_index = 0, str_flag_cnt = 100)
	
	// ここでエラーになる場合はsiglus側でダイアログが表示される
	if( l[0] == 0 )
	{
		return
	}
	
	// bmpコードの一致チェック
	if( $save_int_data[0] != __EXTRA_CHARACTER_BMP_CODE )
	{
		se.play_by_se_no(<BUTTON_SE_WARNING>)
		
		// bmpコードが一致しない場合は読み込まない
		message_box("読み込めないbmpデータです。読み込みを中止します。")
		
		return
	}
	
	//---------------------------------------------------------------------------
	// 読み込んだフラグからデータを復元する
	
	// 背景
	excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_select_index = $save_int_data[1]		// 選択中の背景
	excall.front.object[@サムネイルリスト_立ち絵鑑賞_背景].f_tlist_disp_index   = $save_int_data[2]		// 表示中の背景
	$bg_blur_flag = $save_int_data[3]		// ブラー背景フラグ
	
	// キャラクター
	$focus_character = $save_int_data[4]		// フォーカス中のキャラクター
	
	for( $i = 0, $i < @登録_立ち絵鑑賞_立ち絵最大数, $i += 1 )
	{
		if( $i >= $bs_list.get_size ) {
			break
		}
		
		$ch_dress[$i]    = $save_int_data[5 + $i * 9 + 0]		// 服装
		$ch_pose[$i]     = $save_int_data[5 + $i * 9 + 1] 		// ポーズ
		$ch_face[$i]     = $save_int_data[5 + $i * 9 + 2]		// 表情
		$ch_range[$i]    = $save_int_data[5 + $i * 9 + 3]		// 距離
		$ch_disp[$i]     = $save_int_data[5 + $i * 9 + 4]		// 表示／非表示
		$ch_pos_x[$i]    = $save_int_data[5 + $i * 9 + 5]		// x座標
		$ch_pos_y[$i]    = $save_int_data[5 + $i * 9 + 6]		// y座標
		$ch_layer[$i]    = $save_int_data[5 + $i * 9 + 7]		// レイヤー値
		$ch_face_pat[$i] = $save_int_data[5 + $i * 9 + 8]		// 表情パターン
	}
	
	// ウィンドウ
	$mw_disp = $save_int_data[220]			// 表示／非表示
	$mw_text[0] = $save_str_data[0]			// 名前欄
	$mw_text[1] = $save_str_data[1]			// 本文
	
	// システム効果音
	se.play_by_se_no(<BUTTON_SE_COMPLETE>)
	
	// すべてのオブジェクトを更新する
	$$update_all_object(excall.front)
	
	// インターフェイスを反転する
	$$reverse_main_interface(excall.front)
}

//---------------------------------------------------------------------------
// ジョイパッドで最初に選択されているボタンをデフォルトで設定する
//---------------------------------------------------------------------------
command $$set_joypad_focus_button_default(property $stage : stage)
{
	// 背景リストボタンをデフォルトにする
	$$set_joypad_focus_button(@サムネイルリスト_立ち絵鑑賞_背景)
}
