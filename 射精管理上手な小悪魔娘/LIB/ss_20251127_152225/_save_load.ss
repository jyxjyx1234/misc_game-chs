
#INC_START
#DEFINE		_PAGE_COUNT			10		//ページ数
#DEFINE		_DATA_COUNT			6		//１ページのデータ数

#DEFINE		_OBJ_COMFIRM		98		//確認ウィンドウのOBJ NO
#DEFINE		_QSAVE_OBJ_START	97		//クイックセーブしましたオブジェクトNO

#DEFINE		_TYPE_SAVE				0
#DEFINE		_TYPE_LOAD				1


#INC_END


/////////////////////////////////////////////////////////////////////////////
// ベースとページ読み込み＆表示
command $make_slmenu_base_cg( property $type_sl, property $page )
{
	property $loop
	property $base_name : str
	property $page_name : str
	property $page_new_name : str
	property $exit_name : str
	property $left_name : str
	property $right_name : str
	property $xpos
	property $ypos

	// ＣＧ読み込み
	if( $type_sl == _TYPE_SAVE ){	//セーブ
		$base_name = "__sys_save_base"
		$page_name = "__sys_save_page"
		$page_new_name = "__sys_save_page_new"
		$exit_name = "__sys_save_exit"
		$left_name = "__sys_save_rev"
		$right_name = "__sys_save_next"
	}
	else{	//ロード
		$base_name = "__sys_load_base"
		$page_name = "__sys_load_page"
		$page_new_name = "__sys_load_page_new"
		$exit_name = "__sys_load_exit"
		$left_name = "__sys_load_rev"
		$right_name = "__sys_load_next"
	}
	excall.back.object[99].create($base_name,1,0,0)
	excall.back.object[99].layer = -100

	$ypos = 970

	for( $loop=0, $loop<_PAGE_COUNT, $loop+=1 ){
		$xpos = 589 + $loop * 68
		excall.back.object[$loop].create( $page_name, 1, $xpos, $ypos )
		excall.back.object[$loop].child.resize(2)
		excall.back.object[$loop].set_button($loop,0,24,@ボタンＳＥ決定音無し)
		excall.back.object[$loop].child[0].create( $page_name, 1, 0, 0, $loop+10 )
		excall.back.object[$loop].child[1].create( $page_new_name, 0, 0, -20 )
		excall.back.object[$loop].child[0].layer = 1
	}
	excall.back.object[$page].set_button_state_select	//今のページ

	// 左右ボタン＜＞
	excall.back.object[80].create($left_name ,   1,  120, 420)
	excall.back.object[81].create($right_name,   1, 1702, 420)
	excall.back.object[80].set_button(900,0,24,@ボタンＳＥ決定音無し２)
	excall.back.object[81].set_button(901,0,24,@ボタンＳＥ決定音無し２)

	//キャンセル／ＥＸＩＴ
	excall.back.object[90].create( $exit_name, 1, 1790, 955 )
	excall.back.object[90].set_button(999,0,24,@ボタンＳＥ決定音無し２)

	$disp_new_mark_page( excall.back )

	excall.back.object[90].set_button(999,0,24,@ボタンＳＥ決定音無し２)
}

command $disp_new_mark_page( property $Stage:stage )
{
	property $loop

	for( $loop=0, $loop<_PAGE_COUNT, $loop+=1 ){
		$stage.object[$loop].child[1].disp = 0
	}
	$loop = syscom.get_quick_save_new_no //(0,_PAGE_COUNT*_DATA_COUNT)
	

	//excall.back.object[200].create_string(math.tostr($loop),1,0,0)
	//excall.back.object[200].set_string_param(100,0,0,0,1,0,0)

	if( $loop >= 0 ){
		$stage.object[$loop/_DATA_COUNT].child[1].disp = 1
	}
}


