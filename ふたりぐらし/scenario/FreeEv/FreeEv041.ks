
;＜寮暮らしあるある・プリンの名前＞
;食後自由時間前	平日のみ	で発生。
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;プリンの所持数が７以下の時のみ＆配達でお菓子詰め合わせを頼んでいないときにのみ発生
;（所持数を実際に増やすかどうかは実装時に再検討）

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[tb_start_text mode=3 ]
#
人間には、意味もなく冷蔵庫を[r]
開けてみたくなる時がある。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
がちゃり。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
――おや？
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
あ、見つけましたか[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
美味しそうだったので[r]
つい買ってしまいまして――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0124.mp3"  ]
[tb_start_text mode=4 ]
#みお
お好きなタイミングで[r]
食べてくださいね[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left" addlog="true"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="自分も食べていいの？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right" addlog="true"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="ぜんぶみおのプリンでは？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;-----------------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、先生のぶんは[r]
わたしからのお土産ということで[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0082.mp3"  ]
[tb_start_text mode=3 ]
#みお
どれがいいか選びきれなくて[r]
ついつい何個も買っちゃったんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0051.mp3"  ]
[tb_start_text mode=3 ]
#みお
いろいろ食べてみたいので[r]
お付き合いください[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんでって……そうしないと[r]
誰のかわからないですよ？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
この家は２人しかいないのだから[r]
そんな心配は不要そうだが。[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;-------------------------------------------------------------------------
*s1next

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
――あ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0035.mp3"  ]
[tb_start_text mode=3 ]
#みお
偶数個なら、名前書かなくても[r]
大丈夫なんですね[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
自分で気づいたようだった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
寮に居たときのクセでした……[r]
恥ずかしい[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0228.mp3"  ]
[tb_start_text mode=3 ]
#みお
冷蔵庫も共用なので、こういうのって[r]
記名しないとなくなっちゃうんです[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なるほど、それは大変そうだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0111.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生はわたしのぶんのプリン、[r]
食べちゃったりしないですもんね[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そうありたいものだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふふ、とらないでくださいね[p]
[_tb_end_text]


[return]

























