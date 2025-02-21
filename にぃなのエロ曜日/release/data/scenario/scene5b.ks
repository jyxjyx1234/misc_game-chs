[_tb_system_call storage=system/_scene5b.ks]

*scene5b

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン5変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*フェラチオ

[cm  ]
[tb_start_text mode=4 ]
[僕]「喂喂，快看快看……我的」[改ページ]
[playse storage="niina374.ogg"]
[にぃな]「真是的～你果然是个变态嘛」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S5進行 = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="310"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ5b"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ5b"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me4.png"]
[口 storage="scene5/kuti1.png"]
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
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"  ]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"  ]
[選択画像  graphic="sentaku/negau.png"  target="*フェラ自重" width="175"  cond="f.S5進行 <= 1 && f.kaikan_now < 10" ]
[選択画像  graphic="sentaku/negau.png"  target="*領域復活" width="175"  cond="f.S5進行 <= 1 && f.kaikan_now >= 10" ]
[選択画像  graphic="sentaku/fella.png"  target="*領域復活" width="175"  cond="f.S5進行 == 3" ]
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
[選択画像  graphic="sentaku/tinko.png"  target="*チンコ見る"  ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S5脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S5脱がす[1] < 1 && f.S5脱がす[0] == 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S5脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす" cond="f.S5脱がす[3] < 1 && f.S5脱がす[2] == 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S5脱がす[4] < 1" ]
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
[clickable_map  visible=false  graphic=scene5/S5clickable3a.png storage=scene5b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 1 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene5/S5clickable4a.png storage=scene5b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 3 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene5/S5clickable3b.png storage=scene5b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 1 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene5/S5clickable4b.png storage=scene5b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 3 && f.kaisou == 1"   ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*フェラ"]
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
[call  target="*話す3"  cond="f.S5進行 == 3"  ]
[call  target="*話す1"  cond="f.S5進行 == 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0 && f.S5話す == 0"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me4.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[elsif exp="tf.表情スキップ != 0 && f.S5話す == 3"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[else]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[if exp="f.S5話す == 0"]
[eval exp="f.S5話す = f.S5話す + 1"  cond="f.S5話す　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[call  target="*話す1a"  ]

[elsif exp="f.S5話す == 1"]
[eval exp="f.S5話す = f.S5話す + 1"  cond="f.S5話す　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[call  target="*話す1b"  ]

[elsif exp="f.S5話す == 2"]
[eval exp="f.S5話す = f.S5話す + 1"  cond="f.S5話す　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 4" cond="f.kaikan_now < 10"]
[call  target="*話す1c"  ]

[elsif exp="f.S5話す == 3"]
[call  target="*話す1d"  ]
[endif]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ5b"  ]
[return  ]
*話す1a

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[僕]「怎么啦？看到鸡鸡就突然僵住了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina375.ogg"]
[にぃな]「哎……这么大的东西，真的进去过吗」[改ページ]
[僕]「那当然～把你小小的穴塞得满满的！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene5/mayu2.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti7.png"]
[頬 storage="scene5/hoho.png"]
[絵変更]
[free layer="0" page="back" name="hoho" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina376.ogg"]
[にぃな]「你、你就不能说得委婉点嘛！」[改ページ]
[_tb_end_text]

[return  ]
*話す1b

[tb_start_text mode=4 ]
[僕]「看鸡鸡这种事，现在应该习惯了吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina377.ogg"]
[にぃな]「嘛，也许吧」[改ページ]
[僕]「果然做爱前后给人的感觉不一样吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=-4 y=-6]
[目 storage="scene5/me6.png"]
[口 storage="scene5/kuti4.png"]
[頬 storage="scene5/hoho.png"]
[絵変更]
[free layer="0" page="back" name="hoho" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina378.ogg"]
[にぃな]「娜娜！？那、那种事情、突、突然改变什么的才不可能呢！」[改ページ]
[僕]（哦哦，看起来确实有差别呢）[改ページ]
[_tb_end_text]

[return  ]
*話す1c

[tb_start_text mode=4 ]
; [僕]「あぁ、女の子を幸せにする為に、[r]いつも頑張ってる僕のチンコ。[r]誰か可愛がってくれないかな～」[改ページ]
[僕]「啊啊，为了让女孩子幸福而那么努力的我的鸡鸡。有没有谁来疼爱它啊～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina379.ogg"]
[にぃな]「总觉得好狡猾......」[改ページ]
[_tb_end_text]

[return  ]
*話す1d

[tb_start_text mode=4 ]
[playse storage="niina379.ogg"]
[にぃな]「总觉得好狡猾......」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[call  target="*手コキ表情"  ]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5エロ台詞[1]== 0"]
[call  target="*話す3a"]
[elsif exp="f.S5エロ台詞[1] == 1"]
[call  target="*話す3b"]
[elsif exp="f.S5エロ台詞[1] == 2"]
[call  target="*話す3c"]
[elsif exp="f.S5エロ台詞[1] == 3"]
[call  target="*話す3d"]
[elsif exp="f.S5エロ台詞[1] == 4"]
[call  target="*話す3e"]
[elsif exp="f.S5エロ台詞[1] == 5"]
[call  target="*話す3f"]
[elsif exp="f.S5エロ台詞[1] == 6"]
[call  target="*話す3g"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す3a

[tb_start_text mode=4 ]
[僕]「哈啊～好温暖，妮娜酱的小嘴里面」[改ページ]
[playse storage="niina380.ogg"]
[にぃな]「嗦夫娜啦......」[改ページ]
[僕]「嗯，感觉有点安心呢......」[改ページ]
[_tb_end_text]

[return  ]
*話す3b

[tb_start_text mode=4 ]
[僕]「哈啊啊…！[ハート]这、这就是口交！滑溜溜的口腔黏膜和鸡鸡摩擦着好舒服」[ハート][改ページ]
[playse storage="niina381.ogg"]
[にぃな]「嗯……　　嗯……嗯……　　嗯……」[改ページ]
[_tb_end_text]

[return  ]
*話す3c

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_text mode=4 ]
[僕]「呐，舔鸡鸡是什么感觉啊？」[改ページ]
[playse storage="niina382.ogg"]
[にぃな]「诶、超...硬梆梆」[改ページ]
[僕]「就当成冰淇淋来舔舔看嘛。这可是超美味的鸡鸡冰淇淋」[改ページ]
[playse storage="niina383.ogg"]
[にぃな]「呜呀......」[改ページ]
[_tb_end_text]

[return  ]
*話す3d

[tb_start_text mode=4 ]
[僕]「呼呼，被女孩子舔的时候心跳加速了吧」[改ページ]
[playse storage="niina384.ogg"]
[にぃな]「嗯、嗯......」[改ページ]
[僕]「能看到妮娜酱的初次口交表情真是太开心了」[改ページ]
[_tb_end_text]

[return  ]
*話す3e

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_text mode=4 ]
[playse storage="niina385.ogg"]
[にぃな]「啊、啊啊鸡鸡...呜哼、变得噗咻噗咻的跳动了」[改ページ]
[僕]「哈啊～[ハート]鸡鸡好舒服！妮娜酱简直是口交天才」[改ページ]
[_tb_end_text]

[return  ]
*話す3f

[tb_start_text mode=4 ]
[僕]「啊啊、好～爽～哦、就是这感觉。把嘴里都灌满唾液吧」[改ページ]
[playse storage="niina386.ogg"]
[にぃな]「啾噗噗 啾[ハート]噗噗啾啵啵 [ハート]啾啵啵」[ハート][ハート][改ページ]
[_tb_end_text]

[return  ]
*話す3g

[tb_start_text mode=4 ]
[僕]「啊啊 [ハート]太爽了～妮[ハート]娜的小口穴真的太爽了～」[ハート][改ページ]
[playse storage="niina387.ogg"]
[にぃな]「啾～～！ 啾～～！啾～～！ 啾～～！」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る4"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] >= 6"  ]
[call  target="*にぃな見る3"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] >= 4 && f.S5エロ台詞[1] <= 5"  ]
[call  target="*にぃな見る2"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] <= 3"  ]
[call  target="*にぃな見る1"  cond="f.S5進行 <= 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（太好了，今天好像没在害怕）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（哦哦，这么可爱的女孩子在舔我的...难以置信）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_text mode=4 ]
[僕]（萝莉口交太棒了）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る4

[tb_start_text mode=4 ]
[僕]（咕呜呜...！〇〇岁的认真口交太有效了！）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*チンコ見る5"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] >= 6"  ]
[call  target="*チンコ見る4"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] >= 4 && f.S5エロ台詞[1] <= 5"  ]
[call  target="*チンコ見る3"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] >= 1 && f.S5エロ台詞[1] <= 3"  ]
[call  target="*チンコ見る2"  cond="f.S5進行 == 3 && f.S5エロ台詞[1] <= 0"  ]
[call  target="*チンコ見る1"  cond="f.S5進行 <= 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*チンコ見る1

[tb_start_text mode=4 ]
[僕]（被女孩子看着，果然还是会兴奋啊）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る2

[tb_start_text mode=4 ]
[僕]（第、第一次的口穴体验！）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る3

[tb_start_text mode=4 ]
[僕]（啊啊，柔软弹嫩的嘴唇一次又一次地...）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る4

[tb_start_text mode=4 ]
[僕]（鸡、鸡鸡都翘起来了）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る5

[tb_start_text mode=4 ]
[僕]（哈啊…っ [ハート]鸡鸡被咕啾咕啾的小嘴吸得好厉害）[改ページ]
[_tb_end_text]

[return  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S5脱がす[0] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[服脱がす5]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5進行 < 3"]
[eval exp="tf.表情スキップ = 20"]
[眉 storage="scene5/mayu1.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti1.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S5脱がす[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[ブラ脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5進行 < 3"]
[eval exp="tf.表情スキップ = 21"]
[眉 storage="scene5/mayu1.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti1.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S5脱がす[2] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[スカート脱がす3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5進行 < 3"]
[eval exp="tf.表情スキップ = 22"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me7.png"]
[口 storage="scene5/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

*パンツ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S5脱がす[3] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[パンツ脱がす1]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5進行 < 3"]
[eval exp="tf.表情スキップ = 23"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me7.png"]
[口 storage="scene5/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S5脱がす[4] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5進行 < 3"]
[eval exp="tf.表情スキップ = 24"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me7.png"]
[口 storage="scene5/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

*フェラ自重

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（嘛，不用那么着急。让妮娜酱再多看一会儿吧）[改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
*フェラ

[tb_start_tyrano_code]
;[eval exp="tf.表情スキップ = 0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*フェラ2"  cond="f.S5奉仕[1] == 1"  ]
[jump  target="*フェラ1"  cond="f.S5奉仕[1] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*フェラ1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（好，今天一定要……）[改ページ]
[僕]「那、那个啊，我有件事想拜托你」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene5/mayu3.png" x=8 y=12]
[目 storage="scene5/me8.png"]
[口 storage="scene5/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina388.ogg"]
[にぃな]「嗯嗯…像之前那样摸就可以了吗？」[改ページ]
[僕]「嗯～不是，今天那个…能、能用小嘴舔舔吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=-4 y=-6]
[目 storage="scene5/me3.png"]
[口 storage="scene5/kuti11.png"]
[頬 storage="scene5/hoho.png"]
[絵変更]
[free layer="0" page="back" name="hoho" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina389.ogg"]
[にぃな]「诶！要舔鸡鸡？」[改ページ]
[僕]「嗯，这个叫口交。无论如何都想让妮娜酱做…不行吗？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me7.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_text mode=4 ]
[playse storage="niina390.ogg"]
[にぃな]「虽然有点……但欧尼酱为了妮娜这么努力」[改ページ]
[僕]「噢！」[改ページ]
[僕]（唰啊啊…！让她欠人情真是太好了！）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「那、那就马上开始吧！」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S5奉仕[1] = 1"]
[eval exp="f.S5進行 = 3"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;[眉 storage="scene5/mayu3.png" x=-306 y=31]
;[目 storage="scene5/me5.png" x=-310 y=25]
[call  target="*フェラ表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[wait time=10]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina391.ogg"]
[にぃな]「……嗯」[改ページ]
[僕]「啊」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*フェラ2

[tb_start_tyrano_code]
[call  storage="scene5b.ks"  target="*フェラ開始"  cond="f.kaikan_now <= 10"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[快感ランダム min=6 max=7 limit=310]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ5b"  ]

[tb_start_tyrano_code]
[eval exp="f.S5進行 = 4"  ]
[call  target="*フェラ表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*フェラ3" cond="f.kaikan_now >= 310"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S5進行 = 3"]
[call  target="*フェラ表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5エロ台詞[1] == 0 && f.kaikan_now >= 10 || f.S5エロ台詞[1] == 1 && f.kaikan_now >= 60 || f.S5エロ台詞[1] == 2 && f.kaikan_now >= 110 || f.S5エロ台詞[1] == 3 && f.kaikan_now >= 160 || f.S5エロ台詞[1] == 4 && f.kaikan_now >= 210 || f.S5エロ台詞[1] == 5 && f.kaikan_now >= 260"  ]
[call  target="*フェラ台詞"]
[jump  target="*領域復活"]
[endif]
[jump  target="*フェラ2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*フェラ3

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「啊啊！不、不行了，已经到极限了！这样下去要射出来了啊！」[改ページ]
[僕]「嗯嗯！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase2.png" x=-348 y=208 ]
[眉 storage="scene5/mayu3.png" x=-352 y=202 ]
[目 storage="scene5/me6b.png" x=-348 y=208 ]
;[call  target="*服の状態"]
;[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]噗噜！噗噜！噗噜！噗噜！噗噜！噗噜！噗噜！噗噜！[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina392.ogg"]
[にぃな]「嗯哦！？」[改ページ]
[僕]「哦 [ハート]哦 哦[ハート] 哦 [ハート]全都射[ハート]进小嘴里了」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase2.png" x=-348 y=208 ]
[眉 storage="scene5/mayu3.png" x=-342 y=217 ]
[目 storage="scene5/me9b.png" x=-348 y=208 ]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina393.ogg"]
[にぃな]「嗯——！ 嗯——！ 嗯——！ 嗯——！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S5進行 = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene5/ase2.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me5b.png"]
[口 storage="scene5/kuti10b.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina394.ogg"]
[にぃな]「呜诶……」[改ページ]
[僕]「啊啊！ 不小心！ 都吐在周围了」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase2.png"]
[眉 storage="scene5/mayu3.png" x=6 y=9]
[目 storage="scene5/me9b.png"]
[口 storage="scene5/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina395.ogg"]
[にぃな]「……嗯」[改ページ]
[僕]「啊……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase2.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2b.png"]
[口 storage="scene5/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina396.ogg"]
[にぃな]「呜、好、好苦……」[改ページ]
[僕]「为、为什么要喝下去啊……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase2.png"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti4.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina397.ogg"]
[にぃな]「嘿嘿、想知道是什么味道呢～」[改ページ]
[僕]「……」[改ページ]
[僕]（这个小恶魔……）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S5クリア = 2"]
[シーン5変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene0.ks"  target=""  ]
[s  ]
*フェラ表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 60"]
[眉 storage="scene5/mayu3.png" x=-306 y=31  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu3.png" x=-344 y=214  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me5.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me5.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 110"]
[眉 storage="scene5/mayu3.png" x=-306 y=31  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu3.png" x=-344 y=214  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me2.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me2.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[elsif exp="f.kaikan_now >= 110 && f.kaikan_now < 160"]
[汗 storage="scene5/ase1.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[汗 storage="scene5/ase1.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[眉 storage="scene5/mayu3.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu3.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me7.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me7.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[elsif exp="f.kaikan_now >= 160 && f.kaikan_now < 210"]
[汗 storage="scene5/ase1.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[汗 storage="scene5/ase1.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[眉 storage="scene5/mayu1.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu1.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me1.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me1.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[elsif exp="f.kaikan_now >= 210 && f.kaikan_now < 260"]
[汗 storage="scene5/ase2.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[汗 storage="scene5/ase3.png" cond="f.S5進行 == 4"  ]
[眉 storage="scene5/mayu3.png" x=-302 y=37  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu3.png" x=-340 y=220  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me8.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me8.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[elsif exp="f.kaikan_now >= 260 && f.kaikan_now < 310"]
[汗 storage="scene5/ase2.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[汗 storage="scene5/ase3.png" cond="f.S5進行 == 4"  ]
[眉 storage="scene5/mayu3.png" x=-304 y=34  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu3.png" x=-342 y=217  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me9.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me9.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[elsif exp="f.kaikan_now >= 310"]
[汗 storage="scene5/ase2.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[汗 storage="scene5/ase3.png" cond="f.S5進行 == 4"  ]
[眉 storage="scene5/mayu3.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[眉 storage="scene5/mayu3.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[目 storage="scene5/me1.png" x=-310 y=25  cond="f.S5進行 == 3"  ]
[目 storage="scene5/me1.png" x=-348 y=208  cond="f.S5進行 == 4"  ]
[endif]
[_tb_end_tyrano_code]

[return  ]
*フェラ台詞

[tb_start_tyrano_code]
[if exp="f.S5エロ台詞[1] == 0 && f.kaikan_now >= 10 && f.kaikan_now < 60"]
[eval exp="f.S5エロ台詞[1] = f.S5エロ台詞[1] + 1"]
[tb_show_message_window  ]
[playse storage="niina398.ogg"]
[にぃな]「嗯……　　嗯……嗯……　　嗯……」[改ページ]
[僕]「啊！[ハート]」[改ページ]

[elsif exp="f.S5エロ台詞[1] == 1 && f.kaikan_now >= 60 && f.kaikan_now < 110"]
[eval exp="f.S5エロ台詞[1] = f.S5エロ台詞[1] + 1"]
[tb_show_message_window  ]
[playse storage="niina399.ogg"]
[にぃな]「啾唔　啾唔[ハート]啜噜噜　啜噜[ハート]噜」[ハート][ハート][改ページ]

[elsif exp="f.S5エロ台詞[1] == 2 && f.kaikan_now >= 110 && f.kaikan_now < 160"]
[eval exp="f.S5エロ台詞[1] = f.S5エロ台詞[1] + 1"]
[tb_show_message_window  ]
[playse storage="niina400.ogg"]
[にぃな]「啵啪　啵啪[ハート]啵噗　啵噗」[ハート][ハート][ハート][改ページ]

[elsif exp="f.S5エロ台詞[1] == 3 && f.kaikan_now >= 160 && f.kaikan_now < 210"]
[eval exp="f.S5エロ台詞[1] = f.S5エロ台詞[1] + 1"]
[tb_show_message_window  ]
[playse storage="niina401.ogg"]
[にぃな]「咂啪　咂啪[ハート]咂噜　咂噜」[ハート][ハート][ハート][改ページ]

[elsif exp="f.S5エロ台詞[1] == 4 && f.kaikan_now >= 210 && f.kaikan_now < 260"]
[eval exp="f.S5エロ台詞[1] = f.S5エロ台詞[1] + 1"]
[tb_show_message_window  ]
[playse storage="niina402.ogg"]
[にぃな]「咂噗　咂噗[ハート]咂啵　咂啵」[ハート][ハート][ハート][改ページ]

[elsif exp="f.S5エロ台詞[1] == 5 && f.kaikan_now >= 260 && f.kaikan_now < 310"]
[eval exp="f.S5エロ台詞[1] = f.S5エロ台詞[1] + 1"]
[tb_show_message_window  ]
[playse storage="niina403.ogg"]
[にぃな]「啾～～！　啾～～！啾～～！　啾～～！」[改ページ]
[endif]
[_tb_end_tyrano_code]

[return  ]
*フェラ開始

[tb_start_tyrano_code]
[眉 storage="scene5/mayu3.png" x=-310 y=25  ]
[目 storage="scene5/me1.png" x=-310 y=25  ]
[絵変更]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「好嘞，那就给我把鸡鸡深深地吞到喉咙里去吧～」[改ページ]
[playse storage="niina404.ogg"]
[にぃな]「嗯、嗯……」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
[return  ]

*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;靴下
[下着 storage="scene5/socks4b.png" cond="f.S5脱がす[4] < 1 && f.S5進行 == 4"]
[下着 storage="scene5/socks4a.png" cond="f.S5脱がす[4] < 1 && f.S5進行 == 3"]
[下着 storage="scene5/socks1.png" cond="f.S5脱がす[4] < 1 && f.S5進行 < 3"]

;パンツ
[下着 storage="scene5/pantu4b.png" cond="f.S5脱がす[3] < 1 && f.S5脱がす[2] == 1 && f.S5進行 == 4"]
[下着 storage="scene5/pantu4a.png" cond="f.S5脱がす[3] < 1 && f.S5脱がす[2] == 1 && f.S5進行 == 3"]
[下着 storage="scene5/pantu1.png" cond="f.S5脱がす[3] < 1 && f.S5脱がす[2] == 1 && f.S5進行 < 3"]

;スカート
[下着 storage="scene5/sukato4b.png" cond="f.S5脱がす[2] < 1 && f.S5進行 == 4"]
[下着 storage="scene5/sukato4a.png" cond="f.S5脱がす[2] < 1 && f.S5進行 == 3"]
[下着 storage="scene5/sukato1.png" cond="f.S5脱がす[2] < 1 && f.S5進行 <= 2"]

;ブラ
[下着 storage="scene5/bura4b.png" cond="f.S5脱がす[1] < 1 && f.S5脱がす[0] == 1 && f.S5進行 == 4"]
[下着 storage="scene5/bura4a.png" cond="f.S5脱がす[1] < 1 && f.S5脱がす[0] == 1 && f.S5進行 == 3"]
[下着 storage="scene5/bura1.png" cond="f.S5脱がす[1] < 1 && f.S5脱がす[0] == 1 && f.S5進行 < 3"]

;服
[下着 storage="scene5/fuku4b.png" cond="f.S5脱がす[0] < 1 && f.S5進行 == 4"]
[下着 storage="scene5/fuku4a.png" cond="f.S5脱がす[0] < 1 && f.S5進行 == 3"]
[下着 storage="scene5/fuku2.png" cond="f.S5脱がす[0] < 1 && f.S5進行 == 2"]
[下着 storage="scene5/fuku1.png" cond="f.S5脱がす[0] < 1 && f.S5進行 <= 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene5/hoho.png" x=-310 y=25 cond="f.S5進行 == 3"]
[頬 storage="scene5/hoho.png" x=-348 y=208 cond="f.S5進行 == 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene5/karada4b.png" cond="f.S5進行 == 4"]
[体 storage="scene5/karada4a.png" cond="f.S5進行 == 3"]
[体 storage="scene5/karada2.png" cond="f.S5進行 == 1"]
[体 storage="scene5/karada1.png" cond="f.S5進行 == 0"]
[_tb_end_tyrano_code]

[return  ]
