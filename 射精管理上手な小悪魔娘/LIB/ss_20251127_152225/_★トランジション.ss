//----------------------------------------
//ÉgÉâÉìÉWÉVÉáÉì

#Z00



command	$transition(property $Patno,property $BgName : str,property $waittime,property $system_flag) {

	close
	syscom.set_syscom_menu_disable
	syscom.set_msg_back_enable_flag(0)
	syscom.set_save_enable_flag(0)
	
	@pcmstop(1,2000)		//Åö2022.05.28 0ÇÕçƒê∂ÇµÇƒÇ®Ç≠ÅAä¬ã´âπÇ≈Ç†ÇÈ1ÇÕé~ÇﬂÇÈ
	
	$trans_in_flag = 0

	switch($PatNo) {
	
		case(1)	goto #trans01		//è≠éûä‘åoâﬂ
		case(10)	$trans_in_flag = 1 goto #trans01
		case(11)	goto #trans01_out
		
		case(2) goto #trans02		//éûä‘åoâﬂ
		case(20)	$trans_in_flag = 1 goto #trans02
		case(21)	goto #trans02_out
		
		case(3) goto #trans03		//èÍñ ì]ä∑
		case(30)	$trans_in_flag = 1 goto #trans03
		case(31)	goto #trans03_out
		
		case(4) goto #trans04		//èÍñ ì]ä∑2
		case(40)	$trans_in_flag = 1 goto #trans04
		case(41)	goto #trans04_out
		
		case(5) goto #trans05		//èÍñ ì]ä∑2
		case(50)	$trans_in_flag = 1 goto #trans05
		case(51)	goto #trans05_out
		
		
		default goto #trans_end
		
	}



#trans01


	mask[10].init
	mask[11].init

	mask[10].create(_transition_mask01)
	mask[11].create(_transition_mask02)
	
	mask[10].y = -1200
	mask[11].y =  1200
	

	front.object[<transition_objno>].init
	front.object[<transition_objno>].child.resize(5)
	front.object[<transition_objno>].layer = <transition_objno>
	front.object[<transition_objno>].order = <order_transition> //Åö2024.2.8í«â¡
	front.object[<transition_objno>].disp = 1
	
	front.object[<transition_objno>].child[0].create(_transition01,1,960,540,0)
	front.object[<transition_objno>].child[0].child.resize(2)
	front.object[<transition_objno>].child[0].y_rep.resize(1)
	front.object[<transition_objno>].child[0].y_rep[0] = -1200
	front.object[<transition_objno>].child[0].set_scale(1500,1500)
	
	front.object[<transition_objno>].child[0].child[0].create(_transition01,1,2250,0,2)
	front.object[<transition_objno>].child[0].child[0].mask_no = 10

	front.object[<transition_objno>].child[1].create(_transition01,1,960,540,1)
	front.object[<transition_objno>].child[1].child.resize(2)
	front.object[<transition_objno>].child[1].y_rep.resize(1)
	front.object[<transition_objno>].child[1].y_rep[0] = 1200
	front.object[<transition_objno>].child[1].set_scale(1500,1500)

	front.object[<transition_objno>].child[1].child[0].create(_transition01,1,-2250,0,3)
	front.object[<transition_objno>].child[1].child[0].mask_no = 11
	
	front.object[<transition_objno>].child[2].create(a0_transition_chr,1,960,540,1)
	front.object[<transition_objno>].child[2].x_rep.resize(1)
	front.object[<transition_objno>].child[2].x_rep[0] = 2250
	
	
	
	@se_scene_change_alone2

	
	front.object[<transition_objno>].child[0].y_rep_eve[0].set(0,500,0,2)
	front.object[<transition_objno>].child[1].y_rep_eve[0].set(0,500,0,2)
	
	front.object[<transition_objno>].child[0].child[0].x_eve.set(0,500,200,2)
	front.object[<transition_objno>].child[1].child[0].x_eve.set(0,500,200,2)

	front.object[<transition_objno>].child[2].x_rep_eve[0].set(0,500,200,2)	
	
	
	mask[10].y_eve.set(0,500,0,2)
	mask[11].y_eve.set(0,500,0,2)
	
	front.object[<transition_objno>].child[2].x_rep_eve[0].wait
	
	
	if ($trans_in_flag == 1) {goto #trans_end}
	
	@BG($BGName,1,0)
	
	@camera_work_default(0)	//Åö2023.01.24í«â¡
	//@chr_oldcg_init_all		//Åö2023.3.6í«â¡
	
	
#trans01_out
	
	

	
	front.object[<transition_objno>].child[3].create(_transition01,1,960,540,11)
	front.object[<transition_objno>].child[4].create(_transition01,1,960,540,12)
	
	front.object[<transition_objno>].child[2].rotate_x_eve.set(3600,500,0,2)
	front.object[<transition_objno>].child[2].rotate_x_eve.wait
	
	

	front.object[<transition_objno>].child[0].y_rep_eve[0].set(-1200,500,0,1)
	front.object[<transition_objno>].child[1].y_rep_eve[0].set( 1200,500,0,1)
	
	
	front.object[<transition_objno>].child[3].init
	front.object[<transition_objno>].child[4].init
	
	front.object[<transition_objno>].child[2].x_rep_eve[0].set(-2250,500,0,1)	
	
	@TIMEWAIT($waittime)
	

	goto #trans_end


#trans02


	front.object[<transition_objno>].init
	front.object[<transition_objno>].child.resize(5)
	front.object[<transition_objno>].layer = <transition_objno>
	front.object[<transition_objno>].order = <order_transition> //Åö2024.2.8í«â¡
	front.object[<transition_objno>].disp = 1
	
	front.object[<transition_objno>].child[0].create(_transition02,1,960,540,0)
	front.object[<transition_objno>].child[0].child.resize(2)
	front.object[<transition_objno>].child[0].y_rep.resize(1)
	front.object[<transition_objno>].child[0].y_rep[0] = -1200
	front.object[<transition_objno>].child[0].set_scale(1500,1500)
	
	front.object[<transition_objno>].child[0].child[0].create(_transition02,1,0,-1000,2)
	
	front.object[<transition_objno>].child[1].create(_transition02,1,960, 540,1)
	front.object[<transition_objno>].child[1].child.resize(2)
	front.object[<transition_objno>].child[1].y_rep.resize(1)
	front.object[<transition_objno>].child[1].y_rep[0] = 1200
	front.object[<transition_objno>].child[1].set_scale(1500,1500)
	
	front.object[<transition_objno>].child[1].child[0].create(_transition02,1,0,1000,3)
	
	front.object[<transition_objno>].child[2].create(a0_transition_chr,1,960,540,2)
	front.object[<transition_objno>].child[2].x_rep.resize(1)
	front.object[<transition_objno>].child[2].x_rep[0] = 2250
	
	
	
	@se_scene_change_alone

	
	front.object[<transition_objno>].child[0].y_rep_eve[0].set(0,500,0,2)
	front.object[<transition_objno>].child[1].y_rep_eve[0].set(0,500,0,2)
	
	front.object[<transition_objno>].child[0].child[0].y_eve.set(0,500,200,2)
	front.object[<transition_objno>].child[1].child[0].y_eve.set(0,500,200,2)

	front.object[<transition_objno>].child[2].x_rep_eve[0].set(0,500,200,2)	
	
		
	front.object[<transition_objno>].child[2].x_rep_eve[0].wait
	

	if ($trans_in_flag == 1) {goto #trans_end}
	
	@BG($BGName,1,0)

	@camera_work_default(0)	//Åö2023.01.24í«â¡
	//@chr_oldcg_init_all		//Åö2023.3.6í«â¡
	

#trans02_out

	
	
	
	front.object[<transition_objno>].child[3].create(_transition02,1,960,540,11)
	front.object[<transition_objno>].child[4].create(_transition02,1,960,540,12)
	
	front.object[<transition_objno>].child[2].rotate_x_eve.set(7200,1000,0,2)
	front.object[<transition_objno>].child[2].rotate_x_eve.wait
	
	

	front.object[<transition_objno>].child[0].y_rep_eve[0].set(-1200,500,0,1)
	front.object[<transition_objno>].child[1].y_rep_eve[0].set( 1200,500,0,1)
	
	
	front.object[<transition_objno>].child[3].init
	front.object[<transition_objno>].child[4].init
	
	front.object[<transition_objno>].child[2].x_rep_eve[0].set(-2250,500,0,1)	
	
	@TIMEWAIT($waittime)
	

	goto #trans_end



#trans03

	front.object[<transition_objno>].init
	front.object[<transition_objno>].child.resize(20)
	front.object[<transition_objno>].layer = <transition_objno>
	front.object[<transition_objno>].order = <order_transition> //Åö2024.2.8í«â¡
	front.object[<transition_objno>].set_center_rep(960,540)
	front.object[<transition_objno>].disp = 1

	
	front.object[<transition_objno>].child[00].create(_transition03,1,960,540)
	front.object[<transition_objno>].child[00].color_r = 195
	front.object[<transition_objno>].child[00].color_g = 185
	front.object[<transition_objno>].child[00].color_b = 155
	front.object[<transition_objno>].child[00].color_rate = 255
	front.object[<transition_objno>].child[00].x_rep.resize(2)
	front.object[<transition_objno>].child[00].set_scale(1500,1500)
	
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00]].create(_transition03,1,960,540 - (L[00] * 225))
		front.object[<transition_objno>].child[L[00]].x_rep.resize(2)

		
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00]].color_r = 195
			front.object[<transition_objno>].child[L[00]].color_g = 185
			front.object[<transition_objno>].child[L[00]].color_b = 155
			
			//front.object[<transition_objno>].child[L[00]].color_r = 246
			//front.object[<transition_objno>].child[L[00]].color_g = 255
			//front.object[<transition_objno>].child[L[00]].color_b = 0
			
			front.object[<transition_objno>].child[L[00]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00]].color_r = 54
			front.object[<transition_objno>].child[L[00]].color_g = 41
			front.object[<transition_objno>].child[L[00]].color_b = 8
		
			//front.object[<transition_objno>].child[L[00]].color_r = 150
			//front.object[<transition_objno>].child[L[00]].color_g = 160
			//front.object[<transition_objno>].child[L[00]].color_b = 0
			front.object[<transition_objno>].child[L[00]].color_rate = 255
			
		}

		front.object[<transition_objno>].child[L[00]].set_scale(1500,1500)
		
	}
	
	L[01] = 5
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960,540 + (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 195
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 185
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 155
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 54
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 41
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 8
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}

		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)
		
	}

	front.object[<transition_objno>].rotate_z = 600
	
	
	for (L[00] = 0,L[00] <= 10,L[00] += 1) {
	
		//if (L[00] >= 1) {
		//	front.object[<transition_objno>].child[L[00]].x_rep[1] = - math.rand(0,50)
		//}
	
		front.object[<transition_objno>].child[L[00]].scale_y = 0
		front.object[<transition_objno>].child[L[00]].x_rep[0] = -2250
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(1500,500,L[00] * 20,2)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(0,500,L[00] * 20,2)
		
	}
	
	@se_scene_change_up

	
	front.object[<transition_objno>].child[10].scale_y_eve.wait
	
	
	if ($trans_in_flag == 1) {goto #trans_end}
	
	@BG($BGName,1,0)
	
	@camera_work_default(0)	//Åö2023.01.24í«â¡
	//@chr_oldcg_init_all		//Åö2023.3.6í«â¡
	
	
#trans03_out

	
	for (L[00] = 0,L[00] <= 10,L[00] += 1) {
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(0,500,L[00] * 20,2)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(2250,500,L[00] * 20,2)
		
	}
	
	front.object[<transition_objno>].child[10].scale_y_eve.wait
	
	@TIMEWAIT($waittime)
	
	goto #trans_end





#trans04

	front.object[<transition_objno>].init
	front.object[<transition_objno>].child.resize(30)
	front.object[<transition_objno>].layer = <transition_objno>
	front.object[<transition_objno>].order = <order_transition> //Åö2024.2.8í«â¡
	front.object[<transition_objno>].set_center_rep(960,540)
	front.object[<transition_objno>].disp = 1

	
	front.object[<transition_objno>].child[00].create(_transition03,1,960 - 960,540)
	front.object[<transition_objno>].child[00].color_r = 0
	front.object[<transition_objno>].child[00].color_g = 255
	front.object[<transition_objno>].child[00].color_b = 186
	front.object[<transition_objno>].child[00].color_rate = 255
	front.object[<transition_objno>].child[00].x_rep.resize(2)
	front.object[<transition_objno>].child[00].set_scale(1500,1500)
	
	
	//Åöç∂ë§
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00]].create(_transition03,1,960 - 960,540 - (L[00] * 225))
		front.object[<transition_objno>].child[L[00]].x_rep.resize(2)
		
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00]].color_r = 0
			front.object[<transition_objno>].child[L[00]].color_g = 255
			front.object[<transition_objno>].child[L[00]].color_b = 186
			front.object[<transition_objno>].child[L[00]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00]].color_r = 0
			front.object[<transition_objno>].child[L[00]].color_g = 160
			front.object[<transition_objno>].child[L[00]].color_b = 120
			front.object[<transition_objno>].child[L[00]].color_rate = 255
			
		}
		
		front.object[<transition_objno>].child[L[00]].set_scale(1500,1500)

	}
	
	L[01] = 5
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960 - 960,540 + (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 0
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 255
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 186
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 0
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 160
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 120
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}
		
		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)

	}
	
	
	
	//ÅöâE
	
	front.object[<transition_objno>].child[11].create(_transition03,1,960 + 960,540)
	front.object[<transition_objno>].child[11].color_r = 0
	front.object[<transition_objno>].child[11].color_g = 255
	front.object[<transition_objno>].child[11].color_b = 186
	front.object[<transition_objno>].child[11].color_rate = 255
	front.object[<transition_objno>].child[11].x_rep.resize(2)
	front.object[<transition_objno>].child[11].set_scale(1500,1500)
	
	L[01] = 11
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960 + 960,540 - (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)

		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 0
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 255
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 186
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 0
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 160
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 120
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}

		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)
		
	}
	
	L[01] = 16
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960 + 960,540 + (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 0
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 255
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 186
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 0
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 160
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 120
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}
		
		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)

	}


	front.object[<transition_objno>].rotate_z = 600
	
	
	for (L[00] = 0,L[00] <= 10,L[00] += 1) {
	
		//if (L[00] >= 1) {
		//	front.object[<transition_objno>].child[L[00]].x_rep[1] = - math.rand(0,50)
		//}
	
		front.object[<transition_objno>].child[L[00]].scale_y = 0
		front.object[<transition_objno>].child[L[00]].x_rep[0] = -2250
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(1500,500,L[00] * 20,2)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(0,500,L[00] * 20,2)
		
	}
	
	for (L[00] = 11,L[00] <= 21,L[00] += 1) {
	
		//if (L[00] >= 1) {
		//	front.object[<transition_objno>].child[L[00]].x_rep[1] = - math.rand(0,50)
		//}
	
		front.object[<transition_objno>].child[L[00]].scale_y = 0
		front.object[<transition_objno>].child[L[00]].x_rep[0] = 2250
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(1500,500,(L[00] - 11) * 20,2)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(0,500,(L[00] - 11) * 20,2)
		
	}
	
	@se_scene_change_down

	
	front.object[<transition_objno>].child[21].scale_y_eve.wait
	
	
	if ($trans_in_flag == 1) {goto #trans_end}
	
	@BG($BGName,1,0)
	
	@camera_work_default(0)	//Åö2023.01.24í«â¡
	//@chr_oldcg_init_all		//Åö2023.3.6í«â¡
	
	
#trans04_out

	
	for (L[00] = 0,L[00] <= 10,L[00] += 1) {
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(0,500,L[00] * 20,1)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(-2250,500,L[00] * 20,1)
		
	}
	
	for (L[00] = 11,L[00] <= 21,L[00] += 1) {
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(0,500,(L[00] - 11) * 20,1)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(2250,500,(L[00] - 11) * 20,1)
		
	}
	
	front.object[<transition_objno>].child[21].scale_y_eve.wait
	
	@TIMEWAIT($waittime)
	
	goto #trans_end






#trans05

	front.object[<transition_objno>].init
	front.object[<transition_objno>].child.resize(50)
	front.object[<transition_objno>].layer = <transition_objno>
	front.object[<transition_objno>].order = <order_transition> //Åö2024.2.8í«â¡
	front.object[<transition_objno>].set_center_rep(960,540)
	front.object[<transition_objno>].disp = 1

	
	front.object[<transition_objno>].child[00].create(_transition03,1,860 - 860,540)
	front.object[<transition_objno>].child[00].color_r = 247
	front.object[<transition_objno>].child[00].color_g = 132
	front.object[<transition_objno>].child[00].color_b = 221
	front.object[<transition_objno>].child[00].color_rate = 255
	front.object[<transition_objno>].child[00].x_rep.resize(2)
	front.object[<transition_objno>].child[00].set_scale(1500,1500)
	
	
	//Åöç∂ë§
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00]].create(_transition03,1,960 - 960,540 - (L[00] * 225))
		front.object[<transition_objno>].child[L[00]].x_rep.resize(2)
		
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00]].color_r = 247
			front.object[<transition_objno>].child[L[00]].color_g = 132
			front.object[<transition_objno>].child[L[00]].color_b = 221
			front.object[<transition_objno>].child[L[00]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00]].color_r = 221
			front.object[<transition_objno>].child[L[00]].color_g = 63
			front.object[<transition_objno>].child[L[00]].color_b = 167
			front.object[<transition_objno>].child[L[00]].color_rate = 255
			
		}
		
		front.object[<transition_objno>].child[L[00]].set_scale(1500,1500)

	}
	
	L[01] = 5
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960 - 960,540 + (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 247
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 132
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 221
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 221
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 63
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 167
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}
		
		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)

	}
	
	
	
	//ÅöâE
	
	front.object[<transition_objno>].child[11].create(_transition03,1,960 + 960,540)
	front.object[<transition_objno>].child[11].color_r = 247
	front.object[<transition_objno>].child[11].color_g = 132
	front.object[<transition_objno>].child[11].color_b = 221
	front.object[<transition_objno>].child[11].color_rate = 255
	front.object[<transition_objno>].child[11].x_rep.resize(2)
	front.object[<transition_objno>].child[11].set_scale(1500,1500)
	
	L[01] = 11
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960 + 960,540 - (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)
		
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 247
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 132
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 221
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 221
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 63
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 167
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}
		
		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)
	}
	
	L[01] = 16
	
	for (L[00] = 1,L[00] <= 5,L[00] += 1) {
	
		front.object[<transition_objno>].child[L[00] + L[01]].create(_transition03,1,960 + 960,540 + (L[00] * 225))
		front.object[<transition_objno>].child[L[00] + L[01]].x_rep.resize(2)
		
		if (L[00] % 2 == 0) {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 247
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 132
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 221
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
				
		}else {
		
			front.object[<transition_objno>].child[L[00] + L[01]].color_r = 221
			front.object[<transition_objno>].child[L[00] + L[01]].color_g = 63
			front.object[<transition_objno>].child[L[00] + L[01]].color_b = 167
			front.object[<transition_objno>].child[L[00] + L[01]].color_rate = 255
			
		}

		front.object[<transition_objno>].child[L[00] + L[01]].set_scale(1500,1500)
		
	}


	front.object[<transition_objno>].rotate_z = 0
	front.object[<transition_objno>].set_scale(700,700)
	
	
	
	for (L[00] = 0,L[00] <= 10,L[00] += 1) {
	
		//if (L[00] >= 1) {
		//	front.object[<transition_objno>].child[L[00]].x_rep[1] = - math.rand(0,50)
		//}
	
		front.object[<transition_objno>].child[L[00]].scale_y = 0
		front.object[<transition_objno>].child[L[00]].x_rep[0] = -2250
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(1500,500,L[00] * 20,2)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(0,500,L[00] * 20,2)
		
	}
	
	for (L[00] = 11,L[00] <= 21,L[00] += 1) {
	
		//if (L[00] >= 1) {
		//	front.object[<transition_objno>].child[L[00]].x_rep[1] = - math.rand(0,50)
		//}
	
		front.object[<transition_objno>].child[L[00]].scale_y = 0
		front.object[<transition_objno>].child[L[00]].x_rep[0] = 2250
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(1500,500,(L[00] - 11) * 20,2)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(0,500,(L[00] - 11) * 20,2)
		
	}
	
	
	front.object[<transition_objno>].child[49].create(a0_transition_chr,1,960,540,3)
	front.object[<transition_objno>].child[49].set_scale(0,0)
	
	front.object[<transition_objno>].child[49].scale_x_eve.set(1500,500,0,2)
	front.object[<transition_objno>].child[49].scale_y_eve.set(1500,500,0,2)
	
	front.object[<transition_objno>].child[49].rotate_x_eve.set(10800,500,0,2)
	
	
	@se_scene_change_down

	
	front.object[<transition_objno>].child[21].scale_y_eve.wait
	
	
	if ($trans_in_flag == 1) {goto #trans_end}
	
	@BG($BGName,1,0)
	
	@camera_work_default(0)	//Åö2023.01.24í«â¡
	//@chr_oldcg_init_all		//Åö2023.3.6í«â¡
	
	
	
#trans05_out

	
	for (L[00] = 0,L[00] <= 10,L[00] += 1) {
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(0,500,L[00] * 20,1)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(-2250,500,L[00] * 20,1)
		
	}
	
	for (L[00] = 11,L[00] <= 21,L[00] += 1) {
		
		front.object[<transition_objno>].child[L[00]].scale_y_eve.set(0,500,(L[00] - 11) * 20,1)
		front.object[<transition_objno>].child[L[00]].x_rep_eve[0].set(2250,500,(L[00] - 11) * 20,1)
		
	}
	
	front.object[<transition_objno>].child[49].patno = 1
	front.object[<transition_objno>].child[49].scale_x_eve.set(4000,500,0,2)
	front.object[<transition_objno>].child[49].scale_y_eve.set(4000,500,0,2)
	front.object[<transition_objno>].child[49].tr_eve.set(0,1000,0,1)
	
	
	front.object[<transition_objno>].child[21].scale_y_eve.wait
	
	@TIMEWAIT($waittime)
	
	goto #trans_end
























#trans_end

	if ($system_flag == 0) {

		syscom.set_syscom_menu_enable
		syscom.set_msg_back_enable_flag(1)
		syscom.set_save_enable_flag(1)

	}

	return


}


