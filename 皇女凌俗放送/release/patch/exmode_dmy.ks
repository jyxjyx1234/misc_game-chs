;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/28　更新者　白土

*start

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■　ＢＧＭモード
;■■■■■□□□□□■■■■■□□□□□■■■■■

*bgm
*bgm_init
[eval exp="var bgm  = 1"]
[eval exp="var play = 0"]

[image  layer=base storage=bgm_bg_ page=back]
[layopt layer=message2 visible=true opacity=0 page=back]
[ud time=500]
*bgm_set
[current  layer=message1 withback=false][er]
[position layer=message1 visible=true left=0 top=0 width=640 height=480]
[layopt   layer=message1 visible=true opacity=255]

[locate x= 50 y= 88][button clickse=click clicksebuf=2 graphic="bgm_bt_extra" target="*back"]
[locate x=390 y= 60][button clickse=click clicksebuf=2 graphic="bgm_bt_back"  target="*bgm_before"]
[locate x=445 y= 60][button clickse=click clicksebuf=2 graphic="bgm_bt_play"  target="*bgm_play"]
[locate x=500 y= 60][button clickse=click clicksebuf=2 graphic="bgm_bt_stop"  target="*bgm_stop"]
[locate x=555 y= 60][button clickse=click clicksebuf=2 graphic="bgm_bt_next"  target="*bgm_next"]
[locate x=100 y=183][button clickse=click clicksebuf=2 graphic="btbgm0"       target="*bgm_play" exp="bgm =  1"]
[locate x=100 y=207][button clickse=click clicksebuf=2 graphic="btbgm1"       target="*bgm_play" exp="bgm =  2"]
[locate x=100 y=231][button clickse=click clicksebuf=2 graphic="btbgm2"       target="*bgm_play" exp="bgm =  3"]
[locate x=100 y=255][button clickse=click clicksebuf=2 graphic="btbgm3"       target="*bgm_play" exp="bgm =  4"]
[locate x=100 y=279][button clickse=click clicksebuf=2 graphic="btbgm4"       target="*bgm_play" exp="bgm =  5"]
[locate x=100 y=303][button clickse=click clicksebuf=2 graphic="btbgm5"       target="*bgm_play" exp="bgm =  6"]
[locate x=100 y=327][button clickse=click clicksebuf=2 graphic="btbgm6"       target="*bgm_play" exp="bgm =  7"]
[locate x=100 y=351][button clickse=click clicksebuf=2 graphic="btbgm7"       target="*bgm_play" exp="bgm =  8"]
[locate x=100 y=375][button clickse=click clicksebuf=2 graphic="btbgm8"       target="*bgm_play" exp="bgm =  9"]
[locate x=100 y=399][button clickse=click clicksebuf=2 graphic="btbgm9"       target="*bgm_play" exp="bgm = 10"]
;// [locate x=100 y=368][button clickse=click clicksebuf=2 graphic="btbgm10" target="*bgm_play" exp="bgm = 11"]
;// [locate x=100 y=393][button clickse=click clicksebuf=2 graphic="btbgm11" target="*bgm_play" exp="bgm = 12"]
;// [locate x=100 y=418][button clickse=click clicksebuf=2 graphic="btbgm12" target="*bgm_play" exp="bgm = 13"]
[image layer=base storage=bgm_bg]

[locklink2]
[unlocklink2]
[s]

*bgm_play
[bgmstop]
[bgmplay time=1 storage="&'bgm0'+(string)bgm" cond="bgm< 10"]
[bgmplay time=1 storage="&'bgm' +(string)bgm" cond="bgm>=10"]
[image left=100 top="&(183+24*(bgm-1))" cliptop=0 clipleft=880 clipwidth=440 clipheight=20 layer=3 storage="&'btbgm'+(string)(bgm-1)" index=1005000 visible=true]
[jump target=*bgm_set]

*bgm_stop
[bgmstop time=500]
[jump target=*bgm_set]

*bgm_next
[bgmstop]
[eval exp="bgm = ((bgm+1+9)%10)+1"]
[bgmplay time=1 storage="&'bgm0'+(string)bgm" cond="bgm< 10"]
[bgmplay time=1 storage="&'bgm' +(string)bgm" cond="bgm>=10"]
[image left=100 top="&(183+24*(bgm-1))" cliptop=0 clipleft=880 clipwidth=440 clipheight=20 layer=3 storage="&'btbgm'+(string)(bgm-1)" index=1005000 visible=true]
[jump target=*bgm_set]

*bgm_before
[bgmstop]
[eval exp="bgm = ((bgm-1+9)%10)+1"]
[bgmplay time=1 storage="&'bgm0'+(string)bgm" cond="bgm< 10"]
[bgmplay time=1 storage="&'bgm' +(string)bgm" cond="bgm>=10"]
[image left=100 top="&(183+24*(bgm-1))" cliptop=0 clipleft=880 clipwidth=440 clipheight=20 layer=3 storage="&'btbgm'+(string)(bgm-1)" index=1005000 visible=true]
[jump target=*bgm_set]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■　ＣＧモード
;■■■■■□□□□□■■■■■□□□□□■■■■■
*cg

