// #SCENE_SCRIPT_ID = 0152 （スクリプトＩＤ：この行は削除したり、変更したりしないで下さい）

#INC_START
	#property	$backlog_ready     : int
#INC_END


command $quick_menu_make_btn_sub( property $obj:object, property $file:str, property $xpos, property $ypos, property $btn_no, property $flag )
{
	$obj.create( $file, 1, $xpos, $ypos )
	$obj.set_button( $btn_no, 0, 24, @ボタンＳＥ決定音無し )
	if( $flag == 0 ){
		$obj.set_button_state_disable
	}
}


/////////////////////////////////////////////////////////////////////////////
// 右クリックメニュー読み込み＆表示
command $quick_menu_make_grp( property $anime_time )
{
	property $loop
	property $cont

	excall.back.objbtngroup[0].init

	// ＣＧ読み込み
	excall.back.object[0].init
	excall.back.object[0].disp = 1
	excall.back.object[0].child.resize( 20 )

	excall.back.object[0].child[00].create(__sys_quick_00base,    1)		// 下地

	$quick_menu_make_btn_sub( excall.back.object[0].child[01], __sys_quick_01save,    525+    (210*0),  250+210*0,  0, syscom.check_save_enable)			// ボタン：SAVE
	$quick_menu_make_btn_sub( excall.back.object[0].child[02], __sys_quick_02load,    525+    (210*1),  250+210*0,  1, syscom.check_load_enable)			// ボタン：LOAD
	$quick_menu_make_btn_sub( excall.back.object[0].child[03], __sys_quick_04config,  525+    (210*2),  250+210*0,  2, 1)									// ボタン：CONFIG
	$quick_menu_make_btn_sub( excall.back.object[0].child[04], __sys_quick_05hide,    525+    (210*3),  250+210*0,  3, syscom.check_hide_mwnd_enable)		// ボタン：HIDE
	$quick_menu_make_btn_sub( excall.back.object[0].child[05], __sys_quick_03backlog, 525+100+(210*0),  250+210*1,  4, syscom.check_msg_back_enable)		// ボタン：BACKLOG
	$quick_menu_make_btn_sub( excall.back.object[0].child[06], __sys_quick_11return,  525+100+(210*1),  250+210*1,  5, syscom.check_return_to_sel_enable)	// ボタン：前の選択肢
	$quick_menu_make_btn_sub( excall.back.object[0].child[07], __sys_quick_06auto,    525+100+(210*2),  250+210*1,  6, syscom.check_auto_mode_enable)		// ボタン：AUTO
	$quick_menu_make_btn_sub( excall.back.object[0].child[08], __sys_quick_07skip,    525+100+(210*3),  250+210*1,  7, syscom.check_read_skip_enable)		// ボタン：SKIP
	$quick_menu_make_btn_sub( excall.back.object[0].child[09], __sys_quick_08title,   525+200+(210*0),  250+210*2,  8, syscom.check_return_to_menu_enable)	// ボタン：TITLE
	$quick_menu_make_btn_sub( excall.back.object[0].child[10], __sys_quick_09exit,    525+200+(210*1),  250+210*2,  9, syscom.check_end_game_enable)		// ボタン：EXIT
	$quick_menu_make_btn_sub( excall.back.object[0].child[11], __sys_quick_10back,    525+200+(210*2),  250+210*2, 10, 1)									// ボタン：BACK
	$quick_menu_make_btn_sub( excall.back.object[0].child[12], __sys_quick_12scenereturn,    525+200+(210*-1),  250+210*2, 11, @回想モード中 != 0)									// ボタン：回想モードリターン
	

	$quick_menu_make_checkbox( excall.back )

	wipe(0,$anime_time)
}

command $quick_menu_make_checkbox( property $stage : stage )
{
	if( syscom.get_auto_mode_onoff_flag ){	//AUTOMODE中
		$stage.object[0].child[07].patno = 10
	}
	else{
		$stage.object[0].child[07].patno = 0
	}
	if( syscom.get_read_skip_onoff_flag ){	//SKIPMODE中
		$stage.object[0].child[08].patno = 10
	}
	else{
		$stage.object[0].child[08].patno = 0
	}


}


/////////////////////////////////////////////////////////////////////////////
// 右クリックメニュー実行

#INC_START

	#DEFINE		<help_obj>	excall.front.object[<help_txt_objno>]

#INC_END

