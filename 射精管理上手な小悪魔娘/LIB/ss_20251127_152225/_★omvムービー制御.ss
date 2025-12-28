#Z00

//-------------------------------
//ムービー制御
/*
 * 	現状、1280を1.5倍して使用中
 *  引数一つ追加（$back_or_front キャラより後ろ back =0  キャラより前 front = 1)
 * 
 */

COMMAND	$omv_set(property $stage,property $filename : str,property $blend,property $loop,property $tr,property $fadein_time,property $deray_time,property $resume_flag,property $back_or_front) {

	$omv_resume_flag = 0
	$omv_resume_time = 0

	if ($loop == 0) {
	
		stage[$stage].object[<omv_obj>].create_movie($filename,0,0,0, ready_only = 1)
	
	}else{
	
		stage[$stage].object[<omv_obj>].create_movie_loop($filename,0,0,0, ready_only = 1)
	
	}


	stage[$stage].object[<omv_obj>].set_scale(1500,1500)

	$omv_resume_flag = $resume_flag

	stage[$stage].object[<omv_obj>].tr = 0
	stage[$stage].object[<omv_obj>].blend = $blend
	stage[$stage].object[<omv_obj>].tr_eve.set($tr,$fadein_time,$deray_time,0)
	
	stage[$stage].object[<omv_obj>].layer = <omv_obj>

	switch($back_or_front) {
			case(0)	stage[$stage].object[<omv_obj>].order = <order_omv_effect>	//2024.05.13キャラより後ろ
			case(1)	stage[$stage].object[<omv_obj>].order = <order_chrcg_front>	//2024.05.13キャラより前

	}
	
	
	stage[$stage].object[<omv_obj>].disp = 1
	
	
	
	if ($omv_resume_flag == 0) {
	
		stage[$stage].object[<omv_obj>].resume_movie
	
	}

}


COMMAND $omv_fade(property $fadeout_time,property $deray_time,property $wait_flag) {

	front.object[<omv_obj>].tr_eve.set(0,$fadeout_time,$deray_time,0)
	
	if ($wait_flag == 1) {
	
		timewait($wait_flag)
	
	}

}