;// [eval exp="sf.EV01_001a = 1"]
;// [eval exp="sf.EV01_001b = 1"]
;// [eval exp="sf.EV01_001c = 1"]
;// [eval exp="sf.EV01_001d = 1"]
;// [eval exp="sf.EV01_002a = 1"]
;// [eval exp="sf.EV01_002b = 1"]
;// [eval exp="sf.EV01_002c = 1"]
;// [eval exp="sf.EV01_002d = 1"]
;// [eval exp="sf.EV01_003a = 1"]
;// [eval exp="sf.EV01_003b = 1"]
;// [eval exp="sf.EV01_004a = 1"]
;// [eval exp="sf.EV01_004b = 1"]
;// [eval exp="sf.EV01_005a = 1"]
;// [eval exp="sf.EV01_005b = 1"]
;// [eval exp="sf.EV01_006a = 1"]
;// [eval exp="sf.EV01_006b = 1"]
;// [eval exp="sf.EV01_008a = 1"]
;// [eval exp="sf.EV01_008b = 1"]
;// [eval exp="sf.EV01_009a = 1"]
;// [eval exp="sf.EV01_010a = 1"]
;// [eval exp="sf.EV01_010b = 1"]
;// [eval exp="sf.EV01_011a = 1"]
;// [eval exp="sf.EV01_011b = 1"]
;// [eval exp="sf.EV01_011c = 1"]
;// [eval exp="sf.EV01_013a = 1"]
;// [eval exp="sf.EV01_013b = 1"]
;// [eval exp="sf.EV01_014a = 1"]
;// [eval exp="sf.EV01_014b = 1"]
;// [eval exp="sf.EV01_015a = 1"]
;// [eval exp="sf.EV01_015b = 1"]
;// [eval exp="sf.EV01_015c = 1"]
;// [eval exp="sf.EV01_015d = 1"]
;// [eval exp="sf.EV01_016a = 1"]
;// [eval exp="sf.EV01_016b = 1"]
;// [eval exp="sf.EV01_016c = 1"]
;// [eval exp="sf.EV01_016d = 1"]
;// [eval exp="sf.EV01_017a = 1"]
;// [eval exp="sf.EV01_017b = 1"]
;// [eval exp="sf.EV01_018a = 1"]
;// [eval exp="sf.EV01_019a = 1"]
;// [eval exp="sf.EV01_019b = 1"]
;// [eval exp="sf.EV01_020a = 1"]
;// [eval exp="sf.EV01_020b = 1"]
;// [eval exp="sf.EV02_001a = 1"]
;// [eval exp="sf.EV02_001b = 1"]
;// [eval exp="sf.EV02_002a = 1"]
;// [eval exp="sf.EV02_002b = 1"]
;// [eval exp="sf.EV02_003a = 1"]
;// [eval exp="sf.EV02_003b = 1"]
;// [eval exp="sf.EV02_004a = 1"]
;// [eval exp="sf.EV02_005a = 1"]
;// [eval exp="sf.EV02_006a = 1"]
;// [eval exp="sf.EV02_006b = 1"]
;// [eval exp="sf.EV02_007a = 1"]
;// [eval exp="sf.EV02_008a = 1"]
;// [eval exp="sf.EV02_009a = 1"]
;// [eval exp="sf.EV02_009b = 1"]
;// [eval exp="sf.EV02_011a = 1"]
;// [eval exp="sf.EV02_011b = 1"]
;// [eval exp="sf.EV02_012a = 1"]
;// [eval exp="sf.EV02_012b = 1"]
;// [eval exp="sf.EV02_012c = 1"]
;// [eval exp="sf.EV02_012d = 1"]
;// [eval exp="sf.EV02_013a = 1"]
;// [eval exp="sf.EV02_013b = 1"]
;// [eval exp="sf.EV02_013c = 1"]
;// [eval exp="sf.EV02_014a = 1"]
;// [eval exp="sf.EV02_014b = 1"]
;// [eval exp="sf.EV02_015a = 1"]
;// [eval exp="sf.EV02_015b = 1"]
;// [eval exp="sf.EV02_016a = 1"]
;// [eval exp="sf.EV02_016b = 1"]
;// [eval exp="sf.EV02_016c = 1"]
;// [eval exp="sf.EV02_017a = 1"]
;// [eval exp="sf.EV02_017b = 1"]
;// [eval exp="sf.EV02_017c = 1"]
;// [eval exp="sf.EV02_020a = 1"]
;// [eval exp="sf.EV02_020b = 1"]
;// [eval exp="sf.EV02_021a = 1"]
;// [eval exp="sf.EV02_021b = 1"]
;// [eval exp="sf.EV02_021c = 1"]
;// [eval exp="sf.EV02_021d = 1"]
;// [eval exp="sf.EV03_001a = 1"]
;// [eval exp="sf.EV03_002a = 1"]
;// [eval exp="sf.EV03_003a = 1"]
;// [eval exp="sf.EV03_003b = 1"]
;// [eval exp="sf.EV03_003c = 1"]
;// [eval exp="sf.EV03_004a = 1"]
;// [eval exp="sf.EV03_004b = 1"]
;// [eval exp="sf.EV03_004c = 1"]
;// [eval exp="sf.EV03_005a = 1"]
;// [eval exp="sf.EV03_005b = 1"]
;// [eval exp="sf.EV03_006a = 1"]
;// [eval exp="sf.EV03_007a = 1"]
;// [eval exp="sf.EV03_008a = 1"]
;// [eval exp="sf.EV03_009a = 1"]
;// [eval exp="sf.EV03_010a = 1"]
;// [eval exp="sf.EV03_010b = 1"]
;// [eval exp="sf.EV03_011a = 1"]
;// [eval exp="sf.EV03_011b = 1"]
;// [eval exp="sf.EV04_002a = 1"]
;// [eval exp="sf.EV04_003a = 1"]
;// [eval exp="sf.EV04_004a = 1"]
;// [eval exp="sf.EV04_004b = 1"]
;// [eval exp="sf.EV04_005a = 1"]
;// [eval exp="sf.EV04_006a = 1"]
;// [eval exp="sf.EV04_007a = 1"]
;// [eval exp="sf.EV04_008a = 1"]
;// [eval exp="sf.EV04_008b = 1"]
;// [eval exp="sf.EV04_009a = 1"]
;// [eval exp="sf.EV04_011a = 1"]
;// [eval exp="sf.EV04_012a = 1"]
;// [eval exp="sf.EV04_013a = 1"]
;// [eval exp="sf.EV04_014a = 1"]
;// [eval exp="sf.EV04_015a = 1"]

*cg_init
[eval exp="var bg     = 'cg_bg'  "]
[eval exp="var page   = 1        "]
;// [eval exp="var whois = '*cg_kat'"]
[eval exp="var whois  = '*cg_all'"]
[eval exp="var bankno = 't0'     "]
[call storage="exmode_cg_imp.ks"]


