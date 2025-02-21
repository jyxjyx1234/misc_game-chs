[_tb_system_call storage=system/_scene4.ks]

*scene4

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン4変数リセット]
[if exp="f.kaisou == 1"]
[脱ぎ初期化]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*オマンコ

[cm  ]
[tb_start_text mode=4 ]
[僕]「来，自己把腿抬起来呀」[改ページ]
[playse storage="niina093.ogg"]
[にぃな]「抬起来就行吗？像这样？」[改ページ]
[僕]「对～对～ 很好。就保持那样别动」[改ページ]
[playse storage="niina094.ogg"]
[にぃな]「呜～ 这样子超羞耻的说，这个姿势」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="200"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ4"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ4"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="2.ogg"  ]
[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[_tb_end_tyrano_code]

*選択肢復活

[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"  x="1600" y="230"]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"  x="1600" y="230"]
[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活" width="175"  x="1600" y="230"]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"  x="1600" y="230"]
[選択画像  graphic="sentaku/tugi.png"  target="*ラスト" width="175"  x="1600" y="230" cond="f.kaikan_now >= 200"]
[選択画像 graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"  ]
[選択画像  graphic="sentaku/fuku.png"  target="*服見る"   cond="f.S4脱がす[0] < 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート見る"   cond="f.S4脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る"  cond="f.S4脱がす[3] < 4" ]
[選択画像  graphic="sentaku/asoko.png"  target="*オマンコ見る"  cond="f.S4脱がす[3] >= 4 && f.S4進行 == 1" ]
[選択画像  graphic="sentaku/asoko.png"  target="*クパァ見る"  cond="f.S4脱がす[3] >= 4 && f.S4進行 == 2" ]
[選択画像  graphic="sentaku/asoko.png"  target="*クリ見る"  cond="f.S4脱がす[3] >= 4 && f.S4進行 == 3" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S4脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S4脱がす[1] < 1 && f.S4脱がす[0] == 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S4脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす" cond="f.S4脱がす[3] < 4" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S4脱がす[4] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*領域復活

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="fore" name="icon"]
[アイコン storage="icon/modoru.png" width=182 x=1724 y=32]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="kao" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clickable_map  visible=false  graphic=scene4/S4clickable1a.png storage=scene4.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 0"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable3a.png storage=scene4.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 2"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable4a.png storage=scene4.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 3"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable2a.png storage=scene4.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 1"  ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='00FFFF'"]
[jump  target="*パンツ触る" cond="f.S4進行 == 0  ]
[jump  target="*オマンコ触る" cond="f.S4進行 >= 1  ]
[elsif exp="clickable_map.click=='00A0E8'"]
[jump target="*手戻す"  cond="f.S4進行 == 2"  ]
[jump target="*オマンコ開く"  cond="f.S4進行 != 2"  ]
[elsif exp="clickable_map.click=='001D58'"]
[jump target="*手戻す"  cond="f.S4進行 == 3"  ]
[jump target="*クリを剥く"  cond="f.S4進行 != 3"  ]
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
[if exp="f.S4進行 == 0 && f.S4脱がす[3] < 2"]
[call  target="*話す1"  ]
;表情スキップ受け渡し
[elsif exp="f.S4進行 == 0 && f.S4脱がす[3] == 2"]
[call  target="*話す2"  ]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S4進行 == 0 && f.S4脱がす[3] == 3"]
[call  target="*話す3"  ]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S4進行 == 1 && f.S4ワレメ[0] == 0"]
[call  target="*話す4"  ]
[eval exp="f.S4ワレメ[0] = f.S4ワレメ[0] + 1"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S4進行 == 1 && f.S4ワレメ[0] >= 1"]
[call  target="*話す5"  ]
[eval exp="f.S4ワレメ[0] = f.S4ワレメ[0] + 1"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S4進行 == 2 && f.S4くぱぁ[0] == 0"]
[call  target="*話す6"  ]
[eval exp="f.S4くぱぁ[0] = f.S4くぱぁ[0] + 1"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S4進行 == 2 && f.S4くぱぁ[0] >= 1"]
[call  target="*話す7"  ]
[eval exp="f.S4くぱぁ[0] = f.S4くぱぁ[0] + 1"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S4進行 == 3 && f.S4ムキッ[0] == 0"]
[call  target="*話す8"  ]
[eval exp="f.S4ムキッ[0] = f.S4ムキッ[0] + 1"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S4進行 == 3 && f.S4ムキッ[0] >= 1"]
[call  target="*話す9"  ]
[eval exp="f.S4ムキッ[0] = f.S4ムキッ[0] + 1"]
[eval exp="tf.表情スキップ = 1"]

[endif]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[eval exp="tf.表情スキップ = 0]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_tyrano_code]

[if exp="f.S4話す == 0 || f.S4話す == 3 && f.ランダム == 1"]
[eval exp="f.S4話す = f.S4話す + 1"  cond="f.S4話す　< 3"  ]
[call  target="*話す1a"  ]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S4話す == 1 || f.S4話す == 3 && f.ランダム == 2"]
[eval exp="f.S4話す = f.S4話す + 1"  cond="f.S4話す　< 3"  ]
[call  target="*話す1b"  ]
[eval exp="tf.表情スキップ = 0]
[elsif exp="f.S4話す == 2 || f.S4話す == 3 && f.ランダム == 3"]
[eval exp="f.S4話す = f.S4話す + 1"  cond="f.S4話す　< 3"  ]
[call  target="*話す1c"  ]
[eval exp="tf.表情スキップ = 1]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す1a

[tb_start_text mode=4 ]
[僕]「哈啊，太棒了......那个姿势，超大胆的」[改ページ]
[playse storage="niina095.ogg"]
[にぃな]「我说，一直保持这个姿势会累的啦」[改ページ]
[僕]「这是特训啊特训，加油坚持」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=6]
[目 storage="scene4/me9.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina096.ogg"]
[にぃな]「这算什么特训嘛......」[改ページ]
[_tb_end_text]

[return  ]
*話す1b

[tb_start_text mode=4 ]
[僕]「看，腿的形状看起来像字母M对吧？所以叫M字开脚啦」[改ページ]
[playse storage="niina097.ogg"]
[にぃな]「真是的，老是教人家这些奇怪的东西」[改ページ]
[_tb_end_text]

[return  ]
*話す1c

[tb_start_text mode=4 ]
[僕]「嘿嘿～今天也是超可爱的白色内裤呢」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina098.ogg"]
[にぃな]「就那么想看吗？妮娜的内裤」[改ページ]
[僕]「嗯，超想看的......那个地方」[改ページ]
[にぃな]「？」[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]（嗯～ 这样直接拜托估计没戏，既然如此干脆就——）[改ページ]
[僕]「妮娜酱你啊～完全不行嘛」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu2.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina099.ogg"]
[にぃな]「唔」[改ページ]
[僕]「嘴上说着可以色色～结果马上就拒绝，根本只是嘴上功夫嘛」[改ページ]
[playse storage="niina100.ogg"]
[にぃな]「才、才没有那种事呢」[改ページ]
[僕]「那就～给我看嘛，妮娜酱的那里。不是光说不练对吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina101.ogg"]
[にぃな]「唔～……知道啦」[改ページ]
[僕]（唰啦……！）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[3] = 3"  ]
[_tb_end_tyrano_code]

[return  ]
*話す3

[tb_start_text mode=4 ]
[僕]（现在可不是慢悠悠的时候啊！）[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_start_text mode=4 ]
[僕]「妮娜酱的那里……完全张开了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ワレメ[0]　<= 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina102.ogg"]
[にぃな]「啊、这不是当然的嘛，毕竟是女孩子啊」[改ページ]
[僕]「虽然知道……但实际看到还是第一次」[改ページ]
[playse storage="niina103.ogg"]
[にぃな]「这样啊」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*話す5

[tb_start_text mode=4 ]
[僕]「呼嗯，女孩子这里原来这么软乎乎的……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ワレメ[0]　<= 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina104.ogg"]
[にぃな]「哎哎，有那么……？」[改ページ]

[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*話す6

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4くぱぁ[0]　<= 1"  ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「啊啊，终于看到了……妮娜酱小小的嫩穴」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina105.ogg"]
[にぃな]「……很奇怪？」[改ページ]
[僕]「不，一点都不，非常可爱」[改ページ]
[playse storage="niina106.ogg"]
[にぃな]「可爱吗……」[改ページ]
[僕]「嗯，我觉得是非常可爱又迷人的女孩子性器官哦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]

[playse storage="niina107.ogg"]
[にぃな]「哼～嗯……」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*話す7

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4くぱぁ[0]　<= 1"  ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「这样啊……原来是这样的构造啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina108.ogg"]
[にぃな]「看、看太久了啦」[改ページ]
[僕]「因为人家就是想看嘛」[改ページ]
[playse storage="niina109.ogg"]
[にぃな]「看这种东西有意思吗？」[改ページ]
[僕]「超级有！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=6]
[目 storage="scene4/me9.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina110.ogg"]
[にぃな]「呜～……」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*話す8

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ムキッ[0]　<= 1"  ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「呵呵，露出来啦。妮娜小巧的阴蒂」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu1.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina111.ogg"]
[にぃな]「这是什么？剥开的时候突然抖了一下」[改ページ]
[僕]「这个呢……是妮娜的鸡鸡」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu2.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina112.ogg"]
[にぃな]「人、人家是女孩子啦！」[改ページ]
[僕]「有的哦，女孩子也会有」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina113.ogg"]
[にぃな]「诶，原来是这样……完全不知道」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*話す9

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ムキッ[0]　<= 1"  ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「好可爱啊，妮娜的小豆豆」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti7b.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina114.ogg"]
[にぃな]「真是～都怪你说奇怪的话害人家觉得好丢人」[改ページ]
[僕]「女孩子的鸡鸡？」[改ページ]
[playse storage="niina115.ogg"]
[にぃな]「不用说出来啦～」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る2"  cond="f.S4進行 != 0"  ]
[call  target="*にぃな見る1"  cond="f.S4進行 == 0"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_text mode=4 ]
[if exp="f.S4にぃな == 0 || f.S4にぃな == 3 && f.ランダム == 1"]
[eval exp="f.S4にぃな = f.S4にぃな + 1"  cond="f.S4にぃな　< 3"  ]
[僕]（呜～　摆着大胆姿势的妮娜就在眼前）[改ページ]
[elsif exp="f.S4にぃな == 1 || f.S4にぃな == 3 && f.ランダム == 2"]
[eval exp="f.S4にぃな = f.S4にぃな + 1"  cond="f.S4にぃな　< 3"  ]
[僕]（啊啊，太棒了，女高中生的大开腿……心灵都被净化了）[改ページ]
[elsif exp="f.S4にぃな == 2 || f.S4にぃな == 3 && f.ランダム == 3"]
[eval exp="f.S4にぃな = f.S4にぃな + 1"  cond="f.S4にぃな　< 3"  ]
[僕]（今天一定要让妮娜给我看！）[改ページ]
[endif]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（妮娜……脸已经通红通红了）[改ページ]

[_tb_end_text]

[return  ]
*服見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（妮娜很喜欢这件衣服啊）[改ページ]

[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*スカート見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（粉色裙摆被完全掀开了）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*パンツ見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S4パンツ == 0 || f.S4パンツ == 3 && f.ランダム == 1"]
[eval exp="f.S4パンツ = f.S4パンツ + 1"  cond="f.S4パンツ　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[call  target="*パンツ見る会話1"]

[elsif exp="f.S4パンツ == 1 || f.S4パンツ == 3 && f.ランダム == 2"]
[eval exp="f.S4パンツ = f.S4パンツ + 1"  cond="f.S4パンツ　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[call  target="*パンツ見る会話2"]

[elsif exp="f.S4パンツ == 2 || f.S4パンツ == 3 && f.ランダム == 3"]
[eval exp="f.S4パンツ = f.S4パンツ + 1"  cond="f.S4パンツ　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 4" cond="f.kaikan_now < 10"]
[call  target="*パンツ見る会話3"]
[endif]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*パンツ見る会話1

[tb_start_text mode=4 ]
[僕]　（妮娜纯白内裤的裆部）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る会話2

[tb_start_text mode=4 ]
[僕]（在那轻薄布料的对侧，藏着女孩子最大的秘密……）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る会話3

[tb_start_text mode=4 ]
[僕]（哈啊，好想把脸凑得更近用力嗅闻……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 10"]
[eval exp="tf.表情スキップ = 10]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina116.ogg"]
[にぃな]「……变态」[改ページ]
[僕]（……为什么会被发现啊？）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S4ワレメ[1] == 0 || f.S4ワレメ[1] == 3 && f.ランダム == 1"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ワレメ[1]　< 3"  ]
[eval exp="f.S4ワレメ[1] = f.S4ワレメ[1] + 1"  cond="f.S4ワレメ[1]　< 3"  ]
[僕]（哦哦，妮娜的重要部位完全暴露了！）[改ページ]
[elsif exp="f.S4ワレメ[1] == 1 || f.S4ワレメ[1] == 3 && f.ランダム == 2"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ワレメ[1]　< 3"  ]
[eval exp="f.S4ワレメ[1] = f.S4ワレメ[1] + 1"  cond="f.S4ワレメ[1]　< 3"  ]
[僕]（哈啊，从这边看过去都光滑滑的……超可爱）[改ページ]
[elsif exp="f.S4ワレメ[1] == 2 || f.S4ワレメ[1] == 3 && f.ランダム == 3"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ワレメ[1]　< 3"  ]
[eval exp="f.S4ワレメ[1] = f.S4ワレメ[1] + 1"  cond="f.S4ワレメ[1]　< 3"  ]
[僕]（呼呼，现在还紧紧闭合着。好漂亮的一线天啊）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[tb_show_message_window  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*クパァ見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S4くぱぁ[1] == 0 || f.S4くぱぁ[1] == 3 && f.ランダム == 1"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4くぱぁ[1]　< 3"  ]
[eval exp="f.S4くぱぁ[1] = f.S4くぱぁ[1] + 1"  cond="f.S4くぱぁ[1]　< 3"  ]
[僕]（哦哦哦，看到了！这、这就是妮娜的〇〇生小穴！）[改ページ]
[elsif exp="f.S4くぱぁ[1] == 1 || f.S4くぱぁ[1] == 3 && f.ランダム == 2"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4くぱぁ[1]　< 3"  ]
[eval exp="f.S4くぱぁ[1] = f.S4くぱぁ[1] + 1"  cond="f.S4くぱぁ[1]　< 3"  ]
[僕]（好、好漂亮……整个都是鲜艳的粉红色）[改ページ]
[elsif exp="f.S4くぱぁ[1] == 2 || f.S4くぱぁ[1] == 3 && f.ランダム == 3"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4くぱぁ[1]　< 3"  ]
[eval exp="f.S4くぱぁ[1] = f.S4くぱぁ[1] + 1"  cond="f.S4くぱぁ[1]　< 3"  ]
[僕]（哈啊，表面光滑滑的，看起来超柔软……）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[tb_show_message_window  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*クリ見る

[tb_show_message_window  ]
[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S4ムキッ[1] == 0 || f.S4ムキッ[1] == 3 && f.ランダム == 1"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ムキッ[1]　< 3"  ]
[eval exp="f.S4ムキッ[1] = f.S4ムキッ[1] + 1"  cond="f.S4ムキッ[1]　< 3"  ]
[僕]（啊啊，这就是妮娜刚剥开的新鲜阴蒂）[改ページ]
[elsif exp="f.S4ムキッ[1] == 1 || f.S4ムキッ[1] == 3 && f.ランダム == 2"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ムキッ[1]　< 3"  ]
[eval exp="f.S4ムキッ[1] = f.S4ムキッ[1] + 1"  cond="f.S4ムキッ[1]　< 3"  ]
[僕]（稍微有点发白，像颗小珍珠。真是可爱的小豆豆啊）[改ページ]
[elsif exp="f.S4ムキッ[1] == 2 || f.S4ムキッ[1] == 3 && f.ランダム == 3"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S4ムキッ[1]　< 3"  ]
[eval exp="f.S4ムキッ[1] = f.S4ムキッ[1] + 1"  cond="f.S4ムキッ[1]　< 3"  ]
[僕]（啊、怎么在一抽一抽的……小豆豆真是超好色啊）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*服脱がす2"  cond="f.服脱ぎ == 1"]
[call  target="*服脱がす1"  cond="f.服脱ぎ == null"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服脱がす1

[tb_start_tyrano_code]
[服脱がす1 mayu1=scene4/mayu3.png me1=scene4/me2.png mayuy1=4 kuti1=scene4/kuti7.png mayu2=scene4/mayu3.png me2=scene4/me7.png kuti2=scene4/kuti1.png mayu3=scene4/mayu1.png me3=scene4/me1.png kuti3=scene4/kuti7.png mayu4=scene4/mayu2.png me4=scene4/me2.png kuti4=scene4/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*服脱がす2

[tb_start_tyrano_code]
[服脱がす2 mayu1=scene4/mayu2.png me1=scene4/me2.png mayuy1=4 kuti1=scene4/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[スカート脱がす1 ase1=scene4/ase1.png mayu1=scene4/mayu3.png me1=scene4/me1.png kuti1=scene4/kuti5.png]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*パンツ脱がす会話5"  cond="f.S4脱がす[3]==3" ]
[call  target="*パンツ脱がす会話4"  cond="f.S4脱がす[3]==2" ]
[call  target="*パンツ脱がす会話3"  cond="f.S4脱がす[3]==1" ]
[call  target="*パンツ脱がす会話2"  cond="f.S4脱がす[3]==0 && f.kaikan_now>=10"  ]
[call  target="*パンツ脱がす会話1"  cond="f.S4脱がす[3]==0 && f.kaikan_now<10"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S4脱がす[3]==0 && f.kaikan_now<10"]
[else]
[eval exp="tf.表情スキップ = 23"  ]
[endif]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす会話1

[tb_start_text mode=4 ]
[僕]（嗯～……还想多欣赏会儿内裤呢）[改ページ]
[_tb_end_text]

[return  ]
*パンツ脱がす会話2

[tb_start_text mode=4 ]
[僕]「那就把那条白色内裤也脱掉吧～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina117.ogg"]
[にぃな]「你、你说什么……开玩笑的吧？」[改ページ]
[僕]「嗯～因为接下来要好好欣赏妮娜酱的重要部位啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu2.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina118.ogg"]
[にぃな]「才不会给你看！」[改ページ]
[僕]（果然……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[3] = 1"  ]
[_tb_end_tyrano_code]

[return  ]
*パンツ脱がす会話3

[tb_start_text mode=4 ]
[僕]「求求你啦，就这～样！今天请务必让我看看妮娜酱的那里！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 23"]
[眉 storage="scene4/mayu2.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina119.ogg"]
[にぃな]「不行不行、绝对不行！太丢人了！」[改ページ]
[僕]「有什么关系嘛，肉缝都被我看光光了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina120.ogg"]
[にぃな]「那、那和刚才的情况性质不一样啦」[改ページ]
[僕]（啧、果然防备很严密）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[3] = 2"  ]
[_tb_end_tyrano_code]

[return  ]
*パンツ脱がす会話4

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 23"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina120.ogg"]
[にぃな]「那、那和刚才的情况性质不一样啦」[改ページ]
[僕]（啧、果然防备很严密）[改ページ]
[_tb_end_text]

[return  ]
*パンツ脱がす会話5

[cm  ]
[tb_start_text mode=4 ]
[僕]「好嘞，那我可要脱内裤咯～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4進行 = 1"]
[eval exp="f.S4脱がす[3] = 4"  ]
[clearvar exp="tf.表情スキップ"]
[eval exp="f.kaikan_now = f.kaikan_now + 20"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]唰啦唰啦唰啦......[ハート][改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*靴下脱がす2"  cond="f.靴下脱ぎ == 1"]
[call  target="*靴下脱がす1"  cond="f.靴下脱ぎ == null"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*靴下脱がす1

[tb_start_tyrano_code]
[靴下脱がす1 mayu1=scene4/mayu3.png mayuy1=4 me1=scene4/me2.png kuti1=scene4/kuti6.png mayu2=scene4/mayu1.png me2=scene4/me7.png kuti2=scene4/kuti1.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*靴下脱がす2

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*パンツ触る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（不行不行，突然这么做的话一切就完蛋了）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*オマンコ触る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那、那个......」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 30"]
[eval exp="tf.表情スキップ = 30]
[眉 storage="scene4/mayu2.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina121.ogg"]
[にぃな]「只有这里绝对不行！！」[改ページ]
[僕]（不行，看来完全没戏......）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
*オマンコ開く

[cm  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*オマンコ開く2"  cond="f.S4くぱぁ[2] == 1"  ]
[call  target="*オマンコ開く1"  cond="f.S4くぱぁ[2] == 0"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 31]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*オマンコ開く1

[tb_start_text mode=4 ]
[僕]「我说、把那里打开啦……用双手哗啦一下扒开」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina122.ogg"]
[にぃな]「没、没什么好看的啦，看这种地方」[改ページ]
[僕]「那～可以了吧？让我看看嘛」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina123.ogg"]
[にぃな]「真……的非要看不可？」[改ページ]
[僕]「嗯，非看不可」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4くぱぁ[2] = 1"  cond="f.S4くぱぁ[2] == 0"  ]
[eval exp="f.S4進行 = 2"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1250]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina124.ogg"]
[にぃな]「好啦……」[改ページ]
[僕]「喔噢！」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*オマンコ開く2

[tb_start_text mode=4 ]
[僕]「我说、再让我看看……里面」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina125.ogg"]
[にぃな]「哎～还要看啊？」[改ページ]
[僕]「嗯，拜托了」[改ページ]
[playse storage="niina126.ogg"]
[にぃな]「呜～……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1250 visible=false]
[_tb_end_tyrano_code]

[return  ]
*クリを剥く

[cm  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*クリを剥く2"  cond="f.S4ムキッ[2] == 1"  ]
[call  target="*クリを剥く1"  cond="f.S4ムキッ[2] == 0"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 31]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*クリを剥く1

[tb_start_text mode=4 ]
[僕]「你看，肉缝上方有个鼓起来的地方对吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu1.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina127.ogg"]
[にぃな]「啊、嗯，是这里……？」[改ページ]
[僕]「对对……用手指拉开那里」[改ページ]
[playse storage="niina128.ogg"]
[にぃな]「拉开就行吗？像这样？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4ムキッ[2] = 1"  cond="f.S4ムキッ[2] == 0"  ]
[eval exp="f.S4進行 = 3"]
[eval exp="f.kaikan_now = f.kaikan_now + 10"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina129.ogg"]
[にぃな]「嗯……」[改ページ]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4"  ]
[return  ]
*クリを剥く2

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「呐，再扒开……刚才那里」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina130.ogg"]
[にぃな]「倒也不是不行……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*手戻す

[tb_show_message_window  ]
[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[call  target="*服の状態" ]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「手……可以了，谢谢」[改ページ]
[playse storage="niina131.ogg"]
[にぃな]「嗯、嗯……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[eval exp="f.S4進行 = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti3.png"]
[call  target="*服の状態" ]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
*ラスト

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（啊，真是心满意足了！）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「谢谢你，妮娜。让我看到这么重要的地方」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina132.ogg"]
[にぃな]「妮娜我…不是光说不做的」[改ページ]
[僕]「……」[改ページ]
[僕]（原来你在意这个啊……）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S4クリア = 1"]
[シーン4変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene5.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene4/otoko1a.png" cond="f.S4愛撫[0] == 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
[if exp="f.S4進行 == 2"]
[下着 storage="scene4/bura2.png" cond="f.S4脱がす[1] < 1 && f.S4脱がす[0] == 1"]
[下着 storage="scene4/fuku2.png" cond="f.S4脱がす[0] < 1"]
[下着 storage="scene4/sukato2.png" cond="f.S4脱がす[2] < 1"]
[下着 storage="scene4/socks2.png" cond="f.S4脱がす[4] < 1"]
[elsif exp="f.S4進行 == 3"]
[下着 storage="scene4/bura3.png" cond="f.S4脱がす[1] < 1 && f.S4脱がす[0] == 1"]
[下着 storage="scene4/fuku3.png" cond="f.S4脱がす[0] < 1"]
[下着 storage="scene4/sukato3.png" cond="f.S4脱がす[2] < 1"]
[下着 storage="scene4/socks3.png" cond="f.S4脱がす[4] < 1"]
[else]
[下着 storage="scene4/bura1.png" cond="f.S4脱がす[1] < 1 && f.S4脱がす[0] == 1"]
[下着 storage="scene4/fuku1.png" cond="f.S4脱がす[0] < 1"]
[下着 storage="scene4/sukato1.png" cond="f.S4脱がす[2] < 1"]
[下着 storage="scene4/pantu1.png" cond="f.S4脱がす[3] < 4"]
[下着 storage="scene4/socks1.png" cond="f.S4脱がす[4] < 1"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[if exp="f.S4進行 >= 1"]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene4/hoho.png"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene4/karada3.png"  cond="f.S4進行 == 3"  ]
[体 storage="scene4/karada2.png"  cond="f.S4進行 == 2"  ]
[体 storage="scene4/karada1.png"  cond="f.S4進行 <= 1"  ]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S4愛撫[0] = 0"  cond="f.S4進行 == 1"  ]
[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[return  ]
