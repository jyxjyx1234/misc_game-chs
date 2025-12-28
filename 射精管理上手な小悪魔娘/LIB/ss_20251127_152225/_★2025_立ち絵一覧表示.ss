#Z00

//立ち絵一覧表示


#INC_START

	#PROPERTY $page

#INC_END


$page = 0


#init

$chr_fukusou[0] = "1"

L[01] = 0		//キャラ番号出だし
L[02] = 0
L[03] = 0

L[04] = 0 // 0:ヒロイン１ 1:ヒロイン２

K[00] = ""
K[01] = ""
K[02] = ""
K[04] = ""	//メモ１
K[05] = ""	//メモ２

K[20] = "0"	//表情エフェクト

K[30] = "０：微笑み"

K[40] = "" //キャラファイルネーム格納


#start

back.object[52].init
back.object[52].child.resize(50)
back.object[52].layer = 52
back.object[52].order = 5
back.object[52].disp = 1

//表示ヒロイン設定

switch(L[04]) {
	case(0) K[00] = "jur"
	case(1) K[00] = "kas"
}



//L[01] = L[02]


if (L[01] <= 9) 		{ K[01] = "0" K[30] = "０：微笑み" 		K[04] = "eye00" K[05] = ""}
elseif (L[01] <= 19) 	{ K[01] = "1" K[30] = "１：笑顔"		K[04] = "eye10" K[05] = ""}
elseif (L[01] <= 29) 	{ K[01] = "2" K[30] = "２：悲しみ" 		K[04] = "eye20" K[05] = ""}
elseif (L[01] <= 39) 	{ K[01] = "3" K[30] = "３：むすっ"  	K[04] = "eye30" K[05] = ""}
elseif (L[01] <= 49) 	{ K[01] = "4" K[30] = "４：驚き" 		K[04] = "eye40" K[05] = ""}
elseif (L[01] <= 59) 	{ K[01] = "5" K[30] = "５：真剣" 		K[04] = "eye50" K[05] = ""}
elseif (L[01] <= 69) 	{ K[01] = "6" K[30] = "６：ジト目" 		K[04] = "eye60" K[05] = ""}
elseif (L[01] <= 79) 	{ K[01] = "7" K[30] = "７：アオリ１" 	K[04] = "eye70" K[05] = ""}
elseif (L[01] <= 89) 	{ K[01] = "8" K[30] = "８：アオリ２" 	K[04] = "eye80" K[05] = ""}
elseif (L[01] <= 99)	{ K[01] = "9" K[30] = "９：アオリ３" 	K[04] = "eye90" K[05] = ""}
elseif (L[01] <= 109) 	{ K[01] = "A" K[30] = "Ａ：見下し１" 	K[04] = "eyeA0" K[05] = ""}
elseif (L[01] <= 119) 	{ K[01] = "B" K[30] = "Ｂ：見下し２" 	K[04] = "eyeB0" K[05] = ""}
elseif (L[01] <= 129) 	{ K[01] = "C" K[30] = "Ｃ：ウィンク右" 	K[04] = "eyeC0" K[05] = ""}
elseif (L[01] <= 139) 	{ K[01] = "D" K[30] = "Ｄ：ウィンク左"	K[04] = "eyeD0" K[05] = ""}
elseif (L[01] <= 149) 	{ K[01] = "E" K[30] = "Ｅ：主人公側見開き"	K[04] = "eyeE0" K[05] = ""}
elseif (L[01] <= 159) 	{ K[01] = "F" K[30] = "Ｆ：逆側見開き"	K[04] = "eyeF0" K[05] = ""}
elseif (L[01] <= 169) 	{ K[01] = "G" K[30] = "Ｇ：※他パーツ確認用"	K[04] = "mouth0A：微笑閉じ口" K[05] = "C0 D0 E0 F0:mayuとmouthをそれぞれ追加した"}

