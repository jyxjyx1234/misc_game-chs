[_tb_system_call storage=system/_scene2_day1_night.ks]

*day1_night

[chara_mod  name="mio2"  time="20"  cross="false"  storage="chara/2/s_rakuake3.png"  ]
[tb_start_text mode=3 ]
#みお
お料理とか、お掃除とか……[r]
得意なので、まかせてくださいね[p][r]

[_tb_end_text]

[bg2  time="6000"  wait="false"  method="fadeIn"  storage="room_n_o_off2.png"  ]
[tb_start_text mode=3 ]
#みお
お世話になるんだし、[r]
そのくらいはさせてください[p][r]

[_tb_end_text]

[chara_mod  name="mio2"  time="10"  cross="false"  storage="chara/2/s_normalake2.png"  ]
[tb_start_text mode=3 ]
#みお
あ、外……[r]
暗くなってきました[p][r]

[_tb_end_text]

[tb_hide_message_window  ]
[playse  volume="100"  time="1000"  buf="1"  storage="se/curtain2.mp3"  ]
[wse  ]
[bg2  time="20"  method="crossfade"  storage="room_n_c_off.png"  ]
[playse  volume="90"  time="1000"  buf="1"  storage="se/roomlamp.mp3"  ]
[wse  ]
[bg2  time="20"  method="crossfade"  storage="C3_n_c_lit.png"  ]
[chara_mod  name="mio2"  time="10"  cross="false"  storage="chara/2/s_fuanake.png"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
ふぅ。泊めてもらえて、[r]
良かったです……[p][r]
[_tb_end_text]

[chara_mod  name="mio2"  time="10"  cross="false"  storage="chara/2/s_normalake2.png"  ]
[tb_start_text mode=1 ]
#みお
…………[p]

[_tb_end_text]

[chara_mod  name="mio2"  time="10"  cross="false"  storage="chara/2/s_rakuake1.png"  ]
[tb_start_text mode=3 ]
#みお
おなか空きませんか？[l][r]
お仕事たいへんでしたよね[p][r]
[_tb_end_text]

[tb_start_text mode=3 ]
#みお
泊めていただくんです、[r]
お夕飯ぐらいは作らせてください[p][r]
[_tb_end_text]

[tb_start_text mode=4 ]
#
夕飯か。[l][r]
どうしようか……
[_tb_end_text]

[glink  color="btn_05_black"  storage="scene2_day1_night.ks"  size="20"  text="出前を取る"  x="434"  y="405"  width=""  height=""  _clickable_img=""  target="*S2demae"  ]
[glink  color="btn_05_black"  storage="scene2_day1_night.ks"  size="20"  text="作ってもらう"  x="710"  y="408"  width=""  height=""  _clickable_img=""  target="*S2tukuraseru"  ]
[s]
*S2demae

[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[tb_start_text mode=3 ]
#
出前を取ろう。[l][r]
何にしようか……[r]
[_tb_end_text]

[tb_start_text mode=1 ]
#
こっちはシナリオここまでで終わり。[p]
共通部分に戻ります。[p]
[_tb_end_text]

[jump  storage="scene2_day1_night.ks"  target="*s2kyoutuu"  ]
*S2tukuraseru

[playse  volume="100"  time="1000"  buf="1"  storage="se/s_kettei.mp3"  ]
[tb_start_text mode=1 ]
#みお
はい、まかせてくださいっ[p]
[_tb_end_text]

[chara_mod  name="mio2"  time="10"  cross="false"  storage="chara/2/s_normalake2.png"  ]
[tb_start_text mode=3 ]
#みお
えっと……キッチンを見てもいいですか？[r]
何があるか確認したいので[p][r]
[_tb_end_text]

[tb_start_text mode=3 ]
#
冷蔵庫の中にまともな食材は入っていない。[l][r]
飲み物と調味料がほんの少しあるくらいだ。[p][r]
[_tb_end_text]

[tb_start_text mode=1 ]
#みお
少し待っててくださいね[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
シナリオここまでで終わり。[p]
共通部分に戻ります。[p]
[_tb_end_text]

[jump  storage="scene2_day1_night.ks"  target="*s2kyoutuu"  ]
*s2kyoutuu

[tb_start_text mode=1 ]
#
ごはんを食べた。[p]
分岐が終わって共通パートに戻ってきたぞ。[p]

[_tb_end_text]

[jump  storage="day2_morning.ks"  target=""  ]
