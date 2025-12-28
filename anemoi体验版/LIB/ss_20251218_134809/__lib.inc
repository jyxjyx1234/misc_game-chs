//===========================================================================
//!
//!    @file     __lib.inc
//!    @brief    汎用エンジンライブラリ関数
//!
//!    @author   Copyright (C)2023- VISUAL ARTS. All rights reserved.
//!    @author   Kazuya Takahashi
//!    @note     none
//!
//===========================================================================

//---------------------------------------------------------------------------
// 汎用
//---------------------------------------------------------------------------
// ファイル関連
#command $$exists_g00(str) : int							// g00ファイルの存在を判定する

// 数値関連
#command $$reverse_flag(int)								// フラグを反転する
#command $$strcode_to_num(int) : int						// 文字コードから数値に変換する

// 文字列関連
#command $$trim_str(str, int) : str							// 文字列をトリミングする
#command $$is_alphabet(str) : int							// 指定した文字がアルファベットか判定する
#command $$alphabet_to_num(str) : int						// アルファベット文字を数値に変換(a=0, b=1...)する
#command $$hex_code_to_dec(str) : int						// 16進数(文字列)を10進数(数値)に変換する

// 色関連
#command $$color_code_to_r(str) : int						// カラーコードからr(0～255)に変換する
#command $$color_code_to_g(str) : int						// カラーコードからg(0～255)に変換する
#command $$color_code_to_b(str) : int						// カラーコードからb(0～255)に変換する

// 当たり判定関連
#command $$is_mouse_hit_pos(int, int, int, int) : int		// 指定範囲のマウス当たり判定を取得する
#command $$is_mouse_hit_object(object) : int				// オブジェクトのマウス当たり判定を取得する


//---------------------------------------------------------------------------
// システム
//---------------------------------------------------------------------------
// 初回起動処理
#command $$first_boot										// 初回起動処理

// ユーザー制御
#command $$user_control_enabled								// ユーザー制御を可能にする
#command $$user_control_disabled							// ユーザー制御を不可能にする
#command $$menu_control_enabled								// メニュー画面でのユーザー制御を設定する
#command $$menu_control_disabled							// メニュー画面でのユーザー制御を解除する
#command $$set_ctrl_skip_disable(int)						// 指定した時間中は一時的に早送りを禁止する

// システムコール
#command $$excall_ready										// システムコールを準備する
#command $$excall_free										// システムコールを解放する

// システムコマンド
#command $$save(int)										// セーブ
#command $$load(int)										// ロード
#command $$quick_save										// クイックセーブ
#command $$quick_load										// クイックロード
#command $$auto_save										// オートセーブ
#command $$end_load											// エンドロード
#command $$return_to_sel									// 前の選択肢に戻る
#command $$return_title										// タイトルに戻る
#command $$backlog_jump										// バックログジャンプ
#command $$end_game											// ゲームを終了する

// セーブデータ制御
#command $$delete_savedata(int) : int						// セーブデータを削除する
#command $$swap_savedata(int, int) : int					// セーブデータを入れ替える
#command $$get_savedata_lock(int) : int						// セーブデータのロックを取得する
#command $$set_savedata_lock(int, int)						// セーブデータのロックを設定する
#command $$on_savedata_lock(int)							// セーブデータのロックをオンにする
#command $$off_savedata_lock(int)							// セーブデータのロックをオフにする
#command $$reverse_savedata_lock(int)						// セーブデータのロックを反転する
#command $$get_savedata_date_str(int) : str					// セーブデータの日付(文字列)を取得する
#command $$get_savedata_time_str(int) : str					// セーブデータの時間(文字列)を取得する

// メッセージバック
#command $$add_msgback(int, int, str, str)					// メッセージバックに追加する