/////////////////////////////////////////////////////////////////////////////
// 読み込み＆表示
command $make_slmenu_data( property $type_sl, property $Stage:stage, property $Page )
{
	property $loop
	property $new_no
	property $base_name : str

	$new_no = syscom.get_quick_save_new_no //(0,_PAGE_COUNT*_DATA_COUNT)
	for( $loop=0, $loop<_DATA_COUNT, $loop+=1){

		if ($page == 0 && $loop <=2){		//クイックセーブ
			$base_name = "__sys_quicksave_data"
		}
		elseif( $type_sl == _TYPE_SAVE ){	//セーブ
			$base_name = "__sys_save_data"
		}
		else{	//ロード
			$base_name = "__sys_load_data"
		}

		$stage.object[20+$loop].create( $base_name, 1, 261+($loop%(_DATA_COUNT/2))*472, 156+($loop/(_DATA_COUNT/2))*398 )
		$stage.object[20+$loop].set_button(20+$loop,0,24,@ボタンＳＥ決定音無し)
		$mase_sldata_parts( $type_sl, $stage.object[20+$loop], $loop+$page*_DATA_COUNT, $new_no, 30+$loop, 40+$loop )
	}
}

command $mase_sldata_parts( property $type_sl, property $obj:object, property $save_no, property $new_no, property $del_btn, property $lock_btn )
{
	property $xpos
	property $ypos
	property $mes : str
	property $step : int
	property $del_name : str
	property $new_name : str
	property $lock_name : str
	property $thum_name : str

	if( $type_sl == _TYPE_SAVE ){	//セーブ
		$del_name = "__sys_save_delete"
		$new_name = "__sys_save_new"
		$lock_name = "__sys_save_lock"
		$thum_name = "__sys_save_nodata"
	}
	else{
		$del_name = "__sys_load_delete"
		$new_name = "__sys_load_new"
		$lock_name = "__sys_load_lock"
		$thum_name = "__sys_load_nodata"
	}

	$obj.child.resize(17)
	if( syscom.get_quick_save_exist($save_no) == 0 ){	//データ存在しない
		$obj.child[00].create($thum_name,1,22,32)
		return
	}

	//$obj.child[00].create_save_thumb($save_no,1,22,32)
	$obj.child[00].create_save_thumb($save_no+100,1,22,32)	//quicksave参照

	$xpos = 22
	$ypos = 266 
	$step = 16

	//0123/56/89 12:45:78
	$obj.child[01].create_number("__sys_saveload_time", 1, $xpos, $ypos )	//年
	$obj.child[01].set_number(syscom.get_quick_save_year($save_no))
	$obj.child[01].set_number_param(4,1,0,1,1,$step)

	$obj.child[02].create("__sys_saveload_time", 1, $xpos+$step*4, $ypos, 10 )	//／

	$obj.child[03].create_number("__sys_saveload_time",1,$xpos+$step*5,$ypos)	//月
	$obj.child[03].set_number(syscom.get_quick_save_month($save_no))
	$obj.child[03].set_number_param(2,1,0,1,1,$step)

	$obj.child[04].create("__sys_saveload_time",1,$xpos+$step*7,$ypos,10)	//／

	$obj.child[05].create_number("__sys_saveload_time",1,$xpos+$step*8,$ypos)	//日
	$obj.child[05].set_number(syscom.get_quick_save_day($save_no))
	$obj.child[05].set_number_param(2,1,0,1,1,$step)

	$obj.child[06].create_number("__sys_saveload_time",1,$xpos+$step*11,$ypos)	//時
	$obj.child[06].set_number(syscom.get_quick_save_hour($save_no))
	$obj.child[06].set_number_param(2,1,0,1,1,$step)

	$obj.child[07].create("__sys_saveload_time",1,$xpos+$step*13,$ypos,11)	//：

	$obj.child[08].create_number("__sys_saveload_time",1,$xpos+$step*14,$ypos)	//分
	$obj.child[08].set_number(syscom.get_quick_save_minute($save_no))
	$obj.child[08].set_number_param(2,1,0,1,1,$step)

	$obj.child[09].create("__sys_saveload_time",1,$xpos+$step*16,$ypos,11)	//：

	$obj.child[10].create_number("__sys_saveload_time",1,$xpos+$step*17,$ypos)	//秒
	$obj.child[10].set_number(syscom.get_quick_save_second($save_no))
	$obj.child[10].set_number_param(2,1,0,1,1,$step)

	$ypos += 40

	$mes = syscom.get_quick_save_message($save_no)            // セーブデータのメッセージを取得する
	$mes = $mes.left_len(20*2*3)
	$obj.child[12].create_string($mes,1,$xpos,$ypos)	//メッセージ
	$obj.child[12].set_string_param( 20, 0, 0, 20, 0, 1, 0 )

	if( ($save_no) == $new_no ){
		$obj.child[14].create( $new_name, 1, 22, 8 )		//NEW
	}

	$obj.child[15].create( $del_name , 1, 350, 8 )	//DELETE
	$obj.child[15].set_button( $del_btn , 0, 24, @ボタンＳＥ決定音無し )

	L[00] = ($save_no >= 0) && ($save_no <= 2)

	if (L[00] != 1) {	//0～2はロックできないようにする

		$obj.child[16].create( $lock_name, 1, 262,  8 )	//LOCK
		$obj.child[16].set_button( $lock_btn, 0, 24, @ボタンＳＥ決定音無し２ )

	}

	syscom.get_quick_save_value( $save_no, L, 9, 1 )	//L[09]に代入
	if( L[09] == 1 ){	//LOCK中
		$obj.child[15].set_button_state_disable		//DELETE非表示
		$obj.child[16].patno = 2	//LOCK中
		if( $type_sl == _TYPE_SAVE ){	//セーブ＆LOCK中
			$obj.clear_button
			$obj.patno = 2
		}
	}

}


