
;＜お弁当とりちがえ＞
;昼食前	平日のみ　　で発生
;いつものルーチンでのお仕事（午前）の演出後、「昼休憩だ……」の直後に割り込みで発生。

;同系統名称ファイルの再読ver。

;----------------------------------------------------

[messageON]

[tb_start_text mode=3 ]
#
お弁当を取り出すと[r]
いつもとは雰囲気が違っていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ふだんより一回り小さいお弁当箱――
こ、これは……！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/tyakusin1.mp3"  ]

[tb_start_text mode=4 ]
#
みおから電話がかかってきた。[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="もしもし"  _clickable_img=""  target="*s1next"  ]
[s]
*s1next

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=4 ]
#みお
先生っ、そっちのお弁当ってどうなってますか！？[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="多分みおのがコッチにある"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="行列ができてる"  _clickable_img=""  target="*s2_2"  ]
[s]

;----------------------------------------------------
*s2_1

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0161.mp3"  ]
[tb_start_text mode=3 ]
#みお
あー……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0174.mp3"  ]
[tb_start_text mode=3 ]
#みお
またやってしまいました……
ごめんなさい[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
行列ってどういうことです！？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
行列は冗談だけど、きれいなお弁当だから[r]
周囲に覗き込まれたりは、実際にある。[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0190.mp3"  ]
[tb_start_text mode=3 ]
#みお
また先生とじぶんのお弁当を[r]
取り違えてしまいました……すみません……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0151.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしのぶん、よかったら[r]
先生が召し上がってください[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
――と、みおは最後まで恐縮しきった様子だった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
通話を終え、改めてお弁当を取り出す。[r]
これはこれでおもしろいサプライズじゃないか。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ありがたく、いつもよりゆっくりと[r]
噛みしめながら昼食をいただいた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[calcHP HP=10 minHP=1 rand=true]
[tb_start_text mode=3 ]
#
よし、それじゃあ午後もがんばろう。[p]
[_tb_end_text]




;「昼食をとった。」「（食後のリアクション）」部分は省いて、そのまま午後のお仕事演出へ。
[return]




