// フラグ制御
#command $$init_yesno_dialog_flag							// 確認ダイアログフラグを初期化する
#command $$get_yesno_dialog_flag(int) : int					// 確認ダイアログフラグを取得する
#command $$reverse_yesno_dialog_flag(int)					// 確認ダイアログフラグを反転する
#command $$get_chapter_flag(int) : int						// チャプターフラグを取得する
#command $$chapter_flag_on(int)								// チャプターフラグをオンにする
#command $$chapter_flag_off(int)							// チャプターフラグをオフにする
#command $$get_record_flag(int) : int						// レコードフラグを取得する
#command $$record_flag_on(int)								// レコードフラグをオンにする
#command $$record_flag_off(int)								// レコードフラグをオフにする
#command $$tablet_mode_on(int)								// タブレットモードをオンにする
#command $$tablet_mode_off									// タブレットモードをオフにする
#command $$sidebar_mode_on(int)								// サイドバーをオンにする
#command $$sidebar_mode_off									// サイドバーをオフにする

// シーン
#command $$init_scene										// シーンの初期化
#command $$init_scene_default(int)							// シーンの初期化（アプリケーション側）


//---------------------------------------------------------------------------
// 入力制御
//---------------------------------------------------------------------------
#command $$input_start(stage, int)							// 入力制御を開始する
#command $$input_update(stage, int) : int					// 入力制御を更新する

#command $$get_hit_btn : int								// 当たっているボタンを取得する
#command $$get_pushed_btn : int								// 押されているボタンを取得する
#command $$get_mouse_wheel_type : int						// マウスホイールタイプを取得する
#command $$get_flick_type : int								// フリックタイプを取得する

#command $$is_focused_on_btn(int) : int						// 指定したボタンが当たっているかどうかを取得する


//---------------------------------------------------------------------------
// ジョイパッド
//---------------------------------------------------------------------------
#command $$update_joypad(stage)								// ジョイパッドの更新(毎フレーム処理)
#command $$update_joypad_key_repeat							// ジョイパッドのキーリピート処理

// ジョイパッド入力の取得
// ※キーリピート／十字キーと左スティックの連動など
//   アプリケーションごとの機能を使用する場合はこの関数から入力を取得する必要がある
#command $$joypad_on_down(int) : int						// 指定したジョイパッドの入力が行われているか
#command $$joypad_up_on_down    : int						// ジョイパッドで↑の入力が行われているか
#command $$joypad_down_on_down  : int						// ジョイパッドの↓入力が行われているか
#command $$joypad_left_on_down  : int						// ジョイパッドの←入力が行われているか
#command $$joypad_right_on_down : int						// ジョイパッドの→入力が行われているか

#command $$auto_joypad_navigation(int, int)					// 自動でジョイパッド時のボタン遷移先を設定する
#command $$get_joypad_focus_button : int					// ジョイパッドで選択中のボタンを取得する
#command $$set_joypad_focus_button(int)						// ジョイパッドで選択中のボタンを設定する
#command $$update_joypad_focus_button(stage)				// ジョイパッドで選択中のボタンの描画を更新する
#command $$reset_joypad_focus_button(stage)					// ジョイパッドで選択中のボタンの描画をリセットする
#command $$get_joypad_decided : int							// ジョイパッドで決定ボタンを押したかどうかを取得する


//---------------------------------------------------------------------------
// オブジェクト
//---------------------------------------------------------------------------
#command $$set_child_object(object, int)									// 子供オブジェクトを作成する
#command $$set_image_center(object)											// 読み込んでいる画像の真ん中を中心座標にする
#command $$set_image_center_rep(object)										// 読み込んでいる画像の真ん中を中心補正座標にする
#command $$set_screen_scale(object)											// オブジェクトをウインドウサイズサイズに拡縮する