command $save_menu_main()
{
	property $mouse_click
	property $now_page
	property $value
	property $loop
	property $res

	if( excall.check_alloc == 0 ){
		// システムコールが設定されていない
		return( 0 )
	}

//	$now_page = math.limit( 0, syscom.get_quick_save_new_no(0,_PAGE_COUNT*_DATA_COUNT)/_DATA_COUNT, _PAGE_COUNT-1 )
	$now_page = math.limit( 0, syscom.get_quick_save_new_no /_DATA_COUNT, _PAGE_COUNT-1 )


#SaveInitStart
	excall.back.objbtngroup[0].init
	$make_slmenu_base_cg( _TYPE_SAVE, $now_page )
	$make_slmenu_data( _TYPE_SAVE, excall.back, $now_page )
	wipe( 0, 100 )

#SaveMainLoop
	excall.front.objbtngroup[0].start_cancel
	input.clear
	while(1){
		$mouse_click = excall.front.objbtngroup[0].get_decided_no
		if( mouse.wheel < 0 ){
			$mouse_click = 900
		}
		elseif( mouse.wheel > 0 ){
			$mouse_click = 901
		}
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// クリック処理
		if( $mouse_click == -2 ){	// 選択無し
			// 
		}
		elseif( $mouse_click == -1 ){	// キャンセル
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click >= 0 && $mouse_click < _PAGE_COUNT ){		//ページ
			if( $mouse_click != $now_page ){
				se.play(@ＳＥ項目変更)
				$now_page = $mouse_click
				goto #SaveInitStart
			}
			goto #SaveMainLoop
		}
		elseif( $mouse_click == 999 ){		//キャンセル
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click == 900 ){		//左
			se.play(@ＳＥ項目変更)
			$now_page -= 1
			if( $now_page < 0 ){
				$now_page = _PAGE_COUNT - 1
			}
			goto #SaveInitStart
		}
		elseif( $mouse_click == 901 ){		//右
			se.play(@ＳＥ項目変更)
			$now_page += 1
			if( $now_page >= _PAGE_COUNT ){
				$now_page = 0
			}
			goto #SaveInitStart
		}
		elseif( $mouse_click >= 20 && $mouse_click < 30 ){		//セーブ
			$value = ($mouse_click-20) + $now_page * _DATA_COUNT
			if( syscom.get_quick_save_exist($value) == 1 ){
				syscom.get_quick_save_value( $value, L, 9, 1 )	//L[09]に代入
				if( L[09] == 1 ){		//LOCK中
					//こないはず
				}
				elseif( $dialog_main( excall.front, 2, excall.front.object[_OBJ_COMFIRM], _DIALOG_SAVE ) ){
					$res = syscom.quick_save( $value, 0, 1 )
				}
			}
			else{
				$res = syscom.quick_save( $value, 0, 1 )
			}
			if( $res == 1 ){
				$make_slmenu_data( _TYPE_SAVE, excall.front, $now_page )
				$disp_new_mark_page( excall.front )
			}
			goto #SaveMainLoop
		}
		elseif( $mouse_click >= 30 && $mouse_click < 40 ){		//削除
			$value = ($mouse_click-30)+$now_page*_DATA_COUNT
			if( $dialog_main( excall.front, 2, excall.front.object[_OBJ_COMFIRM], _DIALOG_SAVE_DEL ) ){
				se.play(@ＳＥ決定)
				syscom.delete_quick_save( $value )
				$make_slmenu_data( _TYPE_SAVE, excall.front, $now_page )
				$disp_new_mark_page( excall.front )
			}
			goto #SaveMainLoop
		}
		elseif( $mouse_click >= 40 && $mouse_click < 50 ){		//LOCK
			$value=($mouse_click-40)+$now_page*_DATA_COUNT
			syscom.get_quick_save_value( $value, L, 9, 1 )
			L[09] = (L[09] + 1) % 2
			syscom.set_quick_save_value( $value, L, 9, 1 )
			$make_slmenu_data( _TYPE_SAVE, excall.front, $now_page )
			se.play(@ＳＥチェック)
			goto #SaveMainLoop
		}
		input.next
		disp
	}
	input.clear
	return

}






