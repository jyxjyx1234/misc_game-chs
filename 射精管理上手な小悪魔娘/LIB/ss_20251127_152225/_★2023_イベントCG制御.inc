
//----------------------------
//イベントＣＧ処理簡略化

/*--

	イベントＣＧを1920x1080に固定化したので、それに伴って処理を簡略化する。
	
	■基本的な記述
	
	@eventcg_base_setup(CG001,_,"_mayu","_eye","_mouth")
	@eventcg_start(CG001_00,0,_,"01","01","01")
	
	
	//差分変更
	
	@eventcg_change(CG001_00,500,_,"02","02","02")
	
	
	rep[0] : 拡縮モードで使用
	rep[1] : エフェクトで使用
	

--*/


#DEFINE <eventcg_default_scale>		1000

#PROPERTY	$eventcg_tmp

#PROPERTY	$eventcg_base			: str
#PROPERTY	$eventcg_parts			: strlist[20]
#PROPERTY	$eventcg_parts_blend	: strlist[20]

#PROPERTY	$eventcg_init_scale
#PROPERTY	$eventcg_init_pos_x
#PROPERTY	$eventcg_init_pos_y

;;★todo メガネ
#PROPERTY	$eventcg_megane_search : str

	

#MACRO	@eventcg_base_setup(@basefile,@obj10(""),@obj11(""),@obj12(""),@obj13(""),@obj14(""),@obj15(""),@obj16(""),@obj17(""),@obj18(""),@obj19(""))

			$eventcg_parts.init
			$eventcg_parts_blend.init
			
			$eventcg_base = @basefile
			$eventcg_parts[10] = @obj10
			$eventcg_parts[11] = @obj11
			$eventcg_parts[12] = @obj12
			$eventcg_parts[13] = @obj13
			$eventcg_parts[14] = @obj14
			$eventcg_parts[15] = @obj15
			$eventcg_parts[16] = @obj16
			$eventcg_parts[17] = @obj17
			$eventcg_parts[18] = @obj18
			$eventcg_parts[19] = @obj19
			
			$eventcg_init_scale = <eventcg_default_scale>
			$eventcg_init_pos_x = 0
			$eventcg_init_pos_y = 0
			$eventcg_tmp = 0
			


#MACRO	@eventcg_parts_blend_set(@obj0,@obj1("_"),@obj2("_"),@obj3("_"),@obj4("_"),@obj5("_"),@obj6("_"),@obj7("_"),@obj8("_"),@obj9("_"))

			if (@Obj0 != "_") {$eventcg_parts_blend[10] = $eventcg_base + $eventcg_parts[10] + @obj0}
			if (@Obj1 != "_") {$eventcg_parts_blend[11] = $eventcg_base + $eventcg_parts[11] + @obj1}
			if (@Obj2 != "_") {$eventcg_parts_blend[12] = $eventcg_base + $eventcg_parts[12] + @obj2}
			if (@Obj3 != "_") {$eventcg_parts_blend[13] = $eventcg_base + $eventcg_parts[13] + @obj3}
			if (@Obj4 != "_") {$eventcg_parts_blend[14] = $eventcg_base + $eventcg_parts[14] + @obj4}
			if (@Obj5 != "_") {$eventcg_parts_blend[15] = $eventcg_base + $eventcg_parts[15] + @obj5}
			if (@Obj6 != "_") {$eventcg_parts_blend[16] = $eventcg_base + $eventcg_parts[16] + @obj6}
			if (@Obj7 != "_") {$eventcg_parts_blend[17] = $eventcg_base + $eventcg_parts[17] + @obj7}
			if (@Obj8 != "_") {$eventcg_parts_blend[18] = $eventcg_base + $eventcg_parts[18] + @obj8}
			if (@Obj9 != "_") {$eventcg_parts_blend[19] = $eventcg_base + $eventcg_parts[19] + @obj9}

			if (@Obj0 == "") {$eventcg_parts_blend[10] = ""}
			if (@Obj1 == "") {$eventcg_parts_blend[11] = ""}
			if (@Obj2 == "") {$eventcg_parts_blend[12] = ""}
			if (@Obj3 == "") {$eventcg_parts_blend[13] = ""}
			if (@Obj4 == "") {$eventcg_parts_blend[14] = ""}
			if (@Obj5 == "") {$eventcg_parts_blend[15] = ""}
			if (@Obj6 == "") {$eventcg_parts_blend[16] = ""}
			if (@Obj7 == "") {$eventcg_parts_blend[17] = ""}
			if (@Obj8 == "") {$eventcg_parts_blend[18] = ""}
			if (@Obj9 == "") {$eventcg_parts_blend[19] = ""}
			
			;;★todo メガネ
			
			// if (@メガネかけない == 1) {
			
			// 	$eventcg_megane_search = @Obj4
			// 	if ($eventcg_megane_search.search("megane") >= 1) {$eventcg_parts_blend[14] = ""}
			// 	$eventcg_megane_search = @Obj9
			// 	if ($eventcg_megane_search.search("megane") >= 1) {$eventcg_parts_blend[19] = ""}
				
			// }