// イベント
#command $$set_pos_eve(object, int, int, int, int, int, int, int)			// オブジェクトに座標イベントを設定する
#command $$set_pos_rep_eve(object, int, int, int, int, int, int, int, int)	// オブジェクトに補正座標イベントを設定する
#command $$set_pos_x_eve(object, int, int, int, int, int)					// オブジェクトにx座標イベントを設定する
#command $$set_pos_x_rep_eve(object, int, int, int, int, int, int)			// オブジェクトにx補正座標イベントを設定する
#command $$set_pos_y_eve(object, int, int, int, int, int)					// オブジェクトにy座標イベントを設定する
#command $$set_pos_y_rep_eve(object, int, int, int, int, int, int)			// オブジェクトにy補正座標イベントを設定する
#command $$set_pos_x_turn_eve(object, int, int, int, int, int)				// オブジェクトにx座標イベント(ターン)を設定する
#command $$set_pos_y_turn_eve(object, int, int, int, int, int)				// オブジェクトにy座標イベント(ターン)を設定する
#command $$set_scale_eve(object, int, int, int, int, int)					// オブジェクトに拡縮イベントを設定する
#command $$set_scale_x_eve(object, int, int, int, int, int)					// オブジェクトに拡縮(x)イベントを設定する
#command $$set_scale_y_eve(object, int, int, int, int, int)					// オブジェクトに拡縮(y)イベントを設定する
#command $$set_tr_eve(object, int, int, int, int, int)						// オブジェクトに不透明度イベントを設定する
#command $$set_tr_rep_eve(object, int, int, int, int, int, int)				// オブジェクトに補正不透明度イベントを設定する
#command $$set_bright_eve(object, int, int, int, int, int)					// オブジェクトに明るさイベントを設定する
#command $$set_dark_eve(object, int, int, int, int, int)					// オブジェクトに暗さイベントを設定する
#command $$set_mono_eve(object, int, int, int, int, int)					// オブジェクトにモノクロイベントを設定する
#command $$set_bright_eve_game_object(stage, int, int, int, int, int)		// すべてのゲームオブジェクトに明るさイベントを設定する


//---------------------------------------------------------------------------
// アクションオブジェクト
//---------------------------------------------------------------------------
#command $$set_action_object(object)										// アクションコマンドが使えるオブジェクトに設定する
#command $$execute_action_command(object, str)								// アクションコマンドからアクションを実行する

#command $$exists_action_command(str) : int									// 文字列にアクションコマンドが含まれているか
#command $$get_action_command(str) : str									// 文字列に含まれているアクションコマンドを取得する
#command $$chop_action_command(str) : str									// 文字列からアクションコマンドを削除する

#command $$set_action_command_default(object, str, int)						// アクションコマンドの登録
																			// ※各タイトルごとにapp_settings.ssで設定

//---------------------------------------------------------------------------
// 画像
//---------------------------------------------------------------------------
#command $$load_image(object, str)						// 画像ファイルの読み込み
#command $$load_ex_image(object, str, int)				// EX画像ファイルの読み込み(※※deb 後で修正する※※)
#command $$exists_image(str) : int						// 画像ファイルの存在を判定する(すべての読み込み画像タイプを含む)

// 座標補正
#command $$set_image_offset_data_default				// 画像ファイルの座標補正設定
														// ※各タイトルごとにapp_settings.ssで設定
#command $$init_image_offset_data						// 座標補正の初期化
#command $$set_image_offset_data(str, int, int)			// 座標補正データの設定

// 分割ブロック指定
#command $$set_image_block(int, int)									// 分割ブロック数を設定する
#command $$set_image_block_default										// 分割ブロック数の設定をデフォルトにする
#command $$get_image_block_pos_x(object, int, int) : int				// 分割ブロックから座標(x)を取得する
#command $$get_image_block_pos_y(object, int, int) : int				// 分割ブロックから座標(y)を取得する
#command $$move_image_block(object, int, int, int, int, int, int)		// 分割ブロックから分割ブロックへ移動させる
#command $$turn_image_block(object, int, int, int, int, int, int, int)	// 分割ブロックから分割ブロックへ移動させる(ターン)


