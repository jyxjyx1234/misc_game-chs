
;＜みおの代わりに部屋掃除＞
;帰宅直後	平日のみ	で発生。
;仕事からの帰路の寄り道（買い物）パートの直前（仕事が終わった帰ろうの直後）から開始。

;同系統名称ファイルの再読ver。


;FreeEv005（職場の位置をみおが把握する）が既読状態でなければ発生しない。

;----------------------------------------------------
[eval exp="f.cloth = f.schoolUniform" ]
[playse  volume="100"  time="1000"  buf="0"  storage="BGS/ame.mp3"  loop="true"  clear="true"  fadein="true"  ]

;仕事場bgの雨verが無いので、エフェクトがあるなら仕事場bgをうっすら暗く（黒く）できると完璧
[messageON]
[tb_start_text mode=3 ]
#
と、思ったら、[r]
突然の雨に見舞われた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
が、遠くに見えるあの人影。[r]
あれは、まさか……[p]
[_tb_end_text]

[mioHyoujou hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0026.mp3"  ]
[tb_start_text mode=4 ]
#みお
先生、お迎えに来ちゃいました[l]
[_tb_end_text]


[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="面目ない……"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="会いたかった"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------------------------
*s1_1

[tb_start_text mode=3 ]
#
自分の傘を用意しておけば[r]
こんな気遣いをさせずに済んだのだが……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
どうかしましたか、先生[r]
いっしょに行きましょう？[p]
[_tb_end_text]



[jump  target="*s1next"  ]

;----------------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひゃ……っ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あの……わたしも、です……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なんだか妙に照れさせてしまった。[p]
[_tb_end_text]


[jump  target="*s1next"  ]


;----------------------------------------------------
*s1next

[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="kaerimiti_c.jpg"  ]
[wait  time="500"  ]
[addTime minutes=15]
[tb_hide_message_window  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]

[tb_show_message_window  ]

[tb_start_text mode=3 ]
#
というわけで、ひとつの傘の下で[r]
身を寄せ合って帰路に着いた。[p]
[_tb_end_text]

[mioHyoujou hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ……っと……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="happy1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしの傘、ちっちゃいですので……[r]
くっついててくださいね、先生[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
雨は激しくはないが、霧がかかったように[r]
景色が白っぽくかすんでいる。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
すれ違う人の顔もよく見えないのが、[r]
今はありがたかった。[p]
[_tb_end_text]

[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[stopse  time="1000"  buf="0"  fadeout="true"  ]
[wait  time="500"  ]
[addTime minutes=15]
[tb_hide_message_window  ]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

;bk100背景で進行、みお立ち絵もなし

[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]

[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
つきましたね、今タオル持ってきます[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[return]
;晩ご飯パートに合流（暗転あけで室内背景表示、料理中立ち絵みお表示、今日は〇〇ですよ～）








