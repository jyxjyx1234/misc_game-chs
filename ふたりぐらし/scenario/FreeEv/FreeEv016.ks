
;＜みお、料理中に包丁で指先にケガ＞
;平日＆休日、起床直後で発生。
;「朝か<br>起きよう」、bgカーテン開けの直後（みお「おはようございます」の前）に割り込み

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。


;----------------------------------------------------

;↓遠くから声が聞こえてくる、というていなので立ち絵なし
[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0018.mp3"  ]
[tb_start_text mode=4 ]
#みお
あいたっ[l]
[_tb_end_text]



[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="どうかした？"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[mioHyoujou hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
あのう、包丁で指先をちょっと……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=4 ]
#みお
ごはんは作り終わってたので[r]
へいきなんですが……[l]
[_tb_end_text]



[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ばばばばんそうこう！"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="きゅきゅきゅ救急車！"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;----------------------------------------------------
*s2_1

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0033.mp3"  ]
[tb_start_text mode=3 ]
#みお
持ってきてくれるんですか？[r]
ありがとうございます[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/gosogoso.mp3"  ]
[tb_start_text mode=3 ]
#
わたわたわた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
……あの、小さいキズだから[r]
そんな慌てなくても大丈夫ですから[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
そんなおおごとじゃないですよ！？[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next

[wait  time="500"  ]
[maskStart]
[wait  time="500"  ]
[addTime minutes=5]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[tb_start_text mode=3 ]
#
というわけで、[r]
みおに応急手当をした。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ごく浅いキズだったようだし[r]
すぐにふさがってくれそうだ。[p]
[_tb_end_text]

[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ……[r]
先生に手当てしてもらっちゃいました[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
こんな小さなキズだったのに[r]
心配してくれてありがとうございます[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
どういたしまして。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃあごはんにしましょうか[p]
[_tb_end_text]

[return]
;暗転SEでのいつものごはん演出～感想に合流















