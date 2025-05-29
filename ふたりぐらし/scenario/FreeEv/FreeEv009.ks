
;＜タマネギ料理で涙＞
;帰宅直後	平日のみ	で発生。
;仕事からの帰路の寄り道（買い物）パートが終わり、自宅前、自宅玄関とbgが切り替わったところで
;下記を割り込み（みおが登場して「おかえりなさい」をする前）

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。


;意識しないとなかなか使わなさそうな表情差分「涙」を使うためのシーン。

;----------------------------------------------------


[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="ただいま"  _clickable_img=""  target="*s1next"  ]
[s]
*s1next

[messageON]
[tb_start_text mode=3 ]
#
……？[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]

[tb_start_text mode=3 ]
#
お、みおは居ないのかと思ったが[r]
パタパタと足音が近づいてきた。[p]
[_tb_end_text]

[mioHyoujou hyoujou="sad2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
せん、せい……[r]
おかえり、なさい……[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
大泣きしていた。[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="みヲ！？"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="どうかした？"  _clickable_img=""  target="*s2_2"  ]
[s]

;----------------------------------------------------
*s2_1

[messageON]

[tb_start_text mode=3 ]
#
すごく上ずった声が出てしまった。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="sadake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生！？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="sadake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
どどどどどうしましたか？！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
こちらの反応にみおもびっくりしている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
しかしこちらもみおの涙に動顛していて[r]
みおをなだめる余裕もない。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="sad3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0184.mp3"  ]
[tb_start_text mode=3 ]
#みお
あわわわっ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あわわわ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
落ち着くまでに数分かかった。[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[messageON]

[mioHyoujouSabun hyoujou="sad.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="sadake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、なにかおかしかったです？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
目じりに溜まった大つぶの涙を指さす。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="sad2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、これですか[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なんでもないことのように[r]
みおは答えるのだった。[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next

[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="room_n_c_lit.png"  ]
[tb_hide_message_window  ]
[mioHyoujouSabun hyoujou="tohoho.png"]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[addTime minutes=10]

[messageON]

[tb_start_text mode=4 ]
#
みおから事情を聴いたところ、つまり――[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="520"  y="400"  width=""  height=""  text="タマネギを切っていたと"  _clickable_img=""  target="*s3next"  ]
[s]
*s3next

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、お騒がせしました……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
いつもは涙が出ないように[r]
いろいろ工夫してお料理してたんですけど[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake6_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
水につけながら切るとか[r]
切る前に冷やしておくとか――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komruake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょっと今日は忘れてしまって[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
それでポロポロ泣いていたところに[r]
自分が帰って来た……と。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komruake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0117.mp3"  ]
[tb_start_text mode=3 ]
#みお
おどろかせちゃいましたね……[r]
あはは……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも、そのぶん今日のごはんは[r]
うまく行っている手ごたえアリです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
よし、それは楽しみだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃあ――[p]
[_tb_end_text]





;みお「ごはん用意しますね」に合流
[return]

















































