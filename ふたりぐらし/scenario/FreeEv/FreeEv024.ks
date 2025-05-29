
;＜お皿が増えたね＞
;食後自由時間前	平日＆休日
;“食後”なので、休日の場合は昼食のあとでも発生タイミングがある。

;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------


[playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
そういえば……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
――と、食器の片づけ中にふと気がついた。[p]
[_tb_end_text]


[mioHyoujou hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
お箸やお皿やお茶碗といった食器が[r]
ずいぶんと増えていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
自分だけの一人暮らしだった時は[r]
必要最小限のものしかなかったものなあ。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、そうですね[p]
[_tb_end_text]



[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
お料理に合ったお皿の方が[r]
おいしく食べていただけると思って[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=4 ]
#みお
自分のお小遣いで少しずつ揃えてたんですけど[r]
つい、やりすぎたかもしれません[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="食卓がにぎやいでうれしい"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="自分のお小遣いで！？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------
*s1_1

[mioHyoujouSabun hyoujou="happyake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
よかったぁ、やっぱりそうですよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0198.mp3"  ]
[tb_start_text mode=3 ]
#みお
盛り付けまでがきれいにできて[r]
お料理完成！　ってうれしくなるので[p]
[_tb_end_text]


[jump  target="*s1next"  ]
;----------------------------------
*s1_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0187.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしが勝手にやってることなので[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="komaru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
趣味みたいなものだと思ってもらえたら[p]
[_tb_end_text]


[jump  target="*s1next"  ]
;----------------------------------
*s1next

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0172.mp3"  ]
[tb_start_text mode=3 ]
#みお
あぅ……でも、ちょっと[r]
お皿、増えすぎたかもしれませんね[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="komruake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0144.mp3"  ]
[tb_start_text mode=3 ]
#みお
だいたい揃ったと思うので[r]
ここからはそんな変わらないと思うんですが[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
ほんとに少しずつ増やしてたお皿が[r]
もうこんなになってるってことは――[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0040.mp3"  ]
[tb_start_text mode=3 ]
#みお
それだけ先生とのせいかつが[r]
続いてた、ってことなんですよね[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ、なんだか照れちゃいます[p]
[_tb_end_text]



;自由行動パートに合流
[return]




