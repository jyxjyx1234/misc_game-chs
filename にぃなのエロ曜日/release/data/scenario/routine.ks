[_tb_system_call storage=system/_routine.ks]

*メッセージ1

[tb_start_tyrano_code]
[free layer=fix name="button"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="button" role="skip" graphic="button/skip3.png" x="551" y="798" width="82" height="39" visible="false" ]
[button name="button" role="auto" graphic="button/auto3.png" x="638" y="798" width="82" height="39" visible="false" ]
[button name="button" role="backlog" graphic="button/backlog3.png" x="725" y="798" width="82" height="39" visible="false" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[position layer="message0" left="5" top="775" width="950" height="300" frame="frame3.png" marginl="20" marginr="0" margint="80" marginb="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp ="f.mes = 1"]
[_tb_end_tyrano_code]

[return  ]
*メッセージ2

[tb_start_tyrano_code]
[free layer=fix name="button"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="button" role="skip" graphic="button/skip3.png" x="1621" y="798" width="82" height="39" visible="false" ]
[button name="button" role="auto" graphic="button/auto3.png" x="1708" y="798" width="82" height="39" visible="false" ]
[button name="button" role="backlog" graphic="button/backlog3.png" x="1795" y="798" width="82" height="39" visible="false" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[position layer="message0" left="1065" top="775" width="850" height="297" frame="frame3.png" marginl="10" marginr="0" margint="80" marginb="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp ="f.mes = 2"]
[_tb_end_tyrano_code]

[return  ]
*快感速度

[tb_start_tyrano_code]
[free layer="0" page="fore" name="icon"]
[アイコン storage="icon/modoru.png" width=182 x=1724 y=32]
[アイコン storage="icon/nomal2.png" width=182 x=1724 y=132 cond="f.kaisou == 1 && f.快感速度 == 0"  ]
[アイコン storage="icon/nomal1.png" width=182 x=1724 y=132 cond="f.kaisou == 1 && f.快感速度 == 1"  ]
[アイコン storage="icon/high1.png" width=182 x=1724 y=232 cond="f.kaisou == 1 && f.快感速度 == 0"  ]
[アイコン storage="icon/high2.png" width=182 x=1724 y=232 cond="f.kaisou == 1 && f.快感速度 == 1"  ]
[_tb_end_tyrano_code]

[return  ]
*システム表示元

[cm  ]
[tb_start_tyrano_code]

[free layer=fix name="sysbutton"]

[if exp="f.kaisou == null && f.Sクリアモード == null"]
[button name="sysbutton" role="save" fix="true" graphic="sentaku/save.png" width=182 x=1724 y=32]
[button name="sysbutton" role="load" fix="true" graphic="sentaku/load.png" width=182 x=1724 y=132]
[button name="sysbutton" role="fullscreen" fix="true" graphic="sentaku/full.png" width=182 x=1724 y=232]
[button name="sysbutton" graphic="sentaku/volume.png" width=182 x=1724 y=332 target="*サウンド選択"]
[button name="sysbutton" role="title" fix="true" graphic="sentaku/title.png" width=182 x=1724 y=432]
[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=532 target="*選択肢復活"]
[else]
[button name="sysbutton" role="fullscreen" fix="true" graphic="sentaku/full.png" width=182 x=1724 y=32]
[button name="sysbutton" graphic="sentaku/volume.png" width=182 x=1724 y=132 target="*サウンド選択"]
[button name="sysbutton" role="title" fix="true" graphic="sentaku/title.png" width=182 x=1724 y=232 cond="f.kaisou == null"  ]
[button name="sysbutton" graphic="sentaku/kaisou.png" target="*次へ" width=182 x=1724 y=232 cond="f.kaisou == 1"  ]
[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=332 target="*選択肢復活"]
[endif]

[_tb_end_tyrano_code]

[return  ]

*システム表示

[cm  ]
[tb_start_tyrano_code]

[free layer=fix name="sysbutton"]

[if exp="f.kaisou == null && f.Sクリアモード == null"]
[button name="sysbutton" graphic="sentaku/load.png" width=182 x=1724 y=32 storage="routine.ks" target="*load"]
[button name="sysbutton" role="fullscreen" fix="true" graphic="sentaku/full.png" width=182 x=1724 y=132]
[button name="sysbutton" graphic="sentaku/volume.png" width=182 x=1724 y=232 target="*サウンド選択"]
[button name="sysbutton" role="title" fix="true" graphic="sentaku/title.png" width=182 x=1724 y=332]
[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=432 target="*選択肢復活"]
[else]
[button name="sysbutton" role="fullscreen" fix="true" graphic="sentaku/full.png" width=182 x=1724 y=32]
[button name="sysbutton" graphic="sentaku/volume.png" width=182 x=1724 y=132 target="*サウンド選択"]
[button name="sysbutton" role="title" fix="true" graphic="sentaku/title.png" width=182 x=1724 y=232 cond="f.kaisou == null"  ]
[button name="sysbutton" graphic="sentaku/kaisou.png" target="*次へ" width=182 x=1724 y=232 cond="f.kaisou == 1"  ]
[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=332 target="*選択肢復活"]
[endif]

[_tb_end_tyrano_code]

[return  ]

*サウンド選択

[cm  ]
[tb_start_tyrano_code]

[free layer=fix name="sysbutton"]

[button name="sysbutton" graphic="sentaku/bgm.png" width=182 x=1724 y=32 target="*BGM音量選択"]
[button name="sysbutton" graphic="sentaku/voice.png" width=182 x=1724 y=132 target="*VOICE音量選択"]
[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=232 target="*システム"]
[_tb_end_tyrano_code]

[return  ]
*BGM音量選択

[cm  ]
[tb_start_tyrano_code]

[free layer=fix name="sysbutton"]

[if exp="f.BGM音量 == 0"]
[button name="sysbutton" graphic="sentaku/mute2.png" width=182 x=1724 y=32 target="*BGM調節" exp="f.BGM音量=0"]
[else]
[button name="sysbutton" graphic="sentaku/mute1.png" width=182 x=1724 y=32 target="*BGM調節" exp="f.BGM音量=0"]
[endif]

[if exp="f.BGM音量 == 1"]
[button name="sysbutton" graphic="sentaku/small2.png" width=182 x=1724 y=132 target="*BGM調節" exp="f.BGM音量=1"]
[else]
[button name="sysbutton" graphic="sentaku/small1.png" width=182 x=1724 y=132 target="*BGM調節" exp="f.BGM音量=1"]
[endif]

[if exp="f.BGM音量 == 2"]
[button name="sysbutton" graphic="sentaku/medium2.png" width=182 x=1724 y=232 target="*BGM調節" exp="f.BGM音量=2"]
[else]
[button name="sysbutton" graphic="sentaku/medium1.png" width=182 x=1724 y=232 target="*BGM調節" exp="f.BGM音量=2"]
[endif]

[if exp="f.BGM音量 == 3"]
[button name="sysbutton" graphic="sentaku/big2.png" width=182 x=1724 y=332 target="*BGM調節" exp="f.BGM音量=3"]
[else]
[button name="sysbutton" graphic="sentaku/big1.png" width=182 x=1724 y=332 target="*BGM調節" exp="f.BGM音量=3"]
[endif]

[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=432 target="*サウンド選択"]
[_tb_end_tyrano_code]

[return  ]
*VOICE音量選択

[cm  ]
[tb_start_tyrano_code]

[free layer=fix name="sysbutton"]

[if exp="f.VOICE音量 == 0"]
[button name="sysbutton" graphic="sentaku/mute2.png" width=182 x=1724 y=32 target="*VOICE調節" exp="f.VOICE音量=0"]
[else]
[button name="sysbutton" graphic="sentaku/mute1.png" width=182 x=1724 y=32 target="*VOICE調節" exp="f.VOICE音量=0"]
[endif]

[if exp="f.VOICE音量 == 1"]
[button name="sysbutton" graphic="sentaku/small2.png" width=182 x=1724 y=132 target="*VOICE調節" exp="f.VOICE音量=1"]
[else]
[button name="sysbutton" graphic="sentaku/small1.png" width=182 x=1724 y=132 target="*VOICE調節" exp="f.VOICE音量=1"]
[endif]

[if exp="f.VOICE音量 == 2"]
[button name="sysbutton" graphic="sentaku/medium2.png" width=182 x=1724 y=232 target="*VOICE調節" exp="f.VOICE音量=2"]
[else]
[button name="sysbutton" graphic="sentaku/medium1.png" width=182 x=1724 y=232 target="*VOICE調節" exp="f.VOICE音量=2"]
[endif]

[if exp="f.VOICE音量 == 3"]
[button name="sysbutton" graphic="sentaku/big2.png" width=182 x=1724 y=332 target="*VOICE調節" exp="f.VOICE音量=3"]
[else]
[button name="sysbutton" graphic="sentaku/big1.png" width=182 x=1724 y=332 target="*VOICE調節" exp="f.VOICE音量=3"]
[endif]

[button name="sysbutton" graphic="sentaku/modoru.png" width=182 x=1724 y=432 target="*サウンド選択"]
[_tb_end_tyrano_code]

[return  ]
*BGM調節

[tb_start_tyrano_code]
[if exp="f.BGM音量 == 0"]
[bgmopt volume=0]
[elsif exp="f.BGM音量 == 1"]
[bgmopt volume=33]
[elsif exp="f.BGM音量 == 2"]
[bgmopt volume=66]
[elsif exp="f.BGM音量 == 3"]
[bgmopt volume=100]
[endif]
[_tb_end_tyrano_code]

[return  ]
*VOICE調節

[tb_start_tyrano_code]
[if exp="f.VOICE音量 == 0"]
[seopt volume=0]
[elsif exp="f.VOICE音量 == 1"]
[seopt volume=33]
[elsif exp="f.VOICE音量 == 2"]
[seopt volume=66]
[elsif exp="f.VOICE音量 == 3"]
[seopt volume=100]
[endif]
[_tb_end_tyrano_code]

[return  ]

*load

[cm  ]
[tb_start_tyrano_code]
[autoload]
[_tb_end_tyrano_code]

[jump  target="*title"  storage=""  ]
[s  ]

*終了処理

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[tb_bar_hide  time="1000"  wait="false"  name=""  ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[return  ]
