#Z00

#INC_START

    #PROPERTY   $cg_name : str
    #PROPERTY   $chr_name : str //3p用
    #PROPERTY   $memo : str
    #PROPERTY   $memo2 : str
    #PROPERTY   $check_locate   // 0:左側 1:右側 2:中央
    #PROPERTY   $check_scale
    #PROPERTY   $check_mabataki
    #PROPERTY   $page

#INC_END


#init

$page = 35
$check_mabataki = 1 // 瞬きチェック時は1に

#start

switch($page) {
    case(0)  $cg_name = "CG001"  $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "00 10 11 20 30 40 41 50 51 60 70 80" $memo2="0A 1A 1B    3A 4A 4B 5A 5B    7A 8A"
    case(1)  $cg_name = "CG002"  $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 10 11 20 21 22 30 40" $memo2="0A 1A 1B 2A 2B 2C 3A 4A eye4A/6A:涙"
    case(2)  $cg_name = "CG003"  $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 01 10 11 20 21 30 31 40" $memo2="0A 0B 4A"
    case(3)  $cg_name = "CG003" $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "CG003A_A0 A1 B0 B1 C1 ※大復習用" $memo2="AA AB BA BB ※表情は元のCGのを使う"
    case(4)  $cg_name = "CG004"  $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 0A 10 11 1A 1B 20 30 3A" $memo2="舐めてるとき：CG004_eye00 咥えてるとき：CG004_eyeA0"
    case(5)  $cg_name = "CG005"  $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "00 10 11 20 21 30 31 40 41 50 51 60 61 70 80" $memo2="_effect_ONで顔暗く"
    case(6)  $cg_name = "CG005A" $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "00 10 20 30 31 40 41 50 51 60 70 大復習用" $memo2="_effect_ONで顔暗く　※表情は元のCGのを使う"
    case(7)  $cg_name = "CG006"  $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 A0 A1" $memo2=""
    case(8)  $cg_name = "CG006A" $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 10 11 20 30 31 40 50 51 60 70 71 80 90" $memo2=""
    case(9)  $cg_name = "CG007"  $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 10 20 30 31 32 40 41 50 51 60 61 70 71 72 80 90 _effect_ONで顔暗く" $memo2=""
    case(10) $cg_name = "CG008"  $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 01 10 11 20 21 30 31 40" $memo2="_effect_ONで顔暗く"
    case(11) $cg_name = "CG009"  $chr_name = "" $check_locate = 2 $check_scale = 400 $memo = "00 01 10 20 21 30 40 41" $memo2="予備でA0 A1 B0 B1(スマホなし)"
    case(12) $cg_name = "CG016"  $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 50 60 61 70 71 80 90 91 A0 B0 B1 B2 C0 D0" $memo2=" _effect_ONで顔暗く"
    case(13) $cg_name = "CG016A" $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 50 51 大復習用" $memo2=" _effect_ONで顔暗く　※表情は元のCGのを使う"
    case(14) $cg_name = "CG017"  $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 10 20 21 22 23 30 40 50 60 61 62 63 70 80 90 91 92 93 A0" $memo2="_effect_ONで顔暗く"
    case(15) $cg_name = "CG018"  $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 41 50 60 61 70 80 81 90 A0 A1 C0 D0" $memo2="_effect_ONで顔暗く"
    case(16) $cg_name = "CG019"  $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 11 20 21 30 40 50 51 52 60 61 70 71 80 81 90 91 92 A0" $memo2="_effect_ONで顔暗く"
    case(17) $cg_name = "CG020"  $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "00 10 11 20 21 30 40 50 51 60 70 80 90 91 A0 B0 B1 C0 D0 D1" $memo2="_effect_ONで顔暗く"
    case(18) $cg_name = "CG020A" $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "00 10 11 20 30 31 40 50 60 大復習用" $memo2="_effect_ONで顔暗く　※表情は元のCGのを使う"
    case(19) $cg_name = "CG024"  $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 10" $memo2="_effect_ONで顔暗く"


    case(20) $cg_name = "CG010"  $chr_name = "_jur" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 50 //予備51" $memo2="_effect_ONで顔暗く"
    case(21) $cg_name = "CG010"  $chr_name = "_kas" $check_locate = 0 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 50 //予備51" $memo2="_effect_ONで顔暗く"
    case(22) $cg_name = "CG011"  $chr_name = "_jur" $check_locate = 1 $check_scale = 400 $memo = "00 10 11 20 21 30 31 40 //予備41" $memo2="_effect_ONで顔暗く"
    case(23) $cg_name = "CG011"  $chr_name = "_kas" $check_locate = 0 $check_scale = 400 $memo = "00 10 11 20 21 30 31 40 //予備41" $memo2="_effect_ONで顔暗く"
    case(24) $cg_name = "CG012"  $chr_name = "_jur" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 20 21 22 23 30 40 41 42 43 50 51  60 61" $memo2="_effect_ONで顔暗く"
    case(25) $cg_name = "CG012"  $chr_name = "_kas" $check_locate = 0 $check_scale = 400 $memo = "00 01 10 20 21 22 23 30 40 41 42 43 50 51  60 61" $memo2="mouth1A 2A 3A 4A 5A:精液付き _effect_ONで顔暗く"
    case(26) $cg_name = "CG025"  $chr_name = "" $check_locate = 1 $check_scale = 400 $memo = "00 10 11 ※CG013の珠理奈単独版" $memo2="_effect_ONで顔暗く"
    
    case(27) $cg_name = "CG013"  $chr_name = "_jur" $check_locate = 1 $check_scale = 400 $memo = "00 10 20 30 31 40 50 51 60 61 70 71 80 81 90 A0 B0 B1" $memo2="_effect_ONで顔暗く"
    case(28) $cg_name = "CG013"  $chr_name = "_kas" $check_locate = 0 $check_scale = 400 $memo = "00 10 20 30 31 40 50 51 60 61 70 71 80 81 90 A0 B0 B1" $memo2="_effect_ONで顔暗く"
    case(29) $cg_name = "CG014"  $chr_name = "_jur" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 41 42 50 60 70 //予備71 72" $memo2="_effect_ONで顔暗く"
    case(30) $cg_name = "CG014"  $chr_name = "_kas" $check_locate = 2 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 41 42 50 60 70 //予備71 72" $memo2="_effect_ONで顔暗く"
    case(31) $cg_name = "CG015"  $chr_name = "_jur" $check_locate = 0 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 50 51 60 70 71" $memo2="_effect_ONで顔暗く"
    case(32) $cg_name = "CG015"  $chr_name = "_kas" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 11 20 30 31 40 50 51 60 70 71" $memo2="_effect_ONで顔暗く"
    case(33) $cg_name = "CG021"  $chr_name = "_jur" $check_locate = 0 $check_scale = 400 $memo = "00 01 10 20 21 30 31 40 50 60 61 70 80 81 90 A0 A1 B0 C0 C1 C2 D0 E0 E1 E2 F0 G0 G1" $memo2="mouth1A 2A 3A 4A XA:精液つき"
    case(34) $cg_name = "CG021"  $chr_name = "_kas" $check_locate = 1 $check_scale = 400 $memo = "00 01 10 20 21 30 31 40 50 60 61 70 80 81 90 A0 A1 B0 C0 C1 C2 D0 E0 E1 E2 F0 G0 G1" $memo2="※表情は左が隠れているのが通常　Ax Bx Cx Dx:表情全体表示  mouth1A 2A 3A 4A:精液つき"
    
    case(35) $cg_name = "CG022"  $chr_name = "_jur" $check_locate = 0 $check_scale = 400 $memo = "00 10 20 21 30 31 40 50 60 70 71" $memo2="_effect_ONで顔暗く"
    case(36) $cg_name = "CG022"  $chr_name = "_kas" $check_locate = 0 $check_scale = 400 $memo = "00 10 20 21 30 31 40 50 60 70 71" $memo2="_effect_ONで顔暗く"
    case(37) $cg_name = "CG023"  $chr_name = "_jur" $check_locate = 0 $check_scale = 400 $memo = "00 10 20 30" $memo2="_effect_ONで顔暗く"
    case(38) $cg_name = "CG023"  $chr_name = "_kas" $check_locate = 1 $check_scale = 400 $memo = "00 10 20 30" $memo2="_effect_ONで顔暗く"


    case(999) $cg_name = "CG001" $chr_name = "" $check_locate = 0 $check_scale = 400 $memo = "メモメモメモ" $memo2=""

    default $cg_name = "CG001" $check_locate = 0 $check_scale = 400 $memo = "メモメモメモ" $memo2=""
}




