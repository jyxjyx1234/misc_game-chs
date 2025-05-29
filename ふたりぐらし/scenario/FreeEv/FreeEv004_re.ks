
;＜みおの忘れ物を届けに＞
;いってらっしゃい直後、平日のみ
;いつものルーチンでみおの「いってらっしゃい」に選択肢で「いってきます」と返した直後に割り込み発生

;同系統名称ファイルの再読ver。



;選択肢「いってきます」直後は本来、仕事場への移動演出になるが、
;家の前のbgのまま、みおが立ち去る演出が入り、そこからシーンテキストという流れ。
;----------------------------------------------------

[tb_hide_message_window  ]
[mioLeave]

[messageON]
[tb_start_text mode=3 ]
#
……？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みお、カバン……[p]
[_tb_end_text]

[tb_hide_message_window  ]

[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[bgChange time="1000"  method="crossfade"  storage="room_m_o.png"  ]

[messageON]
[tb_start_text mode=3 ]
#
――やっぱりだ。[r]
みお、カバン置き忘れてるぞ！[p]
[_tb_end_text]

[tb_hide_message_window  ]

[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[bgChange time="1000"  method="crossfade"  storage="genkan_d1.png"  ]
[addTime minutes=5]

[calcHP HP=-5]
[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="みお～"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
[bgChange time="1000"  method="crossfade"  storage="kaerimiti_day.jpg"  ]
[addTime minutes=5]

[calcHP HP=-5]
[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="みお～～"  _clickable_img=""  target="*s2next"  ]
[s  ]
*s2next


[mioHyoujou hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
……？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0162.mp3"  ]
[tb_start_text mode=4 ]
#みお
あれ、先生？[l]
[_tb_end_text]

[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="はいこれ"  _clickable_img=""  target="*s3_1"  ]
[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="はぁはぁ、はぁ、はぁはぁ……"  _clickable_img=""  target="*s3_2"  ]
[s  ]

;------------------------------------------------------
*s3_1

[messageON]

[mioHyoujouSabun hyoujou="komruake6_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
……あぁっ！　カバン！[p]
[_tb_end_text]


[jump  target="*s3next"  ]

;------------------------------------------------------
*s3_2

[messageON]
[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
す、すごいことになってる[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0072.mp3"  ]
[tb_start_text mode=3 ]
#みお
ってあれ、先生が持ってるのって……[r]
もしかしなくても、わたし……やっちゃったんですね[p]
[_tb_end_text]


[jump  target="*s3next"  ]

;------------------------------------------------------
*s3next

[messageON]
[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0190.mp3"  ]
[tb_start_text mode=3 ]
#みお
忘れ物、届けてくれたんですね[r]
ありがとうございます[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=4 ]
#みお
あやうく教室で座っているだけのひとに[r]
なるところでした[l]
[_tb_end_text]

[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="535"  y="400"  width=""  height=""  text="それじゃあ、行くね"  _clickable_img=""  target="*s4next"  ]
[s  ]
*s4next

[messageON]
[mioHyoujouSabun hyoujou="komruake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、はい[r]
お気をつけて～！[p]
[_tb_end_text]


[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="kaisya_m.jpg"  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[addTime minutes=30]
[mask_off  time="1000"  effect="fadeOut"  ]


;お仕事演出開始
[return]






















