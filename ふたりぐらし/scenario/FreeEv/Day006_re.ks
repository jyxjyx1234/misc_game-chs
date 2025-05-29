
;＜お風呂遭遇＞
;「ゲーム内６日め。平日。」に発生するみおのシャワー遭遇イベントが実質的にはFreeEv000。
;このファイルはその再読verイベント。

; ==========================================================
;いつものルーチン「帰宅パート」
;選択肢【まっすぐ帰る／買い物する】まではいつも通り。
;用事が済んでさあ帰るぞというタイミングで、下記のイベントが追加される。

[playse  volume="100"  time="1000"  buf="0"  storage="BGS/ame.mp3"  loop="true"  clear="true"  fadein="true"  ]
[wait  time="500"  ]
[bg2  time="1000"  method="crossfade"  storage="kaerimiti_c.jpg"  ]

[messageON]

[tb_start_text mode=3 ]
#
突然の通り雨がやってきて、[r]
折りたたみ傘を出す間もなく濡れねずみになった。[p]
[_tb_end_text]

[calcHP HP=-10 minHP=1 rand=true]
[tb_start_text mode=3 ]
#
……はやく帰ろう。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/footsteps.mp3"  ]
[wait  time="500"  ]
[maskStart]

[stopse  time="1000"  buf="0"  fadeout="true"  ]

[bg2  time="0"  method="crossfade"  storage="genkan2_d.png"  ]
[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[tb_hide_message_window  ]
[mask_off  time="1000"  effect="fadeOut"  ]


; ==========================================================
*s1

[glink  color="btn_05_black glink_center" addlog="true" storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="ただいま"  _clickable_img=""  target="*s1next"  ]
[s]

; ==========================================================
*s1next

[messageON]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[bg2  time="1000"  method="crossfade"  storage="room_m_c.png"  ]
[tb_start_text mode=3 ]
#
返事がない。[r]
みおは居ないようだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いや――前もこんなことがあって、[r]
シャワー中のみおに遭遇してしまったんだ。[p]
[_tb_end_text]

[bg2  time="1000"  method="crossfade"  storage="dr_n.jpg"  ]
[tb_start_text mode=3 ]
#
……やっぱりだ。[r]
浴室に気配がある。[p]
[_tb_end_text]


[tb_start_text mode=4 ]
#
さて、それじゃあ――[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="タオルだけ持って居間で待とう"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black glink_double_right" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="おじゃましまーす"  _clickable_img=""  target="*s2_2"  ]
[s]

;※他の要素で覗きとかお風呂えっちが増えていくようなら、ここもそれに対応して
;　選択肢などが増えていく可能性アリ

; ==========================================================
*s2_1

;この部分のみおは立ち絵なし


[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0097_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ……先生？[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
こっそりと……と思っていたけど[r]
浴室内のみおもこちらに気づいたらしい。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0099_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生も濡れちゃってますよね[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0100_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
もうすぐ上がりますから[r]
少しだけ待っていてください[p]
[_tb_end_text]



[jump  target="*s2next"  ]


; ==========================================================
*s2_2

[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[CGSet layer="1" time="00"  storage="FG_01.png" folder="fgimage/EVcg/shower"]
[wait  time="500"  ]
[CGSet layer="1" time="0"  storage="FG_03.png" folder="fgimage/EVcg/shower"]

[messageON]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0097_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ――！？[p]
[_tb_end_text]

[CGSet layer="1" time="0"  storage="FG_04.png" folder="fgimage/EVcg/shower"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0100_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、おっ、おかえりなさい[r]
おさきにお風呂いただいてました[p]
[_tb_end_text]

[CGSet layer="1" time="0"  storage="FG_05r.png" folder="fgimage/EVcg/shower"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0102_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
あの、先生……[p]
[_tb_end_text]

[CGSet layer="1" time="0"  storage="FG_07r.png" folder="fgimage/EVcg/shower"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0105_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
ドア、閉めてください……[p]
[_tb_end_text]


[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]
[tb_image_hide  time="1000"  ]

[tb_start_text mode=3 ]
#
おじゃましました。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m001_scene0098_r.mp3"  ]
[tb_start_text mode=3 ]
#みお
ごめんなさい、すぐにあがりますから……[p]
[_tb_end_text]


[jump  target="*s2next"  ]

; ==========================================================
*s2next

[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[tb_hide_message_window  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
――……ほどなくして出てきたみおと[r]
入れ替わりにシャワーを浴びた。[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="room_n_c_lit.png"  ]
[tb_hide_message_window  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]

[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_par/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
しっかりお体拭きましたか？[r]
風邪には気を付けましょうね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_par/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃあ……ごはん、用意してきます[p]
[_tb_end_text]

[mioLeave]

[messageON]
[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bg2  time="0"  method="crossfade"  storage="bk100.jpg"  ]
[tb_hide_message_window  ]

[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]

[tb_start_text mode=3 ]
#
その後――いつも通りに夕食を終えて、[r]
くつろぎの時間がやってきた。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[bg2  time="1000"  method="crossfade"  storage="room_n_c_lit.png"  ]

;平日夜の自由行動パートへ戻る

[return]



