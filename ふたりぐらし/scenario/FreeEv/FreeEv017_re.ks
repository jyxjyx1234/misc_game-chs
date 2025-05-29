
;＜からいものがたべたい！＞
;平日＆休日（家）　、夕食時に発生。
;料理中立ち絵が出て「今日は〇〇」ですよ～、とやる直前の割り込み。

;料理中立ち絵が出るのではなく、通常ADVのみお立ち絵が出て下記会話となる。


;同系統名称ファイルの再読ver。

;----------------------------------------------------

[mioHyoujouSabun hyoujou="doya.png"]
[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0030.mp3"  ]
[tb_start_text mode=3 ]
#みお
今日は激辛チャレンジのリバイバルです！[r]
先生もお付き合いください！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
と、突発企画メシだ――！[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0023.mp3"  ]
[tb_start_text mode=4 ]
#みお
今回はどの激辛料理にしましょう？[l]
[_tb_end_text]


[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ラーメン"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="カレー"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------------------------
*s1_1

;※選択肢で選んだ品目を文字列変数で記憶。テキスト的にはすぐ共通部に合流
[eval exp="f.recipe = 'ラーメン'" ]

[jump  target="*s1next"  ]

;----------------------------------------------------
*s1_2
[eval exp="f.recipe = 'カレー'" ]

;※選択肢で選んだ品目を文字列変数で記憶。テキスト的にはすぐ共通部に合流

[jump  target="*s1next"  ]

;----------------------------------------------------
*s1next

[mioHyoujouSabun hyoujou="kira2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0123.mp3"  ]
[tb_start_text mode=3 ]
#みお
了解です！[r]
辛さの限界を超えていきましょう！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
今日のみおも、燃えていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いざ、実食――[p]
[_tb_end_text]

[wait  time="500"  ]
[maskStart]
[wait  time="500"  ]
[mioHyoujouSabun hyoujou="happyake4_red.png"]
[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[tb_show_message_window  ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
はふはふ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
あぐあぐ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふぅ、ふぅ……[r]
あつぅい……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ごくごく。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
んっ、んん～っ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
もぐもぐ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="yowaegao_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
ひりひりしますぅ～……！[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[tb_hide_message_window  ]
[addTime minutes=60]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[tb_show_message_window  ]
[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[bgChange time="0"  method="crossfade"  storage="room_n_c_lit.png"  ]
[mioHyoujou hyoujou="raku5.png"]

[tb_start_text mode=4 ]
#
激辛[emb exp="f.recipe" ]を完食した。[l]
[_tb_end_text]


[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="535"  y="400"  width=""  height=""  text="ごちそうさまでした"  _clickable_img=""  target="*s2next"  ]
[s  ]
*s2next

[mioHyoujouSabun hyoujou="happy1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0034.mp3"  ]
[tb_start_text mode=3 ]
#みお
ごちそうさまでした……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="okoru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0026.mp3"  ]
[tb_start_text mode=3 ]
#みお
ながく、けわしいたたかい――でしたね[p]
[_tb_end_text]


[calcHP HP=-30 minHP=1]
[tb_start_text mode=3 ]
#
どっと疲れたが、[r]
美味しかったし達成感もある。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="happy2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
満足ですぅ～[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="doya_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0206.mp3"  ]
[tb_start_text mode=3 ]
#みお
ときどきまた激辛チャレンジしましょうね[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ああ――！[p]
[_tb_end_text]

[return]
;自由行動パートに合流

