back.object[52].init
back.object[52].child.resize(50)
back.object[52].layer = 52
back.object[52].order = 5
back.object[52].disp = 1


for(L[00]=1,L[00] <=9,L[00]+=1){

    back.object[L[00]].create($cg_name+"_00",1,959,539)
    back.object[L[00]].x_rep.resize(2)
    back.object[L[00]].y_rep.resize(2)
    back.object[L[00]].child.resize(10)
    back.object[L[00]].child[00].create($cf($cg_name+$chr_name+"_mayu"+math.tostr_zero((L[00]*10),2)),1,0,0)
    back.object[L[00]].child[01].create($cf($cg_name+$chr_name+"_eye"+math.tostr_zero((L[00]*10),2)),1,0,0)
    if (back.object[L[00]].child[01].get_pat_cnt >= 2 && $check_mabataki == 1) {
        back.object[L[00]].child[01].load_gan(_mabataki01)
        back.object[L[00]].child[01].start_gan(math.rand(1,<mabataki_max>),1,1)
    }
    back.object[L[00]].child[02].create($cf($cg_name+$chr_name+"_mouth"+math.tostr_zero((L[00]*10),2)),1,0,0)

    back.object[L[00]].set_scale($check_scale,$check_scale)

    if ($check_locate == 0){
        back.object[L[00]].x_rep[0] = -120
    }elseif ($check_locate == 1) {
        back.object[L[00]].x_rep[0] = -480
    }elseif ($check_locate == 2) {
        back.object[L[00]].x_rep[0] = -240
    }

    if (L[00] <= 5) {
//        back.object[L[00]].x_rep[1] = -480 + (480 * (L[00] - 1)  )
        back.object[L[00]].x_rep[1] = -480 + (380 * (L[00] - 1)  )

        back.object[L[00]].y_rep[1] = -270

    }else{
        back.object[L[00]].x_rep[1] = -480 + (380 * (L[00] - 6) )
        back.object[L[00]].y_rep[1] = 270
    }


}

