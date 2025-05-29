
;＜白湯でまったり＞
;夕食後自由時間前	平日＆休日（休日の場合はデートをしていると発生しない）
;（休日は昼食後でも発生してもいい。組み込みの難度次第か）
;自由行動になる「この後はどうやって過ごそうかな。」のテキストのすぐ後、
;自由行動のコマンド類が出る前に割り込みで発生。

;お茶とお菓子のストックがすべてゼロの時、発生しうる（そうでない場合は発生しない）


;みおの料理中の立ち絵も使えそうなシーンだけれども、
;曜日と衣装の兼ね合いが苦しくなるのでひとまず通常立ち絵だけでやりくり。


;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;----------------------------------------------------

[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0026.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
はふぅ～……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
満足感の高い食事のあと、みおとくつろぐ。[r]
お茶かなにかで一服したい気分だが……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="normal2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
お茶とかコーヒーのストック、[r]
切らしてるんでしたっけ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
実は、そうなのだ。[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃ、アレにしましょうか[p]
[_tb_end_text]
[mioLeave]

[playse  volume="100"  time="1000"  buf="1"  storage="se/syokuji3.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#
……と言って、みおは[r]
キッチンで鍋やカップを並べはじめた。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
飲み物の材料がないのに、[r]
飲み物を作ろうとしている……？[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="まさか……錬金術！"  _clickable_img=""  target="*s1_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="まさか……白湯？"  _clickable_img=""  target="*s1_2"  ]
[s]

;--------------------------------------
*s1_1

[messageON]
[mioHyoujou hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0196.mp3"  ]
[tb_start_text mode=3 ]
#みお
えっ？　錬金術？[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="fuanake_red.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0178.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたしそんなことできませんよぅ[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
いやいや、錬金術も料理も科学のようなものだから[r]
料理ができれば錬金術だってできたも同然だ。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="komaru2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0175.mp3"  ]
[tb_start_text mode=3 ]
#みお
はあ、そういうものですか……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
とにかく、なにか作ってくれるとかで[r]
おとなしく待つことになった。[p]
[_tb_end_text]

[jump  target="*s1next"  ]
;--------------------------------------
*s1_2

[messageON]
[mioHyoujou hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0197.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっ、正解です[r]
前につくったの、憶えててくれたんですか？[p]
[_tb_end_text]


[mioHyoujouSabun hyoujou="raku1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0110.mp3"  ]
[tb_start_text mode=3 ]
#みお
ちょっとお時間かかりますから[r]
ゆっくり座ってお待ちください[p]
[_tb_end_text]

[jump  target="*s1next"  ]
;--------------------------------------
*s1next

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[chara_hide_all  time="1"  wait="false"  ]
[addTime minutes=20]
[wait  time="500"  ]
[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]
[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#
そうして、[r]
みおの後ろ姿を見守ること20分ほど。[p]
[_tb_end_text]

[mioHyoujou hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0057.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、できました～[r]
白湯ですよ～[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そうだった。以前もお茶を切らしたときに[r]
みおがこうして丁寧な白湯をつくってくれたんだ。[p]
[_tb_end_text]

[tb_start_text mode=4 ]
#
ふうふう言いながら、ちびちびとすすって飲む。[l]
[_tb_end_text]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="565"  y="400"  width=""  height=""  text="――おいしい"  _clickable_img=""  target="*s2next"  ]
[s]
*s2next

[calcHP HP=10 minHP=1 rand=true]

[messageON]
[mioHyoujouSabun hyoujou="rakuake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0025.mp3"  ]
[tb_start_text mode=3 ]
#みお
よかったです[r]
身体もぽかぽかになりますからね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおの存在のありがたみを[r]
噛みしめた……。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[chara_hide_all  time="1"  wait="false"  ]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[addTime minutes=20]
[mask_off  time="1000"  effect="fadeOut"  ]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

;★現在の時間に合わせた部屋bgを表示（夜ならroom_n_c_lit.png　昼ならroom_m_o.png）
[bgChange time="1000"  method="crossfade"  storage="room_n_c_lit.png"  ]

;自由行動パートへ
[return]












