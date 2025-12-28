#Z00

//--------------
//システムレイアウト（コンフィグからの流用）

//====================================
//------------------------------------
//グラフィックやボタンの自動生成コマンド


//★見出し生成＆項目子オブジェクト作成

command	$ex_create_midasi(property $obj : object,property $moji : str,property $x,property $y,property $color:str,property $moji_color) {

	@ex_color_expand($color)

	$obj.create_rect(0,0,40,40,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	$obj.child.resize(50)
	
	$obj.child[00].init
	$obj.child[00].child.resize(3)
	$obj.child[00].disp = 1
	
	$obj.child[00].child[00].create_string($moji,1,80,14)
	$obj.child[00].child[00].set_string_param(28,5,0,0,$moji_color,0,0)
	
	$obj.child[00].child[01].create_rect(0,0,20,20,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x+28,$y + 4)
	$obj.child[00].child[02].create_rect(0,0,550,1,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x-19,$y+33)
	

}

//★チェックボックス付きボタン作成

command $ex_create_checkbtn(property $obj : object,property $btnNo,property $moji : str,property $flag,property $x,property $y,property $w,property $h,property $color:str,property $type)	{

	L[00] = $btnNo % 100
	
	@ex_color_expand($color)
	
	$obj.child[L[00]].create_rect(0,0,$w,$h,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	$obj.child[L[00]].set_button($btnNo,0,$type,0)	
	
	$obj.child[L[00]].child.resize(5)
	
	$obj.child[L[00]].child[00].create(_config_btn_backcolor01,1,0,$h - 40)
	$obj.child[L[00]].child[00].set_src_clip(1,0,0,$w,$h)
	$obj.child[L[00]].child[00].blend = 3
	$obj.child[L[00]].child[00].tr = 64
	
	$obj.child[L[00]].child[01].create(_config_checkbox,1,10,15,$flag)
	
	$obj.child[L[00]].child[02].create_string($moji,1,40,13)
	$obj.child[L[00]].child[02].set_string_param(18,0,0,0,21,0,0)
	
	$obj.child[L[00]].child[03].create_rect( 0,$h,$w  ,$h+1,10,10,20,240,1,0,0)
	$obj.child[L[00]].child[04].create_rect($w, 0,$w+1,$h  ,10,10,20,240,1,0,0+1)

}

//★項目展開用のボタン作成

command $ex_create_pushbtn(property $obj : object,property $btnNo,property $moji : str,property $x,property $y,property $w,property $h,property $color:str,property $type)	{

	L[00] = $btnNo % 100
	
	@ex_color_expand($color)
	
	
	$obj.child[L[00]].create_rect(0,0,$w,$h,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	$obj.child[L[00]].set_button($btnNo,0,$type,1)	
	
	$obj.child[L[00]].child.resize(4)
	
	$obj.child[L[00]].child[00].create(_config_btn_backcolor01,1,0,$h - 40)
	$obj.child[L[00]].child[00].set_src_clip(1,0,0,$w,$h)
	$obj.child[L[00]].child[00].blend = 3
	$obj.child[L[00]].child[00].tr = 64
	
	$obj.child[L[00]].child[01].create_string($moji,1,0,13)
	$obj.child[L[00]].child[01].set_string_param(18,0,0,0,21,0,0)
	
	$obj.child[L[00]].child[02].create_rect( 0,$h,$w  ,$h+1,10,10,20,240,1,0,0)
	$obj.child[L[00]].child[03].create_rect($w, 0,$w+1,$h  ,10,10,20,240,1,0,0+1)
	
	
	
	
	//文字のセンタリング
	
	L[01] = ($w /2) - ($moji.cnt * 18 / 2)
		
	$obj.child[L[00]].child[01].x = L[01]
}


command $ex_create_pushbtn2(property $obj : object,property $btnNo,property $moji : str,property $x,property $y,property $w,property $h,property $color:str,property $type)	{//グループ１用

	L[00] = $btnNo % 100
	
	@ex_color_expand($color)
	
	
	$obj.child[L[00]].create_rect(0,0,$w,$h,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	$obj.child[L[00]].set_button($btnNo,1,$type,1)	
	
	$obj.child[L[00]].child.resize(4)
	
	$obj.child[L[00]].child[00].create(_config_btn_backcolor01,1,0,$h - 40)
	$obj.child[L[00]].child[00].set_src_clip(1,0,0,$w,$h)
	$obj.child[L[00]].child[00].blend = 3
	$obj.child[L[00]].child[00].tr = 64
	
	$obj.child[L[00]].child[01].create_string($moji,1,0,13)	
	$obj.child[L[00]].child[01].set_string_param(18,0,0,0,21,0,0)
	
	$obj.child[L[00]].child[02].create_rect( 0,$h,$w  ,$h+1,10,10,20,240,1,0,0)
	$obj.child[L[00]].child[03].create_rect($w, 0,$w+1,$h  ,10,10,20,240,1,0,0+1)
	
	
	//文字のセンタリング
	
	L[01] = ($w /2) - ($moji.cnt * 18 / 2)
		
	$obj.child[L[00]].child[01].x = L[01]
}

command $ex_create_pushbtn3(property $obj : object,property $btnNo,property $moji : str,property $x,property $y,property $w,property $h,property $color:str,property $type,property $group)	{//グループ指定

	L[00] = $btnNo % 100
	
	@ex_color_expand($color)
	
	
	$obj.child[L[00]].create_rect(0,0,$w,$h,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)
	$obj.child[L[00]].set_button($btnNo,$group,$type,1)	
	
	$obj.child[L[00]].child.resize(4)
	
	$obj.child[L[00]].child[00].create(_config_btn_backcolor01,1,0,$h - 40)
	$obj.child[L[00]].child[00].set_src_clip(1,0,0,$w,$h)
	$obj.child[L[00]].child[00].blend = 3
	$obj.child[L[00]].child[00].tr = 64
	
	$obj.child[L[00]].child[01].create_string($moji,1,0,13)	
	$obj.child[L[00]].child[01].set_string_param(18,0,0,0,21,0,0)
	
	$obj.child[L[00]].child[02].create_rect( 0,$h,$w  ,$h+1,10,10,20,240,1,0,0)
	$obj.child[L[00]].child[03].create_rect($w, 0,$w+1,$h  ,10,10,20,240,1,0,0+1)
	
	
	//文字のセンタリング
	
	L[01] = ($w /2) - ($moji.cnt * 18 / 2)
		
	$obj.child[L[00]].child[01].x = L[01]
}



//★中見出し文字生成

command $ex_create_moji(property $obj : object,property $ObjNo,property $moji : str,property $x,property $y,property $moji_color) {

	//$Objは40番以降を使うこと

	$obj.child[$ObjNo].create_string($moji,1,$x,$y)
	$obj.child[$ObjNo].set_string_param(15,0,0,0,$moji_color,0,0)
	
}

command $ex_create_moji2(property $obj : object,property $ObjNo,property $moji : str,property $x,property $y,property $size,property $mojikan,property $moji_color) {	//★サイズ指定版

	$obj.child[$ObjNo].create_string($moji,1,$x,$y)
	$obj.child[$ObjNo].set_string_param($size,$mojikan,0,0,$moji_color,0,0)
	
}

//★ライン1p自動生成

command $ex_create_line(property $obj : object,property $ObjNo,property $x,property $y,property $w,property $color:str) {

	@ex_color_expand($color)

	$obj.child[$ObjNo].create_rect(0,0,$w,1,$ex_color_r,$ex_color_g,$ex_color_b,255,1,$x,$y)


}

//---------------------------------------
//★ヘルプテキスト

command $help_text(property $obj:object,property $position : str,property $moji : str) {

	if (@ヘルプテキスト表示 == 0) {return}

	switch($position) {
	
		case("DL")		L[01] = 0 L[02] = 855
		case("DR")		L[01] = 1220 L[02] = 855
		
		case("UL")		L[01] = 0 L[02] = 15
		case("UR")		L[01] = 1220 L[02] = 15

		case("MW")		L[01] = 1220 L[02] = 670

		
	
	}

	@ex_color_expand(<help_text_bg_color>)
	$obj.create_rect(0,0,700,200,$ex_color_r,$ex_color_g,$ex_color_b,235,1,L[01],L[02])

	$obj.layer = <help_txt_objno>
	$obj.order = <order_message>

	$obj.child.resize(10)
	
	$obj.child[0].create_rect(5,5,695,195,0,15,30,128,1)
	
	$obj.child[1].create_string($moji,1,20,20)
	$obj.child[1].set_string_param(25,0,7,26,21,0,0)
	
	$obj.child[2].create_rect(  5,  5,695,  6,220,240,255,245,1)
	$obj.child[3].create_rect(  5,194,695,195,220,240,255,245,1)
	
	$obj.child[4].create_rect(  4,  5,  6,195,  0, 40, 60,245,1)
	$obj.child[5].create_rect(694,  5,696,195,  0, 40, 60,245,1)


}


command $help_text_big(property $obj:object,property $position : str,property $moji : str) {

	if (@ヘルプテキスト表示 == 0) {return}

	switch($position) {
	
		case("DL")		L[01] = 0 L[02] = 360
		case("DR")		L[01] = 720 L[02] = 360
		
	
	}
	

	$obj.layer = <help_txt_objno>
	$obj.order = <order_message>

	$obj.child.resize(10)
	
	@ex_color_expand(<help_text_bg_color>)
	$obj.child[0].create_rect(5,5,555,235,$ex_color_r,$ex_color_g,$ex_color_b,128,1)
	
	$obj.child[1].create_string($moji,1,15,15)
	$obj.child[1].set_string_param(20,0,7,26,21,0,0)
	
	$obj.child[2].create_rect(  5,  5,555,  6,220,240,255,245,1)
	$obj.child[3].create_rect(  5,234,555,235,220,240,255,245,1)
	
	$obj.child[4].create_rect(  4,  5,  6,235,  0, 40, 60,245,1)
	$obj.child[5].create_rect(554,  5,556,235,  0, 40, 60,245,1)


}

command $help_text_big_image(property $obj:object,property $position : str,property $moji : str,property $image_file : str,property $image_x,property $image_y,property $image_patno) {

	if (@ヘルプテキスト表示 == 0) {return}

	switch($position) {
	
		case("DL")		L[01] = 0 L[02] = 0
		case("DR")		L[01] = 720 L[02] = 0
		case("CC")		L[01] = 630 L[02] = 190
		
	
	}


	@ex_color_expand(<help_text_bg_color>)
	$obj.create_rect(0,0,560,720,$ex_color_r,$ex_color_g,$ex_color_b,215,1,L[01],L[02])

	$obj.layer = <help_txt_objno>
	$obj.order = <order_message>

	$obj.child.resize(10)
	
	$obj.child[0].create_rect(5,5,555,715,0,15,30,128,1)
	
	$obj.child[1].create_string($moji,1,15,370)	//画像配置のためやや下に
	$obj.child[1].set_string_param(26,0,7,20,21,0,0)
	
	$obj.child[2].create($image_file,1,$image_x,$image_y,$image_patno)
	
	$obj.child[3].create_rect(  5,  5,555,  6,220,240,255,245,1)
	$obj.child[4].create_rect(  5,714,555,715,220,240,255,245,1)
	
	$obj.child[5].create_rect(  4,  5,  6,715,  0, 40, 60,245,1)
	$obj.child[6].create_rect(554,  5,556,715,  0, 40, 60,245,1)


}


command $help_text_mini(property $obj:object,property $position : str,property $moji : str) {

	if (@ヘルプテキスト表示 == 0) {return}

	switch($position) {
	
		case("DL")		L[01] = 0 L[02] = 550
		case("DR")		L[01] = 860 L[02] = 550
		
	
	}

	@ex_color_expand(<help_text_bg_color>)
	$obj.create_rect(0,0,420,130,$ex_color_r,$ex_color_g,$ex_color_b,235,1,L[01],L[02])

	$obj.layer = <help_txt_objno>
	$obj.order = <order_message>

	$obj.child.resize(10)
	
	$obj.child[0].create_rect(5,5,415,125,0,15,30,128,1)
	
	$obj.child[1].create_string($moji,1,15,15)
	$obj.child[1].set_string_param(20,0,7,19,21,0,0)
	
	$obj.child[2].create_rect(  5,  5,415,  6,220,240,255,245,1)
	$obj.child[3].create_rect(  5,124,415,125,220,240,255,245,1)
	
	$obj.child[4].create_rect(  4,  5,  6,125,  0, 40, 60,245,1)
	$obj.child[5].create_rect(554,  5,416,125,  0, 40, 60,245,1)


}