#MACRO	@eventcg_parts_blend(@stage)

			for ($eventcg_tmp = 10,$eventcg_tmp < 20,$eventcg_tmp +=1) {
			
				if ($eventcg_parts_blend[$eventcg_tmp] == "")   {stage[@stage].object[00].child[$eventcg_tmp].free continue}
				
				stage[@stage].object[00].child[$eventcg_tmp].create($eventcg_parts_blend[$eventcg_tmp],1)
				
			}
			
			if (stage[@stage].object[00].child[12].exist_type == 1) {

				if (stage[@stage].object[00].child[12].get_pat_cnt >= 2) {

					stage[@stage].object[00].child[12].load_gan(_mabataki01)

					if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
								
						stage[@stage].object[00].child[12].start_gan(math.rand(1,<mabataki_max>),1,1)

					}else{
						stage[@stage].object[00].child[12].start_gan(0,1,1)

					}

				}

			}
			
			if (stage[@stage].object[00].child[17].exist_type == 1) {

				if (stage[@stage].object[00].child[17].get_pat_cnt >= 2) {

					stage[@stage].object[00].child[17].load_gan(_mabataki01)

					if (@立ち絵のまばたき演出をしない != 1 && $eye_mabataki_off != 1) {
								
						stage[@stage].object[00].child[17].start_gan(math.rand(1,<mabataki_max>),1,1)

					}else{
						stage[@stage].object[00].child[17].start_gan(0,1,1)

					}

				}

			}




#PROPERTY $filecheck : str
#PROPERTY $filecheck_flag
#PROPERTY $eventcg_startpat

#MACRO	@eventcg_start(@filename,@patno,@obj10("_"),@obj11("_"),@obj12("_"),@obj13("_"),@obj14("_"),@obj15("_"),@obj16("_"),@obj17("_"),@obj18("_"),@obj19("_"))

		$filecheck_flag = 0
		$filecheck = "g00\\" + @filename + ".g00"
		$eventcg_startpat = @patno

		if (system.check_file_exist($filecheck) == 0) {

			$filecheck = "____no_cg"
			$filecheck_flag = 1
			
		}else {

			$filecheck = @filename
		}
		
		back.object[00].create($filecheck,1,959,539)
		back.object[00].child.resize(20)
		back.object[00].f.resize(1)		//拡縮モード用フラグ

		back.object[00].layer = 0
		back.object[00].order = <order_normal>

		back.object[00].x_rep.resize(20)
		back.object[00].y_rep.resize(20)

		back.object[00].child[00].init	//00～09予備

		if ($filecheck_flag == 0) {

			@eventcg_parts_blend_set(@obj10,@obj11,@obj12,@obj13,@obj14,@obj15,@obj16,@obj17,@obj18,@obj19)
			@eventcg_parts_blend(0)
		
		}else{
			
			back.object[00].set_center((1920 / 2)-1, (1080 / 2) - 1)
		
		}
		
		
		/*拡縮モードのフラグ立てをこのへんで（１） */
		if ($cg_mode_flag == 1) {$eventcg_startpat = 10}


		switch($eventcg_startpat) {
		
			case(0)		//拡大から中央にフォーカス

				close
								
				@all_white(500)

				@all_screen_wait

				@CHR_WIPECOPY_OFF
		
		
				wipe(1,0,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @クリックでイベントＣＧの演出をスキップ)
				@camera_work_default	///

				@all_screen_clear_nowait(1000)

				front.object[00].scale_x_eve.set(<eventcg_default_scale>,2000,0,2,start=1500)
				front.object[00].scale_y_eve.set(<eventcg_default_scale>,2000,0,2,start=1500)

				if (@クリックでイベントＣＧの演出をスキップ == 1) {front.object[00].scale_x_eve.wait_key}else{front.object[00].scale_x_eve.wait}
				front.object[00].scale_y_eve.end
				
				@timewait(2000)		//ここはcgじゃないほうが良さそう
			
			case(1)		//白転してワイプ後に停止、拡縮や位置調整をした後自分で@all_screen_clear_nowait(1000)すること
			
				close

				@all_white(500)
				@all_screen_wait
				
				@CHR_WIPECOPY_OFF
	
				wipe(1,0,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @クリックでイベントＣＧの演出をスキップ)
				@camera_work_default	///
				
				
		
			case(2)		//拡大から中央にフォーカス　最初の白転なし　立ち絵＋白転から継続させたい場合など

				close

				@CHR_WIPECOPY_OFF

				wipe(1,0,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @クリックでイベントＣＧの演出をスキップ)
				@camera_work_default	///

				@all_screen_clear_nowait(1000)

				front.object[00].scale_x_eve.set(<eventcg_default_scale>,2000,0,2,start=1500)
				front.object[00].scale_y_eve.set(<eventcg_default_scale>,2000,0,2,start=1500)

				if (@クリックでイベントＣＧの演出をスキップ == 1) {front.object[00].scale_x_eve.wait_key}else{front.object[00].scale_x_eve.wait}
				front.object[00].scale_y_eve.end
				
				@timewait(2000) //ここはcgじゃないほうが良さそう
			
			case(3)		//即ワイプ以外なにもしない　回想シーンとか

				close
				wipe(1,0,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @クリックでイベントＣＧの演出をスキップ)
				@camera_work_default	///
				
			
			case(10)		//CG用モード用早めバージョン

				close

				@all_white(500)

				@all_screen_wait

				@CHR_WIPECOPY_OFF
		
	
				wipe(1,0,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @クリックでイベントＣＧの演出をスキップ)
				@camera_work_default	///

				@all_screen_clear_nowait(250)

				front.object[00].scale_x_eve.set(<eventcg_default_scale>,500,0,2,start=1500)
				front.object[00].scale_y_eve.set(<eventcg_default_scale>,500,0,2,start=1500)

				if (@クリックでイベントＣＧの演出をスキップ == 1) {front.object[00].scale_x_eve.wait_key}else{front.object[00].scale_x_eve.wait}
				front.object[00].scale_y_eve.end
				
				//@timewait(500)		//ここはcgじゃないほうが良さそう

			case(99)		//ただワイプするだけ 同じ場面で角度だけ違うＣＧを表示するときとか

				close
				@CHR_WIPECOPY_OFF

				wipe(0,1000,start_layer = 0,end_layer = <no_wipe_bg_objno_max>, start_order = 0,end_order = <order_chrcg_front>,key_skip = @クリックでイベントＣＧの演出をスキップ)
				@camera_work_default	///
				
		}
		
		/*拡縮モードのフラグ立てをこのへんで（２） */	//☆2024.06.11 CGモードの脱出のみに使うよう変更

		if ($cg_mode_flag == 1) {@eventcg_control_cgmode_on} 	//CGモード開始（途中脱出用）
		
		


