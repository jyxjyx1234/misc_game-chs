
;後付けされた日記要素と干渉するため、このイベントはボツ。
;あとで細部をなおして再利用することは可能かも。
;※寝そべりみおがやはりパジャマぶんしか素材がないのも悩ましいところ。



;＜日記をつけるみお＞
;夕食後自由時間前	平日＆休日　の発生。

;素材の都合によってはみおが特定の衣装のときのみ発生、という条件も追加する


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;------------------------

;【立ち絵】fgimage > chara > 5　の　nesoberi1.png
;パジャマ姿のぶんしかないなら、今のみおがパジャマの時にしか発生させられないので
;実装時に再度確認。
[chara_hide_all]
[eval exp="f.mioImage = 'nesoberi'" ]
[mioImageSet]
*imageSetEnd
[wait time="50"]
[jump target="imageSetEnd" cond="!f.isImageSetEnd"]
[cm]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_bgs0002_A.mp3"  ]
[tb_start_text mode=3 ]
#みお
♪～[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおがああやってくつろいでくれるのは[r]
リラックスできているんだなと安心する。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……なのだが、スマホの画面が見え、[r]
勝手に気まずくなることもある。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
しかも、たまに長めの文章を打っている。[r]
実はかなり気になっていた。[p]
[_tb_end_text]

;【立ち絵】fgimage > chara > 5　の　nesoberi2.png
[mioNesoberiSabun facial="megaau"]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
……？[r]
わたしの顔になにかついてます？[p]
[_tb_end_text]

;上記立ち絵を消去して、下記コマンドによってADV立ち絵へ変化
[chara_hide_all]

[mioHyoujou hyoujou="normal.png"]

[tb_start_text mode=4 ]
#
意を決して、聞いてみようか。[r]
なにを書いているのか、もしかして――[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="手紙とか？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="小説とか？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;-------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0149.mp3"  ]
[tb_start_text mode=3 ]
#みお
手紙？[r]
メールとかではなく……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0200.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちいさい時は遊びでともだちと[r]
よくメモみたいなの回してましたけど[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0187.mp3"  ]
[tb_start_text mode=3 ]
#みお
今はほとんどメールか[r]
チャットで済ませちゃってますね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normal3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0221.mp3"  ]
[tb_start_text mode=3 ]
#みお
紙に文字書くの、[r]
最近は授業ぐらいかも……[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;-------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
へっ、えっ――わたしが小説を！？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0181.mp3"  ]
[tb_start_text mode=3 ]
#みお
書けそう、だなんて言われてもぉ……[r]
昔から作文苦手なんですから[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0012.mp3"  ]
[tb_start_text mode=3 ]
#みお
えんそく、どうぶつえんにいった[r]
ぞうさんみたとか、本当にそういうぐらいで[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;-------------------------------------------
*s1next

[tb_start_text mode=3 ]
#
ぜんぜん違ったらしい。[r]
書き物の真相はなんだったのだろう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
あぁ、なるほど……[r]
わたしがポチポチしてるのが気になって[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0139.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっと、見せられないのが[r]
申し訳ないんですけど――日記です[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
それはたしかに、誰にも見せられない[r]
プライベートなものだな。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0078.mp3"  ]
[tb_start_text mode=3 ]
#みお
つけたりつけなかったりで[r]
いいかげんなものなんですけど[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanaketojime2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=4 ]
#みお
人に言えないようなことを[r]
書いてるわけでもなくて……[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="540"  y="400"  width=""  height=""  text="た、たとえば……"  _clickable_img=""  target="*s2next"  ]
[s  ]
*s2next

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生がおかわりしてくれて[r]
がんばったかいがあったとか[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0112.mp3"  ]
[tb_start_text mode=3 ]
#みお
先生の帰りが早い日は[r]
うれしかったとか……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
最近は先生のことばっかりかも……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
自分がしたなにげないことを[r]
よく覚えてくれていると思っていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そうか日記か。[r]
そういうことだったんだなぁ。[p]
[_tb_end_text]

[chara_hide_all]

[return]











































