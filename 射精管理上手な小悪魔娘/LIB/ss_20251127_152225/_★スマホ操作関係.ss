//-----------------------
//ƒXƒ}ƒz“®ìŠÖŒW

#Z00


//--------------------------------
//šƒXƒ}ƒz‰Šú‰»

command	$smaho_init(property $pos) {

	#INC_START

		#DEFINE <smaho_L>	-600
		#DEFINE <smaho_R>	 550
		
		#DEFINE <clip_left>	44
		#DEFINE <clip_top>	80
		#DEFINE <clip_right>	434
		#DEFINE <clip_bottom>	661

	#INC_END


	switch($pos) {
	
		case(0)
			$smaho_x = <smaho_init_x>
			$smaho_y = <smaho_init_y>
			
			$smaho_clip_left  = <smaho_init_x> + <clip_left>
			$smaho_clip_right = <smaho_init_x> + <clip_right>
			
			$smaho_clip_top    = <smaho_init_y> + <clip_top>
			$smaho_clip_bottom = <smaho_init_y> + <clip_bottom>
			
		case(1)
		
			$smaho_x = <smaho_init_x> + <smaho_L>
			$smaho_y = <smaho_init_y>
			
			$smaho_clip_left  = <smaho_init_x> + <clip_left> + <smaho_L>
			$smaho_clip_right = <smaho_init_x> + <clip_right> + <smaho_L>
			
			$smaho_clip_top    = <smaho_init_y> + <clip_top>
			$smaho_clip_bottom = <smaho_init_y> + <clip_bottom>
			
		case(2)
			$smaho_x = <smaho_init_x> + <smaho_R>
			$smaho_y = <smaho_init_y>
			
			$smaho_clip_left  = <smaho_init_x> + <clip_left> + <smaho_R>
			$smaho_clip_right = <smaho_init_x> + <clip_right> + <smaho_R>
			
			$smaho_clip_top    = <smaho_init_y> + <clip_top>
			$smaho_clip_bottom = <smaho_init_y> + <clip_bottom>
	
	}

	
	front.object[<smaho_objno>].create(_smaho_base,1,$smaho_x,$smaho_y)
	
	front.object[<smaho_objno>].child.resize(2)
	front.object[<smaho_objno>].layer = <smaho_objno>
	front.object[<smaho_objno>].order = <order_chrcg_front>
	
	front.object[<smaho_objno>].y_rep.resize(1)
	front.object[<smaho_objno>].y_rep[0] = 100
	front.object[<smaho_objno>].tr = 0
	
	front.object[<smaho_objno>].child[01].init
	front.object[<smaho_objno>].child[01].set_clip(1,$smaho_clip_left,$smaho_clip_top,$smaho_clip_right,$smaho_clip_bottom)
	
	
	front.object[<smaho_objno>].child[01].disp = 1
	
	
	front.object[<smaho_objno>].y_rep_eve[0].set(0,1000,0,2)
	front.object[<smaho_objno>].tr_eve.set(255,1000,0,2)

	front.object[<smaho_objno>].tr_eve.wait_key
	front.object[<smaho_objno>].y_rep_eve[0].end
	

}


//--------------------------------
//š‚g‚`‚l‚k‚h‚m‚d‹N“®


#INC_START

	#DEFINE <hamline_mess_obj> front.object[<smaho_objno>].child[01].child[02]

#INC_END


command $hamline_init(property $mode) {

	@pcm_line_call

	@ex_color_expand("1b6ab3")
	
	front.object[<smaho_objno>].child[01].child.resize(5)
	
	front.object[<smaho_objno>].child[01].child[00].create_rect(0,0,480,718,$ex_color_r,$ex_color_g,$ex_color_b,255,1)
	front.object[<smaho_objno>].child[01].child[01].create(a0_smaho_hamline_pattern,1,0,0,$mode)
	
	<hamline_mess_obj>.init
	<hamline_mess_obj>.child.resize(50)
	<hamline_mess_obj>.y_rep.resize(1)
	<hamline_mess_obj>.disp = 1
	
	if ($mode == 0) {front.object[<smaho_objno>].child[01].child[03].create(_smaho_hamline_base,1,0,0)}
	front.object[<smaho_objno>].child[01].child[04].create(_smaho_kage,1,0,0)


	$hamline_y = 140
	$hamline_message_count = 0
	$hamline_rep_y = 0
	
	
	@TIMEWAIT(1000)

}


