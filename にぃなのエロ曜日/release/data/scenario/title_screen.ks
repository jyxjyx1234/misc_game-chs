[_tb_system_call storage=system/_title_screen.ks]

[charaname  type="text"  pos="center"  bgcolor="0x000000"  opacity="255"  x="150"  y="780"  bgimage="none.png"  ]
*プロデュース

[tb_start_tyrano_code]
[hidemenubutton]
[eval exp="f.BGM音量=3"]
[eval exp="f.VOICE音量=3"]
[bgmopt volume=100]
[seopt volume=100]
;[eval exp="sf.ゲームクリア = 1" ]
;システム変数消去↓
;[clearsysvar]
[_tb_end_tyrano_code]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[背景 storage="produce.jpg"]
[絵変更 time=1000 visible=false]
[背景 storage="caution.jpg"]
[絵変更 time=1500 visible=false]
[_tb_end_tyrano_code]

[wait  time="500"  ]
*回想復帰

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_start_tyrano_code]
[clearvar exp="f.kaisou"]
[clearvar exp="f.kaisoumode"]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="5.ogg"  ]
[tb_start_tyrano_code]
[背景 storage="title.png"]
[絵変更 time=10 visible=false]
[_tb_end_tyrano_code]

*title

[glink  storage="scene1.ks"  text="从头开始"  x="1400"  y="40"  width="280"  height="40"  _clickable_img=""  size="35"  color="rosy"  ]
[glink  text="继续"  x="1400"  y="140"  target="*load"  width="280"  height="40"  _clickable_img=""  size="35"  color="blue"  ]
[tb_start_tyrano_code]
[if exp="sf.ゲームクリア == 1"]
[glink  text="回想模式"  x="1400"  y="240"  target="*回想ジャンプ"  width="280"  height="40"  _clickable_img=""  size="35"  color="green"  ]
[elsif exp="sf.ゲームクリア == null"]
[glink  text="一键开启回想模式"  x="1400"  y="240"  target="*allcg"  width="280"  height="40"  _clickable_img=""  size="35"  color="red"  ]
[endif]
[glink  text="游戏官网"  x="1400"  y="340"  target="*HPへ"  width="280"  height="40"  _clickable_img=""  size="35"  color="pink"  ]
[glink  text="jyxjyx1234的博客"  x="1400"  y="440"  target="*jyxjyx1234"  width="280"  height="40"  _clickable_img=""  size="35"  color="pink"  ]
[glink  text="御爱同萌"  x="1400"  y="540"  target="*yuai"  width="280"  height="40"  _clickable_img=""  size="35"  color="pink"  ]

[_tb_end_tyrano_code]

[mask_off  time="1000"  effect="fadeOut"  ]
[s  ]

*allcg
[tb_start_tyrano_code]
[eval exp="sf.ゲームクリア = 1"]
[_tb_end_tyrano_code]
[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]

*回想ジャンプ

[tb_start_tyrano_code]
[eval exp="f.kaisoumode = 1"]
[eval exp="f.S1クリア = 2"]
[eval exp="f.S2クリア = 2"]
[eval exp="f.S3クリア = 2"]
[eval exp="f.S4クリア = 2"]
[eval exp="f.S5クリア = 2"]
[eval exp="f.S6クリア = 2"]
[eval exp="f.S7クリア = 2"]
[eval exp="f.S8クリア = 2"]
[eval exp="f.S9クリア = 1"]
[eval exp="f.Sクリアモード = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"]
[_tb_end_tyrano_code]

*load

[cm  ]

[tb_start_tyrano_code]
[if exp="sf.system.autosave == true"]
[autoload]
[else]
[jump  storage="title_screen.ks"  target="*title"  ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*HPへ

[tb_start_tyrano_code]
[web url="http://harinezumikobo.jp/"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]


*jyxjyx1234

[tb_start_tyrano_code]
[web url="https://jyxjyx1234.github.io/"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]

*yuai

[tb_start_tyrano_code]
[web url="https://ai2.moe/"]
[_tb_end_tyrano_code]

[jump  storage="title_screen.ks"  target="*title"  ]
[s  ]
