
;＜停電で抱き着き＞
;夕食後自由時間前	平日＆休日（休日の場合はデートをしていると発生しない）
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;同系統名称ファイルの再読ver。

;----------------------------------------------------

[tb_hide_message_window  ]

[wait  time="500"  ]
[mask  time="100"  effect="fadeIn"  color="0x000000"  ]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[mask_off  time="100"  effect="fadeOut"  ]



[messageON]
[tb_start_text mode=3 ]
#
おっ？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひあっ！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
とつぜん電気が消えた。[r]
ひさびさの停電だろうか。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0174.mp3"  ]
[tb_start_text mode=4 ]
#みお
わっ、わわわっ[r]
先生どこですかぁっ[l]
[_tb_end_text]



[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="こっちだよ"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="じっとしてて"  _clickable_img=""  target="*s1_2"  ]
[s]

;---------------------------------------
*s1_1

[messageON]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
は、はいぃ～……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
とて、とて、とて……と[r]
みおがこちらへ近づいて来る。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
姿は見えないが、おっかなびっくり歩く様子が[r]
ありありと想像できる。[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;---------------------------------------
*s1_2

[messageON]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうは言ってもぉ……[r]
こわいですぅ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
であれば、こちらから近づいて[r]
安心させるべきだろうか。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
おっ、暗闇の中を踏み出すのは[r]
自室の中でも意外にこわいな。[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;---------------------------------------
*s1next

[messageON]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0015.mp3"  ]
[tb_start_text mode=4 ]
#みお
あっ[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="あっ"  _clickable_img=""  target="*s2next"  ]
[s]
*s2next

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
……っ！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
つまづいた拍子に抱き合う格好になってしまった。[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="room_n_c_lit.png"  ]
[mioHyoujouSabun hyoujou="fuan_red.png" time="0"]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[tb_start_text mode=3 ]
#
と、同時に明かりが戻る。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komruake4_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=4 ]
#みお
あ……えっと、支えてくれて、[r]
ありがとうございます[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="いえいえ"  _clickable_img=""  target="*s3next"  ]
[s]
*s3next


[mioHyoujouSabun hyoujou="happyake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
とにかく今回もすぐに直ってくれて[r]
よかったですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="rakuake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
こういうとき、頼れる人がいると[r]
ぜんぜん違いますね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……と、みおはまっすぐな笑顔を[r]
向けてくれたのだった。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="kouen_n.jpg"  ]
[wait  time="500"  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


;自由行動パートへ
[return]


