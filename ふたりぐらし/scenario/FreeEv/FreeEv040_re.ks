
;＜寮暮らしあるある・門限は？＞
;夕食後自由時間前	平日＆休日（休日の場合はデートをしていると発生しない）
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;同系統名称ファイルの再読ver。

;-----------------------------------------------------
[chara_hide_all]
[mioHyoujou hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
あのう、先生[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0141.mp3"  ]
[tb_start_text mode=3 ]
#みお
このおうち門限とかないよーって[r]
お話を前にしましたけど[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
した気がする。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0025.mp3"  ]
[tb_start_text mode=4 ]
#みお
自分がだらけ過ぎないか心配だったんですけど[r]
そういえば平気でした、今気づきました！[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="いっそう精進するように"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="もっとだらけなよ"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;---------------------------------------
*s1_1

[tb_start_text mode=3 ]
#
いっそう精進するように――と、[r]
仙人みたいに言ってみた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、師匠！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
……なんの師匠でしょうか？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
わからない。[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;---------------------------------------
*s1_2

[tb_start_text mode=3 ]
#
もっとだらけなよ――と、[r]
悪魔の誘惑のようにささやいた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0129.mp3"  ]
[tb_start_text mode=3 ]
#みお
ええっ……！？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
う、うぅ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そうだ、欲望を開放するのだ……。[r]
本当のみおを見せてみろ――！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0039.mp3"  ]
[tb_start_text mode=3 ]
#みお
お、お風呂に入浴剤を[r]
２種類入れちゃっても……！？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なんて欲望を隠していたんだこの子は！[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;---------------------------------------
*s1next

[tb_start_text mode=3 ]
#
いっしょに暮らす人がいると[r]
いい意味で自然と生活が引き締まるのだろう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしは見てみたいんですけどね[r]
先生がだらけてるところ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ピシッとしているわけでもないと[r]
思うのだけどなあ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
まあ、ともかくそんな気負わずに[r]
いい感じでやっていこう――と話をした。[p]
[_tb_end_text]

[chara_hide_all]
[return]


















