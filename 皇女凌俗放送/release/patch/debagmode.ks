;■■■■■□□□□□■■■■■□□□□□■■■■■
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土
*test


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■テスト領域　開始
;[setwindow]
;[win_full]

;●ルートクリア　フラグ強制ＯＮ
;[eval exp="sf.cleared = 1"]
;●ルート進行度　フラグ強制ＯＮ
;[eval exp=" f.a07_01x = 1"]
;[eval exp=" f.a08_01x = 1"]
;[eval exp=" f.a09_01x = 1"]
;[eval exp=" f.b07_01x = 1"]
;[eval exp=" f.b08_01x = 1"]
;[eval exp=" f.b09_01x = 1"]
;[eval exp=" f.sijiritu     = 80"]
;[eval exp=" f.tv_onare_old = 80"]
;[eval exp=" f.ch_a_point   =  5"]
;[eval exp=" f.AEV02_on     =  1"]
;[eval exp=" f.ch_x_root    = 21"]

;■テスト領域　終了
;■■■■■□□□□□■■■■■□□□□□■■■■■
*test_start


;■■■■■□□□□□■■■■■□□□□□■■■■■
;■デバックモード
[win_full]
[clearimage layer1=&sf.lay_ch0 layer2=&sf.lay_ch1 layer3=&sf.lay_ch2]
[loadbg storage="bg000000"]
[ud]
[nowait]

;■文字の色変えは、以下の様にして行う
;[font_c color=0xRRGGBB]色変えする範囲の文字[font_c]　通常の色の文字

[link target=*A01  ][font_c color=0xffffff]A01  [font_c][endlink]
[link target=*A02  ][font_c color=0xffffff]A02  [font_c][endlink]
[link target=*A03  ][font_c color=0xffffff]A03  [font_c][endlink]
[link target=*A04  ][font_c color=0xffffff]A04  [font_c][endlink]
[link target=*A05  ][font_c color=0xffffff]A05  [font_c][endlink]
[link target=*A06  ][font_c color=0xffffff]A06  [font_c][endlink]
[link target=*A07  ][font_c color=0xffffff]A07  [font_c][endlink][r]
[link target=*A08  ][font_c color=0xffffff]A08  [font_c][endlink]
[link target=*A09  ][font_c color=0xffffff]A09  [font_c][endlink]
[link target=*A10  ][font_c color=0xffffff]A10  [font_c][endlink]
[link target=*A11  ][font_c color=0xffffff]A11  [font_c][endlink]
[link target=*A12  ][font_c color=0xffffff]A12  [font_c][endlink]
[link target=*A13  ][font_c color=0xffffff]A13  [font_c][endlink]
[link target=*A14  ][font_c color=0xffffff]A14  [font_c][endlink][r]

[link target=*B01  ][font_c color=0xffffff]B01  [font_c][endlink]
[link target=*B02  ][font_c color=0xffffff]B02  [font_c][endlink]
[link target=*B03  ][font_c color=0xffffff]B03  [font_c][endlink]
[link target=*B04  ][font_c color=0xffffff]B04  [font_c][endlink]
[link target=*B05  ][font_c color=0xffffff]B05  [font_c][endlink]
[link target=*B06  ][font_c color=0xffffff]B06  [font_c][endlink]
[link target=*B07  ][font_c color=0xffffff]B07  [font_c][endlink][r]
[link target=*B08  ][font_c color=0xffffff]B08  [font_c][endlink]
[link target=*B09  ][font_c color=0xffffff]B09  [font_c][endlink]
[link target=*B10  ][font_c color=0xffffff]B10  [font_c][endlink]
[link target=*B11  ][font_c color=0xffffff]B11  [font_c][endlink]
[link target=*B12  ][font_c color=0xffffff]B12  [font_c][endlink]
[link target=*B13  ][font_c color=0xffffff]B13  [font_c][endlink]
[link target=*B14  ][font_c color=0xffffff]B14  [font_c][endlink][r]

