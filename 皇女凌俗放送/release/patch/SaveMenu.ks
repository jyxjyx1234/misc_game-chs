;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ＳＡＶＥモード　　最終更新　04/25　更新者　すずき
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/25　更新者　白土

*savemenu
[history enabled=false]
;[playse storage=sys_B03]
[delay speed=nowait]
@iscript
function returnSaveMenu()
{
	kag.process('','*uninit');
}
@endscript

;□ＳＡＶＥモード　初期設定　開始

;□オートモードを　解除
[cancelautomode]

;□スキップモードを　解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;□ＳＡＶＥ＆ＬＯＡＤの状態　保存
[eval exp="var baksaveenable = kag.SaveMenu.enabled"]
[eval exp="var bakloadenable = kag.LoadMenu.enabled"]

;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]

[locklink]

;□現在表示されている画像が、モザイク画像の場合、セーブデータ用のサムネイル画像を準備
[if exp="f['inmenu']==0"]
	[nowait]
;	[if exp="Storages.isExistentStorage(System.exePath+'/data/others/'+'x'+f['nowbg']+'.tlg')"]ちちくりナース２４時
	[if exp="Storages.isExistentStorage(System.exePath+'/data/bgimage/'+'x'+f['nowbg']+'.bmp')"]
		[eval exp="var blackcircle = 'x%s'.sprintf(f.nowbg)"]
		[image storage=&blackcircle layer=3 top=0 left=0 visible=true index=3000]
	[endif]
	[locksnapshot]
	[layopt layer=3 visible=false]
	[endnowait]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;□ＳＡＶＥモード　変数初期化
*menu_init
;□初期画面のページを設定
[eval exp="var page=1"]
[eval exp="var page_align=0"]

;□履歴書き込み　禁止
[history output=false]
[jump target=*menu_set]
;□ＳＡＶＥモード　初期設定　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□

;□右クリックメニュー　禁止
[rclick  enabled=false]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;□ＳＡＶＥモード　開始
*menu_set


[layopt layer=4 visible=false]
[current  layer=message13 withback=false][er]
[font antialiased=true size=10 color=0x00ff00 bold=true]
[current  layer=message12 withback=false][er]
[position layer=message12 visible=true left=0 top=0 width=640 height=480]
[layopt   layer=message12 visible=true opacity=255]
[font antialiased=true size=15 color=0xffffff bold=false]
[current  layer=message11 withback=false][er]
[position layer=message11 visible=true left=0 top=0 width=640 height=480 frame=save_bg]
[layopt   layer=message11 visible=true opacity=255]

[locate x=50 y=101][button clickse=click clicksebuf=4 graphic="save_bt_back" target=*uninit]
[locate x=281 y=51][button clickse=click clicksebuf=4 graphic="save_bt_page1" target=*menu_set exp="page = 1" cond="page != 1"]
[locate x=281 y=118][button clickse=click clicksebuf=4 graphic="save_bt_page2" target=*menu_set exp="page = 2" cond="page != 2"]
[locate x=281 y=185][button clickse=click clicksebuf=4 graphic="save_bt_page3" target=*menu_set exp="page = 3" cond="page != 3"]
[locate x=281 y=252][button clickse=click clicksebuf=4 graphic="save_bt_page4" target=*menu_set exp="page = 4" cond="page != 4"]
[locate x=281 y=319][button clickse=click clicksebuf=4 graphic="save_bt_page5" target=*menu_set exp="page = 5" cond="page != 5"]
[eval exp="var offs_y = 40"]
[eval exp="var ct = 1"]
[eval exp="var celname = ''"]
[eval exp="var celno = 0"]

*cel_setloop
[eval exp="celno = ct+10*(page-1)"]
[eval exp="celname = 'save_bt_cel'+(string)celno"]