////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ＬＯＡＤ
command $load_menu_main()
{
	property $mouse_click
	property $now_page
	property $value
	property $loop
	property $res

	if( excall.check_alloc == 0 ){
		// システムコールが設定されていない
		return( 0 )
	}

	$now_page = math.limit( 0, syscom.get_quick_save_new_no /_DATA_COUNT, _PAGE_COUNT-1 )

#LoadInitStart
	excall.back.objbtngroup[0].init
	$make_slmenu_base_cg( _TYPE_LOAD, $now_page )
	$make_slmenu_data( _TYPE_LOAD, excall.back, $now_page )
	wipe( 0, 100 )

#LoadMainLoop
	excall.front.objbtngroup[0].start_cancel
	input.clear
	while(1){
		$mouse_click = excall.front.objbtngroup[0].get_decided_no
		if( mouse.wheel < 0 ){
			$mouse_click = 900
		}
		elseif( mouse.wheel > 0 ){
			$mouse_click = 901
		}
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// クリック処理
		if( $mouse_click == -2 ){	// 選択無し
			// 
		}
		elseif( $mouse_click == -1 ){	// キャンセル
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click >= 0 && $mouse_click < _PAGE_COUNT ){		//ページ１～９
			if( $mouse_click != $now_page ){
				se.play(@ＳＥ項目変更)
				$now_page = $mouse_click
				goto #LoadInitStart
			}
			goto #LoadMainLoop
		}
		elseif( $mouse_click == 999 ){		//キャンセル
			se.play(@ＳＥキャンセル)
			break
		}
		elseif( $mouse_click == 900 ){		//左
			se.play(@ＳＥ項目変更)
			$now_page -= 1
			if( $now_page < 0 ){
				$now_page = _PAGE_COUNT - 1
			}
			goto #LoadInitStart
		}
		elseif( $mouse_click == 901 ){		//右
			se.play(@ＳＥ項目変更)
			$now_page += 1
			if( $now_page >= _PAGE_COUNT ){
				$now_page = 0
			}
			goto #LoadInitStart
		}
		elseif( $mouse_click >= 20 && $mouse_click < 30 ){		//ロード
			$value = ($mouse_click-20) + $now_page * _DATA_COUNT
			if( syscom.get_quick_save_exist($value) == 1 ){
				if( $dialog_main( excall.front, 2, excall.front.object[_OBJ_COMFIRM], _DIALOG_LOAD ) ){
					syscom.quick_load( $value, 0, 1, 1 )
				}
			}
			goto #LoadMainLoop
		}
		elseif( $mouse_click >= 30 && $mouse_click < 40 ){		//削除
			$value=($mouse_click-30)+$now_page*10
			if( $dialog_main( excall.front, 2, excall.front.object[_OBJ_COMFIRM], _DIALOG_SAVE_DEL ) ){
				se.play(@ＳＥ決定)
				syscom.delete_quick_save( $value )
				$make_slmenu_data( _TYPE_LOAD, excall.front, $now_page )
				$disp_new_mark_page( excall.front )
			}
			goto #LoadMainLoop
		}
		elseif( $mouse_click >= 40 && $mouse_click < 50 ){		//LOCK
			$value=($mouse_click-40)+$now_page*_DATA_COUNT
			syscom.get_quick_save_value( $value, L, 9, 1 )
			L[09] = (L[09] + 1) % 2
			syscom.set_quick_save_value( $value, L, 9, 1 )
			$make_slmenu_data( _TYPE_LOAD, excall.front, $now_page )
			se.play(@ＳＥチェック)
			goto #LoadMainLoop
		}
		input.next
		disp
	}
	input.clear
	return

}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// メッセージバックＬＯＡＤ
command $msgbk_btn_load()
{
	// システムコールパラメータ準備されてる？
	if( excall.check_alloc == 0 ){
		capture
		excall.alloc
	}

 	if( $dialog_main( excall.front, 2, excall.front.object[3], _DIALOG_LOGJUMP ) ){
		syscom.msg_back_load(0, 1, 1)
	}

	excall.free
	capture_free

	return
}



///////////////////////
//クイックセーブロード用call位置

#Z980		//save
$quick_save_btn(0)
return

#Z981
$quick_save_btn(1)
return

#Z982
$quick_save_btn(2)
return


#Z990		//load
$quick_load_btn(0)
return

#Z991
$quick_load_btn(1)
return

#Z992
$quick_load_btn(2)
return


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// クイックＳＡＶＥ
command $quick_save_btn(property $quick_save_no)
{
	if( syscom.check_save_enable == 0 ){	//セーブできない場合
		return
	}

	if( excall.check_alloc == 0 ){
		excall.alloc
	}
	capture

	if( $dialog_main( excall.front, 2, excall.front.object[_OBJ_COMFIRM], _DIALOG_QSAVE ) == 1 ){
		excall.front.object[_QSAVE_OBJ_START].init	//QSAVE２回連続で行うとOBJECTが残るのを防ぐため
		L[00] = syscom.quick_save( $quick_save_no, 0, 1 )
		if( L[00] == 1 ){	//セーブした
			//front.object[_QSAVE_OBJ_START].create("__sys_quick_sved",1,0,0)
			//front.object[_QSAVE_OBJ_START].layer = 99999
			//front.object[_QSAVE_OBJ_START].x_eve.set(0,400,0,2,start=640)
			//front.object[_QSAVE_OBJ_START].tr_eve.set(0,1000,1000,0)

			@system_message("◆クイックセーブしました。",30)
		}
	}
	capture_free
	excall.free

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// クイックＬＯＡＤ
command $quick_load_btn(property $quick_save_no)
{
	if( excall.check_alloc == 0 ){
		excall.alloc
	}
	if( syscom.get_quick_save_exist(0) == 1 ){
		if( $dialog_main( excall.front, 2, excall.front.object[_OBJ_COMFIRM], _DIALOG_QLOAD ) ){
			front.object[_QSAVE_OBJ_START].init	//念のため
			syscom.quick_load( $quick_save_no, 0, 1, 1 )
		}
	}
	excall.free
}







// セーブロードメニュー
#Z00

return


//セーブメニュー
#Z10

// システムコールパラメータ準備されてる？
if( excall.check_alloc == 0 ){
	capture
	excall.alloc
}

$save_menu_main()

wipe( 0, 100 )

excall.free
capture_free

return



// ロードメニュー
#Z20

// システムコールパラメータ準備されてる？
if( excall.check_alloc == 0 ){
	capture
	excall.alloc
}

$load_menu_main()

wipe( 0, 100 )

excall.free
capture_free


return



