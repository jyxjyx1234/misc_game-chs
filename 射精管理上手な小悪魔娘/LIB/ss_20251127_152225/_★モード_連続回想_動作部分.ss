#Z00
//----------------------------
//連続回想モード	Continuous recollection = CR

/*---

	最大10個連続で再生できる回想モードの作成。
	シンプルにワンクリックでも再生できるモードもつくる

---*/

#INC_START

	#DEFINE		<kaisou_bg_color>	54,41,6
	#DEFINE		<kaisou_box_color>	234,226,225
	#DEFINE		<kaisou_title_color> 155,120,113
	
	#DEFINE		<kaisou_sub_color>	234,226,225
	//#DEFINE		<kaisou_sub_color>	61,156,244
	
	#DEFINE		<kaisou_sel_color>	195,185,155
	#DEFINE		<kaisou_subbg_color>	54,41,6
	//#DEFINE		<kaisou_subbg_color>	155,120,113
	

	#DEFINE		<kaisou_action_color>	54,41,6
	
	#PROPERTY	$mode  // 0 : 通常 1 : 全OPEN
	#PROPERTY	$kaisou_chr
	
	#DEFINE <kaisou_help_obj>	front.object[<help_txt_objno>]
	
	#DEFINE	<bgm_count>	14			//★bgmの個数


#INC_END


//@BGM(IMOSUKU_MOYU)
$mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）


#init

$mode = 0		//★★★★★★★★★★★★★★★★★★最後にかならず0にすること


set_title("◆シーン回想")		//$set_titleはシステムでは使わない

clear_msgbk

syscom.set_auto_mode_onoff_flag(0)
syscom.set_read_skip_onoff_flag(0)

syscom.set_msg_back_enable_flag(0)
syscom.set_save_enable_flag(0)
syscom.set_auto_mode_enable_flag(0)


script.set_ctrl_skip_enable
syscom.set_syscom_menu_disable




@transition_03_in

back.object[01].create(_black_half,1,0,0)
@BG(BG11_AA,1,0)
$multiple_mouse_scroll_init(0) // マルチプルマウスリセット


<slider_bg_obj>.init
<slider_bg_obj>.child.resize(100)
<slider_bg_obj>.layer = 100
<slider_bg_obj>.disp = 1



//スライダー生成

$create_tate_slider(<slider_kaisou>)	//★ 縦スライダーを新しく作る度に「_★縦スライダー生成.inc」 に登録すること	//★★まだ設定してない
<slider_bg_obj>.y_rep[00] = -@page_y_kioku(<slider_kaisou>)

$tate_slider_behavior
$set_tate_slider_param



//------------------
//回想モードタグ生成

$CR_tag_chr($kaisou_chr)



//-------------------
//回想モード切り替えボタン生成

front.object[170].create(a0_mode_crHD_mode_simple_bg,1,959,539)


front.object[198].create(a0_mode_crHD_mode_change_simple,1,165,132,0)
front.object[198].set_button(3000,0,10,9)
front.object[199].create(a0_mode_crHD_mode_change_renzoku,1,468,132,0)
front.object[199].set_button(3001,0,10,9)




//-------------------
//連続10回回想モード生成

$CR_item_create
$CR_item_get
$CR_item_disp


$CR_bgm_set


//いもうと美姫ちゃん用特殊ボタン生成

//front.object[201].create(a0_mode_crHD_special_bt,1,59,974)
//front.object[201].set_button(9000,0,11,0)
//front.object[201].layer = 201




//出口ボタン生成

front.object[200].create(a0_mode_crHD_exit_bt,1,316,1027)
front.object[200].set_button(9999,0,11,@ボタンＳＥ決定音無し２)

front.object[200].layer = 200


//キャラ選択

/*-----

front.object[201].create_rect(0,0,950,62,0,0,0,200,1,0,656)
front.object[201].child.resize(1)
front.object[201].layer = 201

front.object[202].init
front.object[202].child.resize(10)
front.object[202].disp = 1
front.object[202].layer = 202

front.object[202].child[00].create(a0_mode_chr_btn2,1,5,630,0)
front.object[202].child[01].create(a0_mode_chr_btn2,1,125,630,1)
front.object[202].child[02].create(a0_mode_chr_btn2,1,245,630,2)
front.object[202].child[03].create(a0_mode_chr_btn2,1,365,630,3)
front.object[202].child[04].create(a0_mode_chr_btn2,1,485,630,4)
front.object[202].child[05].create(a0_mode_chr_btn2,1,605,630,5)
front.object[202].child[06].create(a0_mode_chr_btn2,1,725,630,6)
front.object[202].child[07].create(a0_mode_chr_btn2,1,845,630,7)

front.object[202].child[00].set_button(2950,0,10,9)
front.object[202].child[01].set_button(2951,0,10,9)
front.object[202].child[02].set_button(2952,0,10,9)
front.object[202].child[03].set_button(2953,0,10,9)
front.object[202].child[04].set_button(2954,0,10,9)
front.object[202].child[05].set_button(2955,0,10,9)
front.object[202].child[06].set_button(2956,0,10,9)
front.object[202].child[07].set_button(2957,0,10,9)


---*/


