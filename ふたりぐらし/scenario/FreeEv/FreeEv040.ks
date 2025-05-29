
;＜寮暮らしあるある・門限は？＞
;夕食後自由時間前	平日＆休日（休日の場合はデートをしていると発生しない）
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;-----------------------------------------------------
[chara_hide_all]
[mioHyoujou hyoujou="fuan2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0138.mp3"  ]
[tb_start_text mode=3 ]
#みお
あのう、先生[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
緊張した面持ちのみおである。[r]
おっと……なんだろう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0141.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、自由にくつろいでと[r]
言っていただて甘えちゃってましたけど――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="okoru2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0233.mp3"  ]
[tb_start_text mode=4 ]
#みお
このおうちって、本当は門限とか[r]
お風呂は何時までとか、あったりします？[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="……ないよ"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="実は……"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;---------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
ない、んですか……？[r]
本当に……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0026.mp3"  ]
[tb_start_text mode=3 ]
#みお
……よかったぁ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
欲しそうに見えたが、[r]
実際はそうでもないようだ。[p]
[_tb_end_text]

[jump  target="*s1next"  ]

;---------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="okoru1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0155.mp3"  ]
[tb_start_text mode=3 ]
#みお
実は――って、やっぱりですよね[r]
本当はあったんですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いや、無いけど。[r]
欲しいようだから作ろうか。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
無いならない方がいいですっ[p]
[_tb_end_text]


[jump  target="*s1next"  ]

;---------------------------------------
*s1next

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
急に変なこと言っちゃいましたけど[r]
あの、わたし、寮で暮らしてたので……[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
門限や入浴時間の制限があるのが[r]
当たり前の環境にひたっていたわけか。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0011.mp3"  ]
[tb_start_text mode=3 ]
#みお
そういうのがなくて好きにしていいなら[r]
もちろんそれがうれしいんですが[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0002.mp3"  ]
[tb_start_text mode=3 ]
#みお
とはいえ好きにできるからって[r]
日に何度もお風呂に入ったり、しないですし[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
まあ、そうだね。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも、そういうことをしないにしても[r]
していいんだ、って思えるのはいいですね[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
決まりがユルいことに[r]
よろこばれるのは奇妙な感覚だった。[p]
[_tb_end_text]

[chara_hide_all]
[return]


















