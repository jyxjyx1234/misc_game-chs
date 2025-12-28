#Z00

//---------------------------
//選択肢と文字オブジェクト 2023版

//文字オブジェクト用ObjNoを用意する
command	$obj_moji_init {

	front.object[<moji_objno>].init
	front.object[<moji_objno>].child.resize(20)
	front.object[<moji_objno>].order = <order_sentaku>
	front.object[<moji_objno>].disp = 1
	
}


//文字のセンタリング表示（改行不可、半角ｘ）
command	$obj_moji_centering(property $child,property $disp,property $x,property $y,property $color : str,property $fontsize,property $haikei_disp,property $haikei_color : str,property $moji : str) {

	front.object[<moji_objno>].child[$child].init
	front.object[<moji_objno>].child[$child].child.resize(2)
	front.object[<moji_objno>].child[$child].disp = $disp
	front.object[<moji_objno>].child[$child].x_rep.resize(2)
	front.object[<moji_objno>].child[$child].y_rep.resize(2)

	@ex_color_expand($color)
	
	front.object[<moji_objno>].child[$child].child[1].create_string($moji,1,$x,$y)	
	front.object[<moji_objno>].child[$child].child[1].set_string_param($fontsize,0,0,0,0,0,0,0)
	front.object[<moji_objno>].child[$child].child[1].color_rate = 255
	front.object[<moji_objno>].child[$child].child[1].color_r = $ex_color_r
	front.object[<moji_objno>].child[$child].child[1].color_g = $ex_color_g
	front.object[<moji_objno>].child[$child].child[1].color_b = $ex_color_b
	
	L[00] = $moji.cnt
	L[01] = $moji.cnt * $fontsize
	
	//背景枠作成
	
	if ($haikei_disp == 1) {
	
		@ex_color_expand($haikei_color)
		front.object[<moji_objno>].child[$child].child[0].create_rect(-5,-5,L[01] + 5,$fontsize + 5,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	
	}
	
	
	//センタリング
	
	front.object[<moji_objno>].child[$child].x_rep[0] = -((L[00] / 2) * $fontsize)
		
	if (L[00] % 2 == 1) {front.object[<moji_objno>].child[$child].x_rep[0] -= $fontsize / 2}	//奇数の場合はフォントサイズ／２分補正する
	
}


//文字の左詰め表示（改行○、半角ｘ ひとまず３行まで 文中に「R」を入れると改行）

command	$obj_moji_left_justified(property $child,property $disp,property $x,property $y,property $color : str,property $fontsize,property $haikei_disp,property $haikei_color : str,property $moji : str) {
	
	#INC_START
	
		#PROPERTY	$moji_list : strlist[3]
		#PROPERTY	$moji_tmp : str
		#PROPERTY	$moji_list_count
	
	#INC_END
	
	$moji_list.init
	$moji_tmp = ""
	$moji_list_count = 0
	

	if ($moji.search("R") == -1) {

		$moji_list[0] = $moji
		$moji_list_count = 1
		
	}else{
		
		$moji_list[0] = $moji.left($moji.search("R"))
		$moji_list[1] = $moji.mid($moji.search("R") + 1)
		
		$moji_list_count = 2
		
		if ($moji_list[1].search("R") != -1) {
			
			$moji_tmp = $moji_list[1]
			$moji_list[1] = $moji_list[1].left($moji_tmp.search("R"))
			$moji_list[2] = $moji_tmp.mid($moji_tmp.search("R") + 1)
			
			$moji_list_count = 3
		
		}
	
	}
		
	//	print($moji_list[0])＞print($moji_list[1])＞print($moji_list[2])R
	
	front.object[<moji_objno>].child[$child].init
	front.object[<moji_objno>].child[$child].child.resize(6)
	front.object[<moji_objno>].child[$child].disp = 1

	
	for(L[10] = 0,L[10] < $moji_list_count,L[10] += 1) {

		L[11] = L[10] * 2
		L[12] = ($fontsize + ($fontsize / 2)) * L[10]
		
		@ex_color_expand($color)
		
		front.object[<moji_objno>].child[$child].child[L[11] + 1].create_string($moji_list[L[10]],1,$x,$y + L[12])	
		front.object[<moji_objno>].child[$child].child[L[11] + 1].set_string_param($fontsize,0,0,0,0,0,0,0)
		front.object[<moji_objno>].child[$child].child[L[11] + 1].color_rate = 255
		front.object[<moji_objno>].child[$child].child[L[11] + 1].color_r = $ex_color_r
		front.object[<moji_objno>].child[$child].child[L[11] + 1].color_g = $ex_color_g
		front.object[<moji_objno>].child[$child].child[L[11] + 1].color_b = $ex_color_b
		
		if(L[10] == 2) { front.object[<moji_objno>].child[$child].y -= ($fontsize + ($fontsize / 2)) }	//３行にわたる場合は１行分Ｙを上に移動
	
		L[00] = $moji_list[L[10]].cnt
		L[01] = $moji_list[L[10]].cnt * $fontsize
		
		//背景枠作成
		
		if ($haikei_disp == 1) {
		
			@ex_color_expand($haikei_color)
			front.object[<moji_objno>].child[$child].child[L[11] + 0].create_rect(-5,-5,L[01] + 5,$fontsize + 5,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y + L[12])
		
		}
		
	}
	


}





//二択選択肢
command	$sentaku_two_choices(property $sentaku_file:str , property $cutno1,property $cutno2,property $sel_bun : str,property $sel1 : str,property $sel2 : str,property $sel1_status,property $sel2_status) : int { 
	
	close
	
	$obj_moji_init
	
	front.object[<sentaku_objno>].init
	front.object[<sentaku_objno>].child.resize(30)
	front.object[<sentaku_objno>].order = <order_sentaku>
	front.object[<sentaku_objno>].disp = 1

	//バックを黒く
	
	front.object[<sentaku_objno>].child[0].create(_black,1,0,0)
	front.object[<sentaku_objno>].child[0].tr = 0
	front.object[<sentaku_objno>].child[0].tr_eve.set(192,1000,0,2)

	//上下の枠作成

	@ex_color_expand("2d2c38")

	front.object[<sentaku_objno>].child[1].create_rect(0,0,1920,90,$ex_color_r,$ex_color_g,$ex_color_b,255,1,0,0)
	front.object[<sentaku_objno>].child[1].y_rep.resize(1)
	front.object[<sentaku_objno>].child[1].y_rep[0] = -90

	@ex_color_expand("2d2c38")
	
	front.object[<sentaku_objno>].child[2].create_rect(0,0,1920,69,$ex_color_r,$ex_color_g,$ex_color_b,255,1,0,1011)
	front.object[<sentaku_objno>].child[2].y_rep.resize(1)
	front.object[<sentaku_objno>].child[2].y_rep[0] = 69
	
	
	front.object[<sentaku_objno>].child[1].y_rep_eve[0].set(0,500,500,2)
	front.object[<sentaku_objno>].child[2].y_rep_eve[0].set(0,500,500,2)
	
	
	front.object[<sentaku_objno>].child[2].y_rep_eve[0].wait
	
	
	
	
	
	
	$obj_moji_centering(0,1,960,33,"FFFFFF",36,0,"000000",$sel_bun)
	$obj_moji_centering(1,1,960,1038,"FFFFFF",30,0,"000000","▲　どちらかを選択してください　▲")

	//セーブデータなどへの反映
	
	K[00] = get_title
	msgbk.insert_msg("★選択肢★"+$sel_bun)
	
	$set_title(K[00]+"★選択肢★"+$sel_bun)



	//選択肢上の文章
	//選択肢部分の作成
	
	front.object[<sentaku_objno>].child[10].create($sentaku_file,1, 487,552,$cutno1)
	front.object[<sentaku_objno>].child[11].create($sentaku_file,1,1434,552,$cutno2)
	
	front.object[<sentaku_objno>].child[10].tr_rep.resize(2)
	front.object[<sentaku_objno>].child[11].tr_rep.resize(2)
		
	front.object[<sentaku_objno>].child[10].tr_rep[0] = 255
	front.object[<sentaku_objno>].child[11].tr_rep[0] = 255
	
	//front.object[<sentaku_objno>].child[10].tr_rep[1] = 255 - (($sel1_status != 1) * 196)
	//front.object[<sentaku_objno>].child[11].tr_rep[1] = 255 - (($sel2_status != 1) * 196)
	
	front.object[<sentaku_objno>].child[10].dark = 128 * ($sel1_status != 1)
	front.object[<sentaku_objno>].child[11].dark = 128 * ($sel2_status != 1)
	
	
	//front.object[<sentaku_objno>].child[10].f.resize(1)
	//front.object[<sentaku_objno>].child[11].f.resize(1)
	
	//front.object[<sentaku_objno>].child[10].f[0] = 0
	//front.object[<sentaku_objno>].child[11].f[0] = 0
	
	//ボタン部分（ほぼ透明）
	
	front.object[<sentaku_objno>].child[10].x_rep.resize(1)
	front.object[<sentaku_objno>].child[11].x_rep.resize(1)
	
	front.object[<sentaku_objno>].child[10].x_rep[0] = -1440
	front.object[<sentaku_objno>].child[11].x_rep[0] =  1440
	
	front.object[<sentaku_objno>].child[10].x_rep_eve[0].set(0,500,0,1)
	front.object[<sentaku_objno>].child[11].x_rep_eve[0].set(0,500,0,1)
	
	front.object[<sentaku_objno>].child[11].x_rep_eve[0].wait




	$obj_moji_left_justified(2,1,  78,820,"FFFFFF",52,1,"fb46d7",$sel1)
	$obj_moji_left_justified(3,1,1023,820,"FFFFFF",52,1,"059b22",$sel2)


	if ($sel1_status != 1) {front.object[<moji_objno>].child[2].tr = 64 $obj_moji_left_justified(4,1, 237,520,"FFFFFF",52,1,"AAAAAA","（選択できません）")}
	if ($sel2_status != 1) {front.object[<moji_objno>].child[3].tr = 64 $obj_moji_left_justified(5,1,1200,520,"FFFFFF",52,1,"AAAAAA","（選択できません）")}

	
	front.object[<sentaku_objno>].child[20].create_rect(0,0,959,1080,255,255,255,1,1)
	front.object[<sentaku_objno>].child[21].create_rect(0,0,959,1080,255,255,255,1,1,959,0)
	
	
	if ($sel1_status == 1) {front.object[<sentaku_objno>].child[20].set_button(0,0,16,7)}
	if ($sel2_status == 1) {front.object[<sentaku_objno>].child[21].set_button(1,0,16,7)}
	
	
	
	
	
	
	//------------------
	//オートセーブ処理
	
	L[00] = savepoint
	//if (L[00] != 1 && @オートセーブ設定 == 1) { $AutoSave(0,0)}
	
	
	
	front.objbtngroup[0].init
	front.objbtngroup[0].start

	while(1) {
	
		L[00] = front.objbtngroup[0].get_hit_no
		L[01] = front.objbtngroup[0].get_decided_no
	
		
		switch(L[00]) {
		
			case(0)		front.object[<sentaku_objno>].child[10].tr_rep[0] = 255
						front.object[<sentaku_objno>].child[11].tr_rep[0] = 255					
			
						if (front.object[<sentaku_objno>].child[10].bright_eve.check == 0) {
			
							front.object[<sentaku_objno>].child[10].bright_eve.turn_real(40,0,500,0,2)
						}
						
						front.object[<sentaku_objno>].child[11].bright_eve.end
						
			case(1)		front.object[<sentaku_objno>].child[10].tr_rep[0] = 255
						front.object[<sentaku_objno>].child[10].tr_rep[0] = 255					
			
						if (front.object[<sentaku_objno>].child[11].bright_eve.check == 0) {
			
							front.object[<sentaku_objno>].child[11].bright_eve.turn_real(40,0,500,0,2)
						}
						
						front.object[<sentaku_objno>].child[10].bright_eve.end
						
			
			case(-1)	front.object[<sentaku_objno>].child[10].tr_rep[0] = 255
						front.object[<sentaku_objno>].child[11].tr_rep[0] = 255						
							
						front.object[<sentaku_objno>].child[10].bright_eve.end
						front.object[<sentaku_objno>].child[11].bright_eve.end
						
		
		
		}
		
		if (L[01] >= 0) {break}
	
	
		disp
	
	}
	
	front.object[<sentaku_objno>].child[10].bright_eve.end
	front.object[<sentaku_objno>].child[11].bright_eve.end
	
	switch(L[01]) {
		
		case(0)	front.object[<sentaku_objno>].child[10].tr_rep[0] = 255
				front.object[<sentaku_objno>].child[11].tr_rep[0] = 64

				front.object[<sentaku_objno>].child[10].frame_action.start(1000,"$obj_action_flickering2",0,50,50)
				
				
				
		case(1)	front.object[<sentaku_objno>].child[10].tr_rep[0] = 64
				front.object[<sentaku_objno>].child[11].tr_rep[0] = 255

				front.object[<sentaku_objno>].child[11].frame_action.start(1000,"$obj_action_flickering2",0,50,50)
				
				
	
	
	}
	
	TIMEWAIT(1000)
	
	set_title(K[00])	//システム上では$set_titleは使わない
	
	
	front.object[<sentaku_objno>].tr_eve.set(0,1000,0,2)
	front.object[<moji_objno>].tr_eve.set(0,1000,0,2)
	front.object[<moji_objno>].tr_eve.wait
	
	front.object[<sentaku_objno>].init
	front.object[<moji_objno>].init
	
	return(L[01])

}


//-----------------------------------------------------------------
//文字のセンタリング表示（改行不可、半角ｘ）※object版 2024.06.06
command	$obj_moji_centering_obj(property $mojiobj:object,property $disp,property $x,property $y,property $color : str,property $fontsize,property $haikei_disp,property $haikei_color : str,property $moji : str) {

	$mojiobj.init
	$mojiobj.child.resize(2)
	$mojiobj.disp = $disp
	$mojiobj.x_rep.resize(2)
	$mojiobj.y_rep.resize(2)

	@ex_color_expand($color)
	
	$mojiobj.child[1].create_string($moji,1,$x,$y)	
	$mojiobj.child[1].set_string_param($fontsize,0,0,0,0,0,0,0)
	$mojiobj.child[1].color_rate = 255
	$mojiobj.child[1].color_r = $ex_color_r
	$mojiobj.child[1].color_g = $ex_color_g
	$mojiobj.child[1].color_b = $ex_color_b
	
	L[00] = $moji.cnt
	L[01] = $moji.cnt * $fontsize
	
	//背景枠作成
	
	if ($haikei_disp == 1) {
	
		@ex_color_expand($haikei_color)
		$mojiobj.child[0].create_rect(-5,-5,L[01] + 5,$fontsize + 5,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	
	}
	
	
	//センタリング
	
	$mojiobj.x_rep[0] = -((L[00] / 2) * $fontsize)
		
	if (L[00] % 2 == 1) {$mojiobj.x_rep[0] -= $fontsize / 2}	//奇数の場合はフォントサイズ／２分補正する
	
}


