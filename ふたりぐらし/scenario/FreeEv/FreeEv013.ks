
;＜ベランダから猫ちゃん観察＞
;夕食後自由時間前	平日＆休日（休日の場合はデートをしていると発生しない）
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[playse  volume="100"  time="1000"  buf="1"  storage="se/neko_1.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
……ん？[p]
[_tb_end_text]
[chara_hide_all]
[mioHyoujou hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=4 ]
#みお
先生も、聞こえました？[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="……猫？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="……おばけ？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0009.mp3"  ]
[tb_start_text mode=3 ]
#みお
やっぱり聞こえますよね[r]
こねこの声だ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
おうちの前の道路の方……から……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;----------------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
えぇっ！？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ひょっとしたら、カーテンの向こうに[r]
ものすごい形相の幽霊が――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoruake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
せっ、先生！[r]
からかわないでくださいよぅ[p]
[_tb_end_text]


[jump  target="*s1next"  ]


;----------------------------------------------------
*s1next

[playse  volume="100"  time="1000"  buf="1"  storage="se/neko_1.mp3"  ]

[tb_start_text mode=3 ]
#
ともあれ、鳴き声はまだ聞こえて来るし[r]
どうにも気になる。[p]
[_tb_end_text]



[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="room_n_o_lit.png"  ]
;可能ならここはカーテン向こうの窓にズームした状態で表示
[tb_hide_message_window  ]
[chara_hide_all  time="1"  wait="false"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/curtain1.mp3"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

;以降みお立ち絵なしで進行

[messageON]
[tb_start_text mode=3 ]
#
みおといっしょにベランダから身を乗り出してみた。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0089.mp3"  ]
[tb_start_text mode=3 ]
#みお
――あっ[r]
あそこの物陰ですよ、先生[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/neko_2.mp3"  ]

[tb_start_text mode=3 ]
#
みおの指さす方で大小の影が夜道を歩いていた。[r]
小さい方が鳴き声の主の仔猫だろう。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
ケガして泣いてる……とかじゃなさそうですね[r]
よかったぁ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
とすると、そばの大きな方の影が親猫か。[r]
このあたりだとノラ猫はかなり珍しいのだけど。[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
じゃあお散歩でたまたま通りかかったところなんですね[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょっとだけ……[r]
ねこちゃん、このまま眺めててもいいですか？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
もちろん。[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[addTime minutes=30]
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


[tb_start_text mode=3 ]
#
寄り道したり、行ったり戻ったりと[r]
猫たちののんびり散歩をみおと見守った。[p]
[_tb_end_text]


[bgcheck]
[return]
;暗転終了（bg室内room_n_c_lit.pngに復帰）。自由行動パートに合流








