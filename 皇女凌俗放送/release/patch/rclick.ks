;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■Ｒクリックメニュー　　最終更新　02/21　更新者　すずき
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土

*rclick

;□スキップモードを　解除
[if exp="kag.clickWaiting==false"]
	[eval exp="kag.onPrimaryClick()"]
[endif]

;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

;□現在表示されている画像が、モザイク画像の場合、セーブデータ用のサムネイル画像を準備
[nowait]
;[if exp="Storages.isExistentStorage(System.exePath+'/data/others/'+'x'+f['nowbg']+'.tlg')"]ちちくりナース２４時
[if exp="Storages.isExistentStorage(System.exePath+'/data/bgimage/'+'x'+f['nowbg']+'.bmp')"]
	[eval exp="var blackcircle = 'x%s'.sprintf(f.nowbg)"]
	[image storage=&blackcircle layer=3 top=0 left=0 visible=true index=3000]
[endif]
[locksnapshot]
[layopt layer=3 visible=false]
[endnowait]

;□履歴書き込み　禁止
[history output=false]

;□右クリックメニュー　モードフラグＯＮ
[eval exp="f['inmenu']=1"]


*menu_init
;□右クリックメニュー　再度、右クリックした場合
[rclick jump=true storage="rclick.ks" target="*exit" enabled=true]

;□右クリックメニュー　画面設定
[current  layer=message10 page=fore][er]
[position layer=message10 page=fore visible=true frame=m_bg opacity=255 left=520 top=0 width=640 height=480 marginl=0 margint=0 marginr=0 marginb=0]
[layopt   layer=message10 page=fore visible=true]

[nowait]
[locate x=0 y=  1][button clickse=click clicksebuf=4 graphic="m_bt_exit"   target=*shutdown enterse=click]
[locate x=0 y= 21][button clickse=click clicksebuf=4 graphic="m_bt_title"  target=*title    enterse=click]
[locate x=0 y= 41][button clickse=click clicksebuf=4 graphic="m_bt_hist"   target=*record   enterse=click]
[locate x=0 y= 61][button clickse=click clicksebuf=4 graphic="m_bt_winoff" target=*hidemess enterse=click]
[locate x=0 y=121][button clickse=click clicksebuf=4 graphic="m_bt_back"   target=*exit     enterse=click]

;■回想モード中以外なら許可
[if exp="f.inmemory != 1"]
[locate x=0 y= 81][button clickse=click clicksebuf=4 graphic="m_bt_load"   target=*load     enterse=click]
[locate x=0 y=101][button clickse=click clicksebuf=4 graphic="m_bt_save"   target=*save     enterse=click]
[endif]
;■回想モード中なら許可
[if exp="f.inmemory == 1"]
[locate x=0 y= 81][button clickse=click clicksebuf=4 graphic="m_bt_xload"   target=*load     enterse=click]
[locate x=0 y=101][button clickse=click clicksebuf=4 graphic="m_bt_xsave"   target=*save     enterse=click]
[endif]
[endnowait]
[s]

*save
;// [layopt layer=12 page=fore visible=false]
[if exp="f.inmemory != 1"][call storage="SaveMenu.ks"][endif]
[jump storage="rclick.ks" target=*menu_init]

*load
;// [layopt layer=12 page=fore visible=false]
[if exp="f.inmemory != 1"][call storage="LoadMenu.ks"][endif]
[jump storage="rclick.ks" target=*menu_init]

*record
;// [layopt layer=12 page=fore visible=false]
;// [layopt layer=11 page=fore visible=false]
[showhistory]
;// [layopt layer=11 page=fore visible=true]
[jump storage="rclick.ks" target=*menu_init]

*title
;// [layopt layer=12 page=fore visible=false]
[gotostart ask=true]
[jump storage="rclick.ks" target=*menu_init]

*shutdown
;// [layopt layer=12 page=fore visible=false]
[emb exp="kag.close()"]
[jump storage="rclick.ks" target=*menu_init]

*hidemess
;↓吉里吉里システムに用意されているもの
;[hidemessage]
[layopt layer=message10 page=fore visible=false]
;// [layopt layer=12 page=fore visible=false]
;// [layopt layer=11 page=fore opacity=0]
[rclick jump=true storage="rclick.ks" target="*exit_02" enabled=true]
[mesw_off]
[p]
*exit_02
;// [layopt layer=11 page=fore opacity=255]
[jump storage="rclick.ks" target=*exit]

*exit
;// [layopt layer=12         page=fore visible=false]
[layopt layer=message10 page=fore visible=false]
[mesw_on]
[current layer=message0  page=fore]

[eval exp="f['inmenu']=0"]

[rclick call=true storage="rclick.ks" target="*rclick" enabled=true]

[unlocksnapshot]

[history output=true]

[eval exp="kag.SaveMenu.enabled = true"]
[eval exp="kag.LoadMenu.enabled = true"]

[return]