#INC_START

	#PROPERTY $hamline_mess_window_width
	#PROPERTY $hamline_mess_window_height
	

#INC_END


command $hamline_message_L(property $iconNo,property $name : str,property $mess : str) {

	<hamline_mess_obj>.child[$hamline_message_count].init
	<hamline_mess_obj>.child[$hamline_message_count].child.resize(5)
	<hamline_mess_obj>.child[$hamline_message_count].x = 48
	<hamline_mess_obj>.child[$hamline_message_count].y = $hamline_y
	//<hamline_mess_obj>.child[$hamline_message_count].disp = 1
	
	<hamline_mess_obj>.child[$hamline_message_count].child[00].create(a0_smaho_hamline_icon,1,0,0,$iconNO)
	<hamline_mess_obj>.child[$hamline_message_count].child[01].create_string($name,1,80,2)
	<hamline_mess_obj>.child[$hamline_message_count].child[01].set_string_param(15,0,0,10,<white>,0,0)

	<hamline_mess_obj>.child[$hamline_message_count].child[02].create(_smaho_hamline_yajirusi_L,1,70,30)
	
	if ($mess.cnt > <hamline_message_new_line_len>) {
	
		L[00] = <hamline_message_new_line_len>
	
	}else {
	
		L[00] = $mess.cnt
	
	}
	
	
	L[01] = $mess.cnt / <hamline_message_new_line_len>
	
	
	$hamline_mess_window_width  = <hamline_message_font_size> + (L[00] * <hamline_message_font_size>) - 2
	$hamline_mess_window_height = <hamline_message_font_size> + ((L[01]+ 1) * <hamline_message_font_size>) + (L[01] * 3)
	
	@ex_color_expand("FFFFFF")
	<hamline_mess_obj>.child[$hamline_message_count].child[03].create_rect(0,0,$hamline_mess_window_width,$hamline_mess_window_height,$ex_color_r,$ex_color_g,$ex_color_b,255,1,85,20)
	
	<hamline_mess_obj>.child[$hamline_message_count].child[04].create_string($mess,1,90,30)
	<hamline_mess_obj>.child[$hamline_message_count].child[04].set_string_param(<hamline_message_font_size>,0,5,<hamline_message_new_line_len>,<black>,0,0)


	$hamline_y = $hamline_y + ($hamline_mess_window_height + 40) 

	<hamline_mess_obj>.child[$hamline_message_count].disp = 1

	if ($hamline_y >= 512) {
	
		$hamline_rep_y = 512 - $hamline_y
		
		<hamline_mess_obj>.y_rep_eve[0].set($hamline_rep_y,200,0,0)
	
	}

	$hamline_message_count = ($hamline_message_count + 1) % 50
	
	@pcm_line_talk

	
}





command $hamline_message_R(property $mess : str) {

	<hamline_mess_obj>.child[$hamline_message_count].init
	<hamline_mess_obj>.child[$hamline_message_count].child.resize(5)
	<hamline_mess_obj>.child[$hamline_message_count].x = 120
	<hamline_mess_obj>.child[$hamline_message_count].y = $hamline_y
	//<hamline_mess_obj>.child[$hamline_message_count].disp = 1
	
	<hamline_mess_obj>.child[$hamline_message_count].child[02].create(_smaho_hamline_yajirusi_R,1,275,25)
	
	if ($mess.cnt > <hamline_message_new_line_len>) {
	
		L[00] = <hamline_message_new_line_len>
	
	}else {
	
		L[00] = $mess.cnt
	
	}
	
	
	L[01] = $mess.cnt / <hamline_message_new_line_len>
	
	
	$hamline_mess_window_width  = <hamline_message_font_size> + (L[00] * <hamline_message_font_size>) - 2
	$hamline_mess_window_height = <hamline_message_font_size> + ((L[01]+ 1) * <hamline_message_font_size>) + (L[01] * 3)
	
	
	L[02] = (L[00] * <hamline_message_font_size>)
	
	@ex_color_expand("3cef3c")
	<hamline_mess_obj>.child[$hamline_message_count].child[03].create_rect(0,0,$hamline_mess_window_width,$hamline_mess_window_height,$ex_color_r,$ex_color_g,$ex_color_b,255,1,260 - L[02],16)
	
	<hamline_mess_obj>.child[$hamline_message_count].child[04].create_string($mess,1,266 - L[02],26)
	<hamline_mess_obj>.child[$hamline_message_count].child[04].set_string_param(<hamline_message_font_size>,0,5,<hamline_message_new_line_len>,<black>,0,0)


	$hamline_y = $hamline_y + ($hamline_mess_window_height + 40) 

	<hamline_mess_obj>.child[$hamline_message_count].disp = 1

	if ($hamline_y >= 512) {
	
		$hamline_rep_y = 512 - $hamline_y
		
		<hamline_mess_obj>.y_rep_eve[0].set($hamline_rep_y,200,0,0)
	
	}

	$hamline_message_count = ($hamline_message_count + 1) % 50
	
	@pcm_line_talk

	
}





