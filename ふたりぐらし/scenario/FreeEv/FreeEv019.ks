
;＜クラスメイトバレ＞
;昼食直後	平日のみ。
;昼食の感想セリフ（地の文）が出た直後に割り込みで発生

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;休日デート（ショッピングモール含む）をしたことがあり、かつ、
;FreeEv002（みおと初LINE）が既読状態のとき、発生

;----------------------------------------------------

;ほとんどLINE会話で進行

[playse  volume="100"  time="1000"  buf="1"  storage="se/chatbell.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
お、みおからメッセージだ。[p]
[_tb_end_text]

[messageInvisible  ]

;----ここからLINE風


;LINE風画面開始

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
[chat_config layer=2 zindex=2  top=220 left=480 width=360 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="先生、こんにちは" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="right" name="自分" text="こんにちは" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="right" name="自分" text="お弁当、今日もおいしかったよ" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="よかったです" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="あのう" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="right" name="自分" text="？" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="この間の日曜日、先生といっしょにお出かけしたじゃないですか" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="right" name="自分" text="うん" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="クラスメイトの子も近くに居たみたいで" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="あの時のこといろいろ聞かれてしまって……" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="それで、だいたい事情は説明したんです" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="寮の火事があったから親戚のおうちに、って" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="ウソを言うわけにもいかないし" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="そうだね" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="でも最後に「その親戚のひととはどういう関係？」って聞かれて" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="わたし、答えられなくて" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="どう言えばよかったんでしょう？" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]



[glink  color="btn_03_lime"    size="18"  x="576"  y="572"  width=""  height=""  text="きょうだいみたいな親戚？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_03_lime"    size="18"  x="735"  y="637"  width=""  height=""  text="恋人？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;-----------------------------------------------------
*s1_1
[font size=16]
[font color=0x3b372f ]
[chat_config layer=2 zindex=2  top=220 left=480 width=360 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="きょうだいみたいな親戚？" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="そ、そうですよね" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="そういうふうに言えばよかったんだ" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1_2
[font size=16]
[font color=0x3b372f ]
[chat_config layer=2 zindex=2  top=220 left=480 width=360 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="恋人？" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="え" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="……？" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="みおー？" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="すみません、ちょっとびっくりして" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="えとあの" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="ありがとうございます" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]



[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1next

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="うん" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="じゃ、じゃあ次があったら答える時の参考にしますね" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]


[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="お休みのところすいませんでした" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="午後もがんばりましょう！" delay="1000" face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="オー" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[p]
;----ここまでLINE風


[tb_start_tyrano_code]
;チャット画面クリア
[chat_clear time=20 ]
[freeimage layer="2" time="20" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;フォントサイズ戻す
[resetfont]
[_tb_end_tyrano_code]

[messageON]

[tb_start_text mode=3 ]
#
みおも学校がんばってるんだな……[p]
[_tb_end_text]

;本線に復帰

























