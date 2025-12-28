//----------------------
//サウンドモード

#Z00

#INC_START

	#PROPERTY	$Sound_PlayNO
	#property	$bgm_moto_volume
	
	#DEFINE		<sound_bg_color>	234,226,225
	
	#DEFINE		<sound_bg2_color>	195,185,155

	#DEFINE		<sound_bg3_color>	52,21,14

	#DEFINE		<sound_track_count>	12	//曲数
	

	#DEFINE <sound_help_obj>	front.object[<help_txt_objno>]
	
	#PROPERTY	$Sound_Play_Title : strlist[99]

#INC_END


syscom.set_msg_back_enable_flag(0)
syscom.set_save_enable_flag(0)
syscom.set_syscom_menu_disable

@bgmstop


#INIT

set_title("◆サウンドモード")		//$set_titleはシステムでは使わない

$Sound_PlayNO = -1
$bgm_moto_volume = syscom.get_bgm_volume

back.object[10].init
back.object[10].child.resize(20)
back.object[10].disp = 1


//back.object[10].child[00].create(_soundmode_mass,1, 27, 18, 0)

//------------
//サウンド枠生成

$sound_tag_create(00,500, 60,<BGM01>,"作曲：下地和彦")
$sound_tag_create(01,500,150,<BGM02>,"作曲：下地和彦")
$sound_tag_create(02,500,240,<BGM03>,"作曲：下地和彦")
$sound_tag_create(03,500,330,<BGM04>,"作曲：下地和彦")
$sound_tag_create(04,500,420,<BGM06>,"作曲：下地和彦")
$sound_tag_create(05,500,510,<BGM10>,"作曲：下地和彦")
$sound_tag_create(06,500,600,<BGM11>,"作曲：下地和彦")
$sound_tag_create(07,500,690,<BGM12>,"作曲：下地和彦")


$sound_tag_create(08,1430, 60,<BGM13>,"作曲：下地和彦")
$sound_tag_create(09,1430,150,<BGM14>,"作曲：下地和彦")
$sound_tag_create(10,1430,240,<BGM15>,"作曲：下地和彦")
$sound_tag_create(11,1430,330,<BGM16>,"作曲：下地和彦")


back.object[14].create(a0_mode_soundHD_play,1,1488,954,0)
back.object[13].create(a0_mode_soundHD_play,1,1488 + 85,954,1)
back.object[11].create(a0_mode_soundHD_play,1,1488 + 170,954,2)
back.object[12].create(a0_mode_soundHD_play,1,1488 + 255,954,3)



back.object[11].set_button(30,0,10,0)
back.object[12].set_button(31,0,10,0)
back.object[13].set_button(32,0,10,0)
back.object[14].set_button(33,0,10,0)


back.object[15].create(a0_mode_soundHD_slider,1,418,1027)
back.object[15].set_button(34,0,10,0)
back.object[15].x_rep.resize(1)
back.object[15].set_button_pushkeep(1)
back.object[15].x_rep[0] = $bgm_slider_param()


back.object[16].create_string("＜未再生＞",1,414,939)
back.object[16].set_string_param(32,0,0,0,<black>,0,0)


//back.object[50].create(_soundmode_kasi_bt,1,100,680,0)
//back.object[21].create(_soundmode_kasi_bt,1,280,680,1)
//back.object[50].set_button(50,0,10,0)
//back.object[51].create(_soundmode_kasi,0,810,10,0)
//back.object[40].create_string("サウンドモードは右クリックで終了します。#D右クリックで終了させると、音量UP／DOWNで変更した音量が元に戻ります。",1,705,594)
//back.object[40].set_string_param(15,0,3,0,21,0,0)
//back.object[60].create(_soundmode_to_voiceMg,1,826,578)
//back.object[60].set_button(60,0,10,0)



back.object[100].create(a0_mode_soundHD_exit,1,1620,1030)
back.object[100].set_button(100,0,10,0)
back.object[01].create(_black_half,1,0,0)

back.object[02].create(a0_mode_soundHD_ui,1,0,0)





