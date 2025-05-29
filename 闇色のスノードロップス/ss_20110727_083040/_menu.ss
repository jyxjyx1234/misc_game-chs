
// *************************************************************
// メニューシーン
// =============================================================
//		システムコマンドメニューの「メニューに戻る」を選択したときに呼び出されます。
//		トップメニューを表示し、「はじめから」「つづきから」などのボタンを配置します。
// =============================================================
#inc_start

	#define		@pos_x	3
	#define		@pos_y	550
	#define		@width	(134+5)

#inc_end

#z00


	// システムコマンドメニューの呼び出しを禁止します。
	syscom.set_syscom_menu_disable
	syscom.set_save_exist_flag(0)
	syscom.set_load_exist_flag(0)

	// 一部のショートカットキーを無効にする
	script.set_key_disable(83)	// セーブ画面
	script.set_key_disable(82)	// 前の選択肢に戻る
	script.set_key_disable(81)	// クイックセーブ

	// コントロールキーによる早送りを禁止します。
	script.set_ctrl_skip_disable

	// メッセージバックを禁止します。
	script.set_msg_back_disable

	// スペースキーでウィンドウを消す機能を禁止します。
	syscom.set_hide_mwnd_enable_flag(0)

	// ＢＧＭを再生します。
	bgm.set_volume_max
	bgm.play("哀愁")

	// ★回想中にシステムコマンドメニューからタイトルに戻った際、シーン鑑賞トップに戻るための仕掛け　その２
	// 回想モードから戻った際は、回想メニューに進みます。
	if (@回想中 == 1)	{	@回想中 = 0		goto #replay_scene	}

	// 回想シーンではなかったら、回想シーンのページを初期化
	@回想頁番号	= 0


	// 総てをクリアしたかの判定
	gosub #clear_hantei


	// メニューシーンを開始します。
	goto #start

// *************************************************************
// メニューシーン開始
// =============================================================
#start

	// 背景を準備します。
	back.object[0].create(_menu_bg, 1)

	// オブジェクトのパラメータイベントを使い、背景を動かします。
//	back.object[0].x_eve.loop(0, -200, 10000, 0, 0)
//	back.object[0].y_eve.loop(-200, 0, 10000, 0, 0)

	// ページ０を準備します。
	gosub #ready_page_00

	// ワイプします。
	wipe

#sel

	// オブジェクトボタン選択肢を初期化します。
	front.objbtngroup[0].init

	// オブジェクトボタン選択肢を開始します。
	l[0] = front.objbtngroup[0].sel
	switch (l[0])	{
		case (00)	system.debug_write_log(開始)
					goto #game_start		// はじめから
		case (01)	syscom.call_load_menu	// つづきから
		case (02)	syscom.call_config_menu	// 環境設定
		case (03)
					goto #cg_scene
//					goto #omake				// 鑑賞モード
//					gosub #menu_end
//					jump(体験版, 01)
		case (04)	gosub #game_end
					//syscom.end_game(1)		// ゲーム終了
		case (05)	system.debug_write_log(extra)
					gosub #menu_end
					jump("Ｔおまけ")
	}

	goto #sel

#sel2

	// オブジェクトボタングループを初期化します。
	front.objbtngroup[0].init

	// オブジェクトボタン選択肢を開始します。
	l[0] = front.objbtngroup[0].sel_cancel
	switch (l[0])	{
		case (05)	goto #cg_scene			// ＣＧ鑑賞
		case (06)	goto #replay_scene		// シーン回想
		case (07)	goto #modoru			// 戻る
		case (-1)	goto #modoru
	}

	goto #sel2

// *************************************************************
// ページ０を準備
// =============================================================
#ready_page_00

	// オブジェクトボタングループを初期化します。
	back.objbtngroup[0].init

	// オブジェクトを準備します。
	//						$file_name, $disp, $x, $y
	back.object[10].create(_menu_btn, 1, @pos_x, @pos_y)	// はじめから
	back.object[10].layer = 1
	back.object[10].patno = 0
	//$button_no, $grup_no, $action_no, $se_no
	back.object[10].set_button(0, 0, 8, 0)
	back.object[11].create(_menu_btn, 1, @pos_x + @width, @pos_y)	// つづきから
	back.object[11].layer = 1
	back.object[11].patno = 2
	back.object[11].set_button(1, 0, 8, 0)
	back.object[12].create(_menu_btn, 1, @pos_x + @width * 2, @pos_y)	// 環境設定
	back.object[12].layer = 1
	back.object[12].patno = 4
	back.object[12].set_button(2, 0, 8, 0)
	back.object[13].create(_menu_btn, 1, @pos_x + @width * 3, @pos_y)	// 鑑賞モード
	back.object[13].layer = 1
	back.object[13].patno = 6
	back.object[13].set_button(3, 0, 8, 0)
	back.object[14].create(_menu_btn, 1, 655, @pos_y)	// ゲーム終了
	back.object[14].layer = 1
	back.object[14].patno = 8
	back.object[14].set_button(4, 0, 8, 0)

	back.object[15].create(_menu_btn_ex, 1, 659, 81)	// ゲーム終了
	back.object[15].layer = 1
	back.object[15].patno = 0
	back.object[15].set_button(5, 0, 8, 0)

	back.object[15].disp = @全クリア


	if(@初回プレイ == 0){
		back.object[13].set_button_state_disable
	}


	return

// *************************************************************
// ページ１を準備
// =============================================================
#ready_page_01

	// オブジェクトボタングループを初期化します。
	back.objbtngroup[0].init

	// オブジェクトを準備します。
	back.object[10].create_string("ＣＧ鑑賞", 1, 139, 555)	// ＣＧ鑑賞
	back.object[10].layer = 1
//	back.object[10].patno = 5
	back.object[10].set_button(5, 0, 0, 0)
	back.object[11].create_string("シーン鑑賞", 1, 278, 555)	// シーン鑑賞
	back.object[11].layer = 1
//	back.object[11].patno = 6
	back.object[11].set_button(6, 0, 0, 0)
	back.object[12].create_string("戻る", 1, 417, 555)	// 戻る
	back.object[12].layer = 1
//	back.object[12].patno = 7
	back.object[12].set_button(7, 0, 0, 0)

	return

// *************************************************************
// ゲーム開始
// =============================================================
#game_start

	// メニューを終了します。
	gosub #menu_end

	// クリアフラグを、ローカルフラグに。→グローバルフラグのみへ
//	@クリア済み = @クリアフラグ
	script.set_mouse_disp_off
	if(@ＯＰ見た == 0){
		mov.play_wait("op")
		@ＯＰ見た = 1
	}
	else{
		mov.play_wait_key("op")
	}
	script.set_mouse_disp_on
	@初回プレイ = 1

	jump("Ａ一日目")
	// ゲームシーンにジャンプします。
//	jump("プロローグ")

// *************************************************************
// ＣＧ鑑賞
// =============================================================
#cg_scene

	// ＣＧ鑑賞をコールします。
	farcall("_cg")

	// メニューに戻ります。
	goto #start

// *************************************************************
// シーン回想
// =============================================================
#replay_scene

	// シーン回想をコールします。
	farcall("_scene")

	// メニューに戻ります。
	goto #start

// *************************************************************
// おまけ
// =============================================================
#omake

	// ページ１を準備します。
	gosub #ready_page_01

	// レイヤー１をワイプします。
	wipe(0, 1000, start_layer=1, end_layer=1)

	// 選択肢２に進みます。
	goto #sel2

	return

// *************************************************************
// 戻る
// =============================================================
#modoru

	// ページ０を準備します。
	gosub #ready_page_00

	// レイヤー１をワイプします。
	wipe(0, 1000, start_layer=1, end_layer=1)

	// 選択肢に戻ります。
	goto #sel

// *************************************************************
// メニューを終了する
// =============================================================
#menu_end

	// ＢＧＭを終了します。
	bgm.stop(1000)

	// ワイプします。
	wipe(0, 1000)

	// スペースキーでウィンドウを消す機能を許可します。
	syscom.set_hide_mwnd_enable_flag(1)

	// メッセージバックを許可します。
	script.set_msg_back_enable

	// コントロールキーによる早送りを許可します。
	script.set_ctrl_skip_enable

	// システムコマンドを有効にします。
	syscom.set_syscom_menu_enable
	syscom.set_save_exist_flag(1)
	syscom.set_load_exist_flag(1)

	// 禁止にしたショートカットを有効にする
	script.set_key_enable(83)
	script.set_key_enable(82)
	script.set_key_enable(81)

	return

// *************************************************************
// ゲームを終了する
// =============================================================
#game_end

l[0] = farcall(_alert_menu_end)

if(l[0] == 1){
	owari
}

return

// =============================================================
// クリアフラグ判定
// =============================================================
#clear_hantei

if(@全クリア == 0){
	if(@トゥルー(0) && @トゥルー(1) && @トゥルー(2) && @トゥルー(3)	&& @グッド(0)){
		@全クリア = 1
	}
}

return