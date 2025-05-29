
;＜エロゲのハミング（鼻歌）＞
;夕食後自由時間前	平日＆休日　の発生。

;えっちゲームをいっしょに遊んだ後、
;自由行動パート中のみおのハナウタがシュヴァヒス主題歌verになることもあるように……との小ネタを想定。

;同様に、えっちゲームを遊んだ後にこのイベントも発生する可能性が出てくる（抽選対象になる）が、
;このイベントを見たかどうかは、自由行動パート中のみおのハナウタの変化とは無関係

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。



;-----------------------------------------

;【ADV立ち絵の代わりに】hurimuki　の　1.png（現状に合わせた服装）を表示
[chara_hide_all]
[setMioHurimuki storage="1.png"]
[cm]


[playse  volume="100"  time="1000"  buf="2"  storage="vo_bgv/FT_m001_bgs0004.mp3"  ]
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
……ある日を境にみおのハミングの[r]
レパートリーが増えた。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
というか、もともとは何の曲でもない[r]
即興のものだったのだけど――[p]
[_tb_end_text]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_bgv/FT_m001_bgs0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
♪～[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
これは、ある。[r]
確実に元になった楽曲が。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
うーん……なんだったっけか。[r]
あとちょっとで思い出せそうだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

;【立ち絵】hurimuki の　5.png　に変更


[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0008.mp3"  ]
[tb_start_text mode=3 ]
#みお
あのう……どうしました？[r]
ぼーっとしてましたよ[p]
[_tb_end_text]


[tb_start_text mode=4 ]
#
一瞬で我に返った。[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="600"  y="400"  width=""  height=""  text="そのハナウタってさ……"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

;【立ち絵】hurimukiのやつを消して、ここから通常立ち絵を使用
[chara_hide_all]

[mioHyoujou hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0006.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、はい[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuan_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0120.mp3"  ]
[tb_start_text mode=3 ]
#みお
前に先生と遊んだゲームの歌が[r]
なんだかすごく耳に残ったので……つい[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
そうだ、思い出した。[r]
前に遊んだゲームの主題歌だ。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
しかもえっちなゲームの。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0118.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっと……それは、まあ……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0016.mp3"  ]
[tb_start_text mode=4 ]
#みお
さ、さすがに、おそとでは歌ってませんよ[l]
[_tb_end_text]

[glink  color="btn_05_black"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="いいんじゃないかな"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="自分の前ならいいの？"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;-------------------------------------------
*s2_1


[tb_start_text mode=3 ]
#
人気が出てカラオケに入る[r]
エロゲソングもあると聞くし。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0134.mp3"  ]
[tb_start_text mode=3 ]
#みお
え、そうなんですか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0136.mp3"  ]
[tb_start_text mode=3 ]
#みお
カラオケかぁ……[r]
恥ずかしくてあんまり経験ないです[p]
[_tb_end_text]


[jump  target="*s2next"  ]

;-------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="tohoho_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0119.mp3"  ]
[tb_start_text mode=3 ]
#みお
あー……[r]
あぅー……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku1_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0003.mp3"  ]
[tb_start_text mode=3 ]
#みお
あらためてそういうこと聞かれると[r]
急に恥ずかしくなってきました[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
いまさら恥じらうとは。[r]
ハミングは無自覚に漏れていたのか……。[p]
[_tb_end_text]


[jump  target="*s2next"  ]

;-------------------------------------------
*s2next

[tb_start_text mode=3 ]
#
いずれにせよ、変に遠慮せず[r]
ハミングでもなんでも好きに過ごしてほしい。[p]
[_tb_end_text]


[tb_start_text mode=3 ]
#
ほんわかしたみおの雰囲気で[r]
こちらもリラックスできているのだから。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……などと伝えると、みおは[r]
かえって緊張してしまうだろうか。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
むずかしいこと考えてますか？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしにできることがあったら[r]
なんでも相談してくださいね[p]
[_tb_end_text]


[return]