@transition_03_in


@BG(BG10_CA,0,0)
//@filter_all_erase(1)	//★フィルタ消去
$multiple_mouse_scroll_init(0) // マルチプルマウスリセット



@transition_03_out(0,1)


syscom.set_msg_back_enable_flag(0)
syscom.set_save_enable_flag(0)
syscom.set_syscom_menu_disable


#start

mouse.clear




@ls_btn_reset
front.objbtngroup[0].start_cancel


while(1) {

	$LS_btn0_hit = front.objbtngroup[0].get_hit_no
	$LS_btn0_push = front.objbtngroup[0].get_pushed_no
	$LS_btn0_decided = front.objbtngroup[0].get_decided_no

	for (L[00] = 0,L[00] < <sound_track_count>,L[00] += 1) {

		if (L[00] == $Sound_PlayNO) { front.object[10].child[L[00]].set_scale(1000,1000) front.object[10].child[L[00]].child[00].disp = 1 continue}

		front.object[10].child[L[00]].set_scale(950,950)
		front.object[10].child[L[00]].child[00].disp = 0

	}
	
	switch($LS_btn0_hit) {
	
		case(00)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(01)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(02)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(03)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(04)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(05)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(06)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(07)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(08)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(09)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		
		case(10)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(11)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(12)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(13)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(14)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(15)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(16)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(17)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(18)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		case(19)	$help_text(<sound_help_obj>,DL,"このＢＧＭを再生します。#Dもう一度クリックすると頭から再生しなおします。")
		
		case(30)	$help_text(<sound_help_obj>,UL,"一つ前のＢＧＭを再生します。")
		case(31)	$help_text(<sound_help_obj>,UL,"一つ後のＢＧＭを再生します。")
		
		case(32)	$help_text(<sound_help_obj>,UL,"再生中のＢＧＭを停止します。")
		
		
		
		case(33)	$help_text(<sound_help_obj>,UL,"再生中のＢＧＭを頭から再生します。")
		case(34)	$help_text(<sound_help_obj>,UL,"ＢＧＭ音量を変更します。#Dマウスホイールでも動作します。")
		
		
		//case(60)	$help_text(<sound_help_obj>,DL,"ゲーム中に記録した音声を再生できる、#D音声記録マネージャを開きます。#D#D※右クリックと同じ動作です。")
		case(100)	$help_text(<sound_help_obj>,UL,"タイトル画面に戻ります（右クリックと同じ動作）")
		
		
		
	
		default	<sound_help_obj>.disp = 0
	
	}
	
	
	if ($LS_btn0_push == 34) { //BGMスライダー
	
		front.object[15].x_rep[00] = math.limit(0,mouse.pos_x-420,940)
		syscom.set_bgm_volume(math.timetable(front.object[15].x_rep[00],0,0,[0,940,255]))
	
	}
	
	if (mouse.wheel > 0) {
	
		front.object[15].x_rep[00] = math.limit(0,front.object[15].x_rep[00] + 90,940)
		syscom.set_bgm_volume(math.timetable(front.object[15].x_rep[00],0,0,[0,940,255]))
	
	}
	
	if (mouse.wheel < 0) {
	
		front.object[15].x_rep[00] = math.limit(0,front.object[15].x_rep[00] - 90,940)
		syscom.set_bgm_volume(math.timetable(front.object[15].x_rep[00],0,0,[0,940,255]))
	
	}
	
	
	//front.object[15].x_rep[0] = $bgm_slider_param()
	

	if ($LS_btn0_decided == -1 || $LS_btn0_decided == 60) {
		
		@bgmstop
		RETURNMENU
		
	}
	
	if ($LS_btn0_decided == 100) {
	
		@bgmstop
		RETURNMENU
	
	}
	
		
	if ($LS_btn0_decided >= 0) {break}

	disp

}

