[_tb_system_call storage=system/_scene4b.ks]

*scene4b

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン4変数リセット]
[eval exp="f.服脱ぎ = 2"]
[clearvar exp="f.ブラ脱ぎ"]
[eval exp="f.スカート脱ぎ = 2"]
[eval exp="f.靴下脱ぎ = 1"]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*オマンコ

[cm  ]
[tb_start_text mode=4 ]
[僕]「来，自己把脚抬起来啦～」[改ページ]
[playse storage="niina195.ogg"]
[にぃな]「呜、难道说……」[改ページ]
[僕]「嗯，就是那个难道说」[改ページ]
[playse storage="niina196.ogg"]
[にぃな]「哎～ 又来？人家刚穿上内裤的说」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="210"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ4b"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ4b"  ]
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
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

*選択肢復活

[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"  ]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"  ]
[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活" width="175"  ]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"  ]
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
[選択画像  graphic="sentaku/asoko.png"  target="*アソコ見る"  cond="f.S4脱がす[3] >= 4" ]
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
[clickable_map  visible=false  graphic=scene4/S4clickable1a.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 0 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable3a.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 2 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable4a.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 3 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable2a.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 1 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable1b.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 0 && f.kaisou == 1"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable3b.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 2 && f.kaisou == 1"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable4b.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 3 && f.kaisou == 1"  ]
[clickable_map  visible=false  graphic=scene4/S4clickable2b.png storage=scene4b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S4進行 == 1 && f.kaisou == 1"  ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='00FFFF'"]
[jump  target="*パンツ触る" cond="f.S4進行 == 0"]
[jump  target="*オマンコ触る" cond="f.S4進行 >= 1"]
[elsif exp="clickable_map.click=='00A0E8'"]
[jump target="*手戻す"  cond="f.S4進行 == 2"  ]
[call  target="*男消去" cond="f.S4愛撫[0] == 1"]
[eval exp="f.S4愛撫[0] = 2" cond="f.S4愛撫[0] == 1"]
[jump target="*オマンコ開く"  cond="f.S4進行 != 2"  ]
[elsif exp="clickable_map.click=='001D58'"]
[jump target="*手戻す"  cond="f.S4進行 == 3"  ]
[call  target="*男消去" cond="f.S4愛撫[0] == 1"]
[eval exp="f.S4愛撫[0] = 2" cond="f.S4愛撫[0] == 1"]
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
*話す

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S4進行 == 0"]
[call  target="*話す1"  ]
[eval exp="tf.表情スキップ = 1"]

[elsif exp="f.S4進行 == 1 && f.S4愛撫[0] != 1"]
[call  target="*話す2"  ]
[eval exp="tf.表情スキップ = 0"]

[elsif exp="f.S4進行 == 2 && f.S4愛撫[0] != 1"]
[call  target="*話す3"  ]
[eval exp="tf.表情スキップ = 0"]

[elsif exp="f.S4進行 == 3 && f.S4愛撫[0] != 1"]
[call  target="*話す4"  ]
[eval exp="tf.表情スキップ = 0"]

[elsif exp="f.S4進行 >= 1 && f.S4愛撫[0] == 1"]
[call  target="*話す5"  ]
;表情スキップ触るで0
[endif]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
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
*話す1

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「来吧，这次要好好观察妮娜的重要部位咯」[改ページ]
[playse storage="niina197.ogg"]
[にぃな]「真是的～ 之前不是给你看过了嘛。要看到几次才满意啊」[改ページ]
[僕]「要很多次」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=6]
[目 storage="scene4/me9.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]

[_tb_end_text]

[return  ]
*話す2

[tb_start_tyrano_code]
[if exp="f.S4エロ台詞 < 2"]
[call target="*話す2a"]
[elsif exp="f.S4エロ台詞 == 2"]
[call target="*話す2a"]
[elsif exp="f.S4エロ台詞 == 3"]
[call target="*話す2b"]
[elsif exp="f.S4エロ台詞 == 4"]
[call target="*話す2b"]
[elsif exp="f.S4エロ台詞 == 5"]
[call target="*話す2c"]
[elsif exp="f.S4エロ台詞 == 6"]
[call target="*話す2c"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す2a

[tb_start_text mode=4 ]
[僕]「呐，内裤被脱掉果然很丢人吗？」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina198.ogg"]
[にぃな]「……笨蛋」[改ページ]
[_tb_end_text]

[return  ]
*話す2b

[tb_start_text mode=4 ]
[僕]「啊，肉缝酱有点微微发红了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina199.ogg"]
[にぃな]「呐、可以结束了吧？」[改ページ]
[僕]「不要，还要继续」[改ページ]
[_tb_end_text]

[return  ]
*話す2c

[tb_start_text mode=4 ]
[僕]「嘻嘻，小穴想要被快点抚摸吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[eval exp="tf.表情スキップ = 0"]
[汗 storage="scene4/ase2.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina200.ogg"]
[にぃな]「坏、坏心眼」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_tyrano_code]
[if exp="f.S4エロ台詞 < 2"]
[call target="*話す3a"]
[elsif exp="f.S4エロ台詞 == 2"]
[call target="*話す3a"]
[elsif exp="f.S4エロ台詞 == 3"]
[call target="*話す3b"]
[elsif exp="f.S4エロ台詞 == 4"]
[call target="*話す3b"]
[elsif exp="f.S4エロ台詞 == 5"]
[call target="*話す3c"]
[elsif exp="f.S4エロ台詞 == 6"]
[call target="*話す3c"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す3a

[tb_start_text mode=4 ]
[僕]「啊啊...好幸福......又能看到妮娜酱的小小肉缝」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina201.ogg"]
[にぃな]「男生都这么想看这里的吗？」[改ページ]
[僕]「嗯，恨不得一整天都盯着看」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=-4]
[目 storage="scene4/me3.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina202.ogg"]
[にぃな]「诶～！？这么夸张！？」[改ページ]
[_tb_end_text]

[return  ]
*話す3b

[tb_start_text mode=4 ]
[僕]「哦哦，抽动得好厉害。小穴原来会这样动啊......」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina203.ogg"]
[にぃな]「不用每次都特意说出来～的……」[改ページ]
[_tb_end_text]

[return  ]
*話す3c

[tb_start_text mode=4 ]
[僕]「啊啊、妮娜的小穴正在不停流出H的汁液」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[汗 storage="scene4/ase2.png"]
[眉 storage="scene4/mayu3.png" y=6]
[目 storage="scene4/me9.png"]
[口 storage="scene4/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina204.ogg"]
[にぃな]「呜呜、超级丢人……」[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_start_tyrano_code]
[if exp="f.S4エロ台詞 < 2"]
[call target="*話す4a"]
[elsif exp="f.S4エロ台詞 == 2"]
[call target="*話す4a"]
[elsif exp="f.S4エロ台詞 == 3"]
[call target="*話す4b"]
[elsif exp="f.S4エロ台詞 == 4"]
[call target="*話す4b"]
[elsif exp="f.S4エロ台詞 == 5"]
[call target="*話す4c"]
[elsif exp="f.S4エロ台詞 == 6"]
[call target="*話す4c"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す4a

[tb_start_text mode=4 ]
[僕]「呼呼、发现好可～爱女孩子的鸡鸡」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina205.ogg"]
[にぃな]「真是～又提这个」[改ページ]
[_tb_end_text]

[return  ]
*話す4b

[tb_start_text mode=4 ]
[僕]「用手指按住小豆豆很～舒服对吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina206.ogg"]
[にぃな]「不知道……」[改ページ]
[_tb_end_text]

[return  ]
*話す4c

[tb_start_text mode=4 ]
[僕]「好厉害……妮娜小小的阴蒂都硬邦邦了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[汗 storage="scene4/ase2.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina207.ogg"]
[にぃな]「那、那个……」[改ページ]
[_tb_end_text]

[return  ]
*話す5

[tb_start_tyrano_code]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ >= 2"]
[call  target="*オマンコ触る表情"  ]
[call  target="*服の状態"  ]
[call  target="*体の状態"  ]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S4エロ台詞 < 2"]
[call  target="*話す5a"]
[elsif exp="f.S4エロ台詞 == 2"]
[call target="*話す5b"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S4エロ台詞 == 3"]
[call target="*話す5c"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S4エロ台詞 == 4"]
[call target="*話す5d"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S4エロ台詞 == 5"]
[call target="*話す5e"]
[elsif exp="f.S4エロ台詞 == 6"]
[call target="*話す5f"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す5a

[tb_start_text mode=4 ]
[僕]「哦哦、滑溜溜的好厉害……」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5b

[tb_start_text mode=4 ]
[僕]「呐、这里被碰到时是什么感觉？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina208.ogg"]
[にぃな]「就、就是被碰到的感觉……」[改ページ]
[_tb_end_text]

[return  ]
*話す5c

[tb_start_text mode=4 ]
[僕]「怎么样？开始舒服了吗？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina209.ogg"]
[にぃな]「可能吧……」[改ページ]
[_tb_end_text]

[return  ]
*話す5d

[tb_start_text mode=4 ]
[僕]「哦……开始变得滑溜溜了」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti6.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina210.ogg"]
[にぃな]「那、那是什么啊」[改ページ]
[僕]「爱液这种H的体液。女孩子舒服时就会流出来的」[改ページ]
[playse storage="niina211.ogg"]
[にぃな]「这样啊……」[改ページ]
[_tb_end_text]

[return  ]
*話す5e

[tb_start_text mode=4 ]
[僕]「啊啊、已经湿得一塌糊涂了。妮娜的小穴简直洪水泛滥」[改ページ]
[playse storage="niina212.ogg"]
[にぃな]「哈啊哈啊[ハート]　哈啊哈啊[ハート]哈啊哈啊[ハート]　哈啊哈啊[ハート]」[改ページ]
[_tb_end_text]

[return  ]
*話す5f

[tb_start_text mode=4 ]
[playse storage="niina213.ogg"]
[にぃな]「呀啊[ハート]　好像要来了っ」[ハート][改ページ]
[僕]「快看、再自己用力把股间压上来呀」[改ページ]
[playse storage="niina214.ogg"]
[にぃな]「嗯っ」[ハート][改ページ]
[_tb_end_text]

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

[tb_start_text mode=4 ]
[僕]（啊啊、真棒啊、〇〇生的大开腿姿势。......心灵都被净化了）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（妮娜......脸已经通红通红的了）[改ページ]
[_tb_end_text]

[return  ]
*服見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（妮娜、很喜欢这件衣服呢）[改ページ]

[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*スカート見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（粉色裙子已经完全掀起来了）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*パンツ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]　(妮娜纯白内裤的胯部呢）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*アソコ見る

[tb_start_tyrano_code]
[call  target="*男消去"  cond="f.S4愛撫[0] == 1"  ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]

[if exp="f.S4エロ台詞 >= 0 && f.S4エロ台詞 < 3"]
[call  target="*オマンコ見る1" cond="f.S4進行 == 1"  ]
[call  target="*クパァ見る1" cond="f.S4進行 == 2"  ]
[call  target="*クリ見る1" cond="f.S4進行 == 3"  ]

[elsif exp="f.S4エロ台詞 >= 3 && f.S4エロ台詞 < 5"]
[call  target="*オマンコ見る2" cond="f.S4進行 == 1"  ]
[call  target="*クパァ見る2" cond="f.S4進行 == 2"  ]
[call  target="*クリ見る2" cond="f.S4進行 == 3"  ]

[elsif exp="f.S4エロ台詞 >= 5"]
[call  target="*オマンコ見る3" cond="f.S4進行 == 1"  ]
[call  target="*クパァ見る3" cond="f.S4進行 == 2"  ]
[call  target="*クリ見る3" cond="f.S4進行 == 3"  ]
[endif]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*男出現"  cond="f.S4愛撫[0] == 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*オマンコ見る1

[tb_start_text mode=4 ]
[僕]（哈啊、看着还是好可爱～小内裤）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る2

[tb_start_text mode=4 ]
[僕]（肉缝已经有点湿润了……）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る3

[tb_start_text mode=4 ]
[僕]（连底缝都湿透了……）[改ページ]
[_tb_end_text]

[return  ]
*クパァ見る1

[tb_start_text mode=4 ]
[僕]（粉红色真是漂～亮……）[改ページ]

[_tb_end_text]

[return  ]
*クパァ見る2

[tb_start_text mode=4 ]
[僕]（小穴一直动来动去……就像在呼吸一样）[改ページ]
[_tb_end_text]

[return  ]
*クパァ見る3

[tb_start_text mode=4 ]
[僕]（沾满爱液闪闪发亮……）[改ページ]

[_tb_end_text]

[return  ]
*クリ見る1

[tb_start_text mode=4 ]
[僕]（啊、女孩子的阴蒂真是惹人怜爱啊……）[改ページ]

[_tb_end_text]

[return  ]
*クリ見る2

[tb_start_text mode=4 ]
[僕]（啊、小豆豆变红了……）[改ページ]

[_tb_end_text]

[return  ]
*クリ見る3

[tb_start_text mode=4 ]
[僕]（呜哦、小豆豆已经完全勃起）[改ページ]

[_tb_end_text]

[return  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*服脱がす4"  cond="f.服脱ぎ == 3"]
[call  target="*服脱がす3"  cond="f.服脱ぎ == 2"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服脱がす3

[tb_start_tyrano_code]
[服脱がす3 mayu1=scene4/mayu2.png mayuy1=4 me1=scene4/me2.png kuti1=scene4/kuti7.png mayu2=scene4/mayu3.png me2=scene4/me1.png kuti2=scene4/kuti6.png mayu3=scene4/mayu3.png mayuy3=4 me3=scene4/me2.png kuti3=scene4/kuti1.png ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[0] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*服脱がす4

[tb_start_text mode=4 ]
[僕]（好～现在趁着妮娜有感觉的时候……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[0] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*ブラ脱がす2" cond="f.ブラ脱ぎ == 1"]
[call  target="*ブラ脱がす1" cond="f.ブラ脱ぎ == null"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*ブラ脱がす1

[tb_start_tyrano_code]
[ブラ脱がす1 mayu1=scene4/mayu3.png me1=scene4/me1.png kuti1=scene4/kuti1.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[1] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*ブラ脱がす2

[tb_start_text mode=4 ]
[僕]（这件胸罩也……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[1] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[スカート脱がす3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[2] = 1"  ]
;[eval exp="tf.表情スキップ = 22"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「好、再来一次脱内裤咯」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[3] = 4" ]
[eval exp="f.S4進行 = 1"]
[eval exp="tf.表情スキップ = 22"]
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
[エロ音1]唰啦唰啦唰啦……[ハート][改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S4脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*パンツ触る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（不行不行。突然做那种事的话，一切都会完蛋的）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*オマンコ触る

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*オマンコ触る3"  cond="f.S4進行 >= 1 && f.S4愛撫[0] == 1"  ]
[jump  target="*オマンコ触る2"  cond="f.S4進行 >= 1 && f.S4愛撫[0] == 2"  ]
[jump  target="*オマンコ触る1"  cond="f.S4進行 >= 1 && f.S4愛撫[0] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*オマンコ触る1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「呐……可以摸吗？ 妮娜酱的小妹妹」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina215.ogg"]
[にぃな]「欸……」[改ページ]
[僕]「你看，之前你都摸过我的了。只有自己舒服太不公平了吧？对吧？对吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[僕]（哦、不说话也就是说……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4愛撫[0] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina216.ogg"]
[にぃな]「啊……」[改ページ]
[僕]「……摸上去了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*オマンコ触る2

[tb_start_tyrano_code]
[eval exp="f.S4愛撫[0] = 1"]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 - 1"]
[eval exp="f.S4エロ台詞 = 0" cond="f.S4エロ台詞 < 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*オマンコ触る表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[call  target="*オマンコ触る台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*オマンコ触る3

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=210]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ4b"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene4/otoko1b.png"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*オマンコ触る表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S4エロ台詞 == 0 && f.kaikan_now >= 0 || f.S4エロ台詞 == 1 && f.kaikan_now >= 30 || f.S4エロ台詞 == 2 && f.kaikan_now >= 60 || f.S4エロ台詞 == 3 && f.kaikan_now >= 90 || f.S4エロ台詞 == 4 && f.kaikan_now >= 130 || f.S4エロ台詞 == 5 && f.kaikan_now >= 170 || f.S4エロ台詞 == 6 && f.kaikan_now >= 210"  ]
[call  target="*オマンコ触る台詞"  ]
[eval exp="f.服脱ぎ = 3"  cond="f.S4エロ台詞 == 5"]
[eval exp="f.ブラ脱ぎ = 1"  cond="f.S4エロ台詞 == 5"]
[jump  target="*オマンコ触る4"  cond="f.kaikan_now >= 210"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*オマンコ触る3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*オマンコ触る4

[tb_start_tyrano_code]
[eval exp="f.S4愛撫[0] = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti9.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]啾啾～……[改ページ]
[僕]「好厉害……小穴里拉出透明的丝线了」[改ページ]
[playse storage="niina217.ogg"]
[にぃな]「哈啊[ハート] 哈啊[ハート] 哈啊[ハート] 哈啊[ハート] 刚、刚才那是？」[改ページ]
[僕]「像刚才那样身体突然发抖的，就是要去了对吧」[改ページ]
[playse storage="niina218.ogg"]
[にぃな]「这样啊……」[改ページ]
[僕]「……」[改ページ]
[僕]「啊、那个」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase2.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina219.ogg"]
[にぃな]「……嗯？」[改ページ]
[僕]「已、已经忍不住了！」[改ページ]
[playse storage="niina220.ogg"]
[にぃな]「什么？」[改ページ]
[僕]「那个……已经忍不住了」[改ページ]
[playse storage="niina221.ogg"]
[にぃな]「这样啊……」[改ページ]
[僕]「嗯，所以──」[改ページ]
[僕]「来做吧，做爱」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase2.png"]
[眉 storage="scene4/mayu3.png" y=-4]
[目 storage="scene4/me3.png"]
[口 storage="scene4/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina222.ogg"]
[にぃな]「哎？哎？等、等一下……」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S4クリア = 2"]
[シーン4変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene7.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
*オマンコ触る表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti1.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me7.png"]
[口 storage="scene4/kuti3.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me4.png"]
[口 storage="scene4/kuti2.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 130"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti4.png"]
[elsif exp="f.kaikan_now >= 130 && f.kaikan_now < 170"]
[汗 storage="scene4/ase1.png"]
[眉 storage="scene4/mayu3.png" y=8]
[目 storage="scene4/me8.png"]
[口 storage="scene4/kuti7.png"]
[elsif exp="f.kaikan_now >= 170 && f.kaikan_now < 210"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me5.png"]
[口 storage="scene4/kuti9.png"]
[elsif exp="f.kaikan_now >= 210"]
[眉 storage="scene4/mayu3.png" y=6]
[目 storage="scene4/me9.png"]
[口 storage="scene4/kuti8.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*オマンコ触る台詞

[tb_start_tyrano_code]
[if exp="f.S4エロ台詞 == 0 && f.kaikan_now >= 0 && f.kaikan_now < 30"]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]

[elsif exp="f.S4エロ台詞 == 1 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]

[elsif exp="f.S4エロ台詞 == 2 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina223.ogg"]
[にぃな]「……嗯」[改ページ]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]

[elsif exp="f.S4エロ台詞 == 3 && f.kaikan_now >= 90 && f.kaikan_now < 130"]
[tb_show_message_window  ]
[playse storage="niina224.ogg"]
[にぃな]「啊」[ハート][改ページ]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]

[elsif exp="f.S4エロ台詞 == 4 && f.kaikan_now >= 130 && f.kaikan_now < 170"]
[tb_show_message_window  ]
[playse storage="niina225.ogg"]
[にぃな]「哈啊哈啊[ハート] 哈啊哈啊[ハート]哈啊哈啊[ハート] 哈啊哈啊[ハート]」[改ページ]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]

[elsif exp="f.S4エロ台詞 == 5 && f.kaikan_now >= 170 && f.kaikan_now < 210"]
[tb_show_message_window  ]
[playse storage="niina226.ogg"]
[にぃな]「啊 [ハート]啊 啊[ハート] 啊啊[ハート] 啊 [ハート]啊 [ハート]啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]

[elsif exp="f.kaikan_now >= 210"]
[tb_show_message_window  ]
[playse storage="niina227.ogg"]
[にぃな]「啊——[ハート]」[改ページ]
[フラッシュ]
[僕]「呃...」[改ページ]
[eval exp="f.S4エロ台詞 = f.S4エロ台詞 + 1"]
[endif]

[tb_hide_message_window  ]
[_tb_end_tyrano_code]

[return  ]
*オマンコ開く

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*オマンコ開く1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 30"]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*オマンコ開く1

[cm  ]
[tb_start_text mode=4 ]
[僕]「那个...把腿打开，妮娜的那里」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 30"]
[汗 storage="scene4/ase2.png" cond="f.kaikan_now >= 130"]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti3.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「......」[改ページ]
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
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina228.ogg"]
[にぃな]「好...」[改ページ]
[_tb_end_text]

[return  ]
*クリを剥く

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*クリを剥く1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 31"]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*クリを剥く1

[cm  ]
[tb_start_text mode=4 ]
[僕]「那个...让我看看小豆豆」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene4/ase2.png" cond="f.kaikan_now >= 130"]
[眉 storage="scene4/mayu3.png" y=4]
[目 storage="scene4/me2.png"]
[口 storage="scene4/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina229.ogg"]
[にぃな]「嗯、嗯...」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4進行 = 3"]
;[clearvar exp="tf.表情スキップ"]
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
[tb_start_text mode=4 ]
[僕]「手...谢谢」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S4進行 = 1"]
[eval exp="tf.表情スキップ = 30"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S4愛撫[0] == 1"]
[call  target="*オマンコ触る表情"  ]
[call  target="*服の状態" ]
[call  target="*体の状態"]
[絵変更 time=1250 visible=false]
[else]
[眉 storage="scene4/mayu3.png"]
[目 storage="scene4/me1.png"]
[口 storage="scene4/kuti3.png"]
[call  target="*服の状態" ]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[endif]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
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
[汗 storage="scene4/ase2.png" cond="f.kaikan_now >= 130"]
[_tb_end_tyrano_code]

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
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[return  ]
*男出現

[tb_start_tyrano_code]
[backlay]
[男 storage="scene4/otoko1a.png"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[return  ]
