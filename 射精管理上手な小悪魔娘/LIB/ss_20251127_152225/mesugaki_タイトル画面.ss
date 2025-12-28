/*
 * 射精管理上手　タイトル画面
 */



#Z00

#INC_START

    #PROPERTY $mode
    
    #DEFINE	<title_bg_obj>		60
    #DEFINE <title_menu_obj>	100
    #DEFINE <title_help_obj>	front.object[200]

    #PROPERTY	$title_page

#INC_END

syscom.set_auto_mode_onoff_flag(0)
syscom.set_read_skip_onoff_flag(0)


counter[0].start


//回想モードにリターンするフラグが立ってる場合は直接移動

if (@回想モードからリターン == 1) {
    @回想モードからリターン = 0
    JUMP("_★モード_連続回想")
}



set_title("")		//システムでは$set_titleは使わない


syscom.set_msg_back_enable_flag(0)
syscom.set_save_enable_flag(0)
syscom.set_syscom_menu_disable

script.set_ctrl_skip_disable



 $mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）
 farcall(_window_change,0)



@BGM(BGM01)


@systemvoice_title


@all_black
@all_screen_wait


back.object[<title_bg_obj>].create(title_bg,1,959,539)

back.object[<title_bg_obj>+2].create(title_jur,1,1459,1309)
back.object[<title_bg_obj>+2].x_rep.resize(1)
back.object[<title_bg_obj>+2].x_rep[0] = 1920
back.object[<title_bg_obj>+2].child.resize(3)
back.object[<title_bg_obj>+2].child[0].create(title_jur_mayu10,1,0,0)
back.object[<title_bg_obj>+2].child[1].create(title_jur_eye10,1,0,0)
back.object[<title_bg_obj>+2].child[1].load_gan(_mabataki01)
back.object[<title_bg_obj>+2].child[1].start_gan(1,1,1)
back.object[<title_bg_obj>+2].child[2].create(title_jur_mouth10,1,0,0)

back.object[<title_bg_obj>+2].scale_x_eve.turn(990,1010,3000,0,0)
back.object[<title_bg_obj>+2].scale_y_eve.turn(990,1010,3000,0,0)


back.object[<title_bg_obj>+1].create(title_kas,1,420,1309)
back.object[<title_bg_obj>+1].x_rep.resize(1)
back.object[<title_bg_obj>+1].x_rep[0] = -1920
back.object[<title_bg_obj>+1].child.resize(3)
back.object[<title_bg_obj>+1].child[0].create(title_kas_mayu10,1,0,0)
back.object[<title_bg_obj>+1].child[1].create(title_kas_eye10,1,0,0)
back.object[<title_bg_obj>+1].child[1].load_gan(_mabataki01)
back.object[<title_bg_obj>+1].child[1].start_gan(2,1,1)
back.object[<title_bg_obj>+1].child[2].create(title_kas_mouth10,1,0,0)


back.object[<title_bg_obj>+1].scale_x_eve.turn(990,1010,3000,1500,0)
back.object[<title_bg_obj>+1].scale_y_eve.turn(990,1010,3000,1500,0)


back.object[<title_bg_obj>+3].create(title_logo,1,959,539)


wipe(1,0,key_skip = 1)

@all_screen_clear(300)
@all_screen_wait

front.object[<title_bg_obj>+1].x_rep_eve[0].set(0,500,0,1)
front.object[<title_bg_obj>+2].x_rep_eve[0].set(0,500,0,1)


#page01

front.object[<title_menu_obj>].init
front.object[<title_menu_obj>].child.resize(100)
front.object[<title_menu_obj>].layer = <title_menu_obj>
front.object[<title_menu_obj>].disp = 1


L[00] = 80

$title_btn(0,	L[00] + (100*0))
$title_btn(1,	L[00] + (100*1))
$title_btn(2,	L[00] + (100*2))
$title_btn(3,	L[00] + (100*3))
$title_btn(4,	L[00] + (100*4))
$title_btn(5,	L[00] + (100*5))

if (@クリアフラグ == 0) { front.object[<title_menu_obj>].child[4].set_button_state_disable }
if (syscom.get_save_exist(200) == 0) { front.object[<title_menu_obj>].child[1].set_button_state_disable }



syscom.set_syscom_menu_disable


goto #init


#page02

front.object[<title_menu_obj>].init
front.object[<title_menu_obj>].child.resize(100)
front.object[<title_menu_obj>].layer = <title_menu_obj>
front.object[<title_menu_obj>].disp = 1


L[00] = 80

$title_btn(6,	L[00] + (100*0))
$title_btn(7,	L[00] + (100*1))
$title_btn(8,	L[00] + (100*2))
$title_btn(9,	L[00] + (100*4))


goto #init

//-------------------
//実動作部分


#init

#start


L[00]=0
L[01]=0

front.objbtngroup[0].start_cancel