elseif (L[01] <= 179) 	{ K[01] = "H" K[30] = "Ｈ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 189) 	{ K[01] = "I" K[30] = "Ｉ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 199) 	{ K[01] = "J" K[30] = "Ｊ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 209) 	{ K[01] = "K" K[30] = "Ｋ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 219) 	{ K[01] = "L" K[30] = "Ｌ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 229) 	{ K[01] = "M" K[30] = "Ｍ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 239) 	{ K[01] = "N" K[30] = "Ｎ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 249) 	{ K[01] = "O" K[30] = "Ｏ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 259) 	{ K[01] = "P" K[30] = "Ｐ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 269) 	{ K[01] = "Q" K[30] = "Ｑ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 279) 	{ K[01] = "R" K[30] = "Ｒ："	K[04] = "" K[05] = ""}

elseif (L[01] <= 289) 	{ K[01] = "S" K[30] = "Ｓ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 299) 	{ K[01] = "T" K[30] = "Ｔ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 309) 	{ K[01] = "U" K[30] = "Ｕ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 319) 	{ K[01] = "V" K[30] = "Ｖ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 329) 	{ K[01] = "W" K[30] = "Ｗ："	K[04] = "" K[05] = ""}
elseif (L[01] <= 339) 	{ K[01] = "X" K[30] = "Ｘ：下弦弧状"	K[04] = "eyeX0" K[05] = ""}
elseif (L[01] <= 349) 	{ K[01] = "Y" K[30] = "Ｙ：目無し"	K[04] = "([EF]Yと同時使用を想定)" K[05] = ""}
elseif (L[01] <= 359) 	{ K[01] = "Z" K[30] = "Ｚ：眉目無し"	K[04] = "([EF]Yと同時使用を想定)" K[05] = ""}

//effect説明文
K[50] = "[EF]X:目暗転１ Y:暗転２(目無し等で使用) 1:赤み 2:汗 A:発情 B:発情＋ C:発情＋顔面精液 D:発情＋顔面精液＋暗転１"


for (L[00] = 0,L[00] < 10,L[00]+= 1)  {

	L[03] = L[01] % 10

	if ((L[01]>=340 && L[01]<= 359)) {
		K[20] = "Y"		//YZ用、目暗転エフェクト 
	}else {
		K[20] = "0"
	}

	K[02] = K[20] + K[01] + math.tostr(L[03])	//通常
	
	K[40] = K[00] + "1A_" + K[20] + K[01] + math.tostr(L[00])

	//obj = 40～49を使用
	
	@CHR(K[40],L[00]+40,<nowipe>,"","","",300+(350 * (L[00] % 5)),1600 + ((L[00] >= 5) * 420) )

	$back52_text(L[00],K[20] + K[01] + math.tostr(L[00]),320+(350 * (L[00] % 5)),330 + ((L[00] >= 5) * 420),75,0,0)


}

back.object[50].create_rect(0,0,1920,300,0,0,0,255,1,0,830)
back.object[50].layer = 51
back.object[50].order = 5

back.object[51].create_rect(0,0,100,1080,255,0,0,255,1,0,0)
back.object[51].layer = 52
back.object[51].order = 5


$back52_text(10,K[30],90,30,75,1,0)
back.object[52].child[10].rotate_z = 900

$back52_text(11,K[04],200,860,60,1,0)
$back52_text(12,K[05],200,960,40,1,0)

$back52_text(13,K[50],120,1040,25,1,0)
back.object[52].child[13].tr = 200

$back52_text(20,">>",1800,840,100,1,1)
$back52_text(21,"<<",1630,840,100,1,1)

$back52_text(22,"00",1630,940,60,1,1)
$back52_text(23,"A0",1730,940,60,1,1)
$back52_text(24,"X0",1830,940,60,1,1)


if(@立ち絵のまばたき演出をしない == 1) {
	$back52_text(25,"まばたき：ＯＦＦ",1640,1030,30,1,1)
}else{
	$back52_text(25,"まばたき：ＯＮ",1640,1030,30,1,1)
}


$back52_text(30,"立ち",10,1000,40,1,1)
$back52_text(31,"キャラ",6,930,30,1,1)


@BG(_black,1,0)

#loop

front.objbtngroup[0].start
input.clear