if ($LS_btn0_decided == 30) {

	$Sound_PlayNO = ($Sound_PlayNO - 1)

	if ($Sound_PlayNO <  0) {
	
		$Sound_PlayNO = <sound_track_count> - 1
	
	}
	front.object[16].set_string($Sound_Play_Title[$Sound_PlayNo])
	
	
	
	gosub #bgm_list
	
	goto #START

}


if ($LS_btn0_decided == 31) {

	$Sound_PlayNO = ($Sound_PlayNO + 1) % <sound_track_count>
	front.object[16].set_string($Sound_Play_Title[$Sound_PlayNo])
	
	gosub #bgm_list
	
	goto #START

}


if ($LS_btn0_decided == 32) {

	@bgmstop	
	front.object[16].set_string("＜未再生＞")
	
	goto #START

}

if ($LS_btn0_decided == 33) {


	if ($Sound_PlayNo == -1) {$Sound_PlayNo = 0}

	@bgmstop
	gosub #bgm_list

	front.object[16].set_string($Sound_Play_Title[$Sound_PlayNo])
	
	goto #START
}

if ($LS_btn0_decided == 34) {

	
	goto #START

}


if ($LS_btn0_decided == 50) {

	if (front.object[51].disp == 0) {

		front.object[51].disp = 1
	
	}else {
	
		front.object[51].disp = 0
	
	}
	
	goto #START
	
}





$Sound_PlayNO = $LS_btn0_decided
front.object[16].set_string($Sound_Play_Title[$Sound_PlayNo])


gosub #bgm_list




goto #START



//---------------------------
#bgm_list


@bgmstop

switch($Sound_PlayNO) {

	case(00)	K[00] = "BGM01"
	case(01)	K[00] = "BGM02"
	case(02)	K[00] = "BGM03"
	case(03)	K[00] = "BGM04"
	case(04)	K[00] = "BGM06"
	case(05)	K[00] = "BGM10"
	case(06)	K[00] = "BGM11"
	case(07)	K[00] = "BGM12"
	case(08)	K[00] = "BGM13"
	case(09)	K[00] = "BGM14"
	case(10)	K[00] = "BGM15"
	case(11)	K[00] = "BGM16"
}




@BGM(K[00])



return


//-------------------------------------------
//サウンド枠生成

command $sound_tag_create(
			property $index,
			property $x,
			property $y,
			property $title : str,
			property $creater : str) {

	back.object[10].child[$index].create_rect(0,0,800,70,<sound_bg_color>,255,1)
	back.object[10].child[$index].center_x = 800 / 2
	back.object[10].child[$index].center_y = 70 / 2
	
	back.object[10].child[$index].x = $x
	back.object[10].child[$index].y = $y
	
	back.object[10].child[$index].child.resize(5)
	back.object[10].child[$index].child[00].create_rect(0,0,800,68,<sound_bg2_color>,255,0,-400,-34)
	
	back.object[10].child[$index].child[01].create_rect(0,0,30,68,<sound_bg3_color>,255,1,-390,-32)
	
	
	back.object[10].child[$index].child[02].create_string($title,1,-300,-15)
	back.object[10].child[$index].child[02].set_string_param(32,-2,0,0,<black>,0,0)
	
	back.object[10].child[$index].child[03].create_string($creater,1,170,10)
	back.object[10].child[$index].child[03].set_string_param(20,0,3,0,<black>,0,0)
	
	
	$Sound_Play_Title[$index] = $title + "　#20S#10Y"  + $creater
	
	
	//曲名が長いやつは個別対応
	
	/*--
	
	if ($index == 0 || $index == 1) {
	
		back.object[10].child[$index].child[01].set_string_param(30,-2,0,0,21,0,0)
		back.object[10].child[$index].child[02].x += 60
		
	
	}
	
	--*/
		
	back.object[10].child[$index].set_scale(950,950)
	back.object[10].child[$index].set_button($index,0,13,0)

	back.object[10].child[$index].tr = 250

}

//-------------------------------------------
//BGM音量スライダー

command	$bgm_slider_param() : int {

	return(math.timetable(syscom.get_bgm_volume,0,0,[0,255,940]))


}





