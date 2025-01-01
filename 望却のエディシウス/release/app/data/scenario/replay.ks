;=========================================
; 回想モード　画面作成
;=========================================
*start
@layopt layer=message0 visible=false
@clearfix
[clearfix name="role_button"]
[stop_keyconfig]
[cm]

[mask time="200"]

; 初期化
[chara_hide_all layer=0 time=0 wait=false]
[chara_hide_all layer=1 time=0 wait=false]
[chara_hide_all layer=2 time=0 wait=false]
[free_layermode name="particles"]

[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]


*replaypage
[cm]
[button graphic="../../tyrano/images/system/menu_btn_back.png" enterimg="../../tyrano/images/system/menu_btn_back2.png"  target="*backtitle" x="20" y="910" clickse="button/button_cancel.mp3" ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

;;;バックログの初期化
[iscript]
tf.system.backlog=[];
[endscript]

*replayview

@jump target=&tf.target_page

*page_0
;;;1段目
[replay_image_button name="CG1" graphic="CG1/CG1_tuujou_1.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=38 y=148 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG2" graphic="CG2/CG2_1_1_1.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=411 y=148 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG4" graphic="CG4/CG4_age_6.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=783 y=148 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG21" graphic="CG21/CG21_01.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=1156 y=148 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG19_1" graphic="CG19/CG19_shirt_n_3.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=1529 y=148 width=352 height=197 folder="bgimage"]

;;;2段目
[replay_image_button name="CG6" graphic="CG6/CG6_zoom_aka_6.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=38 y=379 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG7" graphic="CG7/CG7_misounyu_teoroshi_1.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=411 y=379 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG19_2" graphic="CG19/CG19_yoru_shirt_3.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=783 y=379 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG8" graphic="CG8/CG8_ushiro.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=1156 y=379 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG9" graphic="CG9/CG9_sasumae_1.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=1529 y=379 width=352 height=197 folder="bgimage"]

;;;3段目
[replay_image_button name="CG10" graphic="CG10/CG10_zoom_1.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=38 y=610 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG20" graphic="CG20/CG20_tuujou_4_3.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=411 y=610 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG13" graphic="CG13/CG13.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=783 y=610 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG14" graphic="CG14/CG14_3_10.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=1156 y=610 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG19_3" graphic="CG19/CG19_shihuku_n_4.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=1529 y=610 width=352 height=197 folder="bgimage"]

;;;4段目
[replay_image_button name="CG1_2" graphic="CG1/CG1_n_tuujou_8.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=411 y=841 width=352 height=197 folder="bgimage"]
[replay_image_button name="CG15" graphic="CG15/CG15_1.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=783 y=841 width=352 height=197 folder="bgimage"]
[replay_image_button name="BAD_CG" graphic="BAD_CG/ED2.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=1156 y=841 width=352 height=197 folder="bgimage"]
[replay_image_button name="OPreplay" graphic="OPreplay.jpg" no_graphic="../../tyrano/images/system/noimage2.png" x=1529 y=841 width=352 height=197 folder="bgimage"]

;用意する数に応じて変動させる。また、以下のようにシナリオファイル上にタグを用意する必要がある。
;リプレイ開始位置	[setreplay name="replay1" storage="sceneXX.ks" target="replay1"]
;リプレイ終了位置	[endreplay]

[mask_off time="200"]

@jump target ="*common"


*common

[s]

*backtitle
[cm]
[freeimage layer=1]
;[awakegame]

[eval exp="tf.replayModeBack = 1"]
[jump storage="title.ks" target="*replaymode_back"]

*nextpage
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[cm]

[iscript]
    tf.flag_replay = true;
[endscript]

[free layer=1 name="label_replay"]

@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage


