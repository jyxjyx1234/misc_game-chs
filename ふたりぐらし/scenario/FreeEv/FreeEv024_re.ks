
;＜お皿が増えたね＞
;食後自由時間前	平日＆休日
;“食後”なので、休日の場合は昼食のあとでも発生タイミングがある。

;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;同系統名称ファイルの再読ver。

;----------------------------------------------------


[playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji1.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
そういえば――と、[r]
食器の片づけ中にふと気がついた。[p]
[_tb_end_text]


[mioHyoujou hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0007.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
食器が増えた……いや、[r]
入れ替わった……？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、そうですね[r]
前に増やしすぎたかも、ってお話して――[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0087.mp3"  ]
[tb_start_text mode=4 ]
#みお
使ってると欠けちゃったりするので、[r]
そういうものから時々買い替えてました[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ケガはない？"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="買い替えても似た柄？"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------
*s1_1

[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
お気遣いありがとうございます[r]
だいじょうぶですよ[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、けっこうドジなんですけど[r]
意外とケガはあんまりしないので[p]
[_tb_end_text]


[jump  target="*s1next"  ]
;----------------------------------
*s1_2

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……はい[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="komaru1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしがいいなって思うお皿なので[r]
きづいたら同じようなものが続いちゃいます[p]
[_tb_end_text]


[jump  target="*s1next"  ]
;----------------------------------
*s1next

[mioHyoujouSabun hyoujou="normal.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
おはしとかも段々と削れたり[r]
塗装がはげちゃったりしますしね[p]
[_tb_end_text]



[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
……[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0040.mp3"  ]
[tb_start_text mode=3 ]
#みお
それだけまた先生とのせいかつを[r]
積み重ねてきたんだなーって[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku2_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0116.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ、なんだか照れちゃいます[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……みおの言う通りかもしれない。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ふたりの積み重ねは、こういう日常の[r]
ささいなところに出るものなんだなぁ。[p]
[_tb_end_text]


;自由行動パートに合流
[return]




