

#INC_START
	#property $config_page : int
	#define _SLIDER_LENGTH		856
	#define _SLIDER_BTN_REP		14

	//スライダーの管理番号
	#define _SLIDER_MESSAGESPEED	0
	#define _SLIDER_MESSAGEWINDOW	1
	#define _SLIDER_AUTO_MOJI		2
	#define _SLIDER_AUTO_MIN		3
	#define _SLIDER_SOUND_VOL01		4
	#define _SLIDER_SOUND_VOL02		5
	#define _SLIDER_SOUND_VOL03		6
	#define _SLIDER_SOUND_VOL04		7
	#define _SLIDER_SOUND_VOL05		8
	#define _SLIDER_SOUND_VOL06		9
	#define _SLIDER_SOUND_VOL07		10

	//スライダーの座標管理
	#property $slider_value : intlist[12]

	#DEFINE		<help_obj>	excall.front.object[<help_txt_objno>]
	#DEFINE		<help_obj2>	excall.front.object[<help_txt_objno2>]

#INC_END


/////////////////////////////////////////////////////////////////////////////
// スライダーバーのカラー設定
command $set_color_bar( property $obj : object, property $len )
{
	$obj.set_src_clip(1, 0, 0, $len, 10)
}


command $set_value2slider_all()
{
	property $loop

	for( $loop=0, $loop<$slider_value.get_size, $loop+=1 ){
		$set_value2slider( $loop )
	}
}

command $set_slider2value_all()
{
	property $loop

	for( $loop=0, $loop<$slider_value.get_size, $loop+=1 ){
		$set_value2slider( $loop )
	}
}

//実体値を座標に変換
// ルーチン内では座標ですべて管理し、変化があったおきに実体値に変換
// 最初とデフォルトを除き、座標→実体値の流れは変えてはいけない。
command $set_value2slider( property $no )
{
	property $value

	switch( $no ){
		case( _SLIDER_MESSAGESPEED )		//テキストスピード
			$value = math.linear( syscom.get_message_speed, 100, 0, 0, _SLIDER_LENGTH )
		case( _SLIDER_MESSAGEWINDOW )		//テキストウィンドウの濃さ
			$value = math.linear( syscom.get_filter_color_a, 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_AUTO_MOJI )			//オードモード速度
			$value = math.linear( syscom.get_auto_mode_moji_wait, 500, 0, 0, _SLIDER_LENGTH )
//		case( _SLIDER_AUTO_MIN )
//			$value = math.linear( syscom.get_auto_mode_min_wait, 5000, 0, 0, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL01 )
			$value = math.linear( syscom.get_all_volume                  , 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL02 )
			$value = math.linear( syscom.get_bgm_volume                  , 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL03 )
			$value = math.linear( syscom.get_koe_volume                  , 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL04 )
			$value = math.linear( syscom.get_pcm_volume                  , 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL05 )
			$value = math.linear( syscom.get_se_volume                   , 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL06 )
			$value = math.linear( syscom.get_sound_volume(@BGV_VOL_CH)   , 0, 0, 255, _SLIDER_LENGTH )
		case( _SLIDER_SOUND_VOL07 )
			$value = math.linear( syscom.get_mov_volume                  , 0, 0, 255, _SLIDER_LENGTH )
	}

	$slider_value[$no] = $value

}

