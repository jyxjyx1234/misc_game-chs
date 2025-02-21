
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		mp.graphic = mp.graphic.split(',');
		mp.tmp_graphic = mp.graphic.concat();
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
		
        if(typeof mp.thumb !="undefined"){
            mp.tmp_graphic[0] = mp.thumb;
        }
	
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]
	
	[iscript]
		
		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}
	
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_replay_open==true"]
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="replay.ks" target="*no_image" folder="bgimage" ]
	[endif]
	
[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
    
    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]
        
        @layopt page="fore" layer="message0" visible=false
        ;システムボタンを非表示にするなど
        [hidemenubutton]
        
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]

[plugin name="bar"]

;改ページを入れる
[macro name="改ページ"]
[l][r][er][resetfont]
#

[endmacro]

;ハートマークを入れる
[macro name="ハート"]

    [graph storage="heart.png"]

[endmacro]

;フラッシュを入れる

[macro name="フラッシュ"]
;メッセージウィンドウを非表示
[layopt layer="message0" visible="false"]
[layopt layer="fixlayer" visible="false"]

[mask effect="fadeIn" color="%color|0xF5F5F5" graphic="%graphic" folder="image" time="120"]
[mask_off effect="fadeOut" time="120"]
[mask effect="fadeIn" color="%color|0xF5F5F5" graphic="%graphic" folder="image" time="120"]
[mask_off effect="fadeOut" time="120"]

[layopt layer="message0" visible="%visible|true"]
[layopt layer="fixlayer" visible="%visible|true"]
[endmacro]

;ルビ操作

[plugin name=custom_ruby scale=0.33 x=8 y=-2]
;キャラカラー

[macro name=にぃな]
[charaname type="text" height="0" x="35" y="796" cond="f.mes == 1"]
[charaname type="text" height="0" x="1095" y="796" cond="f.mes == 2"]
[charaname_font face="宋体" color="deeppink"  size="42"  bold="true"  ]
#妮娜
[font size=42 face=宋体 color="deeppink" shadow="thistle"]
[endmacro]

[macro name=僕]
[charaname type="text" height="0" x="35" y="792" cond="f.mes == 1"]
[charaname type="text" height="0" x="1095" y="792" cond="f.mes == 2"]
[charaname_font face="宋体" color="midnightblue"  size="42"  bold="true"  ]
#我
[font face="宋体" size=42 color="midnightblue" shadow="thistle" bold="true"]
[endmacro]

[macro name=文章]
;[charaname_font  color="midnightblue"  size="40"  bold="true"  ]
#
[font face="宋体" size=42 color="midnightblue" shadow="thistle" bold="true"]
[endmacro]


;エロ音

[macro name=エロ音1]
[font shadow="thistle" color= deeppink]
[endmacro]

[macro name=エロ音2]
[font shadow="lightslategray" color= midnightblue]
[endmacro]

;表情系

[macro name="アイコン"]
[image * layer="0" page=fore name="icon" folder="bgimage" zindex="100"]
[endmacro]

[macro name="その他2"]
[image * layer="0" page=back name="sonota2" folder="bgimage" zindex="90"]
[endmacro]

[macro name="その他"]
[image * layer="0" page=back name="sonota" folder="bgimage" zindex="90"]
[endmacro]

[macro name="文字"]
[image * layer="0" page=back name="mozi" folder="bgimage" zindex="80"]
[endmacro]

[macro name="汁"]
[image * layer="0" page=back name="kao" folder="bgimage" zindex="80" width="1920" height="1080" ]
[endmacro]

[macro name="男"]
[image * layer="0" page=back name="otoko" folder="bgimage" zindex="70" width="1920" height="1080" ]
[endmacro]

[macro name="涙"]
[image * layer="0" page=back name="kao" folder="bgimage" zindex="60" width="1920" height="1080" ]
[endmacro]