@transition_03_out(0,1)

/*

if ($is_start_kaisou_mode == 1) {

	$is_hint(4)

	$is_start_kaisou_mode = 0

}

*/


//--------------------------
//実動作部分

#start

if ($kaisou_sys_mode == 0) {front.object[190].disp = 0} else {front.object[190].disp = 1}


savepoint


@ls_btn_reset
front.objbtngroup[0].start_cancel

input.clear
mouse.clear


while(1) {

	$LS_btn0_hit = front.objbtngroup[0].get_hit_no
	$LS_btn0_push = front.objbtngroup[0].get_pushed_no
	$LS_btn0_decided = front.objbtngroup[0].get_decided_no
	
	
	$tate_slider_behavior
	$set_tate_slider_param
	
	
	//---------------------
	//オンマウス
	
	
	
	if ($LS_btn0_hit >= 100 && $LS_btn0_hit <= 1999) {
	
		if ($kaisou_sys_mode == 0) {
		
			//if ($LS_btn0_hit >= 400 && $LS_btn0_hit <= 460 ) {
			//	$help_text(<kaisou_help_obj>,DL,"選択されている項目をクリックすると、#Dシーンを再生します。#D#D#16C★★この項目では、香苗の一部心情を#D　　セリフつきで垣間見ることができます。")
			//}else{

				$help_text(<kaisou_help_obj>,DL,"選択されている項目をクリックすると、#Dシーンを再生します。")
			//}
		
		}else {
		
			$help_text(<kaisou_help_obj>,DL,"選択されている項目をクリックすると、連続回想スロットに項目を挿入します。#Dスロットに空きが無い場合は[消去]ボタンで空きを作ってください。")
		
		}
		
	
	
	
	}
	
	elseif ($LS_btn0_hit >= 4000 && $LS_btn0_hit <= 4009) {
	
		L[00] = $LS_btn0_hit - 4000
	
		if ($CR_SET_INDEX[L[00]] != 0) {
		
			//if ($CR_SET_INDEX[L[00]] >= 400 && $CR_SET_INDEX[L[00]] <= 460) {
			//	K[00] = $CR_SET_CHR[L[00]] + "" + $CR_SET_TITLE[L[00]] + "#D#D#12C【" + $CR_SET_ACTION[L[00]] + "】#D#D#255C" + $CR_SET_DATA_COMMENT[L[00]] + "#D#D#16C★★この項目では、香苗の一部心情を#D　　セリフつきで垣間見ることができます。"
			
			//}else{
				K[00] = $CR_SET_CHR[L[00]] + "" + $CR_SET_TITLE[L[00]] + "#D#D#12C【" + $CR_SET_ACTION[L[00]] + "】#D#D#255C" + $CR_SET_DATA_COMMENT[L[00]]
			
			//}
			$help_text_big_image(<kaisou_help_obj>,CC,K[00],$CR_SET_CGThm[L[00]],280,150,$CR_SET_CGThm_patno[L[00]])
		
		}else {
		
			$help_text(<kaisou_help_obj>,DR,"[消去]ボタンです。#Dスロットに項目が入っている状態でこのボタンを押すと#Dそのスロットの内容を[未設定]に戻します。")
		
		}
	
	}else {
	
		switch($LS_btn0_hit) {
	
			case(2950)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2951)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2952)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2953)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2954)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2955)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2956)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
			case(2957)	$help_text(<kaisou_help_obj>,DR,"項目一覧を切り替えます。")
	
			case(3000)	$help_text(<kaisou_help_obj>,DR,"シンプルモードに切り替えます。#Dワンクリックでシーンを再生できるモードです。")
			case(3001)	$help_text(<kaisou_help_obj>,DR,"連続回想モードに切り替えます。#D連続回想スロットに項目をセットすることで、最大10回連続でシーンを再生できるモードです。")
	
			case(5000)	$help_text(<kaisou_help_obj>,DR,"連続回想スロットの内容をすべて[未設定]に戻します。#Dまた、ＢＧＭ設定を初期化します。")
			case(5001)	$help_text(<kaisou_help_obj>,DR,"連続回想スロットに登録されている順番でシーンを再生します。")
			
			case(5002)	$help_text(<kaisou_help_obj>,DR,"連続回想中のＢＧＭを指定のもので統一して再生します。#Dクリックするごとに切り替わります。#D#D[無音にする]：全シーンでＢＧＭが無音になります#D[演出どおりに再生]：シーン本来のＢＧＭが再生されます")
			
			case(9000)	$help_text(<kaisou_help_obj>,DR,"★いもうと美姫ちゃん～用特殊設定★#D#Dチャットやト書き、主人公のセリフなど#D表示のON/OFFを切り替えられます。#D※回想モード中のみ有効")
			
			case(9999)	$help_text(<kaisou_help_obj>,DR,"タイトル画面に戻ります。")
			
	
			default <kaisou_help_obj>.disp = 0
		
		}
		
		
	
	}
	
	<kaisou_help_obj>.layer = 210
	
	
	//---------------------
	//決定
	
	if ($LS_btn0_decided == -1) {
		se.play(@ＳＥ決定)
		syscom.call_config_menu
		goto #start
	}

	if ($LS_btn0_decided == 9000) {	//いもうと美姫ちゃん用サブメニューへ
		se.play(@ＳＥ決定)
		goto #sub_menu
	}

	if ($LS_btn0_decided == 9999) {
		se.play(@ＳＥ決定)
		RETURNMENU
	}


	if ($LS_btn0_decided >= 100 && $LS_btn0_decided < 1999) {
	
		if ($kaisou_sys_mode == 0) {	//シンプルモード中の動作
		
			front.object[$slider_objno].disp = 0
		
			se.play(@ＳＥ決定)
			$CR_MODE = 0
		
			@回想モード中 = $CR_DATA_TAGno[$LS_btn0_decided]
			
			$CR_SYASEI	=	$CR_DATA_SYASEI[$LS_btn0_decided]
			$CR_cancel	=	$CR_DATA_cancel[$LS_btn0_decided]

			//------------------------------
			//いもうと美姫ちゃん特殊処理
			/*

			$mikichan_sys_chat_off = @美姫ちゃん_チャット表示OFF
			$mikichan_sys_togaki_off = @美姫ちゃん_ト書き表示OFF
			$mikichan_sys_hero_off = @美姫ちゃん_主人公セリフOFF
			$mikichan_sys_cg_direction_off = @美姫ちゃん_画像演出OFF 
			$mikichan_sys_live_thumb_off = @美姫ちゃん_配信サムネOFF
			*/

			//------------------------------
		
			@bgmstop(1000)
			@BG(_white)

			script.set_auto_savepoint_off	//★シーン中はセーブポイントＯＦＦ
			syscom.set_msg_back_enable_flag(1)
			syscom.set_save_enable_flag(0)
			syscom.set_auto_mode_enable_flag(1)
			syscom.set_syscom_menu_enable

			
			farcall($CR_DATA_SS[$LS_btn0_decided])


			$CR_MODE = 0

			@回想モード中 = 0


			//------------------------------
			//いもうと美姫ちゃん特殊処理
			/*

			$mikichan_sys_chat_off = 0
			$mikichan_sys_togaki_off = 0
			$mikichan_sys_hero_off = 0
			$mikichan_sys_cg_direction_off = 0
			$mikichan_sys_live_thumb_off  = 0
			*/
			
			
			//------------------------------


			@all_screen_clear 
			@bgmstop(1000)
			@pcm_stop(1000)
			@pcm0_stop
			@pcm1_stop
			
			@hbg_stop_all
			
			script.set_auto_savepoint_on	//セーブポイントＯＮ
		
			goto #init
		
		
		}elseif ($kaisou_sys_mode == 1) {		//連続回想モード中の動作
		
			se.play(@ＳＥチェック)
			for (L[00] = 0,L[00] <= 9,L[00] += 1) {
			
				if (G[L[00]+<CR_INDEX>] == 0) {	//未設定状態のところに代入
				
					$CR_item_set(L[00],$LS_btn0_decided)
					$CR_item_disp
					break
				
				}
			}
			
			
		
		}
	
	}
	
	if ($LS_btn0_decided == 2950) {$kaisou_chr = 0}
	if ($LS_btn0_decided == 2951) {$kaisou_chr = 1}
	if ($LS_btn0_decided == 2952) {$kaisou_chr = 2}
	if ($LS_btn0_decided == 2953) {$kaisou_chr = 3}
	if ($LS_btn0_decided == 2954) {$kaisou_chr = 4}
	if ($LS_btn0_decided == 2955) {$kaisou_chr = 5}
	if ($LS_btn0_decided == 2956) {$kaisou_chr = 6}
	if ($LS_btn0_decided == 2957) {$kaisou_chr = 7}
	
	if ($LS_btn0_decided >= 2950 && $LS_btn0_decided <= 2957) {
		
		$CR_tag_chr($kaisou_chr)
		
		@page_y_kioku(20) = 0
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku(20)
		$tate_slider_behavior
		$set_tate_slider_param
		 
	
	}
	
	
	
	if ($LS_btn0_decided == 3000) {$kaisou_sys_mode = 0}
	if ($LS_btn0_decided == 3001) {$kaisou_sys_mode = 1}
	
	if ($LS_btn0_decided == 4000) {se.play(@ＳＥキャンセル) $CR_item_erase(0) $CR_item_disp}
	if ($LS_btn0_decided == 4001) {se.play(@ＳＥキャンセル) $CR_item_erase(1) $CR_item_disp}
	if ($LS_btn0_decided == 4002) {se.play(@ＳＥキャンセル) $CR_item_erase(2) $CR_item_disp}
	if ($LS_btn0_decided == 4003) {se.play(@ＳＥキャンセル) $CR_item_erase(3) $CR_item_disp}
	if ($LS_btn0_decided == 4004) {se.play(@ＳＥキャンセル) $CR_item_erase(4) $CR_item_disp}
	if ($LS_btn0_decided == 4005) {se.play(@ＳＥキャンセル) $CR_item_erase(5) $CR_item_disp}
	if ($LS_btn0_decided == 4006) {se.play(@ＳＥキャンセル) $CR_item_erase(6) $CR_item_disp}
	if ($LS_btn0_decided == 4007) {se.play(@ＳＥキャンセル) $CR_item_erase(7) $CR_item_disp}
	if ($LS_btn0_decided == 4008) {se.play(@ＳＥキャンセル) $CR_item_erase(8) $CR_item_disp}
	if ($LS_btn0_decided == 4009) {se.play(@ＳＥキャンセル) $CR_item_erase(9) $CR_item_disp}
	
	if ($LS_btn0_decided == 5000) {
	
		se.play(@ＳＥキャンセル) 

		$CR_item_erase(0)
		$CR_item_erase(1)
		$CR_item_erase(2)
		$CR_item_erase(3)
		$CR_item_erase(4)
		$CR_item_erase(5)
		$CR_item_erase(6)
		$CR_item_erase(7)
		$CR_item_erase(8)
		$CR_item_erase(9)
		$kaisou_play_bgm = 0
		$CR_bgm_set

		$CR_item_disp
		
		
		
	}
	
	if ($LS_btn0_decided == 5001) {	//連続再生ボタン
	
		se.play(@ＳＥ決定) 

		front.object[$slider_objno].disp = 0
	
		@bgmstop(1000)
		@BG(_white)
		
		script.set_auto_savepoint_off	//★シーン中はセーブポイントＯＦＦ
		syscom.set_msg_back_enable_flag(1)
		syscom.set_save_enable_flag(0)
		syscom.set_auto_mode_enable_flag(1)
		syscom.set_syscom_menu_enable

		$CR_MODE = 1
	
			//------------------------------
			//いもうと美姫ちゃん特殊処理
			
			/*

			$mikichan_sys_chat_off = @美姫ちゃん_チャット表示OFF
			$mikichan_sys_togaki_off = @美姫ちゃん_ト書き表示OFF
			$mikichan_sys_hero_off = @美姫ちゃん_主人公セリフOFF
			$mikichan_sys_cg_direction_off = @美姫ちゃん_画像演出OFF 
			$mikichan_sys_live_thumb_off = @美姫ちゃん_配信サムネOFF

			*/

			//------------------------------

		for (L[00] = 0,L[00] <= 9, L[00] += 1) {
		
			if ($CR_SET_INDEX[L[00]] != 0) {
			
				syscom.set_msg_back_enable_flag(1)
				syscom.set_save_enable_flag(0)
				syscom.set_auto_mode_enable_flag(1)
			
				@回想モード中 = $CR_SET_TAGno[L[00]]
				
				$CR_SYASEI	=	$CR_SET_SYASEI[L[00]]
				$CR_cancel	=	$CR_SET_cancel[L[00]]
			
				farcall($CR_SET_SS[L[00]])
				
				
				@BG(_white,0,500)
				
				
				
				@all_screen_clear 
				@pcm_stop(1000)
				@pcm0_stop
				@pcm1_stop
				@hbg_stop_all
				
			}
			
		}
		
		
		$CR_MODE = 0
		
		@回想モード中 = 0

			//------------------------------
			//いもうと美姫ちゃん特殊処理

			/*
			$mikichan_sys_chat_off = 0
			$mikichan_sys_togaki_off = 0
			$mikichan_sys_hero_off = 0
			$mikichan_sys_cg_direction_off = 0
			$mikichan_sys_live_thumb_off = 0
			
			*/

			//------------------------------

		@bgmstop(1000)
		
		script.set_auto_savepoint_on	//セーブポイントＯＮ

		goto #init
	
	
	
	}
	
	
	
	if ($LS_btn0_decided == 5002) {se.play(@ＳＥチェック) $kaisou_play_bgm = ($kaisou_play_bgm + 1) % <bgm_count> $CR_bgm_set}
	
	if ($LS_btn0_decided > 0) {goto #start}
	
	
	
	disp


}


