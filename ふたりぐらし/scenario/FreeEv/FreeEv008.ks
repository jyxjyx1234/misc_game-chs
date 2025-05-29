
;＜お茶菓子補充要請＞
;帰宅直後	平日のみ	で発生。
;かつ、お茶とお菓子がなにも無い状態でのみ発生する（確定で発生するわけではなく、その確率が出て来る）
;お仕事が終わり「仕事が終わった。／さあ、帰るぞ。」直後に割り込みで発生。

;また、ネットショッピング解禁前は発生しない。


;このイベントの場合は再読の場合もReなども無く、おなじもの（下記）が表示されます。


;----------------------------------------------------

[playse  volume="100"  time="1000"  buf="1"  storage="se/chatbell.mp3"  ]

[messageON]
[tb_start_text mode=3 ]
#
おっと、みおからのメッセージだ。[p]
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
[chat_config layer=2 zindex=2  top=220 left=480 width=360 height=600 under_height=300 face_width=40 name_font_size=12 margin_top=0 left_bgcolor=0xffffff ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="先生、今お帰りですか？" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="うん" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="ちょうどよかった" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="お茶とかお菓子がなくなっていたので" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;画面左側にメッセージを表示
[chat_talk pos="left" name="みお" text="もし必要なら帰り道で買ってきてくださいね" delay=500 face="chat/icon/mio.png"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[chat_talk pos="right" name="自分" text="了解" face="chat/icon/sensei.png"]
[_tb_end_tyrano_code]

[glyph left="920" top="588" line="nextpage.png" folder="data/others/plugin/theme_kopanda_bth_01/image/system"   fix="true" ]
[p]
[glyph left="0" fix="false" ]

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
――だ、そうだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
必須ではないようだから[r]
こっちの気が向いたら、ぐらいの話だろう。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ネットショッピングで買うのもアリだし、[r]
面倒なら今日無理に用意することも無い。[p]
[_tb_end_text]

[tb_hide_message_window  ]

;元のフローに戻って会社からのｂｇ移動と寄り道お買い物へ。
[return]