//---------------------------------------------------------------------------
// ワイプ
//---------------------------------------------------------------------------
#command $$wipe											// ワイプの実行

#command $$init_wipe_data								// ワイプデータの初期化
#command $$set_wipe_data_default(int)					// デフォルトワイプデータの設定
														// ※各タイトルごとにapp_settings.ssで設定

#command $$set_wipe_simple_data(int, int, int,			// ワイプデータの簡易設定(ワイプタイプ、時間、スピードモード、オプション)
								int, int, int, int, int, int, int, int)

#command $$set_wipe_type(int)							// ワイプタイプの設定(個別指定)
#command $$set_wipe_time(int)							// ワイプにかける時間の設定(個別指定)
#command $$set_wipe_speed_mode(int)						// ワイプスピードモードの設定(個別指定)
#command $$set_wipe_option(int, int, int, int,			// ワイプの詳細設定(個別指定)
						   int, int, int, int)
#command $$set_wipe_wait(int)							// ワイプの終了待ちの設定(個別指定)
#command $$set_wipe_start_time(int)						// ワイプを開始する時間の設定(個別指定)
#command $$set_wipe_order(int, int)						// ワイプするオーダーの範囲を設定(個別指定)
#command $$set_wipe_layer(int, int)						// ワイプするレイヤーの範囲を設定(個別指定)
#command $$set_wipe_all(int)							// 全てのオーダーをワイプする設定(個別指定)
#command $$set_wipe_mask_file(str)						// ワイプするマスクファイルを設定(個別指定)

#command $$get_wipe_type_ready : int					// ワイプがすでに設定済みかどうかのフラグを取得する
#command $$set_wipe_type_ready(int)						// ワイプがすでに設定済みかどうかのフラグを設定する
#command $$get_wipe_wait_ready : int					// ワイプ終わるのを待つがすでに設定済みかどうかのフラグを取得する
#command $$set_wipe_wait_ready(int)						// ワイプ終わるのを待つがすでに設定済みかどうかのフラグを設定する

// ワイプコピーフラグ操作
#command $$set_front_wipe_copy(int, int, int)			// 指定範囲のワイプコピーフラグを設定する
#command $$set_front_wipe_copy_all(int)					// 全てのオブジェクトのワイプコピーフラグを設定する
#command $$set_front_wipe_copy_bg(int)					// 背景オブジェクトのワイプコピーフラグを設定する
#command $$set_front_wipe_copy_bs_all(int)				// 全ての立ち絵オブジェクトのワイプコピーフラグを設定する
#command $$set_front_wipe_copy_cg(int)					// イベントＣＧオブジェクトのワイプコピーフラグを設定する

#command $$off_system_front_wipe_copy(int, int)			// 指定範囲のシステムオブジェクトのワイプコピーフラグをオフにする
#command $$off_system_front_wipe_copy_all				// 全てのシステムオブジェクトのワイプコピーフラグをオフにする


//---------------------------------------------------------------------------
// フェード
//---------------------------------------------------------------------------
#command $$fade(int, int, int, int, int, int, int, int)		// フェードの実行

#command $$set_fade_object(object, int, int, int)			// フェードオブジェクトを設定する
#command $$load_fade_image(object, int, int, int)			// フェード画像を読み込む


//---------------------------------------------------------------------------
// 時間帯管理
//---------------------------------------------------------------------------
#command $$init_time_control							// 時間帯を初期化する
#command $$set_time_control(int)						// 時間帯を設定する
#command $$get_time_control :int						// 時間帯を取得する
#command $$get_time_control_suffix : str				// 時間帯ファイル末尾名を取得する


