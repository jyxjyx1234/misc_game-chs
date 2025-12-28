#Z00

//======================================================-
//画面スクリーン演出 ワイプ無視系

COMMAND	$all_screen(property $rgb : str,property $time,property $mode,property $range,property $power,property $channel) {

	switch($mode) {
	
		case(0)	screen.effect[$channel].init	goto #all_screen_color		//全体カラー変更
		case(1)	goto #all_screen_clear								//消去
		case(2)	screen.effect[$channel].init	goto #all_screen_flash		//明滅
		
		case(3)	screen.effect[$channel].init	goto #all_screen_color		//全体カラー変更 ★addモード
		case(4)	screen.effect[$channel].init	goto #all_screen_flash		//明滅			 ★addモード
		
	}
	

#all_screen_color

	@ex_color_expand($rgb)
	
	<all_screen_range_check>
	
	
	if ($mode == 0) {			//全色モード
	
		screen.effect[$channel].color_r = $ex_color_r
		screen.effect[$channel].color_g = $ex_color_g
		screen.effect[$channel].color_b = $ex_color_b
		screen.effect[$channel].color_rate_eve.set($power,$time,0,0)
		
	}elseif ($mode == 3) {		//addモード
	
		screen.effect[$channel].color_add_r_eve.set(math.linear($ex_color_r,0,0,255,$power),$time,0,0)
		screen.effect[$channel].color_add_g_eve.set(math.linear($ex_color_g,0,0,255,$power),$time,0,0)
		screen.effect[$channel].color_add_b_eve.set(math.linear($ex_color_b,0,0,255,$power),$time,0,0)
	
	}
	
	return
	

#all_screen_flash

	@ex_color_expand($rgb)
	
	<all_screen_range_check>
	
		
	L[11] = 6 //明滅回数
	
	L[10] = math.max(1,$time / L[11])
	
	for (L[00] = 0,L[00] < L[11],L[00] += 1) {	
	
		switch(L[00] % 2) {
		
			case(0)	if ($mode == 2) {			//全色モード
	
						screen.effect[$channel].color_r = $ex_color_r
						screen.effect[$channel].color_g = $ex_color_g
						screen.effect[$channel].color_b = $ex_color_b
						screen.effect[$channel].color_rate = $power
						
												
					}elseif ($mode == 4) {		//addモード
					
						screen.effect[$channel].color_add_r = math.linear($ex_color_r,0,0,255,$power)
						screen.effect[$channel].color_add_g = math.linear($ex_color_g,0,0,255,$power)
						screen.effect[$channel].color_add_b = math.linear($ex_color_b,0,0,255,$power)
					
					}
					
			case(1)	if ($mode == 2) {			//全色モード
	
						screen.effect[$channel].color_rate = 0
						
					}elseif ($mode == 4) {		//addモード
					
						screen.effect[$channel].color_add_r = 0
						screen.effect[$channel].color_add_g = 0
						screen.effect[$channel].color_add_b = 0
					
					}
			
			
		
		}
		
		TIMEWAIT(L[10])
		
	
	}
	
	screen.effect[$channel].init
	

	return
	

#all_screen_clear

	//すべてのモードのものを一括消去
	
	screen.effect[$channel].color_rate_eve.set(0,$time,0,0)
	screen.effect[$channel].color_add_r_eve.set(0,$time,0,0)
	screen.effect[$channel].color_add_g_eve.set(0,$time,0,0)
	screen.effect[$channel].color_add_b_eve.set(0,$time,0,0)
	
	if ($rgb != "nowait") {
		if (@クリックで背景の演出をスキップ == 1) {@TIMEWAIT($time)} else {TIMEWAIT($time)}
		screen.effect[$channel].color_rate_eve.end
		screen.effect[$channel].color_add_r_eve.end
		screen.effect[$channel].color_add_g_eve.end
		screen.effect[$channel].color_add_b_eve.end
	}

	return

}



#INC_START

#DEFINE	<all_screen_range_check>

		switch($range) {
	
			case(0)	screen.effect[$channel].begin_layer = 0							//画面全体
					screen.effect[$channel].end_layer = <no_wipe_bg_objno_max>
					screen.effect[$channel].begin_order = 0
					screen.effect[$channel].end_order = <order_staffroll>

			case(1)	screen.effect[$channel].begin_layer = 0		//背景のみ
					screen.effect[$channel].end_layer = 18
					screen.effect[$channel].begin_order = 0
					screen.effect[$channel].end_order = <order_omv_effect>
					
			case(2)	screen.effect[$channel].begin_layer = 19		//キャラのみ
					screen.effect[$channel].end_layer = 39
					screen.effect[$channel].begin_order = <order_chr>
					screen.effect[$channel].end_order = <order_chr>
			
			case(3)	screen.effect[$channel].begin_layer = 0		//オーダー２のもの（カットインとか）
					screen.effect[$channel].end_layer = <no_wipe_bg_objno_max>
					screen.effect[$channel].begin_order = <order_chr_effect>
					screen.effect[$channel].end_order = <order_chr_effect>
					
			case(4)	screen.effect[$channel].begin_layer = 0		//オーダー０と１のもの（カットインはそのまま）
					screen.effect[$channel].end_layer = <no_wipe_bg_objno_max>
					screen.effect[$channel].begin_order = 0
					screen.effect[$channel].end_order = <order_chr>
		}

#INC_END


//------------------------------------------------------
//以下、旧版

//----------------------------
//★★スクリーン画像展開、１枚絵用

COMMAND $old_all_screen(property $filename : str,property $ObjNo,property $time) {

	if ($filename == "" || $filename == "nowait") {goto #old_all_screen_clear}


	front.object[$ObjNo].create($filename,0)
	front.object[$ObjNo].tr = 0
	front.object[$ObjNo].disp = 1
	front.object[$ObjNo].layer = $ObjNo
	front.object[$ObjNo].tr_eve.set(255,$time,0,2)

	return
	
	
	#old_all_screen_clear
	
	if (front.object[$ObjNo].exist_type == 0) {return}
	
	front.object[$ObjNo].tr_eve.set(0,$time,0,2)
	
	if ($filename != "nowait") {
		front.object[$ObjNo].tr_eve.wait
	}


}


//----------------------------
//★★スクリーン画像展開、カラー指定版

COMMAND $old_all_screen_color(property $rgb : str,property $ObjNo,property $time) {

	@ex_color_expand($rgb)
	
	front.object[$ObjNo].create_rect(0,0,1280,720,$ex_color_r,$ex_color_g,$ex_color_b,255,1,0,0)
	front.object[$ObjNo].tr = 0
	front.object[$ObjNo].disp = 1
	front.object[$ObjNo].layer = $ObjNo
	front.object[$ObjNo].tr_eve.set(255,$time,0,2)

	return

}


