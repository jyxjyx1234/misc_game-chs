
;＜エロゲのハミング（鼻歌）＞
;夕食後自由時間前	平日＆休日　の発生。

;えっちゲームをいっしょに遊んだ後、
;自由行動パート中のみおのハナウタがシュヴァヒス主題歌verになることもあるように……との小ネタを想定。

;同様に、えっちゲームを遊んだ後にこのイベントも発生する可能性が出てくる（抽選対象になる）が、
;このイベントを見たかどうかは、自由行動パート中のみおのハナウタの変化とは無関係

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。


;同系統名称ファイルの再読ver。

;-----------------------------------------

;【ADV立ち絵の代わりに】hurimuki　の　1.png（現状に合わせた服装）を表示
[chara_hide_all]
[setMioHurimuki storage="1.png"]
[cm]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_bgv/FT_m002_bgs0002_A.mp3"  ]
[tb_start_text mode=3 ]
#みお
♪～……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
キッチンでなにやら家事をしているみおの[r]
心地よいハミングが聞こえてくる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
今は即興のメロディのようだが、[r]
待っていればあるいは……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_bgv/FT_m001_bgs0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
♪～……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
来たーーー！[p]
[_tb_end_text]

;【立ち絵】hurimuki の　5.png　に変更
[setAllMioHyoujou hurimuki="5.png" time="200"]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0162.mp3"  ]
[tb_start_text mode=3 ]
#みお
どうしました？[r]
突き上げたその拳は……？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ガッツポーズといいます。[p]
[_tb_end_text]

;【立ち絵】料理中のを消去して、下記コマンドから通常ADV方式へシフト
[chara_hide_all]

[mioHyoujou hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0148.mp3"  ]
[tb_start_text mode=4 ]
#みお
あ、わたしまた無意識に[r]
あのお歌になってました……？[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="そう、あのエロゲの"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="気にせず続けて"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;-------------------------------------------
*s2_1

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
あやー……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=3 ]
#みお
いえ、かくなる上は極めてみせます！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……なにを？[p]
[_tb_end_text]


[jump  target="*s2next"  ]

;-------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="fuanake2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0180.mp3"  ]
[tb_start_text mode=3 ]
#みお
じ、じっくり聞かれてるとわかって[r]
それはむりですよぅ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いまさら恥じらうとは……[p]
[_tb_end_text]


[jump  target="*s2next"  ]

;-------------------------------------------
*s2next

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
う、うー……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしもいつか先生のハミングを[r]
聞いて見せますから！[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そういえば自分はそういう癖のようなもの、[r]
なにかあるんだろうか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういうのってなかなか自覚できないよね[r]
気づいたら教えてあげますね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
よろしく頼む、と相槌を打つと[r]
みおはすこぶるうれしそうだった。[p]
[_tb_end_text]

[return]