//--------------------------
//いもうと美姫ちゃん用サブメニュー

#sub_menu

/*

front.object[210].create(_black_half,1,0,0)
front.object[210].layer = 210
front.object[210].order = <order_sentaku>

front.object[211].create(a0_mode_crHD_special,1,959,539)
front.object[211].layer = 211
front.object[211].order = <order_sentaku>

front.object[211].child.resize(10)

//front.object[211].child[00].create(a0_mode_crHD_submenu_check,1,-265,-220)


#sub_menu_start


$make_check_box(front.object[211].child[00],-265,-220,100,1,@美姫ちゃん_チャット表示OFF^1)
$make_check_box(front.object[211].child[01],-265,-147,101,1,@美姫ちゃん_ト書き表示OFF^1)
$make_check_box(front.object[211].child[02],-265,-68,102,1,@美姫ちゃん_主人公セリフOFF^1)
$make_check_box(front.object[211].child[03],-265,10,103,1,@美姫ちゃん_画像演出OFF^1)
$make_check_box(front.object[211].child[04],-265,84,104,1,@美姫ちゃん_配信サムネOFF^1)





front.object[211].child[05].create(a0_mode_crHD_submenu_exit,1,207,141)
front.object[211].child[05].set_button(200,1,24,@ボタンＳＥ決定音無し)

front.object[211].child[06].create(a0_mode_crHD_submenu_init,1,-265,151)
front.object[211].child[06].set_button(201,1,24,@ボタンＳＥ決定音無し)

@ls_btn_reset
front.objbtngroup[1].start_cancel

while(1){

	$LS_btn1_hit = front.objbtngroup[1].get_hit_no
	$LS_btn1_push = front.objbtngroup[1].get_pushed_no
	$LS_btn1_decided = front.objbtngroup[1].get_decided_no

	switch($LS_btn1_hit) {
		case(100) $help_text(<kaisou_help_obj>,DR,"Ｈシーン中のリスナーによるチャットを表示します。#D（初期値：ON）")
		case(101) $help_text(<kaisou_help_obj>,DR,"配信中のト書き・ナレーションを表示します。#D（初期値：ON）")
		case(102) $help_text(<kaisou_help_obj>,DR,"配信中の主人公のセリフを表示します。#D（初期値：ON）")
		case(103) $help_text(<kaisou_help_obj>,DR,"イベントCG表示中の、システム側による拡縮や移動の演出を許可します。#D（初期値：ON）")
		case(104) $help_text(<kaisou_help_obj>,DR,"配信前後の準備画面・終了画面を表示します。#D（初期値：ON）")
		case(200) $help_text(<kaisou_help_obj>,DR,"メニューを閉じます。（右クリックでも同じ動作）")
		case(201) $help_text(<kaisou_help_obj>,DR,"設定をリセットします。")


	}

	if ($LS_btn1_decided == -1 || $LS_btn1_decided == 200) {
		se.play(@ＳＥキャンセル)
		front.object[210].init
		front.object[211].init
		goto #start
	}

	switch($LS_btn1_decided) {
		case(100) se.play(@ＳＥチェック) @美姫ちゃん_チャット表示OFF = (@美姫ちゃん_チャット表示OFF + 1) % 2 goto #sub_menu_start
		case(101) se.play(@ＳＥチェック) @美姫ちゃん_ト書き表示OFF = (@美姫ちゃん_ト書き表示OFF + 1) % 2 goto #sub_menu_start
		case(102) se.play(@ＳＥチェック) @美姫ちゃん_主人公セリフOFF = (@美姫ちゃん_主人公セリフOFF + 1) % 2 goto #sub_menu_start
		case(103) se.play(@ＳＥチェック) @美姫ちゃん_画像演出OFF = (@美姫ちゃん_画像演出OFF + 1) % 2  goto #sub_menu_start
		case(104) se.play(@ＳＥチェック) @美姫ちゃん_配信サムネOFF = (@美姫ちゃん_配信サムネOFF + 1) % 2  goto #sub_menu_start
		
		case(201) se.play(@ＳＥ決定)
			@美姫ちゃん_チャット表示OFF = 0
			@美姫ちゃん_ト書き表示OFF = 0
			@美姫ちゃん_主人公セリフOFF = 0
			@美姫ちゃん_画像演出OFF = 0
			@美姫ちゃん_配信サムネOFF = 0
			goto #sub_menu_start

	}




	disp

}


*/


