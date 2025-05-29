
;＜おやつの配給＞
;夕食後自由時間前	平日のみ
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。


;同名ファイル末尾_reネーム（再読ver）は存在しないので、２回目以降の発生もこのテキストを参照する。

;お菓子が増えるイベントなので、お菓子がカンストしていて増やせない場合は発生しない

;----------------------------------------------------


[mioHyoujou hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
先生先生[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0080.mp3"  ]
[tb_start_text mode=3 ]
#みお
これ、見てください[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
上機嫌のみおが近寄ってきて[r]
買い物袋を見せてきた。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
中にあるのは大量のお菓子だ。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="kiraegao.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0212.mp3"  ]
[tb_start_text mode=3 ]
#みお
お買い物してるときにセールで[r]
すごくお得になってて[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0004.mp3"  ]
[tb_start_text mode=4 ]
#みお
先生、よろこんでくれるかなって[l]
[_tb_end_text]


[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="ああ、うれしいよ"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="むしゃむしゃ"  _clickable_img=""  target="*s1_2"  ]
[s  ]

;----------------------------------------------------
*s1_1


[mioHyoujouSabun hyoujou="raku1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ……[p]
[_tb_end_text]



[jump  target="*s1next"  ]
;----------------------------------------------------
*s1_2


[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
もう食べてる！？[p]
[_tb_end_text]



[jump  target="*s1next"  ]
;----------------------------------------------------
*s1next


[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
いつもの場所に入れておくので[r]
気が向いたら食べてくださいね[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="rakuake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0059.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしも誘ってもらえて[r]
ごいっしょできたら、すごくうれしいです[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
みおがお菓子類をあれこれ補充してくれた！[p]
[_tb_end_text]


;お菓子系アイテム、カンストしているもの以外は一律+1
[iscript]


if(f.potato < f.itemMax){f.potato++;}
if(f.berry < f.itemMax){f.berry++;}
if(f.pudding < f.itemMax){f.pudding++;}
if(f.manju < f.itemMax){f.manju++;}

[endscript]

;自由行動パートに合流

[return]








