
;＜通勤でみおと途中まで同行＞
;いってらっしゃい直後、平日のみ
;いつものルーチンでみおの「いってらっしゃい」に選択肢で「いってきます」と返した直後に割り込み発生

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0030.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、たまには途中までいっしょに行きませんか？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
本当になんとなくで[r]
理由とかは無いんですが……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そういうことであれば、こちらも断る理由はない。[p]
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
……。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
なんだろう、視線を感じる。[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="みおが注目されてる？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="まさか自分にファンが！？"  _clickable_img=""  target="*s1_2"  ]
[s]

;----------------------------------------------------
*s1_1

[tb_start_text mode=3 ]
#
みおが周囲の視線を集めている――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ふつうに考えればそうなる。[r]
いつもと違うのはみおといっしょに居ることだし。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしの顔、なにかついてます？[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;----------------------------------------------------
*s1_2

[tb_start_text mode=3 ]
#
はっ、恥ずかしい！[r]
どこから見られて――！？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
……先生、どうしました？[r]
そんなにくねくねして[p]
[_tb_end_text]


[jump  target="*s1next"  ]


;----------------------------------------------------
*s1next

[chara_hide_all  time="1500"  wait="true"  ]

[tb_start_text mode=3 ]
#
そんなやりとりをしつつ、[r]
まわりに目をやってみると……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
やっぱりだ。[r]
すれ違う人たちみんなが、みおに振り向く。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……みお本人に自覚は無いようだけども。[p]
[_tb_end_text]

[mioHyoujou hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
……～♪[p]
[_tb_end_text]



[tb_start_text mode=3 ]
#
遠慮も必要ないのについつい覗き見たみおは[r]
とても楽しそうな表情をしている。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
かがやくような華やかさとはちょっと違って、[r]
野の花みたいなさりげない魅力がみおにはある。[p]
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
そんなことを考えながら[r]
みおを見送り、勤め先に向かったのだった。[p]
[_tb_end_text]



[stopbgm  time="500"  fadeout="true"  ]
[messageInvisible]
[return]
;会社に到着したところに合流（移動演出とその時間経過ナシ）