command $make_check_box( property $obj:object, property $xpos, property $ypos, property $btn_no, property $btn_group, property $flag )
{	//★2024.07.28 ボタングループ用の引数を一つ追加
	$obj.create( a0_mode_crHD_submenu_check, 1, $xpos, $ypos )
	$obj.set_button( $btn_no, $btn_group, 24, @ボタンＳＥ決定音無し２ )
	
	if( $flag != 0 ){
		$obj.patno = 10
	}
}
















//--------------------------
//タグ生成

command	$CR_tag_create(property $no,property $index,property $patno) {

	if ($index == 0) {
	
		<slider_bg_obj>.child[$no].init
		return
	
	}

	<slider_bg_obj>.child[$no].create(a0_mode_crHD_masu,1,  955+(($no % 2)*592), 205 + (($no / 2) * 260) ,$patno)

	//<slider_bg_obj>.child[$no].create_rect(0,0,500,300,<kaisou_bg_color>,255,1,30,30 + ($no * 350))


	if ($mode == 0) {

		if (G[$CR_DATA_ref_G[$index]] != 1) { <slider_bg_obj>.child[$no].tr = 128 return }
	
	}

	<slider_bg_obj>.child[$no].set_button($index,0,10,@ボタンＳＥ決定音無し２)
	

	
	<slider_bg_obj>.child[$no].child.resize(30)
	<slider_bg_obj>.child[$no].child[0].create($CR_DATA_CGThm[$index],1,-132,22,$CR_DATA_CGThm_patno[$index])
	<slider_bg_obj>.child[$no].child[0].set_scale(600,600)
	
	<slider_bg_obj>.child[$no].child[1].create_string($CR_DATA_ACTION[$index],1,-230,-102)
	<slider_bg_obj>.child[$no].child[1].set_string_param(25,1,3,0,<white>,0,0)
	
	//<slider_bg_obj>.child[$no].child[4].create_rect(-148,-80,154,90,<kaisou_title_color>,255,1,150,90)
	//<slider_bg_obj>.child[$no].child[4].child.resize(1)
	//<slider_bg_obj>.child[$no].child[4].child[0].create($CR_DAT
		
	<slider_bg_obj>.child[$no].child[2].create_string($CR_DATA_COMMENT[$index],1,20,-53)
	<slider_bg_obj>.child[$no].child[2].set_string_param(22,0,7,11,<black>,0,0)
	
	if ($CR_DATA_COMMENT[$index].cnt > (11*5)) {<slider_bg_obj>.child[$no].child[2].y = 52 <slider_bg_obj>.child[$no].child[2].scale_y = 900 }
	

}


