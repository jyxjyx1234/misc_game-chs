#Z00

//------------------------------------------
//ＣＧモード

#INC_START

	#DEFINE	<cg_allcount>	34
	
	#DEFINE	<chr_start_index>	0		//キャラごとに変える
	
	#DEFINE	<cg_help_obj> 	front.object[<help_txt_objno>]


	#PROPERTY	$m11_mizugi : str
	
	#PROPERTY	$tachie1_no
	#PROPERTY	$tachie2_no
	


#INC_END


//cgtable.set_all_flag(1) ////////////////////////////





$mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）




#init

@BGM(BGM15)

$cg_mode_flag = 1 //★2023.03.02追加

set_title("◆ＣＧモード")		//$set_titleはシステムでは使わない


clear_msgbk

syscom.set_msg_back_enable_flag(0)
syscom.set_save_enable_flag(0)
syscom.set_auto_mode_enable_flag(0)
syscom.set_syscom_menu_disable

script.set_ctrl_skip_enable		//ctrlキーは専用の早送りを使う


@回想モード中 = 0

if (front.object[<bg_eyeopen_objno>].exist_type == 1) {

	@BG(_black,1,0)
	front.object[<bg_eyeopen_objno>].tr_eve.set(0,500,0,2)

}


$eventcg_mabataki_douki_flag = 0

$cg_mode_in = 1

back.object[01].create(_black_half,1,0,0)


@transition_04_in
@BG(BG40_AA,1,0)

//@filter_all_erase(1)	//★フィルタ消去
$multiple_mouse_scroll_init(0) // マルチプルマウスリセット


<slider_bg_obj>.init
<slider_bg_obj>.child.resize(100)
<slider_bg_obj>.layer = 100
<slider_bg_obj>.disp = 1

//サムネイル生成

L[01] = 0
L[02] = 0

for(L[00] = 1,L[00]<= <cg_allcount>,L[00]+= 1) {

	<slider_bg_obj>.child[L[00]].create(a0_mode_cg_thumb,0,240 + L[01] * 456,160 + L[02] * 270)

	L[01] = (L[01] + 1) % 4
	L[02] = L[00] / 4
	
	if (cgtable.flag[L[00] + <chr_start_index>] == 1) {
	
		<slider_bg_obj>.child[L[00]].patno = L[00]
		<slider_bg_obj>.child[L[00]].set_button(L[00] + <chr_start_index>,0,10,0)
		
	
	}

	<slider_bg_obj>.child[L[00]].child.resize(2)
	<slider_bg_obj>.child[L[00]].child[00].create(a0_mode_cg_thumb,1,0,0,100)

	<slider_bg_obj>.child[L[00]].set_scale(950,950)
	<slider_bg_obj>.child[L[00]].disp = 1

}

//---------------
//★立ち絵閲覧用マス追加	★2023.07.01


L[00] += 1
L[01] = 2
L[02] += 0

<slider_bg_obj>.child[L[00]].create(a0_mode_cg_thumb,0,240 + L[01] * 456,160 + L[02] * 270,210)
<slider_bg_obj>.child[L[00]].child.resize(2)
<slider_bg_obj>.child[L[00]].child[00].create(a0_mode_cg_thumb,1,0,0,100)
<slider_bg_obj>.child[L[00]].set_button(L[00],0,10,0)
<slider_bg_obj>.child[L[00]].set_scale(950,950)
<slider_bg_obj>.child[L[00]].disp = 1

if (@珠理奈クリア != 1) {<slider_bg_obj>.child[L[00]].set_button_state_disable}

$tachie1_no = L[00]


L[00] += 1
L[01] += 1

<slider_bg_obj>.child[L[00]].create(a0_mode_cg_thumb,0,240 + L[01] * 456,160 + L[02] * 270,211)
<slider_bg_obj>.child[L[00]].child.resize(2)
<slider_bg_obj>.child[L[00]].child[00].create(a0_mode_cg_thumb,1,0,0,100)
<slider_bg_obj>.child[L[00]].set_button(L[00],0,10,0)
<slider_bg_obj>.child[L[00]].set_scale(950,950)
<slider_bg_obj>.child[L[00]].disp = 1

if (@香住クリア != 1) {<slider_bg_obj>.child[L[00]].set_button_state_disable}


$tachie2_no = L[00]




//スライダー生成

$create_tate_slider(<slider_cgmode>)	//★ 縦スライダーを新しく作る度に「_★縦スライダー生成.inc」 に登録すること
<slider_bg_obj>.y_rep[00] = -@page_y_kioku(<slider_cgmode>)

$tate_slider_behavior
$set_tate_slider_param


//出口ボタン生成

front.object[200].create(a0_mode_crHD_exit_bt,1,1600,1040)
front.object[200].set_button(1001,0,10,0)	//1000を念の為避けた
front.object[200].layer = 200




@transition_04_out(0,1)

script.set_ctrl_skip_disable		//ctrlキーは専用の早送りを使う

//--------------------------
//実動作部分



#start


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
	
	if ($LS_btn0_hit >= 0 && $LS_btn0_hit < 900) {
	
		for (L[00] = 1,L[00]<= 99,L[00]+= 1) {
		
			if (<slider_bg_obj>.child[L[00]].exist_type == 1){
			
				<slider_bg_obj>.child[L[00]].set_scale(950,950)
			
			}
		
		}
	
	
		<slider_bg_obj>.child[$LS_btn0_hit - <chr_start_index>].set_scale(1000,1000)

		if (mouse.get_pos_x < 922){
			$help_text(<cg_help_obj>,DR,"CGのすべての差分を順送りで鑑賞します。#D#D右クリックorESCキーで途中で鑑賞を終了できます。")
		}else{
			$help_text(<cg_help_obj>,DL,"CGのすべての差分を順送りで鑑賞します。#D#D右クリックorESCキーで途中で鑑賞を終了できます。")
		}

		//<cg_help_obj>.disp = 0

	}else {
	
		for (L[00] = 1,L[00]<= 99,L[00]+= 1) {
		
			if (<slider_bg_obj>.child[L[00]].exist_type == 1){
		
				<slider_bg_obj>.child[L[00]].set_scale(950,950)
			
			}
		
		}
		
		switch($LS_btn0_hit) {
		
			case(950)	$help_text(<cg_help_obj>,DR,"項目一覧を切り替えます。")
			case(951)	$help_text(<cg_help_obj>,DR,"項目一覧を切り替えます。")
			case(952)	$help_text(<cg_help_obj>,DR,"項目一覧を切り替えます。")
			case(953)	$help_text(<cg_help_obj>,DR,"項目一覧を切り替えます。")
			case(954)	$help_text(<cg_help_obj>,DR,"項目一覧を切り替えます。")
			
			case(1001)	$help_text(<cg_help_obj>,DL,"タイトル画面に戻ります。")
		
			default <cg_help_obj>.disp = 0
		
		}
		
		<cg_help_obj>.layer = <help_txt_objno>
		
		
	
	}
	
	
	if ($LS_btn0_decided >= 0 && $LS_btn0_decided < 900) {
	
		<cg_help_obj>.disp = 0

		syscom.set_syscom_menu_disable	//右クリック禁止
		
	
		@回想モード中 = 1	//ＣＧ動作変更のため
		
		front.object[$slider_objno].disp = 0
		
		gosub #cg_print
		
		
		
		goto #init
	
	
	}
	
	
	
	
	if ($LS_btn0_decided == -1) {RETURNMENU}

	if ($LS_btn0_decided == 1001) {RETURNMENU}
	
	
	if ($LS_btn0_decided > 0) {goto #start}
	
	
	input.next
	disp


}


//--------------------------------------
//CG表示部分

#cg_print

