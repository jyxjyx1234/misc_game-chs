[_tb_system_call storage=system/_scene2b.ks]

*scene2b

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン2変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*おっぱい2回目

[cm  ]
[tb_start_text mode=4 ]
[僕]「来，到这边来～」[改ページ]
[playse storage="niina284.ogg"]
[にぃな]「嗯」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="280"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ2b"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ2b"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="2.ogg"  ]
[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

*選択肢復活

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"]
[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活" width="175"]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"]
[選択画像 graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"  ]
[選択画像  graphic="sentaku/fuku.png"  target="*服見る"   cond="f.S2脱がす[0] < 2" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ見る"  cond="f.S2脱がす[1] < 1 && f.S2脱がす[0] >= 2" ]
[選択画像  graphic="sentaku/oppai.png"  target="*おっぱい見る"  cond="f.S2脱がす[1] >= 1 && f.S2脱がす[0] >= 2" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート見る"   cond="f.S2脱がす[2] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす選択肢"   cond="f.S2脱がす[0] < 2" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"   cond="f.S2脱がす[1] < 1 && f.S2脱がす[0] >= 2" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす"     cond="f.S2脱がす[2] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"   ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*服脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/mekuru.png"  target="*服めくる"   ]
[選択画像  graphic="sentaku/nugasu.png"  target="*服脱がす"   ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*領域復活

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[_tb_end_tyrano_code]

[call  storage="routine.ks"  target="*快感速度"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="kao" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clickable_map  visible=false  graphic=scene2/S2clickable1a.png storage=scene2b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 0 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable2a.png storage=scene2b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 1 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable3a.png storage=scene2b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 >= 2 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable1b.png storage=scene2b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 0 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable2b.png storage=scene2b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 1 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable3b.png storage=scene2b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 >= 2 && f.kaisou == 1"   ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*頭撫でる"]

[elsif exp="clickable_map.click=='FFFF00'"]
[eval exp="f.S2愛撫 = 0"]
[jump  target="*服触る"  cond="f.S2進行 == 0"   ]
[jump  target="*ブラ触る"  cond="f.S2進行 == 1"  ]
[jump  target="*おっぱい揉む"  cond="f.S2進行 >= 2"  ]

[elsif exp="clickable_map.click=='00FF00'"]
[eval exp="f.S2愛撫 = 0"]
[jump target="*乳首摘まむ"  cond="f.S2おっぱい[1] == 1"  ]
[jump target="*おっぱい揉む" ]

[elsif exp="clickable_map.click=='FF00FF'"]
[call  target="*男消去" cond="f.S2愛撫 != 0" ]
[free layer="0" page="fore" name="icon"]
[free layer="0" page="back" name="icon"]
[free layer="0" page="fore" name="maru"]
[free layer="0" page="back" name="maru"]
[jump  target="*選択肢復活"]
[elsif exp="clickable_map.click=='A40001'"]
[eval exp="f.快感速度 = 0"]
[jump  target="*領域復活"]
[elsif exp="clickable_map.click=='AD6B00'"]
[eval exp="f.快感速度 = 1"]
[jump  target="*領域復活"]
[else]
[jump  target="*領域復活"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*システム

[call  storage="routine.ks"  target="*システム表示"  ]
[s  ]
*サウンド選択

[call  storage="routine.ks"  target="*サウンド選択"  ]
[s  ]
*BGM音量選択

[call  storage="routine.ks"  target="*BGM音量選択"  ]
[s  ]
*VOICE音量選択

[call  storage="routine.ks"  target="*VOICE音量選択"  ]
[s  ]
*BGM調節

[tb_start_tyrano_code]
[call  storage="routine.ks"  target="*BGM調節"  ]
[_tb_end_tyrano_code]

[jump  target="*BGM音量選択"  storage=""  ]
*VOICE調節

[tb_start_tyrano_code]
[call  storage="routine.ks"  target="*VOICE調節"  ]
[_tb_end_tyrano_code]

[jump  target="*VOICE音量選択"  storage=""  ]
*話す

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S2進行 == 0"]
[call  target="*話す1"  ]
[eval exp="tf.表情スキップ = 1"]

[elsif exp="f.S2進行 == 1"]
[call  target="*話す2"  ]
[eval exp="tf.表情スキップ = 0"]

[elsif exp="f.S2進行 == 2"]
[call  target="*話す3"  ]
[eval exp="tf.表情スキップ = 0"]

[elsif exp="f.S2進行 == 3"]
[call  target="*話す4"  ]
;表情スキップ触るで0

[elsif exp="f.S2進行 == 4"]
[call  target="*話す5"  ]
;表情スキップ触るで0
[endif]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_text mode=4 ]
[僕]「妮娜酱的漂亮奶子，再让我摸摸嘛～」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina285.ogg"]
[にぃな]「欸～奶子？可以啊……不过没多少哦？」[改ページ]
[僕]「我知道」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu2.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina286.ogg"]
[にぃな]「哼」[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]「我希望妮娜酱一直穿这个胸罩呢～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina287.ogg"]
[にぃな]「噫～不要，下次绝对要让你给我买可爱的啦」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina288.ogg"]
[にぃな]「哈啊……妮娜的奶子怎么不再变大点呢」[改ページ]
[僕]「听说揉了就会变大哦」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu1.png" x=-8 y=-8]
[目 storage="scene2/me3.png"]
[口 storage="scene2/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina289.ogg"]
[にぃな]「欸、真的吗」[改ページ]
[僕]「嗯、听说刺激奶子能让发育变好哦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina290.ogg"]
[にぃな]「哼、哼嗯……要试试看吗」[改ページ]
[僕]（……看来戳中她心事了）[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 < 2"]
[call target="*話す4a"]
[elsif exp="f.S2エロ台詞 == 2"]
[call target="*話す4b"]
[elsif exp="f.S2エロ台詞 == 3"]
[call target="*話す4c"]
[elsif exp="f.S2エロ台詞 == 4"]
[call target="*話す4d"]
[elsif exp="f.S2エロ台詞 == 5"]
[call target="*話す4e"]
[elsif exp="f.S2エロ台詞 == 6"]
[call target="*話す4f"]
[elsif exp="f.S2エロ台詞 == 7"]
[call target="*話す4g"]
[elsif exp="f.S2エロ台詞 == 8"]
[call target="*話す4h"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す4a

[tb_start_text mode=4 ]
[僕]「哈啊…今天也这么水嫩…小〇奶子、弹性超棒」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す4b

[tb_start_text mode=4 ]
[playse storage="niina291.ogg"]
[にぃな]「开心吗？揉妮娜的奶子」[改ページ]
[僕]「嗯、超级开心」[改ページ]
[playse storage="niina292.ogg"]
[にぃな]「……这样啊」[改ページ]
[_tb_end_text]

[return  ]
*話す4c

[tb_start_text mode=4 ]
[playse storage="niina293.ogg"]
[にぃな]「感觉比以前……」[改ページ]
[僕]「怎～么了？」[改ページ]
[playse storage="niina294.ogg"]
[にぃな]「唔…没什么」[改ページ]
[_tb_end_text]

[return  ]
*話す4d

[tb_start_text mode=4 ]
[playse storage="niina295.ogg"]
[にぃな]「再多揉揉奶子也可以哦～」[改ページ]
[僕]「今天揉揉不讨厌吗？」[改ページ]
[playse storage="niina296.ogg"]
[にぃな]「嗯、该说不要还是该怎么说……」[改ページ]
[_tb_end_text]

[return  ]
*話す4e

[tb_start_text mode=4 ]
[僕]「呼呼、奶子舒～服吗？」[改ページ]
[playse storage="niina297.ogg"]
[にぃな]「……嗯」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す4f

[tb_start_text mode=4 ]
[playse storage="niina298.ogg"]
[にぃな]「那、那个…连奶子都变得超舒服了」[改ページ]
[僕]「哦～　成长了呢」[改ページ]
[_tb_end_text]

[return  ]
*話す4g

[tb_start_text mode=4 ]
[僕]「看～啊、妮娜酱的小胸脯正在ムニュムニュ揉来揉去哟～」[改ページ]
[playse storage="niina299.ogg"]
[にぃな]「啊、连妮娜的奶子也这样动起来了……」[改ページ]
[_tb_end_text]

[return  ]
*話す4h

[tb_start_text mode=4 ]
[playse storage="niina300.ogg"]
[にぃな]「哈啊～[ハート]被揉奶子真的好舒服哦～」[ハート][改ページ]
[僕]「呼呼、妮娜酱的奶子也太敏感了吧～」[改ページ]
[playse storage="niina301.ogg"]
[にぃな]「呀～[ハート]哥哥好坏～」[改ページ]
[_tb_end_text]

[return  ]
*話す5

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 < 2"]
[call target="*話す5a"]
;[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S2エロ台詞 == 2"]
[call target="*話す5b"]
[elsif exp="f.S2エロ台詞 == 3"]
[call target="*話す5c"]
[elsif exp="f.S2エロ台詞 == 4"]
[call target="*話す5d"]
[elsif exp="f.S2エロ台詞 == 5"]
[call target="*話す5e"]
[elsif exp="f.S2エロ台詞 == 6"]
[call target="*話す5f"]
[elsif exp="f.S2エロ台詞 == 7"]
[call target="*話す5g"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S2エロ台詞 == 8"]
[call target="*話す5h"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す5a

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_text mode=4 ]
[僕]「连这颗小小豆豆也要使劲捏呢～」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5b

[tb_start_text mode=4 ]
[僕]「怎～么了？」[改ページ]
[playse storage="niina302.ogg"]
[にぃな]「可是...有点痛嘛」[改ページ]
[僕]「别～这么着急嘛」[改ページ]
[playse storage="niina303.ogg"]
[にぃな]「才没有着急呢……」[改ページ]
[_tb_end_text]

[return  ]
*話す5c

[tb_start_text mode=4 ]
[僕]「看啊、一边揉捏敏感乳头一边咯吱咯吱地……」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5d

[tb_start_text mode=4 ]
[playse storage="niina304.ogg"]
[にぃな]「头部感觉越来越舒服了」[改ページ]
[僕]「哼…还挺会装？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5e

[tb_start_text mode=4 ]
[僕]「今天被责弄乳头很有感觉吧？老实交代」[改ページ]
[playse storage="niina305.ogg"]
[にぃな]「那个…这、这个……」[改ページ]
[_tb_end_text]

[return  ]
*話す5f

[tb_start_text mode=4 ]
[僕]「再不老实的话，我可要使劲拽你这倔强的小乳头了哦」[改ページ]
[playse storage="niina306.ogg"]
[にぃな]「呀　[ハート]扯得太用力了啦」[改ページ]
[_tb_end_text]

[return  ]
*話す5g

[tb_start_text mode=4 ]
[僕]「哇哦，完全勃起了。妮娜酱的乳头也太脆弱了吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene2/ase2.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina307.ogg"]
[にぃな]「才、才不是！」[改ページ]
[_tb_end_text]

[return  ]
*話す5h

[tb_start_text mode=4 ]
[playse storage="niina308.ogg"]
[にぃな]「哈啊…头部[ハート]感觉好刺痛」[ハート][改ページ]
[僕]「看啊看啊、奶子太有效了超骚〇〇生用软绵绵乳头快点高潮吧」[改ページ]

[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]

[call  target="*にぃな見る2"  cond="f.S2進行 >= 2"  ]
[call  target="*にぃな見る1"  cond="f.S2進行 < 2"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（哦哦、妮娜酱快要……到了！）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 >= 0 && f.S2エロ台詞 < 3"]
[call target="*にぃな見る2a"]
[elsif exp="f.S2エロ台詞 >= 3 && f.S2エロ台詞 < 5"]
[call target="*にぃな見る2b"]
[elsif exp="f.S2エロ台詞 >= 5 && f.S2エロ台詞 < 7"]
[call target="*にぃな見る2c"]
[elsif exp="f.S2エロ台詞 >= 7 && f.S2エロ台詞 < 9"]
[call target="*にぃな見る2d"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*にぃな見る2a

[tb_start_text mode=4 ]
[僕]（嘿嘿、妮娜酱脸红了……好可爱）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2b

[tb_start_text mode=4 ]
[僕]（好像有点不知所措……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2c

[tb_start_text mode=4 ]
[僕]（很好、看起来很舒服……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2d

[tb_start_text mode=4 ]
[僕]（流了好多汗……已经浑身发烫了）[改ページ]
[_tb_end_text]

[return  ]
*服見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（妮娜酱的衣服……看起来很清凉）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*ブラ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（清纯的少女胸罩……激发萝莉控的心啊）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*おっぱい見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*乳首見る"  cond="f.S2進行 == 4"  ]
[call  target="*おっぱい見る2"  cond="f.S2進行 == 3"  ]
[call  target="*おっぱい見る1"  cond="f.S2進行 == 2"  ]

[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*おっぱい見る1

[tb_start_text mode=4 ]
[僕]（啊、怎么看〇〇生这刚发育的小胸脯都这么可爱……）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る2

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 >= 0 && f.S2エロ台詞 < 3"]
[call target="*おっぱい見る2a"]
[elsif exp="f.S2エロ台詞 >= 3 && f.S2エロ台詞 < 6"]
[call target="*おっぱい見る2b"]
[elsif exp="f.S2エロ台詞 >= 6"]
[call target="*おっぱい見る2c"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*おっぱい見る2a

[tb_start_text mode=4 ]
[僕]（能这么顺畅地揉捏揉捏……呜、有点感动）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る2b

[tb_start_text mode=4 ]
[僕]（啊……比以前更好揉了）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る2c

[tb_start_text mode=4 ]
[僕]（呼呼、这样奶子也完全是我的囊中物了）[改ページ]

[_tb_end_text]

[return  ]
*乳首見る

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 >= 0 && f.S2エロ台詞 < 3"]
[call target="*乳首見るa"]
[elsif exp="f.S2エロ台詞 >= 3 && f.S2エロ台詞 < 6"]
[call target="*乳首見るb"]
[elsif exp="f.S2エロ台詞 >= 6"]
[call target="*乳首見るc"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*乳首見るa

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_text mode=4 ]
[僕]（小小的乳头……好可爱）[改ページ]
[_tb_end_text]

[return  ]
*乳首見るb

[tb_start_text mode=4 ]
[僕]（好～嘞、今天就尽情玩弄乳头玩个够）[改ページ]
[_tb_end_text]

[return  ]
*乳首見るc

[tb_start_text mode=4 ]
[僕]（啊、已经硬邦邦了）[改ページ]
[_tb_end_text]

[return  ]
*スカート見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（粉色裙子……很有女孩子气挺好的）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*頭撫でる

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 30"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*頭撫でる3"  cond="f.S2頭[1] == 1 && f.S2愛撫 == 1"  ]
[call  target="*頭撫でる2"  cond="f.S2頭[1] == 1 && f.S2愛撫 == 0"  ]
[call  target="*頭撫でる1"  cond="f.S2頭[1] == 0"  ]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*頭撫でる1

[tb_start_tyrano_code]
[eval exp="f.S2頭[1] = 1"]
[eval exp="f.S2愛撫 = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti4.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina309.ogg"]
[にぃな]「嗯？怎么了？」[改ページ]
[僕]「想再摸摸妮娜」[改ページ]
[playse storage="niina310.ogg"]
[にぃな]「嘿嘿、感觉好像变成小不点了」[改ページ]
[僕]（明明还很小只的说……）[改ページ]
[_tb_end_text]

[return  ]
*頭撫でる2

[tb_start_tyrano_code]
[eval exp="f.S2愛撫 = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti2.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更  visible=false  time=750]
[_tb_end_tyrano_code]

[return  ]
*頭撫でる3

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene2/otoko3b.png]
[絵変更 visible=false time=500 ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene2/otoko3a.png]
[絵変更 visible=false time=500 ]
[_tb_end_tyrano_code]

[return  ]
*服触る

[tb_show_message_window  ]
[call  target="*タッチ"  storage=""  ]
[jump  target="*領域復活"  storage=""  ]
[s  ]
*ブラ触る

[tb_show_message_window  ]
[call  target="*タッチ"  storage=""  ]
[jump  target="*領域復活"  storage=""  ]
[s  ]
*タッチ

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]沙沙、沙沙……[改ページ]
[playse storage="niina311.ogg"]
[にぃな]「啊……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina312.ogg"]
[にぃな]「喂、喂。咻～别碰啦，H」[改ページ]
[僕]「好好好……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 0" cond="f.S2脱がす[0] == 0"  ]
[eval exp="f.S2進行 = 1" cond="f.S2脱がす[0] >= 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti3.png"]
[free layer="0" page="back" name="hoho" time="0"]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false time=1000]
[_tb_end_tyrano_code]

[return  ]
*おっぱい揉む

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*おっぱい3"  cond="f.S2おっぱい[1] == 1 && f.S2進行 == 3"  ]
[jump  target="*おっぱい2"  cond="f.S2おっぱい[1] == 1 && f.S2進行 != 3"  ]
[jump  target="*おっぱい1"  cond="f.S2おっぱい[1] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*おっぱい1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「来～今天也要好好揉个够你那可爱的奶子哦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina313.ogg"]
[にぃな]「这、这种说法好不要脸」[改ページ]
[僕]「我可是很不要脸的男人呢」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 3"]
[eval exp="f.S2おっぱい[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活""]
[_tb_end_tyrano_code]

*おっぱい2

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 3"]
[eval exp="tf.表情スキップ = 0"]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 - 1"]
[eval exp="f.S2エロ台詞 = 0" cond="f.S2エロ台詞 < 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*おっぱい表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[call  target="*おっぱい台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活""]
[_tb_end_tyrano_code]

*おっぱい3

[tb_start_tyrano_code]
[快感ランダム min=3 max=5 limit=280]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ2b"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene2/otoko1b.png]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;[eval exp="f.S2進行 = 3"]
[call  target="*おっぱい表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp=" f.S2エロ台詞 == 0 && f.kaikan_now >= 1 || f.S2エロ台詞 == 1 && f.kaikan_now >= 30 || f.S2エロ台詞 == 2 && f.kaikan_now >= 60 || f.S2エロ台詞 == 3 && f.kaikan_now >= 90 || f.S2エロ台詞 == 4 && f.kaikan_now >= 120 || f.S2エロ台詞 == 5 && f.kaikan_now >= 160 || f.S2エロ台詞 == 6 && f.kaikan_now >= 200 || f.S2エロ台詞 == 7 && f.kaikan_now >= 240 || f.S2エロ台詞 == 8 && f.kaikan_now >= 280"  ]
[call  target="*おっぱい台詞"  ]
[jump  target="*おっぱい4"  cond="f.kaikan_now >= 280"]
[jump  target="*領域復活"]
[endif]
[jump  target="*おっぱい3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*おっぱい4

[tb_start_text mode=4 ]
[僕]「啊……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase2.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase2.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina314.ogg"]
[にぃな]「……才不是呢」[改ページ]
[僕]「……」[改ページ]
[僕]（真是够不坦率的啊）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S2クリア = 2"]
[シーン2変数リセット]
[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene7b.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
*おっぱい表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti3.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti1.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 120"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 120 && f.kaikan_now < 160"]
[眉 storage="scene2/mayu3.png" x=16 y=16]
[目 storage="scene2/me8.png"]
[口 storage="scene2/kuti2.png"]
[elsif exp="f.kaikan_now >= 160 && f.kaikan_now < 200"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
;[口 storage="scene2/kuti5.png"]
[口 storage="scene2/kuti4.png"]
[elsif exp="f.kaikan_now >= 200 && f.kaikan_now < 240"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti5.png"]
[elsif exp="f.kaikan_now >= 240 && f.kaikan_now < 280"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me11.png"]
[口 storage="scene2/kuti9.png"]
[elsif exp="f.kaikan_now >= 280"]
[眉 storage="scene2/mayu3.png" x=12 y=12]
[目 storage="scene2/me9b.png"]
[口 storage="scene2/kuti8.png"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*おっぱい台詞

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0 && f.kaikan_now >= 1 && f.kaikan_now < 30"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 1 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina315.ogg"]
[にぃな]「呐」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 2 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina316.ogg"]
[にぃな]「啊、那个……？」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 3 && f.kaikan_now >= 90 && f.kaikan_now < 120"]
[tb_show_message_window  ]
[playse storage="niina317.ogg"]
[にぃな]「那个……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 4 && f.kaikan_now >= 120 && f.kaikan_now < 160"]
[tb_show_message_window  ]
[playse storage="niina318.ogg"]
[にぃな]「嗯　[ハート]嗯嗯」[ハート][改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 5 && f.kaikan_now >= 160 && f.kaikan_now < 200"]
[tb_show_message_window  ]
[playse storage="niina319.ogg"]
[にぃな]「啊…[ハート]为什么……？」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 6 && f.kaikan_now >= 200 && f.kaikan_now < 240"]
[tb_show_message_window  ]
[playse storage="niina320.ogg"]
[にぃな]「哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 7 && f.kaikan_now >= 240 && f.kaikan_now < 280"]
[tb_show_message_window  ]
[playse storage="niina321.ogg"]
[にぃな]「啊啊啊[ハート]啊啊啊[ハート]啊啊啊[ハート]」[ハート][ハート][ハート][ハート][ハート][改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 8 && f.kaikan_now >= 280"]
[tb_show_message_window  ]
[playse storage="niina322.ogg"]
[にぃな]「嗯啊啊……っ[ハート]」[改ページ]
[フラッシュ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*乳首摘まむ

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*乳首摘まむ2"  cond="f.S2進行 == 4"  ]
[jump  target="*乳首摘まむ1"  cond="f.S2進行 != 4"  ]
[_tb_end_tyrano_code]

[s  ]
*乳首摘まむ1

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 4"]
[eval exp="tf.表情スキップ = 0"]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 - 1"]
[eval exp="f.S2エロ台詞 = 0" cond="f.S2エロ台詞 < 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*乳首表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[call  target="*乳首台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*乳首摘まむ2

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=280]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ2b"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene2/otoko2b.png"  ]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*乳首表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp=" f.S2エロ台詞 == 0 && f.kaikan_now >= 1 || f.S2エロ台詞 == 1 && f.kaikan_now >= 30 || f.S2エロ台詞 == 2 && f.kaikan_now >= 60 || f.S2エロ台詞 == 3 && f.kaikan_now >= 90 || f.S2エロ台詞 == 4 && f.kaikan_now >= 120 || f.S2エロ台詞 == 5 && f.kaikan_now >= 160 || f.S2エロ台詞 == 6 && f.kaikan_now >= 200 || f.S2エロ台詞 == 7 && f.kaikan_now >= 240 || f.S2エロ台詞 == 8 && f.kaikan_now >= 280"  ]
[call  target="*乳首台詞"  ]
[jump  target="*おっぱい4"  cond="f.kaikan_now >= 280"]
[jump  target="*領域復活"]
[endif]
[jump  target="*乳首摘まむ2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*乳首表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti6.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti1.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti2.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 120"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti4.png"]
[elsif exp="f.kaikan_now >= 120 && f.kaikan_now < 160"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 160 && f.kaikan_now < 200"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti5.png"]
[elsif exp="f.kaikan_now >= 200 && f.kaikan_now < 240"]
[眉 storage="scene2/mayu3.png" x=12 y=12]
[目 storage="scene2/me9.png"]
[口 storage="scene2/kuti4.png"]
[elsif exp="f.kaikan_now >= 240 && f.kaikan_now < 280"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me12.png"]
;[目 storage="scene2/me10b.png"]
[口 storage="scene2/kuti8.png"]
[elsif exp="f.kaikan_now >= 280"]
[眉 storage="scene2/mayu3.png" x=12 y=12]
[目 storage="scene2/me9b.png"]
[口 storage="scene2/kuti9.png"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*乳首台詞

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0 && f.kaikan_now >= 0 && f.kaikan_now < 30"]
[tb_show_message_window  ]
[playse storage="niina323.ogg"]
[にぃな]「啊……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 1 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina324.ogg"]
[にぃな]「那、那里不～行……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 2 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina325.ogg"]
[にぃな]「……嗯っ[ハート]」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 3 && f.kaikan_now >= 90 && f.kaikan_now < 120"]
[tb_show_message_window  ]
[playse storage="niina326.ogg"]
[にぃな]「那、那个……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 4 && f.kaikan_now >= 120 && f.kaikan_now < 160"]
[tb_show_message_window  ]
[playse storage="niina327.ogg"]
[にぃな]「啊……[ハート]　啊……[ハート]啊……[ハート]　啊……[ハート]」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 5 && f.kaikan_now >= 160 && f.kaikan_now < 200"]
[tb_show_message_window  ]
[playse storage="niina328.ogg"]
[にぃな]「啊啊、等一下～」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 6 && f.kaikan_now >= 200 && f.kaikan_now < 240"]
[tb_show_message_window  ]
[playse storage="niina329.ogg"]
[にぃな]「哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 7 && f.kaikan_now >= 240 && f.kaikan_now < 280"]
[tb_show_message_window  ]
[playse storage="niina330.ogg"]
[にぃな]「啊！　啊！　啊！　啊！不行……　不行……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 8 && f.kaikan_now >= 280"]
[tb_show_message_window  ]
[playse storage="niina331.ogg"]
[にぃな]「嗯啊啊……っ[ハート]」[改ページ]
[フラッシュ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*服めくる

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那、把上衣掀起来吧～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png" x=12 y=12]
[目 storage="scene2/me9.png"]
[口 storage="scene2/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina332.ogg"]
[にぃな]「啊哈，感觉好像医生一样」[改ページ]
[僕]「看起来挺聪明的对吧？」[改ページ]
[playse storage="niina333.ogg"]
[にぃな]「嗯～嗯～　完全没那回事」[改ページ]
[僕]「咕」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 1"]
[eval exp="f.S2脱がす[0] = 2"]
[eval exp="tf.表情スキップ = 20"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti2.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1250 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[服脱がす4 mayu1=scene2/mayu3.png me1=scene2/me2.png kuti1=scene2/kuti7.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S2脱がす[0] = 3"  ]
[eval exp="f.S2進行 = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那、这件可爱的儿童胸罩也……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2脱がす[1] = 1"]
[eval exp="f.S2進行 = 2"]
[eval exp="tf.表情スキップ = 21"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]……噗噜[ハート][改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[スカート脱がす3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S2脱がす[2] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S2進行 < 3"]
[eval exp="tf.表情スキップ = 22"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti1.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*自重3

[tb_start_text mode=4 ]
[僕]（现在好想揉奶子……）[改ページ]
[_tb_end_text]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene2/otoko3a.png" cond="f.S2愛撫 == 1"]
[男 storage="scene2/otoko1a.png" cond="f.S2進行 == 3 && f.S2愛撫 != 1"]
[男 storage="scene2/otoko2a.png" cond="f.S2進行 == 4 && f.S2愛撫 != 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
[下着 storage="scene2/bura.png" cond="f.S2脱がす[1] < 1 && f.S2脱がす[0] >= 2"]
[下着 storage="scene2/fuku4.png" cond="f.S2脱がす[0] == 2 && f.S2脱がす[1] == 1"]
[下着 storage="scene2/fuku3.png" cond="f.S2脱がす[0] == 2 && f.S2脱がす[1] == 0"]
[下着 storage="scene2/fuku2.png" cond="f.S2脱がす[0] <= 1 && f.S2脱がす[2] == 1"]
[下着 storage="scene2/fuku1.png" cond="f.S2脱がす[0] <= 1 && f.S2脱がす[2] == 0"]
[下着 storage="scene2/sukato1.png" cond="f.S2脱がす[2] == 0"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[汗 storage="scene2/ase2.png" cond="f.kaikan_now >= 200"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S2進行 >= 2"]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene2/hoho.png"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[if exp="f.S2進行 >= 1 && f.S2脱がす[0] == 2"]
[体 storage="scene2/karada2.png"]
[else]
[体 storage="scene2/karada1.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
;[backlay]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti2.png"]
[free layer="0" page="back" name="hoho" cond="f.S2進行 < 2"  ]
[free layer="0" page="back" name="otoko"]
[絵変更 time＝1000 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S2愛撫 = 0" cond="f.S2愛撫 != 0" ]
[_tb_end_tyrano_code]

[return  ]
