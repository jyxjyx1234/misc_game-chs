;■■■■■□□□□□■■■■■□□□□□■■■■■
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土
*ss02
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]
;□スキップモード＿禁止
[nextskip enabled=false]
;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]
;□ＳＡＶＥ＆ＬＯＡＤの設定
[eval exp="kag.LoadMenu.enabled = false"]
[eval exp="kag.SaveMenu.enabled = false"]


;□使用するレイヤーの設定
[win_full]
[layopt page=fore layer=message2 visible=false]
[layopt page=back layer=message2 visible=false]
[layopt page=fore layer=message1 visible=false]
[layopt page=back layer=message1 visible=false]
[layopt page=fore layer=message0 visible=true]
[layopt page=back layer=message0 visible=true]
[current layer=message0 page=back]
[position left=0 top=0 width=640 height=480 frame="" opacity=0 marginl=0 margint=0 marginr=0 marginb=0]

;□モードの開始フラグ
[eval exp="f.jyouhou_first=true"]
[eval exp="f.set_page_data = 1"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■過去データ表示画面
*start
;■ＢＧＭ設定
[bgmplay storage="bgm10"]

;■使用レイヤー設定
[current layer=message0 page=back]
[er]

;■画像準備
[if exp="f.set_page_data == 1 || f.set_page_data == 2 || f.set_page_data == 3 "][bg storage="jyouhou2_bg_1"][endif]
[if exp="f.set_page_data == 4 || f.set_page_data == 5 || f.set_page_data == 6 "][bg storage="jyouhou2_bg_2"][endif]

;■情報表示
[nowait]


;□日付
[eval exp="tf.sy =(f.ch_x_root -1) *23"]
[pimage storage="jyouhou_day" layer=base page=back dx=8 dy=50 sy=&tf.sy sh=23]

;□勢力
[pimage storage="bgff0000" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(f.sijiritu) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=&tf.sw sh=10]

[eval exp="var sijiritu_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.sijiritu *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=56]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[0]" sw=12]
[endif]


;□視聴率
[eval exp="var tv_onare_no_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.tv_onare_old *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=103]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[0]" sw=12]
[endif]

;□ニーズ
[eval exp="var need_00_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_01_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_02_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="tf.put_no_00 = f.need_00 +5"]
[eval exp="tf.put_no_01 = f.need_01 +5"]
[eval exp="tf.put_no_02 = f.need_02 +5"]
[eval exp="tf.no_00=tf.put_no_00 %12"]
[eval exp="tf.no_01=tf.put_no_01 %12"]
[eval exp="tf.no_02=tf.put_no_02 %12"]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=504 dy=97 sx="&need_00_set[tf.no_00]" sy= 0 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=537 dy=97 sx="&need_01_set[tf.no_01]" sy=14 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=570 dy=97 sx="&need_02_set[tf.no_02]" sy=28 sw=32 sh=14]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□放送済み番組タイトル（縦書き）プレート

[if exp="f.set_page_data == 1 || f.set_page_data == 4 "]
[if exp="f.ch_x_root >= 1"][pimage storage="jyouhou2_pl_name_s01" layer=base page=back dx=128 dy=345][endif]
[if exp="f.ch_x_root >= 2"][pimage storage="&f.st99_back_00" layer=base page=back dx=172 dy=345][endif]
[if exp="f.ch_x_root >= 3"][pimage storage="&f.st99_back_01" layer=base page=back dx=216 dy=345][endif]
[if exp="f.ch_x_root >= 4"][pimage storage="&f.st99_back_02" layer=base page=back dx=261 dy=345][endif]
[if exp="f.ch_x_root >= 5"][pimage storage="&f.st99_back_03" layer=base page=back dx=304 dy=345][endif]
[if exp="f.ch_x_root >= 6"][pimage storage="&f.st99_back_04" layer=base page=back dx=349 dy=345][endif]
[if exp="f.ch_x_root >= 7"][pimage storage="&f.st99_back_05" layer=base page=back dx=393 dy=345][endif]
[if exp="f.ch_x_root >= 8"][pimage storage="&f.st99_back_06" layer=base page=back dx=437 dy=345][endif]
[if exp="f.ch_x_root >= 9"][pimage storage="&f.st99_back_07" layer=base page=back dx=480 dy=345][endif]
[endif]

[if exp="f.set_page_data == 2 || f.set_page_data == 5 "]
[if exp="f.ch_x_root >= 9"][pimage storage="jyouhou2_pl_name_s02" layer=base page=back dx=128 dy=345][endif]
[if exp="f.ch_x_root >=10"][pimage storage="&f.st99_back_08" layer=base page=back dx=172 dy=345][endif]
[if exp="f.ch_x_root >=11"][pimage storage="&f.st99_back_09" layer=base page=back dx=216 dy=345][endif]
[if exp="f.ch_x_root >=12"][pimage storage="&f.st99_back_10" layer=base page=back dx=261 dy=345][endif]
[if exp="f.ch_x_root >=13"][pimage storage="&f.st99_back_11" layer=base page=back dx=304 dy=345][endif]
[if exp="f.ch_x_root >=14"][pimage storage="&f.st99_back_12" layer=base page=back dx=349 dy=345][endif]
[if exp="f.ch_x_root >=15"][pimage storage="&f.st99_back_13" layer=base page=back dx=393 dy=345][endif]
[if exp="f.ch_x_root >=16"][pimage storage="&f.st99_back_14" layer=base page=back dx=437 dy=345][endif]
[if exp="f.ch_x_root >=17"][pimage storage="&f.st99_back_15" layer=base page=back dx=480 dy=345][endif]
[endif]

[if exp="f.set_page_data == 3 || f.set_page_data == 6 "]
[if exp="f.ch_x_root >=17"][pimage storage="jyouhou2_pl_name_s03" layer=base page=back dx=128 dy=345][endif]
[if exp="f.ch_x_root >=18"][pimage storage="&f.st99_back_16" layer=base page=back dx=172 dy=345][endif]
[if exp="f.ch_x_root >=19"][pimage storage="&f.st99_back_17" layer=base page=back dx=216 dy=345][endif]
[if exp="f.ch_x_root >=20"][pimage storage="&f.st99_back_18" layer=base page=back dx=261 dy=345][endif]
[if exp="f.ch_x_root >=21"][pimage storage="&f.st99_back_19" layer=base page=back dx=304 dy=345][endif]
[if exp="f.ch_x_root >=22"][pimage storage="&f.st99_back_20" layer=base page=back dx=349 dy=345][endif]
[if exp="f.ch_x_root >=23"][pimage storage="&f.st99_back_21" layer=base page=back dx=393 dy=345][endif]
[if exp="f.ch_x_root >=24"][pimage storage="&f.st99_back_22" layer=base page=back dx=437 dy=345][endif]
[if exp="f.ch_x_root >=25"][pimage storage="&f.st99_back_23" layer=base page=back dx=480 dy=345][endif]
[endif]




;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□軍支持率データの表示　ＰＡＧＥ０１
[if exp="f.set_page_data == 1"]
[if exp="f.ch_x_root >= 1"][pimage storage="bg0000ff" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_00))"][pimage storage="bgff0000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 2"][pimage storage="bg0000ff" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_01))"][pimage storage="bgff0000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 3"][pimage storage="bg0000ff" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_02))"][pimage storage="bgff0000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 4"][pimage storage="bg0000ff" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_03))"][pimage storage="bgff0000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 5"][pimage storage="bg0000ff" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_04))"][pimage storage="bgff0000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 6"][pimage storage="bg0000ff" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_05))"][pimage storage="bgff0000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 7"][pimage storage="bg0000ff" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_06))"][pimage storage="bgff0000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 8"][pimage storage="bg0000ff" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_07))"][pimage storage="bgff0000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 9"][pimage storage="bg0000ff" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_08))"][pimage storage="bgff0000" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;□軍支持率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 2"]
[if exp="f.ch_x_root >= 9"][pimage storage="bg0000ff" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_08))"][pimage storage="bgff0000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=10"][pimage storage="bg0000ff" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_09))"][pimage storage="bgff0000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=11"][pimage storage="bg0000ff" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_10))"][pimage storage="bgff0000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=12"][pimage storage="bg0000ff" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_11))"][pimage storage="bgff0000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=13"][pimage storage="bg0000ff" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_12))"][pimage storage="bgff0000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=14"][pimage storage="bg0000ff" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_13))"][pimage storage="bgff0000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=15"][pimage storage="bg0000ff" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_14))"][pimage storage="bgff0000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=16"][pimage storage="bg0000ff" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_15))"][pimage storage="bgff0000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=17"][pimage storage="bg0000ff" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_16))"][pimage storage="bgff0000" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;□軍支持率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 3"]
[if exp="f.ch_x_root >=17"][pimage storage="bg0000ff" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_16))"][pimage storage="bgff0000" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=18"][pimage storage="bg0000ff" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_17))"][pimage storage="bgff0000" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=19"][pimage storage="bg0000ff" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_18))"][pimage storage="bgff0000" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=20"][pimage storage="bg0000ff" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_19))"][pimage storage="bgff0000" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=21"][pimage storage="bg0000ff" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_20))"][pimage storage="bgff0000" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=22"][pimage storage="bg0000ff" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_21))"][pimage storage="bgff0000" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=23"][pimage storage="bg0000ff" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_22))"][pimage storage="bgff0000" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=24"][pimage storage="bg0000ff" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.sijiritu_back_23))"][pimage storage="bgff0000" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=&tf.sh][endif]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[eval exp="var sijiritu_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