//---------------------------------------------------------------------------
// 背景
//---------------------------------------------------------------------------
#command $$set_bg_object(object, str)					// 背景オブジェクトを設定する
#command $$set_ex_bg_object(object, str, int)			// EX画像ファイルの読み込み(※※deb 後で修正する※※)
#command $$load_bg_image(object, str) : str				// オブジェクトに背景データを読み込む
#command $$get_bg_tonecurve_no : int					// 表示している背景のトーンカーブ番号を取得する
#command $$get_bg_time_control_name(str) : str			// 指定した背景名から時間帯管理ファイル名を取得する
#command $$chop_bg_blur_name(str) : str					// 背景名からブラー文字列を削除する
#command $$set_bg_auto_blur								// 背景ブラーを自動設定する


//---------------------------------------------------------------------------
// イベントＣＧ
//---------------------------------------------------------------------------
#command $$set_cg_object(object, str)					// イベントＣＧオブジェクトを設定する
#command $$load_cg_image(object, str)					// オブジェクトにイベントＣＧデータを読み込む
#command $$get_disp_cg_wipe_no(int) : int				// イベントＣＧワイプ時のワイプ番号を取得する
#command $$get_disp_cg_msg_close(int) : int				// イベントＣＧワイプ時のメッセージウィンドウを閉じるかどうかを取得する
#command $$get_disp_cg_wait(int) : int					// イベントＣＧワイプ時の待ちを行うかどうかを取得する


//---------------------------------------------------------------------------
// 立ち絵
//---------------------------------------------------------------------------
// オブジェクト操作
#command $$set_bs_object(object, str)							// 立ち絵オブジェクトを設定する
#command $$load_bs_image(object, str)							// オブジェクトに立ち絵データを読み込む
#command $$change_bs_image(object, str)							// オブジェクトの立ち絵データを変更する

#command $$create_bs_object(str, str, str, str, str)				// 立ち絵を作成する(自動位置調整あり)
#command $$change_bs_face(str, str, str, str, str)					// 立ち絵の表情を変更する
#command $$delete_bs_object(str, str, str, str, str)				// 立ち絵を消去する(自動位置調整なし)
#command $$create_bs_object_back(str, int, int, int, int)			// 立ち絵を裏画面に作成する(自動位置調整なし)
#command $$move_bs_object_x(str, int, int, int, int, int, int, int)	// 立ち絵の座標を移動する(x座標)
#command $$move_bs_object_y(str, int, int, int, int, int, int, int)	// 立ち絵の座標を移動する(y座標)
#command $$set_bs_layer(str, int)									// 立ち絵のレイヤー値を設定する
#command $$bring_bs_layer(str, str, int)							// 立ち絵のレイヤーを対象の立ち絵の前／後ろに変更する
#command $$set_bs_tr(str, int, int, int, int, int)					// 立ち絵の不透明度を設定する
#command $$create_face(str)											// 顔グラを作成する

// 指定名からデータを取得
#command $$get_bs_index(str) : int								// 立ち絵指定名から登録キャラクターインデックスを取得する
#command $$get_bs_obj_index(str) : int							// 立ち絵指定名から立ち絵オブジェクトのインデックスを取得する
#command $$get_bs_identifier(str) : str							// 立ち絵指定名からキャラクター識別子を取得する
#command $$get_bs_name_type(str) : int							// 立ち絵指定名から立ち絵指定名タイプを取得する
#command $$is_error_bs_name(str) : int							// 立ち絵指定名のエラーをチェックする

// 指定名変換
#command $$get_bs_image_name(str) : str							// 立ち絵指定名から立ち絵ファイル名を取得する

#command $$get_bs_full_name(str) : str							// 立ち絵指定名から省略なしの立ち絵指定名を取得する
#command $$get_bs_full_name_to_range(str) : str					// 省略なしの立ち絵指定名から距離データを取得する
#command $$get_bs_full_name_to_chara(str) : str					// 省略なしの立ち絵指定名からキャラクター識別子を取得する
#command $$get_bs_full_name_to_direction(str) : str				// 省略なしの立ち絵指定名から向きデータを取得する
#command $$get_bs_full_name_to_arms(str) : str					// 省略なしの立ち絵指定名から腕差分データを取得する
#command $$get_bs_full_name_to_face(str) : str					// 省略なしの立ち絵指定名から表情差分を取得する
#command $$get_bs_full_name_to_mouth(str) : str					// 省略なしの立ち絵指定名から口差分を取得する
#command $$get_bs_full_name_to_extension(str) : str				// 省略なしの立ち絵指定名から拡張データを取得する

