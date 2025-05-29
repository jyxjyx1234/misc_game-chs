
*aquarium_cg2
[setreplay name="aquarium001" storage="SundayDate/SundayDate_Aquarium002.ks" target="replay_aquarium"]
;FG003_6.png
[mask time="500" effect="fadeIn" ]
[chara_hide_all time="1" ]
[playbgm2 volume="40"  time="1000"  loop="true"  fadein="false"  storage="BGM0_title.mp3"  html5="false"  ]

[CGSet storage="EVcg/aquarium/FG003_6.png" layer="1" time="1500" name="FG003"]
[if exp="!f.flag_replay" ]
    [setTime minutes="0" hours="15"]
[endif]
[mask_off time="500" effect="fadeOut" ]

[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0019.mp3"  ]
[tb_start_text mode=3 ]
#みお
あっちも楽しそうですよ[r]
先生、行きましょう[p]
[_tb_end_text]

;FG003_1.png
[changeimg storage="EVcg/aquarium/FG003_1.png" name="FG003"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0020.mp3"  ]
[tb_start_text mode=3 ]
#みお
あ――……引っ張っちゃってましたね[r]
つい、夢中になっちゃって[p]
[_tb_end_text]


;FG003_4.png
[changeimg storage="EVcg/aquarium/FG003_4.png" name="FG003"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0021.mp3"  ]
[tb_start_text mode=3 ]
#みお
ふふ……[p]
[_tb_end_text]

;FG003_2.png
[changeimg storage="EVcg/aquarium/FG003_2.png" name="FG003"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0022.mp3"  ]
[tb_start_text mode=3 ]
#みお
ここで前にしたお話、おぼえてますか？[p]
[_tb_end_text]

;FG003_3.png
[changeimg storage="EVcg/aquarium/FG003_3.png" name="FG003"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0023.mp3"  ]
[tb_start_text mode=3 ]
#みお
わたし、今日はめいいっぱい[r]
はしゃいじゃいますからね[p]
[_tb_end_text]

;FG003_5.png
[changeimg storage="EVcg/aquarium/FG003_5.png" name="FG003"]
[playse  volume="100"  time="1000"  buf="2"  storage="vo_scene/FT_m003_Date_0024.mp3"  ]
[tb_start_text mode=3 ]
#みお
さ、行きましょう[r]
先生[p]
[_tb_end_text]

[stopbgm]
[tb_hide_message_window  ]
[wait  time="500"  ]
[maskStart]
[bgChange time="0"  method="crossfade"  storage="bk100.jpg"  ]
;☆スチル消去
[freeimage layer="1"]
[addTime minutes=30]
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

[endreplay]
;ステータス加算処理
[addTime minutes=30]
[fadeinbgm2 volume="40"  time="1500"  loop="true"  fadein="false"  storage=&f.beforeBGM  html5="false"  ]

[return]
;以上		