[current layer=message11]
[locate x=316 y=&offs_y]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=1,kag.process('','*unloadinfo')" onenter="celno=1,kag.process('','*loadinfo')" target=*sv0 cond="celno == 1"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=2,kag.process('','*unloadinfo')" onenter="celno=2,kag.process('','*loadinfo')" target=*sv0 cond="celno == 2"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=3,kag.process('','*unloadinfo')" onenter="celno=3,kag.process('','*loadinfo')" target=*sv0 cond="celno == 3"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=4,kag.process('','*unloadinfo')" onenter="celno=4,kag.process('','*loadinfo')" target=*sv0 cond="celno == 4"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=5,kag.process('','*unloadinfo')" onenter="celno=5,kag.process('','*loadinfo')" target=*sv0 cond="celno == 5"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=6,kag.process('','*unloadinfo')" onenter="celno=6,kag.process('','*loadinfo')" target=*sv0 cond="celno == 6"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=7,kag.process('','*unloadinfo')" onenter="celno=7,kag.process('','*loadinfo')" target=*sv0 cond="celno == 7"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=8,kag.process('','*unloadinfo')" onenter="celno=8,kag.process('','*loadinfo')" target=*sv0 cond="celno == 8"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=9,kag.process('','*unloadinfo')" onenter="celno=9,kag.process('','*loadinfo')" target=*sv0 cond="celno == 9"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=10,kag.process('','*unloadinfo')" onenter="celno=10,kag.process('','*loadinfo')" target=*sv0 cond="celno == 10"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=11,kag.process('','*unloadinfo')" onenter="celno=11,kag.process('','*loadinfo')" target=*sv0 cond="celno == 11"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=12,kag.process('','*unloadinfo')" onenter="celno=12,kag.process('','*loadinfo')" target=*sv0 cond="celno == 12"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=13,kag.process('','*unloadinfo')" onenter="celno=13,kag.process('','*loadinfo')" target=*sv0 cond="celno == 13"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=14,kag.process('','*unloadinfo')" onenter="celno=14,kag.process('','*loadinfo')" target=*sv0 cond="celno == 14"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=15,kag.process('','*unloadinfo')" onenter="celno=15,kag.process('','*loadinfo')" target=*sv0 cond="celno == 15"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=16,kag.process('','*unloadinfo')" onenter="celno=16,kag.process('','*loadinfo')" target=*sv0 cond="celno == 16"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=17,kag.process('','*unloadinfo')" onenter="celno=17,kag.process('','*loadinfo')" target=*sv0 cond="celno == 17"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=18,kag.process('','*unloadinfo')" onenter="celno=18,kag.process('','*loadinfo')" target=*sv0 cond="celno == 18"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=19,kag.process('','*unloadinfo')" onenter="celno=19,kag.process('','*loadinfo')" target=*sv0 cond="celno == 19"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=20,kag.process('','*unloadinfo')" onenter="celno=20,kag.process('','*loadinfo')" target=*sv0 cond="celno == 20"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=21,kag.process('','*unloadinfo')" onenter="celno=21,kag.process('','*loadinfo')" target=*sv0 cond="celno == 21"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=22,kag.process('','*unloadinfo')" onenter="celno=22,kag.process('','*loadinfo')" target=*sv0 cond="celno == 22"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=23,kag.process('','*unloadinfo')" onenter="celno=23,kag.process('','*loadinfo')" target=*sv0 cond="celno == 23"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=24,kag.process('','*unloadinfo')" onenter="celno=24,kag.process('','*loadinfo')" target=*sv0 cond="celno == 24"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=25,kag.process('','*unloadinfo')" onenter="celno=25,kag.process('','*loadinfo')" target=*sv0 cond="celno == 25"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=26,kag.process('','*unloadinfo')" onenter="celno=26,kag.process('','*loadinfo')" target=*sv0 cond="celno == 26"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=27,kag.process('','*unloadinfo')" onenter="celno=27,kag.process('','*loadinfo')" target=*sv0 cond="celno == 27"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=28,kag.process('','*unloadinfo')" onenter="celno=28,kag.process('','*loadinfo')" target=*sv0 cond="celno == 28"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=29,kag.process('','*unloadinfo')" onenter="celno=29,kag.process('','*loadinfo')" target=*sv0 cond="celno == 29"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=30,kag.process('','*unloadinfo')" onenter="celno=30,kag.process('','*loadinfo')" target=*sv0 cond="celno == 30"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=31,kag.process('','*unloadinfo')" onenter="celno=31,kag.process('','*loadinfo')" target=*sv0 cond="celno == 31"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=32,kag.process('','*unloadinfo')" onenter="celno=32,kag.process('','*loadinfo')" target=*sv0 cond="celno == 32"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=33,kag.process('','*unloadinfo')" onenter="celno=33,kag.process('','*loadinfo')" target=*sv0 cond="celno == 33"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=34,kag.process('','*unloadinfo')" onenter="celno=34,kag.process('','*loadinfo')" target=*sv0 cond="celno == 34"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=35,kag.process('','*unloadinfo')" onenter="celno=35,kag.process('','*loadinfo')" target=*sv0 cond="celno == 35"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=36,kag.process('','*unloadinfo')" onenter="celno=36,kag.process('','*loadinfo')" target=*sv0 cond="celno == 36"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=37,kag.process('','*unloadinfo')" onenter="celno=37,kag.process('','*loadinfo')" target=*sv0 cond="celno == 37"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=38,kag.process('','*unloadinfo')" onenter="celno=38,kag.process('','*loadinfo')" target=*sv0 cond="celno == 38"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=39,kag.process('','*unloadinfo')" onenter="celno=39,kag.process('','*loadinfo')" target=*sv0 cond="celno == 39"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=40,kag.process('','*unloadinfo')" onenter="celno=40,kag.process('','*loadinfo')" target=*sv0 cond="celno == 40"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=41,kag.process('','*unloadinfo')" onenter="celno=41,kag.process('','*loadinfo')" target=*sv0 cond="celno == 41"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=42,kag.process('','*unloadinfo')" onenter="celno=42,kag.process('','*loadinfo')" target=*sv0 cond="celno == 42"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=43,kag.process('','*unloadinfo')" onenter="celno=43,kag.process('','*loadinfo')" target=*sv0 cond="celno == 43"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=44,kag.process('','*unloadinfo')" onenter="celno=44,kag.process('','*loadinfo')" target=*sv0 cond="celno == 44"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=45,kag.process('','*unloadinfo')" onenter="celno=45,kag.process('','*loadinfo')" target=*sv0 cond="celno == 45"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=46,kag.process('','*unloadinfo')" onenter="celno=46,kag.process('','*loadinfo')" target=*sv0 cond="celno == 46"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=47,kag.process('','*unloadinfo')" onenter="celno=47,kag.process('','*loadinfo')" target=*sv0 cond="celno == 47"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=48,kag.process('','*unloadinfo')" onenter="celno=48,kag.process('','*loadinfo')" target=*sv0 cond="celno == 48"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=49,kag.process('','*unloadinfo')" onenter="celno=49,kag.process('','*loadinfo')" target=*sv0 cond="celno == 49"]
[button clickse=click clicksebuf=4 graphic=&celname onleave="celno=50,kag.process('','*unloadinfo')" onenter="celno=50,kag.process('','*loadinfo')" target=*sv0 cond="celno == 50"]
[current layer=message12]
[locate x=358 y=&(offs_y+1)]
[emb exp='kag.getBookMarkDate(celno)']
; 
[locate x=488 y=&(offs_y+1)]
spent:
@eval exp="var pt_hour = (int)(sf['playtime'+(string)celno]/1000/60/60%100)"
[locate x=&(536+8*(pt_hour<10)) y=&(offs_y+1)]
@emb exp="pt_hour"
[locate x=552 y=&(offs_y+1)]