[link target=*W01  ][font_c color=0xffffff]W01  [font_c][endlink]
[link target=*W02  ][font_c color=0xffffff]W02  [font_c][endlink]
[link target=*W03  ][font_c color=0xffffff]W03  [font_c][endlink]
[link target=*W04  ][font_c color=0xffffff]W04  [font_c][endlink]
[link target=*W05  ][font_c color=0xffffff]W05  [font_c][endlink]
[link target=*W06  ][font_c color=0xffffff]W06  [font_c][endlink]
[link target=*W07  ][font_c color=0xffffff]W07  [font_c][endlink][r]

[link target=*AT01 ][font_c color=0xffffff]AT01 [font_c][endlink]
[link target=*AT02 ][font_c color=0xffffff]AT02 [font_c][endlink]
[link target=*AT03 ][font_c color=0xffffff]AT03 [font_c][endlink]
[link target=*AT04 ][font_c color=0xffffff]AT04 [font_c][endlink]
[link target=*AT05 ][font_c color=0xffffff]AT05 [font_c][endlink]
[link target=*AT06 ][font_c color=0xffffff]AT06 [font_c][endlink]
[link target=*AT07 ][font_c color=0xffffff]AT07 [font_c][endlink][r]

[link target=*BT01 ][font_c color=0xffffff]BT01 [font_c][endlink]
[link target=*BT02 ][font_c color=0xffffff]BT02 [font_c][endlink]
[link target=*BT03 ][font_c color=0xffffff]BT03 [font_c][endlink]
[link target=*BT04 ][font_c color=0xffffff]BT04 [font_c][endlink]
[link target=*BT05 ][font_c color=0xffffff]BT05 [font_c][endlink]
[link target=*BT06 ][font_c color=0xffffff]BT06 [font_c][endlink]
[link target=*BT07 ][font_c color=0xffffff]BT07 [font_c][endlink][r]

[link target=*CT01 ][font_c color=0xffffff]CT01 [font_c][endlink]
[link target=*CT02 ][font_c color=0xffffff]CT02 [font_c][endlink]
[link target=*CT03 ][font_c color=0xffffff]CT03 [font_c][endlink]
[link target=*CT04 ][font_c color=0xffffff]CT04 [font_c][endlink]
[link target=*CT05 ][font_c color=0xffffff]CT05 [font_c][endlink]
[link target=*CT06 ][font_c color=0xffffff]CT06 [font_c][endlink]
[link target=*CT07 ][font_c color=0xffffff]CT07 [font_c][endlink][r]

[link target=*WT01 ][font_c color=0xffffff]WT01 [font_c][endlink]
[link target=*WT02 ][font_c color=0xffffff]WT02 [font_c][endlink]
[link target=*WT03 ][font_c color=0xffffff]WT03 [font_c][endlink]
[link target=*WT04 ][font_c color=0xffffff]WT04 [font_c][endlink][r]

[link target=*DL01 ][font_c color=0xffffff]DL01 [font_c][endlink]
[link target=*DL02 ][font_c color=0xffffff]DL02 [font_c][endlink]
[link target=*DL03 ][font_c color=0xffffff]DL03 [font_c][endlink]
[link target=*DL04 ][font_c color=0xffffff]DL04 [font_c][endlink]
[link target=*DL05 ][font_c color=0xffffff]DL05 [font_c][endlink]
[link target=*DL06 ][font_c color=0xffffff]DL06 [font_c][endlink][r]

[link target=*AEV01][font_c color=0xffffff]AEV01 [font_c][endlink]
[link target=*AEV02][font_c color=0xffffff]AEV02 [font_c][endlink]
[link target=*AEV03][font_c color=0xffffff]AEV03 [font_c][endlink]
[link target=*BEV01][font_c color=0xffffff]BEV01 [font_c][endlink]
[link target=*BEV02][font_c color=0xffffff]BEV02 [font_c][endlink]
[link target=*BEV03][font_c color=0xffffff]BEV03 [font_c][endlink]
[link target=*CEV01][font_c color=0xffffff]CEV01 [font_c][endlink]
[link target=*CEV02][font_c color=0xffffff]CEV02 [font_c][endlink][r]

