#Z00

//----------------------
//omvムービー制御 2023年版

command	$omv_effect_set(property $stage,property $objno_plus,property $filename : str,property $blend,property $loop_flag,property $tr,property $fadein_time,property $fadein_wait_flag,property $deray_time) {

	switch($loop_flag) {	//0：ループしない 1:ループする 2:ループしない。ゲーム内時間で表示（CTRLで加速できる） 3:ループする。ゲーム内時間で表示（CTRLで加速できる）
	
		case(0)	stage[$stage].object[<omv_effect_obj> + $objno_plus].create_movie($filename,0,959,539)
		case(1)	stage[$stage].object[<omv_effect_obj> + $objno_plus].create_movie_loop($filename,0,959,539)
		case(2)	stage[$stage].object[<omv_effect_obj> + $objno_plus].create_movie($filename,0,959,539,real_time = 0)
		case(3)	stage[$stage].object[<omv_effect_obj> + $objno_plus].create_movie_loop($filename,0,959,539,real_time = 0)
		

	}

	stage[$stage].object[<omv_effect_obj> + $objno_plus].center_x = 639
	stage[$stage].object[<omv_effect_obj> + $objno_plus].center_y = 359
	
	stage[$stage].object[<omv_effect_obj> + $objno_plus].order = <omv_effect_order>		//screen影響を受けないように
	stage[$stage].object[<omv_effect_obj> + $objno_plus].set_scale(1500,1500)

	stage[$stage].object[<omv_effect_obj> + $objno_plus].tr = 0
	stage[$stage].object[<omv_effect_obj> + $objno_plus].blend = $blend
	stage[$stage].object[<omv_effect_obj> + $objno_plus].disp = 1
	
	stage[$stage].object[<omv_effect_obj> + $objno_plus].tr_eve.set($tr,$fadein_time,$deray_time,2)
	
	if ($fadein_wait_flag == 1) {stage[$stage].object[<omv_effect_obj> + $objno_plus].tr_eve.wait}
	



}

command	$omv_object_set(property $stage,property $filename : str,property $x,property $y,property $layer,property $order,property $child,property $dummy:str, property $blend,property $loop_flag,property $tr,property $fadein_time,property $fadein_wait_flag,property $deray_time) {

	switch($layer) {//layer : 0[再背面] / 1[立ち絵とバストアップの間]	/ 2[最前面] / それ以上は、その値になる
	
		case(0)	L[00] = <omv_object_obj_back>
		case(1)	L[00] = <omv_object_obj_mid>
		case(2)	L[00] = <omv_object_obj_front>
		
		default L[00] = $layer
		
	}
	
	if (stage[$stage].object[L[00]].child.get_size < 10)	{
	
		stage[$stage].object[L[00]].init
		stage[$stage].object[L[00]].child.resize(10)
		stage[$stage].object[L[00]].disp = 1
		stage[$stage].object[L[00]].layer = L[00]
		
	}
	
	stage[$stage].object[L[00]].order = $order
	
	
	switch($loop_flag) {	//0：ループしない 1:ループする 2:ループしないで、最後のフレームで停止する（自動で消えない）
	
		case(0)	stage[$stage].object[L[00]].child[$child].create_movie($filename,0,$x,$y,real_time = 0)
		case(1)	stage[$stage].object[L[00]].child[$child].create_movie_loop($filename,0,$x,$y)
		case(2)	stage[$stage].object[L[00]].child[$child].create_movie($filename,0,$x,$y,real_time = 0,auto_free = 0)
		
		
	}
	
	stage[$stage].object[L[00]].child[$child].x_rep.resize(5)
	stage[$stage].object[L[00]].child[$child].y_rep.resize(5)
	
	
	stage[$stage].object[L[00]].child[$child].tr = 0	
	stage[$stage].object[L[00]].child[$child].blend = $blend
	stage[$stage].object[L[00]].child[$child].disp = 1
	
	stage[$stage].object[L[00]].child[$child].tr_eve.set($tr,$fadein_time,$deray_time,2)
	
	if ($fadein_wait_flag == 1) {stage[$stage].object[L[00]].child[$child].tr_eve.wait}


}



command $omv_effect_fade(property $fadeout_time,property $fadeout_wait_flag,property $deray_time,property $mode) {

	front.object[<omv_effect_obj>].tr_eve.set(0,$fadeout_time,$deray_time,$mode)
	
	if ($fadeout_wait_flag == 1) {
	
		front.object[<omv_effect_obj>].tr_eve.wait
	
	}


}

