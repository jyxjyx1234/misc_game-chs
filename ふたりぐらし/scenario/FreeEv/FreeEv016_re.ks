
;＜みお、料理中に包丁で指先にケガ＞
;平日＆休日、起床直後で発生。
;「朝か<br>起きよう」、bgカーテン開けの直後（みお「おはようございます」の前）に割り込み

;同系統名称ファイルの再読ver。


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
またお料理中に指先をチクッとしちゃいましたぁ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=4 ]
#みお
ごはんは作り終わってますし[r]
キズもほんとに小さいんですが……[l]
[_tb_end_text]



[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="小さい方が痛いよね"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="でも手当てはきちんと"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;----------------------------------------------------
*s2_1

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうなんですよね、ふしぎです[p]
[_tb_end_text]


[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
お気遣いありがとうございますぅ……[p]
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


[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ……[r]
先生に手当てしてもらっちゃいました[p]
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















