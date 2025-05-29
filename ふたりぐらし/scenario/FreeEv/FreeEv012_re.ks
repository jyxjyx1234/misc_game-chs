;＜通勤でみおと途中まで同行＞
;いってらっしゃい直後、平日のみ
;いつものルーチンでみおの「いってらっしゃい」に選択肢で「いってきます」と返した直後に割り込み発生

;同系統名称ファイルの再読ver。

;----------------------------------------------------

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0030.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、途中までいっしょに行きませんか？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いつぶりかのなんとなくのお誘いのようだ。[r]
もちろん構わない。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いっしょに歩くとお互いちょっと[r]
遠回りだけれど、みおと並んで歩くことにした。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="enryo.png"]

[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
[bgChange time="1000"  method="crossfade"  storage="kaerimiti_day.jpg"  ]
[addTime minutes=15]


[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="1"  storage="BGS/Town.mp3"  ]

[tb_start_text mode=3 ]
#
……やはりだ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
視線を感じる。[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="注目されてる、みおが"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="注目されてる、自分が"  _clickable_img=""  target="*s1_2"  ]
[s]

;----------------------------------------------------
*s1_1

[tb_start_text mode=3 ]
#
それはそうだ。自分も気が付くと、[r]
みおの顔をまじまじと眺めてたりする。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしの顔、なにかついてます？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なんでもないよとごまかしておいた。[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;----------------------------------------------------
*s1_2

[tb_start_text mode=3 ]
#
ふっ……[r]
そうだろう、そうだろう。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
こんなかわいいみおと連れ立って歩いているのだ。[r]
こいつは何者なんだと勘ぐってしまうものさ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生……？
ひとりごとですか？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
まあ、つまり、みおが注目されてるってことになるが。[p]
[_tb_end_text]


[jump  target="*s1next"  ]


;----------------------------------------------------
*s1next

[chara_hide_all  time="1500"  wait="true"  ]

[tb_start_text mode=3 ]
#
……本人に自覚は無いようだけども、[r]
みおはやっぱり人目を引くのだ。[p]
[_tb_end_text]

[mioHyoujou hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
……～♪[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[addTime minutes=15]
[mask_off  time="1000"  effect="fadeOut"  ]


[tb_show_message_window  ]
[tb_start_text mode=3 ]
#
ちょっぴり優越感にひたりながら[r]
みおを見送り、勤め先に向かったのだった。[p]
[_tb_end_text]

[stopbgm  time="500"  fadeout="true"  ]
[messageInvisible]

[return]
;会社に到着したところに合流（移動演出とその時間経過ナシ）


