
;＜寮暮らしあるある・プリンの名前＞
;食後自由時間前	平日のみ	で発生。
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;プリンの所持数が７以下の時のみ＆配達でお菓子詰め合わせを頼んでいないときにのみ発生
;（所持数を実際に増やすかどうかは実装時に再検討）

;同系統名称ファイルの再読ver。

;----------------------------------------------------

[tb_start_text mode=3 ]
#
意味もなく冷蔵庫を開けてみると――[r]
覚えのないプリンが増えていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
プリンには、名前が書かれている。[r]
「みお」と「先生」の２種類が。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、見つけましたか[r]
美味しそうだったので買ってみたんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0124.mp3"  ]
[tb_start_text mode=4 ]
#みお
お好きなタイミングで[r]
食べてくださいね[l]
[_tb_end_text]


[glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="また名前書いてる"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="プリン派……？"  _clickable_img=""  target="*s1_2"  ]
[s  ]


;-----------------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0122.mp3"  ]
[tb_start_text mode=3 ]
#みお
寮と違うので書かなくてもいいのは[r]
わかってるんですけど[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
美味しそうな方のプリンに[r]
先生のお名前を書いたんですよ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
美味しそうな方……というが[r]
おなじ種類のおなじプリンに見える。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
まさかみおは同規格プリンの[r]
個体差がわかるのか……？[p]
[_tb_end_text]



[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
プリン派なの……ですか？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0134.mp3"  ]
[tb_start_text mode=3 ]
#みお
ということは、プリンにはライバルになる[r]
別のナニナニ派～とかがあるんでしょうか？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
――……たしかに、そこまで考えてなかったが[r]
そういう理屈になるかもしれない。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
プリンの永遠のライバル、[r]
あるとしたらなんでしょうね？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……考えはじめると眠れなくなりそうだ。[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1next

[tb_start_text mode=3 ]
#
とにかくみおにお礼を述べて[r]
後ほど一緒に食べようと約束をした。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、お誘い待ってます[p]
[_tb_end_text]


[return]

