// 指定名保存
#command $$save_bs_type_data(str)								// 立ち絵指定名データを保存する

// 表示モード管理
#command $$set_bs_disp_mode(int)								// 立ち絵表示モードを設定する
#command $$set_bs_disp_mode_default								// 立ち絵表示モードをデフォルトに設定する
#command $$get_bs_disp_mode : int								// 立ち絵表示モードを取得する
#command $$set_bs_disp_slide_time(int)							// 表示モードがスライドの時にスライド移動にかける時間を設定する
#command $$set_bs_disp_slide_time_default						// 表示モードがスライドの時にスライド移動にかける時間をデフォルトに設定する
#command $$get_bs_disp_slide_time : int							// 表示モードがスライドの時にスライド移動にかける時間を取得する

// キャラクター管理
#command $$register_bs_character(str, str, int, int, int, int)	// 立ち絵キャラクターを登録する
#command $$register_bs_face(str, int, int, int)					// 立ち絵キャラクターの顔グラを登録する
#command $$get_bs_dress_type(str) : int							// 立ち絵キャラクターの服装を取得する
#command $$set_bs_dress_type(str, int)							// 立ち絵キャラクターの服装を設定する
#command $$get_bs_overlay_face_type(str) : str					// 立ち絵キャラクターの上書き表情を取得する
#command $$set_bs_overlay_face_type(str, str)					// 立ち絵キャラクターの上書き表情を設定する
#command $$set_bs_overlay_pose_disable(str, str)				// 立ち絵キャラクターの上書き表情差分を使用時に禁止するポーズを設定する
#command $$set_default_pos_bs1(int)								// 立ち絵が１人の時のデフォルト表示位置を設定する
#command $$set_default_pos_bs2(int, int)						// 立ち絵が２人の時のデフォルト表示位置を設定する
#command $$set_default_pos_bs3(int, int, int)					// 立ち絵が３人の時のデフォルト表示位置を設定する
#command $$set_default_pos_bs4(int, int, int, int)				// 立ち絵が４人の時のデフォルト表示位置を設定する
#command $$set_default_pos_bs5(int, int, int, int, int)			// 立ち絵が５人の時のデフォルト表示位置を設定する
#command $$get_default_bs_pos(int) : int						// 立ち絵のデフォルト表示位置を取得する

#command $$init_bs_scene_data									// 立ち絵シーンデータを初期化する

#command $$set_bs_data_default									// 立ち絵キャラクターの登録
																// ※各タイトルごとにapp_settings.ssで設定
#command $$set_bs_pos_x_default									// 立ち絵のデフォルトx座標の設定
																// ※各タイトルごとにapp_settings.ssで設定
#command $$set_face_data_default								// 立ち絵キャラクターの顔グラ登録
																// ※各タイトルごとにapp_settings.ssで設定
#command $$set_bs_tonecurve(str) : int							// 立ち絵のトーンカーブの設定
																// ※各タイトルごとにapp_settings.ssで設定

// 非同期での立ち絵変更
#command $$init_bs_async_change_time							// 非同期での立ち絵変更を管理する時間を初期化する
#command $$wait_bs_async_change_time(int)						// 非同期での立ち絵変更を管理する時間分の待ちを行う


//---------------------------------------------------------------------------
// カットイン
//---------------------------------------------------------------------------
#command $$set_simple_cutin_object(object, str, int, int, int)	// シンプル(一枚絵)カットインオブジェクトを設定する
#command $$delete_simple_cutin_object(object, str)				// シンプル(一枚絵)カットインオブジェクトを削除する


