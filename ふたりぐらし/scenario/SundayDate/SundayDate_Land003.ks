*land_cg2

[setreplay name="land001" storage="SundayDate/SundayDate_Land002.ks" target="replay_land"]
;FG003_6.png
[mask time="500" effect="fadeIn" ]
[chara_hide_all time="1" ]
[playbgm2 volume="40"  time="1000"  loop="true"  fadein="false"  storage="BGM0_title.mp3"  html5="false"  ]

[CGSet layer="1" storage="EVcg/DateLand/00.png" time="500"   ]
[if exp="!f.flag_replay" ]
    [setTime minutes="0" hours="15"]
[endif]
[mask_off time="500" effect="fadeOut" ]





[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0068.mp3"  ]
[messageON]
[tb_start_text mode=3 ]
#みお
う～ん、なんど食べてもおいしいです[p]
[_tb_end_text]
[CGSet layer="1" storage="EVcg/DateLand/01.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0069.mp3"  ]
[tb_start_text mode=3 ]
#みお
今回も食べさせてくれるんですか？[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DateLand/02.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0070.mp3"  ]
[tb_start_text mode=3 ]
#みお
さすがにもう照れたりは……と思っても[r]
いざとなると、これは……[p]
[_tb_end_text]
[image layer="1" storage="../bgimage/bk100.jpg" time="1000" ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0071.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ、あーん……[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DateLand/03.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0072.mp3"  ]
[tb_start_text mode=3 ]
#みお
ん……ありが、とう、ございます[r]
先生[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DateLand/07.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0073.mp3"  ]
[tb_start_text mode=3 ]
#みお
それではわたしからも……[p]
[_tb_end_text]

[CGSet layer="1" storage="EVcg/DateLand/08.png" time="500"   ]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0074.mp3"  ]
[tb_start_text mode=3 ]
#みお
はい、あーん[p]
[_tb_end_text]
[messageInvisible]
[fadeinbgm2 volume="40"  time="3000"  loop="true"  fadein="false"  storage=&f.beforeBGM  html5="false"  ]
[endreplay]
[return]