;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土

*start

[bgmstop time=1000]
[history output=false enabled=false]
[eval exp="kag.LoadMenu.enabled = false"]
[current  layer=message2 page=back withback=false][er]
[position layer=message2 page=back visible=true left=0 top=0 width=640 height=480]
[layopt   layer=message2 page=back visible=true opacity=255]
[layopt   layer=message3 page=back visible=true opacity=0]

[locate x=242 y=209][button clickse=click clicksebuf=2 graphic="ex_bt_bgm"  target="*bgm"]
[locate x=242 y=267][button clickse=click clicksebuf=2 graphic="ex_bt_cg"   target="*cg"]
[locate x=242 y=325][button clickse=click clicksebuf=2 graphic="ex_bt_mem"  target="*mem"]
[locate x=242 y=383][button clickse=click clicksebuf=2 graphic="ex_bt_back" target="*back"]
[loadbg storage=ex_bg]

[locklink2]
[ud time=500]

[unlocklink2]
[s]

*bgm
[call storage=exmode_dmy.ks target=*bgm]
[jump target=*start]

*cg
[call storage=exmode_dmy.ks target=*cg]
[jump target=*start]
*mem
[call storage=exmode_dmy.ks target=*mem]
[jump target=*start]

*back
*return

[return]


