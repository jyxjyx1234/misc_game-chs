
;＜みおとLINE＞
;会社到着直後	平日のみ。15日めまでに必ず発生→初回verは７日め（金）に発生で固定
;いつものルーチンで会社についた直後に発生

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[playse  volume="100"  time="1000"  buf="1"  storage="se/chatbell.mp3"  ]


[messageON]
[tb_start_text mode=3 ]
#
お……？[p]
[_tb_end_text]
[messageInvisible  ]

;LINE風画面開始
;いまは母親との会話用の画像を仮置き。対応素材が揃ったらファイル名を修正。

[tb_start_tyrano_code]
;チャットツールプラグインの読み込み
[plugin name="chat_story"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;レイヤ２にスマートフォンの枠画像を配置
[image layer=2 left=450 top=100 width=420 storage="chat/sumafo_mio.png" time=1000 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;フォントサイズと色の設定とチャット用のコンフィグを調整
[font size=16]
[font color=0x3b372f ]
[chat_config layer=2 zindex=2  top=220 left=480 width=350 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="先生" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="先生ですよね？" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="届いてますか？" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[keyframe name="opacityChange" ]

[frame p=0% opacity="1" ]

[frame p="50%" opacity="1" ]

[frame p="100%" opacity="0.5" ]

[endkeyframe]

[ptext layer="3" align="right"  x="480" width="350" y="520" text="どう返そうか？" size="32" name="response"  color="0xF5F5F5" ]
[kanim name="response" keyframe="opacityChange" time="2000" direction="alternate"  count="infinite" ]

[glink  color="btn_03_lime"  storage="FreeEv/FreeEv002.ks"  size="18"  x="746"  y="572"  width=""  height=""  text="うん"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_03_lime"  storage="FreeEv/FreeEv002.ks"  size="18"  x="620"  y="637"  width=""  height=""  text="どちらさまですか？"  _clickable_img=""  target="*s1_2"  ]
[s]

;-----------------------------------------------------
*s1_1
[stop_kanim name="response" ]
[free layer="3" name="response" ]
[font size=16]
[font color=0x3b372f ]
[chat_config layer=2 zindex=2  top=220 left=480 width=350 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="うん" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="あっ" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="よかったです" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1_2
[stop_kanim name="response" ]
[free layer="3" name="response" ]
[font size=16]
[font color=0x3b372f ]
[chat_config layer=2 zindex=2  top=220 left=480 width=350 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="どちらさまですか？" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="えっ" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="ごめんなさいまちがえました！" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="冗談だよ" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[wait time="&f.WAIT_TIME" ]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="えっ？　先生？" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="right" name="自分" text="うん" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[wait time="&f.WAIT_TIME" ]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="びっくりしました" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1next

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="あの" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="連絡先交換しただけで" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="ちゃんとやりとりできるか試してなかったから……" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[wait time="&f.WAIT_TIME" ]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="文章は苦手なので" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="なにかあったら電話しちゃうと思うんですが" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="よろしくお願いしますね" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[wait time="&f.WAIT_TIME" ]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="わかったよ" face="chat/icon/sensei.png" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="こっちでもよろしく、みお" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="はいっ"  delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]
[glyph left="920" top="588" line="nextpage.png" folder="data/others/plugin/theme_kopanda_bth_01/image/system"   fix="true" ]
[p]
[glyph left="0" fix="false" ]
[wait time="&f.WAIT_TIME" ]

[tb_start_tyrano_code]
;チャット画面クリア
[chat_clear time=20 ]
[freeimage layer="2" time="20" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;フォントサイズ戻す
[resetfont]
[_tb_end_tyrano_code]


;-------

[messageON]

[tb_start_text mode=3 ]
#
――よし、やるかぁ。[p]
[_tb_end_text]

[messageOFF]

;お仕事演出へ
[return]



























