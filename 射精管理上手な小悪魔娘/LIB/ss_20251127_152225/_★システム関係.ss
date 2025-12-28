#Z00

//======================================================
//-----------２桁の１６進数を１０進数に変換（主にRGB用）

command $HEXA_to_DECI(property $str : str) {

	K[00] = $str.mid(0,1)
	K[01] = $str.mid(1,1)
	
	switch(K[00]) {
	
		case("A") L[00] = 10
		case("B") L[00] = 11
		case("C") L[00] = 12
		case("D") L[00] = 13
		case("E") L[00] = 14
		case("F") L[00] = 15
		
		default L[00] = K[00].tonum
	
	}
	
	switch(K[01]) {
	
		case("A") L[01] = 10
		case("B") L[01] = 11
		case("C") L[01] = 12
		case("D") L[01] = 13
		case("E") L[01] = 14
		case("F") L[01] = 15
		
		default L[01] = K[01].tonum
	
	}
	
	RETURN((L[00] * 16) + L[01])
	
	

}

//======================================================
//-----------文字列の後ろｎ文字をカットする

command $str_tail_cut(property $str : str,property $cnt) : str {

	L[00] = $str.cnt
	
	K[00] = $str.left(L[00] - $cnt)
	
	return(K[00])
	
}



//======================================================
//-----------特定の文字列の間の文字を取り出す

command $str_search_and_get(property $str : str, property $strA : str,property $strB : str) : str {

	if ($strA == "") {
	
		L[01] = $str.search($strB)
		
		if (L[01] == -1) { system.debug_messagebox_ok( $strB + " は見つかりませんでした。") return("") }
		
		K[00] = $str.left(L[01])
		
		return(K[00])
	
	}
	
	if ($strB == "") {
	
		L[00] = $strA.cnt
		L[01] = $str.search($strA)
		
		if (L[01] == -1) { system.debug_messagebox_ok( $strA + " は見つかりませんでした。") return("") }
		
		K[00] = $str.mid(L[01] + L[00])
	
		return(K[00])
	
	}
	
	L[01] = $strA.cnt
	
	L[03] = $str.search($strA)
	if (L[03] == -1) { L[03] = 0} // //見つからなくても動く
	
	L[04] = $str.search($strB)
	if (L[04] == -1) { L[04] = 999 }	//見つからなくても動く

	K[00] = $str.left(L[04])
	K[00] = K[00].mid(L[03] + L[01])

	return(K[00])

}

//======================================================
//-----------システムメッセージの表示

command $system_message(property $str : str,property $y) {

	front.object[<system_message_obj>].create_rect(0,0,350,100,0,0,0,220,0,1570,$y)
	front.object[<system_message_obj>].x_rep.resize(1)
	front.object[<system_message_obj>].x_rep[0] = 300
	front.object[<system_message_obj>].order = 999999

	front.object[<system_message_obj>].child.resize(1)
	front.object[<system_message_obj>].child[00].create_string($str,1,10,10)
	
	front.object[<system_message_obj>].child[00].set_string_param(18,1,8,16,21,0,0)

	front.object[<system_message_obj>].disp = 1

	front.object[<system_message_obj>].x_rep_eve[0].set(0,500,0,2)
	front.object[<system_message_obj>].tr_eve.set(0,500,5000,2)

	front.object[<system_message_obj>].wipe_copy = 1		//後で@BG側に移動させるかも

	

}

//======================================================
//-----------チェックボックスの表示

command $check_box(property $excall,property $title : str,property $message : str) : int {

	#INC_START
	
		#DEFINE		<cb_ok_color>	"190662"
		#DEFINE		<cb_no_color>	"62060f"
		
		
		#DEFINE		<color> $ex_color_r,$ex_color_g,$ex_color_b
	
	#INC_END


	L[00] = syscom.get_msg_back_enable_flag
	L[01] = syscom.get_save_enable_flag
	

	if ($excall == 0) {
		syscom.set_msg_back_enable_flag(0)
		syscom.set_save_enable_flag(0)
		syscom.set_syscom_menu_disable
	}
	
	excall[$excall].front.object[<check_box_obj>].create(_black_half,0,639,359)
	excall[$excall].front.object[<check_box_obj>].order = 999999

	excall[$excall].front.object[<check_box_obj>].child.resize(2)
	
	excall[$excall].front.object[<check_box_obj>].child[00].create_rect(0,0,502,302,240,240,240,255,1,421-639,188-359)
	excall[$excall].front.object[<check_box_obj>].child[01].create_rect(0,0,500,300,40,40,40,255,1,422-639,189-359)
	excall[$excall].front.object[<check_box_obj>].child[01].child.resize(5)
	
	$ex_create_pushbtn3(excall[$excall].front.object[<check_box_obj>].child[01],1,"ＯＫ",80,190,148,41,<cb_ok_color>,10,<check_box_btn_group>)
	$ex_create_pushbtn3(excall[$excall].front.object[<check_box_obj>].child[01],0,"キャンセル",272,190,148,41,<cb_no_color>,10,<check_box_btn_group>)
	
	$ex_create_moji2(excall[$excall].front.object[<check_box_obj>].child[01],2,$title,96,33,28,0,22)
	$ex_create_moji2(excall[$excall].front.object[<check_box_obj>].child[01],3,$message,84,96,17,0,<white>)
	$ex_create_moji2(excall[$excall].front.object[<check_box_obj>].child[01],4,"右クリック＝キャンセル",155,270,17,0,<white>)
	
	excall[$excall].front.object[<check_box_obj>].disp = 1

	
	excall[$excall].front.objbtngroup[<check_box_btn_group>].init
	L[10] = excall[$excall].front.objbtngroup[<check_box_btn_group>].sel_cancel
	
	
	if ($excall == 0) {
		
		syscom.set_msg_back_enable_flag(L[00])
		syscom.set_save_enable_flag(L[01])
		syscom.set_syscom_menu_enable
	}
	
	
	excall[$excall].front.object[<check_box_obj>].init
	
	if (L[10] == -1) {L[10] = 0}
	
	
	switch(L[10]){
	
		case(0)	se.play(2)
		case(1)	se.play(7)	
	
	}
	
	
	return(L[10])
	
}