//座標を実体値に変換
command $set_slider2value( property $no )
{
	property $value

	$value = $slider_value[$no]

	switch( $no ){
		case( _SLIDER_MESSAGESPEED )		//テキストスピード
			syscom.set_message_speed( math.linear( $value, 0, 100, _SLIDER_LENGTH, 0 ) )
		case( _SLIDER_MESSAGEWINDOW )		//テキストウィンドウの濃さ
			syscom.set_filter_color_a( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
		case( _SLIDER_AUTO_MOJI )		//オードモード速度
			syscom.set_auto_mode_moji_wait( math.linear( $value, 0, 500, _SLIDER_LENGTH, 0 ) )
			syscom.set_auto_mode_min_wait(  math.linear( $value, 0, 5000, _SLIDER_LENGTH, 0 ) )	//オートモードは兼用
//		case( _SLIDER_AUTO_MIN )
//			syscom.set_auto_mode_min_wait(  math.linear( $value, 0, 5000, _SLIDER_LENGTH, 0 ) )
		case( _SLIDER_SOUND_VOL01 )
			syscom.set_all_volume( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
		case( _SLIDER_SOUND_VOL02 )
			syscom.set_bgm_volume( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
		case( _SLIDER_SOUND_VOL03 )
			syscom.set_koe_volume( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
		case( _SLIDER_SOUND_VOL04 )
			syscom.set_pcm_volume( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
		case( _SLIDER_SOUND_VOL05 )
			syscom.set_se_volume( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
		case( _SLIDER_SOUND_VOL06 )
			syscom.set_sound_volume(@BGV_VOL_CH, math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
			@BGV_VOL_SET
		case( _SLIDER_SOUND_VOL07 )
			syscom.set_mov_volume( math.linear( $value, 0, 0, _SLIDER_LENGTH, 255 ) )
	}

}


command $make_slider( property $obj:object, property $xpos, property $ypos, property $btn_no1 , property $btn_no2, property $value )
{
	$obj.init
	$obj.disp = 1
	$obj.x = $xpos
	$obj.y = $ypos
	$obj.child.resize(3)

	$obj.child[00].create(__sys_config_slider_bar, 1, 0, 0,  0 )		//スライダー本体
	$obj.child[01].create(__sys_config_slider_bar, 1, 0, 0, 10 )		//スライダー色替え
	$obj.child[02].create(__sys_config_slider_btn, 1, 0, 0-21+3 )		//スライダーボタン
	$obj.child[02].x = $value - _SLIDER_BTN_REP

	$obj.child[00].set_button( $btn_no1, 0, 54, @ボタンＳＥ決定音無し２ )	//外見上の反応はない
	$obj.child[02].set_button( $btn_no2, 0, 24, @ボタンＳＥ決定音無し２ )
	$obj.child[02].set_button_pushkeep(1) 

	$obj.child[01].set_src_clip(1, 0, 0, $value + 25, 10)

}

command $make_tab_button( property $obj:object, property $file:str, property $xpos, property $ypos, property $btn_no, property $flag )
{
	$obj.create( $file, 1, $xpos, $ypos )
	$obj.set_button( $btn_no, 0, 24, @ボタンＳＥ決定音無し )
	if( $flag == 0 ){
		$obj.set_button_state_select
	}
}

command $make_button( property $obj:object, property $file:str, property $xpos, property $ypos, property $btn_no, property $flag )
{
	$obj.create( $file, 1, $xpos, $ypos )
	$obj.set_button( $btn_no, 0, 24, @ボタンＳＥ決定音無し )
	if( $flag == 0 ){
		$obj.set_button_state_disable
	}
}

command $make_check_box( property $obj:object, property $xpos, property $ypos, property $btn_no, property $btn_group, property $flag )
{	//★2024.07.28 ボタングループ用の引数を一つ追加
	$obj.create( __sys_config_check, 1, $xpos, $ypos )
	$obj.set_button( $btn_no, $btn_group, 24, @ボタンＳＥ決定音無し２ )
	if( $flag != 0 ){
		$obj.patno = 10
	}
}


command $update_automode_time( property $stage : stage )
{
	$stage.object[0].child[34].set_number( syscom.get_auto_mode_moji_wait/10 )
	$stage.object[0].child[35].set_number( (syscom.get_auto_mode_min_wait/1000) )
	$stage.object[0].child[36].set_number( (syscom.get_auto_mode_min_wait%1000)/100 )
}

command $update_message_sample( property $stage : stage )
{
	$stage.object[0].child[37].tr = syscom.get_filter_color_a
}


command $sample_string_fa( property $fa : frameaction, property $obj : object )
{
	property $msg : str
	property $count
	property $max_time

	$msg  = "メッセージウィンドウのサンプル　　　　　"
	$max_time = syscom.get_message_speed * $msg.len

	if( $max_time == 0 || syscom.get_message_nowait ){
		$obj.set_string( $msg )
	}
	else{
		$count = math.linear($fa.counter.get % $max_time, 0, 0, $max_time, $msg.len )
		$obj.set_string( $msg.left($count) )
	}

}



/////////////////////////////////////////////////////////////////////////////
// CONFIGメニュー読み込み＆表示
command $config_menu_make_grp( property $stage : stage )
{
	property $loop
	property $cont
	property $value

	$stage.objbtngroup[0].init

	// ＣＧ読み込み
	$stage.object[0].init
	$stage.object[0].disp = 1
	$stage.object[0].child.resize( 100 )



	//$stage.object[0].child[09].create(__sys_config_base_line,  1)		// 下地の白枠（デザイン上必要）
	$make_tab_button( $stage.object[0].child[01], __sys_config_tab01, 1093+266*0, 27, 0, $config_page != 0 )							// タブ：システム
	$make_tab_button( $stage.object[0].child[02], __sys_config_tab02, 1093+266*1, 27, 1, $config_page != 1 )							// タブ：システム
	$make_tab_button( $stage.object[0].child[03], __sys_config_tab03, 1093+266*2, 27, 2, $config_page != 2 )							// タブ：システム
	$make_button( $stage.object[0].child[89], __sys_config_exit, 1790, 955, 999, 1 )							// 戻る


	if( $config_page == 0 ){		//ページ：SYSTEM
		$stage.object[0].child[00].create(__sys_config_base01,     1)		// 下地
		$stage.object[0].child[00].layer = -1

		// 画面モード
		$make_check_box( $stage.object[0].child[10],  650, 187, 10, 0,syscom.get_window_mode   )				// システムチェック：フルスクリーン画面
		$make_check_box( $stage.object[0].child[11], 1043, 187, 11, 0,syscom.get_window_mode^1 )				// システムチェック：ウィンドウ画面
		$make_button( $stage.object[0].child[12], __sys_config_ham, 1380, 181, 12, 1 )					// システムボタン：詳細
		$make_button( $stage.object[0].child[13], __sys_config_init, 1725, 187, 13, 1 )					// 初期化

		// テキスト
		$make_check_box( $stage.object[0].child[20],  650, 365, 20, 0,syscom.get_message_nowait )				// ノーウェイト
		$make_check_box( $stage.object[0].child[21], 1043, 365, 21, 0,syscom.get_skip_unread_message_onoff)		// 未読スキップ
		$make_slider( $stage.object[0].child[23], 714, 312, 22, 23, $slider_value[_SLIDER_MESSAGESPEED] )		//テキストスピード
		$make_button( $stage.object[0].child[24], __sys_config_init, 1725, 297, 29, 1 )					// 初期化

		// ウィンドウ濃さ
		$make_slider( $stage.object[0].child[31], 714, 483, 30, 31, $slider_value[_SLIDER_MESSAGEWINDOW] )		//メッセージウィンドウの濃さ
		$make_button( $stage.object[0].child[32], __sys_config_init, 1725, 467, 39, 1 )					// 初期化
		$stage.object[0].child[36].create( __sys_config_sample,0,700,537 )
		$stage.object[0].child[37].create_rect( 0,0,700,180,0,0,0,255,0,700,537 )
		$stage.object[0].child[38].create_string( "",0,700+34*3,507+73 )
		$stage.object[0].child[38].set_string_param( 34, 1, 5, 30, 0, 1, 2, 1 )

		$stage.object[0].child[36].layer = 1
		$stage.object[0].child[37].layer = 1
		$stage.object[0].child[38].layer = 1
		$stage.object[0].child[38].frame_action.start( -1, "$sample_string_fa" )
		$update_message_sample( $stage )

		// オート速度
		$make_slider( $stage.object[0].child[40], 714, 597, 40, 41, $slider_value[_SLIDER_AUTO_MOJI] )		//オードモードスピード
		$make_button( $stage.object[0].child[42], __sys_config_init, 1725, 581, 49, 1 )					// 初期化

		//$stage.object[0].child[43].create_number( __sys_config_num, 1, 488, 623 )		//文字時間：秒(0-500msec)
		//$stage.object[0].child[44].create_number( __sys_config_num, 1, 523, 623 )		//文字時間：1/100秒
		//$stage.object[0].child[43].set_number( 0 )
		//$stage.object[0].child[44].set_number_param(2, 1, 0, 0, 0, 0 )

		//$stage.object[0].child[45].create_number( __sys_config_num, 1, 488,678)		//文字時間：秒
		//$stage.object[0].child[46].create_number( __sys_config_num, 1, 523,678)		//文字時間：1/10秒
		//$stage.object[0].child[46].set_number_param(1, 1, 0, 0, 0, 0 )

		//$update_automode_time( $stage )

		// 確認ウィンドウ
		$make_check_box( $stage.object[0].child[60],  284    , 785    , 60, 0,@GFLAG_DIALOG_QSAVE^1   )				// ダイアログ：クイックセーブ
		$make_check_box( $stage.object[0].child[61],  284+498, 785    , 61, 0,@GFLAG_DIALOG_QLOAD^1   )				// ダイアログ：クイックロード
		$make_check_box( $stage.object[0].child[62],  284    , 785+60 , 62, 0,@GFLAG_DIALOG_SAVE^1    )				// ダイアログ：上書きセーブ
		$make_check_box( $stage.object[0].child[63],  284+498, 785+60 , 63, 0,@GFLAG_DIALOG_LOAD^1    )				// ダイアログ：ロード
		$make_check_box( $stage.object[0].child[64],  284+996, 785+60 , 64, 0,@GFLAG_DIALOG_LOGJUMP^1 )				// ダイアログ：履歴から再開する
		$make_check_box( $stage.object[0].child[65],  284    , 785+120, 65, 0,@GFLAG_DIALOG_DELETE^1  )				// ダイアログ：セーブデータ削除
		$make_check_box( $stage.object[0].child[66],  284+498, 785+120, 66, 0,@GFLAG_DIALOG_TITLE^1   )				// ダイアログ：タイトルに戻る／回想に戻る
		$make_check_box( $stage.object[0].child[67],  284+996, 785+120, 67, 0,@GFLAG_DIALOG_EXIT^1    )				// ダイアログ：ゲームを終了する
		
		$make_button( $stage.object[0].child[69], __sys_config_init, 1725, 720, 69, 1 )					// 初期化
	}
	elseif( $config_page == 1 ){ //ページ：SOUND
		$stage.object[0].child[00].create(__sys_config_base02,     1)		// 下地
		$stage.object[0].child[00].layer = -1

		$make_check_box( $stage.object[0].child[10], 530, 183-12, 201, 0,syscom.get_all_onoff   )	// サウンドチェック：マスター
		$make_check_box( $stage.object[0].child[11], 530, 291-12, 202, 0,syscom.get_bgm_onoff   )	// サウンドチェック：ＢＧＭ
		$make_check_box( $stage.object[0].child[12], 530, 400-12, 203, 0,syscom.get_koe_onoff   )	// サウンドチェック：音声
		$make_check_box( $stage.object[0].child[13], 530, 509-12, 204, 0,syscom.get_pcm_onoff   )	// サウンドチェック：効果音
		$make_check_box( $stage.object[0].child[14], 530, 618-12, 205, 0,syscom.get_se_onoff    )	// サウンドチェック：システム音
		$make_check_box( $stage.object[0].child[15], 530, 726-12, 206, 0,(@BGV_ALL_MUTE + 1 )% 2)	// サウンドチェック：ＢＧＶ
		$make_check_box( $stage.object[0].child[16], 530, 834-12, 207, 0,syscom.get_mov_onoff   )	// サウンドチェック：ムービー
		$make_check_box( $stage.object[0].child[18], 197, 904   , 208, 0,syscom.get_bgmfade_onoff   )	// サウンドチェック：音声再生時にBGMの音量を自動で下げる
		$make_check_box( $stage.object[0].child[19], 835, 904   , 209, 0,syscom.get_koe_dont_stop_onoff  )	// サウンドチェック：音声の再生中に次の‥
		$make_check_box( $stage.object[0].child[20], 197, 966   , 210, 0,syscom.get_play_silent_sound_onoff   )	// サウンドチェック：サウンドの再生時に‥
		$make_button( $stage.object[0].child[21], __sys_config_init, 1590, 904, 211, 1 )					// 初期化

		$make_slider( $stage.object[0].child[30], 714 ,183, 230, 231, $slider_value[_SLIDER_SOUND_VOL01] )		// スライダーバー：マスターボリューム
		$make_slider( $stage.object[0].child[31], 714, 291, 232, 233, $slider_value[_SLIDER_SOUND_VOL02] )		// スライダーバー：ＢＧＭ
		$make_slider( $stage.object[0].child[32], 714, 400, 234, 235, $slider_value[_SLIDER_SOUND_VOL03] )		// スライダーバー：音声
		$make_slider( $stage.object[0].child[33], 714, 509, 236, 237, $slider_value[_SLIDER_SOUND_VOL04] )		// スライダーバー：効果音
		$make_slider( $stage.object[0].child[34], 714, 618, 238, 239, $slider_value[_SLIDER_SOUND_VOL05] )		// スライダーバー：システム音
		$make_slider( $stage.object[0].child[35], 714, 726, 240, 241, $slider_value[_SLIDER_SOUND_VOL06] )		// スライダーバー：ＢＧＶ
		$make_slider( $stage.object[0].child[36], 714, 834, 242, 243, $slider_value[_SLIDER_SOUND_VOL07] )		// スライダーバー：ムービー

		$make_button( $stage.object[0].child[39], __sys_config_ham , 1684, 400-16, 245, 1 )	// 個別音声

		$make_button( $stage.object[0].child[40], __sys_config_init, 1750, 183-16, 251, 1 )	// 初期化
		$make_button( $stage.object[0].child[41], __sys_config_init, 1750, 291-16, 252, 1 )	// 初期化
		$make_button( $stage.object[0].child[42], __sys_config_init, 1750, 400-16, 253, 1 )	// 初期化
		$make_button( $stage.object[0].child[43], __sys_config_init, 1750, 509-16, 254, 1 )	// 初期化
		$make_button( $stage.object[0].child[44], __sys_config_init, 1750, 618-16, 255, 1 )	// 初期化
		$make_button( $stage.object[0].child[45], __sys_config_init, 1750, 726-16, 256, 1 )	// 初期化
		$make_button( $stage.object[0].child[46], __sys_config_init, 1750, 834-16, 257, 1 )	// 初期化

		$make_button( $stage.object[0].child[47], __sys_config_ham , 1684, 726-16, 258, 1 )	// 個別BGV

	}
	elseif( $config_page == 2 ){ //ページ：CUSTOM
		$stage.object[0].child[00].create(__sys_config_base03,     1)		// 下地
		$stage.object[0].child[00].layer = -1

		// クリックスキップ
		$make_check_box( $stage.object[0].child[10],  650, 187+80*0, 310, 0,@クリックでイベントＣＧの演出をスキップ)
		$make_check_box( $stage.object[0].child[11], 1043, 187+80*0, 311, 0,@クリックでキャラの演出をスキップ)
		$make_check_box( $stage.object[0].child[12],  650, 187+80*1, 312, 0,@クリックで背景の演出をスキップ)
		
		// スクリーンショット
		$make_check_box( $stage.object[0].child[13],  650, 397+80*0, 313, 0,@キー操作による画面キャプチャー許可)
		
		// その他
		$make_check_box( $stage.object[0].child[14],  650, 607+80*0, 314, 0,@スキップ中にＨサウンドを鳴らさない)
		$make_check_box( $stage.object[0].child[17],  650, 607+80*1, 317, 0,@Ｈシーンのフラッシュ効果を演出する)
		$make_button( $stage.object[0].child[18], __sys_config_ham , 1043 - 5, 607+80*1, 318, 1 )	// フォント
		$make_check_box( $stage.object[0].child[15],  650, 607+80*2, 315, 0,(@立ち絵のまばたき演出をしない + 1) % 2)
		$make_check_box( $stage.object[0].child[16], 1043, 607+80*2, 316, 0,@ヘルプテキスト表示)


		//other項目初期化
		$make_button( $stage.object[0].child[30], __sys_config_init, 1725, 147, 399, 1 )					// 初期化

		//全初期化
		$make_button( $stage.object[0].child[40], __sys_config_default ,206, 900, 400, 1 )					// 全初期化


	}

}



command $push_slider( property $base_x, property $base_y, property $obj:object, property $no )
{
	property $mouse_click
	property $mouse_posx
	property $mouse_posy
	property $btn_x_bak
	property $xpos
	property $res

	$btn_x_bak = $obj.child[02].x  + _SLIDER_BTN_REP

	while(1){
		$mouse_click = excall.front.objbtngroup[0].get_decided_no
		$mouse_posx = mouse.get_pos_x
		$mouse_posy = mouse.get_pos_y

		$res = math.limit( 0, $btn_x_bak + $mouse_posx - $base_x, _SLIDER_LENGTH )
		$obj.child[02].x = $res - _SLIDER_BTN_REP
		$set_color_bar( $obj.child[1], $res )

		$slider_value[$no] = $res
		$set_slider2value( $no )		//スライダーの座標用を各パラメータの値に変換
		if( $no == _SLIDER_AUTO_MOJI || $no == _SLIDER_AUTO_MIN ){
			$update_automode_time( excall.front )
		}
		elseif( $no == _SLIDER_MESSAGEWINDOW || $no == _SLIDER_MESSAGESPEED ){
			$update_message_sample( excall.front )
		}

		if( $mouse_click == -1 ){	//右クリック
			break
		}
		if( $mouse_click >= 0 ){	//ボタン放した
			break
		}
		input.next
		disp
	}
	$slider_value[$no] = $res
}


command $click_slider( property $base_x, property $base_y, property $obj:object, property $no )
{
	property $res

	if( $base_x < $obj.x + $obj.child[2].x ){	//左側
		$res = -1
	}
	else{
		$res = 1
	}
	$res = math.limit( 0, $slider_value[$no] + ($res*_SLIDER_LENGTH*20/100), _SLIDER_LENGTH )

	$obj.child[02].x = $res - _SLIDER_BTN_REP
	$set_color_bar( $obj.child[1], $res )
	$slider_value[$no] = $res
	$set_slider2value( $no )		//スライダーの座標用を各パラメータの値に変換
	if( $no == _SLIDER_AUTO_MOJI || $no == _SLIDER_AUTO_MIN ){
		$update_automode_time( excall.front )
	}
	elseif( $no == _SLIDER_MESSAGEWINDOW || $no == _SLIDER_MESSAGESPEED ){
		$update_message_sample( excall.front )
	}

	$slider_value[$no] = $res
}


/////////////////////////////////////////////////////////////////////////////
// CONFIGメニュー実行
command $config_menu_main()
{
	property $mouse_click
	property $mouse_push
	property $mouse_hit
	property $mouse_posx
	property $mouse_posy
	property $mouse_wheel
	property $value

	$config_page = @GFLAG_CONFIG_PAGE

	if( excall.check_alloc == 0 ){
		// システムコールが設定されていない
		return( 0 )
	}

	$set_value2slider_all()		//各パラメータの値をスライダーの座標用に変換

#PageChange
	@GFLAG_CONFIG_PAGE = $config_page
	$config_menu_make_grp( excall.back )
	wipe( 0, 200 )
	disp

#InitStart
	$config_menu_make_grp( excall.front )

#MainLoop
	excall.front.objbtngroup[0].start_cancel
	input.clear
	while(1){
		$mouse_click = excall.front.objbtngroup[0].get_decided_no
		$mouse_push = excall.front.objbtngroup[0].get_pushed_no
		$mouse_hit = excall.front.objbtngroup[0].get_hit_no
		$mouse_posx = mouse.get_pos_x
		$mouse_posy = mouse.get_pos_y
		$mouse_wheel = mouse.wheel

		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// メッセージウィンドウのサンプル表示
		if( $config_page == 0 ){
			if( $mouse_posy >= 288 && $mouse_posy <= 530 ){
				excall.front.object[0].child[36].disp = 1
				excall.front.object[0].child[37].disp = 1
				excall.front.object[0].child[37].tr = syscom.get_filter_color_a
				excall.front.object[0].child[38].disp = 1
			}
			else{
				excall.front.object[0].child[36].disp = 0
				excall.front.object[0].child[37].disp = 0
				excall.front.object[0].child[38].disp = 0
			}
		}


		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// ヒント表示
		switch($mouse_hit){

			case( 0 )	$help_text(<help_obj>,DL,"システム設定のタブを開きます。")	//TAB01：SYSTEM
			case( 1 )	$help_text(<help_obj>,DL,"サウンド設定のタブを開きます。")		//TAB02：SOUND
			case( 2 )	$help_text(<help_obj>,DL,"その他設定のタブを開きます。")	//TAB03：HSCENE
			case( 999 )	$help_text(<help_obj>,DL,"ひとつ前の画面に戻ります。")	// BACK


			case( 10 )	$help_text(<help_obj>,DL,"全画面表示（フルスクリーン）に切り替えます。")	
			case( 11 )	$help_text(<help_obj>,DL,"ウィンドウモードに切り替えます。")		//ウィンドウモード
			case( 12 )	$help_text(<help_obj>,DL,"解像度など、画面に関する詳細設定です。")		// システムボタン：詳細
			case( 13 )	$help_text(<help_obj>,DL,"ウィンドウモードの大きさを初期値にリセットします。#D意図せずウィンドウを拡縮してしまい、画像がボヤけてしまった場合などにお試しください。")		// ウィンドウリセット

			case( 20 )	$help_text(<help_obj>,DL,"テキストを瞬間表示にします。")				// ノーウェイト
			case( 21 )	$help_text(<help_obj>,DL,"読んでないテキストもスキップできるようになります。")			// 既読スキップ
			case( 22 )	$help_text(<help_obj>,DL,"テキストの表示スピードの設定です。")			// テキストスピード
			case( 29 )	$help_text(<help_obj>,DL,"設定をリセットします。")			// 初期値／テキストスピード
			case( 30 )	$help_text(<help_obj>,DL,"メッセージウィンドウの透過度の設定です。")			// テキストスピード
			case( 39 )	$help_text(<help_obj>,DL,"設定をリセットします。")		// 初期値／ウィンドウ濃さ
			case( 40 )	$help_text(<help_obj>,DL,"オートモードの速度の設定です。")		// オートモード

//			case( 42 )		// オートモード

			case( 49 )	$help_text(<help_obj>,DL,"設定をリセットします。")		// 初期値／オードモード
			case( 60 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")	// ダイアログ：クイックセーブ
			case( 61 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")	// ダイアログ：クイックロード
			case( 62 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")	// ダイアログ：上書き
			case( 63 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")		// ダイアログ：ロード
			case( 64 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")		// ダイアログ：履歴から再開する
			case( 65 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")		// ダイアログ：セーブデータ削除
			case( 66 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")		// ダイアログ：タイトルに戻る／回想に戻る
			case( 67 )	$help_text(<help_obj>,UR,"確認ウィンドウを表示します。")		// ダイアログ：ゲームを終了する
			
			case( 69 )	$help_text(<help_obj>,DL,"確認ウィンドウの項目をリセットします。")	

			//sound

			case( 201 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：マスター
			case( 202 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：ＢＧＭ
			case( 203 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：音声
			case( 204 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：効果音
			case( 205 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：システム音
			case( 206 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：ＢＧＶ
			case( 207 )	$help_text(<help_obj>,DR,"チェックを外すとミュートになります。")	// サウンドチェック：ムービー

			case( 208 )	$help_text(<help_obj>,DR,"音声再生時にBGMの音量を自動で下げる機能をＯＮにします。")	// サウンドチェック：音声再生時にBGMの音量を自動で下げる
			case( 209 )	$help_text(<help_obj>,UR,"音声を再生中に次の文章に進んでも再生が続くようになります。")	// サウンドチェック：音声の再生中に次の‥
			case( 210 )	$help_text(<help_obj>,UR,"サウンド再生時に雑音が入る場合はチェックを入れると#D動作が改善される場合があります。")	// サウンドチェック：サウンドの再生時に‥
			case( 211 )	$help_text(<help_obj>,UR,"その他サウンド項目をリセットします。")	

			case( 230 )	$help_text(<help_obj>,DR,"マスターボリュームの設定です。")	// スライダーバー：マスターボリューム
			case( 232 )	$help_text(<help_obj>,DR,"ＢＧＭの音量の設定です。")	// スライダーバー：ＢＧＭ
			case( 234 )	$help_text(<help_obj>,DR,"音声音の量の設定です。")	// スライダーバー：音声
			case( 236 )	$help_text(<help_obj>,DR,"効果音の音量の設定です。")	// スライダーバー：効果音
			case( 238 )	$help_text(<help_obj>,DR,"システム音の音量の設定です。")	// スライダーバー：システム音
			case( 240 )	$help_text(<help_obj>,UR,"バックグラウンドボイス(BGV)＆サウンドの音量の設定です。")	// スライダーバー：ＢＧＶ
			case( 242 )	$help_text(<help_obj>,UR,"ムービーの音量の設定です。")	// スライダーバー：ムービー
			case( 245 )	$help_text(<help_obj>,DL,"キャラごとの音声をＯＮ／ＯＦＦできます。")	// 個別音声
			case( 251 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化01
			case( 252 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化02
			case( 253 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化03
			case( 254 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化04
			case( 255 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化05
			case( 256 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化06
			case( 257 )	$help_text(<help_obj>,DL,"設定をリセットします。")	// 初期化07
			case( 258 )	$help_text(<help_obj>,DL,"バックグラウンドボイス＆サウンドの個別設定です。")	// 個別音声


			//スライダー

			case( 23 )	$help_text(<help_obj>,DL,"テキストの表示スピードの設定です。")		//メッセージスピード
			case( 31 )	$help_text(<help_obj>,DL,"メッセージウィンドウの透過度の設定です。")	//メッセージ透過度
			case( 41 )	$help_text(<help_obj>,DL,"オートモードの速度の設定です。")	//オートモード文字スピード
//			case( 33 )		//オートmin??

			case( 231 )	$help_text(<help_obj>,DR,"マスターボリュームの設定です。")	// スライダーバー：マスターボリューム
			case( 233 )	$help_text(<help_obj>,DR,"ＢＧＭの音量の設定です。")	// スライダーバー：ＢＧＭ
			case( 235 )	$help_text(<help_obj>,DR,"音声音の量の設定です。")	// スライダーバー：音声
			case( 237 )	$help_text(<help_obj>,DR,"効果音の音量の設定です。")	// スライダーバー：効果音
			case( 239 )	$help_text(<help_obj>,DR,"システム音の音量の設定です。")	// スライダーバー：システム音
			case( 241 )	$help_text(<help_obj>,UR,"バックグラウンドボイス(BGV)＆サウンドの音量の設定です。")	// スライダーバー：ＢＧＶ
			case( 243 )	$help_text(<help_obj>,UR,"ムービーの音量の設定です。")	// スライダーバー：ムービー
			
			//CUSTOM
			case( 310 )	$help_text(<help_obj>,DR,"クリックでイベントＣＧの表示や演出をスキップできるようになります。")	// 
			case( 311 )	$help_text(<help_obj>,DR,"クリックでキャラ（立ち絵）の表示や演出をスキップできるようになります。")	// 
			case( 312 )	$help_text(<help_obj>,DR,"クリックで背景の表示や演出をスキップできるようになります。")		// 
			case( 313 )	$help_text(<help_obj>,DR,"特定のキー操作によるスクリーンショットを許可します。#Dスクリーンショットはsavedataフォルダにpngで保存されます。")		// 

			case( 314 )	$help_text(<help_obj>,DR,"CTRLキーによるスキップ中に、バックグラウンドボイス＆サウンドを再生しなくなります。スキップ時のスピードが高速化します。")		// 
			case( 315 )	$help_text(<help_obj>,DR,"キャラの立ち絵・イベントＣＧのまばたき演出を許可します。")		// 
			case( 316 )	$help_text(<help_obj>,DR,"ヒント（この枠の文章）を表示します。")		// 
			case( 317 )	$help_text(<help_obj>,DR,"Ｈシーン中の、射精時などのフラッシュ効果を許可します。")		// 
			case( 318 )	$help_text(<help_obj>,DR,"フォントの変更などの詳細設定です。#Dプロポーショナルフォントに設定すると表示が乱れる場合があります。")		// 

			case( 399 )	$help_text(<help_obj>,DR,"OTHERS項目のすべての設定をリセットします。#D（※フォントの設定をのぞく）")		// 初期化

			case( 400 )	$help_text(<help_obj>,DR,"画面モード以外のすべての設定をリセットします。")	// 全初期化


			default <help_obj>.disp = 0

		}

		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// スライダー
		switch( $mouse_push ){
			case( 23 )
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[23], _SLIDER_MESSAGESPEED )
				//se.play(@ＳＥ決定)
				goto #MainLoop

			case( 31 )
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[31], _SLIDER_MESSAGEWINDOW )
				//se.play(@ＳＥ決定)
				goto #MainLoop

			case( 41 )
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[40], _SLIDER_AUTO_MOJI )
				//se.play(@ＳＥ決定)
				goto #MainLoop

//			case( 33 )
//				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[31], _SLIDER_AUTO_MIN )
//				se.play(@ＳＥ決定)
//				goto #MainLoop

			case( 231 )	// スライダーバー：マスターボリューム
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[30], _SLIDER_SOUND_VOL01 )
				//se.play(@ＳＥ決定)
				goto #MainLoop
			case( 233 )	// スライダーバー：ＢＧＭ
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[31], _SLIDER_SOUND_VOL02 )
				//se.play(@ＳＥ決定)
				goto #MainLoop
			case( 235 )	// スライダーバー：音声
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[32], _SLIDER_SOUND_VOL03 )
				//se.play(@ＳＥ決定)
				@systemvoice_volume_chr_all
				goto #MainLoop
			case( 237 )	// スライダーバー：効果音
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[33], _SLIDER_SOUND_VOL04 )
				@se_bikkuri
				//se.play(@ＳＥ決定)
				goto #MainLoop
			case( 239 )	// スライダーバー：システム音
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[34], _SLIDER_SOUND_VOL05 )
				se.play(@ＳＥ決定)
				goto #MainLoop
			case( 241 )	// スライダーバー：ＢＧＶ
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[35], _SLIDER_SOUND_VOL06 )
				//se.play(@ＳＥ決定)
				goto #MainLoop
			case( 243 )	// スライダーバー：ムービー
				$push_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[36], _SLIDER_SOUND_VOL07 )
				//se.play(@ＳＥ決定)
				goto #MainLoop
		}

		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// クリック

		if ($mouse_wheel > 0){
			se.play(@ＳＥ項目変更)
			$config_page = ($config_page + 1) % 3
			goto #PageChange
		}
		if ($mouse_wheel < 0){
			se.play(@ＳＥ項目変更)
			$config_page = $config_page - 1
			if ($config_page < 0) {$config_page = 2}
			goto #PageChange
		}


		switch($mouse_click){
			case( -2 )	// 選択無し
				//

			case( -1 )	// キャンセル
				se.play(@ＳＥキャンセル)
				break

			case( 0 )		//TAB01：SYSTEM
				se.play(@ＳＥ項目変更)
				$config_page = 0
				goto #PageChange

			case( 1 )		//TAB02：SOUND
				se.play(@ＳＥ項目変更)
				$config_page = 1
				goto #PageChange

			case( 2 )		//TAB03：HSCENE
				se.play(@ＳＥ項目変更)
				$config_page = 2
				goto #PageChange

			case( 999 )		// BACK
				break

			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// SYSTEM
			case( 10 )		//フルスクリーン
				se.play(@ＳＥチェック)
				syscom.set_window_mode(1)
				goto #InitStart

			case( 11 )		//ウィンドウモード
				se.play(@ＳＥチェック)
				syscom.set_window_mode(0)
				goto #InitStart

			case( 12 )		// システムボタン：詳細
				se.play(@ＳＥ決定)
				syscom.call_config_menu
				goto #InitStart

			case( 13 )		//ウィンドウリセット
				se.play(@ＳＥ決定)
				@INIT_WINDOW_MODE
				goto #InitStart

			case( 20 )		// ノーウェイト
				se.play(@ＳＥチェック)
				$value = syscom.get_message_nowait ^ 1
				syscom.set_message_nowait( $value )
				goto #InitStart

			case( 21 )		// 既読スキップ
				se.play(@ＳＥチェック)
				$value = syscom.get_skip_unread_message_onoff ^ 1
				syscom.set_skip_unread_message_onoff( $value ) 
				goto #InitStart

			case( 22 )		// テキストスピード
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[23], _SLIDER_MESSAGESPEED )
				goto #MainLoop

			case( 29 )		// 初期値／テキストスピード
				se.play(@ＳＥ決定)
				@INIT_TEXT_SPEED				
				$set_value2slider( _SLIDER_MESSAGESPEED )
				goto #InitStart

			case( 30 )		// テキストスピード
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[31], _SLIDER_MESSAGEWINDOW )
				goto #MainLoop

			case( 39 )		// 初期値／ウィンドウ濃さ
				se.play(@ＳＥ決定)
				@INIT_MW_SHADING				
				$set_value2slider( _SLIDER_MESSAGEWINDOW )
				goto #InitStart

			case( 40 )		// オートモード
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[40], _SLIDER_AUTO_MOJI )
				goto #MainLoop

//			case( 42 )		// オートモード
//				se.play(@ＳＥ決定)
//				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[31], _SLIDER_AUTO_MIN )
//				goto #MainLoop

			case( 49 )		// 初期値／オードモード
				se.play(@ＳＥ決定)
				@INIT_AUTOMODE				
				$set_value2slider( _SLIDER_AUTO_MOJI )
				$set_value2slider( _SLIDER_AUTO_MIN )
				goto #InitStart

			case( 60 )// ダイアログ：クイックセーブ
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_QSAVE ^= 1
				goto #InitStart

			case( 61 )// ダイアログ：クイックロード
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_QLOAD ^= 1
				goto #InitStart

			case( 62 )// ダイアログ：上書き
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_SAVE ^= 1
				goto #InitStart

			case( 63 )	// ダイアログ：ロード
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_LOAD ^= 1
				goto #InitStart

			case( 64 )	// ダイアログ：履歴から再開する
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_LOGJUMP ^= 1
				goto #InitStart

			case( 65 )	// ダイアログ：セーブデータ削除
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_DELETE ^= 1
				goto #InitStart

			case( 66 )	// ダイアログ：タイトルに戻る／回想に戻る
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_TITLE ^= 1
				goto #InitStart

			case( 67 )	// ダイアログ：ゲームを終了する
				se.play(@ＳＥチェック)
				@GFLAG_DIALOG_EXIT ^= 1
				goto #InitStart

			case( 69 )	// ダイアログ：初期化
				se.play(@ＳＥチェック)
				@INIT_DIALOG
				goto #InitStart

			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// SOUND
			case( 201 )	// サウンドチェック：マスター
				se.play(@ＳＥチェック)
				syscom.set_all_onoff( syscom.get_all_onoff ^ 1 )
				goto #InitStart
			case( 202 )	// サウンドチェック：ＢＧＭ
				se.play(@ＳＥチェック)
				syscom.set_bgm_onoff( syscom.get_bgm_onoff ^ 1 )
				goto #InitStart
			case( 203 )	// サウンドチェック：音声
				se.play(@ＳＥチェック)
				syscom.set_koe_onoff( syscom.get_koe_onoff ^ 1 )
				goto #InitStart
			case( 204 )	// サウンドチェック：効果音
				se.play(@ＳＥチェック)
				syscom.set_pcm_onoff( syscom.get_pcm_onoff ^ 1 )
				goto #InitStart
			case( 205 )	// サウンドチェック：システム音
				se.play(@ＳＥチェック)
				syscom.set_se_onoff( syscom.get_se_onoff  ^ 1 )
				goto #InitStart

			case( 206 )	// サウンドチェック：ＢＧＶ
				se.play(@ＳＥチェック)
				@bgv_allmute_onoff(@BGV_ALL_MUTE)
				goto #InitStart

			case( 207 )	// サウンドチェック：ムービー
				se.play(@ＳＥチェック)
				syscom.set_mov_onoff( syscom.get_mov_onoff ^ 1 )
				goto #InitStart

			case( 208 )	// サウンドチェック：音声再生時にBGMの音量を自動で下げる
				se.play(@ＳＥチェック)
				syscom.set_bgmfade_onoff( syscom.get_bgmfade_onoff ^ 1 )
				goto #InitStart
			case( 209 )	// サウンドチェック：音声の再生中に次の‥
				se.play(@ＳＥチェック)
				syscom.set_koe_dont_stop_onoff( syscom.get_koe_dont_stop_onoff ^ 1 )
				goto #InitStart
			case( 210 )	// サウンドチェック：サウンドの再生時に‥
				se.play(@ＳＥチェック)
				syscom.set_play_silent_sound_onoff( syscom.get_play_silent_sound_onoff ^ 1 )
				goto #InitStart

			case( 211 ) //その他サウンド：初期化
				se.play(@ＳＥ決定)
				@INIT_SOUND_ETC
				goto #InitStart

			case( 230 )	// スライダーバー：マスターボリューム
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[30], _SLIDER_SOUND_VOL01 )
				goto #InitStart
			case( 232 )	// スライダーバー：ＢＧＭ
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[31], _SLIDER_SOUND_VOL02 )
				goto #InitStart
			case( 234 )	// スライダーバー：音声
				//se.play(@ＳＥ決定)
				@systemvoice_volume_chr_all
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[32], _SLIDER_SOUND_VOL03 )
				goto #InitStart
			case( 236 )	// スライダーバー：効果音
				//se.play(@ＳＥ決定)
				@se_bikkuri
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[33], _SLIDER_SOUND_VOL04 )
				goto #InitStart
			case( 238 )	// スライダーバー：システム音
				se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[34], _SLIDER_SOUND_VOL05 )
				goto #InitStart
			case( 240 )	// スライダーバー：ＢＧＶ
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[35], _SLIDER_SOUND_VOL06 )
				goto #InitStart
			case( 242 )	// スライダーバー：ムービー
				//se.play(@ＳＥ決定)
				$click_slider( $mouse_posx, $mouse_posy, excall.front.object[0].child[36], _SLIDER_SOUND_VOL07 )
				goto #InitStart

			case( 245 )	// 個別音声
				se.play(@ＳＥ決定)
				$koe_kobetu_onoff( excall.front.object[1] )
				goto #InitStart

			case( 251 )	// 初期化
				se.play(@ＳＥ決定)
				@INIT_VOL01
				$set_value2slider( _SLIDER_SOUND_VOL01 )
				goto #InitStart

			case( 252 )	// 初期化
				se.play(@ＳＥ決定)
				@INIT_VOL02
				$set_value2slider( _SLIDER_SOUND_VOL02 )
				goto #InitStart

			case( 253 )	// 初期化
				se.play(@ＳＥ決定)
				@INIT_VOL03
				$set_value2slider( _SLIDER_SOUND_VOL03 )
				goto #InitStart

			case( 254 )	// 初期化
				se.play(@ＳＥ決定)
				@INIT_VOL04
				$set_value2slider( _SLIDER_SOUND_VOL04 )
				goto #InitStart

			case( 255 )	// 初期化
				se.play(@ＳＥ決定)
				@INIT_VOL05
				$set_value2slider( _SLIDER_SOUND_VOL05 )
				goto #InitStart

			case( 256 )	// 個別BGV初期化
				se.play(@ＳＥ決定)
				@INIT_VOL06
				$set_value2slider( _SLIDER_SOUND_VOL06 )
				goto #InitStart

			case( 257 )	// 初期化
				se.play(@ＳＥ決定)
				@INIT_VOL07
				$set_value2slider( _SLIDER_SOUND_VOL07 )
				goto #InitStart

//				syscom.set_bgmfade_onoff_default
//				syscom.set_koe_dont_stop_onoff_default
//				syscom.set_play_silent_sound_onoff_default

			case( 258 )	// 個別BGV別窓
				se.play(@ＳＥ決定)
				$bgv_kobetu_onoff( excall.front.object[1] )
				goto #InitStart


			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// CUSTOM
			case( 310 )		// クリックスキップ
				se.play(@ＳＥチェック)
				@クリックでイベントＣＧの演出をスキップ = (@クリックでイベントＣＧの演出をスキップ + 1) % 2
				goto #InitStart

			case( 311 )		// クリックスキップ
				se.play(@ＳＥチェック)
				@クリックでキャラの演出をスキップ = (@クリックでキャラの演出をスキップ + 1) % 2
				goto #InitStart

			case( 312 )		// クリックスキップ
				se.play(@ＳＥチェック)
				@クリックで背景の演出をスキップ = (@クリックで背景の演出をスキップ + 1) % 2
				goto #InitStart

			case( 313 )		// スクリーンショット
				se.play(@ＳＥチェック)
				@キー操作による画面キャプチャー許可 = (@キー操作による画面キャプチャー許可 + 1) % 2
				goto #InitStart

			case( 314 )		// スキップ中にBGV飛ばす
				se.play(@ＳＥチェック)
				@スキップ中にＨサウンドを鳴らさない = (@スキップ中にＨサウンドを鳴らさない + 1) % 2
				goto #InitStart

			case( 315 )		// まばたき演出
				se.play(@ＳＥチェック)
				@立ち絵のまばたき演出をしない = (@立ち絵のまばたき演出をしない + 1) % 2
				@mabataki_check
				goto #InitStart

			case( 316 )		// ヒント表示
				se.play(@ＳＥチェック)
				@ヘルプテキスト表示 = (@ヘルプテキスト表示 + 1) % 2
				goto #InitStart

			case( 317 )		// Hシーンのフラッシュ効果
				se.play(@ＳＥチェック)
				@Ｈシーンのフラッシュ効果を演出する = (@Ｈシーンのフラッシュ効果を演出する + 1) % 2
				goto #InitStart
			
			case( 318 )		// フォント変更窓
				se.play(@ＳＥチェック)
				syscom.call_config_font_menu
				goto #InitStart

			case( 399 )		// 初期化
				se.play(@ＳＥ決定)
				@INIT_OTHER_ALL
				goto #InitStart

			case( 400 )		//全初期化（ダイアログ表示）
				if( $dialog_main( excall.front, 2, excall.front.object[1], _DIALOG_DEFAULT ) ){
					$init_config					
				}

				goto #InitStart


			default
				goto #MainLoop
		}
		input.next
		disp
	}
	input.clear
	$set_slider2value_all()		//スライダーの座標用を各パラメータの値に変換

	return
}


//-------------------
//BGVの一斉ミュートセット

#INC_START

#MACRO @bgv_allmute_onoff(@switch)


		if (@switch == 0) {

			syscom.set_sound_onoff(@BGV_VOL_CH, 0)
			syscom.set_sound_onoff(@BGS_ONESHOT_VOL_CH,0)
			syscom.set_sound_onoff(@BGS_ACTION_VOL_CH,0)
			syscom.set_sound_onoff(@BGS_ENV_VOL_CH, 0)

			@BGV_ALL_MUTE = 1
	
		}elseif (@switch == 1)  {

			syscom.set_sound_onoff(@BGV_VOL_CH, ((@BGV_MUTE + 1) % 2))
			syscom.set_sound_onoff(@BGS_ONESHOT_VOL_CH,((@BGS_ONESHOT_MUTE + 1) % 2))
			syscom.set_sound_onoff(@BGS_ACTION_VOL_CH,((@BGS_ACTION_MUTE + 1) % 2))
			syscom.set_sound_onoff(@BGS_ENV_VOL_CH, ((@BGS_ENV_MUTE + 1) % 2))

			@BGV_ALL_MUTE = 0

		}else {	//0,1以外は全初期化用

			@BGV_MUTE = 0
			@BGS_ONESHOT_MUTE = 0
			@BGS_ACTION_MUTE = 0
			@BGS_ENV_MUTE = 0
			syscom.set_sound_onoff(@BGV_VOL_CH, 1)
			syscom.set_sound_onoff(@BGS_ONESHOT_VOL_CH,1)
			syscom.set_sound_onoff(@BGS_ACTION_VOL_CH,1)
			syscom.set_sound_onoff(@BGS_ENV_VOL_CH, 1)

			@BGV_ALL_MUTE = 0

		}

//-------------------
//BGVのサンプル再生

#MACRO	@BGV_SAMPLE_PLAY(@play)
			switch(@play){
				case(0)
					pcmch[25].stop
					pcmch[26].stop
					pcmch[27].stop
					pcmch[28].stop

				case(1)
					pcmch[25].play(<BGV_SAMPLE>,volume_type = 16 ,loop = 1,bgm_fade2_target = 1)
					pcmch[26].play(<BGS_ONESHOT_SAMPLE>,volume_type = 17)
					pcmch[27].play(<BGS_ACTION_SAMPLE>,volume_type = 18 ,loop = 1)
					pcmch[28].play(<BGS_ENV_SAMPLE>,volume_type = 19 ,loop = 1)
			}


#INC_END

// ----------------------------------------------------------------------------------------
// 音声の個別ＯＮ／ＯＦＦ
// ----------------------------------------------------------------------------------------
command $koe_kobetu_onoff( property $obj : object )
{
	property $loop : int
	property $value : int
	property $mouse_click : int
	property $mouse_hit : int

	excall.front.objbtngroup[1].init

	$obj.init
	$obj.disp = 1
	$obj.layer = 10000
	$obj.x = (1920-600)/2
	$obj.y = (1080-725)/2

	$obj.child.resize(12)

	$obj.child[0].create_rect(0,0,1920,1080,0,0,0,128,1,-$obj.x,-$obj.y)

	$obj.child[01].create(__sys_config_koe_base, 1,0,0)
	$obj.child[02].create(__sys_config_koe_btn , 1, 50+125*0, 50+125*0, 1 )
	$obj.child[03].create(__sys_config_koe_btn , 1, 50+125*1, 50+125*0, 2 )
	//$obj.child[04].create(__sys_config_koe_btn , 1, 50+125*2, 50+125*0, 3 )
	$obj.child[05].create(__sys_config_koe_btn , 1, 50+125*0, 50+125*1, 4 )
	$obj.child[06].create(__sys_config_koe_btn , 1, 50+125*1, 50+125*1, 5 )
	$obj.child[07].create(__sys_config_koe_btn , 1, 50+125*2, 50+125*1, 6 )
	$obj.child[08].create(__sys_config_koe_btn , 1, 50+125*3, 50+125*1, 7 )
	//$obj.child[09].create(__sys_config_koe_btn , 1, 50+125*3, 50+125*1, 8 )
	//$obj.child[10].create(__sys_config_koe_btn , 1, 50+125*0, 50+125*2, 9 )

	$obj.child[11].create(__sys_config_koe_exit, 1, 60+413  , 20+125*3 )

	for( $loop=1, $loop<10, $loop+=1 ){
		if ($obj.child[$loop + 1].exist_type == 0) {continue}
		$obj.child[$loop + 1].set_button( $loop, 1, 0, @ボタンＳＥ決定音無し)
		if( syscom.get_charakoe_onoff( $loop ) == 0 ){
			$obj.child[$loop + 1].dark = 128
		}
	}
	$obj.child[11].set_button( 99, 1, 24, @ボタンＳＥ決定音無し２ )


#KoeMainLoop
	excall.front.objbtngroup[1].start_cancel
	input.clear
	while(1){
		$mouse_click = excall.front.objbtngroup[1].get_decided_no
		$mouse_hit = excall.front.objbtngroup[1].get_hit_no

		switch($mouse_hit){
			case(1)		$help_text(<help_obj>,DR,"ヒロイン音声のＯＮ／ＯＦＦを切り替えます。")
			case(2)		$help_text(<help_obj>,DR,"ヒロイン音声のＯＮ／ＯＦＦを切り替えます。")
			case(3)		$help_text(<help_obj>,DR,"ヒロイン音声のＯＮ／ＯＦＦを切り替えます。")
			case(4)		$help_text(<help_obj>,DR,"モブ男子音声のＯＮ／ＯＦＦを切り替えます。")
			case(5)		$help_text(<help_obj>,DR,"モブ女子音声のＯＮ／ＯＦＦを切り替えます。")
			case(6)		$help_text(<help_obj>,DR,"モブ男性音声のＯＮ／ＯＦＦを切り替えます。")
			case(7)		$help_text(<help_obj>,DR,"モブ女性音声のＯＮ／ＯＦＦを切り替えます。")
			case(8)
			case(9)

			case(99)	$help_text(<help_obj>,DR,"ひとつ前の画面に戻ります。")

			default <help_obj>.disp = 0
		}

		if( $mouse_click == -2 ){
			//
		}
		elseif( $mouse_click == -1 ){
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click == 99 ){
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click > 0 ){
			se.play(@ＳＥチェック)
			$value = syscom.get_charakoe_onoff( $mouse_click ) ^ 1
			syscom.set_charakoe_onoff( $mouse_click, $value )
			$obj.child[$mouse_click + 1].dark = 0
			if( $value == 0 ){
				$obj.child[$mouse_click + 1].dark = 128
			}
			goto #KoeMainLoop
		}
		input.next
		disp
	}

	input.clear
	$obj.init

	return

}




// ----------------------------------------------------------------------------------------
// BGV個別ＯＮ／ＯＦＦ
// ----------------------------------------------------------------------------------------
command $bgv_kobetu_onoff( property $obj : object )
{
	property $loop : int
	property $value : int
	property $mouse_click : int
	property $mouse_hit : int

	excall.front.objbtngroup[1].init

	$obj.init
	$obj.disp = 1
	$obj.layer = 10000
	$obj.x = (1920-600)/2
	$obj.y = (1080-725)/2

	$obj.child.resize(15)
	$obj.child[0].create_rect(0,0,1920,1080,0,0,0,128,1,-$obj.x,-$obj.y)
	$obj.child[1].create(__sys_config_bgv_base, 1,0,0)


#BgvInitLoop

	$make_check_box( $obj.child[2], 30, 40+80*0, 1, 1,(@BGV_MUTE + 1)% 2)
	$make_check_box( $obj.child[3], 30, 40+80*1, 2, 1,(@BGS_ONESHOT_MUTE + 1) % 2)	
	$make_check_box( $obj.child[4], 30, 40+80*2, 3, 1,(@BGS_ACTION_MUTE + 1) % 2)	
	$make_check_box( $obj.child[5], 30, 40+80*3, 4, 1,(@BGS_ENV_MUTE + 1) % 2)	


	$obj.child[8].create(__sys_config_bgv_balance00, 1,  151  , 418,(@BGVボリュームバランス == 0))
	if (@BGVボリュームバランス != 0) {$obj.child[8].set_button( 90, 1, 24, @ボタンＳＥ決定音無し２ )}
	$obj.child[9].create(__sys_config_bgv_balance01, 1, 272  , 418,(@BGVボリュームバランス == 1))
	if (@BGVボリュームバランス != 1) {$obj.child[9].set_button( 91, 1, 24, @ボタンＳＥ決定音無し２ )}
	$obj.child[10].create(__sys_config_bgv_balance02, 1, 30  , 418,(@BGVボリュームバランス == 2))
	if (@BGVボリュームバランス != 2) {$obj.child[10].set_button( 92, 1, 24, @ボタンＳＥ決定音無し２ )}



	$obj.child[11].create(__sys_config_bgv_sample, 1, 426  , 40 )
	$obj.child[11].set_button( 98, 1, 24, @ボタンＳＥ決定音無し２ )

	$obj.child[12].create(__sys_config_koe_exit, 1, 60+413  , 20+125*3 )
	$obj.child[12].set_button( 99, 1, 24, @ボタンＳＥ決定音無し２ )

#BgvMainLoop

	//ミュート状態をチェック(全体設定と切り離す)

	if (@BGV_ALL_MUTE == 0){
		syscom.set_sound_onoff(@BGV_VOL_CH, 		(@BGV_MUTE + 1) % 2)
		syscom.set_sound_onoff(@BGS_ONESHOT_VOL_CH,	(@BGS_ONESHOT_MUTE+ 1) % 2)
		syscom.set_sound_onoff(@BGS_ACTION_VOL_CH,	(@BGS_ACTION_MUTE+ 1) % 2)
		syscom.set_sound_onoff(@BGS_ENV_VOL_CH, 	(@BGS_ENV_MUTE+ 1) % 2)
	}


	excall.front.objbtngroup[1].start_cancel
	input.clear
	while(1){
		$mouse_click = excall.front.objbtngroup[1].get_decided_no
		$mouse_hit = excall.front.objbtngroup[1].get_hit_no

		switch($mouse_hit){
			case(1)		$help_text(<help_obj>,DR,"喘ぎ声＆フェラ音(BGV)のＯＮ／ＯＦＦを切り替えます。")
			case(2)		$help_text(<help_obj>,DR,"挿入音など、ワンショット音のＯＮ／ＯＦＦを切り替えます。")
			case(3)		$help_text(<help_obj>,DR,"肌のぶつかる音など、アクション音のＯＮ／ＯＦＦを切り替えます。")
			case(4)		$help_text(<help_obj>,DR,"ベットがきしむ音など、環境音のＯＮ／ＯＦＦを切り替えます。")

			case(90)	$help_text(<help_obj>,DR,"喘ぎ声＆フェラ音(BGV)の音量を基準として、その他バックグラウンドサウンドの音量バランスを変更します。#D【100%】：すべて最大音量で再生#D【標準】：BGV以外をやや下げる（初期値）#D【バランス】：アクション音と環境音をより下げる")
			case(91)	$help_text(<help_obj>,DR,"喘ぎ声＆フェラ音(BGV)の音量を基準として、その他バックグラウンドサウンドの音量バランスを変更します。#D【100%】：すべて最大音量で再生#D【標準】：BGV以外をやや下げる（初期値）#D【バランス】：アクション音と環境音をより下げる")
			case(92)	$help_text(<help_obj>,DR,"喘ぎ声＆フェラ音(BGV)の音量を基準として、その他バックグラウンドサウンドの音量バランスを変更します。#D【100%】：すべて最大音量で再生#D【標準】：BGV以外をやや下げる（初期値）#D【バランス】：アクション音と環境音をより下げる")

			case(98)	$help_text(<help_obj>,DR,"サンプルを再生します。閉じると停止します。")
			case(99)	$help_text(<help_obj>,DR,"ひとつ前の画面に戻ります。")

			default <help_obj>.disp = 0
		}

		if( $mouse_click == -2 ){
			//
		}
		elseif( $mouse_click == -1 ){
			se.play(@ＳＥキャンセル)
			@BGV_SAMPLE_PLAY(0)
			break
		}
		elseif( $mouse_click == 99 ){
			se.play(@ＳＥキャンセル)
			@BGV_SAMPLE_PLAY(0)
			break
		}
		elseif( $mouse_click == 1 ){
			se.play(@ＳＥチェック)
			@BGV_MUTE = (@BGV_MUTE + 1) % 2
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 2 ){
			se.play(@ＳＥチェック)
			@BGS_ONESHOT_MUTE = (@BGS_ONESHOT_MUTE + 1) % 2
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 3 ){
			se.play(@ＳＥチェック)
			@BGS_ACTION_MUTE = (@BGS_ACTION_MUTE+ 1) % 2
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 4 ){
			se.play(@ＳＥチェック)
			@BGS_ENV_MUTE = (@BGS_ENV_MUTE+ 1) % 2
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 90) {
			se.play(@ＳＥチェック)
			@BGVボリュームバランス = 0
			@BGV_VOL_SET
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 91) {
			se.play(@ＳＥチェック)
			@BGVボリュームバランス = 1
			@BGV_VOL_SET
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 92) {
			se.play(@ＳＥチェック)
			@BGVボリュームバランス = 2
			@BGV_VOL_SET
			goto #BgvInitLoop
		}

		elseif( $mouse_click == 98) {
			@BGV_SAMPLE_PLAY(1)
			goto #BgvInitLoop
		}


		input.next
		disp
	}

	input.clear
	$obj.init

	return

}






// CONFIGメニュー
#Z00

// システムコールパラメータ準備されてる？
if( excall.check_alloc == 0 ){
	capture
	excall.alloc
}

syscom.set_hide_mwnd_onoff_flag( 1 )

$config_menu_main()

if( excall.check_alloc != 0 ){
	wipe( 0, 200 )
	excall.free
}
syscom.set_hide_mwnd_onoff_flag( 0 )

capture_free

return



///////////////////////////////////////////
//まばたき反映

#INC_START

#DEFINE		@mabataki_check
	for (L[00] = 19,L[00] <= 29,L[00]+= 1) {
				
		if (front.object[L[00]].child.get_size == 0) {continue}
		if (front.object[L[00]].child[02].get_pat_cnt >= 2) {
		
			front.object[L[00]].child[02].load_gan(_mabataki01)

			
			if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
			
				front.object[L[00]].child[02].start_gan(math.rand(1,<mabataki_max>),1,1)
			
			}else {
			
				front.object[L[00]].child[02].start_gan(0,1,1)
			
			}
			
		}
	}

	for (L[00] = 30,L[00] <= 34,L[00]+= 1) {
		if (front.object[L[00]].child.get_size == 0) {continue}
		if (front.object[L[00]].child[02].get_pat_cnt >= 2) {
		
			front.object[L[00]].child[02].load_gan(_mabataki01)
			
			if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
			
				front.object[L[00]].child[02].start_gan(math.rand(1,<mabataki_max>),1,1)
			
			}else {
			
				front.object[L[00]].child[02].start_gan(0,1,1)
			
			}
			
		}
	}

	//★イベントＣＧ用
	if (front.object[1].child.get_size == 10) {
		if (front.object[1].child[02].exist_type == 1) {
		
			if (front.object[1].child[02].get_pat_cnt >= 2) {
		
				front.object[1].child[02].load_gan(_mabataki01)
			
				if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
				
					front.object[1].child[02].start_gan(math.rand(1,<mabataki_max>),1,1)
				
				}else{
				
					front.object[1].child[02].start_gan(0,1,1)
				
				}
			
			}
		
		}
		
		if (front.object[1].child[07].exist_type == 1) {
			if (front.object[1].child[07].get_pat_cnt >= 2) {
		
				front.object[1].child[07].load_gan(_mabataki01)
			
				if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
				
					front.object[1].child[07].start_gan(math.rand(1,<mabataki_max>),1,1)
				
				}else{
				
					front.object[1].child[07].start_gan(0,1,1)
				
				}
			
			}
		
		}
	}


#INC_END


//////////////////////////////////////////////////////////////////////
////全項目初期化

#INC_START

	#DEFINE	@INIT_WINDOW_MODE
				if (syscom.check_window_mode_size_enable(100) == 1) {syscom.set_window_mode_size_default}
				elseif (syscom.check_window_mode_size_enable(75) == 1) {syscom.set_window_mode_size_default}
				elseif (syscom.check_window_mode_size_enable(50) == 1) {syscom.set_window_mode_size_default}

	#DEFINE	@INIT_TEXT_SPEED
				syscom.set_message_speed_default
				syscom.set_message_nowait_default
				syscom.set_skip_unread_message_onoff_default

	#DEFINE	@INIT_MW_SHADING
				syscom.set_filter_color_a_default

	#DEFINE	@INIT_AUTOMODE
				syscom.set_auto_mode_moji_wait_default
				syscom.set_auto_mode_min_wait_default

	#DEFINE	@INIT_DIALOG
				@GFLAG_DIALOG_QSAVE = 0
				@GFLAG_DIALOG_QLOAD = 0
				@GFLAG_DIALOG_SAVE = 0
				@GFLAG_DIALOG_LOAD = 0
				@GFLAG_DIALOG_LOGJUMP = 0
				@GFLAG_DIALOG_DELETE = 0
				@GFLAG_DIALOG_TITLE = 0
				@GFLAG_DIALOG_EXIT = 0
				@GFLAG_DIALOG_DEFAULT = 0

	#DEFINE	@INIT_SOUND_ETC
				syscom.set_bgmfade_onoff(1)
				syscom.set_koe_dont_stop_onoff(0)
				syscom.set_play_silent_sound_onoff(0)

	#DEFINE	@INIT_VOL01
				syscom.set_all_onoff_default
				syscom.set_all_volume_default

	#DEFINE	@INIT_VOL02
				syscom.set_bgm_onoff_default
				syscom.set_bgm_volume_default

	#DEFINE	@INIT_VOL03
				syscom.set_koe_onoff_default
				syscom.set_koe_volume_default
				syscom.set_charakoe_onoff( 0, 1 )//個別音声初期化
				syscom.set_charakoe_onoff( 1, 1 )//
				syscom.set_charakoe_onoff( 2, 1 )//
				syscom.set_charakoe_onoff( 3, 1 )//
				syscom.set_charakoe_onoff( 4, 1 )//
				syscom.set_charakoe_onoff( 5, 1 )//
				syscom.set_charakoe_onoff( 6, 1 )//
				syscom.set_charakoe_onoff( 7, 1 )//
				syscom.set_charakoe_onoff( 8, 1 )//
				syscom.set_charakoe_onoff( 9, 1 )//
				@chr_volume_init			//キャラごとの初期ボリュームバランス変更


	#DEFINE	@INIT_VOL04
				syscom.set_pcm_onoff_default
				syscom.set_pcm_volume_default

	#DEFINE	@INIT_VOL05
				syscom.set_se_onoff_default
				syscom.set_se_volume_default

	#DEFINE	@INIT_VOL06
				@bgv_allmute_onoff(99)
				@BGVボリュームバランス = 0
				@BGV_VOL_DEFAULT		//BGVの音量をデフォルト値へ

	#DEFINE	@INIT_VOL07
				syscom.set_mov_onoff_default
				syscom.set_mov_volume_default

	#DEFINE	@INIT_OTHER_ALL
				@クリックでイベントＣＧの演出をスキップ = 0
				@クリックでキャラの演出をスキップ = 0
				@クリックで背景の演出をスキップ = 0 
				@キー操作による画面キャプチャー許可 = 0
				@スキップ中にＨサウンドを鳴らさない = 0
				@立ち絵のまばたき演出をしない = 0
				@mabataki_check
				@Ｈシーンのフラッシュ効果を演出する = 1
				@ヘルプテキスト表示 = 1

	#DEFINE @INIT_FONT
				syscom.set_font_name_default
				syscom.set_font_bold_default
				syscom.set_font_decoration_default

#INC_END

command	$init_config {	

	//@INIT_WINDOW_MODE		//ウィンドウは含めない方がいいかも？

	@INIT_TEXT_SPEED
	@INIT_MW_SHADING
	@INIT_AUTOMODE
	@INIT_DIALOG

	@INIT_VOL01
	@INIT_VOL02
	@INIT_VOL03
	@INIT_VOL04
	@INIT_VOL05
	@INIT_VOL06
	@INIT_VOL07
	@INIT_SOUND_ETC

	@INIT_OTHER_ALL
	@INIT_FONT

	if (@初回起動 == 1){	//初回起動時ではなくコンフィグ画面の場合、スライダーを反映
		$set_value2slider( _SLIDER_MESSAGESPEED )
		$set_value2slider( _SLIDER_MESSAGEWINDOW )
		$set_value2slider( _SLIDER_AUTO_MOJI )
		$set_value2slider( _SLIDER_AUTO_MIN )
		$set_value2slider( _SLIDER_SOUND_VOL01 )
		$set_value2slider( _SLIDER_SOUND_VOL02 )
		$set_value2slider( _SLIDER_SOUND_VOL03 )
		$set_value2slider( _SLIDER_SOUND_VOL04 )
		$set_value2slider( _SLIDER_SOUND_VOL05 )
		$set_value2slider( _SLIDER_SOUND_VOL06 )
		$set_value2slider( _SLIDER_SOUND_VOL07 )
	}
}