while(1){


	L[00] = front.objbtngroup[0].get_hit_no
	L[01] = front.objbtngroup[0].get_decided_no
	
	
	//オンマウス
	switch(L[00]) {
	
		case(0)	$help_text(<title_help_obj>,DL,"ゲームを開始します。")
		case(1)	$help_text(<title_help_obj>,DL,"ゲームを終了したところから再開します。#D（サスペンド機能）")
 	    case(2)	$help_text(<title_help_obj>,DL,"ロード画面を開きます。")
		case(3)	$help_text(<title_help_obj>,DL,"システムコンフィグを開きます。#D（右クリックと同じ動作）")
		case(4)	$help_text(<title_help_obj>,DL,"スチル鑑賞などギャラリーを開きます。")
		case(5)	$help_text(<title_help_obj>,DL,"ゲームを終了してWindowsに戻ります。")
		
		case(6)	$help_text(<title_help_obj>,DL,"いままで見たイベントスチルをご覧いただけます。")
		case(7)	$help_text(<title_help_obj>,DL,"いままで見たＨシーン等をご覧いただけます。")
		case(8)	$help_text(<title_help_obj>,DL,"ＢＧＭをご試聴いただけます。")

		case(9)	$help_text(<title_help_obj>,DL,"ひとつ前の項目に戻ります。")

		default	<title_help_obj>.disp = 0
	
	}
	
	//オンマウス※表情変化
	switch(L[00]) {
	
		case(0)	$title_face("30","30","30","30","30","30")
		case(1)	$title_face("20","20","10","20","20","10")
 	    case(2)	$title_face("10","10","20","10","10","20")
		case(3)	$title_face("20","30","30","20","30","30")
		case(4)	$title_face("10","10","10","10","10","10")
		case(5)	$title_face("20","20","20","20","20","20")
		case(6)	$title_face("20","20","30","20","20","30")
		case(7)	$title_face("30","10","10","30","10","10")
 	    case(8)	$title_face("10","30","30","10","30","30")
		case(9)	$title_face("20","20","20","20","20","20")

        default	//
	}
	

	for (L[10] = 1,L[10] <= 99,L[10] += 1) {
	
		if (front.object[<title_menu_obj>].child[L[10]].child.get_size < 1) {continue} 
	
		if (L[00] == L[10]) {
		
			front.object[<title_menu_obj>].child[L[10]].child[0].disp = 1
			
		}else{
		
			front.object[<title_menu_obj>].child[L[10]].child[0].disp = 0
		
		}		
	
	}
	
	//動作

    switch(L[01]) {

        case(0) //はじめから

            se.play(@ＳＥ決定)
            script.set_ctrl_skip_enable

            @systemvoice_start
            @bgmstop(2000)

            syscom.set_msg_back_enable_flag(1)
            syscom.set_save_enable_flag(1)
            
            @all_white(2000)
            @all_screen_wait

            @BG(_white,1,0)

            
            
            @TIMEWAIT
            syscom.set_syscom_menu_enable
            counter[0].stop


            
            JUMP("9999_★★★メインフロー")

        case(1) //つづきから
            syscom.end_load(0,1,1)

        case(2) //ロード

            se.play(@ＳＥ項目変更)
            @systemvoice_tuzuki
            syscom.call_load_menu
            goto #start

        case(-1)    //右クリック（コンフィグと同じ）
            se.play(@ＳＥ決定)
            syscom.call_config_menu
            goto #start

         case(3) //コンフィグ
            se.play(@ＳＥ決定)
            @systemvoice_config
            syscom.call_config_menu
            goto #start

        case(4) //エクストラ
            se.play(@ＳＥ項目変更)
            wipe(0,500,start_layer = <title_menu_obj>,end_layer = <title_menu_obj>,wait = 0)
            goto #page02

        case(5)    //終了

            script.set_ctrl_skip_enable
            syscom.set_syscom_menu_disable
            @systemvoice_gameend
            @bgmstop(1000)
            
            @all_black(1000)

            if (koe_check == 1) {
            
                koe_wait_key
            
            }            
            koe_stop
            
            OWARI

        case(6)    //CG鑑賞
            se.play(@ＳＥ決定)
			@page_y_kioku(<slider_cgmode>) = 0	// 縦位置リセットしておく
			
            counter[0].stop

            JUMP("_★モード_CG")

        case(7)    //シーン回想
            se.play(@ＳＥ決定)
			@page_y_kioku(<slider_kaisou>) = 0	// 縦位置リセットしておく

            counter[0].stop


            JUMP("_★モード_連続回想")

        case(8)    //BGM鑑賞
            se.play(@ＳＥ決定)
            @bgmstop(2000)

            counter[0].stop

            JUMP("_★モード_サウンド")

        case(9)    //もどる
            se.play(@ＳＥ項目変更)
            wipe(0,500,start_layer = <title_menu_obj>,end_layer = <title_menu_obj>,wait = 0)
            goto #page01





    }


    //$title_roll()

    disp

}



//---------------------------------
//メニューボタン設定

command	$title_btn(property $index,property $pos_y) {

	front.object[<title_menu_obj>].child[$index].create(title_btn,1,959,$pos_y,$index)
    front.object[<title_menu_obj>].child[$index].disp = 1

	front.object[<title_menu_obj>].child[$index].set_button($index,0,35,@ボタンＳＥ決定音無し)

}

//---------------------------------
//表情変化

command $title_face(
    property $jur_mayu : str,
    property $jur_eye : str,
    property $jur_mouth : str,
    property $kas_mayu : str,
    property $kas_eye : str,
    property $kas_mouth : str

){
    front.object[<title_bg_obj>+2].child[0].change_file("title_jur_mayu" +$jur_mayu)
    front.object[<title_bg_obj>+2].child[1].change_file("title_jur_eye"  +$jur_eye)
    front.object[<title_bg_obj>+2].child[2].change_file("title_jur_mouth"+$jur_mouth)
    front.object[<title_bg_obj>+1].child[0].change_file("title_kas_mayu" +$kas_mayu)
    front.object[<title_bg_obj>+1].child[1].change_file("title_kas_eye"  +$kas_eye)
    front.object[<title_bg_obj>+1].child[2].change_file("title_kas_mouth"+$kas_mouth)

}


