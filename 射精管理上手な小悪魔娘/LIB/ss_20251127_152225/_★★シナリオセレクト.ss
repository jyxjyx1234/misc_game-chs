#Z00

//---------------------------------------
//シナリオセレクト

/*---

	シナリオのチェック用。
	チャプターセレクトのパイロット版準備も兼ねている
	

---*/


#INC_START

	#PROPERTY	$ss_scene_title : strlist[999]
	#PROPERTY	$ss_scene_ss : strlist[999]
	#PROPERTY	$ss_scene_zno : intlist[999]

	#DEFINE		<siori_color>	62,162,193


#INC_END


#INIT

$game_init
$mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）




syscom.set_msg_back_enable_flag(1)
syscom.set_save_enable_flag(1)
script.set_ctrl_skip_enable
syscom.set_syscom_menu_enable




@bgmstop(3000)


//命令の入れ忘れを防ぐために一旦服装差分スイッチを全部init

$chr_fukusou[0] =""
$chr_fukusou[1] =""
$chr_fukusou[2] =""


//☆Ｈシーンのみの確認のため回想モードスイッチ

//@回想モード中 = 1




back.object[01].create(_black_half,1,639,359)
@BG(BG10_AA)

syscom.set_msg_back_enable_flag(0)

<slider_bg_obj>.init
<slider_bg_obj>.child.resize(300)
<slider_bg_obj>.disp = 1


front.object[190].create_rect(0,0,50,50,<siori_color>,255,1,1150,80)
front.object[191].create_rect(0,0,50,50,<siori_color>,255,1,1150,180)
front.object[192].create_rect(0,0,50,50,<siori_color>,255,1,1150,280)

front.object[190].set_button(900,0,10,1)
front.object[191].set_button(901,0,10,1)
front.object[192].set_button(902,0,10,1)


//-------------------------------
//シナリオリスト生成


$ss_scene_title.init
$ss_scene_ss.init
$ss_scene_zno.init

//$ss_set(90,"★キャラセレクト","is_キャラセレクト",0)	//★なくなった

$ss_set(91,"9999_アイキャッチテスト","_",0)

$ss_set(92,"9999_スタッフロールテスト","_",0)

$ss_set(93,"9999_★★★メインフロー","_",0)

$ss_set(94,"_★★★テスト環境2","_",0)

$ss_set(95,"_★立ち絵リストアップ_M13","_",0)

$ss_set(96,"フラグ切り替え","_",0)




$ss_set(100,"0100_□◆巫女妹企画_プロローグ","_",0)
$ss_set(101,"0200_巫女妹企画_２日目","_",0)
$ss_set(102,"0300_巫女妹企画_３日目","_",0)
$ss_set(103,"0400_巫女妹企画_４日目","_",0)
$ss_set(104,"0500_巫女妹企画_５日目","_",0)
$ss_set(105,"0600_巫女妹企画_６日目","_",0)
$ss_set(106,"0700_巫女妹企画_７日目","_",0)



$ss_set(120,"1000_巫女妹企画_瑞月ルート１","_",0)
$ss_set(121,"1100_巫女妹企画_瑞月ルート２","_",0)
$ss_set(122,"1200_巫女妹企画_瑞月ルート３","_",0)
$ss_set(123,"1500_巫女妹企画_瑞月ルートＥＤ","_",0)
$ss_set(124,"1600_□◆巫女妹企画_瑞月ルートＥＤ派生（主人公乗っ取られ）","_",0)

$ss_set(140,"2000_巫女妹企画_３ｐルート１","_",0)
$ss_set(141,"2100_巫女妹企画_３ｐルート２","_",0)
$ss_set(142,"2200_巫女妹企画_３ｐルート３","_",0)
$ss_set(143,"2500_巫女妹企画_３ｐルートＥＤ","_",0)


$ss_set(220,"_★モード_CG","_★モード_CG",0)
$ss_set(221,"_★モード_サウンド","_★モード_サウンド",0)
$ss_set(222,"_★モード_連続回想","_★モード_連続回想",0)





L[01] = 0

for (L[00] = 90,L[00] < 400,L[00] += 1) {

	if ($ss_scene_title[L[00]] == "") {continue}
	
	$create_siori(L[00], $ss_scene_title[L[00]], 100,50 + (L[01] * 70) , 400,50 , $ss_scene_ss[L[00]])


	L[01] += 1



}

