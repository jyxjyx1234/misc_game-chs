
;＜お弁当とりちがえ＞
;昼食前	平日のみ　　で発生
;いつものルーチンでのお仕事（午前）の演出後、「昼休憩だ……」の直後に割り込みで発生。

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[messageON]

[tb_start_text mode=3 ]
#
お弁当を取り出すと[r]
いつもとは雰囲気が違っていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
包みがかわいらしいファンシーキャラの柄だし、[r]
お弁当箱じたいのサイズも一回り小さい。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/tyakusin1.mp3"  ]

[tb_start_text mode=4 ]
#
そこにみおから電話がかかってきた。[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="もしもし"  _clickable_img=""  target="*s1next"  ]
[s]
*s1next

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、先生――[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0168.mp3"  ]
[tb_start_text mode=4 ]
#みお
そっちのお弁当ってどうなってますか！？[l]
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
やってしまいました……
ごめんなさい[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしのお弁当に人だかりが！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
流石に冗談だけど。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
でも彩り豊かできれいなお弁当だから[r]
周囲に覗き込まれたりは、実際にある。[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0190.mp3"  ]
[tb_start_text mode=3 ]
#みお
今わたしもお弁当を出したら[r]
先生のぶんを持ってきてしまっていて……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0151.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしのぶん、よかったら[r]
先生が召し上がってください[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
足りないと思うので[r]
そのときは別のものもご一緒に[p]
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
通話を終え、[r]
改めてお弁当を取り出す。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ちいさなお弁当箱のなかに[r]
栄養バランスよく品目が詰まっているが……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
どれも一口サイズだ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
これが女の子のお弁当か……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ありがたく、いつもよりゆっくりと[r]
噛みしめながら昼食をいただいた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
たまにはこういうこともおもしろい。[p]
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




















