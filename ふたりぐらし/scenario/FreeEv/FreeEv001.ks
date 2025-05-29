
;＜朝寝坊・平日＞
;「起床時／平日のみ」
;いつものルーチンでの「…………」「……」「朝か、起きよう」直後に割り込みで発生

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[setTime hours=8 minutes=0]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[tb_start_text mode=3 ]
#
……はっ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
二度寝しかけてしまったようだ。[r]
危ない危ない。[p]
[_tb_end_text]


[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/curtain1.mp3"  ]
[bgChange time="1000" storage="C1_m_o.png"  left="-109.5"  top=""  width="1475"  height="720"  ]

;※みお、衣装パジャマ
[eval exp="f.cloth = f.pajama" ]

[playbgm  volume="100"  time="1000"  loop="true"  fadein="true"  storage="BGM3_morning.mp3"  html5="false"  ]
[mioHyoujou hyoujou="fuanaketojime2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
むにゃ……[r]
あれ、せんせぇ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
おや？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m003_part0018.mp3"  ]
[tb_start_text mode=4 ]
#みお
おはようございまふ……[r]
きょうは、とても早起き……れしゅね……[l]
[_tb_end_text]


[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="そうかな……？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black" addlog="true" storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="よし、みおに勝ったぞ"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------
*s1_1

[tb_start_text mode=3 ]
#
みおが起こしてくれるのに甘えて、[r]
このところたるんでいた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そんな自分が、ひとりでに[r]
早起きなんてできるだろうか。[p]
[_tb_end_text]

[jump  target="*s1next"  ]


;----------------------------------
*s1_2

[tb_start_text mode=3 ]
#
いつもみおが起こしてくれるのに[r]
頼りきりだったしな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
どれどれ、記念すべき早起きレコードを[r]
確認してみようか。[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;----------------------------------
*s1next

[messageON]
[tb_start_text mode=3 ]
#
――時計を見る。[r]
８時ちょうどだった。[p]
[_tb_end_text]


[playbgm  volume="100"  time="1000"  loop="true"  fadein="true"  storage="BGM14_tohoho.mp3"  html5="false"  ]
[tb_start_text mode=3 ]
#
ああ――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
これは寝坊だ――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
……ふぇ？[p]
[_tb_end_text]



[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m004_part0187.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ、えぇぇ～っ！？[p]
[_tb_end_text]


[stopbgm  time="1000"  fadeout="true"  ]
[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[chara_hide_all  time="1"  wait="false"  ]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[stopbgm  time="6000"  fadeout="true"  ]

[messageON]
[tb_start_text mode=3 ]
#
みおとふたりして慌ただしく朝の支度をし、[r]
家を飛び出した。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
当然、朝ごはんは抜きになる。[p]
[_tb_end_text]

;ここは立ち絵なし
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0184.mp3"  ]
[tb_start_text mode=3 ]
#みお
いってらっしゃいませ！[r]
いってきます！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
あいさつの後はダッシュだ。[p]
[_tb_end_text]

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
[bgChange time="0"  method="crossfade"  storage="kaisya_m.jpg"  ]
[setTime hours=8 minutes=30]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[messageON]

[tb_start_text mode=3 ]
#
……ふぅ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ふだんが早すぎるぐらいの出発なので[r]
いろいろギリギリながらもなんとかなった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの方も心配だけど、きっと大丈夫だ。[r]
自分はひとまず自分のすべきことをがんばろう。[p]
[_tb_end_text]

[messageOFF]
;このイベント終了。
;現在時刻から朝のお仕事パートを開始。
[eval exp="f.cloth = f.schoolUniform" ]

[return]





