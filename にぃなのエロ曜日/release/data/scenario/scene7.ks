[_tb_system_call storage=system/_scene7.ks]

*scene7

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン7変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*にぃなと初エッチ

[cm  ]
[tb_start_text mode=4 ]
[playse storage="niina230.ogg"]
[にぃな]「真、真的要这么做吗？」[改ページ]
[僕]「嗯，我已经到极限了。求求你......妮娜」[改ページ]
[にぃな]「......」[改ページ]
[playse storage="niina231.ogg"]
[にぃな]「......知道啦。可～以～哦，哥～哥」[改ページ]
[僕]「啊、谢谢你！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="330"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ7"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ7"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me5.png"]
[口 storage="scene7/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="2.ogg"  ]
*選択肢復活

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"  ]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"  ]
[選択画像  graphic="sentaku/ireru.png"  target="*挿入自重" width="175"  cond="f.S7進行 < 2 && f.kaikan_now < 10" ]
[選択画像  graphic="sentaku/ireru.png"  target="*領域復活" width="175"  cond="f.S7進行 < 2 && f.kaikan_now >= 10" ]
[選択画像  graphic="sentaku/ugoku.png"  target="*ピストン自重" width="175"  cond="f.S7進行 >= 2 && f.kaikan_now < 30" ]
[選択画像  graphic="sentaku/ugoku.png"  target="*領域復活" width="175"  cond="f.S7進行 >= 2 && f.kaikan_now >= 30" ]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"  ]
[選択画像  graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"  ]
[選択画像  graphic="sentaku/omanko.png"  target="*オマンコ見る" cond="f.S7脱がす[3] == 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S7脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S7脱がす[1] < 1 && f.S7脱がす[0] == 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S7脱がす[2] < 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S7脱がす[4] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
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
[clickable_map  visible=false  graphic=scene7/S7clickable1a.png storage=scene7.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S7進行 == 0 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene7/S7clickable2a.png storage=scene7.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S7進行 == 1 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene7/S7clickable3a.png storage=scene7.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S7進行 == 2 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene7/S7clickable1b.png storage=scene7.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S7進行 == 0 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene7/S7clickable2b.png storage=scene7.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S7進行 == 1 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene7/S7clickable3b.png storage=scene7.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S7進行 == 2 && f.kaisou == 1"   ]

[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[if exp="f.S7進行 < 2"]
[jump  target="*挿入"]
[else]
[jump  target="*ピストン"  ]
[endif]

[elsif exp="clickable_map.click=='FF00FF'"]
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
[call  target="*話す3"  cond="f.S7進行 == 2"  ]
[call  target="*話す2"  cond="f.S7進行 == 1"  ]
[call  target="*話す1"  cond="f.S7進行 == 0"  ]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_tyrano_code]
[if exp="f.S7話す == 0"]
[eval exp="f.S7話す = 1"  cond="f.S7話す == 0"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[call  target="*話す1a"  ]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S7話す == 1"]
[eval exp="f.S7話す = 2"  cond="f.S7話す == 1"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[call  target="*話す1b"  ]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S7話す >= 2"]
[eval exp="f.S7話す = 3"  cond="f.S7話す == 2"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 4" cond="f.kaikan_now < 10"]
[call  target="*話す1c"  ]
[eval exp="tf.表情スキップ = 0"]
[endif]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ7"  ]
[return  ]
*話す1a

[tb_start_text mode=4 ]
[僕]「......」[改ページ]
[にぃな]「......」[改ページ]
[僕]「心、心跳得好快......」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina232.ogg"]
[にぃな]「妮、妮娜也......」[改ページ]
[_tb_end_text]

[return  ]
*話す1b

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina233.ogg"]
[にぃな]「那个，妮娜是第一次......所以要温柔点哦」[改ページ]
[僕]「……」[改ページ]
[僕]「我也是第一次啊……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me1.png"]
[口 storage="scene7/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina234.ogg"]
[にぃな]「哎、真的吗」[改ページ]
[僕]「因、因为我之前根本没有女朋友啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina235.ogg"]
[にぃな]「哥～哥、明明这么H却？」[改ページ]
[僕]「就算H也不代表有女朋友啊……」[改ページ]
[playse storage="niina236.ogg"]
[にぃな]「那、那你是从哪里学会这么多H知识的？」[改ページ]
[僕]「当然是网上和漫画学的……不要，现在不是说这些的时候」[改ページ]
[_tb_end_text]

[return  ]
*話す1c

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me9.png"]
[口 storage="scene7/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina237.ogg"]
[にぃな]「这样啊……原来哥哥也是第一次」[改ページ]
[僕]（呜、感觉在开始前反而让她更不安了）[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S7挿入台詞 == 0"]
[call  target="*話す2a"]
[elsif exp="f.S7挿入台詞 == 1"]
[call target="*話す2b"]
[elsif exp="f.S7挿入台詞 == 2"]
[call target="*話す2c"]
[elsif exp="f.S7挿入台詞 == 3"]
[call target="*話す2d"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S7挿入台詞 == 4"]
[call target="*話す2e"]
[elsif exp="f.S7挿入台詞 == 5"]
[call target="*話す2f"]
[elsif exp="f.S7挿入台詞 == 6"]
[call target="*話す2g"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す2a

[tb_start_text mode=4 ]
[僕]「那个……我会尽量慢慢来的」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す2b

[tb_start_text mode=4 ]
[僕]「……痛吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina238.ogg"]
[にぃな]「有、有点……」[改ページ]
[僕]「求求你……只要忍耐最开始一下」[改ページ]
[playse storage="niina239.ogg"]
[にぃな]「不知道能不能做到……」[改ページ]
[_tb_end_text]

[return  ]
*話す2c

[tb_start_text mode=4 ]
[playse storage="niina240.ogg"]
[にぃな]「果然还是不行啊……进不去啊，这么大的东西」[改ページ]
[僕]「加、加油、绝对可以的」[改ページ]
[playse storage="niina241.ogg"]
[にぃな]「……真的吗？」[改ページ]
[僕]「嗯，真的真的！女孩子本来就是这样的构造嘛」[改ページ]
[僕]（这、这种程度可不能结束啊)[改ページ]
[_tb_end_text]

[return  ]
*話す2d

[tb_start_text mode=4 ]
[playse storage="niina242.ogg"]
[にぃな]「呜、好痛啊。妮娜快要哭出来了」[改ページ]
[僕]「来，深呼吸深呼吸。会稍微轻松点的」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me11.png"]
[口 storage="scene7/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina243.ogg"]
[にぃな]「哈…！　哈…！哈…！　哈…！」[改ページ]
[_tb_end_text]

[return  ]
*話す2e

[tb_start_text mode=4 ]
[playse storage="niina244.ogg"]
[にぃな]「不要啊、这样下去真的不行了！」[改ページ]
[僕]「拜、拜托！再坚持一下就好！」[改ページ]
[playse storage="niina245.ogg"]
[にぃな]「呜…！　咕…！嗯啊…！　嗯嗯…！」[改ページ]

[_tb_end_text]

[return  ]
*話す2f

[tb_start_text mode=4 ]
[playse storage="niina246.ogg"]
[にぃな]「鸡鸡好厉害要进来了！」[改ページ]
[僕]「嗯！头部进去了，还差一点！」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S7ピストン台詞 == 0"]
[call target="*話す3a"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S7ピストン台詞 == 1"]
[call target="*話す3b"]
[elsif exp="f.S7ピストン台詞 == 2"]
[call target="*話す3c"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S7ピストン台詞 == 3"]
[call target="*話す3d"]
[elsif exp="f.S7ピストン台詞 == 4"]
[call target="*話す3e"]
[elsif exp="f.S7ピストン台詞 == 5"]
[call target="*話す3f"]
[elsif exp="f.S7ピストン台詞 == 6"]
[call target="*話す3g"]
[elsif exp="f.S7ピストン台詞 == 7"]
[call target="*話す3h"]
[elsif exp="f.S7ピストン台詞 == 8"]
[call target="*話す3i"]
[elsif exp="f.S7ピストン台詞 == 9"]
[call target="*話す3j"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す3a

[tb_start_text mode=4 ]
[僕]「啊、好紧好紧……妮娜的小穴里面。光是这～样就舒服得要命」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ == 1"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me5.png"]
[口 storage="scene7/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina247.ogg"]
[にぃな]「鸡鸡真的、进得去啊……」[改ページ]
[僕]「……还痛吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me1.png"]
[口 storage="scene7/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina248.ogg"]
[にぃな]「嗯～嗯……应该没问题了」[改ページ]
[僕]「太好了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp ="f.kaikan_now = 30" cond="f.kaikan_now < 30"]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ7"  ]
[return  ]
*話す3b

[tb_start_text mode=4 ]
[playse storage="niina249.ogg"]
[にぃな]「呜、在动……」[改ページ]
[僕]「哈啊啊……[ハート]　这、这就是做爱！和鼓胀的花褶摩擦着鸡鸡，舒服得不得了啊」[改ページ]
[_tb_end_text]

[return  ]
*話す3c

[tb_start_text mode=4 ]
[僕]「那个……第一次做爱是什么感觉？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti6.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina250.ogg"]
[にぃな]「呃……感觉怪怪的。妮娜肚子里有硬硬的东西在进进出出」[改ページ]

[_tb_end_text]

[return  ]
*話す3d

[tb_start_text mode=4 ]
[僕]「那……会觉得舒服吗……之类的？」[改ページ]
[playse storage="niina251.ogg"]
[にぃな]「唔嗯，不太……」[改ページ]
[僕]「这样啊……我会更努力的」[改ページ]
[_tb_end_text]

[return  ]
*話す3e

[tb_start_text mode=4 ]
[playse storage="niina252.ogg"]
[にぃな]「啊、突然开始变得舒服起来了」[改ページ]
[僕]「哦哦，太好了！有多舒服？」[改ページ]
[playse storage="niina253.ogg"]
[にぃな]「呃、那个……非常」[改ページ]
[_tb_end_text]

[return  ]
*話す3f

[tb_start_text mode=4 ]
[僕]「对吧？鸡鸡在里面动来动去是不是越来越舒服了？」[改ページ]
[playse storage="niina254.ogg"]
[にぃな]「呜、嗯……[ハート]这么厉害的感觉妮娜还是第一次」[改ページ]
[_tb_end_text]

[return  ]
*話す3g

[tb_start_text mode=4 ]
[playse storage="niina255.ogg"]
[にぃな]「呀～[ハート]这是什么啊～舒服到停不下来了～」[改ページ]
[僕]「对吧……来、你自己也再多动动腰嘛」[改ページ]
[playse storage="niina256.ogg"]
[にぃな]「嗯♡」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す3h

[tb_start_text mode=4 ]
[僕]「怎么样、第一次做爱舒服吗？」[改ページ]
[playse storage="niina257.ogg"]
[にぃな]「哈啊♡[ハート]哈啊♡[ハート]哈啊♡[ハート]哈啊♡[ハート]嗯♡ [ハート]第一次做爱舒服得不得了呢♡」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す3i

[tb_start_text mode=4 ]
[playse storage="niina258.ogg"]
[にぃな]「哥～哥～妮娜要不行了啦♡鸡鸡真[ハート]的太厉害了啦♡」[ハート][改ページ]
[僕]「妮娜的小穴也超级赞啊！！」[改ページ]
[_tb_end_text]

[return  ]
*話す3j

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_text mode=4 ]
[playse storage="niina259.ogg"]
[にぃな]「不行了[ハート]♡不行了[ハート]♡真的不行了[ハート]♡妮娜马上就要去了♡」[ハート][改ページ]
[僕]「没关系哦！第一次做爱就尽情地高潮吧！」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る5"  cond="f.S7進行 == 2 && f.S7ピストン台詞 >= 7"  ]
[call  target="*にぃな見る4"  cond="f.S7進行 == 2 && f.S7ピストン台詞 >= 4 && f.S7ピストン台詞 <= 6"  ]
[call  target="*にぃな見る3"  cond="f.S7進行 == 2 && f.S7ピストン台詞 <= 3"  ]
[call  target="*にぃな見る2"  cond="f.S7進行 == 1 && f.S7チンコ[1] > 1"  ]
[call  target="*にぃな見る1"  cond="f.S7進行 == 0 || f.S7進行 == 1 && f.S7チンコ[1] == 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（妮娜……看起来好不安）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（啊，看起来好紧……别哭啊）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_text mode=4 ]
[僕]（一副难以置信的表情……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る4

[tb_start_text mode=4 ]
[僕]（哦哦，感觉不错）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る5

[tb_start_text mode=4 ]
[僕]（啊啊、妮娜的瑜伽姿势好厉害！）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*オマンコ見る5"  cond="f.S7進行 == 2 && f.S7ピストン台詞 >= 7"  ]
[call  target="*オマンコ見る4"  cond="f.S7進行 == 2 && f.S7ピストン台詞 >= 4 && f.S7ピストン台詞 <= 6"  ]
[call  target="*オマンコ見る3"  cond="f.S7進行 == 2 && f.S7ピストン台詞 <= 3"  ]
[call  target="*オマンコ見る2"  cond="f.S7進行 == 1 && f.S7チンコ[1] > 1"  ]
[call  target="*オマンコ見る1"  cond="f.S7進行 == 0 || f.S7進行 == 1 && f.S7チンコ[1] == 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*オマンコ見る1

[tb_start_text mode=4 ]
[僕]（啊啊、现在要把这个小小的穴）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る2

[tb_start_text mode=4 ]
[僕]（慢慢进入这个小小的凹陷处……）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る3

[tb_start_text mode=4 ]
[僕]（我的鸡鸡已经完全插进去了）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る4

[tb_start_text mode=4 ]
[僕]（好，现在动起来容易多了）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る5

[tb_start_text mode=4 ]
[僕]（鸡鸡已经进得很深了！）[改ページ]
[_tb_end_text]

[return  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S7脱がす[0] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[服脱がす5]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S7進行 == 0"]
[eval exp="tf.表情スキップ = 20"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S7脱がす[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[ブラ脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S7進行 == 0"]
[eval exp="tf.表情スキップ = 21"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S7脱がす[2] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[スカート脱がす3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S7進行 == 0"]
[eval exp="tf.表情スキップ = 22"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S7脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S7進行 == 0"]
[eval exp="tf.表情スキップ = 24"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*挿入自重

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（不行，得让妮娜稍微安心些……说点什么吧）[改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
*挿入

[cm  ]
[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*挿入2"  cond="f.S7チンコ[1] >= 1"  ]
[jump  target="*挿入1"  cond="f.S7チンコ[1] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*挿入1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那……我要动咯」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina260.ogg"]
[にぃな]「嗯……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S7進行 = 1"]
[eval exp="f.S7チンコ[1] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*挿入表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活" ]
[_tb_end_tyrano_code]

*挿入2

[tb_start_tyrano_code]
[eval exp="f.S7チンコ[1] = f.S7チンコ[1] + 1"]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ7"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene7/otoko1b.png"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S7進行 = 1"]
[call  target="*挿入表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S7挿入台詞 == 0 && f.S7チンコ[1] >= 2 || f.S7挿入台詞 == 1 && f.S7チンコ[1] >= 5 || f.S7挿入台詞 == 2 && f.S7チンコ[1] >= 8 || f.S7挿入台詞 == 3 && f.S7チンコ[1] >= 12 || f.S7挿入台詞 == 4 && f.S7チンコ[1] >= 16 || f.S7挿入台詞 == 5 && f.S7チンコ[1] >= 20"  ]
[call  target="*挿入台詞"]
[jump  target="*領域復活"  storage=""  cond="f.S7チンコ[1] < 20"  ]
;挿入後一度休憩
[free layer="0" page="fore" name="icon"]
[free layer="0" page="back" name="icon"]
[jump  target="*選択肢復活"  storage=""  ]
[endif]
[jump  target="*挿入2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*挿入3

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[playse storage="niina261.ogg"]
[にぃな]「啊！」[改ページ]
[僕]「哦哦！鸡鸡插进去了！」[改ページ]
[playse storage="niina262.ogg"]
[にぃな]「啊……啊……啊……啊……骗人、骗人、鸡鸡真的、真的进到妮娜里面了呀」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S7進行 = 2"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ7"  ]
[tb_start_tyrano_code]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me11b.png"]
[口 storage="scene7/kuti8.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina263.ogg"]
[にぃな]「嗯啊啊……！」[改ページ]
[僕]「插、插进去了……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me5.png"]
[口 storage="scene7/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina264.ogg"]
[にぃな]「真、真的……进去了」[改ページ]
[_tb_end_text]

[return  ]
*挿入表情

[tb_start_tyrano_code]
[if exp="f.S7チンコ[1] == 1"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me5.png"]
[口 storage="scene7/kuti6.png"]
[elsif exp="f.S7チンコ[1] >= 2 && f.S7チンコ[1] < 5"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me13.png"]
[口 storage="scene7/kuti3.png"]
[elsif exp="f.S7チンコ[1] >= 5 && f.S7チンコ[1] < 8"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2.png"]
[口 storage="scene7/kuti7.png"]
[elsif exp="f.S7チンコ[1] >= 8 && f.S7チンコ[1] < 12"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti5.png"]
[elsif exp="f.S7チンコ[1] >= 12 && f.S7チンコ[1] < 16"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me11b.png"]
[口 storage="scene7/kuti11.png"]
[elsif exp="f.S7チンコ[1] >= 16 && f.S7チンコ[1] < 20"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me2b.png"]
[口 storage="scene7/kuti5.png"]
[elsif exp="f.S7チンコ[1] >= 20"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=-4 y=-8]
[目 storage="scene7/me8b.png"]
[口 storage="scene7/kuti5.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*挿入台詞

[tb_start_tyrano_code]
[if exp="f.S7挿入台詞 == 0 && f.S7チンコ[1] >= 2 && f.S7チンコ[1] < 5"]
[tb_show_message_window  ]
[playse storage="niina265.ogg"]
[にぃな]「嗯……」[改ページ]
[eval exp="f.S7挿入台詞 = f.S7挿入台詞 + 1"]

[elsif exp="f.S7挿入台詞 == 1 && f.S7チンコ[1] >= 5 && f.S7チンコ[1] < 8"]
[tb_show_message_window  ]
[playse storage="niina266.ogg"]
[にぃな]「那、那个」[改ページ]
[eval exp="f.S7挿入台詞 = f.S7挿入台詞 + 1"]

[elsif exp="f.S7挿入台詞 == 2 && f.S7チンコ[1] >= 8 && f.S7チンコ[1] < 12"]
[tb_show_message_window  ]
[playse storage="niina267.ogg"]
[にぃな]「那个、还没好吗？」[改ページ]
[eval exp="f.S7挿入台詞 = f.S7挿入台詞 + 1"]

[elsif exp="f.S7挿入台詞 == 3 && f.S7チンコ[1] >= 12 && f.S7チンコ[1] < 16"]
[tb_show_message_window  ]
[playse storage="niina268.ogg"]
[にぃな]「嗯嗯——！」[改ページ]
[eval exp="f.S7挿入台詞 = f.S7挿入台詞 + 1"]

[elsif exp="f.S7挿入台詞 == 4 && f.S7チンコ[1] >= 16 && f.S7チンコ[1] < 20"]
[tb_show_message_window  ]
[playse storage="niina269.ogg"]
[にぃな]「啊、等一下啦」[改ページ]
[eval exp="f.S7挿入台詞 = f.S7挿入台詞 + 1"]

[elsif exp="f.S7挿入台詞 == 5 && f.S7チンコ[1] >= 20"]
[call  target="*挿入3"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*ピストン

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*ピストン1"]
[_tb_end_tyrano_code]

[s  ]
*ピストン1

[tb_start_tyrano_code]
[call target="*ピストン開始"  cond="f.kaikan_now <= 30"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=330]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene7/otoko3.png"]
[絵変更 time=600 visible=false cond="f.S7ピストン台詞 <= 3"  ]
[絵変更 time=500 visible=false cond="f.S7ピストン台詞 >= 4"  ]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ7"  ]
[tb_start_tyrano_code]
[eval exp="f.S7進行 = 2"]
[call  target="*ピストン表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=600 visible=false cond="f.S7ピストン台詞 <= 3"  ]
[絵変更 time=500 visible=false cond="f.S7ピストン台詞 >= 4"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S7ピストン台詞 == 0 && f.kaikan_now >= 31 || f.S7ピストン台詞 == 1 && f.kaikan_now >= 60 || f.S7ピストン台詞 == 2 && f.kaikan_now >= 90 || f.S7ピストン台詞 == 3 && f.kaikan_now >= 120 || f.S7ピストン台詞 == 4 && f.kaikan_now >= 150 || f.S7ピストン台詞 == 5 && f.kaikan_now >= 180 || f.S7ピストン台詞 == 6 && f.kaikan_now >= 210 || f.S7ピストン台詞 == 7 && f.kaikan_now >= 250 || f.S7ピストン台詞 == 8 && f.kaikan_now >= 290 || f.S7ピストン台詞 == 9 && f.kaikan_now >= 330"  ]
[call  target="*ピストン台詞"]
[jump  target="*にぃな絶頂" cond="f.kaikan_now >= 330"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*ピストン1" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*ピストン表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now == 20"]
[眉 storage="scene7/mayu3.png" x=5 y=10]
[目 storage="scene7/me7.png"]
[口 storage="scene7/kuti4.png"]
[elsif exp="f.kaikan_now >= 31 && f.kaikan_now < 60"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=-4 y=-8]
[目 storage="scene7/me4.png"]
[口 storage="scene7/kuti1.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me5.png"]
[口 storage="scene7/kuti3.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 120"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me9.png"]
[口 storage="scene7/kuti1.png"]
[elsif exp="f.kaikan_now >= 120 && f.kaikan_now < 150"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me5.png"]
[口 storage="scene7/kuti5.png"]
[elsif exp="f.kaikan_now >= 150 && f.kaikan_now < 180"]
[汗 storage="scene7/ase1.png"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti9.png"]
[elsif exp="f.kaikan_now >= 180 && f.kaikan_now < 210"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=5 y=10]
[目 storage="scene7/me3.png"]
[口 storage="scene7/kuti8.png"]
[elsif exp="f.kaikan_now >= 210 && f.kaikan_now < 250"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me11.png"]
[口 storage="scene7/kuti9.png"]
[elsif exp="f.kaikan_now >= 250 && f.kaikan_now < 290"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me13.png"]
[口 storage="scene7/kuti10.png"]
[elsif exp="f.kaikan_now >= 290 && f.kaikan_now < 330"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=-4 y=-8]
[目 storage="scene7/me8.png"]
[口 storage="scene7/kuti8.png"]
[elsif exp="f.kaikan_now >= 330"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me11.png"]
[口 storage="scene7/kuti12.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*ピストン台詞

[tb_start_tyrano_code]
[if exp="f.kaikan_now == 20"]

[elsif exp="f.S7ピストン台詞 == 0 && f.kaikan_now >= 31 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina270.ogg"]
[にぃな]「啊……」[改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 1 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina271.ogg"]
[にぃな]「……嗯」[改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 2 && f.kaikan_now >= 90 && f.kaikan_now < 120"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 3 && f.kaikan_now >= 120 && f.kaikan_now < 150"]
[tb_show_message_window  ]
[playse storage="niina272.ogg"]
[にぃな]「啊」[改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 4 && f.kaikan_now >= 150 && f.kaikan_now < 180"]
[tb_show_message_window  ]
[playse storage="niina273.ogg"]
[にぃな]「啊……那么厉害？」[改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 5 && f.kaikan_now >= 180 && f.kaikan_now < 210"]
[tb_show_message_window  ]
[playse storage="niina274.ogg"]
[にぃな]「哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 6 && f.kaikan_now >= 210 && f.kaikan_now < 250"]
[tb_show_message_window  ]
[playse storage="niina275.ogg"]
[にぃな]「嗯啊嗯[ハート]啊嗯啊[ハート]嗯啊嗯[ハート]啊嗯啊[ハート]嗯啊嗯[ハート]啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 7 && f.kaikan_now >= 250 && f.kaikan_now < 290"]
[tb_show_message_window  ]
[playse storage="niina276.ogg"]
[にぃな]「哈～啊[ハート]哈～啊[ハート]哈～啊[ハート]哈～啊[ハート]呀啊　[ハート]等一下啦」[ハート][改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[elsif exp="f.S7ピストン台詞 == 8 && f.kaikan_now >= 290 && f.kaikan_now < 330"]
[tb_show_message_window  ]
[playse storage="niina277.ogg"]
[にぃな]「啊！　　啊！　　啊！　　啊！来了、来了、那个又来了啊」[改ページ]
[eval exp="f.S7ピストン台詞 = f.S7ピストン台詞 + 1"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*ピストン自重

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（现、现在只想沉浸在这份感动的余韵中）[改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
*ピストン開始

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（好～嘞，动起来吧！）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
[return  ]
*にぃな絶頂

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[playse storage="niina278.ogg"]
[にぃな]「啊哈啊啊～～～～啊[ハート][ハート]」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「哈啊啊…啊[ハート]小穴夹得好紧啊啊啊！」[改ページ]
[僕]「嗯嗯啊！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ visible=false]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=-4 y=-8]
[目 storage="scene7/me4.png"]
[口 storage="scene7/kuti8.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]噗啾噗啾[ハート]噗啾噗啾[ハート]噗啾噗啾[ハート]噗啾噗啾[ハート][ハート][ハート][ハート][ハート][改ページ]
[playse storage="niina279.ogg"]
[にぃな]「啊啊啊[ハート]　热、热热的东西要来了！？」[改ページ]
[僕]「嗯、嗯啊！就这样全部射出来吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=5 y=10]
[目 storage="scene7/me7.png"]
[口 storage="scene7/kuti9.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina280.ogg"]
[にぃな]「啊　[ハート]啊　啊[ハート]　啊妮[ハート]娜里面[ハート]被射了好多」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=6 y=12]
[目 storage="scene7/me11.png"]
[口 storage="scene7/kuti2.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina281.ogg"]
[にぃな]「嗯嗯嗯…」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[汁 storage="scene7/siru1.png"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png" x=4 y=8]
[目 storage="scene7/me6.png"]
[口 storage="scene7/kuti5.png"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「哈、哈、哈、哈……啊啊、射了好多啊」[改ページ]
[playse storage="niina282.ogg"]
[にぃな]「哈啊、哈啊、哈啊、哈啊……做爱的时候…会射出这么多啊」[改ページ]
[僕]「啊啊、太好了……能和妮娜酱一起高潮。舒服吗？做爱」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汁 storage="scene7/siru1.png"]
[汗 storage="scene7/ase2.png"]
[眉 storage="scene7/mayu3.png"]
[目 storage="scene7/me9.png"]
[口 storage="scene7/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina283.ogg"]
[にぃな]「诶、那个…超级」[改ページ]
[僕]（太好了！）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S7クリア = 1"]
[シーン7変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene0.ks"  target=""  ]
[s  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene7/otoko2.png" cond="f.S7進行 == 2"]
[男 storage="scene7/otoko1a.png" cond="f.S7進行 == 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;服
[下着 storage="scene7/fuku1.png" cond="f.S7脱がす[0] < 1"]
;ブラ
[下着 storage="scene7/bura1.png" cond="f.S7脱がす[1] < 1 && f.S7脱がす[0] == 1"]
;パンツ
;[下着 storage="scene7/pantu1.png" cond="f.S7脱がす[3] < 1"]
;スカート
[下着 storage="scene7/sukato1.png" cond="f.S7脱がす[2] < 1"]
;靴下
[下着 storage="scene7/socks1.png" cond="f.S7脱がす[4] < 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene7/hoho.png" cond="f.S7進行 >= 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene7/karada1.png"]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
