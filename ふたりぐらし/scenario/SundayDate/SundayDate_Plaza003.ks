[setreplay name="plaza001" storage="SundayDate/SundayDate_Plaza002.ks" target="replay_plaza"]
*plaza_cg2
;FG003_6.png
[mask time="500" effect="fadeIn" ]
[chara_hide_all time="1" ]
[playbgm2 volume="40"  time="1000"  loop="true"  fadein="false"  storage="BGM0_title.mp3"  html5="false"  ]

[CGSet layer="1" storage="EVcg/DatePlaza/00.png" time="500"   ]
[if exp="!f.flag_replay" ]
    [setTime minutes="0" hours="15"]
[endif]
[mask_off time="500" effect="fadeOut" ]



[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0043.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
前もこの場所で座って休みましたね[r]
……こんなふうにわたしが寄りかかって[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DatePlaza/04.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0044.mp3"  ]
[tb_start_text mode=3 ]
#みお
まわりのこどもたちに負けないぐらい[r]
わたしも今日一日楽しみました[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DatePlaza/03.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0045.mp3"  ]
[tb_start_text mode=3 ]
#みお
こどもって、守ってくれる人がいるから[r]
安心してへとへとになれる……のかな、なんて[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DatePlaza/00.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0046.mp3"  ]
[tb_start_text mode=3 ]
#みお
――はい、先生はわたしの保護者さんです[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DatePlaza/01.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0047.mp3"  ]
[tb_start_text mode=3 ]
#みお
だから、遠慮なく、もっとぎゅうって[r]
くっついちゃうんです[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DatePlaza/05.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0048.mp3"  ]
[tb_start_text mode=3 ]
#みお
えへへ……[p]
[_tb_end_text]
[messageInvisible]
[fadeinbgm2 volume="40"  time="3000"  loop="true"  fadein="false"  storage=&f.beforeBGM  html5="false"  ]
[endreplay]
[return]