;□軍支持率データの表示　ＰＡＧＥ０１


[if exp="f.set_page_data == 1"]
[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.sijiritu_back_00 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.sijiritu_back_01 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.sijiritu_back_02 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.sijiritu_back_03 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.sijiritu_back_04 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.sijiritu_back_05 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.sijiritu_back_06 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.sijiritu_back_07 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.sijiritu_back_00 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.sijiritu_back_01 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.sijiritu_back_02 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.sijiritu_back_03 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.sijiritu_back_04 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.sijiritu_back_05 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.sijiritu_back_06 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.sijiritu_back_07 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]

[endif]

;□軍支持率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 2"]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.sijiritu_back_09 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.sijiritu_back_10 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.sijiritu_back_11 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.sijiritu_back_12 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.sijiritu_back_13 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.sijiritu_back_14 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.sijiritu_back_15 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.sijiritu_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.sijiritu_back_09 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.sijiritu_back_10 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.sijiritu_back_11 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.sijiritu_back_12 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.sijiritu_back_13 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.sijiritu_back_14 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.sijiritu_back_15 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[endif]

;□軍支持率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 3"]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.sijiritu_back_17 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.sijiritu_back_18 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.sijiritu_back_19 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.sijiritu_back_20 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.sijiritu_back_21 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.sijiritu_back_22 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.sijiritu_back_23 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]

