;ビルダーでシナリオごとに必ず呼び出されるシステム系のKSファイル

;メッセージウィンドウを非表示にする
[macro name="tb_show_message_window"]
	[layopt  layer="message0"  visible="true"  ]
	[layopt  layer="fixlayer"  visible="true"  ]
	[eval exp="f.isWindow = true" ]
[endmacro]

;メッセージウィンドウを表示する
[macro name="tb_hide_message_window"]
	[layopt  layer="message0"  visible="false"  ]
	[layopt  layer="fixlayer"  visible="false"  ]
	[iscript]
		$(".fixlayer").each(function () {
			if ($(this).hasClass("statusIcon")) {
				$(this).show();
			}
		});
	[endscript]
	[eval exp="f.isWindow = false" ]
[endmacro]

[macro name="_tb_system_call"]
	[call storage=%storage ]
[endmacro]

[macro name="tb_image_show"]
	[image storage=%storage layer=1 page=fore visible=true y=%y x=%x width=%width height=%height time=%time ]	
[endmacro]
	
[macro name="tb_image_hide"]
	[freeimage layer=1 page=fore time=%time]	
[endmacro]

[macro name="tb_ptext_show"]

[if exp="mp.anim=='true'" ]
	[mtext layer=2 text="%text" y=%y x=%x size=%size face=%face color=%color name=%name bold=%bold time=%time fadeout=%fadeout wait=%wait in_effect=%in_effect out_effect=%out_effect edge=%edge shadow=%shadow ]
[else]	
	[ptext layer=2 text="%text" y=%y x=%x size=%size face=%face color=%color name=%name bold=%bold time=%time edge=%edge shadow=%shadow  ]
[endif]

[endmacro]
	
[macro name="tb_ptext_hide"]
	[freeimage layer=2 time=%time ]
[endmacro]

[macro name="tb_eval"]
	[eval exp=%exp ]	
[endmacro]

[macro name="tb_keyconfig"]

[if exp="mp.flag=='1'" ]
    [start_keyconfig]
[else]	
    [stop_keyconfig]
[endif]

[endmacro]


;生ティラノ用のマーカー
[macro name="tb_start_tyrano_code"]
[endmacro]

[macro name="_tb_end_tyrano_code"]
[endmacro]

[macro name="tb_start_text"]
[endmacro]

[macro name="_tb_end_text"]
[endmacro]


[macro name="lr"]
[l][r]
[endmacro]

;キャラクター揺らす
[macro name="tb_chara_shake"]

[iscript]

tf.swing_1 = mp.swing;
tf.swing_2 = mp.swing*2*-1;

[endscript]

[keyframe name="shake"]

[if exp="mp.direction=='x'"]
[frame p=0% x="0" ]
[frame p=50% x="&tf.swing_1" ]
[frame p=100% x="0" ]
[else]
[frame p=0% y="0" ]
[frame p=50% y="&tf.swing_1" ]
[frame p=100% y="0" ]
[endif]

[endkeyframe]

[kanim name="%name" keyframe="shake" count=%count|5 time=%time|500]

[endmacro]


;;;;;;;;; CG・回想モード ;;;;;;;;;;;;;;;

[iscript]
	
	if(sf.cg_id){
    }else{
    	sf.cg_id = {};
    }
	
	if(sf.replay_id){
    }else{
    	sf.replay_id = {};
    }
	
[endscript]




[macro name="tb_cg_image_button"]
	
	[iscript]
		
		tf.is_cg_open = false;
		if(sf.cg_id[mp.id]){
			tf.is_cg_open = true;
		}
		
		mp.target = "*"+mp.id;
		
        
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button name="_tb_system" graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="system/master_cg.ks" target=&mp.target role="sleepgame" ]
	[else]
		[image storage=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height layer="1" visible="true" folder="image" ]
	[endif]
[endmacro]

[macro name="tb_cg"]
	
	[iscript]

        sf.cg_id[mp.id] = "on";
    
    [endscript]

[endmacro]


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


[macro name="tb_replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_id[mp.id]){
			tf.is_replay_open = true;
		}
		
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button name="_tb_system" graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage=&mp.storage target=&mp.target exp="tf._tb_is_replay=true;" role="sleepgame" ]
	[else]
		[image name="_tb_system" storage=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height layer="1" visible="true" folder="image" ]
	[endif]
	
[endmacro]

[macro name="tb_replay"]
	
	[iscript]

        sf.replay_id[mp.id] = "on";
        
    [endscript]
    
    [if exp="tf._tb_is_replay==true"]
        [awakegame]
    [endif]

[endmacro]

[macro name="tb_replay_start"]
	
    [if exp="tf._tb_is_replay==true"]
        
        [cm]
        [clearfix name="_tb_system"]	
        [freeimage layer="1"]

    [endif]

[endmacro]


[macro name="tb_clear_images"]
[cm]
[clearfix name="_tb_system" ]	
[freeimage layer="1"]
[endmacro]




[macro name="tb_fuki_start"]

@layopt layer=message0 visible=false

[position layer="message1" width=350 height=237 top=417 left=20 ]
[position layer="message1" page=fore margint=5 marginl=10 marginr=10 marginb=10 vertical=false opacity="0" radius="0" color="0x000000" ]

@layopt layer=message1 visible=true

[fuki_start layer="message1"]

[current layer="message1"]

[endmacro]


[macro name="tb_fuki_stop"]

@layopt layer=message0 visible=true

@layopt layer=message1 visible=false

[fuki_stop layer="message1"]

[current layer="message0"]


[endmacro]












