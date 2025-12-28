
#z00


//   0 = NO ot CANCEL
//   1 = YES
command $dialog_main( property $stage:stage, property $btn_no:int, property $obj:object, property $no ) : int
{
	property $mouse_click
	property $res
	property $check

	if( $get_dialog_flag( $no ) != 0 ){
		return( 1 )
	}


	//0ならダイアログを出す。1なら出さない
	$check = 0
	se.play(@ＳＥ警告)

	$stage.objbtngroup[$btn_no].init

	$obj.init
	$obj.disp = 1
	$obj.layer = 10000
	$obj.child.resize(10)

	$obj.child[0].create_rect( 0, 0, 1920, 1080, 0,0,0,255,1,0,0)
	$obj.child[0].tr = 128
	$obj.child[1].create(__sys_dialog_base,  1, 702, 350, 0)
	$obj.child[2].create(__sys_dialog_base,  1, 702, 350, $get_dialog_patno($no)+1)
	$obj.child[3].create(__sys_dialog_btn01, 1, 765, 480)
	$obj.child[4].create(__sys_dialog_btn02, 1, 999, 480)
	$obj.child[5].create(__sys_dialog_check, 1, 1026, 682, 2 ) //チェックＯＮ時しか来ないので

	if ($no == _DIALOG_DEFAULT) {$obj.child[1].patno = 20 $obj.child[5].disp = 0}	//デフォルトリセットはチェック無く強制表示（★追加）

	$obj.child[3].set_button(0,$btn_no,24,@ボタンＳＥ決定音無し２)	//YES
	$obj.child[4].set_button(1,$btn_no,24,@ボタンＳＥ決定音無し２)	//NO
	$obj.child[5].set_button(2,$btn_no,24,@ボタンＳＥ決定音無し)	//毎回確認する


	while(1){
		$mouse_click = $stage.objbtngroup[$btn_no].sel_cancel
		switch($mouse_click){
			case( 0 )	//YES
				se.play(@ＳＥ決定)
				$res = 1
				break
			case( 1 )	//NO
				se.play(@ＳＥキャンセル)
				$res = 0
				break
			case( 2 )
				se.play(@ＳＥチェック)
				$check ^= 1
				$obj.child[5].patno = 2 * ($check^1)
		}
		disp
		input.clear
	}

	$set_dialog_flag( $no, $check )

	$stage.objbtngroup[$btn_no].end
	$obj.init
	return( $res )
}

command $get_dialog_flag( property $no ) : int
{
	property $res

	switch( $no ){
		case( _DIALOG_QSAVE    ) $res = @GFLAG_DIALOG_QSAVE
		case( _DIALOG_QLOAD    ) $res = @GFLAG_DIALOG_QLOAD
		case( _DIALOG_SAVE     ) $res = @GFLAG_DIALOG_SAVE
		case( _DIALOG_SAVE_DEL ) $res = @GFLAG_DIALOG_DELETE
		case( _DIALOG_LOAD     ) $res = @GFLAG_DIALOG_LOAD  
		case( _DIALOG_RETURN   ) $res = @GFLAG_DIALOG_LOGJUMP
		case( _DIALOG_LOGJUMP  ) $res = @GFLAG_DIALOG_LOGJUMP
		case( _DIALOG_TITLE    ) $res = @GFLAG_DIALOG_TITLE 
		case( _DIALOG_SECENE   ) $res = @GFLAG_DIALOG_TITLE 
		case( _DIALOG_EXIT     ) $res = @GFLAG_DIALOG_EXIT  
		case( _DIALOG_DEFAULT  ) $res = @GFLAG_DIALOG_DEFAULT  
	}
	return( $res )
}


command $set_dialog_flag( property $no, property $value )
{
	switch( $no ){
		case( _DIALOG_QSAVE    ) @GFLAG_DIALOG_QSAVE   = $value
		case( _DIALOG_QLOAD    ) @GFLAG_DIALOG_QLOAD   = $value
		case( _DIALOG_SAVE     ) @GFLAG_DIALOG_SAVE    = $value
		case( _DIALOG_SAVE_DEL ) @GFLAG_DIALOG_DELETE  = $value
		case( _DIALOG_LOAD     ) @GFLAG_DIALOG_LOAD    = $value
		case( _DIALOG_RETURN   ) @GFLAG_DIALOG_LOGJUMP = $value
		case( _DIALOG_LOGJUMP  ) @GFLAG_DIALOG_LOGJUMP = $value
		case( _DIALOG_TITLE    ) @GFLAG_DIALOG_TITLE   = $value
		case( _DIALOG_SECENE   ) @GFLAG_DIALOG_TITLE   = $value
		case( _DIALOG_EXIT     ) @GFLAG_DIALOG_EXIT    = $value
		case( _DIALOG_DEFAULT  ) @GFLAG_DIALOG_DEFAULT = $value
	}
}

command $get_dialog_patno( property $no ) : int
{
	property $res : int

	switch( $no ){
		case( _DIALOG_SAVE     ) $res = 0
		case( _DIALOG_SAVE_DEL ) $res = 1
		case( _DIALOG_LOAD     ) $res = 2
		case( _DIALOG_RETURN   ) $res = 3
		case( _DIALOG_TITLE    ) $res = 4
		case( _DIALOG_SECENE   ) $res = 5
		case( _DIALOG_EXIT     ) $res = 6
		case( _DIALOG_LOGJUMP  ) $res = 7
		case( _DIALOG_QSAVE    ) $res = 8
		case( _DIALOG_QLOAD    ) $res = 9
		case( _DIALOG_DEFAULT  ) $res = 10
	}
	return( $res )
}


