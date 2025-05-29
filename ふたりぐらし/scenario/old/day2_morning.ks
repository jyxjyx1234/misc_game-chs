[_tb_system_call storage=system/_day2_morning.ks]

[cm  ]
[bg2  time="600"  method="crossfade"  storage="bk100.jpg"  ]
[stopbgm  time="1000"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[playse  volume="100"  time="1000"  buf="1"  fadein="true"  storage="se/houtyou1.mp3"  ]
[cm  ]
[messageON]
[tb_start_text mode=1 ]
…………[p]

[_tb_end_text]

[tb_hide_message_window  ]
[stopse  time="1000"  buf="0"  ]
[bg2  time="6000"  method="crossfade"  storage="room_m_c.png"  ]
[chara_show  name="ryouri"  time="180"  wait="true"  storage="chara/3/s_f_1.png"  width="397"  height="720"  left="-8"  top="28"  reflect="false"  ]
[messageON]
[tb_start_text mode=1 ]
#みお
おはようございます。[p]


[_tb_end_text]

[chara_mod  name="ryouri"  time="10"  cross="false"  storage="chara/3/s_f_2.png"  ]
[tb_start_text mode=1 ]
#みお
今日もいいお天気ですよ[p]


[_tb_end_text]

[playse  volume="100"  time="1000"  buf="1"  storage="se/curtain2.mp3"  ]
[bgmovie  time="10"  volume="0"  loop="true"  storage="room_m_o_sakura.webm"  ]
[iscript]
$(window).trigger('resize');
[endscript]

[tb_start_text mode=3 ]
#みお
朝ごはん、すぐできますから[l][r]
待っててくださいね[p][r]

[_tb_end_text]

[playbgm2  volume="100"  time="2000"  loop="true"  fadein="true"  storage="BGM3_morning.mp3"  ]
[playse  volume="70"  time="1000"  buf="1"  storage="se/yaku2.mp3"  ]
[tb_start_text mode=1 ]
#みお
２クリックめ[p]

[_tb_end_text]

[tb_start_text mode=1 ]
#みお
３クリックめ[p]

[_tb_end_text]

[stopse  time="1000"  buf="1"  fadeout="true"  ]
[tb_start_text mode=1 ]
#みお
４クリックめ[p]

[_tb_end_text]

[tb_hide_message_window  ]
[chara_hide_all  time="10"  wait="false"  ]
[stop_bgmovie  time="1000"  ]
[jump  storage="communication1.ks"  target=""  ]
