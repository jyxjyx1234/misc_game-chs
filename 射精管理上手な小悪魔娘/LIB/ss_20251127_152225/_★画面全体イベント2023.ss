#Z00


command 	$multiple_mouse_scroll(property $ch) {

	//スクリーンのリセットとレイヤー設定	
	
	screen.effect[3].init
	screen.effect[4].init
	screen.effect[5].init
	screen.effect[6].init
	
	screen.effect[3].begin_layer = 0 screen.effect[3].end_layer = 0 
	screen.effect[4].begin_layer = 1 screen.effect[4].end_layer = 1
	screen.effect[5].begin_layer = 2 screen.effect[5].end_layer = 2 
	screen.effect[6].begin_layer = 3 screen.effect[6].end_layer = 3 
	
	//オブジェクトのレイヤー指定し直し
	
	for(L[00] = 0,L[00] <= 9,L[00]+= 1) {
	
		if (front.object[L[00]].exist_type != 1) {continue}
		front.object[L[00]].layer = 0
	
	}
	
	for(L[00] = 10,L[00] <= 19,L[00]+= 1) {
	
		if (front.object[L[00]].exist_type != 1) {continue}
		front.object[L[00]].layer = 1
	
	}
	for(L[00] = 20,L[00] <= 29,L[00]+= 1) {
	
		if (front.object[L[00]].exist_type != 1) {continue}
		front.object[L[00]].layer = 2
	
	}
	for(L[00] = 30,L[00] <= 39,L[00]+= 1) {
	
		if (front.object[L[00]].exist_type != 1) {continue}
		front.object[L[00]].layer = 3
	
	}
	
	
	mouse.clear
		
	frame_action_ch[$ch].start(-1, "$multiple_mouse_scroll_fa",10,5)

	
}

command	$multiple_mouse_scroll_fa(property $fa : frameaction,property $x_retio,property $y_retio) {

	$mms_mouse_x = mouse.get_pos_x - 960
	$mms_mouse_y = mouse.get_pos_y - 540
	
	screen.effect[3].x = math.timetable($mms_mouse_x,0,$x_retio,[-960,0,0],[0,960,-($x_retio)])
	screen.effect[3].y = math.timetable($mms_mouse_y,0,$y_retio,[-540,0,0],[0,540,-($y_retio)])
	
	screen.effect[4].x = math.timetable($mms_mouse_x,0,($x_retio*2),[-960,0,0],[0,960,-($x_retio*2)])
	screen.effect[4].y = math.timetable($mms_mouse_y,0,($y_retio*2),[-540,0,0],[0,540,-($y_retio*2)])
	
	screen.effect[5].x = math.timetable($mms_mouse_x,0,($x_retio*3),[-960,0,0],[0,960,-($x_retio*3)])
	screen.effect[5].y = math.timetable($mms_mouse_y,0,($y_retio*3),[-540,0,0],[0,540,-($y_retio*3)])
	
	screen.effect[6].x = math.timetable($mms_mouse_x,0,($x_retio*4),[-960,0,0],[0,960,-($x_retio*4)])
	screen.effect[6].y = math.timetable($mms_mouse_y,0,($y_retio*4),[-540,0,0],[0,540,-($y_retio*4)])
	
}


command	$multiple_mouse_scroll_init(property $ch) {

	frame_action_ch[$ch].end

	screen.effect[3].init
	screen.effect[4].init
	screen.effect[5].init
	screen.effect[6].init

}