@eval exp="var pt_minute = (int)(sf['playtime'+(string)celno]/1000/60%60)"
[locate x=&(582+8*(pt_minute<10)) y=&(offs_y+1)]
@emb exp="pt_minute"
[locate x=596 y=&(offs_y+1)]



[locate x=358 y=&(offs_y+19)]
[emb exp='kag.getBookMarkPageName(celno)']
[image index=1013000 layer=4 storage=load_bt_new visible=true left=316 top=&(offs_y+27) cond="sf.lastsave == celno"]


[eval exp="offs_y += 42"]
[eval exp="ct += 1"]
[jump target=*cel_setloop cond="ct<11"]

[eval exp="kag.rightClickHook.remove(returnSaveMenu)"]
[eval exp="kag.rightClickHook.remove(returnSaveMenu)"]
[eval exp="kag.rightClickHook.add(returnSaveMenu)"]
*menu_setend
[current layer=message11]
[s]

*loadinfo

*load_thumb
[layopt index=1012000 layer=3 visible=false]
;//座標とページ数からセル番号を取得してみます
;// [eval exp="celno = 10*(page-1)"]
;// [eval exp="celno = celno + 1" cond="kag.primaryLayer.cursorY>=40 && 82>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 2" cond="kag.primaryLayer.cursorY>=83 && 125>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 3" cond="kag.primaryLayer.cursorY>=126 && 168>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 4" cond="kag.primaryLayer.cursorY>=169 && 211>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 5" cond="kag.primaryLayer.cursorY>=212 && 254>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 6" cond="kag.primaryLayer.cursorY>=255 && 297>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 7" cond="kag.primaryLayer.cursorY>=298 && 340>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 8" cond="kag.primaryLayer.cursorY>=341 && 383>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 9" cond="kag.primaryLayer.cursorY>=384 && 426>kag.primaryLayer.cursorY"]
;// [eval exp="celno = celno + 10" cond="kag.primaryLayer.cursorY>=427 && 469>kag.primaryLayer.cursorY"]

