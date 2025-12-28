#Z00
//----------------------------------
//スライダーの稼働する高さを設定

#INC_START

#MACRO		@tate_slider_page_height_settei

					$page_height[<slider_sceneselect>] = 5000
					$page_height[<slider_cgmode>] = 1600
					$page_height[<slider_kaisou>] = 4200
					

#INC_END


command $create_tate_slider(property $slider_no) {

	@tate_slider_page_height_settei
	
	<slider_bg_obj>.y_rep.resize(2)
	
	$slider_index = $slider_no
	$slider_objno = <slider_obj>
	

	front.object[$slider_objno].create(_sliderHD,1,1880,539)
	front.object[$slider_objno].layer = $slider_objno
	front.object[$slider_objno].order = <order_screen_normal>
	front.object[$slider_objno].child.resize(3)
		
	front.object[$slider_objno].child[00].create(_sliderHD_bt,1,0,-438)
	front.object[$slider_objno].child[00].y_rep.resize(1)
	
	front.object[$slider_objno].child[00].set_button(99999,0,10,-1)
	front.object[$slider_objno].child[00].set_button_pushkeep(1)
	
	front.object[$slider_objno].child[01].create(_sliderHD_up_bt,1,0,-513)
	front.object[$slider_objno].child[01].y_rep.resize(1)
	
	front.object[$slider_objno].child[01].set_button(99997,0,10,-1)
	front.object[$slider_objno].child[01].set_button_pushkeep(1)
	
	front.object[$slider_objno].child[02].create(_sliderHD_down_bt,1,0,513)
	front.object[$slider_objno].child[02].y_rep.resize(1)
	
	front.object[$slider_objno].child[02].set_button(99998,0,10,-1)
	front.object[$slider_objno].child[02].set_button_pushkeep(1)
	
}


command $tate_slider_behavior {

	if ($LS_btn0_push == 99999) {
	
		front.object[$slider_objno].child[00].y_rep[00] = math.limit(0,mouse.pos_y-100,876)
		@page_y_kioku($slider_index) = math.timetable(front.object[$slider_objno].child[00].y_rep[00],0,0,[0,876,$page_height[$slider_index]])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku($slider_index)
		
	}
	
	if (mouse.wheel < 0) {
	
		@page_y_kioku($slider_index) = math.limit(0,@page_y_kioku($slider_index) - 100,$page_height[$slider_index])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku($slider_index)
	
	}

	
	if (mouse.wheel > 0) {
	
		@page_y_kioku($slider_index) = math.limit(0,@page_y_kioku($slider_index) + 100,$page_height[$slider_index])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku($slider_index)
	
	}
	
	
	if ($LS_btn0_push == 99997) {
	
		@page_y_kioku($slider_index) = math.limit(0,@page_y_kioku($slider_index) - 20,$page_height[$slider_index])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku($slider_index)
	
	}

	if ($LS_btn0_push == 99998) {
	
		@page_y_kioku($slider_index) = math.limit(0,@page_y_kioku($slider_index) + 20,$page_height[$slider_index])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku($slider_index)
	
	}
	

}


command $set_tate_slider_param{

	front.object[$slider_objno].child[00].y_rep[00] = math.timetable(@page_y_kioku($slider_index),0,0,[0,$page_height[$slider_index],876])

}