//$create_siori(300, $ss_scene_title[300], 100,50 + (L[01] * 70) , 400,50 , $ss_scene_ss[300]) L[01] += 1



//--------------------------------
//スライダー生成

$create_tate_slider(00)		//★ 縦スライダーを新しく作る度に「_★縦スライダー生成.inc」 に登録すること


#start


@ls_btn_reset
front.objbtngroup[0].start

input.clear
mouse.clear


while(1) {

	$LS_btn0_hit = front.objbtngroup[0].get_hit_no
	$LS_btn0_push = front.objbtngroup[0].get_pushed_no
	$LS_btn0_decided = front.objbtngroup[0].get_decided_no
	
	
	$tate_slider_behavior
	$set_tate_slider_param
	
	
	if ($LS_btn0_decided == 900) {
	
		@page_y_kioku(00) = math.limit(0,@page_y_kioku(00) - 500,$page_height[00])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku(00)
	
	
	}
	
	if ($LS_btn0_decided == 901) {
		
		@page_y_kioku(00) = math.limit(0,@page_y_kioku(00) + 500,$page_height[00])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku(00)
	
	}
	
	if ($LS_btn0_decided == 902) {
		
		@page_y_kioku(00) = math.limit(0,@page_y_kioku(00) + 1400,$page_height[00])
		<slider_bg_obj>.y_rep[00] = -@page_y_kioku(00)
	
	}
	
	
	if ($LS_btn0_decided >= 90 && $LS_btn0_decided < 400) {
	
		if($LS_btn0_decided == 96) {
		
			@BG(_black)
			
			#flag_switch
			
			L[00] = SELBTN("ＣＧ全ＯＮ","ＣＧ全ＯＦＦ","シナリオ全ＯＮ","シナリオ全ＯＦＦ","もどる")
			
			switch(L[00]) {
			
				case(0)	cgtable.set_all_flag(1) goto #flag_switch
				case(1)	cgtable.set_all_flag(0)	goto #flag_switch
				case(2)	G.clear(100,199,1)	goto #flag_switch
				case(3)	G.clear(100,199,0)	goto #flag_switch	
			
			}

	
			goto #init

		}
	
		if ($LS_btn0_decided == 97) {
		
		
		
		}
	
	
	
	
		@bgmstop(1000)
		@BG(_black) TIMEWAIT(1000)
		
		syscom.set_msg_back_enable_flag(1)
	
		farcall($ss_scene_ss[$LS_btn0_decided],$ss_scene_zno[$LS_btn0_decided])
		
		goto #init
	
	
	}
	
	
	
	if ($LS_btn0_decided > 0) {goto #start}
	
	
	
	disp


}



//---------------------------------
//自動しおり生成

command $create_siori(property $btnNo,property $moji : str,property $x,property $y,property $w,property $h,property $moji2 : str)	{

	L[00] = $btnNo - 90

	<slider_bg_obj>.child[L[00]].create_rect($x,$y,$x+$w,$y+$h,<siori_color>,255,1)
	<slider_bg_obj>.child[L[00]].set_button($btnNo,0,10,0)	
	
	<slider_bg_obj>.child[L[00]].child.resize(3)
	
	<slider_bg_obj>.child[L[00]].child[01].create_string($moji,1,$x,$y+12)
	<slider_bg_obj>.child[L[00]].child[01].set_string_param(25,0,0,0,21,0,0)
	
	<slider_bg_obj>.child[L[00]].child[02].create_string($moji2,1,$x+$w + 10,$y+$h - 10)
	<slider_bg_obj>.child[L[00]].child[02].set_string_param(12,0,0,0,0,0,0)
	
	//文字のセンタリング
	
	L[01] = ($x+($w /2)) - ($moji.cnt * 25 / 2)
		
	<slider_bg_obj>.child[L[00]].child[01].x = L[01]
}



//---------------------------------
//シナリオリスト入力

command $ss_set(property $index,property $title : str,property $scene_file : str,property $z_no) {

	$ss_scene_title[$index] = $title
	
	if ($scene_file == "_") { $ss_scene_ss[$index] = $title}
	else {	$ss_scene_ss[$index] = $scene_file }
	
	$ss_scene_zno[$index] = $z_no

}