[macro name="眉"]
[image * layer="0" page=back name="kao" folder="bgimage" zindex="50" width="1920" height="1080" ]
[endmacro]

[macro name="目"]
[image * layer="0" page=back name="kao" folder="bgimage" zindex="50" width="1920" height="1080" ]
[endmacro]

[macro name="口"]
[image * layer="0" page=back name="kao" folder="bgimage" zindex="50" width="1920" height="1080" ]
[endmacro]

[macro name="頬"]
[image * layer="0" page=back name="hoho" folder="bgimage" zindex="40" width="1920" height="1080" ]
[endmacro]

[macro name="下着"]
[image * layer="0" page=back name="huku" folder="bgimage" zindex="30" width="1920" height="1080" ]
[endmacro]

[macro name="汗"]
[image * layer="0" page=back name="kao" folder="bgimage" zindex="20" width="1920" height="1080" ]
[endmacro]

[macro name="体"]
[image * layer="0" page=back name="karada" folder="bgimage" zindex="10" width="1920" height="1080" ]
[endmacro]

[macro name="背景"]
[image * layer="0" page=back folder="bgimage" width="1920" height="1080" ]
[endmacro]

;絵を変更

[macro name="絵変更"]

;メッセージウィンドウを非表示
[layopt layer="message0" visible="false"]
[layopt layer="fixlayer" visible="false"]

[wait time=10]

[stop_keyconfig]
;裏ページトランス
[trans layer=0 time=%time|500]
[wt]
[start_keyconfig]

;裏レイヤ消去
[freeimage layer="0" page=back]

;裏レイヤにコピー・顔レイヤ消去
[backlay]
;[free layer="0" page="back" name="otoko" time="0"]
;[free layer="0" page="back" name="hoho" time="0"]
[free layer="0" page="back" name="kao" time="0"]

;メッセージウィンドウを表示してゲーム再開
[layopt layer="message0" visible="%visible|true"]
[layopt layer="fixlayer" visible="%visible|true"]
[endmacro]

[macro name="黒画面"]

;メッセージウィンドウを非表示
[layopt layer="message0" visible="false"]
[layopt layer="fixlayer" visible="false"]

;黒画面トランス
[mask time=1000]

;バー消去※いけたら
[bar_hide  time="0"  wait="false"  name=""  ]

;裏レイヤ消去
[freeimage layer="0" page=back]
[freeimage layer="0" page=fore]
[mask_off time=0]

;メッセージウィンドウを表示してゲーム再開
[layopt layer="message0" visible="%visible|true"]
[layopt layer="fixlayer" visible="%visible|true"]
[endmacro]

[macro name="メッセージ消去"]
[layopt layer=message0 visible=false]
[layopt  layer="fixlayer"  visible="false"  ]
[endmacro]

[macro name="選択画像"]
[glink * width="60" height="30"]
[endmacro]

[macro name="選択"]
;[glink * color="btn_07_blue" size="40" x="1600" y="230"]
;[glink * graphic="sentaku.png" size="40" x="1600" y="230"]
[glink * graphic="sentaku.png" size="40" x="1600" y="0" width="160" ]
[endmacro]

[macro name="選択出現"]
[glink_show dx="1550" dy="25" time="0" margin="10" centering="false" method="none" ]
[endmacro]

[macro name="選択出現2"]
[glink_show dx="1725" dy="30" time="0" margin="10" centering="false" method="none" ]
[endmacro]

[macro name="快感ランダム"]
[eval exp="min = +mp.min"]
[eval exp="max = +mp.max"]
[eval exp="limit = +mp.limit"]
[eval exp="f.kaikan_plus = Math.floor(Math.random() * (max + 1 - min) + min)"]

[eval exp="f.kaikan_now = f.kaikan_now + f.kaikan_plus"]
[eval exp="f.kaikan_now = limit" cond="f.kaikan_now > limit"]

[endmacro]

[call  storage="preload.ks"  target="*プリロード"  ]

[return]