[link target=*MEV01][font_c color=0xffffff]MEV01 [font_c][endlink]
[link target=*MEV02][font_c color=0xffffff]MEV02 [font_c][endlink]
[link target=*MEV03][font_c color=0xffffff]MEV03 [font_c][endlink]
[link target=*MEV04][font_c color=0xffffff]MEV04 [font_c][endlink]
[link target=*MEV05][font_c color=0xffffff]MEV05 [font_c][endlink][r]
[link target=*MEV06][font_c color=0xffffff]MEV06 [font_c][endlink]
[link target=*MEV07][font_c color=0xffffff]MEV07 [font_c][endlink]
[link target=*MEV08][font_c color=0xffffff]MEV08 [font_c][endlink]
[link target=*MEV09][font_c color=0xffffff]MEV09 [font_c][endlink]
[link target=*MEV10][font_c color=0xffffff]MEV10 [font_c][endlink][r]

[link target=*OP01 ][font_c color=0xffffff]OP01  [font_c][endlink]
[link target=*OP02 ][font_c color=0xffffff]OP02  [font_c][endlink]
[link target=*logo    ][font_c color=0x00ff00]logo    [font_c][endlink]
[link target=*demo    ][font_c color=0x00ff00]demo    [font_c][endlink]
[link target=*warning ][font_c color=0xff0000]warning [font_c][endlink][r]

[link target=*END01][font_c color=0xffffff]END01 [font_c][endlink]
[link target=*END02][font_c color=0xffffff]END02 [font_c][endlink]
[link target=*END03][font_c color=0xffffff]END03 [font_c][endlink]
[link target=*END04][font_c color=0xffffff]END04 [font_c][endlink]
[link target=*END05][font_c color=0xffffff]END05 [font_c][endlink]
[link target=*END06][font_c color=0xffffff]END06 [font_c][endlink]
[link target=*END07][font_c color=0xffffff]END07 [font_c][endlink][r]

[link target=*ML01 ][font_c color=0xffffff]ML01 [font_c][endlink]
[link target=*ML02 ][font_c color=0xffffff]ML02 [font_c][endlink]
[link target=*ML03 ][font_c color=0xffffff]ML03 [font_c][endlink]
[link target=*ML04 ][font_c color=0xffffff]ML04 [font_c][endlink]
[link target=*ML05 ][font_c color=0xffffff]ML05 [font_c][endlink]
[link target=*ML06 ][font_c color=0xffffff]ML06 [font_c][endlink]
[link target=*ML07 ][font_c color=0xffffff]ML07 [font_c][endlink]
[link target=*ML08 ][font_c color=0xffffff]ML08 [font_c][endlink]
[link target=*ML09 ][font_c color=0xffffff]ML09 [font_c][endlink][r]
[link target=*EL01 ][font_c color=0xffffff]EL01 [font_c][endlink]
[link target=*EL02 ][font_c color=0xffffff]EL02 [font_c][endlink]
[link target=*EL03 ][font_c color=0xffffff]EL03 [font_c][endlink]
[link target=*EL04 ][font_c color=0xffffff]EL04 [font_c][endlink]
[link target=*EL05 ][font_c color=0xffffff]EL05 [font_c][endlink][r]

[link target=*RE01 ][font_c color=0xffffff]RE01 [font_c][endlink]
[link target=*RE02 ][font_c color=0xffffff]RE02 [font_c][endlink]
[link target=*RE03 ][font_c color=0xffffff]RE03 [font_c][endlink]
[link target=*RE04 ][font_c color=0xffffff]RE04 [font_c][endlink]
[link target=*RE05 ][font_c color=0xffffff]RE05 [font_c][endlink]
[link target=*RE06 ][font_c color=0xffffff]RE06 [font_c][endlink]
[link target=*RE07 ][font_c color=0xffffff]RE07 [font_c][endlink][r]
[link target=*RE08 ][font_c color=0xffffff]RE08 [font_c][endlink]
[link target=*RE09 ][font_c color=0xffffff]RE09 [font_c][endlink]
[link target=*RE10 ][font_c color=0xffffff]RE10 [font_c][endlink]

[link target=*test_exit]デバックモード終了[endlink]
[endnowait]
[s]

;■ファイルのコールと復帰
*A01
[call storage="A01.ks"][jump target=*test_end]
*A02
[call storage="A02.ks"][jump target=*test_end]
*A03
[call storage="A03.ks"][jump target=*test_end]
*A04
[call storage="A04.ks"][jump target=*test_end]
*A05
[call storage="A05.ks"][jump target=*test_end]
*A06
[call storage="A06.ks"][jump target=*test_end]
*A07
[call storage="A07.ks"][jump target=*test_end]
*A08
[call storage="A08.ks"][jump target=*test_end]
*A09
[call storage="A09.ks"][jump target=*test_end]
*A10
[call storage="A10.ks"][jump target=*test_end]
*A11
[call storage="A11.ks"][jump target=*test_end]
*A12
[call storage="A12.ks"][jump target=*test_end]
*A13
[call storage="A13.ks"][jump target=*test_end]
*A14
[call storage="A14.ks"][jump target=*test_end]
*AEV01
[call storage="AEV01.ks"][jump target=*test_end]
*AEV02
[call storage="AEV02.ks"][jump target=*test_end]
*AEV03
[call storage="AEV03.ks"][jump target=*test_end]
*AT01
[call storage="AT01.ks"][jump target=*test_end]
*AT02
[call storage="AT02.ks"][jump target=*test_end]
*AT03
[call storage="AT03.ks"][jump target=*test_end]
*AT04
[call storage="AT04.ks"][jump target=*test_end]
*AT05
[call storage="AT05.ks"][jump target=*test_end]
*AT06
[call storage="AT06.ks"][jump target=*test_end]
*AT07
[call storage="AT07.ks"][jump target=*test_end]
*B01
[call storage="B01.ks"][jump target=*test_end]
*B02
[call storage="B02.ks"][jump target=*test_end]
*B03
[call storage="B03.ks"][jump target=*test_end]
*B04
[call storage="B04.ks"][jump target=*test_end]
*B05
[call storage="B05.ks"][jump target=*test_end]
*B06
[call storage="B06.ks"][jump target=*test_end]
*B07
[call storage="B07.ks"][jump target=*test_end]
*B08
[call storage="B08.ks"][jump target=*test_end]
*B09
[call storage="B09.ks"][jump target=*test_end]
*B10
[call storage="B10.ks"][jump target=*test_end]
*B11
[call storage="B11.ks"][jump target=*test_end]
*B12
[call storage="B12.ks"][jump target=*test_end]
*B13
[call storage="B13.ks"][jump target=*test_end]
*B14
[call storage="B14.ks"][jump target=*test_end]
*BEV01
[call storage="BEV01.ks"][jump target=*test_end]
*BEV02
[call storage="BEV02.ks"][jump target=*test_end]
*BEV03
[call storage="BEV03.ks"][jump target=*test_end]
*BT01
[call storage="BT01.ks"][jump target=*test_end]
*BT02
[call storage="BT02.ks"][jump target=*test_end]
*BT03
[call storage="BT03.ks"][jump target=*test_end]
*BT04
[call storage="BT04.ks"][jump target=*test_end]
*BT05
[call storage="BT05.ks"][jump target=*test_end]
*BT06
[call storage="BT06.ks"][jump target=*test_end]
*BT07
[call storage="BT07.ks"][jump target=*test_end]
*CEV01
[call storage="CEV01.ks"][jump target=*test_end]
*CEV02
[call storage="CEV02.ks"][jump target=*test_end]
*CT01
[call storage="CT01.ks"][jump target=*test_end]
*CT02
[call storage="CT02.ks"][jump target=*test_end]
*CT03
[call storage="CT03.ks"][jump target=*test_end]
*CT04
[call storage="CT04.ks"][jump target=*test_end]
*CT05
[call storage="CT05.ks"][jump target=*test_end]
*CT06
[call storage="CT06.ks"][jump target=*test_end]
*CT07
[call storage="CT07.ks"][jump target=*test_end]
*DL01
[call storage="DL01.ks"][jump target=*test_end]
*DL02
[call storage="DL02.ks"][jump target=*test_end]
*DL03
[call storage="DL03.ks"][jump target=*test_end]
*DL04
[call storage="DL04.ks"][jump target=*test_end]
*DL05
[call storage="DL05.ks"][jump target=*test_end]
*DL06
[call storage="DL06.ks"][jump target=*test_end]
*EL01
[call storage="EL01.ks"][jump target=*test_end]
*EL02
[call storage="EL02.ks"][jump target=*test_end]
*EL03
[call storage="EL03.ks"][jump target=*test_end]
*EL04
[call storage="EL04.ks"][jump target=*test_end]
*EL05
[call storage="EL05.ks"][jump target=*test_end]
*END01
[call storage="END01.ks"][jump target=*test_end]
*END02
[call storage="END02.ks"][jump target=*test_end]
*END03
[call storage="END03.ks"][jump target=*test_end]
*END04
[call storage="END04.ks"][jump target=*test_end]
*END05
[call storage="END05.ks"][jump target=*test_end]
*END06
[call storage="END06.ks"][jump target=*test_end]
*END07
[call storage="END07.ks"][jump target=*test_end]
*MEV01
[call storage="MEV01.ks"][jump target=*test_end]
*MEV02
[call storage="MEV02.ks"][jump target=*test_end]
*MEV03
[call storage="MEV03.ks"][jump target=*test_end]
*MEV04
[call storage="MEV04.ks"][jump target=*test_end]
*MEV05
[call storage="MEV05.ks"][jump target=*test_end]
*MEV06
[call storage="MEV06.ks"][jump target=*test_end]
*MEV07
[call storage="MEV07.ks"][jump target=*test_end]
*MEV08
[call storage="MEV08.ks"][jump target=*test_end]
*MEV09
[call storage="MEV09.ks"][jump target=*test_end]
*MEV10
[call storage="MEV10.ks"][jump target=*test_end]
*ML01
[call storage="ML01.ks"][jump target=*test_end]
*ML02
[call storage="ML02.ks"][jump target=*test_end]
*ML03
[call storage="ML03.ks"][jump target=*test_end]
*ML04
[call storage="ML04.ks"][jump target=*test_end]
*ML05
[call storage="ML05.ks"][jump target=*test_end]
*ML06
[call storage="ML06.ks"][jump target=*test_end]
*ML07
[call storage="ML07.ks"][jump target=*test_end]
*ML08
[call storage="ML08.ks"][jump target=*test_end]
*ML09
[call storage="ML09.ks"][jump target=*test_end]
*OP01
[call storage="OP01.ks"][jump target=*test_end]
*OP02
[call storage="OP02.ks"][jump target=*test_end]

