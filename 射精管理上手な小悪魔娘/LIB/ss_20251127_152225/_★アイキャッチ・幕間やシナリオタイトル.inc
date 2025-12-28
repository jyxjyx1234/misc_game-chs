//----------------------------------------
//シーンタイトルセット（set_titleの代わり）

#COMMAND	$set_title(str)


//-------------------------------
//アイキャッチ制御



//-------------------------------
//★スタッフロール制御

#PROPERTY	$kwot_tmp

#MACRO	@koe_wait_or_time(@time(2000))	//声が再生されているときは声を、そうでないときは時間経過で次のテキストへ移動
	
	$kwot_tmp = 0
	
	if (koe_check == 1) {
		$kwot_tmp = koe_play_wait_key(koe_check_get_koe_no)
		if ($kwot_tmp == 0) {@TIMEWAIT(1000)}
		
		//@kwt	//後で消す
	
	}else {
		@TIMEWAIT(@time)		
	}
	
	clear	//メッセージウィンドウでなくしたら消す


#MACRO	@end_mess(@koeno,@charano,@name,@text)	//専用テキスト命令	声NO・キャラNO・キャラ名・テキスト（置換しやすいようこの順番）

	front.object[<end_moji>].init
	front.object[<end_moji>].child.resize(2)
	front.object[<end_moji>].disp = 1
	front.object[<end_moji>].layer = <end_moji>
	front.object[<end_moji>].order = <order_chrcg_front>	//キャラより前
	
	front.object[<end_moji>].child[0].create_string(@text,1,165,900)
	front.object[<end_moji>].child[0].set_string_param(40,-1,15,23,<white>,<black>,3,<black>)
		
	front.object[<end_moji>].child[1].create_string(@name,1,60,900)
	front.object[<end_moji>].child[1].set_string_param(40,-1,15,23,<white>,<black>,3,<black>)

	switch(@charano) {	//キャラ色あわせ
	
		case(1)	front.object[<end_moji>].child[0].set_string_param(40,-1,15,23,<white>,<black>,3,<black>)
				front.object[<end_moji>].child[1].set_string_param(40,-1,15,23,<white>,<black>,3,<black>)
		
		case(2)	front.object[<end_moji>].child[0].set_string_param(40,-1,15,23,<white>,<black>,3,<black>)
				front.object[<end_moji>].child[1].set_string_param(40,-1,15,23,<white>,<black>,3,<black>)
	
	
	}



	//メッセージバックに追加
	
	if (@koeno != 0) {KOE(@koeno,@charano)}
	msgbk.go_next_msg
	msgbk.add_koe(@koeno,@charano)
	if (@koeno != 0) {msgbk.add_namae(@name)}
	msgbk.add_msg(@text)  