//--------------------------
//キャラごとにタグ変更

command $CR_tag_chr(property $chr_old) {

	switch($chr_old) {		//★ここの個数で全体の数が決まる
	
		case(0)	$CR_tag_create(0,100,1)
				$CR_tag_create(1,110,0)
				$CR_tag_create(2,120,0)
				$CR_tag_create(3,130,0)
				$CR_tag_create(4,140,0)
				$CR_tag_create(5,150,0)
				$CR_tag_create(6,160,0)
				$CR_tag_create(7,170,0)
				$CR_tag_create(8,180,0)
				$CR_tag_create(9,190,0)
				$CR_tag_create(10,200,0)
				$CR_tag_create(11,210,0)
				$CR_tag_create(12,220,0)
				$CR_tag_create(13,230,1)
				$CR_tag_create(14,240,0)
				$CR_tag_create(15,250,0)
				$CR_tag_create(16,260,1)
				$CR_tag_create(17,270,0)
				$CR_tag_create(18,280,0)
				$CR_tag_create(19,290,0)
				$CR_tag_create(20,300,0)
				$CR_tag_create(21,310,0)
				$CR_tag_create(22,320,0)
				$CR_tag_create(23,330,0)
				$CR_tag_create(24,340,0)
				$CR_tag_create(25,350,0)
				$CR_tag_create(26,360,1)
				$CR_tag_create(27,370,0)
				$CR_tag_create(28,380,0)
				$CR_tag_create(29,390,0)
				$CR_tag_create(30,400,1)
				$CR_tag_create(31,410,0)
				$CR_tag_create(32,420,0)
				$CR_tag_create(33,430,0)
				$CR_tag_create(34,440,0)
				$CR_tag_create(35,450,0)
				$CR_tag_create(36,460,0)

				
	}

}