*logo
[call storage="logo.ks"][jump target=*test_end]
*demo
[call storage="demo.ks"][jump target=*test_end]
*warning
[call storage="warning.ks"][jump target=*test_end]
*RE01
[call storage="RE01.ks"][jump target=*test_end]
*RE02
[call storage="RE02.ks"][jump target=*test_end]
*RE03
[call storage="RE03.ks"][jump target=*test_end]
*RE04
[call storage="RE04.ks"][jump target=*test_end]
*RE05
[call storage="RE05.ks"][jump target=*test_end]
*RE06
[call storage="RE06.ks"][jump target=*test_end]
*RE07
[call storage="RE07.ks"][jump target=*test_end]
*RE08
[call storage="RE08.ks"][jump target=*test_end]
*RE09
[call storage="RE09.ks"][jump target=*test_end]
*RE10
[call storage="RE10.ks"][jump target=*test_end]
*W01
[call storage="W01.ks"][jump target=*test_end]
*W02
[call storage="W02.ks"][jump target=*test_end]
*W03
[call storage="W03.ks"][jump target=*test_end]
*W04
[call storage="W04.ks"][jump target=*test_end]
*W05
[call storage="W05.ks"][jump target=*test_end]
*W06
[call storage="W06.ks"][jump target=*test_end]
*W07
[call storage="W07.ks"][jump target=*test_end]
*WT01
[call storage="WT01.ks"][jump target=*test_end]
*WT02
[call storage="WT02.ks"][jump target=*test_end]
*WT03
[call storage="WT03.ks"][jump target=*test_end]
*WT04
[call storage="WT04.ks"][jump target=*test_end]

*test_end
[jump target=*test_start]

*test_exit
[return]


