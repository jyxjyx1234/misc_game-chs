
;＜髪のセットが決まらない＞
;起床時、平日、休日ともに。
;いつものルーチンでの「…………」「……」「朝か、起きよう」直後に割り込みで発生

;同系統名称ファイルの再読ver。


;----------------------------------------------------
[wait  time="500"  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/curtain1.mp3"  ]
[bgChange  time="1000" storage="C1_m_o.png"  left="-109.5"  top=""  width="1475"  height="720"  ]



[mioHyoujou hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[messageON]
[tb_start_text mode=4 ]
#みお
あ、先生……[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="おはよう"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[mioHyoujouSabun hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
おはようございます……[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
心なしか、元気がない。[r]
これはもしや……[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="どうかした？"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="髪のセット？"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;----------------------------------------------------
*s2_1

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふつうにしてたつもりなんですが[r]
わかっちゃうんですね、えへへ……[p]
[_tb_end_text]



[mioHyoujouSabun hyoujou="fuanaketojime4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
髪の調子がよくなくて、[r]
今日はぜんぜんまとまらないんですぅ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そうかなあ……[r]
本人にしかわからない差なのだろうけど。[p]
[_tb_end_text]



[jump  target="*s2next"  ]
;----------------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
え？　あ、はい……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0188.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生にもわかっちゃいますか、[r]
今日ぜんぜん髪がまとまらなくって……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
いや、見てわかる違いはないけど。[r]
前も似たことがあったのを思い出しただけだ。[p]
[_tb_end_text]


[jump  target="*s2next"  ]
;----------------------------------------------------
*s2next


[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0120.mp3"  ]
[tb_start_text mode=3 ]
#みお
心配かけちゃいましたね[r]
ごはん、食べましょう[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0135.mp3"  ]
[tb_start_text mode=3 ]
#みお
食べたら気持ちもすぐに切り替わりますから[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
毛先を気にして指先でもてあそぶみおが[r]
なんだか、かわいらしかった。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
しかし、何度言われみても[r]
ふだんとの違いはわからないのだった。[p]
[_tb_end_text]

[return]
;朝食パートに合流