[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.sijiritu_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.sijiritu_back_17 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.sijiritu_back_18 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.sijiritu_back_19 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.sijiritu_back_20 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.sijiritu_back_21 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.sijiritu_back_22 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.sijiritu_back_23 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&sijiritu_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&sijiritu_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&sijiritu_back_set[tf.no_0001]" sw=12][endif][endif]

[endif]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;□視聴率データの表示　ＰＡＧＥ０１
[if exp="f.set_page_data == 4"]
[if exp="f.ch_x_root >= 1"][pimage storage="bg00ff00" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_00))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=144 dy=235 sx=144 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 2"][pimage storage="bg00ff00" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_01))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=188 dy=235 sx=188 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 3"][pimage storage="bg00ff00" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_02))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=232 dy=235 sx=232 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 4"][pimage storage="bg00ff00" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_03))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=276 dy=235 sx=276 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 5"][pimage storage="bg00ff00" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_04))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=320 dy=235 sx=320 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 6"][pimage storage="bg00ff00" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_05))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=364 dy=235 sx=364 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 7"][pimage storage="bg00ff00" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_06))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=408 dy=235 sx=408 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 8"][pimage storage="bg00ff00" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_07))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=452 dy=235 sx=452 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >= 9"][pimage storage="bg00ff00" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_08))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=496 dy=235 sx=496 sy=235 sw=3 sh=&tf.sh][endif]
[endif]