back.object[9].child[00].create($cf($cg_name+$chr_name+"_mayuX0"),1,0,0)
back.object[9].child[01].create($cf($cg_name+$chr_name+"_eyeX0"),1,0,0)
 if (back.object[9].child[01].get_pat_cnt >= 2 && $check_mabataki == 1) {
        back.object[9].child[01].load_gan(_mabataki01)
        back.object[9].child[01].start_gan(math.rand(1,<mabataki_max>),1,1)
    }
back.object[9].child[02].create($cf($cg_name+$chr_name+"_mouthX0"),1,0,0)




back.object[1].set_clip(1,0,0,380,560)
back.object[2].set_clip(1,380,0,760,560)
back.object[3].set_clip(1,760,0,1140,560)
back.object[4].set_clip(1,1140,0,1520,560)
back.object[5].set_clip(1,1520,0,1900,560)

back.object[6].set_clip(1,0,560,380,1080)
back.object[7].set_clip(1,380,560,760,1080)
back.object[8].set_clip(1,760,560,1140,1080)
back.object[9].set_clip(1,1140,560,1520,1080)


/*
back.object[1].set_clip(1,0,0,480,560)
back.object[2].set_clip(1,480,0,960,560)
back.object[3].set_clip(1,960,0,1440,560)
back.object[4].set_clip(1,1440,0,1920,560)

back.object[5].set_clip(1,0,540,480,1080)
back.object[6].set_clip(1,480,540,960,1080)
back.object[7].set_clip(1,960,540,1440,1080)
back.object[8].set_clip(1,1440,540,1920,1080)
*/

$back52_text(1,"10",280,400,70,1,0)
$back52_text(2,"20",660,400,70,1,0)
$back52_text(3,"30",1040,400,70,1,0)
$back52_text(4,"40",1420,400,70,1,0)
$back52_text(5,"50",1800,400,70,1,0)
$back52_text(6,"60",280,950,70,1,0)
$back52_text(7,"70",660,950,70,1,0)
$back52_text(8,"80",1040,950,70,1,0)
$back52_text(9,"X0",1420,950,70,1,0)

$back52_text(10,$cg_name+$chr_name,50,500,60,1,0)
$back52_text(11,$memo,350,510,20,1,0)
$back52_text(12,$memo2,350,550,20,1,0)

$back52_text(20,">>",1750,900,100,1,1)
$back52_text(21,"<<",1580,900,100,1,1)


@BG(_black,1,0)

#loop

front.objbtngroup[0].start
input.clear

while(1){

    if (system.check_active == 1) {
        L[00] = front.objbtngroup[0].get_pushed_no

        switch(L[00]){
            case(20)	$page = ($page + 1)	TIMEWAIT(70) goto #start
			case(21)	$page = ($page - 1) if ($page < 0){$page = 25} TIMEWAIT(70) goto #start
        }



    }
    disp
}





command $cf(property $filename : str ) :str {
    K[00] = "g00\\"+$filename+".g00"


    if (system.check_file_exist(K[00]) == 0){
        return ("_spacer")
    }else{
        return ($filename)
    }

}


command $back52_text(property $child,property $moji:str,property $x,property $y,property $size,property $color,property $button_flag){

	back.object[52].child[$child].create_string($moji,1,$x,$y)

	switch($color) {
		case(0)	back.object[52].child[$child].set_string_param($size,0,8,0, 1,0,2,0) //黒文字
		case(1)	back.object[52].child[$child].set_string_param($size,0,8,0, 0,1,2,2) //白文字
	}

	if ($button_flag == 1) {
		back.object[52].child[$child].set_button($child,0,10,5)
	}

}


