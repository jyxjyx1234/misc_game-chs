
;＜みおの登校日って……＞
;いってらっしゃい直後、平日土曜日のみ。20日め以降解禁。
;解禁以降、土曜日ごとに判定があり、初回の発生確率たかめ。
;いつものルーチンでみおの「いってらっしゃい」に選択肢で「いってきます」と返した直後に割り込み発生

;同系統名称ファイルの再読ver。

;----------------------------------------------------

;みおの立ち絵は消えずに残っている想定

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
今日は土曜日だけど、[r]
やっぱりみおは学校へ行くようだ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
……たまにはサボりたくなったり、[r]
しないのだろうか？[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="土曜も登校、真面目だね"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="もしかして単位が……？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;------------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
まじめにしてるつもりでは[r]
ないんですけど、うーん……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
習慣だから自動的、というか？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
それはわかるような気がするなあ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
睡眠不足で意識が飛んでても[r]
勤め先への道を間違えたりはしないもん。[p]
[_tb_end_text]

[jump  target="*s1next"  ]
;------------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ？　単位？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
意外なことに、みおは黙り込んで[r]
思案顔になってしまった。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういえばわたし、単位って気にしたこと[r]
ありませんでした……危ないかもです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いや……それならたぶん逆に[r]
出席も成績も問題なさそうだ……[p]
[_tb_end_text]

[jump  target="*s1next"  ]
;------------------------------------------------
*s1next

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0051.mp3"  ]
[tb_start_text mode=3 ]
#みお
お互い、ご苦労様です――ですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……だな、と笑み交わすのだった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
というわけで、改めてみおを送り出して[r]
通勤をはじめるのだった。[p]
[_tb_end_text]


;移動してお仕事パートへ
[return]












