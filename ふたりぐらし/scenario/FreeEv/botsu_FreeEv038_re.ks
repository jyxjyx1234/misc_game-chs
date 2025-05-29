
;後付けされた日記要素と干渉するため、このイベントはボツ。
;あとで細部をなおして再利用することは可能かも。
;※寝そべりみおがやはりパジャマぶんしか素材がないのも悩ましいところ。



;＜日記をつけるみお＞
;夕食後自由時間前	平日＆休日　の発生。

;素材の都合によってはみおが特定の衣装のときのみ発生、という条件も追加する


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;同系統名称ファイルの再読ver。
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
くつろいでいるように見えるが……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
友人とのやりとりやゲームとは違った[r]
集中力で、みおはテキストを入力している。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
これは、あれだ――[l]
[_tb_end_text]

;上記立ち絵を消去して、下記コマンドによってADV立ち絵へ変化

[mioHyoujou hyoujou="normal.png"]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="今度も日記？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="今度こそ小説？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;-------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0121.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、そうですよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0209.mp3"  ]
[tb_start_text mode=3 ]
#みお
今日が……というより、何日かぶんか
まとめての振り返り的な感じでして[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
おおむね、今週もいい一週間でした[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;-------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="fuanake.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=3 ]
#みお
ただの日記ですよぅ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0140.mp3"  ]
[tb_start_text mode=3 ]
#みお
どうしてそんなに先生は[r]
わたしに小説を書かせたがるのでしょう……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
自分でもわからん……[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;-------------------------------------------
*s1next

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0168.mp3"  ]
[tb_start_text mode=3 ]
#みお
そんなに気になるなら[r]
先生も日記、書いてみたらどうです？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
意外と約束ごととかお買い物の足りないものとかの[r]
メモ代わりにもなって便利なんですよ[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
なるほど――みおがしっかりしているのも[r]
日記が役立っているわけか。[p]
[_tb_end_text]

[chara_hide_all]


[return]











