while(1){

	//L[00] = front.objbtngroup[0].get_decided_no

	if (system.check_active == 1) {

		L[00] = front.objbtngroup[0].get_pushed_no

		if (key[39].is_down == 1) {L[00] = 26} // →
		if (key[37].is_down == 1) {L[00] = 27} // ←
		if (key[38].is_down == 1) {L[00] = 28} // ↑
		if (key[40].is_down == 1) {L[00] = 29} // ↓

		if (key[68].is_down == 1) {L[00] = 26} // d
		if (key[65].is_down == 1) {L[00] = 27} // a
		if (key[87].is_down == 1) {L[00] = 28} // w
		if (key[83].is_down == 1) {L[00] = 29} // s

		if (mouse.wheel > 0) {L[00] = 26}
		if (mouse.wheel < 0) {L[00] = 27}

		if ($page == 0) {

			switch(L[00]){
				case(20)	L[01] = (L[01] + 10) % 360	TIMEWAIT(70) goto #start
				case(21)	L[01] = L[01] - 10  if (L[01] < 0) {L[01] = 350}	TIMEWAIT(70) goto #start

				case(22)	L[01] = 0 goto #start
				case(23)	L[01] = 100 goto #start
				case(24)	L[01] = 330 goto #start
				case(25)	@立ち絵のまばたき演出をしない = (@立ち絵のまばたき演出をしない + 1) % 2 TIMEWAIT(50) goto #start

				case(26)	L[01] = (L[01] + 10) if (L[01] > 350) {L[01] = 350}	TIMEWAIT(70) goto #start
				case(27)	L[01] = (L[01] - 10) if (L[01] < 0) {L[01] = 0}	TIMEWAIT(70) goto #start
				case(28)	L[01] = (L[01] - 50) if (L[01] < 0) {L[01] = 0}	TIMEWAIT(70) goto #start
				case(29)	L[01] = (L[01] + 50) if (L[01] > 350) {L[01] = 350}	TIMEWAIT(70) goto #start

				case(30)	$page = 1 @BG(_black,1,0) goto #page2	//立ち絵ポーズ確認へ
				case(31)	L[04] =  (L[04]+1) % 2	TIMEWAIT(70) goto #start	//キャラ切り替え
				

			}
		}else{

			switch(L[00]){


				case(30)	$page = 0 @BG(_black,1,0) goto #start	//表情一覧へ
			}
		}

	}

	input.next
	disp
}

#page2

back.object[52].init
back.object[52].child.resize(50)
back.object[52].layer = 52
back.object[52].order = 5
back.object[52].disp = 1

@CHR(K[00]+"1A_000",21,<nowipe>,"","","",-200,-700)
@CHR(K[00]+"1B_000",23,<nowipe>,"","","",-100,-700)
@CHR(K[00]+"1C_000",24,<nowipe>,"","","",-170,-700)

if (K[00] == "jur") {
	@CHR(K[00]+"1D_000",22,<nowipe>,"","","",-230,-700)
	@CHR(K[00]+"1E_000",20,<nowipe>,"","","",-110,-700)
}


back.object[21].set_scale(350,350)
back.object[23].set_scale(350,350)
back.object[24].set_scale(350,350)
back.object[22].set_scale(350,350)
back.object[20].set_scale(350,350)
back.object[19].set_scale(350,350)


K[04] = "メモ１"
K[05] = "メモ２"


$back52_text(0,"XA",150,30,80,1,0)
$back52_text(1,"XB",450,30,80,1,0)
$back52_text(2,"XC",750,30,80,1,0)
$back52_text(3,"XD",1050,30,80,1,0)
$back52_text(4,"XE",1350,30,80,1,0)
$back52_text(5,"XF",1650,30,80,1,0)

$back52_text(11,K[04],200,860,60,1,0)
$back52_text(12,K[05],200,960,40,1,0)
$back52_text(13,K[50],120,1040,25,1,0)
back.object[52].child[13].tr = 200

$back52_text(30,"顔",10,1000,40,1,1)

@BG(_black,1,0) 
@camera_work_init

goto #loop















command $back52_text(property $child,property $moji:str,property $x,property $y,property $size,property $color,property $button_flag){

	back.object[52].child[$child].create_string($moji,1,$x,$y)

	switch($color) {
		case(0)	back.object[52].child[$child].set_string_param($size,0,0,0, 1,0,2,0) //黒文字
		case(1)	back.object[52].child[$child].set_string_param($size,0,0,0, 0,1,2,2) //白文字
	}

	if ($button_flag == 1) {
		back.object[52].child[$child].set_button($child,0,10,5)
	}

}