switch($LS_btn0_decided) {

	//-----------------------------
	//ＣＧ一覧
	
	case($tachie1_no)	//立ち絵１
	
			@BG(BG40_AA,0,300)

			//中央→左→右 の順

			@tachi_cg_set(jur1A_000,jur1B_110,jur1C_220)
			@cg_wait
			@tachi_cg_set("",jur1D_A30,jur1E_B40)
			@cg_wait
			@tachi_cg_set(jur2A_CA0,jur3B_XB0,jur4C_YY0)
			@cg_wait
			@tachi_cg_set(jurAA_060,jurBB_070,jurCC_080)
			@cg_wait
			@tachi_cg_set("",jur5D_X90,jurDE_0C0)
			@cg_wait


			
	case($tachie2_no)	//立ち絵２
	
			@BG(BG41_AA,0,300)

			@tachi_cg_set(kas1A_000,kas1B_110,kas1C_220)
			@cg_wait
			@tachi_cg_set("",kas2A_A30,kas3B_B60)
			@cg_wait
			@tachi_cg_set("",kasAA_CB0,kasBB_X80)
			@cg_wait
			@tachi_cg_set("",kas4A_X70,kasCC_YY0)
			@cg_wait

	//CGモード用のstartエフェクト番号は10

	case(cgtable.get_flag_no_by_name("CG000_00"))	//記述例
	
		@eventcg_base_setup(CG000,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG000_00,10,_,"10","10","10") @cg_wait
		@eventcg_change(CG000_01,500,_,"50","50","10") @cg_wait
		@eventcg_change(CG000_01,500,_,"10","X0","X0") @cg_wait
		@eventcg_change(CG000_01,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG000_10,500,_,"50","50","40") @cg_wait
		@eventcg_change(CG000_10,500,_,"10","6A","40") @cg_wait
		@eventcg_change(CG000_20,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG000_20,500,_,"70","50","70") @cg_wait


	case(cgtable.get_flag_no_by_name("CG001_00"))

		@eventcg_base_setup(CG001,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG001_00,10,_,"10","10","10") @cg_wait

		@eventcg_change(CG001_00,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG001_00,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_00,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_00,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG001_00,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG001_00,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG001_0A,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_10,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG001_1A,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG001_11,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_11,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG001_11,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG001_11,500,_,"80","80","30") @cg_wait
		@eventcg_change(CG001_1B,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG001_1B,500,_,"40","40","30") @cg_wait
		@eventcg_change(CG001_11,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG001_11,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_11,500,_,"60","60","40") @cg_wait
		@eventcg_change(CG001_11,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG001_11,500,_,"20","20","60") @cg_wait
		@eventcg_change(CG001_11,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_1B,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG001_1B,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG001_20,500,_,"","","") @cg_wait
		@eventcg_change(CG001_20,500,_,"","","") @cg_wait
		@eventcg_change(CG001_30,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_30,500,_,"20","60","20") @cg_wait
		@eventcg_change(CG001_30,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_30,500,_,"40","10","80") @cg_wait
		@eventcg_change(CG001_3A,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_4A,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_4B,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_4B,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG001_4B,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_51,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_51,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG001_5B,500,_,"50","50","30") @cg_wait
		@eventcg_change(CG001_51,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG001_5B,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG001_5B,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG001_5B,500,_,"80","80","80") @cg_wait
		@eventcg_change(CG001_60,500,_,"","","") @cg_wait
		@eventcg_change(CG001_70,500,_,"","","") @cg_wait
		@eventcg_change(CG001_80,500,_,"","","") @cg_wait
		@eventcg_change(CG001_70,500,_,"","","") @cg_wait
		@eventcg_change(CG001_7A,500,_,"","","") @cg_wait
		@eventcg_change(CG001_8A,500,_,"","","") @cg_wait


	case(cgtable.get_flag_no_by_name("CG002_00"))

		@eventcg_base_setup(CG002,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG002_00,10,_,"10","10","10") @cg_wait

		@eventcg_change(CG002_00,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_00,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_0A,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_10,500,_,"40","4A","40") @cg_wait
		@eventcg_change(CG002_10,500,_,"60","6A","60") @cg_wait
		@eventcg_change(CG002_10,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_1A,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_11,500,_,"40","40","50") @cg_wait
		@eventcg_change(CG002_11,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_1B,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG002_11,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG002_11,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_20,500,_,"40","40","50") @cg_wait
		@eventcg_change(CG002_20,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG002_20,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG002_2A,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_2A,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_21,500,_,"50","40","50") @cg_wait
		@eventcg_change(CG002_21,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG002_21,500,_,"50","50","20") @cg_wait
		@eventcg_change(CG002_2B,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_21,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_22,500,_,"50","40","50") @cg_wait
		@eventcg_change(CG002_22,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_22,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG002_22,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_22,500,_,"40","40","30") @cg_wait
		@eventcg_change(CG002_22,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG002_2C,500,_,"70","70","20") @cg_wait
		@eventcg_change(CG002_2C,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_30,500,_,"40","40","50") @cg_wait
		@eventcg_change(CG002_30,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG002_3A,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG002_40,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG002_40,500,_,"70","70","70") @cg_wait
		@eventcg_change(CG002_4A,500,_,"30","30","30") @cg_wait


	case(cgtable.get_flag_no_by_name("CG003_00"))
			
		@eventcg_base_setup(CG003,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG003_00,10,_,"40","40","40") @cg_wait

		@eventcg_change(CG003_00,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG003_00,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG003_0A,500,_,"60","60","40") @cg_wait
		@eventcg_change(CG003_0A,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG003_0A,500,_,"30","10","10") @cg_wait
		@eventcg_change(CG003_01,500,_,"40","40","60") @cg_wait
		@eventcg_change(CG003_01,500,_,"30","20","20") @cg_wait
		@eventcg_change(CG003_01,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG003_0B,500,_,"60","10","10") @cg_wait
		@eventcg_change(CG003_10,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG003_10,500,_,"60","40","60") @cg_wait
		@eventcg_change(CG003_10,500,_,"10","10","60") @cg_wait
		@eventcg_change(CG003_10,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG003_10,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG003_10,500,_,"60","10","10") @cg_wait
		@eventcg_change(CG003_10,500,_,"60","50","50") @cg_wait
		@eventcg_change(CG003_10,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG003_10,500,_,"40","10","10") @cg_wait
		@eventcg_change(CG003_10,500,_,"60","60","50") @cg_wait
		@eventcg_change(CG003_11,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG003_11,500,_,"40","20","20") @cg_wait
		@eventcg_change(CG003_11,500,_,"60","50","50") @cg_wait
		@eventcg_change(CG003_11,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG003_11,500,_,"60","20","20") @cg_wait
		@eventcg_change(CG003_20,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG003_20,500,_,"30","60","60") @cg_wait
		@eventcg_change(CG003_20,500,_,"60","40","60") @cg_wait
		@eventcg_change(CG003_20,500,_,"10","10","60") @cg_wait
		@eventcg_change(CG003_20,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG003_20,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG003_21,500,_,"40","40","10") @cg_wait
		@eventcg_change(CG003_21,500,_,"40","50","50") @cg_wait
		@eventcg_change(CG003_21,500,_,"60","20","20") @cg_wait
		@eventcg_change(CG003_21,500,_,"60","50","50") @cg_wait
		@eventcg_change(CG003_21,500,_,"30","10","10") @cg_wait
		@eventcg_change(CG003_21,500,_,"20","20","50") @cg_wait
		@eventcg_change(CG003_21,500,_,"60","60","50") @cg_wait
		@eventcg_change(CG003_21,500,_,"30","20","20") @cg_wait
		@eventcg_change(CG003_21,500,_,"60","60","30") @cg_wait
		@eventcg_change(CG003_21,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG003_21,500,_,"40","40","20") @cg_wait
		@eventcg_change(CG003_21,500,_,"60","60","20") @cg_wait
		@eventcg_change(CG003_30,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG003_30,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG003_31,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG003_31,500,_,"30","20","20") @cg_wait
		@eventcg_change(CG003_31,500,_,"60","50","50") @cg_wait
		@eventcg_change(CG003_31,500,_,"60","20","20") @cg_wait
		@eventcg_change(CG003_40,500,_,"40","40","20") @cg_wait
		@eventcg_change(CG003_40,500,_,"30","30","10") @cg_wait
		@eventcg_change(CG003_40,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG003_4A,500,_,"60","50","50") @cg_wait


	case(cgtable.get_flag_no_by_name("CG003A_A0"))

		@eventcg_base_setup(CG003,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG003A_A0,10,_,"40","40","10") @cg_wait

		@eventcg_change(CG003A_A0,500,_,"40","20","20") @cg_wait
		@eventcg_change(CG003A_AA,500,_,"60","60","60") @cg_wait
		@eventcg_change(CG003A_A0,500,_,"60","60","30") @cg_wait
		@eventcg_change(CG003A_A1,500,_,"40","40","10") @cg_wait
		@eventcg_change(CG003A_A1,500,_,"40","10","20") @cg_wait
		@eventcg_change(CG003A_A1,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG003A_A1,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG003A_A1,500,_,"40","40","20") @cg_wait
		@eventcg_change(CG003A_A1,500,_,"20","20","50") @cg_wait
		@eventcg_change(CG003A_AB,500,_,"20","20","50") @cg_wait
		@eventcg_change(CG003A_B0,500,_,"30","30","50") @cg_wait
		@eventcg_change(CG003A_B0,500,_,"30","30","20") @cg_wait
		@eventcg_change(CG003A_B0,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG003A_BA,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG003A_BA,500,_,"60","60","50") @cg_wait
		@eventcg_change(CG003A_B1,500,_,"60","60","50") @cg_wait
		@eventcg_change(CG003A_B1,500,_,"40","40","10") @cg_wait
		@eventcg_change(CG003A_BB,500,_,"60","20","50") @cg_wait
		@eventcg_change(CG003A_BB,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG003A_BB,500,_,"40","20","20") @cg_wait
		@eventcg_change(CG003A_BB,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG003A_BB,500,_,"40","40","30") @cg_wait
		@eventcg_change(CG003A_C0,500,_,"30","30","40") @cg_wait
		@eventcg_change(CG003A_C0,500,_,"60","60","20") @cg_wait
		@eventcg_change(CG003A_C0,500,_,"10","50","50") @cg_wait


	case(cgtable.get_flag_no_by_name("CG004_00"))

		@eventcg_base_setup(CG004,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG004_00,10,_,"10","10") @cg_wait

		@eventcg_change(CG004_00,500,_,"10","40") @cg_wait
		@eventcg_change(CG004_00,500,_,"20","20") @cg_wait
		@eventcg_change(CG004_00,500,_,"40","40") @cg_wait
		@eventcg_change(CG004_00,500,_,"30","30") @cg_wait
		@eventcg_change(CG004_0A,500,_,"40","40") @cg_wait
		@eventcg_change(CG004_00,500,_,"40","30") @cg_wait
		@eventcg_change(CG004_00,500,_,"10","10") @cg_wait
		@eventcg_change(CG004_10,500,_,"10","C0") @cg_wait
		@eventcg_change(CG004_11,500,_,"10","B0") @cg_wait
		@eventcg_change(CG004_11,500,_,"30","C0") @cg_wait
		@eventcg_change(CG004_11,500,_,"10","A0") @cg_wait
		@eventcg_change(CG004_11,500,_,"20","D0") @cg_wait
		@eventcg_change(CG004_00,500,_,"20","20","X0") @cg_wait
		@eventcg_change(CG004_00,500,_,"40","40","X0") @cg_wait
		@eventcg_change(CG004_00,500,_,"10","40","X0") @cg_wait
		@eventcg_change(CG004_0A,500,_,"40","40","") @cg_wait
		@eventcg_change(CG004_0A,500,_,"20","20","") @cg_wait
		@eventcg_change(CG004_0A,500,_,"10","40","") @cg_wait
		@eventcg_change(CG004_00,500,_,"20","20","") @cg_wait
		@eventcg_change(CG004_11,500,_,"10","C0") @cg_wait
		@eventcg_change(CG004_11,500,_,"20","B0") @cg_wait
		@eventcg_change(CG004_11,500,_,"40","D0") @cg_wait
		@eventcg_change(CG004_00,500,_,"10","10","X0") @cg_wait
		@eventcg_change(CG004_20,500,_,"40","C0") @cg_wait
		@eventcg_change(CG004_20,500,_,"30","B0") @cg_wait
		@eventcg_change(CG004_20,500,_,"30","C0") @cg_wait
		@eventcg_change(CG004_20,500,_,"40","D0") @cg_wait
		@eventcg_change(CG004_30,500,_,"30","30","X0") @cg_wait
		@eventcg_change(CG004_3A,500,_,"40","40","") @cg_wait
		@eventcg_change(CG004_3A,500,_,"30","30","") @cg_wait


	case(cgtable.get_flag_no_by_name("CG005_00"))

		@eventcg_base_setup(CG005,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG005_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG005_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005_00,500,"","30","20","X0") @cg_wait
		@eventcg_change(CG005_00,500,"","10","10","10") @cg_wait
		@eventcg_change(CG005_00,500,"","30","10","30") @cg_wait
		@eventcg_change(CG005_00,500,"","40","40","20") @cg_wait
		@eventcg_change(CG005_00,500,"","10","10","X0") @cg_wait
		@eventcg_change(CG005_00,500,"_ON","10","10","X0") @cg_wait
		@eventcg_change(CG005_00,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005_00,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005_00,500,"_ON","40","10","X0") @cg_wait
		@eventcg_change(CG005_00,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG005_00,500,"","40","40","30") @cg_wait
		@eventcg_change(CG005_00,500,"","30","10","10") @cg_wait
		@eventcg_change(CG005_00,500,"","30","10","X0") @cg_wait
		@eventcg_change(CG005_10,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005_20,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005_20,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG005_20,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005_20,500,"","10","10","X0") @cg_wait
		@eventcg_change(CG005_20,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005_21,500,"","30","30","40") @cg_wait
		@eventcg_change(CG005_21,500,"","30","10","X0") @cg_wait
		@eventcg_change(CG005_30,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005_30,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005_30,500,"","10","10","10") @cg_wait
		@eventcg_change(CG005_30,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG005_30,500,"_ON","30","10","X0") @cg_wait
		@eventcg_change(CG005_31,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005_31,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG005_31,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005_40,500,"","40","X0","X0") @cg_wait
		@eventcg_change(CG005_40,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005_40,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005_41,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005_41,500,"","40","10","X0") @cg_wait
		@eventcg_change(CG005_41,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005_41,500,"_ON","40","10","X0") @cg_wait
		@eventcg_change(CG005_50,500,"","40","X0","40") @cg_wait
		@eventcg_change(CG005_50,500,"","40","X0","X0") @cg_wait
		@eventcg_change(CG005_50,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005_50,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG005_50,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG005_51,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG005_51,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005_51,500,"","10","10","X0") @cg_wait
		@eventcg_change(CG005_51,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG005_51,500,"","30","30","20") @cg_wait
		@eventcg_change(CG005_51,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005_60,500,"","40","X0","40") @cg_wait
		@eventcg_change(CG005_61,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005_61,500,"","40","20","20") @cg_wait
		@eventcg_change(CG005_61,500,"","40","X0","X0") @cg_wait
		@eventcg_change(CG005_61,500,"","40","20","X0") @cg_wait
		@eventcg_change(CG005_70,500,"","40","X0","40") @cg_wait
		@eventcg_change(CG005_80,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005_80,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005_80,500,"","10","10","X0") @cg_wait


	case(cgtable.get_flag_no_by_name("CG005A_00"))

		@eventcg_base_setup(CG005,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG005A_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG005A_00,500,"","40","20","X0") @cg_wait
		@eventcg_change(CG005A_00,500,"","10","10","10") @cg_wait
		@eventcg_change(CG005A_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005A_00,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005A_00,500,"","40","20","20") @cg_wait
		@eventcg_change(CG005A_00,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005A_00,500,"","40","20","40") @cg_wait
		@eventcg_change(CG005A_10,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005A_10,500,"","40","30","40") @cg_wait
		@eventcg_change(CG005A_10,500,"","40","20","40") @cg_wait
		@eventcg_change(CG005A_10,500,"","20","20","X0") @cg_wait
		@eventcg_change(CG005A_20,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005A_20,500,"","10","10","10") @cg_wait
		@eventcg_change(CG005A_20,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005A_20,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005A_30,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005A_40,500,"","30","X0","30") @cg_wait
		@eventcg_change(CG005A_40,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005A_40,500,"","30","10","30") @cg_wait
		@eventcg_change(CG005A_40,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG005A_41,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005A_41,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG005A_41,500,"","30","20","X0") @cg_wait
		@eventcg_change(CG005A_41,500,"","40","X0","40") @cg_wait
		@eventcg_change(CG005A_50,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG005A_50,500,"","40","X0","X0") @cg_wait
		@eventcg_change(CG005A_50,500,"","20","20","20") @cg_wait
		@eventcg_change(CG005A_51,500,"","30","X0","40") @cg_wait
		@eventcg_change(CG005A_51,500,"_ON","30","20","X0") @cg_wait
		@eventcg_change(CG005A_51,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005A_51,500,"","30","20","X0") @cg_wait
		@eventcg_change(CG005A_51,500,"","30","40","X0") @cg_wait
		@eventcg_change(CG005A_51,500,"","30","X0","X0") @cg_wait
		@eventcg_change(CG005A_51,500,"","40","20","20") @cg_wait
		@eventcg_change(CG005A_60,500,"","40","40","40") @cg_wait
		@eventcg_change(CG005A_60,500,"","40","X0","X0") @cg_wait
		@eventcg_change(CG005A_70,500,"","30","40","40") @cg_wait
		@eventcg_change(CG005A_70,500,"","30","20","20") @cg_wait
		@eventcg_change(CG005A_70,500,"","40","20","X0") @cg_wait
		@eventcg_change(CG005A_70,500,"","20","20","20") @cg_wait


	case(cgtable.get_flag_no_by_name("CG006_00"))

		@eventcg_base_setup(CG006,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG006_00,10,_,"10","10","10") @cg_wait

		@eventcg_change(CG006_00,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG006_00,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG006_00,500,_,"10","10","10") @cg_wait

		@eventcg_change(CG006_A1,500,_,"40","40","20") @cg_wait
		@eventcg_change(CG006_A1,500,_,"20","20","40") @cg_wait


	case(cgtable.get_flag_no_by_name("CG006A_00"))

		@eventcg_base_setup(CG006A,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG006A_00,10,_,"10","10","10") @cg_wait

		@eventcg_change(CG006A_10,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG006A_11,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG006A_11,500,_,"X0","X0","X0") @cg_wait
		@eventcg_change(CG006A_11,500,_,"10","10","X0") @cg_wait
		@eventcg_change(CG006A_11,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG006A_20,500,_,"10","X0","10") @cg_wait
		@eventcg_change(CG006A_30,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG006A_31,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG006A_31,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG006A_40,500,_,"10","X0","10") @cg_wait
		@eventcg_change(CG006A_50,500,_,"10","30","X0") @cg_wait
		@eventcg_change(CG006A_51,500,_,"10","30","X0") @cg_wait
		@eventcg_change(CG006A_60,500,_,"10","X0","10") @cg_wait
		@eventcg_change(CG006A_70,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG006A_70,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG006A_71,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG006A_71,500,_,"20","20","40") @cg_wait
		@eventcg_change(CG006A_80,500,_,"30","X0","X0") @cg_wait
		@eventcg_change(CG006A_90,500,_,"30","30","X0") @cg_wait
		@eventcg_change(CG006A_90,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG006A_90,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG006A_90,500,_,"X0","X0","X0") @cg_wait


	case(cgtable.get_flag_no_by_name("CG007_00"))

		@eventcg_base_setup(CG007,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG007_00,10,"","30","10","10") @cg_wait

		@eventcg_change(CG007_00,500,"","30","20","20") @cg_wait
		@eventcg_change(CG007_00,500,"","50","50","20") @cg_wait
		@eventcg_change(CG007_00,500,"","20","20","50") @cg_wait
		@eventcg_change(CG007_00,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG007_10,500,"_ON","30","30","X0") @cg_wait
		@eventcg_change(CG007_20,500,"_ON","50","50","X0") @cg_wait
		@eventcg_change(CG007_20,500,"","30","20","20") @cg_wait
		@eventcg_change(CG007_20,500,"","30","30","50") @cg_wait
		@eventcg_change(CG007_20,500,"","20","20","20") @cg_wait
		@eventcg_change(CG007_20,500,"","10","10","10") @cg_wait
		@eventcg_change(CG007_20,500,"","30","30","20") @cg_wait
		@eventcg_change(CG007_20,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG007_20,500,"","50","50","50") @cg_wait
		@eventcg_change(CG007_20,500,"","30","30","30") @cg_wait
		@eventcg_change(CG007_30,500,"","40","40","40") @cg_wait
		@eventcg_change(CG007_32,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG007_40,500,"","30","30","50") @cg_wait
		@eventcg_change(CG007_40,500,"_ON","30","30","X0") @cg_wait
		@eventcg_change(CG007_40,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG007_40,500,"_ON","30","30","10") @cg_wait
		@eventcg_change(CG007_40,500,"_ON","30","50","50") @cg_wait
		@eventcg_change(CG007_40,500,"","20","20","20") @cg_wait
		@eventcg_change(CG007_41,500,"","40","40","X0") @cg_wait
		@eventcg_change(CG007_41,500,"","40","X0","40") @cg_wait
		@eventcg_change(CG007_50,500,"","50","50","50") @cg_wait
		@eventcg_change(CG007_51,500,"","20","20","20") @cg_wait
		@eventcg_change(CG007_60,500,"","40","40","20") @cg_wait
		@eventcg_change(CG007_61,500,"","40","20","20") @cg_wait
		@eventcg_change(CG007_61,500,"","10","10","10") @cg_wait
		@eventcg_change(CG007_60,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG007_60,500,"_ON","30","30","20") @cg_wait
		@eventcg_change(CG007_60,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG007_60,500,"_ON","30","30","X0") @cg_wait
		@eventcg_change(CG007_60,500,"","30","30","20") @cg_wait
		@eventcg_change(CG007_61,500,"","30","40","50") @cg_wait
		@eventcg_change(CG007_61,500,"","50","50","20") @cg_wait
		@eventcg_change(CG007_61,500,"","30","30","50") @cg_wait
		@eventcg_change(CG007_61,500,"_ON","30","30","50") @cg_wait
		@eventcg_change(CG007_61,500,"_ON","X0","X0","20") @cg_wait
		@eventcg_change(CG007_70,500,"","50","50","50") @cg_wait
		@eventcg_change(CG007_71,500,"","X0","X0","50") @cg_wait
		@eventcg_change(CG007_71,500,"","50","50","20") @cg_wait
		@eventcg_change(CG007_72,500,"","20","20","X0") @cg_wait
		@eventcg_change(CG007_70,500,"","30","30","X0") @cg_wait
		@eventcg_change(CG007_70,500,"","20","20","20") @cg_wait
		@eventcg_change(CG007_80,500,"","50","50","50") @cg_wait
		@eventcg_change(CG007_90,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG007_90,500,"_ON","30","20","10") @cg_wait



	case(cgtable.get_flag_no_by_name("CG008_00"))

		@eventcg_base_setup(CG008,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG008_00,10,"","30","30","30") @cg_wait

		@eventcg_change(CG008_00,500,"","30","X0","30") @cg_wait
		@eventcg_change(CG008_00,500,"","30","30","40") @cg_wait
		@eventcg_change(CG008_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG008_00,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG008_00,500,"_ON","30","30","40") @cg_wait
		@eventcg_change(CG008_01,500,"","10","10","10") @cg_wait
		@eventcg_change(CG008_01,500,"","20","20","20") @cg_wait
		@eventcg_change(CG008_01,500,"","30","10","10") @cg_wait
		@eventcg_change(CG008_01,500,"","30","30","40") @cg_wait
		@eventcg_change(CG008_01,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG008_01,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG008_01,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG008_01,500,"","30","20","20") @cg_wait
		@eventcg_change(CG008_01,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG008_10,500,"","10","10","10") @cg_wait
		@eventcg_change(CG008_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG008_10,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG008_10,500,"","30","10","40") @cg_wait
		@eventcg_change(CG008_10,500,"_ON","30","30","20") @cg_wait
		@eventcg_change(CG008_11,500,"","40","40","20") @cg_wait
		@eventcg_change(CG008_11,500,"","20","20","20") @cg_wait
		@eventcg_change(CG008_11,500,"","30","10","10") @cg_wait
		@eventcg_change(CG008_11,500,"","30","20","20") @cg_wait
		@eventcg_change(CG008_11,500,"","10","10","10") @cg_wait
		@eventcg_change(CG008_11,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG008_30,500,"","40","X0","20") @cg_wait
		@eventcg_change(CG008_31,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG008_31,500,"_ON","30","10","20") @cg_wait
		@eventcg_change(CG008_40,500,"","30","50","20") @cg_wait
		@eventcg_change(CG008_40,500,"","20","50","20") @cg_wait
		@eventcg_change(CG008_40,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG008_40,500,"","10","10","10") @cg_wait
		@eventcg_change(CG008_40,500,"","20","20","20") @cg_wait


	case(cgtable.get_flag_no_by_name("CG009_00"))

		@eventcg_base_setup(CG009,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG009_00,10,_,"10","10","10") @cg_wait

		@eventcg_change(CG009_00,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG009_01,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG009_00,500,_,"10","10","10") @cg_wait
		@eventcg_change(CG009_00,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG009_00,500,_,"30","30","30") @cg_wait
		@eventcg_change(CG009_00,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG009_00,500,_,"30","30","20") @cg_wait
		@eventcg_change(CG009_01,500,_,"30","30","10") @cg_wait
		@eventcg_change(CG009_01,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG009_00,500,_,"30","30","10") @cg_wait
		@eventcg_change(CG009_00,500,_,"10","10","20") @cg_wait
		@eventcg_change(CG009_10,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG009_20,500,_,"30","20","40") @cg_wait
		@eventcg_change(CG009_20,500,_,"30","20","10") @cg_wait
		@eventcg_change(CG009_20,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG009_21,500,_,"30","30","10") @cg_wait
		@eventcg_change(CG009_20,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG009_30,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG009_40,500,_,"30","20","20") @cg_wait
		@eventcg_change(CG009_40,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG009_40,500,_,"40","40","40") @cg_wait


	case(cgtable.get_flag_no_by_name("CG010_00"))

		@eventcg_base_setup(CG010,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG010_00,10,"","10","10","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG010_01,500,"","10","10","50",_,"","10","10","10") @cg_wait
		@eventcg_change(CG010_01,500,"","20","20","10",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_01,500,_,_,_,_,_,"","20","20","20") @cg_wait
		@eventcg_change(CG010_01,500,_,_,_,_,_,"","20","50","20") @cg_wait
		@eventcg_change(CG010_00,500,"_ON","10","10","10",_,"","20","20","20") @cg_wait
		@eventcg_change(CG010_00,500,"_ON","10","50","50",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_01,500,_,_,_,_,_,"","50","30","20") @cg_wait
		@eventcg_change(CG010_01,500,_,_,_,_,_,"_ON","10","40","50") @cg_wait
		@eventcg_change(CG010_00,500,"_ON","30","30","10",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_01,500,_,_,_,_,_,"_ON","10","50","50") @cg_wait
		@eventcg_change(CG010_01,500,_,_,_,_,_,"_ON","50","10","10") @cg_wait
		@eventcg_change(CG010_10,500,"","20","20","10",_,"_ON","50","10","10") @cg_wait
		@eventcg_change(CG010_10,500,_,_,_,_,_,"","40","30","20") @cg_wait
		@eventcg_change(CG010_10,500,"","10","10","20",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_10,500,_,_,_,_,_,"","50","40","50") @cg_wait
		@eventcg_change(CG010_10,500,_,_,_,_,_,"","50","50","50") @cg_wait
		@eventcg_change(CG010_10,500,_,_,_,_,_,"_ON","10","30","50") @cg_wait
		@eventcg_change(CG010_10,500,_,_,_,_,_,"_ON","50","40","10") @cg_wait
		@eventcg_change(CG010_11,500,"","10","20","50",_,"","40","40","20") @cg_wait
		@eventcg_change(CG010_11,500,"","50","10","50",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_11,500,_,_,_,_,_,"","10","30","50") @cg_wait
		@eventcg_change(CG010_11,500,_,_,_,_,_,"_ON","10","40","20") @cg_wait
		@eventcg_change(CG010_11,500,"_ON","10","10","10",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_11,500,_,_,_,_,_,"","30","30","40") @cg_wait
		@eventcg_change(CG010_11,500,_,_,_,_,_,"_ON","50","40","50") @cg_wait
		@eventcg_change(CG010_20,500,"","10","10","50",_,"","50","10","10") @cg_wait
		@eventcg_change(CG010_30,500,"","10","10","50",_,"","10","40","40") @cg_wait
		@eventcg_change(CG010_30,500,_,_,_,_,_,"","30","30","30") @cg_wait
		@eventcg_change(CG010_30,500,_,_,_,_,_,"","10","50","30") @cg_wait
		@eventcg_change(CG010_30,500,_,_,_,_,_,"_ON","50","40","40") @cg_wait
		@eventcg_change(CG010_31,500,"","10","10","10",_,"_ON","50","40","40") @cg_wait
		@eventcg_change(CG010_31,500,_,_,_,_,_,"_ON","40","40","40") @cg_wait
		@eventcg_change(CG010_31,500,"_ON","30","50","50",_,_,_,_,_) @cg_wait@cg_wait
		@eventcg_change(CG010_31,500,_,_,_,_,_,"","20","20","40") @cg_wait
		@eventcg_change(CG010_31,500,_,_,_,_,_,"_ON","40","40","50") @cg_wait
		@eventcg_change(CG010_31,500,"","10","10","10",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_31,500,"_ON","30","20","10",_,_,"20","20","30") @cg_wait
		@eventcg_change(CG010_31,500,_,_,_,_,_,"","40","40","40") @cg_wait
		@eventcg_change(CG010_40,500,"","10","10","50",_,"","40","40","40") @cg_wait
		@eventcg_change(CG010_50,500,"","50","50","50",_,"","40","40","40") @cg_wait
		@eventcg_change(CG010_50,500,"","10","20","10",_,"_ON","40","50","40") @cg_wait
		@eventcg_change(CG010_50,500,_,_,_,_,_,"","20","20","20") @cg_wait
		@eventcg_change(CG010_50,500,"","20","20","10",_,"","50","20","30") @cg_wait
		@eventcg_change(CG010_50,500,"","10","50","50",_,"","20","20","40") @cg_wait
		@eventcg_change(CG010_50,500,"","10","10","10",_,"","40","50","40") @cg_wait
		@eventcg_change(CG010_50,500,_,_,_,_,_,"","10","30","20") @cg_wait
		@eventcg_change(CG010_50,500,_,_,_,_,_,"_ON","40","40","50") @cg_wait
		@eventcg_change(CG010_50,500,"_ON","40","10","10",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_50,500,"_ON","30","30","30",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_50,500,_,_,_,_,_,"_ON","50","30","40") @cg_wait
		@eventcg_change(CG010_50,500,"","20","20","40",_,"","20","20","20") @cg_wait
		@eventcg_change(CG010_50,500,"_ON","10","50","50",_,_,_,_,_) @cg_wait
		@eventcg_change(CG010_50,500,_,_,_,_,_,"","20","20","40") @cg_wait


	case(cgtable.get_flag_no_by_name("CG011_00"))

		@eventcg_base_setup(CG011,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG011_00,10,"","10","10","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG011_00,500,"","20","20","20",_,"","30","30","30") @cg_wait
		@eventcg_change(CG011_00,500,"","30","20","10",_,"","20","20","20") @cg_wait
		@eventcg_change(CG011_00,500,_,_,_,_,_,"","20","50","30")   @cg_wait
		@eventcg_change(CG011_00,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG011_10,500,"","20","20","50",_,"","20","20","60") @cg_wait
		@eventcg_change(CG011_10,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG011_10,500,_,_,_,_,_,"","50","50","30")   @cg_wait
		@eventcg_change(CG011_10,500,_,_,_,_,_,"","30","30","10")   @cg_wait
		@eventcg_change(CG011_10,500,_,_,_,_,_,"_ON","60","60","60")   @cg_wait
		@eventcg_change(CG011_11,500,"_ON","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG011_11,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG011_10,500,"","10","10","10",_,"","40","40","40") @cg_wait
		@eventcg_change(CG011_10,500,"","20","20","50",_,"","10","10","10") @cg_wait
		@eventcg_change(CG011_10,500,_,_,_,_,_,"","20","20","30")   @cg_wait
		@eventcg_change(CG011_10,500,"","10","10","50",_,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG011_10,500,"","30","20","10",_,"_ON","40","40","60") @cg_wait
		@eventcg_change(CG011_11,500,"","40","40","10",_,"_ON","50","10","10") @cg_wait
		@eventcg_change(CG011_10,500,_,_,_,_,_,"","20","X0","40")   @cg_wait
		@eventcg_change(CG011_11,500,"_ON","10","10","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG011_11,500,"","10","X0","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG011_11,500,"","20","20","20",_,"","60","60","40") @cg_wait
		@eventcg_change(CG011_11,500,"_ON","30","20","50",_,"_ON","50","50","60") @cg_wait
		@eventcg_change(CG011_11,500,"_ON","10","10","10",_,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG011_11,500,"_ON","40","40","40",_,"_ON","40","40","30") @cg_wait
		@eventcg_change(CG011_11,500,"_ON","30","30","10",_,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG011_20,500,"","20","20","50",_,"","20","20","30") @cg_wait
		@eventcg_change(CG011_20,500,_,_,_,_,_,"","40","50","40")   @cg_wait
		@eventcg_change(CG011_21,500,"","10","10","10",_,"","20","X0","10") @cg_wait
		@eventcg_change(CG011_21,500,"","20","20","50",_,"","10","30","60") @cg_wait
		@eventcg_change(CG011_30,500,"","30","30","10",_,"","20","20","10") @cg_wait
		@eventcg_change(CG011_30,500,"","20","20","50",_,"","10","40","40") @cg_wait
		@eventcg_change(CG011_30,500,"","10","10","10",_,"","30","30","40") @cg_wait
		@eventcg_change(CG011_30,500,"_ON","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG011_30,500,"","20","20","20",_,"","10","10","30") @cg_wait
		@eventcg_change(CG011_30,500,_,_,_,_,_,"","40","40","40")   @cg_wait
		@eventcg_change(CG011_30,500,"","10","10","50",_,"","10","40","30") @cg_wait
		@eventcg_change(CG011_30,500,_,_,_,_,_,"_ON","50","50","50")   @cg_wait
		@eventcg_change(CG011_31,500,"","20","20","50",_,"","20","X0","20") @cg_wait
		@eventcg_change(CG011_31,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG011_30,500,_,_,_,_,_,"","10","50","60")   @cg_wait
		@eventcg_change(CG011_31,500,"","20","20","50",_,"_ON","10","10","40") @cg_wait
		@eventcg_change(CG011_40,500,"","10","10","10",_,"","20","20","10") @cg_wait
		@eventcg_change(CG011_40,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG011_40,500,_,_,_,_,_,"_ON","50","50","50")   @cg_wait
		@eventcg_change(CG011_40,500,"","10","20","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG011_40,500,_,_,_,_,_,"","10","30","30")   @cg_wait
		@eventcg_change(CG011_40,500,"","50","50","50",_,"","60","60","40") @cg_wait
		@eventcg_change(CG011_40,500,"","10","10","10",_,"","30","30","30") @cg_wait
		@eventcg_change(CG011_40,500,_,_,_,_,_,"","10","60","60")   @cg_wait
		@eventcg_change(CG011_40,500,"_ON","10","20","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG011_40,500,"_ON","30","X0","30",_,"","40","40","30") @cg_wait
		@eventcg_change(CG011_40,500,_,_,_,_,_,"","10","10","60")   @cg_wait
		@eventcg_change(CG011_40,500,"_ON","10","10","10",_,"_ON","40","40","10") @cg_wait


	case(cgtable.get_flag_no_by_name("CG012_00"))

		@eventcg_base_setup(CG012,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG012_00,10,"","10","10","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG012_00,500,"","10","10","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_01,500,"","10","10","X0",_,"","40","40","40") @cg_wait
		@eventcg_change(CG012_01,500,"","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_01,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_00,500,"_ON","30","30","30",_,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG012_10,500,"","10","10","40",_,"","10","10","10") @cg_wait
		@eventcg_change(CG012_10,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_10,500,"","20","40","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_10,500,"","20","20","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_20,500,"","20","20","20",_,"","40","40","40") @cg_wait
		@eventcg_change(CG012_20,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_20,500,"","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_20,500,_,_,_,_,_,"_ON","50","50","10")   @cg_wait
		@eventcg_change(CG012_20,500,_,_,_,_,_,"_ON","30","30","40")   @cg_wait
		@eventcg_change(CG012_21,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG012_21,500,_,_,_,_,_,"","10","40","10")   @cg_wait
		@eventcg_change(CG012_21,500,"","20","20","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_21,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_22,500,"","20","20","X0",_,"","10","10","50") @cg_wait
		@eventcg_change(CG012_22,500,"","10","10","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_22,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG012_22,500,"","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_22,500,"","30","30","30",_,"","50","50","50") @cg_wait
		@eventcg_change(CG012_20,500,"","20","20","30",_,"","40","40","30") @cg_wait
		@eventcg_change(CG012_20,500,"_ON","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_20,500,"_ON","20","20","20",_,"","50","40","50") @cg_wait
		@eventcg_change(CG012_20,500,_,_,_,_,_,"_ON","10","10","10")   @cg_wait
		@eventcg_change(CG012_23,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG012_23,500,"","30","10","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_23,500,"","30","30","30",_,"","50","50","50") @cg_wait
		@eventcg_change(CG012_23,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG012_23,500,_,_,_,_,_,"","50","10","20")   @cg_wait
		@eventcg_change(CG012_23,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_22,500,"_ON","10","10","10",_,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG012_22,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG012_23,500,"","30","10","40",_,"","10","10","20") @cg_wait
		@eventcg_change(CG012_23,500,"","30","30","20",_,"","30","30","40") @cg_wait
		@eventcg_change(CG012_23,500,"","10","10","X0",_,"","10","10","10") @cg_wait
		@eventcg_change(CG012_30,500,"","20","20","20",_,"","20","20","2A") @cg_wait
		@eventcg_change(CG012_40,500,"","10","10","X0",_,"","50","50","2A") @cg_wait
		@eventcg_change(CG012_41,500,"_ON","30","30","40",_,"","40","40","4A") @cg_wait
		@eventcg_change(CG012_42,500,"","30","30","X0",_,"","10","10","1A") @cg_wait
		@eventcg_change(CG012_43,500,"","30","30","X0",_,"","40","40","4A") @cg_wait
		@eventcg_change(CG012_40,500,"","10","10","10",_,"","10","10","1A") @cg_wait
		@eventcg_change(CG012_40,500,"","30","30","30",_,"","50","50","4A") @cg_wait
		@eventcg_change(CG012_40,500,_,_,_,_,_,"","20","30","50")   @cg_wait
		@eventcg_change(CG012_50,500,"","10","10","10",_,"","40","40","4A") @cg_wait
		@eventcg_change(CG012_50,500,"_ON","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_50,500,"","30","30","40",_,"","30","30","1A") @cg_wait
		@eventcg_change(CG012_50,500,"","10","10","10",_,"","10","10","1A") @cg_wait
		@eventcg_change(CG012_50,500,"_ON","20","20","20",_,"_ON","40","40","4A") @cg_wait
		@eventcg_change(CG012_50,500,"_ON","30","30","10",_,"_ON","30","30","1A") @cg_wait
		@eventcg_change(CG012_51,500,"","10","10","X0",_,"","50","50","5A") @cg_wait
		@eventcg_change(CG012_51,500,_,_,_,_,_,"","20","20","2A")   @cg_wait
		@eventcg_change(CG012_51,500,"","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_51,500,_,_,_,_,_,"","30","30","2A")   @cg_wait
		@eventcg_change(CG012_51,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_51,500,"_ON","30","30","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_51,500,_,_,_,_,_,"","40","40","2A")   @cg_wait
		@eventcg_change(CG012_51,500,_,_,_,_,_,"","50","50","2A")   @cg_wait
		@eventcg_change(CG012_51,500,"","10","10","40",_,"","20","20","2A") @cg_wait
		@eventcg_change(CG012_51,500,"_ON","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_60,500,"_ON","20","20","20",_,"","50","50","2A") @cg_wait
		@eventcg_change(CG012_60,500,"","40","20","40",_,"","20","20","5A") @cg_wait
		@eventcg_change(CG012_60,500,"_ON","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_61,500,"","30","30","40",_,"","10","10","1A") @cg_wait
		@eventcg_change(CG012_61,500,"","10","10","10",_,"_ON","30","30","4A") @cg_wait
		@eventcg_change(CG012_61,500,_,_,_,_,_,"","10","10","2A")   @cg_wait
		@eventcg_change(CG012_61,500,"_ON","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_61,500,_,_,_,_,_,"","20","20","2A")   @cg_wait
		@eventcg_change(CG012_61,500,"","40","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_61,500,_,_,_,_,_,"","30","30","2A")   @cg_wait
		@eventcg_change(CG012_61,500,"","30","30","20",_,"","50","50","2A") @cg_wait
		@eventcg_change(CG012_61,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_61,500,"_ON","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_60,500,"_ON","20","20","20",_,"","20","20","2A") @cg_wait
		@eventcg_change(CG012_60,500,_,_,_,_,_,"","20","20","5A")   @cg_wait
		@eventcg_change(CG012_60,500,"_ON","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_60,500,_,_,_,_,_,"","50","50","5A")   @cg_wait
		@eventcg_change(CG012_60,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_60,500,_,_,_,_,_,"","20","20","2A")   @cg_wait
		@eventcg_change(CG012_60,500,"_ON","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG012_60,500,_,_,_,_,_,"","30","50","1A")   @cg_wait


	case(cgtable.get_flag_no_by_name("CG013_00"))

		@eventcg_base_setup(CG013,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG013_00,10,"","10","10","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG013_00,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG013_10,500,"","10","10","10",_,"","30","40","40") @cg_wait
		@eventcg_change(CG013_10,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_10,500,_,_,_,_,_,"","30","X0","10")   @cg_wait
		@eventcg_change(CG013_10,500,"","40","X0","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_10,500,_,_,_,_,_,"","30","30","20")   @cg_wait
		@eventcg_change(CG013_10,500,_,_,_,_,_,"_ON","10","10","10")   @cg_wait
		@eventcg_change(CG013_10,500,"","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_10,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG013_10,500,"","30","40","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_10,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG013_20,500,"","30","30","10",_,"","20","X0","20") @cg_wait
		@eventcg_change(CG013_20,500,_,_,_,_,_,"","20","20","10")   @cg_wait
		@eventcg_change(CG013_30,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_30,500,"","40","10","10",_,"","30","X0","10") @cg_wait
		@eventcg_change(CG013_30,500,"","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_30,500,_,_,_,_,_,"","10","10","20")   @cg_wait
		@eventcg_change(CG013_30,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_30,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG013_31,500,"","40","40","40",_,"","10","40","10") @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"","30","30","20")   @cg_wait
		@eventcg_change(CG013_31,500,"","40","X0","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG013_31,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"","20","20","10")   @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"","10","X0","20")   @cg_wait
		@eventcg_change(CG013_31,500,"","40","10","10",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_31,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_31,500,"","40","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_31,500,"_ON","30","10","20",_,"_ON","30","10","20") @cg_wait
		@eventcg_change(CG013_30,500,"","40","X0","10",_,"","40","X0","30") @cg_wait
		@eventcg_change(CG013_30,500,"","30","20","20",_,"","20","20","20") @cg_wait
		@eventcg_change(CG013_31,500,"","30","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"","40","20","20")   @cg_wait
		@eventcg_change(CG013_31,500,"","30","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"","30","30","10")   @cg_wait
		@eventcg_change(CG013_31,500,"","40","30","20",_,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG013_31,500,_,_,_,_,_,"_ON","30","30","10")   @cg_wait
		@eventcg_change(CG013_40,500,"","40","X0","20",_,"","30","X0","10") @cg_wait
		@eventcg_change(CG013_50,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_50,500,"","40","10","10",_,"","40","20","20") @cg_wait
		@eventcg_change(CG013_50,500,"_ON","40","30","20",_,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG013_51,500,"","40","40","20",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_51,500,"","30","30","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG013_51,500,_,_,_,_,_,"_ON","20","20","20")   @cg_wait
		@eventcg_change(CG013_51,500,"","40","X0","20",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_51,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG013_60,500,"","40","40","10",_,"","40","40","10") @cg_wait
		@eventcg_change(CG013_61,500,"","40","40","10",_,"","40","40","10") @cg_wait
		@eventcg_change(CG013_61,500,"_ON","30","30","30",_,"","40","10","40") @cg_wait
		@eventcg_change(CG013_70,500,"","40","40","40",_,"","40","40","20") @cg_wait
		@eventcg_change(CG013_70,500,"","30","30","40",_,"","20","20","30") @cg_wait
		@eventcg_change(CG013_70,500,_,_,_,_,_,"","10","X0","10")   @cg_wait
		@eventcg_change(CG013_70,500,"_ON","30","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG013_70,500,_,_,_,_,_,"","30","30","20")   @cg_wait
		@eventcg_change(CG013_71,500,"","40","40","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG013_71,500,"","40","10","20",_,"","30","30","10") @cg_wait
		@eventcg_change(CG013_70,500,_,_,_,_,_,"_ON","20","20","10")   @cg_wait
		@eventcg_change(CG013_71,500,"","40","40","20",_,"","40","40","20") @cg_wait
		@eventcg_change(CG013_71,500,"","30","X0","10",_,"","30","X0","10") @cg_wait
		@eventcg_change(CG013_71,500,"","10","10","10",_,"","20","20","20") @cg_wait
		@eventcg_change(CG013_71,500,_,_,_,_,_,"_ON","30","30","10")   @cg_wait
		@eventcg_change(CG013_71,500,"","30","20","20",_,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG013_71,500,"","10","X0","10",_,"","20","X0","20") @cg_wait
		@eventcg_change(CG013_71,500,_,_,_,_,_,"","40","20","20")   @cg_wait
		@eventcg_change(CG013_71,500,"_ON","30","30","10",_,"_ON","30","30","10") @cg_wait
		@eventcg_change(CG013_80,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_81,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_81,500,_,_,_,_,_,"","30","X0","20")   @cg_wait
		@eventcg_change(CG013_81,500,"","40","30","40",_,"","20","20","10") @cg_wait
		@eventcg_change(CG013_90,500,"","40","40","10",_,"","40","40","20") @cg_wait
		@eventcg_change(CG013_A0,500,"_ON","30","30","20",_,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG013_B0,500,"","30","X0","30",_,"","10","X0","10") @cg_wait
		@eventcg_change(CG013_B1,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG013_B1,500,"","40","10","20",_,"","20","20","20") @cg_wait


	case(cgtable.get_flag_no_by_name("CG014_00"))

		@eventcg_base_setup(CG014,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG014_00,10,"","10","10","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG014_01,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG014_10,500,"","40","40","20",_,"","10","X0","10") @cg_wait
		@eventcg_change(CG014_10,500,"_ON","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_10,500,_,_,_,_,_,"","20","10","20")   @cg_wait
		@eventcg_change(CG014_10,500,_,_,_,_,_,"_ON","50","50","50")   @cg_wait
		@eventcg_change(CG014_11,500,"","40","40","30",_,"","30","X0","30") @cg_wait
		@eventcg_change(CG014_11,500,_,_,_,_,_,"","40","30","10")   @cg_wait
		@eventcg_change(CG014_11,500,_,_,_,_,_,"","10","40","20")   @cg_wait
		@eventcg_change(CG014_11,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_11,500,"","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_11,500,"_ON","20","20","20",_,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG014_11,500,"","40","40","40",_,"","10","40","30") @cg_wait
		@eventcg_change(CG014_11,500,_,_,_,_,_,"","10","40","10")   @cg_wait
		@eventcg_change(CG014_11,500,"","20","X0","20",_,"","10","20","20") @cg_wait
		@eventcg_change(CG014_11,500,"","30","20","10",_,"","10","20","10") @cg_wait
		@eventcg_change(CG014_11,500,_,_,_,_,_,"","20","20","10")   @cg_wait
		@eventcg_change(CG014_11,500,"","30","X0","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_11,500,_,_,_,_,_,"","40","20","50")   @cg_wait
		@eventcg_change(CG014_11,500,"_ON","10","10","10",_,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG014_11,500,"","30","30","20",_,"","50","50","50") @cg_wait
		@eventcg_change(CG014_11,500,_,_,_,_,_,"","40","40","20")   @cg_wait
		@eventcg_change(CG014_20,500,"","30","30","10",_,"","10","X0","10") @cg_wait
		@eventcg_change(CG014_20,500,_,_,_,_,_,"","10","50","10")   @cg_wait
		@eventcg_change(CG014_20,500,"","40","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_20,500,"","10","10","20",_,"","50","50","50") @cg_wait
		@eventcg_change(CG014_30,500,"","30","30","20",_,"","10","X0","30") @cg_wait
		@eventcg_change(CG014_30,500,_,_,_,_,_,"_ON","50","50","50")   @cg_wait
		@eventcg_change(CG014_31,500,"","20","20","10",_,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG014_31,500,"_ON","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_31,500,"_ON","40","40","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_31,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG014_31,500,"","40","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_40,500,"","40","40","40",_,"","10","X0","10") @cg_wait
		@eventcg_change(CG014_41,500,"","30","30","40",_,"","50","50","50") @cg_wait
		@eventcg_change(CG014_41,500,"","30","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_41,500,_,_,_,_,_,"","40","50","30")   @cg_wait
		@eventcg_change(CG014_42,500,"","40","X0","20",_,"","20","20","10") @cg_wait
		@eventcg_change(CG014_50,500,"","40","40","30",_,"","10","X0","10") @cg_wait
		@eventcg_change(CG014_50,500,"","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_60,500,"","40","40","40",_,"","20","20","20") @cg_wait
		@eventcg_change(CG014_60,500,"","40","40","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG014_60,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG014_70,500,"","30","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG014_70,500,_,_,_,_,_,"","50","50","50")   @cg_wait
		@eventcg_change(CG014_70,500,"_ON","30","20","20",_,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG014_70,500,"_ON","30","30","10",_,"_ON","10","50","10") @cg_wait
		@eventcg_change(CG014_70,500,"","20","20","20",_,"","20","20","20") @cg_wait
		@eventcg_change(CG014_70,500,"_ON","30","30","10",_,"_ON","40","50","10") @cg_wait




	case(cgtable.get_flag_no_by_name("CG015_00"))

		@eventcg_base_setup(CG015,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG015_00,0,"","10","20","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG015_00,500,"","10","40","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"","40","40","50")   @cg_wait
		@eventcg_change(CG015_00,500,"","20","20","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"","50","50","40")   @cg_wait
		@eventcg_change(CG015_00,500,"","30","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"_ON","30","30","30")   @cg_wait
		@eventcg_change(CG015_00,500,"","40","40","40",_,"","30","20","50") @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"","10","10","50")   @cg_wait
		@eventcg_change(CG015_00,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_00,500,"_ON","30","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_01,500,"","30","30","10",_,"","10","10","40") @cg_wait
		@eventcg_change(CG015_01,500,_,_,_,_,_,"","30","30","30")   @cg_wait
		@eventcg_change(CG015_01,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_01,500,"","30","50","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_00,500,"_ON","30","30","30",_,"","50","30","30") @cg_wait
		@eventcg_change(CG015_00,500,"","50","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG015_00,500,"","40","10","20",_,"","40","40","40") @cg_wait
		@eventcg_change(CG015_00,500,"","20","20","10",_,"","50","10","40") @cg_wait
		@eventcg_change(CG015_00,500,"","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"","30","30","30")   @cg_wait
		@eventcg_change(CG015_01,500,"","30","30","40",_,"","50","10","40") @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"","50","50","20")   @cg_wait
		@eventcg_change(CG015_01,500,"","10","10","10",_,"","20","20","10") @cg_wait
		@eventcg_change(CG015_00,500,_,_,_,_,_,"_ON","50","40","40")   @cg_wait
		@eventcg_change(CG015_01,500,"_ON","20","20","20",_,"_ON","50","10","10") @cg_wait
		@eventcg_change(CG015_10,500,"","30","30","10",_,"","50","10","40") @cg_wait
		@eventcg_change(CG015_11,500,"","20","20","20",_,"","50","10","10") @cg_wait
		@eventcg_change(CG015_11,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG015_11,500,"","10","50","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_11,500,_,_,_,_,_,"","50","50","50")   @cg_wait
		@eventcg_change(CG015_11,500,"","30","30","20",_,"","20","40","20") @cg_wait
		@eventcg_change(CG015_11,500,_,_,_,_,_,"","50","10","40")   @cg_wait
		@eventcg_change(CG015_11,500,"","20","20","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_11,500,"","30","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_11,500,"","20","40","10",_,"","50","20","20") @cg_wait
		@eventcg_change(CG015_11,500,"","20","20","20",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_11,500,"_ON","30","30","10",_,"_ON","50","50","40") @cg_wait
		@eventcg_change(CG015_20,500,"","10","30","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_30,500,"","10","30","10",_,"","10","10","50") @cg_wait
		@eventcg_change(CG015_30,500,_,_,_,_,_,"","40","10","50")   @cg_wait
		@eventcg_change(CG015_30,500,"","50","50","50",_,"","30","20","30") @cg_wait
		@eventcg_change(CG015_30,500,_,_,_,_,_,"_ON","30","30","30")   @cg_wait
		@eventcg_change(CG015_30,500,"","30","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_30,500,_,_,_,_,_,"","20","40","40")   @cg_wait
		@eventcg_change(CG015_30,500,"","30","30","30",_,"","30","X0","30") @cg_wait
		@eventcg_change(CG015_30,500,_,_,_,_,_,"_ON","50","50","30")   @cg_wait
		@eventcg_change(CG015_30,500,"_ON","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_31,500,"","30","30","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_30,500,_,_,_,_,_,"","50","50","40")   @cg_wait
		@eventcg_change(CG015_31,500,"_ON","30","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG015_40,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_50,500,"","20","20","20",_,"","50","10","40") @cg_wait
		@eventcg_change(CG015_51,500,"","30","30","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_51,500,"_ON","20","20","20",_,"_ON","30","30","20") @cg_wait
		@eventcg_change(CG015_60,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG015_70,500,"","30","10","20",_,"","50","10","40") @cg_wait
		@eventcg_change(CG015_71,500,"_ON","20","20","10",_,"_ON","20","20","10") @cg_wait
		@eventcg_change(CG015_71,500,"_ON","30","30","10",_,"_ON","50","10","40") @cg_wait



	case(cgtable.get_flag_no_by_name("CG016_00"))

		@eventcg_base_setup(CG016,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG016_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG016_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_00,500,"","10","10","10") @cg_wait
		@eventcg_change(CG016_00,500,"","10","10","60") @cg_wait
		@eventcg_change(CG016_00,500,"","30","10","10") @cg_wait
		@eventcg_change(CG016_01,500,"","10","10","10") @cg_wait
		@eventcg_change(CG016_00,500,"","30","60","60") @cg_wait
		@eventcg_change(CG016_00,500,"","30","30","50") @cg_wait
		@eventcg_change(CG016_00,500,"","10","40","20") @cg_wait
		@eventcg_change(CG016_00,500,"","30","20","20") @cg_wait
		@eventcg_change(CG016_00,500,"_ON","30","20","60") @cg_wait
		@eventcg_change(CG016_10,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG016_10,500,"","10","40","60") @cg_wait
		@eventcg_change(CG016_11,500,"","10","10","10") @cg_wait
		@eventcg_change(CG016_11,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_11,500,"","10","40","20") @cg_wait
		@eventcg_change(CG016_11,500,"","10","60","60") @cg_wait
		@eventcg_change(CG016_11,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG016_20,500,"","30","30","30") @cg_wait
		@eventcg_change(CG016_30,500,"","30","20","30") @cg_wait
		@eventcg_change(CG016_30,500,"_ON","30","30","50") @cg_wait
		@eventcg_change(CG016_30,500,"_ON","40","X0","30") @cg_wait
		@eventcg_change(CG016_30,500,"_ON","30","20","50") @cg_wait
		@eventcg_change(CG016_40,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG016_40,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG016_50,500,"_ON","30","60","60") @cg_wait
		@eventcg_change(CG016_50,500,"_ON","30","20","30") @cg_wait
		@eventcg_change(CG016_50,500,"_ON","20","60","50") @cg_wait
		@eventcg_change(CG016_50,500,"","20","40","20") @cg_wait
		@eventcg_change(CG016_50,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_60,500,"","10","10","10") @cg_wait
		@eventcg_change(CG016_60,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_60,500,"","20","20","60") @cg_wait
		@eventcg_change(CG016_61,500,"","20","20","60") @cg_wait
		@eventcg_change(CG016_61,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG016_61,500,"_ON","30","60","60") @cg_wait
		@eventcg_change(CG016_70,500,"","40","40","40") @cg_wait
		@eventcg_change(CG016_70,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_71,500,"","40","40","20") @cg_wait
		@eventcg_change(CG016_72,500,"","60","60","60") @cg_wait
		@eventcg_change(CG016_72,500,"","30","20","60") @cg_wait
		@eventcg_change(CG016_80,500,"","40","40","20") @cg_wait
		@eventcg_change(CG016_90,500,"","20","20","10") @cg_wait
		@eventcg_change(CG016_91,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_91,500,"","20","40","20") @cg_wait
		@eventcg_change(CG016_91,500,"_ON","20","20","60") @cg_wait
		@eventcg_change(CG016_91,500,"","10","10","10") @cg_wait
		@eventcg_change(CG016_91,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG016_A0,500,"","50","50","40") @cg_wait
		@eventcg_change(CG016_B0,500,"","20","40","20") @cg_wait
		@eventcg_change(CG016_B1,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016_B2,500,"","20","20","60") @cg_wait
		@eventcg_change(CG016_C0,500,"","40","40","20") @cg_wait
		@eventcg_change(CG016_D0,500,"_ON","20","20","60") @cg_wait


	case(cgtable.get_flag_no_by_name("CG016A_00"))

		@eventcg_base_setup(CG016,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG016A_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG016A_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016A_00,500,"","10","60","10") @cg_wait
		@eventcg_change(CG016A_00,500,"","10","10","10") @cg_wait
		@eventcg_change(CG016A_00,500,"","30","10","10") @cg_wait
		@eventcg_change(CG016A_00,500,"","30","20","60") @cg_wait
		@eventcg_change(CG016A_00,500,"_ON","20","60","20") @cg_wait
		@eventcg_change(CG016A_00,500,"","40","10","50") @cg_wait
		@eventcg_change(CG016A_00,500,"","20","60","60") @cg_wait
		@eventcg_change(CG016A_01,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016A_01,500,"","10","10","60") @cg_wait
		@eventcg_change(CG016A_10,500,"","40","X0","20") @cg_wait
		@eventcg_change(CG016A_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016A_11,500,"","50","50","60") @cg_wait
		@eventcg_change(CG016A_11,500,"","40","50","20") @cg_wait
		@eventcg_change(CG016A_11,500,"","40","20","60") @cg_wait
		@eventcg_change(CG016A_20,500,"","40","40","20") @cg_wait
		@eventcg_change(CG016A_30,500,"","50","50","20") @cg_wait
		@eventcg_change(CG016A_30,500,"","20","60","60") @cg_wait
		@eventcg_change(CG016A_30,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG016A_40,500,"","30","30","20") @cg_wait
		@eventcg_change(CG016A_50,500,"","20","20","20") @cg_wait
		@eventcg_change(CG016A_50,500,"","20","60","60") @cg_wait
		@eventcg_change(CG016A_50,500,"_ON","30","30","50") @cg_wait
		@eventcg_change(CG016A_50,500,"_ON","20","20","30") @cg_wait
		@eventcg_change(CG016A_50,500,"","10","10","20") @cg_wait
		@eventcg_change(CG016A_50,500,"","20","20","60") @cg_wait


	case(cgtable.get_flag_no_by_name("CG017_00"))

		@eventcg_base_setup(CG017,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG017_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG017_00,500,"","70","20","70") @cg_wait
		@eventcg_change(CG017_00,500,"","10","40","60") @cg_wait
		@eventcg_change(CG017_00,500,"","70","70","70") @cg_wait
		@eventcg_change(CG017_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_00,500,"_ON","70","10","10") @cg_wait
		@eventcg_change(CG017_00,500,"_ON","70","70","20") @cg_wait
		@eventcg_change(CG017_00,500,"","10","10","70") @cg_wait
		@eventcg_change(CG017_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_20,500,"","40","40","40") @cg_wait
		@eventcg_change(CG017_20,500,"","10","70","10") @cg_wait
		@eventcg_change(CG017_20,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_20,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_20,500,"","40","40","60") @cg_wait
		@eventcg_change(CG017_20,500,"","70","20","70") @cg_wait
		@eventcg_change(CG017_20,500,"_ON","70","10","10") @cg_wait
		@eventcg_change(CG017_20,500,"","10","10","60") @cg_wait
		@eventcg_change(CG017_20,500,"","20","70","20") @cg_wait
		@eventcg_change(CG017_21,500,"","30","30","60") @cg_wait
		@eventcg_change(CG017_23,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_23,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_23,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG017_23,500,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG017_22,500,"","70","20","70") @cg_wait
		@eventcg_change(CG017_22,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_22,500,"","10","70","60") @cg_wait
		@eventcg_change(CG017_22,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_23,500,"","40","40","40") @cg_wait
		@eventcg_change(CG017_22,500,"","30","70","70") @cg_wait
		@eventcg_change(CG017_22,500,"_ON","10","10","60") @cg_wait
		@eventcg_change(CG017_22,500,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG017_23,500,"","50","50","50") @cg_wait
		@eventcg_change(CG017_23,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG017_30,500,"","10","10","20") @cg_wait
		@eventcg_change(CG017_40,500,"","50","50","50") @cg_wait
		@eventcg_change(CG017_50,500,"","20","20","60") @cg_wait
		@eventcg_change(CG017_50,500,"","10","10","20") @cg_wait
		@eventcg_change(CG017_60,500,"","40","40","60") @cg_wait
		@eventcg_change(CG017_61,500,"","40","40","60") @cg_wait
		@eventcg_change(CG017_60,500,"","10","10","20") @cg_wait
		@eventcg_change(CG017_60,500,"","70","20","70") @cg_wait
		@eventcg_change(CG017_60,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_62,500,"","20","70","20") @cg_wait
		@eventcg_change(CG017_63,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_63,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_60,500,"","40","40","40") @cg_wait
		@eventcg_change(CG017_70,500,"","10","10","70") @cg_wait
		@eventcg_change(CG017_70,500,"","20","20","60") @cg_wait
		@eventcg_change(CG017_80,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_80,500,"","70","70","20") @cg_wait
		@eventcg_change(CG017_80,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG017_90,500,"","40","40","50") @cg_wait
		@eventcg_change(CG017_90,500,"","30","30","60") @cg_wait
		@eventcg_change(CG017_91,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_91,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_91,500,"","70","70","20") @cg_wait
		@eventcg_change(CG017_93,500,"","40","40","40") @cg_wait
		@eventcg_change(CG017_93,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG017_93,500,"_ON","70","70","10") @cg_wait
		@eventcg_change(CG017_93,500,"","20","20","20") @cg_wait
		@eventcg_change(CG017_93,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_93,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG017_A0,500,"","60","60","40") @cg_wait
		@eventcg_change(CG017_A0,500,"","30","30","60") @cg_wait
		@eventcg_change(CG017_A0,500,"","10","10","10") @cg_wait
		@eventcg_change(CG017_A0,500,"_ON","50","50","50") @cg_wait


	case(cgtable.get_flag_no_by_name("CG018_00"))

		@eventcg_base_setup(CG018,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG018_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG018_00,500,"","10","10","50") @cg_wait
		@eventcg_change(CG018_00,500,"","30","30","10") @cg_wait
		@eventcg_change(CG018_01,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_01,500,"","10","10","40") @cg_wait
		@eventcg_change(CG018_01,500,"","40","40","40") @cg_wait
		@eventcg_change(CG018_01,500,"","20","20","40") @cg_wait
		@eventcg_change(CG018_01,500,"","10","10","50") @cg_wait
		@eventcg_change(CG018_10,500,"","50","50","50") @cg_wait
		@eventcg_change(CG018_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_10,500,"","50","50","10") @cg_wait
		@eventcg_change(CG018_11,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_11,500,"","50","50","50") @cg_wait
		@eventcg_change(CG018_11,500,"","40","40","40") @cg_wait
		@eventcg_change(CG018_11,500,"","10","10","10") @cg_wait
		@eventcg_change(CG018_11,500,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG018_11,500,"_ON","20","20","20") @cg_wait
		@eventcg_change(CG018_11,500,"","30","10","10") @cg_wait
		@eventcg_change(CG018_11,500,"","20","20","50") @cg_wait
		@eventcg_change(CG018_11,500,"","50","50","10") @cg_wait
		@eventcg_change(CG018_11,500,"","30","30","10") @cg_wait
		@eventcg_change(CG018_20,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_30,500,"","10","10","10") @cg_wait
		@eventcg_change(CG018_30,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_31,500,"","50","50","50") @cg_wait
		@eventcg_change(CG018_31,500,"","30","20","20") @cg_wait
		@eventcg_change(CG018_31,500,"","30","30","50") @cg_wait
		@eventcg_change(CG018_40,500,"_ON","10","10","10") @cg_wait
		@eventcg_change(CG018_41,500,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG018_50,500,"","20","20","50") @cg_wait
		@eventcg_change(CG018_60,500,"","20","20","50") @cg_wait
		@eventcg_change(CG018_60,500,"","30","10","10") @cg_wait
		@eventcg_change(CG018_60,500,"","50","50","50") @cg_wait
		@eventcg_change(CG018_60,500,"","40","40","40") @cg_wait
		@eventcg_change(CG018_60,500,"","10","10","40") @cg_wait
		@eventcg_change(CG018_60,500,"_ON","30","30","50") @cg_wait
		@eventcg_change(CG018_61,500,"_ON","30","30","50") @cg_wait
		@eventcg_change(CG018_61,500,"","40","40","40") @cg_wait
		@eventcg_change(CG018_70,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_80,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_80,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG018_81,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG018_81,500,"","10","10","50") @cg_wait
		@eventcg_change(CG018_81,500,"","50","50","10") @cg_wait
		@eventcg_change(CG018_81,500,"","40","40","40") @cg_wait
		@eventcg_change(CG018_81,500,"","30","10","10") @cg_wait
		@eventcg_change(CG018_81,500,"","50","50","50") @cg_wait
		@eventcg_change(CG018_81,500,"","30","30","40") @cg_wait
		@eventcg_change(CG018_90,500,"","50","20","50") @cg_wait
		@eventcg_change(CG018_A0,500,"","50","20","50") @cg_wait
		@eventcg_change(CG018_A0,500,"","30","30","10") @cg_wait
		@eventcg_change(CG018_A1,500,"","50","50","20") @cg_wait
		@eventcg_change(CG018_A1,500,"_ON","50","20","20") @cg_wait
		@eventcg_change(CG018_A1,500,"","30","30","10") @cg_wait
		@eventcg_change(CG018_A1,500,"","50","50","50") @cg_wait
		@eventcg_change(CG018_A1,500,"","40","40","40") @cg_wait
		@eventcg_change(CG018_A1,500,"","30","30","40") @cg_wait
		@eventcg_change(CG018_C0,500,"","50","20","20") @cg_wait
		@eventcg_change(CG018_D0,500,"","50","10","20") @cg_wait
		@eventcg_change(CG018_D0,500,"_ON","50","50","50") @cg_wait
		@eventcg_change(CG018_D0,500,"","20","20","20") @cg_wait
		@eventcg_change(CG018_D0,500,"","30","30","10") @cg_wait
		@eventcg_change(CG018_D0,500,"","50","50","50") @cg_wait


	case(cgtable.get_flag_no_by_name("CG019_00"))

		@eventcg_base_setup(CG019,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG019_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG019_00,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_00,500,"","60","60","20") @cg_wait
		@eventcg_change(CG019_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG019_01,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_10,500,"","60","20","20") @cg_wait
		@eventcg_change(CG019_10,500,"","60","40","70") @cg_wait
		@eventcg_change(CG019_10,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_10,500,"","30","30","40") @cg_wait
		@eventcg_change(CG019_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG019_11,500,"","20","20","20") @cg_wait
		@eventcg_change(CG019_11,500,"_ON","60","60","60") @cg_wait
		@eventcg_change(CG019_11,500,"_ON","30","30","20") @cg_wait
		@eventcg_change(CG019_11,500,"","30","30","20") @cg_wait
		@eventcg_change(CG019_11,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG019_11,500,"","60","40","70") @cg_wait
		@eventcg_change(CG019_11,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_11,500,"","60","20","20") @cg_wait
		@eventcg_change(CG019_20,500,"","60","40","20") @cg_wait
		@eventcg_change(CG019_20,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_20,500,"","30","10","10") @cg_wait
		@eventcg_change(CG019_30,500,"","20","20","20") @cg_wait
		@eventcg_change(CG019_40,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_50,500,"","30","40","50") @cg_wait
		@eventcg_change(CG019_50,500,"","60","20","20") @cg_wait
		@eventcg_change(CG019_51,500,"","50","40","70") @cg_wait
		@eventcg_change(CG019_51,500,"","20","20","20") @cg_wait
		@eventcg_change(CG019_52,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_52,500,"","30","30","40") @cg_wait
		@eventcg_change(CG019_52,500,"_ON","60","60","60") @cg_wait
		@eventcg_change(CG019_60,500,"","50","50","20") @cg_wait
		@eventcg_change(CG019_60,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_60,500,"","30","20","20") @cg_wait
		@eventcg_change(CG019_61,500,"","60","60","20") @cg_wait
		@eventcg_change(CG019_61,500,"","60","60","60") @cg_wait
		@eventcg_change(CG019_61,500,"","50","50","50") @cg_wait
		@eventcg_change(CG019_61,500,"","30","60","60") @cg_wait
		@eventcg_change(CG019_70,500,"","50","50","20") @cg_wait
		@eventcg_change(CG019_71,500,"","30","60","60") @cg_wait
		@eventcg_change(CG019_71,500,"","70","70","30") @cg_wait
		@eventcg_change(CG019_71,500,"","70","70","20") @cg_wait
		@eventcg_change(CG019_80,500,"","30","40","30") @cg_wait
		@eventcg_change(CG019_81,500,"","30","70","20") @cg_wait
		@eventcg_change(CG019_71,500,"","30","30","20") @cg_wait
		@eventcg_change(CG019_71,500,"","30","40","30") @cg_wait
		@eventcg_change(CG019_71,500,"","30","30","30") @cg_wait
		@eventcg_change(CG019_90,500,"","30","40","30") @cg_wait
		@eventcg_change(CG019_91,500,"","30","60","60") @cg_wait
		@eventcg_change(CG019_91,500,"","30","50","30") @cg_wait
		@eventcg_change(CG019_A0,500,"","30","70","20") @cg_wait
		@eventcg_change(CG019_A0,500,"","60","60","60") @cg_wait


	case(cgtable.get_flag_no_by_name("CG020_00"))

		@eventcg_base_setup(CG020,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG020_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG020_00,500,"","30","30","30") @cg_wait
		@eventcg_change(CG020_00,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_00,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020_10,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_10,500,"","30","30","10") @cg_wait
		@eventcg_change(CG020_10,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG020_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020_20,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_20,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_21,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_21,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020_21,500,"","20","20","40") @cg_wait
		@eventcg_change(CG020_21,500,"","10","10","40") @cg_wait
		@eventcg_change(CG020_21,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_20,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_30,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020_30,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_30,500,"","30","20","20") @cg_wait
		@eventcg_change(CG020_40,500,"","30","20","10") @cg_wait
		@eventcg_change(CG020_40,500,"","30","20","20") @cg_wait
		@eventcg_change(CG020_40,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_40,500,"","30","30","30") @cg_wait
		@eventcg_change(CG020_40,500,"","30","40","30") @cg_wait
		@eventcg_change(CG020_50,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_50,500,"","30","30","30") @cg_wait
		@eventcg_change(CG020_50,500,"","30","20","20") @cg_wait
		@eventcg_change(CG020_50,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_51,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_51,500,"","30","20","20") @cg_wait
		@eventcg_change(CG020_50,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_50,500,"","10","10","40") @cg_wait
		@eventcg_change(CG020_50,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020_60,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020_60,500,"","30","30","10") @cg_wait
		@eventcg_change(CG020_70,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_70,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020_80,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_80,500,"","10","10","20") @cg_wait
		@eventcg_change(CG020_90,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_91,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_91,500,"","30","10","40") @cg_wait
		@eventcg_change(CG020_91,500,"","30","30","40") @cg_wait
		@eventcg_change(CG020_A0,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_B0,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020_B1,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG020_C0,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_D0,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020_D1,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG020_D0,500,"","30","30","30") @cg_wait
		@eventcg_change(CG020_D0,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG020_D0,500,"_ON","30","20","20") @cg_wait


	case(cgtable.get_flag_no_by_name("CG020A_00"))

		@eventcg_base_setup(CG020,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG020A_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG020A_10,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020A_10,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020A_11,500,"","40","40","40") @cg_wait
		@eventcg_change(CG020A_11,500,"","20","20","40") @cg_wait
		@eventcg_change(CG020A_11,500,"","10","10","40") @cg_wait
		@eventcg_change(CG020A_20,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020A_20,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020A_20,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG020A_20,500,"_ON","30","20","20") @cg_wait
		@eventcg_change(CG020A_30,500,"","30","10","10") @cg_wait
		@eventcg_change(CG020A_30,500,"","30","30","30") @cg_wait
		@eventcg_change(CG020A_30,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020A_40,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020A_31,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020A_31,500,"_ON","30","10","10") @cg_wait
		@eventcg_change(CG020A_50,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020A_60,500,"","20","20","20") @cg_wait
		@eventcg_change(CG020A_60,500,"","10","10","10") @cg_wait
		@eventcg_change(CG020A_60,500,"","10","10","20") @cg_wait


	case(cgtable.get_flag_no_by_name("CG021_00"))

		@eventcg_base_setup(CG021,_,"_jur_mayu","_jur_eye","_jur_mouth",_,_,"_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG021_00,10,_,"10","10","10",_,_,"10","10","10") @cg_wait

		@eventcg_change(CG021_00,500,_,_,_,_,_,_,"40","40","40")   @cg_wait
		@eventcg_change(CG021_00,500,_,"30","30","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_00,500,_,_,_,_,_,_,"10","10","10")   @cg_wait
		@eventcg_change(CG021_01,500,_,"10","10","10",_,_,"40","10","10") @cg_wait
		@eventcg_change(CG021_01,500,_,"30","40","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_00,500,_,"10","10","10",_,_,"40","10","10") @cg_wait
		@eventcg_change(CG021_00,500,_,_,_,_,_,_,"40","30","30")   @cg_wait
		@eventcg_change(CG021_10,500,_,"10","10","10",_,_,"30","30","30") @cg_wait
		@eventcg_change(CG021_20,500,_,"10","10","10",_,_,"30","30","30") @cg_wait
		@eventcg_change(CG021_20,500,_,"30","30","40",_,_,"10","10","10") @cg_wait
		@eventcg_change(CG021_20,500,_,"10","10","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_20,500,_,_,_,_,_,_,"30","30","10")   @cg_wait
		@eventcg_change(CG021_20,500,_,"40","40","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_20,500,_,"30","30","30",_,_,"40","40","40") @cg_wait
		@eventcg_change(CG021_21,500,_,"30","30","10",_,_,"40","10","10") @cg_wait
		@eventcg_change(CG021_21,500,_,"40","40","X0",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_21,500,_,_,_,_,_,_,"10","10","10")   @cg_wait
		@eventcg_change(CG021_20,500,_,"10","10","10",_,_,"40","10","10") @cg_wait
		@eventcg_change(CG021_20,500,_,"30","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_30,500,_,"20","20","",_,_,"A0","A0","") @cg_wait
		@eventcg_change(CG021_30,500,_,"40","40","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_30,500,_,_,_,_,_,_,"C0","C0","")   @cg_wait
		@eventcg_change(CG021_30,500,_,"10","10","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_30,500,_,"30","30","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_30,500,_,_,_,_,_,_,"D0","D0","")   @cg_wait
		@eventcg_change(CG021_30,500,_,"20","20","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_30,500,_,_,_,_,_,_,"A0","A0","")   @cg_wait
		@eventcg_change(CG021_31,500,_,"20","20","",_,_,"A0","A0","") @cg_wait
		@eventcg_change(CG021_31,500,_,_,_,_,_,_,"D0","D0","")   @cg_wait
		@eventcg_change(CG021_31,500,_,_,_,_,_,_,"A0","A0","")   @cg_wait
		@eventcg_change(CG021_31,500,_,"40","10","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,"20","20","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,"30","30","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,"10","10","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,"30","20","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,"40","30","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,_,_,_,_,_,"B0","B0","")   @cg_wait
		@eventcg_change(CG021_31,500,_,_,_,_,_,_,"C0","C0","")   @cg_wait
		@eventcg_change(CG021_31,500,_,"40","20","",_,_,"A0","A0","") @cg_wait
		@eventcg_change(CG021_31,500,_,"40","40","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_31,500,_,"30","30","",_,_,"D0","A0","") @cg_wait
		@eventcg_change(CG021_40,500,_,"40","40","",_,_,"A0","A0","") @cg_wait
		@eventcg_change(CG021_40,500,_,"20","20","",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_50,500,_,"30","30","XA",_,_,"10","10","10") @cg_wait
		@eventcg_change(CG021_50,500,_,"40","40","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_60,500,_,"10","10","1A",_,_,"A0","A0","") @cg_wait
		@eventcg_change(CG021_61,500,_,"10","10","1A",_,_,"B0","B0","") @cg_wait
		@eventcg_change(CG021_61,500,_,"30","30","XA",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_61,500,_,"10","10","4A",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_61,500,_,_,_,_,_,_,"C0","C0","")   @cg_wait
		@eventcg_change(CG021_61,500,_,_,_,_,_,_,"D0","A0","")   @cg_wait
		@eventcg_change(CG021_61,500,_,"30","30","1A",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_61,500,_,_,_,_,_,_,"B0","B0","")   @cg_wait
		@eventcg_change(CG021_61,500,_,"10","10","XA",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_60,500,_,"30","30","XA",_,_,"A0","D0","") @cg_wait
		@eventcg_change(CG021_60,500,_,_,_,_,_,_,"B0","B0","")   @cg_wait
		@eventcg_change(CG021_61,500,_,"40","40","XA",_,_,"A0","A0","") @cg_wait
		@eventcg_change(CG021_61,500,_,_,_,_,_,_,"A0","A0","")   @cg_wait
		@eventcg_change(CG021_61,500,_,"10","10","1A",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_61,500,_,"30","40","XA",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_61,500,_,_,_,_,_,_,"D0","D0","")   @cg_wait
		@eventcg_change(CG021_70,500,_,"30","30","1A",_,_,"B0","B0","") @cg_wait
		@eventcg_change(CG021_80,500,_,"10","10","1A",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_80,500,_,_,_,_,_,_,"40","40","4A")   @cg_wait
		@eventcg_change(CG021_80,500,_,"30","30","4A",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_80,500,_,_,_,_,_,_,"10","10","1A")   @cg_wait
		@eventcg_change(CG021_80,500,_,_,_,_,_,_,"30","30","3A")   @cg_wait
		@eventcg_change(CG021_80,500,_,"30","30","3A",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_81,500,_,"10","10","1A",_,_,"40","10","1A") @cg_wait
		@eventcg_change(CG021_81,500,_,"10","40","XA",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_81,500,_,"10","10","1A",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_81,500,_,"30","30","XA",_,_,"40","10","1A") @cg_wait
		@eventcg_change(CG021_90,500,_,"40","40","4A",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_A0,500,_,"40","40","3A",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_A1,500,_,"10","10","1A",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_A1,500,_,"30","30","XA",_,_,"40","10","1A") @cg_wait
		@eventcg_change(CG021_B0,500,_,"30","30","XA",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_C0,500,_,"30","","XA",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_C2,500,_,"10","","2A",_,_,"10","10","1A") @cg_wait
		@eventcg_change(CG021_C2,500,_,_,_,_,_,_,"40","40","1A")   @cg_wait
		@eventcg_change(CG021_C1,500,_,"30","","2A",_,_,"40","40","1A") @cg_wait
		@eventcg_change(CG021_D0,500,_,"30","","2A",_,_,"20","20","1A") @cg_wait
		@eventcg_change(CG021_E0,500,_,"10","","2A",_,_,"10","","1A") @cg_wait
		@eventcg_change(CG021_E2,500,_,"10","","1A",_,_,"20","","2A") @cg_wait
		@eventcg_change(CG021_E2,500,_,"30","","XA",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG021_E1,500,_,"30","","2A",_,_,"10","","2A") @cg_wait
		@eventcg_change(CG021_E1,500,_,"40","","2A",_,_,"40","","2A") @cg_wait
		@eventcg_change(CG021_F0,500,_,"40","","2A",_,_,"30","","2A") @cg_wait
		@eventcg_change(CG021_G1,500,_,"30","","XA",_,_,"10","","1A") @cg_wait
		@eventcg_change(CG021_G0,500,_,"30","","1A",_,_,"10","","1A") @cg_wait
		@eventcg_change(CG021_G0,500,_,"40","","3A",_,_,"30","","3A") @cg_wait
		@eventcg_change(CG021_G0,500,_,"10","","4A",_,_,"40","","1A") @cg_wait
		@eventcg_change(CG021_G0,500,_,"30","","XA",_,_,"10","","1A") @cg_wait
		@eventcg_change(CG021_G0,500,_,"30","","1A",_,_,"40","","1A") @cg_wait



	case(cgtable.get_flag_no_by_name("CG022_00"))

		@eventcg_base_setup(CG022,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG022_00,0,"","10","10","10",_,"","10","10","10") @cg_wait

		@eventcg_change(CG022_00,500,"","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_00,500,"","20","20","20",_,"","30","30","50") @cg_wait
		@eventcg_change(CG022_00,500,"","10","10","40",_,"","50","10","50") @cg_wait
		@eventcg_change(CG022_00,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG022_00,500,"","40","40","10",_,"","20","20","10") @cg_wait
		@eventcg_change(CG022_00,500,_,_,_,_,_,"","20","30","30")   @cg_wait
		@eventcg_change(CG022_10,500,"","10","10","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG022_10,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG022_10,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_10,500,_,_,_,_,_,"","20","50","30")   @cg_wait
		@eventcg_change(CG022_10,500,"","40","40","10",_,"","20","30","30") @cg_wait
		@eventcg_change(CG022_10,500,_,_,_,_,_,"","20","30","10")   @cg_wait
		@eventcg_change(CG022_10,500,"","30","30","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_10,500,"","20","20","20",_,"","20","30","30") @cg_wait
		@eventcg_change(CG022_20,500,"","10","10","10",_,"","50","20","50") @cg_wait
		@eventcg_change(CG022_20,500,"","50","20","50",_,"","50","50","40") @cg_wait
		@eventcg_change(CG022_20,500,_,_,_,_,_,"","20","10","10")   @cg_wait
		@eventcg_change(CG022_20,500,_,_,_,_,_,"","20","30","50")   @cg_wait
		@eventcg_change(CG022_20,500,"","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_20,500,_,_,_,_,_,"","50","10","50")   @cg_wait
		@eventcg_change(CG022_20,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_20,500,"","20","20","50",_,"","20","20","40") @cg_wait
		@eventcg_change(CG022_20,500,_,_,_,_,_,"_ON","50","10","50")   @cg_wait
		@eventcg_change(CG022_20,500,"_ON","40","40","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_20,500,"","10","10","10",_,"","20","50","50") @cg_wait
		@eventcg_change(CG022_30,500,"","50","10","50",_,"","20","20","50") @cg_wait
		@eventcg_change(CG022_30,500,_,_,_,_,_,"_ON","50","10","60")   @cg_wait
		@eventcg_change(CG022_30,500,"_ON","30","30","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_30,500,"_ON","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_30,500,"","20","20","20",_,"","10","20","30") @cg_wait
		@eventcg_change(CG022_30,500,"","10","10","50",_,"","20","10","40") @cg_wait
		@eventcg_change(CG022_30,500,_,_,_,_,_,"","50","10","50")   @cg_wait
		@eventcg_change(CG022_30,500,"","20","20","40",_,"","20","60","10") @cg_wait
		@eventcg_change(CG022_30,500,_,_,_,_,_,"","20","60","40")   @cg_wait
		@eventcg_change(CG022_30,500,"","30","30","10",_,"","20","20","40") @cg_wait
		@eventcg_change(CG022_31,500,"","30","10","40",_,"","20","20","40") @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"_ON","50","10","30")   @cg_wait
		@eventcg_change(CG022_31,500,"_ON","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","20","40")   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","10","10")   @cg_wait
		@eventcg_change(CG022_31,500,"","40","40","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","10","50")   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","20","10")   @cg_wait
		@eventcg_change(CG022_31,500,"","20","20","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","30","50")   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","50","50","50")   @cg_wait
		@eventcg_change(CG022_31,500,"","10","10","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","10","60")   @cg_wait
		@eventcg_change(CG022_31,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,"","30","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,"","10","10","10",_,"","20","20","40") @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","10","40")   @cg_wait
		@eventcg_change(CG022_31,500,"","30","30","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_30,500,"","10","10","10",_,"","20","20","20") @cg_wait
		@eventcg_change(CG022_30,500,"","50","10","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_30,500,"_ON","30","30","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"_ON","50","10","50")   @cg_wait
		@eventcg_change(CG022_31,500,"","10","10","10",_,"","20","60","40") @cg_wait
		@eventcg_change(CG022_31,500,"","20","20","40",_,"","20","10","40") @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","20","20","30")   @cg_wait
		@eventcg_change(CG022_31,500,"","30","30","10",_,"","20","10","30") @cg_wait
		@eventcg_change(CG022_31,500,"","20","20","20",_,"","20","50","30") @cg_wait
		@eventcg_change(CG022_31,500,"","50","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","50","20","60")   @cg_wait
		@eventcg_change(CG022_31,500,"","20","20","10",_,"","50","10","40") @cg_wait
		@eventcg_change(CG022_31,500,"","30","30","40",_,"","20","20","10") @cg_wait
		@eventcg_change(CG022_31,500,_,_,_,_,_,"","50","10","50")   @cg_wait
		@eventcg_change(CG022_40,500,"","10","10","10",_,"","20","20","50") @cg_wait
		@eventcg_change(CG022_40,500,_,_,_,_,_,"","20","20","40")   @cg_wait
		@eventcg_change(CG022_50,500,"","20","20","10",_,"","20","60","40") @cg_wait
		@eventcg_change(CG022_50,500,_,_,_,_,_,"","20","20","10")   @cg_wait
		@eventcg_change(CG022_50,500,"_ON","30","30","50",_,"_ON","50","10","30") @cg_wait
		@eventcg_change(CG022_50,500,"_ON","30","30","10",_,"_ON","20","10","60") @cg_wait
		@eventcg_change(CG022_50,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG022_50,500,"_ON","30","30","50",_,"_ON","50","30","50") @cg_wait
		@eventcg_change(CG022_60,500,"","10","10","40",_,"","20","20","20") @cg_wait
		@eventcg_change(CG022_70,500,"","30","30","10",_,"","20","20","40") @cg_wait
		@eventcg_change(CG022_70,500,_,_,_,_,_,"","20","10","10")   @cg_wait
		@eventcg_change(CG022_70,500,"_ON","30","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG022_71,500,"_ON","30","30","40",_,"","20","20","40") @cg_wait
		@eventcg_change(CG022_71,500,_,_,_,_,_,"","20","20","10")   @cg_wait




	case(cgtable.get_flag_no_by_name("CG023_00"))

		@eventcg_base_setup(CG023,"_jur_effect","_jur_mayu","_jur_eye","_jur_mouth",_,"_kas_effect","_kas_mayu","_kas_eye","_kas_mouth")
		@eventcg_start(CG023_00,10,"","30","30","10",_,"","30","30","10") @cg_wait

		@eventcg_change(CG023_00,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG023_00,500,"","20","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","20","50","20")   @cg_wait
		@eventcg_change(CG023_00,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,"","20","20","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG023_00,500,"","20","30","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","20","20","50")   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","30","30","30")   @cg_wait
		@eventcg_change(CG023_00,500,"","10","10","30",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","20","30","60")   @cg_wait
		@eventcg_change(CG023_00,500,"","40","40","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","20","10","10")   @cg_wait
		@eventcg_change(CG023_00,500,"","20","20","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","20","30","40")   @cg_wait
		@eventcg_change(CG023_00,500,"","20","30","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,"","20","20","60",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","30","30","40")   @cg_wait
		@eventcg_change(CG023_00,500,"","30","30","30",_,"","30","30","30") @cg_wait
		@eventcg_change(CG023_00,500,"","40","20","20",_,"","40","20","20") @cg_wait
		@eventcg_change(CG023_00,500,"","50","50","20",_,"","50","50","20") @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","50","10","10")   @cg_wait
		@eventcg_change(CG023_00,500,"","40","40","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","50","20","50")   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","10","10","50")   @cg_wait
		@eventcg_change(CG023_00,500,"","50","50","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_00,500,_,_,_,_,_,"","50","50","40")   @cg_wait
		@eventcg_change(CG023_10,500,"","10","10","50",_,"","50","50","40") @cg_wait
		@eventcg_change(CG023_10,500,"","50","50","10",_,"","10","10","10") @cg_wait
		@eventcg_change(CG023_10,500,"","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_10,500,_,_,_,_,_,"","50","50","50")   @cg_wait
		@eventcg_change(CG023_10,500,"","50","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_10,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG023_10,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_10,500,_,_,_,_,_,"","50","10","10")   @cg_wait
		@eventcg_change(CG023_10,500,_,_,_,_,_,"","20","20","50")   @cg_wait
		@eventcg_change(CG023_10,500,"","20","20","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_10,500,"","50","50","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_10,500,"_ON","50","20","50",_,"_ON","50","20","50")  @cg_wait
		@eventcg_change(CG023_10,500,"","20","20","20",_,"","20","20","20") @cg_wait
		@eventcg_change(CG023_10,500,"","40","20","60",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_20,500,"","40","40","40",_,"","40","40","40") @cg_wait
		@eventcg_change(CG023_30,500,"_ON","40","40","40",_,"_ON","40","40","40") @cg_wait
		@eventcg_change(CG023_30,500,"_ON","40","50","60",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"_ON","40","50","60")   @cg_wait
		@eventcg_change(CG023_30,500,"_ON","40","40","60",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"_ON","20","20","20")   @cg_wait
		@eventcg_change(CG023_30,500,"_ON","40","50","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"","20","20","50")   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"_ON","40","40","60")   @cg_wait
		@eventcg_change(CG023_30,500,"","40","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,"_ON","50","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"","10","10","10")   @cg_wait
		@eventcg_change(CG023_30,500,"","10","40","40",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"_ON","20","20","50")   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"_ON","10","10","60")   @cg_wait
		@eventcg_change(CG023_30,500,"_ON","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,"_ON","20","20","20",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,"","50","50","50",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"","20","50","50")   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"","10","10","40")   @cg_wait
		@eventcg_change(CG023_30,500,"","10","10","10",_,_,_,_,_)   @cg_wait
		@eventcg_change(CG023_30,500,_,_,_,_,_,"","20","20","20")   @cg_wait
		@eventcg_change(CG023_30,500,"_ON","50","20","50",_,"_ON","50","20","50") @cg_wait



	case(cgtable.get_flag_no_by_name("CG024_00"))

		@eventcg_base_setup(CG024,_,"_mayu","_eye","_mouth")
		@eventcg_start(CG024_00,10,_,"30","30","30") @cg_wait

		@eventcg_change(CG024_00,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG024_00,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG024_00,500,_,"50","50","50") @cg_wait
		@eventcg_change(CG024_00,500,_,"30","30","40") @cg_wait
		@eventcg_change(CG024_00,500,_,"40","40","10") @cg_wait
		@eventcg_change(CG024_00,500,_,"40","30","40") @cg_wait
		@eventcg_change(CG024_00,500,_,"50","50","10") @cg_wait
		@eventcg_change(CG024_00,500,_,"40","10","50") @cg_wait
		@eventcg_change(CG024_00,500,_,"20","20","50") @cg_wait
		@eventcg_change(CG024_10,500,_,"50","50","40") @cg_wait
		@eventcg_change(CG024_10,500,_,"40","40","40") @cg_wait
		@eventcg_change(CG024_10,500,_,"20","20","20") @cg_wait
		@eventcg_change(CG024_10,500,_,"40","40","50") @cg_wait
		@eventcg_change(CG024_10,500,_,"10","10","10") @cg_wait


	case(cgtable.get_flag_no_by_name("CG025_00"))

		@eventcg_base_setup(CG025,"_effect","_mayu","_eye","_mouth")
		@eventcg_start(CG025_00,10,"","10","10","10") @cg_wait

		@eventcg_change(CG025_00,500,"","30","20","20") @cg_wait
		@eventcg_change(CG025_00,500,"","30","30","30") @cg_wait
		@eventcg_change(CG025_00,500,"","40","40","40") @cg_wait
		@eventcg_change(CG025_00,500,"_ON","30","30","30") @cg_wait
		@eventcg_change(CG025_00,500,"","40","X0","40") @cg_wait
		@eventcg_change(CG025_00,500,"","10","10","10") @cg_wait
		@eventcg_change(CG025_00,500,"","30","30","20") @cg_wait
		@eventcg_change(CG025_10,500,"","40","40","40") @cg_wait
		@eventcg_change(CG025_10,500,"","40","10","10") @cg_wait
		@eventcg_change(CG025_11,500,"","30","40","30") @cg_wait
		@eventcg_change(CG025_11,500,"","40","10","10") @cg_wait
		@eventcg_change(CG025_11,500,"","40","40","40") @cg_wait
		@eventcg_change(CG025_10,500,"","30","30","30") @cg_wait
		@eventcg_change(CG025_10,500,"","10","10","10") @cg_wait
		@eventcg_change(CG025_10,500,"","20","20","20") @cg_wait


	case(cgtable.get_flag_no_by_name("CG026_00"))

		@eventcg_base_setup(CG026)
		@eventcg_start(CG026_00,10) @cg_wait
		@eventcg_change(CG026_01,500,_) @cg_wait
		@eventcg_change(CG026_02,500,_) @cg_wait


	case(cgtable.get_flag_no_by_name("CG027_00"))

		@eventcg_base_setup(CG027)
		@eventcg_start(CG027_00,10) @cg_wait

		@eventcg_change(CG027_10,500,_) @cg_wait
		@eventcg_change(CG027_20,500,_) @cg_wait

	case(cgtable.get_flag_no_by_name("CG028_00"))

		@eventcg_base_setup(CG028)
		@eventcg_start(CG028_00,10) @cg_wait
		@eventcg_change(CG028_01,500,_) @cg_wait
		@eventcg_change(CG028_02,500,_) @cg_wait

	case(cgtable.get_flag_no_by_name("CG029_00"))

		@eventcg_base_setup(CG029)
		@eventcg_start(CG029_00,10) @cg_wait
		@eventcg_change(CG029_01,500,_) @cg_wait
		@eventcg_change(CG029_02,500,_) @cg_wait



}



return


//--------------------------------------
//専用ウェイト（拡縮システム内のCGモードを閉じる用）

command $cg_wait() : int {

	input.clear

	while(1) {

		if (mouse.wheel > 0){
			break
		}
	
		if (input.decide.on_down_up == 1) {
		
			break
		
		}
		
		if (input.cancel.on_down_up == 1) {	//右クリックで脱出(CGモード限定)
		
			return(1)
		
		}
	
		if (key[17].is_down == 1) {	//早送り　若干ウェイトおきつつ
		
			TIMEWAIT(150)
		
			key.clear
		
			break
		
		}
		
		/*if ($cg_mode_in == 2) {	//拡縮システムで「CGを閉じる」ボタンを押した場合(CGモード限定) ★2024.06.11 右クリックに変更
		
			return(1)
		
		}
		*/
		
		
	
		input.next
		disp
	
	}
	
}


#INC_START

	#MACRO	@cg_wait	if ($cg_wait() == 1) {goto ##init}


	#MACRO @tachi_cg_set(@chr1(""),@chr2(""),@chr3(""))
	
			if (@chr1 != "") {@CHR(@chr1,34,<nowipe>)}
			if (@chr2 != "") {@CHR(@chr2,31,<nowipe>)}
			if (@chr3 != "") {@CHR(@chr3,30,<nowipe>)}

			if (@chr1 != "") {@CHR_POS(-1,-50,34)}
			if (@chr2 != "") {@CHR_POS(-1,-50,31)}
			if (@chr3 != "") {@CHR_POS(-1,-50,30)}

			@BG(_,0,500)

			if (@chr1 != "") {@camera_work_chrsize_ssss(34)}
			if (@chr2 != "") {@camera_work_chrsize_ssss(31)}
			if (@chr3 != "") {@camera_work_chrsize_ssss(30)}

			@camera_work_bgsize_n
			@camera_work_bgsize_wait


#INC_END