command $hamline_stamp_L(property $iconNo,property $name : str,property $stampNo) {

	<hamline_mess_obj>.child[$hamline_message_count].init
	<hamline_mess_obj>.child[$hamline_message_count].child.resize(5)
	<hamline_mess_obj>.child[$hamline_message_count].x = 48
	<hamline_mess_obj>.child[$hamline_message_count].y = $hamline_y
	//<hamline_mess_obj>.child[$hamline_message_count].disp = 1
	
	<hamline_mess_obj>.child[$hamline_message_count].child[00].create(a0_smaho_hamline_icon,1,0,0,$iconNO)
	<hamline_mess_obj>.child[$hamline_message_count].child[01].create_string($name,1,71,2)
	<hamline_mess_obj>.child[$hamline_message_count].child[01].set_string_param(10,0,0,10,<white>,0,0)

	//<hamline_mess_obj>.child[$hamline_message_count].child[02].create(_smaho_hamline_yajirusi_L,1,57,25)
	

	$hamline_mess_window_width  = 207
	$hamline_mess_window_height = 207
	
	//@ex_color_expand("FFFFFF")
	//<hamline_mess_obj>.child[$hamline_message_count].child[03].create_rect(0,0,$hamline_mess_window_width,$hamline_mess_window_height,$ex_color_r,$ex_color_g,$ex_color_b,255,1,70,16)
	
	<hamline_mess_obj>.child[$hamline_message_count].child[04].create(a0_smaho_hamline_stamp,1,60,20,$stampNo)


	$hamline_y = $hamline_y + ($hamline_mess_window_height + 20) 

	<hamline_mess_obj>.child[$hamline_message_count].disp = 1

	if ($hamline_y >= 512) {
	
		$hamline_rep_y = 512 - $hamline_y
		
		<hamline_mess_obj>.y_rep_eve[0].set($hamline_rep_y,200,0,0)
	
	}

	$hamline_message_count = ($hamline_message_count + 1) % 50

	@pcm_line_talk

	
}



command $hamline_stamp_R(property $stampNo) {

	<hamline_mess_obj>.child[$hamline_message_count].init
	<hamline_mess_obj>.child[$hamline_message_count].child.resize(5)
	<hamline_mess_obj>.child[$hamline_message_count].x = 120
	<hamline_mess_obj>.child[$hamline_message_count].y = $hamline_y
	//<hamline_mess_obj>.child[$hamline_message_count].disp = 1
	
	//<hamline_mess_obj>.child[$hamline_message_count].child[02].create(_smaho_hamline_yajirusi_R,1,270,25)
	
	
	
	$hamline_mess_window_width  = 165
	$hamline_mess_window_height = 165
	
	
	//@ex_color_expand("3cef3c")
	//<hamline_mess_obj>.child[$hamline_message_count].child[03].create_rect(0,0,$hamline_mess_window_width,$hamline_mess_window_height,$ex_color_r,$ex_color_g,$ex_color_b,255,1,260 - L[02],16)
	
	<hamline_mess_obj>.child[$hamline_message_count].child[04].create(a0_smaho_hamline_stamp,1,100,20,$stampNo)


	$hamline_y = $hamline_y + ($hamline_mess_window_height + 20) 

	<hamline_mess_obj>.child[$hamline_message_count].disp = 1

	if ($hamline_y >= 512) {
	
		$hamline_rep_y = 512 - $hamline_y
		
		<hamline_mess_obj>.y_rep_eve[0].set($hamline_rep_y,200,0,0)
	
	}

	$hamline_message_count = ($hamline_message_count + 1) % 50
	
	@pcm_line_talk

	
}