;□視聴率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 5"]
[if exp="f.ch_x_root >= 9"][pimage storage="bg00ff00" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_08))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=144 dy=235 sx=144 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=10"][pimage storage="bg00ff00" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_09))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=188 dy=235 sx=188 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=11"][pimage storage="bg00ff00" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_10))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=232 dy=235 sx=232 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=12"][pimage storage="bg00ff00" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_11))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=276 dy=235 sx=276 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=13"][pimage storage="bg00ff00" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_12))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=320 dy=235 sx=320 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=14"][pimage storage="bg00ff00" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_13))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=364 dy=235 sx=364 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=15"][pimage storage="bg00ff00" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_14))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=408 dy=235 sx=408 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=16"][pimage storage="bg00ff00" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_15))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=452 dy=235 sx=452 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=17"][pimage storage="bg00ff00" layer=base page=back dx=496 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_16))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=496 dy=235 sx=496 sy=235 sw=3 sh=&tf.sh][endif]
[endif]

;□視聴率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 6"]
[if exp="f.ch_x_root >=17"][pimage storage="bg00ff00" layer=base page=back dx=144 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_16))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=144 dy=235 sx=144 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=18"][pimage storage="bg00ff00" layer=base page=back dx=188 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_17))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=188 dy=235 sx=188 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=19"][pimage storage="bg00ff00" layer=base page=back dx=232 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_18))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=232 dy=235 sx=232 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=20"][pimage storage="bg00ff00" layer=base page=back dx=276 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_19))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=276 dy=235 sx=276 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=21"][pimage storage="bg00ff00" layer=base page=back dx=320 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_20))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=320 dy=235 sx=320 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=22"][pimage storage="bg00ff00" layer=base page=back dx=364 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_21))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=364 dy=235 sx=364 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=23"][pimage storage="bg00ff00" layer=base page=back dx=408 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_22))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=408 dy=235 sx=408 sy=235 sw=3 sh=&tf.sh][endif]
[if exp="f.ch_x_root >=24"][pimage storage="bg00ff00" layer=base page=back dx=452 dy=235 sx=0 sy=0 sw=3 sh=100][eval exp="tf.sh =((int)(100 -f.tv_onare_old_back_23))"][pimage storage="jyouhou2_bg_2" layer=base page=back dx=452 dy=235 sx=452 sy=235 sw=3 sh=&tf.sh][endif]
[endif]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
[eval exp="var tv_onare_old_back_set =[0,12,24,36,48,60,72,84,96,108,120]"]

