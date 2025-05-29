
;＜ラッキースケベ・朝だち遭遇＞
;平日の朝、起床直後に発生。前日に夜更かしなどはしていないことも条件。
;「朝だ。起きよう」直後から。


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。


;同系統名称ファイルの再読ver。




;みおとの関係によってはエロイベに入っていった方がよさそうなので
;実装時に再度相談。
;--------------------------------------------------------

[tb_start_text mode=3 ]
#
――と、思ったが。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
朝勃ちがすごくて、[r]
布団から出るに出れない。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
もうひとり暮らしではないのだし、[r]
落ち着くまで寝たふり続行だ。[p]
[_tb_end_text]

[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/curtain1.mp3"  ]
[bgChange time="1000"  method="crossfade"  storage="room_m_o.png"  ]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、そろそろ起きませんと[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
うう、いかん！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
以前はごまかしそこねて、[r]
このモーニング現象を目撃されてしまったのだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なんとかして切り抜けなくてはいかん。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0120.mp3"  ]
[tb_start_text mode=4 ]
#みお
もしもーし……？[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="前もあった、アレでして"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="イマセン（裏声）"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;-------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0014.mp3"  ]
[tb_start_text mode=3 ]
#みお
前もあった、アレ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0149.mp3"  ]
[tb_start_text mode=3 ]
#みお
う～ん……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0159.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ……[r]
な、なるほど……[p]
[_tb_end_text]

;※エロイベへ分岐するならここで枝分かれを仕込む

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0051.mp3"  ]
[tb_start_text mode=3 ]
#みお
そ、それでしたら、[r]
よよよきタイミングまで、ごゆっくり……[p]
[_tb_end_text]


[mioLeave]

[jump  target="*s1next"  ]

;-------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
えぇっ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
それはいけませんっ、[r]
先生を探さないと！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なんだか遊びだと思われたらしい。[r]
ちがーーーう！！[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
えいやあっ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
がばぁっ、と[r]
布団をはがれてしまった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="orodoki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0018.mp3"  ]
[tb_start_text mode=3 ]
#みお
――あ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
健在の朝勃ちをしっかりと[r]
目撃されてしまう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0010.mp3"  ]
[tb_start_text mode=3 ]
#みお
…………[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あのう……[r]
すみません[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
う、うん……[r]
なんか、ごめん……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
朝ごはんの支度してますから、[r]
落ち着いたら出てきてくださいね[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;-------------------------------------------
*s1next

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[return]