//--------------------------
//連続回想モード画面生成

command	$CR_item_create {

	front.object[190].create(a0_mode_crHD_mode_renzoku_bg,1,959,539)
	front.object[190].child.resize(50)
	//front.object[190].layer = 50

	front.object[190].child[00].create_string("最大１６文字ああああああああああ",1,-875,-337)
	front.object[190].child[00].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[01].create_string("最大１６文字ああああああああああ",1,-875,-277)
	front.object[190].child[01].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[02].create_string("最大１６文字ああああああああああ",1,-875,-217)
	front.object[190].child[02].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[03].create_string("最大１６文字ああああああああああ",1,-875,-157)
	front.object[190].child[03].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[04].create_string("最大１６文字ああああああああああ",1,-875,-97)
	front.object[190].child[04].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[05].create_string("最大１６文字ああああああああああ",1,-875,-37)
	front.object[190].child[05].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[06].create_string("最大１６文字ああああああああああ",1,-875, 23)
	front.object[190].child[06].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[07].create_string("最大１６文字ああああああああああ",1,-875, 83)
	front.object[190].child[07].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[08].create_string("最大１６文字ああああああああああ",1,-875,143)
	front.object[190].child[08].set_string_param(26,-2,0,0,<white>,0,0)
	front.object[190].child[09].create_string("最大１６文字ああああああああああ",1,-875,203)
	front.object[190].child[09].set_string_param(26,-2,0,0,<white>,0,0)

	front.object[190].child[20].create(a0_mode_crHD_erase_bt,1,-375,-326)
	front.object[190].child[20].set_button(4000,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[21].create(a0_mode_crHD_erase_bt,1,-375,-266)
	front.object[190].child[21].set_button(4001,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[22].create(a0_mode_crHD_erase_bt,1,-375,-206)
	front.object[190].child[22].set_button(4002,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[23].create(a0_mode_crHD_erase_bt,1,-375,-146)
	front.object[190].child[23].set_button(4003,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[24].create(a0_mode_crHD_erase_bt,1,-375,-86)
	front.object[190].child[24].set_button(4004,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[25].create(a0_mode_crHD_erase_bt,1,-375,-26)
	front.object[190].child[25].set_button(4005,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[26].create(a0_mode_crHD_erase_bt,1,-375,34)
	front.object[190].child[26].set_button(4006,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[27].create(a0_mode_crHD_erase_bt,1,-375,94)
	front.object[190].child[27].set_button(4007,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[28].create(a0_mode_crHD_erase_bt,1,-375,154)
	front.object[190].child[28].set_button(4008,0,10,@ボタンＳＥ決定音無し)
	front.object[190].child[29].create(a0_mode_crHD_erase_bt,1,-375,214)
	front.object[190].child[29].set_button(4009,0,10,@ボタンＳＥ決定音無し)

	//front.object[190].child[43].create(a0_mode_cr_reset_bt,1,363,484)
	//front.object[190].child[43].set_button(5000,0,10,0)
	front.object[190].child[44].create(a0_mode_crHD_play,1,-645,381)
	front.object[190].child[44].set_button(5001,0,10,@ボタンＳＥ決定音無し２)

	//front.object[190].child[40].create(a0_mode_cr_bgmchange,1,-65,457)
	front.object[190].child[41].create_string("ＢＧＭＢＧＭＢＧＭ",1,-730,277)
	front.object[190].child[41].set_string_param(26,-1,0,0,<white>,0,0)
	front.object[190].child[42].create(a0_mode_crHD_bgmchange_bt,1,-851,290)
	front.object[190].child[42].set_button(5002,0,10,@ボタンＳＥ決定音無し２)

	front.object[190].child[43].create(a0_mode_crHD_erase_all_bt,1,-385,381)
	front.object[190].child[43].set_button(5000,0,10,@ボタンＳＥ決定音無し)
	
	if ($kaisou_sys_mode == 0) {front.object[190].disp = 0} else {front.object[190].disp = 1}

}

//--------------------------
//連続回想モードアイテム表示反映

command $CR_item_disp{

	for(L[00] = 0,L[00] <= 9,L[00] += 1) {
	
		
		if ($CR_SET_ACTION[L[00]] != "") {
		
			//K[00] = $CR_SET_CHR[L[00]] + "：" + $CR_SET_ACTION[L[00]]	//キャラ複数の場合はこっち
			
			K[00] =  $CR_SET_ACTION[L[00]]
			
			K[01] = K[00].left(20)
			
			front.object[190].child[00 + L[00]].set_string(K[01])
		
		}else {
		
			front.object[190].child[00 + L[00]].set_string("#24C[未設定]")
		
		}
	
	
	}


}

//--------------------------
//連続回想モードアイテムセット＆取得

command	$CR_item_set(property $no,property $index) {
	
	G[<CR_INDEX> + $no] = $index
	$CR_item_get

}

command $CR_item_get {
	for (L[00] = 0,L[00]<10,L[00]+=1) {
		L[01] = G[<CR_INDEX> + L[00]]

		$CR_SET_INDEX[L[00]] 		= $CR_DATA_INDEX[L[01]]
		$CR_SET_SS[L[00]] 			= $CR_DATA_SS[L[01]]
		$CR_SET_CHR[L[00]] 			= $CR_DATA_CHR[L[01]]
		$CR_SET_TITLE[L[00]] 		= $CR_DATA_TITLE[L[01]]
		$CR_SET_ACTION[L[00]]		= $CR_DATA_ACTION[L[01]]
		$CR_SET_SYASEI[L[00]]		= $CR_DATA_SYASEI[L[01]]
		$CR_SET_TAGNo[L[00]] 		= $CR_DATA_TAGno[L[01]]
		$CR_SET_cancel[L[00]] 		= $CR_DATA_cancel[L[01]]
		$CR_SET_CGThm[L[00]] 		= $CR_DATA_CGThm[L[01]]
		$CR_SET_CGThm_patno[L[00]] 	= $CR_DATA_CGThm_patno[L[01]]
		$CR_SET_DATA_COMMENT[L[00]] = $CR_DATA_COMMENT[L[01]]

	}

}




//--------------------------
//連続回想モードアイテム消去

command	$CR_item_erase(property $no) {

	G[<CR_INDEX> + $no] = 0

	$CR_SET_INDEX[$no] 		= 0
	$CR_SET_SS[$no] 		= ""
	$CR_SET_CHR[$no] 		= ""
	$CR_SET_TITLE[$no] 		= ""
	$CR_SET_ACTION[$no]		= ""
	$CR_SET_SYASEI[$no]		= 0
	$CR_SET_TAGNo[$no] 		= 0
    $CR_SET_cancel[$no] 	= 0
    $CR_SET_CGThm[$no] 		= ""
    $CR_SET_CGThm_patno[$no] = 0
    $CR_SET_DATA_COMMENT[$no] = ""
    
}





//--------------------------
//連続回想モードBGM反映

command $CR_bgm_set{

	switch($kaisou_play_bgm) {
	
		case(0)	$CR_BGM = "" @BGM(BGM10)
				front.object[190].child[41].set_string("[演出どおりに再生]")
	
		case(1)	$CR_BGM = "BGM13" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM13>)
		
		case(2)	$CR_BGM = "BGM14" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM14>)
		
		case(3)	$CR_BGM = "BGM15" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM15>)
		
		case(4)	$CR_BGM = "BGM16" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM16>)
		
		case(5)	$CR_BGM = "BGM11" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM11>)
				
		case(6)	$CR_BGM = "BGM12" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM12>)
				
		case(7)	$CR_BGM = "BGM06" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM06>)

		case(8)	$CR_BGM = "BGM01" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM01>)

		case(9)	$CR_BGM = "BGM10" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM10>)

		case(10)	$CR_BGM = "BGM02" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM02>)

		case(11)	$CR_BGM = "BGM03" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM03>)

		case(12)	$CR_BGM = "BGM04" @BGM($CR_BGM)
				front.object[190].child[41].set_string(<BGM04>)
		
		case(13)	$CR_BGM = "BGM00" @bgmstop
				front.object[190].child[41].set_string("[無音にする]")
		
		

	
	}



}