;□視聴率データの表示　ＰＡＧＥ０１
[if exp="f.set_page_data == 4"]
[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.tv_onare_old_back_00 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.tv_onare_old_back_01 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.tv_onare_old_back_02 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.tv_onare_old_back_03 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.tv_onare_old_back_04 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.tv_onare_old_back_05 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.tv_onare_old_back_06 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.tv_onare_old_back_07 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 1"][eval exp="tf.put_no = (f.tv_onare_old_back_00 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 2"][eval exp="tf.put_no = (f.tv_onare_old_back_01 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 3"][eval exp="tf.put_no = (f.tv_onare_old_back_02 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 4"][eval exp="tf.put_no = (f.tv_onare_old_back_03 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 5"][eval exp="tf.put_no = (f.tv_onare_old_back_04 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 6"][eval exp="tf.put_no = (f.tv_onare_old_back_05 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 7"][eval exp="tf.put_no = (f.tv_onare_old_back_06 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 8"][eval exp="tf.put_no = (f.tv_onare_old_back_07 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[endif]


;□視聴率データの表示　ＰＡＧＥ０２
[if exp="f.set_page_data == 5"]
[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.tv_onare_old_back_09 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.tv_onare_old_back_10 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.tv_onare_old_back_11 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.tv_onare_old_back_12 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.tv_onare_old_back_13 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.tv_onare_old_back_14 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.tv_onare_old_back_15 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=501 dy=218 ][endif][endif]

[if exp="f.ch_x_root >= 9"][eval exp="tf.put_no = (f.tv_onare_old_back_08 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=10"][eval exp="tf.put_no = (f.tv_onare_old_back_09 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=11"][eval exp="tf.put_no = (f.tv_onare_old_back_10 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=12"][eval exp="tf.put_no = (f.tv_onare_old_back_11 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=13"][eval exp="tf.put_no = (f.tv_onare_old_back_12 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=14"][eval exp="tf.put_no = (f.tv_onare_old_back_13 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=15"][eval exp="tf.put_no = (f.tv_onare_old_back_14 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=16"][eval exp="tf.put_no = (f.tv_onare_old_back_15 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=479 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=492 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=505 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[endif]

;□視聴率データの表示　ＰＡＧＥ０３
[if exp="f.set_page_data == 6"]
[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=149 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.tv_onare_old_back_17 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=193 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.tv_onare_old_back_18 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=237 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.tv_onare_old_back_19 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=281 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.tv_onare_old_back_20 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=325 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.tv_onare_old_back_21 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=369 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.tv_onare_old_back_22 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=413 dy=218 ][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.tv_onare_old_back_23 *10)"][if exp="tf.put_no != 1000"][eval exp="tf.no_0100=tf.put_no /100  %10"][eval exp="tf.no_0010=tf.put_no /10   %10"][eval exp="tf.no_0001=tf.put_no       %10"][if exp="tf.put_no >=  100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][endif][if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][endif][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][pimage storage="jyouhou_no_c" layer=base page=back dx=457 dy=218 ][endif][endif]

[if exp="f.ch_x_root >=17"][eval exp="tf.put_no = (f.tv_onare_old_back_16 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=127 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=140 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=153 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=18"][eval exp="tf.put_no = (f.tv_onare_old_back_17 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=171 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=184 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=197 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=19"][eval exp="tf.put_no = (f.tv_onare_old_back_18 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=215 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=228 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=241 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=20"][eval exp="tf.put_no = (f.tv_onare_old_back_19 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=259 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=272 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=285 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=21"][eval exp="tf.put_no = (f.tv_onare_old_back_20 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=303 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=316 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=329 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=22"][eval exp="tf.put_no = (f.tv_onare_old_back_21 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=347 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=360 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=373 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=23"][eval exp="tf.put_no = (f.tv_onare_old_back_22 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=391 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=404 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=417 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]
[if exp="f.ch_x_root >=24"][eval exp="tf.put_no = (f.tv_onare_old_back_23 *10)"][if exp="tf.put_no == 1000"][eval exp="tf.no_0100=1"][eval exp="tf.no_0010=0"][eval exp="tf.no_0001=0"][pimage storage="jyouhou_no_cg" layer=base page=back dx=435 dy=201 sx="&tv_onare_old_back_set[tf.no_0100]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=448 dy=201 sx="&tv_onare_old_back_set[tf.no_0010]" sw=12][pimage storage="jyouhou_no_cg" layer=base page=back dx=461 dy=201 sx="&tv_onare_old_back_set[tf.no_0001]" sw=12][endif][endif]

[endif]




;□番組選択画面へ切り替えボタン
[pimage storage="jyouhou2_select"    layer=base page=back dx=490 dy=131 sw=150]



[if exp="f.set_page_data == 1 || f.set_page_data == 2 || f.set_page_data == 3 "]
[pimage storage="jyouhou2_bt_page_1" layer=base page=back dx=301 dy=165 sx=316 sw=316]
[pimage storage="jyouhou2_btn_page_01" layer=base page=back dx=289 dy=131 sx=67 sw=67]
[if exp="f.ch_x_root >= 9"][pimage storage="jyouhou2_btn_page_02" layer=base page=back dx=356 dy=131 sx=67 sw=67][endif]
[if exp="f.ch_x_root >=17"][pimage storage="jyouhou2_btn_page_03" layer=base page=back dx=423 dy=131 sx=67 sw=67][endif]
[endif]

[if exp="f.set_page_data == 4 || f.set_page_data == 5 || f.set_page_data == 6 "]
[pimage storage="jyouhou2_bt_page_2" layer=base page=back dx=301 dy=165 sx=316 sw=316]
[pimage storage="jyouhou2_btn_page_04" layer=base page=back dx=289 dy=131 sx=67 sw=67]
[if exp="f.ch_x_root >= 9"][pimage storage="jyouhou2_btn_page_05" layer=base page=back dx=356 dy=131 sx=67 sw=67][endif]
[if exp="f.ch_x_root >=17"][pimage storage="jyouhou2_btn_page_06" layer=base page=back dx=423 dy=131 sx=67 sw=67][endif]
[endif]

;■ボタン配置
[locate x=490 y=131][button clickse=&sf.sys_se_06 enterse=&sf.sys_se_16 leavese=&sf.sys_se_26 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_select" target=*data_select]

[if exp="f.set_page_data == 1"]
[locate x=301 y=165][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_bt_page_1" exp="f.set_page_data = 4" target=*page_to_p4]
;[locate x=289 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_01" exp="f.set_page_data = 1" target=*page_to_p1]
[if exp="f.ch_x_root >= 9"][locate x=356 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_02" exp="f.set_page_data = 2" target=*page_to_p2][endif]
[if exp="f.ch_x_root >=17"][locate x=423 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_03" exp="f.set_page_data = 3" target=*page_to_p3][endif]
[endif]

[if exp="f.set_page_data == 2"]
[locate x=301 y=165][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_bt_page_1" exp="f.set_page_data = 5" target=*page_to_p5]
[locate x=289 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_01" exp="f.set_page_data = 1" target=*page_to_p1]
;[if exp="f.ch_x_root >= 9"][locate x=356 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_02" exp="f.set_page_data = 2" target=*page_to_p2][endif]
[if exp="f.ch_x_root >=17"][locate x=423 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_03" exp="f.set_page_data = 3" target=*page_to_p3][endif]
[endif]

[if exp="f.set_page_data == 3"]
[locate x=301 y=165][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_bt_page_1" exp="f.set_page_data = 6" target=*page_to_p6]
[locate x=289 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_01" exp="f.set_page_data = 1" target=*page_to_p1]
[if exp="f.ch_x_root >= 9"][locate x=356 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_02" exp="f.set_page_data = 2" target=*page_to_p2][endif]
;[if exp="f.ch_x_root >=17"][locate x=423 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_03" exp="f.set_page_data = 3" target=*page_to_p3][endif]
[endif]

[if exp="f.set_page_data == 4"]
[locate x=301 y=165][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_bt_page_2" exp="f.set_page_data = 1" target=*page_to_p1]
;[locate x=289 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_04" exp="f.set_page_data = 4" target=*page_to_p4]
[if exp="f.ch_x_root >= 9"][locate x=356 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_05" exp="f.set_page_data = 5" target=*page_to_p5][endif]
[if exp="f.ch_x_root >=17"][locate x=423 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_06" exp="f.set_page_data = 6" target=*page_to_p6][endif]
[endif]

[if exp="f.set_page_data == 5"]
[locate x=301 y=165][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_bt_page_2" exp="f.set_page_data = 2" target=*page_to_p2]
[locate x=289 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_04" exp="f.set_page_data = 4" target=*page_to_p4]
;[if exp="f.ch_x_root >= 9"][locate x=356 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_05" exp="f.set_page_data = 5" target=*page_to_p5][endif]
[if exp="f.ch_x_root >=17"][locate x=423 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_06" exp="f.set_page_data = 6" target=*page_to_p6][endif]
[endif]

[if exp="f.set_page_data == 6"]
[locate x=301 y=165][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_bt_page_2" exp="f.set_page_data = 3" target=*page_to_p3]
[locate x=289 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_04" exp="f.set_page_data = 4" target=*page_to_p4]
[if exp="f.ch_x_root >= 9"][locate x=356 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_05" exp="f.set_page_data = 5" target=*page_to_p5][endif]
;[if exp="f.ch_x_root >=17"][locate x=423 y=131][button clickse=&sf.sys_se_07 enterse=&sf.sys_se_17 leavese=&sf.sys_se_27 clicksebuf=2 entersebuf=2 leavesebuf=2 graphic="jyouhou2_btn_page_06" exp="f.set_page_data = 6" target=*page_to_p6][endif]
[endif]

[endnowait]

;■画面更新
[ud time=500]
[s]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■過去データページ切り替え
*page_to_p1
*page_to_p2
*page_to_p3
*page_to_p4
*page_to_p5
*page_to_p6

;■初期表示
[cm]


;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

[jump storage="ss02.ks" target=*start]
[s]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■番組選択へ
*data_select
;■初期表示
[cm]
[nowait]
;■画像準備
[bg storage="jyouhou_bg"]
[ld storage="cls" layer=1 pos=0]

;■情報表示
[nowait]

;□日付
[eval exp="tf.sy =(f.ch_x_root -1) *23"]
[pimage storage="jyouhou_day" layer=base page=back dx=8 dy=50 sy=&tf.sy sh=23]

;□勢力
[pimage storage="bgff0000" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=200 sh=10]
[eval exp="tf.sw =((int)(f.sijiritu) *2)"]
[pimage storage="bg0000ff" layer=base page=back dx=380 dy=46 sx=0 sy=0 sw=&tf.sw sh=10]

[eval exp="var sijiritu_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.sijiritu *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=56]
[endif]
[if exp="tf.put_no ==1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=39 sx="&sijiritu_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=39 sx="&sijiritu_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=39 sx="&sijiritu_set[0]" sw=12]
[endif]

;□視聴率
[eval exp="var tv_onare_no_set =[0,12,24,36,48,60,72,84,96,108,120]"]
[eval exp="tf.put_no = (f.tv_onare_old *10)"]
[if exp="tf.put_no >=1000"][eval exp="tf.put_no =1000"][endif]
[if exp="tf.put_no <=   0"][eval exp="tf.put_no =   0"][endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[tf.no_0100]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[tf.no_0010]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[tf.no_0001]" sw=12]
[                           pimage storage="jyouhou_no_c"  layer=base page=back dx=301 dy=103]
[endif]
[if exp="tf.put_no !=1000"]
[eval exp="tf.no_0100=tf.put_no /100  %10"]
[eval exp="tf.no_0010=tf.put_no /10   %10"]
[eval exp="tf.no_0001=tf.put_no       %10"]
[if exp="tf.put_no >= 100"][pimage storage="jyouhou_no_cg" layer=base page=back dx=279 dy=86 sx="&tv_onare_no_set[1]" sw=12][endif]
[if exp="tf.put_no >=  10"][pimage storage="jyouhou_no_cg" layer=base page=back dx=292 dy=86 sx="&tv_onare_no_set[0]" sw=12][endif]
[                           pimage storage="jyouhou_no_cg" layer=base page=back dx=305 dy=86 sx="&tv_onare_no_set[0]" sw=12]
[endif]

;□ニーズ
[eval exp="var need_00_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_01_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="var need_02_set =[0,32,64,96,128,160,192,224,256,288,320,352]"]
[eval exp="tf.put_no_00 = f.need_00 +5"]
[eval exp="tf.put_no_01 = f.need_01 +5"]
[eval exp="tf.put_no_02 = f.need_02 +5"]
[eval exp="tf.no_00=tf.put_no_00 %12"]
[eval exp="tf.no_01=tf.put_no_01 %12"]
[eval exp="tf.no_02=tf.put_no_02 %12"]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=504 dy=97 sx="&need_00_set[tf.no_00]" sy= 0 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=537 dy=97 sx="&need_01_set[tf.no_01]" sy=14 sw=32 sh=14]
[pimage storage="jyouhou_need_cg" layer=base page=back dx=570 dy=97 sx="&need_02_set[tf.no_02]" sy=28 sw=32 sh=14]


;■感情プレート表示
[if exp="f.kanjyou == '渇望'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=  0 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '怒り'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx= 80 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '不偏'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=160 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '同情'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=240 sy=0 sw=80 sh=30][endif]
[if exp="f.kanjyou == '反発'"][pimage storage="jyouhou_kanjyou_pl" layer=base page=back dx=253 dy=126 sx=320 sy=0 sw=80 sh=30][endif]



;□セーブボタン＆ロードボタン表示
[pimage storage="jyouhou_btn_load"    layer=base page=back dx= 20 dy=164 sw=120]
[pimage storage="jyouhou_btn_save"    layer=base page=back dx=150 dy=164 sw=120]

;□過去データ確認画面へ切り替えボタン
[pimage storage="jyouhou_data"    layer=base page=back dx=490 dy=131 sw=150]

;□選択肢追加状態の切り替えボタン
;[if exp="f.set_select_no >  9 && f.set_page == 1"][pimage storage="jyouhou_btn_page_01" layer=1 page=back dx=423 dy=131 sw=67][endif]
;[if exp="f.set_select_no >  9 && f.set_page == 2"][pimage storage="jyouhou_btn_page_02" layer=1 page=back dx=356 dy=131 sw=67][endif]

[pimage storage="jyouhou_btn_page_01" layer=base page=back dx=356 dy=131 sx=67 sw=67]
[if exp="f.set_select_no > 9 "]
[pimage storage="jyouhou_btn_page_02" layer=base page=back dx=423 dy=131 sx=67 sw=67]
[endif]
;□番組表示
[if exp="f.set_page == 1"]
[if exp="f.slect_name_[1] != ''"][pimage storage="&f.slect_name_[1]" layer=base page=back dx= 18 dy=187 sw=300][endif]
[if exp="f.slect_name_[2] != ''"][pimage storage="&f.slect_name_[2]" layer=base page=back dx= 18 dy=259 sw=300][endif]
[if exp="f.slect_name_[3] != ''"][pimage storage="&f.slect_name_[3]" layer=base page=back dx= 18 dy=331 sw=300][endif]
[if exp="f.slect_name_[4] != ''"][pimage storage="&f.slect_name_[4]" layer=base page=back dx= 18 dy=403 sw=300][endif]
[if exp="f.slect_name_[5] != ''"][pimage storage="&f.slect_name_[5]" layer=base page=back dx=322 dy=187 sw=300][endif]
[if exp="f.slect_name_[6] != ''"][pimage storage="&f.slect_name_[6]" layer=base page=back dx=322 dy=259 sw=300][endif]
[if exp="f.slect_name_[7] != ''"][pimage storage="&f.slect_name_[7]" layer=base page=back dx=322 dy=331 sw=300][endif]
[if exp="f.slect_name_[8] != ''"][pimage storage="&f.slect_name_[8]" layer=base page=back dx=322 dy=403 sw=300][endif]
[endif]

[if exp="f.set_page == 2"]
[if exp="f.slect_name_[9]  != ''"][pimage storage="&f.slect_name_[9]"  layer=base page=back dx= 18 dy=187 sw=300][endif]
[if exp="f.slect_name_[10] != ''"][pimage storage="&f.slect_name_[10]" layer=base page=back dx= 18 dy=259 sw=300][endif]
[if exp="f.slect_name_[11] != ''"][pimage storage="&f.slect_name_[11]" layer=base page=back dx= 18 dy=331 sw=300][endif]
[if exp="f.slect_name_[12] != ''"][pimage storage="&f.slect_name_[12]" layer=base page=back dx= 18 dy=403 sw=300][endif]
[if exp="f.slect_name_[13] != ''"][pimage storage="&f.slect_name_[13]" layer=base page=back dx=322 dy=187 sw=300][endif]
[if exp="f.slect_name_[14] != ''"][pimage storage="&f.slect_name_[14]" layer=base page=back dx=322 dy=259 sw=300][endif]
[if exp="f.slect_name_[15] != ''"][pimage storage="&f.slect_name_[15]" layer=base page=back dx=322 dy=331 sw=300][endif]
[if exp="f.slect_name_[16] != ''"][pimage storage="&f.slect_name_[16]" layer=base page=back dx=322 dy=403 sw=300][endif]
[endif]

[endnowait]
[ud time=500]

;□スキップモード＿禁止解除
[nextskip enabled=true]
;■Ｒメニュー禁止解除
[rclick enabled=true]
;□回想出力＿禁止解除
[history output=true]

[jump storage="ss01.ks" target=*ss01]
[s]

