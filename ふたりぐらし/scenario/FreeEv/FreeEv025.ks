
;＜みおの登校日って……＞
;いってらっしゃい直後、平日土曜日のみ。20日め以降解禁。
;解禁以降、土曜日ごとに判定があり、初回の発生確率たかめ。
;いつものルーチンでみおの「いってらっしゃい」に選択肢で「いってきます」と返した直後に割り込み発生

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

;みおの立ち絵は消えずに残っている想定

[mioHyoujou hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
でも、今日は土曜日のはず。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
当たり前みたいに受け入れてきたけど[r]
みおは土曜も登校してるんだな。[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="土曜も授業あるの？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="土曜も部活あるの？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;------------------------------------------------
*s1_1

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
あったりなかったり……[r]
希望者は選択制の科目を受けられたり、ですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0015.mp3"  ]
[tb_start_text mode=3 ]
#みお
でも平日よりは軽めですよ[p]
[_tb_end_text]

[jump  target="*s1next"  ]
;------------------------------------------------
*s1_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ？　わたし部活は入ってませんよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
部室でくつろいでるところに[r]
お呼ばれしてお話とかはありますけど[p]
[_tb_end_text]

[jump  target="*s1next"  ]
;------------------------------------------------
*s1next

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
……ああ、土曜日も登校するのが[r]
なんでかなってことですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0132.mp3"  ]
[tb_start_text mode=3 ]
#みお
もともと寮に入っていたから[r]
わたしの場合、お休みも学校に居る感覚で[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0225.mp3"  ]
[tb_start_text mode=3 ]
#みお
寮のお部屋でごろごろするよりは[r]
校舎に行ってなにかしてる方が楽しいんです[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
今もその習慣で登校してる感じですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
なるほど。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
さいきんは学校によっても[r]
だいぶ違っていると聞く。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおのところも寮がある女子校だし、[r]
独自のやり方があるのだろう。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしも、先生が土曜日も[r]
お仕事いくんだなぁ……って思ってました[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
それはまあ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおが来る前は休みがあっても寝るだけで、[r]
だったら働き続ける方がいいと、こうなっていた。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
土曜も休もうと思えば休めるけど――[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおも登校するなら、お互い[r]
現状維持のサイクルでいいかもしれない。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
そうですね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happy2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
そのぶん、日曜日のお休みを[r]
いっしょに楽しく過ごせたらうれしいです[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
というわけで、改めてみおを送り出して[r]
通勤をはじめるのだった。[p]
[_tb_end_text]


;移動してお仕事パートへ
[return]












