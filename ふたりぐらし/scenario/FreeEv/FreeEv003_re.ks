
;＜アイロンがけ＞
;夕食後自由時間前	平日＆休日（休日の場合はデートをしていると発生しない）
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。

;休日の場合はお出かけ着のかっこうでアイロンがけをすることになりそうだけど、
;そのへん気にすると他のイベントも制約がついて来るので、現状まあいいかというノリで。

;同系統名称ファイルの再読ver。

;----------------------------------------------------

[messageON]
[tb_start_text mode=3 ]
#
と、思っていたところ――[p]
[_tb_end_text]

[mioHyoujou hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
よいしょ、よいしょ[p]
[_tb_end_text]

[mioLeave]

[mioHyoujou hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
よいしょ、よいしょ[p]
[_tb_end_text]

[mioJump]

[tb_start_text mode=3 ]
#
お、これは……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0216.mp3"  ]
[tb_start_text mode=4 ]
#みお
いまから、アイロンがけをします[l]
[_tb_end_text]

[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="なるほど"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[tb_start_text mode=3 ]
#
みおの服だけではなく、[r]
こちらのシャツなどもやってくれている。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
～♪[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの手際の良さもあって[r]
ついつい見入ってしまう。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="rakuake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
[tb_start_text mode=4 ]
#みお
先生もやってみますか？[l]
[_tb_end_text]

[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="遠慮します"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="ではちょっとだけ"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;-------------------------------------------
*s2_1

[messageON]
[tb_start_text mode=3 ]
#
丁重に辞退させていただいた。[r]
焦がしそうなので。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうですか？[r]
じゃあわたしがやっちゃいますね[p]
[_tb_end_text]



[jump  target="*s2next"  ]

;-------------------------------------------
*s2_2
[messageON]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[tb_start_text mode=3 ]
#みお
じゃあ、ここをこう持って……[r]
はい、いいですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……てやっ！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0192.mp3"  ]
[tb_start_text mode=3 ]
#みお
わあー、上手ですよ先生ー！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
へへっ……[p]
[_tb_end_text]



[jump  target="*s2next"  ]

;-------------------------------------------
*s2next


[wait  time="500"  ]
[maskStart]
[bgChange time="1"  method="crossfade"  storage="bk100.jpg"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[addTime minutes=20]
[mask_off  time="1000"  effect="fadeOut"  ]


[messageON]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade"  storage="room_n_c_lit.png"  ]

[tb_start_text mode=3 ]
#
その後もみおを眺め、[r]
アイロンがけの一部始終を見届けた。[p]
[_tb_end_text]

[mioHyoujou hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0027.mp3"  ]
[tb_start_text mode=3 ]
#みお
お付き合い、ありがとうございました[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
お洋服がパリッとしていると[r]
いい気持ちですよね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うんうん。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
それでは改めて、[r]
くつろぎの時間に入るとしよう。[p]
[_tb_end_text]


;自由行動パート開始
[return]

