[eval exp="var thumbname = kag.getBookMarkFileNameAtNum(celno)"]
[image index=1012000 layer=3 storage=&thumbname visible=true left=35 top=169 cond="Storages.isExistentStorage(thumbname)"]

*load_comm

[position layer=message13 visible=false left=35 top=329 width=190 height=120]
[current layer=message13]
[locate x=0 y=0]
[position layer=message13 visible=true left=35 top=329 width=190 height=120]
[layopt   layer=message13 visible=true opacity=255]
[font antialiased=true size=15 color=0x00ff00 bold=true face="ＭＳ ゴシック"]
[nowait]
	[emb exp="sf['save'+(string)celno]"]
[endnowait]
[current layer=message11]
[jump target=*menu_setend]
*unloadinfo

*unload_thumb
[layopt index=1012000 layer=3 visible=false]

*unload_comm

[position layer=message13 visible=false left=37 top=331 width=190 height=120]
[jump target=*menu_setend]

*sv0
[locklink2 layer=message11]
[eval exp="var result = true"]
;[playse storage=sys_B05 cond="kag.getBookMarkDate(celno)!=''"]
[eval exp="result = askYesNo('セーブデータを上書きしてよろしいですか？','確認')" cond="kag.getBookMarkDate(celno)!=''"]
[stopse cond="kag.getBookMarkDate(celno)!=''"]
[jump target=*commedit_end cond="result!=true"]

[eval exp="kag.rightClickHook.remove(returnSaveMenu)"]
[eval exp="kag.rightClickHook.remove(returnSaveMenu)"]
@eval exp="sf['playtime'+(string)celno] = (System.getTickCount()-sf.started)+sf['playtime'+(string)sf.loaded]"
@eval exp="sf.started = System.getTickCount()" cond="sf.loaded == celno"
@eval exp="sf.lastsave = celno"
[save place=&celno ask=false]
[current layer=message14]
[layopt layer=message14 visible=true]
[position layer=message14 visible=true frame=save_commbg left=144, top=130, width=640, height=480 draggable=true]
[locate x=232 y=56]
[button graphic=save_bt_commok target=*commedit_end exp="kag.tagHandlers.commit()" clickse=click]
[locate x=11 y=22]
[font size=21]
[edit name="sf['save'+celno]" bgcolor=0xFFFFFF color=0xffffff opacity=164 maxchars=60 length=288 antialiased=true]
[eval exp="kag.rightClickHook.add(returnSaveMenu)"]
[s]
*commedit_end
[eval exp="ct = 1"]
[eval exp="offs_y = 40"]
[position layer=message14 visible=false]
[unlocklink2 layer=message11]
[current  layer=message12 withback=false][er]
[position layer=message12 visible=true left=0 top=0 width=640 height=480]
[font antialiased=true size=15 color=0xffffff bold=false]
[jump target=*cel_setloop]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■終了処理　開始

;□メッセージレイヤー　整理
*uninit
[history enabled=true]
[eval exp="kag.rightClickHook.remove(returnSaveMenu)"]
[eval exp="kag.rightClickHook.remove(returnSaveMenu)"]
[er]
[layopt index=1012000 layer=3 visible=false]
[layopt index=1013000 layer=4 visible=false]
[layopt  layer=message11 page=fore visible=false]
[layopt  layer=message12 page=fore visible=false]
[layopt  layer=message13 page=fore visible=false]
[layopt  layer=message14 page=fore visible=false]
;// [current layer=message0 withback=true cond="f['inmenu']==0"]
[current layer=message0 withback=true]

;□ロック関係　整理
*ret

[delay speed=user]
[if exp="f['inmenu']==0"]
	[unlocksnapshot]
	[history output=true]
	[rclick enabled=true]
	[unlocklink2 layer=5]
[endif]


;□ＳＡＶＥ＆ＬＯＡＤの状態　復帰
[eval exp="kag.SaveMenu.enabled = baksaveenable"]
[eval exp="kag.LoadMenu.enabled = bakloadenable"]

[return]