#MACRO	@eventcg_change(@filename,@time,@obj10,@obj11("_"),@obj12("_"),@obj13("_"),@obj14("_"),@obj15("_"),@obj16("_"),@obj17("_"),@obj18("_"),@obj19("_"))

			front.object[01].create_copy_from(front.object[00])
			
			if (@filename == front.object[00].get_file_name) {
			
				front.object[01].free
			
			}else{
				front.object[00].change_file(@filename)
			}
			
			@eventcg_parts_blend_set(@obj10,@obj11,@obj12,@obj13,@obj14,@obj15,@obj16,@obj17,@obj18,@obj19)
			@eventcg_parts_blend(1)
			
			front.object[01].tr_eve.set(0,@time,0,2)
			
			if (@time > 500) {close @TIMEWAIT_cg(@time*2)}




#DEFINE <eventcg_control_menu_obj>	210



#MACRO	@eventcg_control_cgmode_on		//CGモード動作準備

			input.clear
			front.object[00].frame_action_ch.resize(1)

			front.object[<eventcg_control_menu_obj>].create_rect(0,0,800,40,0,0,0,200,0)
			front.object[<eventcg_control_menu_obj>].layer = <eventcg_control_menu_obj>
			front.object[<eventcg_control_menu_obj>].child.resize(20)

			front.object[<eventcg_control_menu_obj>].y_rep.resize(1)
			front.object[<eventcg_control_menu_obj>].y_rep[0] = - 40
			front.object[<eventcg_control_menu_obj>].tr = 0
			front.object[<eventcg_control_menu_obj>].disp = 1

			front.object[<eventcg_control_menu_obj>].child[00].create_string("右クリックまたはＥＳＣキーでＣＧ閲覧を途中で停止できます。",1,8,8)
			front.object[<eventcg_control_menu_obj>].child[00].set_string_param(22,0,0,0,<white>,0,0)

			front.object[00].frame_action_ch[0].start(-1,"$eventcg_control_cgmode")


#COMMAND	$eventcg_control_cgmode(frameaction,object)

