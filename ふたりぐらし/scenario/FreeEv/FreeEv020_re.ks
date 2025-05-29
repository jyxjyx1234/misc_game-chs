
;＜宅配受け取り＞
;平日＆休日（家）　帰宅直後（ただいま直前）に発生

;また、ネットショッピングで注文したものが届く日にのみ発生
;ネットショッピングを多用すると、ふつうにこのイベントが頻発するので
;再読ver以降は発生率まあまあ低めで。


;同系統名称ファイルの再読ver。


;----------------------------------------------------

[glink  color="btn_05_black"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="ただいま"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[mioHyoujou hyoujou="raku3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0047.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
おかえりなさい[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0216.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょうど先生宛の宅配を受けとったところで[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
受けとりのサイン、またわたしが[r]
先生のお名前で書いちゃいました……[p]
[_tb_end_text]


[eval exp="tf.name = f.firstName || f.lastName || ''" ]

[if exp="tf.name != ''" ]


    [mioHyoujouSabun hyoujou="fuan2_red.png"]
    [playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
    [tb_start_text mode=3 ]
    #みお
    [emb exp="tf.name" ]、って……[p]
    [_tb_end_text]
    ;↑この１台詞のみ、先生の名前登録を参照。
    ;　１．苗字登録がある場合は苗字のみ（名前の登録有無にかかわらず）
    ;　２．苗字登録がなく、名前登録のみある場合は名前のみ。
    ;　３．苗字も名前も空欄ならこの台詞は省かれる。

[endif]

[tb_start_text mode=4 ]
#
なるほど。[r]
それはつまり――[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="家族みたいだね"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="夫婦みたいだね"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;----------------------------------------------------
*s2_1


[mioHyoujouSabun hyoujou="fuanake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
は、はい[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="fuanaketojime.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
なんだかそれがすごく不思議な感じがして[r]
ぼーっとしちゃってました[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0193.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふっ、ふぅ――[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="fuanaketojime_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
あわわわ[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next


[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、ごはんの支度とちゅうでした！[p]
[_tb_end_text]

[mioLeave]

[messageON]

[tb_start_text mode=3 ]
#
自分は段ボールを開封したりしてから[r]
居間へ向かうことにした。[p]
[_tb_end_text]


[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[tb_hide_message_window  ]
[addTime minutes=5]
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

[maskStart]
[bgcheck]
[maskEnd]

[return]
;暗転が開けると室内に入っており、料理中みおが今日は〇〇ですよ～というところに合流


