command $quick_menu_main()
{
	property $mouse_click
	property $mouse_hit
	

	if( excall.check_alloc == 0 ){
		// システムコールが設定されていない
		return( 0 )
	}

	
#InitStart
	syscom.set_auto_mode_onoff_flag( 0 ) 	//突入時にオートモードを切る
	$quick_menu_make_grp( 200 )
	disp

#MainLoop
	excall.front.objbtngroup[0].start_cancel
	input.clear
	while(1){
		$mouse_click = excall.front.objbtngroup[0].get_decided_no
		$mouse_hit = excall.front.objbtngroup[0].get_hit_no

		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//説明

		if (excall.front.object[0].child[01].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"セーブ画面を開きます。") //save
		}
		elseif (excall.front.object[0].child[02].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"ロード画面を開きます。") //load
		}
		elseif (excall.front.object[0].child[03].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"コンフィグを開きます。") //config
		}
		elseif (excall.front.object[0].child[04].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"メッセージウィンドウを一時的に消去します。#D（スペースキーと同じ動作）") //ウィンドウを閉じる
		}
		elseif (excall.front.object[0].child[05].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"メッセージバックログ（読み返し機能）を表示します。") //BACKLOG
		}
		elseif (excall.front.object[0].child[06].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"前の選択肢に戻ります。") //前の選択肢に戻る
		}
		elseif (excall.front.object[0].child[07].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"オートモードを開始します。") //オートモード開始
		}
		elseif (excall.front.object[0].child[08].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"文章スキップを開始します。") //スキップを開始
		}
		elseif (excall.front.object[0].child[09].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"タイトルに戻ります。") //タイトルに戻る
		}
		elseif (excall.front.object[0].child[10].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"ゲームを終了しWindowsに戻ります。") //ゲームの終了
		}
		elseif (excall.front.object[0].child[11].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"前の画面に戻ります。") 	//exit
		}
		elseif (excall.front.object[0].child[12].get_button_hit_state == 1){
			$help_text(<help_obj>,DR,"シーン回想画面にもどります。#D※シーン回想中のみ有効") 	//return
		}
		else{
			<help_obj>.disp = 0
		}




		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// 共通部分
		if( $mouse_click == -2 ){	// 選択無し
			// 
		}
		elseif( $mouse_click == -1 ){	// キャンセル
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click == 0 ){		//ＳＡＶＥ
			//$SaveMenuMain()
			se.play(@ＳＥ決定)
			syscom.call_save_menu
			break
		}
		elseif( $mouse_click == 1 ){		//ＬＯＡＤ
			//$LoadMenuMain()
			se.play(@ＳＥ決定)
			syscom.call_load_menu
			break
		}
		elseif( $mouse_click == 2 ){		//ＣＯＮＦＩＧ
			se.play(@ＳＥ決定)
			//syscom.call_config_menu
			$config_menu_main()
			goto #InitStart
		}
		elseif( $mouse_click == 3 ){		//ウィンドウを閉じる
			se.play(@ＳＥ決定)
			script.set_mwnd_disp_off_flag(1)
			excall.front.object[0].disp = 0
			input.clear
			while(1){
				if( input.decide.on_down_up == 1 ){break}
				if( input.cancel.on_down_up == 1 ){break}
				input.next
				disp
			}
			script.set_mwnd_disp_off_flag(0)
			break
		}
		elseif( $mouse_click == 4 ){		//BACKLOG
			se.play(@ＳＥ決定)
			$backlog_ready = 1
			break
		}
		elseif( $mouse_click == 5 ){		//前の選択肢に戻る
			se.play(@ＳＥ決定)
			if( $dialog_main( excall.front, 2, excall.front.object[1], _DIALOG_RETURN ) ){
				syscom.return_to_sel( 0, 0, 1 )
				break
			}
			goto #MainLoop
		}
		elseif( $mouse_click == 6 ){		//オートモード開始
			se.play(@ＳＥ決定)
			if( syscom.get_auto_mode_onoff_flag == 0 ){
				syscom.set_auto_mode_onoff_flag( 1 ) 
			}
			else{
				syscom.set_auto_mode_onoff_flag( 0 ) 
			}
			$quick_menu_make_checkbox( excall.front )
			goto #MainLoop
		}
		elseif( $mouse_click == 7 ){		//スキップを開始
			se.play(@ＳＥ決定)
			syscom.set_read_skip_onoff_flag( 1 )
			break
		}
		elseif( $mouse_click == 8 ){		//タイトルに戻る
			se.play(@ＳＥ決定)
			if( $dialog_main( excall.front, 2, excall.front.object[1], _DIALOG_TITLE ) ){
				if(@回想モード中==0){
					syscom.end_save( 0, 0 )
				}
				syscom.return_to_menu( 0, 0, 1 )
			}
			goto #MainLoop
		}
		elseif( $mouse_click == 9 ){		//ゲームの終了
			se.play(@ＳＥ決定)
			if( $dialog_main( excall.front, 2, excall.front.object[1], _DIALOG_EXIT ) ){
				//if(@回想モード中==0){
					se.stop
					@hbg_stop_all

					@systemvoice_gameend
					@bgmstop(1000)
					@all_black(1000)

					if (koe_check == 1) {
					
						koe_wait_key
					
					}            
					koe_stop

					syscom.end_game( 0, 0, 0 )
				//}

			}

			goto #MainLoop
		}
		elseif( $mouse_click == 10 ){		//BACK
			se.play(@ＳＥ決定)
			break
		}

		elseif( $mouse_click == 11 ){		//シーン回想にもどる
			se.play(@ＳＥ決定)
			@回想モードからリターン = 1
			syscom.return_to_menu( 0, 0, 0 )

			goto #MainLoop
		}
		input.next
		disp
	}
	input.clear
	return
}




/////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
// 右クリックメニュー
#Z00

$backlog_ready = 0

// システムコールパラメータ準備されてる？
if( excall.check_alloc == 0 ){
	capture
	excall.alloc
}

syscom.set_hide_mwnd_onoff_flag( 1 )

$quick_menu_main()

if( excall.check_alloc != 0 ){
	wipe( 0, 200 )
	excall.free
}
syscom.set_hide_mwnd_onoff_flag( 0 )

capture_free

if( $backlog_ready ){
	syscom.open_msg_back
}

return