//---------------------------------------------------------------------------
// エフェクト
//---------------------------------------------------------------------------
#command $$set_film_noise_object(object)										// フィルムノイズオブジェクトを設定する
#command $$set_dot_noise_object(object, int)									// ドットノイズオブジェクトを設定する
#command $$set_recollect_object(object, int)									// 回想枠オブジェクトを設定する
#command $$set_concentration_line_object(object, int)							// 集中線オブジェクトを設定する
#command $$set_concentration_xy_line_object(object, int, int)					// 集中線(水平、垂直)オブジェクトを設定する
#command $$set_dizzy_object(object, object, int, int, int, int)					// 目眩オブジェクトを設定する
#command $$delete_dizzy_object(object, object)									// 目眩オブジェクトを削除する
#command $$auto_update_dizzy_object												// 目眩オブジェクトの自動更新
#command $$set_steam_object(object, object, int)								// 湯気オブジェクトを設定する
#command $$set_smoke_object(object, object, int)								// 煙オブジェクトを設定する
#command $$set_fogA_object(object, object)										// 霧(留まる)オブジェクトを設定する
#command $$set_fogB_object(object, object, int)									// 霧(流れる)オブジェクトを設定する
#command $$set_lens_flare_object(object, int)									// レンズフレアオブジェクトを設定する
#command $$set_screen_filter_object(object, int, int, int, int, int)			// スクリーンフィルターオブジェクトを設定する
#command $$set_cinemascope_object(object, int, int, int, int, int, int, int)	// シネマスコープオブジェクトを設定する
#command $$set_cinemascope_show_animation(object, int, int, int)				// シネマスコープオブジェクトに表示アニメーションを設定する
#command $$set_cinemascope_hide_animation(object, int, int, int, int)			// シネマスコープオブジェクトに非表示アニメーションを設定する
#command $$set_flash_object(object, int, int, int, int, int, int, int, int)		// フラッシュオブジェクトを設定する


//---------------------------------------------------------------------------
// 環境エフェクト
//---------------------------------------------------------------------------
#command $$create_snow_weatherA_object(object, object, int, int, int)			// 雪エフェクト(平面)を作成する
#command $$create_snow_weatherB_object(object, object, int, int)				// 雪エフェクト(見上げる)を作成する
#command $$create_snow_weatherC_object(object, object, int, int, int)			// 雪エフェクト(印象的)を作成する
#command $$create_rain_weatherA_object(object, object, int, int, int)			// 雨エフェクト(平面)を作成する
#command $$create_rain_weatherB_object(object, object, int, int)				// 雨エフェクト(見上げる)を作成する
#command $$create_rain_weatherC_object(object, object, int, int, int)			// 雨エフェクト(印象的)を作成する
#command $$create_dust_weatherA_object(object, object, int, int, int)			// 塵エフェクト(平面)を作成する
#command $$create_dust_weatherC_object(object, object, int, int, int)			// 塵エフェクト(印象的)を作成する
#command $$create_fire_spark_weatherA_object(object, object, int, int, int)		// 火の粉エフェクト(平面)を作成する
#command $$create_fire_spark_weatherC_object(object, object, int, int, int)		// 火の粉エフェクト(印象的)を作成する
#command $$create_light_ball_weatherA_object(object, object, int, int, int)		// 光の玉エフェクト(平面)を作成する
#command $$create_light_ball_weatherC_object(object, object, int, int, int)		// 光の玉エフェクト(印象的)を作成する
#command $$create_sakura_weatherA_object(object, object, int, int, int)			// 桜エフェクト(平面)を作成する
#command $$create_sakura_weatherB_object(object, object, int, int)				// 桜エフェクト(見上げる)を作成する
#command $$create_sakura_weatherC_object(object, object, int, int, int)			// 桜エフェクト(印象的)を作成する