command $hamline_image_L(property $iconNo,property $name : str,property $filename : str,property $patNo) {

	<hamline_mess_obj>.child[$hamline_message_count].init
	<hamline_mess_obj>.child[$hamline_message_count].child.resize(5)
	<hamline_mess_obj>.child[$hamline_message_count].x = 48
	<hamline_mess_obj>.child[$hamline_message_count].y = $hamline_y
	//<hamline_mess_obj>.child[$hamline_message_count].disp = 1
	
	<hamline_mess_obj>.child[$hamline_message_count].child[00].create(a0_smaho_hamline_icon,1,0,0,$iconNO)
	<hamline_mess_obj>.child[$hamline_message_count].child[01].create_string($name,1,71,2)
	<hamline_mess_obj>.child[$hamline_message_count].child[01].set_string_param(10,0,0,10,<white>,0,0)

	//<hamline_mess_obj>.child[$hamline_message_count].child[02].create(_smaho_hamline_yajirusi_L,1,57,25)
	

	<hamline_mess_obj>.child[$hamline_message_count].child[04].create($filename,1,72,20,$patNo)

	$hamline_mess_window_width  = <hamline_mess_obj>.child[$hamline_message_count].child[04].get_size_x($patNo)
	$hamline_mess_window_height = <hamline_mess_obj>.child[$hamline_message_count].child[04].get_size_y($patNo)
	
	
	//@ex_color_expand("FFFFFF")
	//<hamline_mess_obj>.child[$hamline_message_count].child[03].create_rect(0,0,$hamline_mess_window_width,$hamline_mess_window_height,$ex_color_r,$ex_color_g,$ex_color_b,255,1,70,16)
	
	


	$hamline_y = $hamline_y + ($hamline_mess_window_height + 25) 

	<hamline_mess_obj>.child[$hamline_message_count].disp = 1

	if ($hamline_y >= 512) {
	
		$hamline_rep_y = 512 - $hamline_y
		
		<hamline_mess_obj>.y_rep_eve[0].set($hamline_rep_y,200,0,0)
	
	}

	$hamline_message_count = ($hamline_message_count + 1) % 50

	@pcm_line_talk

	
}



//--------------------------------
//šƒXƒ}ƒzI—¹

command $smaho_exit() {

	@pcm_line_end

	front.object[<smaho_objno>].child[01].init

	front.object[<smaho_objno>].y_rep_eve[0].set(100,1000,0,2)
	front.object[<smaho_objno>].tr_eve.set(0,1000,0,2)


}



//---------------------------------
//ˆÈ‰º—á•¶


close
$smaho_init(0)	//’†‰›‚Å‹N“®
$hamline_init(0)

$hamline_message_R("—pˆÓ‚Å‚«‚½‚©H")@kwt

$hamline_message_L(1,"—DŠC","‚¤‚ñ@‚¢‚Â‚Å‚às‚¯‚é‚æ")@kwt

$hamline_message_L(1,"—DŠC","ˆè‚¿‚á‚ñAQ‚Ä‚é‚æ‚ËH")@kwt

$hamline_message_R("‚ ‚ @‚³‚Á‚«Šm”F‚µ‚Æ‚¢‚½@e•ƒ‚½‚¿‚à‘åä•v")@kwt

$hamline_stamp_L(1,"—DŠC",1) @kwt

$hamline_message_L(1,"—DŠC","‚³‚·‚ª‚Å‚·‘å²")@kwt

$hamline_message_L(1,"—DŠC","‚»‚ê‚¶‚á@‚T•ªŒã‚É•”‰®‘O‚ÉW‡‚Å‚¢‚¢‚æ‚Ë")@kwt

$hamline_message_R("‚n‚j")@kwt


close
$smaho_exit() TIMEWAIT(1000)







