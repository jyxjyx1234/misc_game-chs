
;＜職場訪問＞
;昼食直後	平日のみ。20日めまでに必ず発生
;昼食の感想セリフ（地の文）が出た直後に割り込みで発生


;みおが先生の職場の場所を把握するイベントでもあるので、
;はやい時期に必ず通過しておいてもらっておくと、他のみおが職場に来る系の話をやりやすくなる、という狙い。

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。


;----------------------------------------------------
[eval exp="f.cloth = f.schoolUniform" ]

[messageON]
[tb_start_text mode=3 ]
#
今日はふだんよりゆったり昼休みがとれる日だ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
けれど、とくにすることもないし、と[r]
外でぼんやり過ごしていたところ――[l]
[_tb_end_text]


[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="580"  y="400"  width=""  height=""  text="おや……？"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[messageON]
[mioHyoujou hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0021.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、こんにちは[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおが現れた！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
久々に学校の用事で近くに来て[r]
現地解散になったので……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
来ちゃいました[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
そうかそうか。[r]
それじゃあせっかく来てくれたんだし――[l]
[_tb_end_text]


[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ちょっと働いてく？"  _clickable_img=""  target="*s3_1"  ]
[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="家まで送ろうか？"  _clickable_img=""  target="*s3_2"  ]
[s  ]

;------------------------------------------------
*s3_1

[messageON]
[mioHyoujouSabun hyoujou="okoru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0165.mp3"  ]
[tb_start_text mode=3 ]
#みお
が、がんばります！[r]
よろしくお願いいたします！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
本当に就業していきかねない顔だった。[p]
[_tb_end_text]


[jump  target="*s3next"  ]


;------------------------------------------------
*s3_2

[messageON]
[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、いえいえ、そんな[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ただちょっと、先生のお仕事場が[r]
見てみたかっただけなので[p]
[_tb_end_text]


[jump  target="*s3next"  ]

;------------------------------------------------
*s3next

[messageInvisible]
[wait  time="500"  ]
[maskStart]
[wait  time="500"  ]
[addTime minutes=20]
[mioHyoujouSabun hyoujou="normal.png" time="0"]
[mask_off  time="1000"  effect="fadeOut"  ]


[messageON]
[mioHyoujouSabun hyoujou="normalake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0017.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、長居しちゃいましたね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0058.mp3"  ]
[tb_start_text mode=3 ]
#みお
はやめに帰れるからお掃除とか、お料理とか、[r]
がんばってやっておきますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0040.mp3"  ]
[tb_start_text mode=3 ]
#みお
それでは[p]
[_tb_end_text]

[tb_hide_message_window  ]

[mioJump]

[mioLeave]

[messageON]


[tb_start_text mode=3 ]
#
トテテテ……と[r]
みおは走り去っていった。[p]
[_tb_end_text]

[calcHP HP=10 minHP=1 rand=true]
[tb_start_text mode=3 ]
#
元気をもらえた。[r]
よぅし、午後も気張っていこう。[p]
[_tb_end_text]

[tb_hide_message_window  ]

[eval exp="f.eatStill = true" ]
;お仕事演出へ
[return]


