//---------------------------------------------------------------------------
// パーティクル
//---------------------------------------------------------------------------
#command $$create_particle(object, str, int, int, int, int, int, int, int, int)					// パーティクル(直線)を作成する
#command $$create_particle_vortex(object, str, int, int, int, int, int, int, int, int, int)		// パーティクル(円状)を作成する
#command $$create_particle_radial(object, str, int, int, int, int, int, int)					// パーティクル(放射状)を作成する
#command $$create_particle_circle(object, str, int, int, int, int, int, int, int, int, int)		// パーティクル(円周上)を作成する

#command $$fa_particle(frameaction, object)							// パーティクルフレームアクションを実行する

#command $$set_particle_shape_to_point(object, int, int)			// パーティクル発生範囲を点に設定する
#command $$set_particle_shape_to_box(object, int, int, int, int)	// パーティクル発生範囲を矩形に設定する
#command $$set_particle_shape_to_circle(object, int)				// パーティクル発生範囲を円に設定する

#command $$set_particle_oneshot(object)								// パーティクルをワンショットにする
#command $$set_particle_duration(object, int, int)					// パーティクルの継続時間を設定する

#command $$set_particle_auto_tr(object, int)						// 自動不透明度アニメーションを設定する
#command $$set_particle_auto_scale(object, int)						// 自動縮小アニメーションを設定する

#command $$set_particle_patno(object, int, int)						// パターン番号を設定する
#command $$set_particle_scale(object, int, int, int, int, int)		// 拡縮率を設定する
#command $$set_particle_rotate(object, int, int, int, int, int)		// 回転角を設定する
#command $$set_particle_delay(object, int, int)						// ディレイ(開始)時間を設定する
#command $$set_particle_outside_force(object, int, int, int, int)	// 外力を設定する
#command $$set_particle_color(object, str, str, int)				// 色を設定する
#command $$set_particle_color_add(object, str, str)					// 色味を設定する


//---------------------------------------------------------------------------
// テキスト
//---------------------------------------------------------------------------
#command $$print_centering_text(str, int, int)									// センタリングテキストを表示する


//---------------------------------------------------------------------------
// サウンド
//---------------------------------------------------------------------------
#command $$bgm_stop(int, int)									// ＢＧＭを停止する
#command $$bgm_volume_default(int)								// ＢＧＭの音量をデフォルトに戻す
#command $$se_stop(int, int, int)								// ＳＥを停止する
#command $$se_stop_all(int, int)								// すべてのＳＥを停止する
#command $$se_pause_all(int)									// すべてのＳＥを一時停止する
#command $$se_resume_all(int)									// すべてのＳＥを再開する
#command $$se_volume_all_default(int)							// すべてのＳＥの音量をデフォルトに戻す


//---------------------------------------------------------------------------
// ムービー
//---------------------------------------------------------------------------
#command $$play_movie(str, int)									// ムービーを再生する


//---------------------------------------------------------------------------
// デバッグ
//---------------------------------------------------------------------------
#command $$check_debug_mode_enable : int					// デバッグモードの状態(有効／無効)を取得する
#command $$debug_message(str)								// システムデバッグメッセージを表示する

// キーボードショートカット
#command $$debug_key_shortcut(frameaction)					// キーボードショートカットの実行
#command $$show_debug_key_shortcut_msg						// キーボートショートカットメッセージの表示

// デバッグメッセージ
#command $$create_debug_msg_manager(object, int, int)						// デバッグメッセージマネージャーの作成
#command $$set_debug_msg_manager(object, int, int, int, int, int, int, int)	// デバッグメッセージマネージャーの設定
#command $$show_debug_msg(object, str)										// デバッグメッセージの表示

// リソースメッセージ
#command $$show_resource_msg(str)							// リソースメッセージの表示

// ログ出力
#command $$add_debug_log_list(str)							// ログリストに文字列を追加する
#command $$write_debug_log_list								// ログリストを出力する
#command $$sort_debug_log_list_filename						// ログリストをファイル名でソートする