[current  layer=message1 page=back withback=false][er]
[position layer=message1 page=back visible=true left=0 top=0 width=640 height=480]
[layopt   layer=message1 page=back visible=true opacity=255]
[layopt   layer=message2 page=back visible=true opacity=  0]
;// [jump target=*cg_kat_page1]
[jump target=*cg_all_page1]
*cg_reinit

[eval exp="whois = '*cg_all'"]

[locate x= 50 y= 88][button clickse=click clicksebuf=2 graphic="cg_bt_back"      target="*back"]
[locate x=317 y= 42][button clickse=click clicksebuf=2 graphic="cg_bt_kat"       target="*cg_all_page1"  cond="whois != '*cg_kat'"]
;// [image layer=3 page=fore visible=true index=1013000 storage="cg_bt_kat" left=0 top=0 width=0 height=0 cond="page >= 6"]
[locate x=390 y= 42][button clickse=click clicksebuf=2 graphic="cg_bt_mai"       target="*cg_all_page6"  cond="whois != '*cg_mai'"]
[locate x=463 y= 42][button clickse=click clicksebuf=2 graphic="cg_bt_sis"       target="*cg_all_page12" cond="whois != '*cg_sis'"]
[locate x=536 y= 42][button clickse=click clicksebuf=2 graphic="cg_bt_etc"       target="*cg_all_page14" cond="whois != '*cg_etc'"]
[locate x=  0 y=106][button clickse=click clicksebuf=2 graphic="cg_bt_page_back" target=&whois+'_page'+(string)(((page-1+14)%15)+1)]
[locate x=605 y=106][button clickse=click clicksebuf=2 graphic="cg_bt_page_next" target=&whois+'_page'+(string)(((page+1+14)%15)+1)]
[locate x= 35 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page1"     target=&whois+'_page1'  cond="page !=  1"]
[locate x= 73 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page2"     target=&whois+'_page2'  cond="page !=  2"]
[locate x=111 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page3"     target=&whois+'_page3'  cond="page !=  3"]
[locate x=149 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page4"     target=&whois+'_page4'  cond="page !=  4"]
[locate x=187 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page5"     target=&whois+'_page5'  cond="page !=  5"]
[locate x=225 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page6"     target=&whois+'_page6'  cond="page !=  6"]
[locate x=263 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page7"     target=&whois+'_page7'  cond="page !=  7"]
[locate x=301 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page8"     target=&whois+'_page8'  cond="page !=  8"]
[locate x=339 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page9"     target=&whois+'_page9'  cond="page !=  9"]
[locate x=377 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page10"    target=&whois+'_page10' cond="page != 10"]
[locate x=415 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page11"    target=&whois+'_page11' cond="page != 11"]
[locate x=453 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page12"    target=&whois+'_page12' cond="page != 12"]
[locate x=491 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page13"    target=&whois+'_page13' cond="page != 13"]
[locate x=529 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page14"    target=&whois+'_page14' cond="page != 14"]
[locate x=567 y=120][button clickse=click clicksebuf=2 graphic="cg_bt_page15"    target=&whois+'_page15' cond="page != 15"]
[loadbg storage=&bg]
[call target=*cg_countdiff]

[locklink2]
[ud time=500]
*cg_reinit_end
[unlocklink2]
[current  layer=message1 withback=false]
[s]

*cg_all_page1
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 1        "]
[eval exp="bankno = 't0'     "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t0" target=*showcg exp="bankno = 't0'" cond="sf[f.cg_all.t0] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t1" target=*showcg exp="bankno = 't1'" cond="sf[f.cg_all.t1] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t2" target=*showcg exp="bankno = 't2'" cond="sf[f.cg_all.t2] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t3" target=*showcg exp="bankno = 't3'" cond="sf[f.cg_all.t3] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t4" target=*showcg exp="bankno = 't4'" cond="sf[f.cg_all.t4] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t5" target=*showcg exp="bankno = 't5'" cond="sf[f.cg_all.t5] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t6" target=*showcg exp="bankno = 't6'" cond="sf[f.cg_all.t6] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t7" target=*showcg exp="bankno = 't7'" cond="sf[f.cg_all.t7] == 1"]
[jump target=*cg_reinit]

*cg_all_page2
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 2        "]
[eval exp="bankno = 't8'     "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t8"  target=*showcg exp="bankno = 't8'"  cond="sf[f.cg_all.t8 ] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t9"  target=*showcg exp="bankno = 't9'"  cond="sf[f.cg_all.t9 ] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t10" target=*showcg exp="bankno = 't10'" cond="sf[f.cg_all.t10] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t11" target=*showcg exp="bankno = 't11'" cond="sf[f.cg_all.t11] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t12" target=*showcg exp="bankno = 't12'" cond="sf[f.cg_all.t12] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t13" target=*showcg exp="bankno = 't13'" cond="sf[f.cg_all.t13] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t14" target=*showcg exp="bankno = 't14'" cond="sf[f.cg_all.t14] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t15" target=*showcg exp="bankno = 't15'" cond="sf[f.cg_all.t15] == 1"]
[jump target=*cg_reinit]

*cg_all_page3
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 3        "]
[eval exp="bankno = 't16'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t16" target=*showcg exp="bankno = 't16'" cond="sf[f.cg_all.t16] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t17" target=*showcg exp="bankno = 't17'" cond="sf[f.cg_all.t17] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t18" target=*showcg exp="bankno = 't18'" cond="sf[f.cg_all.t18] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t19" target=*showcg exp="bankno = 't19'" cond="sf[f.cg_all.t19] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t20" target=*showcg exp="bankno = 't20'" cond="sf[f.cg_all.t20] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t21" target=*showcg exp="bankno = 't21'" cond="sf[f.cg_all.t21] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t22" target=*showcg exp="bankno = 't22'" cond="sf[f.cg_all.t22] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t23" target=*showcg exp="bankno = 't23'" cond="sf[f.cg_all.t23] == 1"]
[jump target=*cg_reinit]

*cg_all_page4
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 4        "]
[eval exp="bankno = 't24'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t24" target=*showcg exp="bankno = 't24'" cond="sf[f.cg_all.t24] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t25" target=*showcg exp="bankno = 't25'" cond="sf[f.cg_all.t25] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t26" target=*showcg exp="bankno = 't26'" cond="sf[f.cg_all.t26] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t27" target=*showcg exp="bankno = 't27'" cond="sf[f.cg_all.t27] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t28" target=*showcg exp="bankno = 't28'" cond="sf[f.cg_all.t28] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t29" target=*showcg exp="bankno = 't29'" cond="sf[f.cg_all.t29] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t30" target=*showcg exp="bankno = 't30'" cond="sf[f.cg_all.t30] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t31" target=*showcg exp="bankno = 't31'" cond="sf[f.cg_all.t31] == 1"]
[jump target=*cg_reinit]

*cg_all_page5
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 5        "]
[eval exp="bankno = 't32'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t32" target=*showcg exp="bankno = 't32'" cond="sf[f.cg_all.t32] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t33" target=*showcg exp="bankno = 't33'" cond="sf[f.cg_all.t33] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t34" target=*showcg exp="bankno = 't34'" cond="sf[f.cg_all.t34] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t35" target=*showcg exp="bankno = 't35'" cond="sf[f.cg_all.t35] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t36" target=*showcg exp="bankno = 't36'" cond="sf[f.cg_all.t36] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t37" target=*showcg exp="bankno = 't37'" cond="sf[f.cg_all.t37] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t38" target=*showcg exp="bankno = 't38'" cond="sf[f.cg_all.t38] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t39" target=*showcg exp="bankno = 't39'" cond="sf[f.cg_all.t39] == 1"]
[jump target=*cg_reinit]

*cg_all_page6
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 6        "]
[eval exp="bankno = 't40'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t40" target=*showcg exp="bankno = 't40'" cond="sf[f.cg_all.t40] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t41" target=*showcg exp="bankno = 't41'" cond="sf[f.cg_all.t41] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t42" target=*showcg exp="bankno = 't42'" cond="sf[f.cg_all.t42] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t43" target=*showcg exp="bankno = 't43'" cond="sf[f.cg_all.t43] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t44" target=*showcg exp="bankno = 't44'" cond="sf[f.cg_all.t44] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t45" target=*showcg exp="bankno = 't45'" cond="sf[f.cg_all.t45] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t46" target=*showcg exp="bankno = 't46'" cond="sf[f.cg_all.t46] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t47" target=*showcg exp="bankno = 't47'" cond="sf[f.cg_all.t47] == 1"]
[jump target=*cg_reinit]

*cg_all_page7
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 7        "]
[eval exp="bankno = 't48'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t48" target=*showcg exp="bankno = 't48'" cond="sf[f.cg_all.t48] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t49" target=*showcg exp="bankno = 't49'" cond="sf[f.cg_all.t49] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t50" target=*showcg exp="bankno = 't50'" cond="sf[f.cg_all.t50] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t51" target=*showcg exp="bankno = 't51'" cond="sf[f.cg_all.t51] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t52" target=*showcg exp="bankno = 't52'" cond="sf[f.cg_all.t52] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t53" target=*showcg exp="bankno = 't53'" cond="sf[f.cg_all.t53] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t54" target=*showcg exp="bankno = 't54'" cond="sf[f.cg_all.t54] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t55" target=*showcg exp="bankno = 't55'" cond="sf[f.cg_all.t55] == 1"]
[jump target=*cg_reinit]

*cg_all_page8
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 8        "]
[eval exp="bankno = 't56'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t56" target=*showcg exp="bankno = 't56'" cond="sf[f.cg_all.t56] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t57" target=*showcg exp="bankno = 't57'" cond="sf[f.cg_all.t57] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t58" target=*showcg exp="bankno = 't58'" cond="sf[f.cg_all.t58] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t59" target=*showcg exp="bankno = 't59'" cond="sf[f.cg_all.t59] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t60" target=*showcg exp="bankno = 't60'" cond="sf[f.cg_all.t60] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t61" target=*showcg exp="bankno = 't61'" cond="sf[f.cg_all.t61] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t62" target=*showcg exp="bankno = 't62'" cond="sf[f.cg_all.t62] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t63" target=*showcg exp="bankno = 't63'" cond="sf[f.cg_all.t63] == 1"]
[jump target=*cg_reinit]

*cg_all_page9
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 9        "]
[eval exp="bankno = 't64'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t64" target=*showcg exp="bankno = 't64'" cond="sf[f.cg_all.t64] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t65" target=*showcg exp="bankno = 't65'" cond="sf[f.cg_all.t65] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t66" target=*showcg exp="bankno = 't66'" cond="sf[f.cg_all.t66] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t67" target=*showcg exp="bankno = 't67'" cond="sf[f.cg_all.t67] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t68" target=*showcg exp="bankno = 't68'" cond="sf[f.cg_all.t68] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t69" target=*showcg exp="bankno = 't69'" cond="sf[f.cg_all.t69] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t70" target=*showcg exp="bankno = 't70'" cond="sf[f.cg_all.t70] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t71" target=*showcg exp="bankno = 't71'" cond="sf[f.cg_all.t71] == 1"]
[jump target=*cg_reinit]

*cg_all_page10
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 10       "]
[eval exp="bankno = 't72'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t72" target=*showcg exp="bankno = 't72'" cond="sf[f.cg_all.t72] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t73" target=*showcg exp="bankno = 't73'" cond="sf[f.cg_all.t73] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t74" target=*showcg exp="bankno = 't74'" cond="sf[f.cg_all.t74] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t75" target=*showcg exp="bankno = 't75'" cond="sf[f.cg_all.t75] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t76" target=*showcg exp="bankno = 't76'" cond="sf[f.cg_all.t76] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t77" target=*showcg exp="bankno = 't77'" cond="sf[f.cg_all.t77] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t78" target=*showcg exp="bankno = 't78'" cond="sf[f.cg_all.t78] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t79" target=*showcg exp="bankno = 't79'" cond="sf[f.cg_all.t79] == 1"]
[jump target=*cg_reinit]

*cg_all_page11
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 11       "]
[eval exp="bankno = 't80'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t80" target=*showcg exp="bankno = 't80'" cond="sf[f.cg_all.t80] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t81" target=*showcg exp="bankno = 't81'" cond="sf[f.cg_all.t81] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t82" target=*showcg exp="bankno = 't82'" cond="sf[f.cg_all.t82] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t83" target=*showcg exp="bankno = 't83'" cond="sf[f.cg_all.t83] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t84" target=*showcg exp="bankno = 't84'" cond="sf[f.cg_all.t84] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t85" target=*showcg exp="bankno = 't85'" cond="sf[f.cg_all.t85] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t86" target=*showcg exp="bankno = 't86'" cond="sf[f.cg_all.t86] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t87" target=*showcg exp="bankno = 't87'" cond="sf[f.cg_all.t87] == 1"]
[jump target=*cg_reinit]

*cg_all_page12
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 12       "]
[eval exp="bankno = 't88'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t88" target=*showcg exp="bankno = 't88'" cond="sf[f.cg_all.t88] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t89" target=*showcg exp="bankno = 't89'" cond="sf[f.cg_all.t89] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t90" target=*showcg exp="bankno = 't90'" cond="sf[f.cg_all.t90] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t91" target=*showcg exp="bankno = 't91'" cond="sf[f.cg_all.t91] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t92" target=*showcg exp="bankno = 't92'" cond="sf[f.cg_all.t92] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t93" target=*showcg exp="bankno = 't93'" cond="sf[f.cg_all.t93] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t94" target=*showcg exp="bankno = 't94'" cond="sf[f.cg_all.t94] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t95" target=*showcg exp="bankno = 't95'" cond="sf[f.cg_all.t95] == 1"]
[jump target=*cg_reinit]

*cg_all_page13
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 13       "]
[eval exp="bankno = 't96'    "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t96"  target=*showcg exp="bankno = 't96'"  cond="sf[f.cg_all.t96 ] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t97"  target=*showcg exp="bankno = 't97'"  cond="sf[f.cg_all.t97 ] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t98"  target=*showcg exp="bankno = 't98'"  cond="sf[f.cg_all.t98 ] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t99"  target=*showcg exp="bankno = 't99'"  cond="sf[f.cg_all.t99 ] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t100" target=*showcg exp="bankno = 't100'" cond="sf[f.cg_all.t100] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t101" target=*showcg exp="bankno = 't101'" cond="sf[f.cg_all.t101] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t102" target=*showcg exp="bankno = 't102'" cond="sf[f.cg_all.t102] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t103" target=*showcg exp="bankno = 't103'" cond="sf[f.cg_all.t103] == 1"]
[jump target=*cg_reinit]

*cg_all_page14
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 14       "]
[eval exp="bankno = 't104'   "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t104" target=*showcg exp="bankno = 't104'" cond="sf[f.cg_all.t104] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t105" target=*showcg exp="bankno = 't105'" cond="sf[f.cg_all.t105] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t106" target=*showcg exp="bankno = 't106'" cond="sf[f.cg_all.t106] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t107" target=*showcg exp="bankno = 't107'" cond="sf[f.cg_all.t107] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t108" target=*showcg exp="bankno = 't108'" cond="sf[f.cg_all.t108] == 1"]
[locate x=394 y=171][button graphic="&'cg'+f.cg_all.t109" target=*showcg exp="bankno = 't109'" cond="sf[f.cg_all.t109] == 1"]
[locate x=466 y=171][button graphic="&'cg'+f.cg_all.t110" target=*showcg exp="bankno = 't110'" cond="sf[f.cg_all.t110] == 1"]
[locate x=538 y=171][button graphic="&'cg'+f.cg_all.t111" target=*showcg exp="bankno = 't111'" cond="sf[f.cg_all.t111] == 1"]
[jump target=*cg_reinit]

*cg_all_page15
[eval exp="whois  = '*cg_all'"]
[eval exp="bg     = 'cg_bg'  "]
[eval exp="page   = 15       "]
[eval exp="bankno = 't112'   "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'cg'+f.cg_all.t112" target=*showcg exp="bankno = 't112'" cond="sf[f.cg_all.t112] == 1"]
[locate x=106 y=171][button graphic="&'cg'+f.cg_all.t113" target=*showcg exp="bankno = 't113'" cond="sf[f.cg_all.t113] == 1"]
[locate x=178 y=171][button graphic="&'cg'+f.cg_all.t114" target=*showcg exp="bankno = 't114'" cond="sf[f.cg_all.t114] == 1"]
[locate x=250 y=171][button graphic="&'cg'+f.cg_all.t115" target=*showcg exp="bankno = 't115'" cond="sf[f.cg_all.t115] == 1"]
[locate x=322 y=171][button graphic="&'cg'+f.cg_all.t116" target=*showcg exp="bankno = 't116'" cond="sf[f.cg_all.t116] == 1"]
[locate x=394 y=171][button graphic="cg_thumb_mask"]
[locate x=466 y=171][button graphic="cg_thumb_mask"]
[locate x=538 y=171][button graphic="cg_thumb_mask"]
[jump target=*cg_reinit]

*cg_countdiff
[eval exp="var getstr   = whois.substr(1,6)"]
[eval exp="var getno    = ''               "]
[eval exp="var getmax   = ''               "]
[eval exp="var getcount = ''               "]
[eval exp="var getdiff  = 0                "]
;// f[getstr][getno]
[eval exp="var ctbank   = 0                "]
[eval exp="var ctdiff   = 0                "]

*cg_countdiff_loop
[eval exp="getno   = 't'+(string)((page-1)*8+ctbank)      "]
[eval exp="getmax  = 't'+(string)((page-1)*8+ctbank)+'max'"]
[eval exp="ctdiff  = 0                                    "]
[eval exp="getdiff = 0                                    "]

;// ループ
*cg_countdiff_count
[eval exp="getdiff += sf[f[getstr][getno+'cg'+(string)ctdiff]]"]
*cg_countdiff_count_end
[eval exp="ctdiff += 1"]
[jump target=*cg_countdiff_count cond="ctdiff<f[getstr][getmax]"]
;// ループここまでです

*cg_countdiff_pimage
;// [pimage storage="&'cg_bt_'+(string)getdiff" layer=base page=back dx="&(147+141*(int)(ctbank%4))" dy="&(327+114*(int)(ctbank/4))"]
;// [pimage storage="cg_bt_slash" layer=base page=back dx="&(147+141*(int)(ctbank%4)+6)" dy="&(327+114*(int)(ctbank/4))"]
;// [pimage storage="&'cg_bt_'+f[getstr][getmax]" layer=base page=back dx="&(147+141*(int)(ctbank%4)+6*2)" dy="&(327+114*(int)(ctbank/4))"]
[eval exp="ctbank += 1"]
[jump target=*cg_countdiff_loop cond="ctbank<8&&(page-1)*8+ctbank<f[getstr]['max']"]
[return]

*showcg
[eval exp="var ctshow = 0"]

*showcg_loop
;■↓項目を選択した時のＳＥ　ボタン側には記述しない事
[seplay storage='click']
[image layer=3 page=back visible=true index=1013000 storage="&f[getstr][bankno+'cg'+(string)ctshow]" cond="sf[f[getstr][bankno+'cg'+(string)ctshow]] == 1"]
[ud time=1000 cond="sf[f[getstr][bankno+'cg'+(string)ctshow]] == 1"]
[waittrig name='click' cond="sf[f[getstr][bankno+'cg'+(string)ctshow]] == 1"]
[eval exp="ctshow += 1"]

*showcg_end
[jump target=*showcg_loop cond="ctshow<f[getstr][bankno+'max']"]
[seplay storage='click']
[layopt layer=3 page=back visible=false]
[ud time=1000]
[jump target=*cg_reinit_end]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■　回想モード
;■■■■■□□□□□■■■■■□□□□□■■■■■
*mem
;// [eval exp="sf.all_0 = 1"]
*mem_init
[eval exp="var bg     = 'mem_bg'  "]
[eval exp="var page   = 1         "]
[eval exp="var whois  = '*mem_all'"]
[eval exp="var bankno = 'kat_0'   "]
[call storage="exmode_mem_imp.ks"]

*mem_return
[current  layer=message1 page=back withback=false][er]
[position layer=message1 page=back visible=true left=0 top=0 width=640 height=480]
[layopt   layer=message1 page=back visible=true opacity=255]
[layopt   layer=message2 page=back visible=true opacity=0]
[jump target="&whois+'_page'+(string)page"]

*mem_reinit
[locate x= 50 y= 88][button clickse=click clicksebuf=2 graphic="mem_bt_back"      target="*back"]
[locate x=317 y= 42][button clickse=click clicksebuf=2 graphic="mem_bt_kat"       target="*mem_all_page1" cond="whois != '*mem_kat'"]
;// [image layer=3 page=fore visible=true index=1013000 storage="mem_bt_kat" left=0 top=0 width=0 height=0 cond="page >= 6"]
[locate x=390 y= 42][button clickse=click clicksebuf=2 graphic="mem_bt_mai"       target="*mem_all_page3" cond="whois != '*mem_mai'"]
[locate x=463 y= 42][button clickse=click clicksebuf=2 graphic="mem_bt_sis"       target="*mem_all_page5" cond="whois != '*mem_sis'"]
[locate x=536 y= 42][button clickse=click clicksebuf=2 graphic="mem_bt_etc"       target="*mem_all_page5" cond="whois != '*mem_etc'"]
[locate x=  0 y=106][button clickse=click clicksebuf=2 graphic="mem_bt_page_back" target=&whois+'_page'+(string)(((page-1+5)%6)+1)]
[locate x=605 y=106][button clickse=click clicksebuf=2 graphic="mem_bt_page_next" target=&whois+'_page'+(string)(((page+1+5)%6)+1)]
[locate x= 35 y=120][button clickse=click clicksebuf=2 graphic="mem_bt_page1"     target=&whois+'_page1'  cond="page != 1"]
[locate x= 73 y=120][button clickse=click clicksebuf=2 graphic="mem_bt_page2"     target=&whois+'_page2'  cond="page != 2"]
[locate x=111 y=120][button clickse=click clicksebuf=2 graphic="mem_bt_page3"     target=&whois+'_page3'  cond="page != 3"]
[locate x=149 y=120][button clickse=click clicksebuf=2 graphic="mem_bt_page4"     target=&whois+'_page4'  cond="page != 4"]
[locate x=187 y=120][button clickse=click clicksebuf=2 graphic="mem_bt_page5"     target=&whois+'_page5'  cond="page != 5"]
[locate x=225 y=120][button clickse=click clicksebuf=2 graphic="mem_bt_page6"     target=&whois+'_page6'  cond="page != 6"]
;// [locate x=263 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page7 target=&whois+'_page7' cond="page != 7"]
;// [locate x=301 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page8 target=&whois+'_page8' cond="page != 8"]
;// [locate x=339 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page9 target=&whois+'_page9' cond="page != 9"]
;// [locate x=377 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page10 target=&whois+'_page10' cond="page != 10"]
;// [locate x=415 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page11 target=&whois+'_page11' cond="page != 11"]
;// [locate x=453 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page12 target=&whois+'_page12' cond="page != 12"]
;// [locate x=491 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page13 target=&whois+'_page13' cond="page != 13"]
;// [locate x=529 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page14 target=&whois+'_page14' cond="page != 14"]
;// [locate x=567 y=120][button clickse=click clicksebuf=2 graphic=mem_bt_page15 target=&whois+'_page15' cond="page != 15"]
[loadbg storage=&bg]

[locklink2]
[ud time=500]
[unlocklink2]
[current  layer=message1 withback=false]
[s]

*mem_all_page1
[eval exp="whois  = '*mem_all'"]
[eval exp="bg     = 'mem_bg'  "]
[eval exp="page   = 1         "]
[eval exp="bankno = 't0'      "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'mem'+f.mem_all.t0" target=*showmemory exp="bankno = 't0'" cond="sf['all_0'] == 1"]
[locate x=106 y=171][button graphic="&'mem'+f.mem_all.t1" target=*showmemory exp="bankno = 't1'" cond="sf['all_1'] == 1"]
[locate x=178 y=171][button graphic="&'mem'+f.mem_all.t2" target=*showmemory exp="bankno = 't2'" cond="sf['all_2'] == 1"]
[locate x=250 y=171][button graphic="&'mem'+f.mem_all.t3" target=*showmemory exp="bankno = 't3'" cond="sf['all_3'] == 1"]
[locate x=322 y=171][button graphic="&'mem'+f.mem_all.t4" target=*showmemory exp="bankno = 't4'" cond="sf['all_4'] == 1"]
[locate x=394 y=171][button graphic="&'mem'+f.mem_all.t5" target=*showmemory exp="bankno = 't5'" cond="sf['all_5'] == 1"]
[locate x=466 y=171][button graphic="&'mem'+f.mem_all.t6" target=*showmemory exp="bankno = 't6'" cond="sf['all_6'] == 1"]
[locate x=538 y=171][button graphic="&'mem'+f.mem_all.t7" target=*showmemory exp="bankno = 't7'" cond="sf['all_7'] == 1"]
[jump target=*mem_reinit]

*mem_all_page2
[eval exp="whois  = '*mem_all'"]
[eval exp="bg     = 'mem_bg'  "]
[eval exp="page   = 2         "]
[eval exp="bankno = 't8'      "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'mem'+f.mem_all.t8"  target=*showmemory exp="bankno = 't8'"  cond="sf['all_8' ] == 1"]
[locate x=106 y=171][button graphic="&'mem'+f.mem_all.t9"  target=*showmemory exp="bankno = 't9'"  cond="sf['all_9' ] == 1"]
[locate x=178 y=171][button graphic="&'mem'+f.mem_all.t10" target=*showmemory exp="bankno = 't10'" cond="sf['all_10'] == 1"]
[locate x=250 y=171][button graphic="&'mem'+f.mem_all.t11" target=*showmemory exp="bankno = 't11'" cond="sf['all_11'] == 1"]
[locate x=322 y=171][button graphic="&'mem'+f.mem_all.t12" target=*showmemory exp="bankno = 't12'" cond="sf['all_12'] == 1"]
[locate x=394 y=171][button graphic="&'mem'+f.mem_all.t13" target=*showmemory exp="bankno = 't13'" cond="sf['all_13'] == 1"]
[locate x=466 y=171][button graphic="&'mem'+f.mem_all.t14" target=*showmemory exp="bankno = 't14'" cond="sf['all_14'] == 1"]
[locate x=538 y=171][button graphic="&'mem'+f.mem_all.t15" target=*showmemory exp="bankno = 't15'" cond="sf['all_15'] == 1"]
[jump target=*mem_reinit]

*mem_all_page3
[eval exp="whois  = '*mem_all'"]
[eval exp="bg     = 'mem_bg'  "]
[eval exp="page   = 3         "]
[eval exp="bankno = 't16'     "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'mem'+f.mem_all.t16" target=*showmemory exp="bankno = 't16'" cond="sf['all_16'] == 1"]
[locate x=106 y=171][button graphic="&'mem'+f.mem_all.t17" target=*showmemory exp="bankno = 't17'" cond="sf['all_17'] == 1"]
[locate x=178 y=171][button graphic="&'mem'+f.mem_all.t18" target=*showmemory exp="bankno = 't18'" cond="sf['all_18'] == 1"]
[locate x=250 y=171][button graphic="&'mem'+f.mem_all.t19" target=*showmemory exp="bankno = 't19'" cond="sf['all_19'] == 1"]
[locate x=322 y=171][button graphic="&'mem'+f.mem_all.t20" target=*showmemory exp="bankno = 't20'" cond="sf['all_20'] == 1"]
[locate x=394 y=171][button graphic="&'mem'+f.mem_all.t21" target=*showmemory exp="bankno = 't21'" cond="sf['all_21'] == 1"]
[locate x=466 y=171][button graphic="&'mem'+f.mem_all.t22" target=*showmemory exp="bankno = 't22'" cond="sf['all_22'] == 1"]
[locate x=538 y=171][button graphic="&'mem'+f.mem_all.t23" target=*showmemory exp="bankno = 't23'" cond="sf['all_23'] == 1"]
[jump target=*mem_reinit]


*mem_all_page4
[eval exp="whois  = '*mem_all'"]
[eval exp="bg     = 'mem_bg'  "]
[eval exp="page   = 4         "]
[eval exp="bankno = 't24'     "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'mem'+f.mem_all.t24" target=*showmemory exp="bankno = 't24'" cond="sf['all_24'] == 1"]
[locate x=106 y=171][button graphic="&'mem'+f.mem_all.t25" target=*showmemory exp="bankno = 't25'" cond="sf['all_25'] == 1"]
[locate x=178 y=171][button graphic="&'mem'+f.mem_all.t26" target=*showmemory exp="bankno = 't26'" cond="sf['all_26'] == 1"]
[locate x=250 y=171][button graphic="&'mem'+f.mem_all.t27" target=*showmemory exp="bankno = 't27'" cond="sf['all_27'] == 1"]
[locate x=322 y=171][button graphic="&'mem'+f.mem_all.t28" target=*showmemory exp="bankno = 't28'" cond="sf['all_28'] == 1"]
[locate x=394 y=171][button graphic="&'mem'+f.mem_all.t29" target=*showmemory exp="bankno = 't29'" cond="sf['all_29'] == 1"]
[locate x=466 y=171][button graphic="&'mem'+f.mem_all.t30" target=*showmemory exp="bankno = 't30'" cond="sf['all_30'] == 1"]
[locate x=538 y=171][button graphic="&'mem'+f.mem_all.t31" target=*showmemory exp="bankno = 't31'" cond="sf['all_31'] == 1"]
[jump target=*mem_reinit]


*mem_all_page5
[eval exp="whois  = '*mem_all'"]
[eval exp="bg     = 'mem_bg'  "]
[eval exp="page   = 5         "]
[eval exp="bankno = 't32'     "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'mem'+f.mem_all.t32" target=*showmemory exp="bankno = 't32'" cond="sf['all_32'] == 1"]
[locate x=106 y=171][button graphic="&'mem'+f.mem_all.t33" target=*showmemory exp="bankno = 't33'" cond="sf['all_33'] == 1"]
[locate x=178 y=171][button graphic="&'mem'+f.mem_all.t34" target=*showmemory exp="bankno = 't34'" cond="sf['all_34'] == 1"]
[locate x=250 y=171][button graphic="&'mem'+f.mem_all.t35" target=*showmemory exp="bankno = 't35'" cond="sf['all_35'] == 1"]
[locate x=322 y=171][button graphic="&'mem'+f.mem_all.t36" target=*showmemory exp="bankno = 't36'" cond="sf['all_36'] == 1"]
[locate x=394 y=171][button graphic="&'mem'+f.mem_all.t37" target=*showmemory exp="bankno = 't37'" cond="sf['all_37'] == 1"]
[locate x=466 y=171][button graphic="&'mem'+f.mem_all.t38" target=*showmemory exp="bankno = 't38'" cond="sf['all_38'] == 1"]
[locate x=538 y=171][button graphic="&'mem'+f.mem_all.t39" target=*showmemory exp="bankno = 't39'" cond="sf['all_39'] == 1"]
[jump target=*mem_reinit]


*mem_all_page6
[eval exp="whois  = '*mem_all'"]
[eval exp="bg     = 'mem_bg'  "]
[eval exp="page   = 6         "]
[eval exp="bankno = 't40'     "]
[current  layer=message1 page=back withback=false][er]
[locate x= 34 y=171][button graphic="&'mem'+f.mem_all.t40" target=*showmemory exp="bankno = 't40'" cond="sf['all_40'] == 1"]
[locate x=106 y=171][button graphic="&'mem'+f.mem_all.t41" target=*showmemory exp="bankno = 't41'" cond="sf['all_41'] == 1"]
[locate x=178 y=171][button graphic="mem_thumb_mask"]
[locate x=250 y=171][button graphic="mem_thumb_mask"]
[locate x=322 y=171][button graphic="mem_thumb_mask"]
[locate x=394 y=171][button graphic="mem_thumb_mask"]
[locate x=466 y=171][button graphic="mem_thumb_mask"]
[locate x=538 y=171][button graphic="mem_thumb_mask"]
[jump target=*mem_reinit]

*showmemory
;■↓項目を選択した時のＳＥ　ボタン側には記述しない事
[seplay storage='click']

[eval exp="var getstr   =  whois.substr(1,7)"]
[eval exp="var getno    = bankno.substr(1,2)"]
[eval exp="var getlabel =  whois.substr(5,3)"]
[layopt layer=3 page=back visible=false]
;■ イベント絵表示
[loadev storage=black index=1500000]
[layopt layer=message1 page=back visible=false]
[ud time=1000]
;// [layopt layer=&sf.lay_ev0 index="&(int)sf.lay_ev0*1000"]
;// [eval exp="kag.menu.remove(kag.SaveMenu)"]
;// [eval exp="kag.menu.remove(kag.LoadMenu)"]
;// [eval exp="kag.menu.insert(BackFromMemory = new KAGMenuItem(this, '回想から戻る(&B)', 0, kag.BackFromMemory, true),2)"]
;// [eval exp="BackFromMemory.enabled = true"]
;// call
;// [return cond="f.inmemory == 1"]

[eval exp="f.labelinmemory = '*'+getlabel+'_'+getno"]
[eval exp="f.inmemory = 1"]
[eval exp="f.getno    = (int)getno"]
[cm]
[setwindow]

;■ イベント絵消去
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■回想前処理　開始
;■バックログに書き込み禁止解除
[history output=true enabled=true]
;■右クリック禁止解除
[rclick enabled=true]

;□オートモードを　解除
[cancelautomode]

;□スキップモードを　解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;■ＳＡＶＥ＆ＬＯＡＤの状態　保存
[eval exp="var baksaveenable = kag.SaveMenu.enabled"]
[eval exp="var bakloadenable = kag.LoadMenu.enabled"]

;■ＳＡＶＥ＆ＬＯＡＤ状態設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;■ＢＧＭ設定
[bgmstop]

;■回想前処理　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■

*|回想中
[call storage="&f[getstr][bankno+'scr']+'.ks'" target="&'*'+getlabel+'_'+getno"]

;■■■■■□□□□□■■■■■□□□□□■■■■■
;■回想後処理　開始

;■ＢＧＭ設定
[bgmstop]

;□ＳＡＶＥ＆ＬＯＡＤの状態　復帰
[eval exp="kag.SaveMenu.enabled = baksaveenable"]
[eval exp="kag.LoadMenu.enabled = bakloadenable"]

;■右クリック禁止解除
[rclick enabled=false]
;■バックログに書き込み禁止
[history output=false enabled=false]
;■回想前処理　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■

[eval exp="f.inmemory = 0"]
[eval exp="f.getno    = 0"]

;// [eval exp="kag.menu.remove(BackFromMemory)"]
;// @iscript
;// 
;// kag.menu.insert(kag.SaveMenu = new KAGMenuItem(kag, "セーブ(&S)", 0, kag.CallSaveMenu, false),2);
;// kag.SaveMenu.autoEnable = true;
;// kag.SaveMenu.enabled = false;
;// 
;// kag.menu.insert(kag.LoadMenu = new KAGMenuItem(kag, "ロード(&L)", 0, kag.CallLoadMenu, false),3);
;// kag.LoadMenu.autoEnable = true;
;// kag.LoadMenu.enabled = false;
;// @endscript
[layopt layer=message0 visible=false page=back]
;■ イベント絵消去（保険）
[clearimage layer1=&sf.lay_ev0]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[sestop buf=5]
[sestop buf=0]
[bgmstop time=1000]
[jump target=*mem_return]

*back
[bgmstop time=500]
[layopt layer=message1 page=back visible=true opacity=0]
[layopt layer=3 visible=false page=back]

*return
[return]


