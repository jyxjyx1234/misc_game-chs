
;＜なつかしのおにぎりパーティー＞
;帰宅直後	平日のみ　　で発生
;いつものルーチンでのお仕事演出後「仕事が終わった。／さあ、帰るぞ。」直後に割り込みで発生。
;寄り道の買い物部分はスキップされる。

;同系統名称ファイルの再読ver。


;対応スチルが正式に揃ったらもうちょっと表情差分切替命令を足したりする。

;----------------------------------------------------

[playse  volume="100"  time="1000"  buf="1"  storage="se/tyakusin1.mp3"  ]

[messageON]

[tb_start_text mode=3 ]
#
おっと、みおから電話だ。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生、ごめんなさい！[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし今日、学校の用事で[r]
帰りがいつもより遅めになっちゃいそうで[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0209.mp3"  ]
[tb_start_text mode=3 ]
#みお
学校の用事で帰りが遅れそうで、ごはんの支度……[r]
間に合わないと思うんです……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0151.mp3"  ]
[tb_start_text mode=3 ]
#みお
なにか買って食べてもらっていていいですか……？[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="510"  y="400"  width=""  height=""  text="ならコンビニでみおの分も"  _clickable_img=""  target="*s1next"  ]
[s]
*s1next

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃあえっと、[r]
リクエストしてもいいですか……？[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="conveni_tennai2.jpg"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
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

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="room_n_c_lit.png"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
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

[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]

[messageON]
[mioHyoujou hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0050.mp3"  ]
[tb_start_text mode=3 ]
#みお
ただいまです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
――わあ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
用意のできた食卓でみおを出迎える。[r]
並ぶのはリクエストされた品ばかりだ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0030.mp3"  ]
[tb_start_text mode=4 ]
#みお
おにぎりパーティーですね！[l]
[_tb_end_text]


[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="コンビニおにぎりが好きなの？"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="もっといいものも買えたのに"  _clickable_img=""  target="*s2_2"  ]
[s]

;----------------------------------------------------
*s2_1

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0131.mp3"  ]
[tb_start_text mode=3 ]
#みお
好きというか……[r]
だいじというか……？[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
これがいいんですよぅ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ……[p]
[_tb_end_text]



[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next

[messageON]

[mioHyoujouSabun hyoujou="normalake6.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
コンビニおにぎりは[r]
はじめて先生のおうちで食べたごはんですから[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=4 ]
#みお
ごちそうです[l]
[_tb_end_text]


;★スチル表示「onigiri2.png」（フェード500）
[CGSet layer=1 page=fore visible=true  time="500"  storage="EVcg/eat/onigiri2.png" folder=""  name="onigiri,onigiri2" ]
[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="510"  y="400"  width=""  height=""  text="それじゃあ、いただきます"  _clickable_img=""  target="*s3next"  ]
[s]
*s3next



;★スチル表示「onigiri3.png」（フェード500）
[CGSet layer=1 page=fore visible=true  time="500"  storage="EVcg/eat/onigiri3.png" folder=""  name="onigiri,onigiri3" ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0031.mp3"  ]
[tb_start_text mode=3 ]
#みお
はいっ、いただきます[p]
[_tb_end_text]

[tb_hide_message_window  ]

;★スチル表示「onigiri5.png」（フェード500）
[CGSet layer=1 page=fore visible=true  time="500"  storage="EVcg/eat/onigiri5.png" folder=""  name="onigiri,onigiri5" ]
[wait  time="500"  ]
[maskStart]

;★スチル消去
[free layer="1" name="onigiri" ]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[chara_hide_all  time="1"  wait="false"  ]
[tb_image_hide  time="0"  ]
[wait  time="500"  ]
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

[addTime minutes=20]

[calcHP HP=10 minHP=1 rand=true]
[tb_start_text mode=3 ]
#
出会った日のことを思い出しながら[r]
コンビニおにぎりを味わった。[p]
[_tb_end_text]



;夕方の自由行動パートへ移動
;背景等々の再描画に注意

[return]



















