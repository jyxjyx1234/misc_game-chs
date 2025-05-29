
;＜みおの代わりに部屋掃除＞
;帰宅直後	平日のみ	で発生。
;仕事からの帰路の寄り道（買い物）パートの直前（仕事が終わった帰ろうの直後）から開始。

;このイベントが既読の場合は、同名ファイル末尾_reネーム（再読ver）を発生させる。

;体力100以上のときのみ発生。
;シナリオ内容的に、体力がありあまっていて欲しいので。

;----------------------------------------------------
[messageON]
[tb_start_text mode=3 ]
#
なんだか今日は体力がありあまっている。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
寄り道せずに軽いジョギングで[r]
帰宅してみるとしよう。[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade"  storage="kaerimiti_day.jpg"  ]
[addTime minutes=5]
[calcHP HP=-5 minHP=1 rand=true]

[tb_start_text mode=3 ]
#
えっほ、えっほ[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade"  storage="genkan_e1.png"  ]
[addTime minutes=5]
[calcHP HP=-5 minHP=1 rand=true]

[tb_start_text mode=3 ]
#
えっほ、えっほ[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade"  storage="genkan2_n_l.png"  ]
[addTime minutes=5]
[calcHP HP=-5 minHP=1 rand=true]

[glink  color="btn_05_black glink_center"  storage=""  size="20"  x="580"  y="400"  width=""  height=""  text="ただいまー"  _clickable_img=""  target="*s1next"  ]
[s  ]
*s1next

[tb_start_text mode=3 ]
#
……むむ。[p]
[_tb_end_text]

[bgChange time="1000"  method="crossfade"  storage="room_e_o.png"  ]

[tb_start_text mode=3 ]
#
みおは居ない。[r]
玄関にも靴はなかった。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
自分がいつもより早く動いたから、[r]
みおより先に帰宅したようだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
ふむ……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
みおはいつもこうやって、[r]
先に帰宅して家事をしてくれているんだよな。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
たまには自分が掃除でもするとしよう。[r]
もともとは自分ひとりで全部やっていたことだし。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
――いざ。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]

[mask_off  time="1000"  effect="fadeOut"  ]

[messageON]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[addTime minutes=20]
[mask_off  time="1000"  effect="fadeOut"  ]

[bgChange time="1000"  method="crossfade"  storage="room_n_c_lit.png"  ]

[messageON]

[playse  volume="100"  time="1000"  buf="1"  storage="se/door_akesime.mp3"  ]

[mioHyoujou hyoujou="happy1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0050.mp3"  ]
[tb_start_text mode=3 ]
#みお
ただいまー……です！[r]
ちょっと買い出しで遅れちゃいましたね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0257.mp3"  ]
[tb_start_text mode=3 ]
#みお
すぐ食べられるごはん、用意――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="odoroki.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0005.mp3"  ]
[tb_start_text mode=3 ]
#みお
せん、せい……？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
汗だくで雑巾やらなにやらを持つこちらを見て、[r]
みおはすぐに察してくれた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0258.mp3"  ]
[tb_start_text mode=4 ]
#みお
お部屋掃除しててくれたんですね[l]
[_tb_end_text]

[glink  color="btn_05_black glink_double_left"  storage=""  size="20"  x="375"  y="400"  width=""  height=""  text="凝り性なので……"  _clickable_img=""  target="*s2_1"  ]
[glink  color="btn_05_black glink_double_right"  storage=""  size="20"  x="772"  y="400"  width=""  height=""  text="溜めてからガッとやるたちで……"  _clickable_img=""  target="*s2_2"  ]
[s  ]

;----------------------------------------------------
*s2_1

[mioHyoujouSabun hyoujou="happyake5.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0115.mp3"  ]
[tb_start_text mode=3 ]
#みお
やり出すと止まらなくなるものって[r]
ありますよね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="raku2.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0001.mp3"  ]
[tb_start_text mode=3 ]
#みお
意外に楽しくなってきちゃったりして[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
うんうん。[p]
[_tb_end_text]

[jump  target="*s2next"  ]
;----------------------------------------------------
*s2_2

[mioHyoujouSabun hyoujou="normalake1.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0128.mp3"  ]
[tb_start_text mode=3 ]
#みお
ほぁ……なるほど……[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="situmon.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0153.mp3"  ]
[tb_start_text mode=3 ]
#みお
つまり、夏休みの宿題みたいなやつですか？[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そうかもしれない。[p]
[_tb_end_text]

[jump  target="*s2next"  ]

;----------------------------------------------------
*s2next

[mioHyoujouSabun hyoujou="rakuake4.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
お掃除、助かっちゃいました[r]
わたし家事は好きでしてるんですけど――[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="happyake3.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m001_part0194.mp3"  ]
[tb_start_text mode=3 ]
#みお
帰って来たおうちがぴかぴかなのって、[r]
こんなにうれしいんですね[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
見返りを求めたわけではないが、[r]
その笑顔ひとつで報われた気分になれた。[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="doya.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0013.mp3"  ]
[tb_start_text mode=3 ]
#みお
それじゃあバトンタッチしてもらって[r]
ここからの家事はわたしですからね[p]
[_tb_end_text]

[mioHyoujouSabun hyoujou="enryo.png"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_part/FT_m002_part0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
まずはお夕飯にしましょう[p]
[_tb_end_text]

[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
[wait  time="500"  ]
[tb_hide_message_window  ]
[addTime minutes=30]
[chara_hide_all  time="1"  wait="false"  ]
[mask_off  time="1000"  effect="fadeOut"  ]


[messageON]

[tb_start_text mode=3 ]
#
…………[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[return]
;夕食を食べたていにして、食後感想～自由行動パート開始











