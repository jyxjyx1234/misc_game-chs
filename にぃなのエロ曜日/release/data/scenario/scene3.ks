[_tb_system_call storage=system/_scene3.ks]

*scene3

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン3変数リセット]
[if exp="f.kaisou == 1"]
[脱ぎ初期化]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*たくし上げ

[cm  ]
[tb_start_text mode=4 ]
[僕]「这次让我坐在妮娜前面吧～」[改ページ]
[playse storage="niina058.ogg"]
[にぃな]「嗯、嗯，倒也不是不行啦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="220"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ3"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ3"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="500"  loop="true"  storage="2.ogg"  ]
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
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"  ]
[選択画像  graphic="sentaku/fuku.png"  target="*服見る"   cond="f.S3脱がす[0] < 1" ]
;[選択画像  graphic="sentaku/bura.png"  target="*ブラ見る"  cond="f.S3脱がす[1] < 1 && f.S3脱がす[0] >= 3" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート見る"   cond="f.S3脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る"  cond="f.S3進行 == 1" ]
[選択画像  graphic="sentaku/wareme.png"  target="*ワレメ見る"  cond="f.S3進行 >= 3" ]
[選択画像  graphic="sentaku/asi.png"  target="*脚見る"   cond="f.S3脱がす[4] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]

[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S3脱がす[0] < 3" ]
;[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S3脱がす[1] < 1 && f.S3脱がす[0] >= 3" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート捲る" cond="f.S3脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす"   cond="f.S3脱がす[3] < 2 && f.S3脱がす[2] >= 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S3脱がす[4] < 1" ]
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
[clickable_map  visible=false  graphic=scene3/S3clickable1a.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 0 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable2a.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 1 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable3a.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 2 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable4a.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 >= 3 && f.kaisou == null"   ]

[clickable_map  visible=false  graphic=scene3/S3clickable1b.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 0 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable2b.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 1 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable3b.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 2 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable4b.png storage=scene3.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 >= 3 && f.kaisou == 1"   ]
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
[jump  target="*服触る"]
[elsif exp="clickable_map.click=='00FF00'"]
[jump  target="*スカート触る"]
[elsif exp="clickable_map.click=='00FFFF'"]
[jump  target="*パンツ触る" cond="f.S3進行 < 3" ]
[jump  target="*ワレメ触る" cond="f.S3進行 >= 3" ]
[elsif exp="clickable_map.click=='0000FF'"]
[jump  target="*脚触る"]
[elsif exp="clickable_map.click=='FF00FF'"]
[call  target="*男消去" cond="f.S3進行 == 2" ]
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

[cm  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S3進行 == 0"]
[call  target="*話す会話1"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S3進行 == 1"]
[call  target="*話す会話2"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S3進行 == 3"]
[call  target="*話す会話3"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S3進行 == 4"]
[call  target="*話す会話4"]
;表情スキップ触るで0
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す会話1

[tb_start_text mode=4 ]
[僕]「哦～ 这样的话妮娜反而更高了呢」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina059.ogg"]
[にぃな]「还不是因为哥哥你坐着嘛」[改ページ]
[僕]「真不错啊，这种冷淡的回应。让我心跳不已呢」[改ページ]
[_tb_end_text]

[return  ]
*話す会話2

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina060.ogg"]
[にぃな]「呐呐，哥哥也喜欢内裤吗？」[改ページ]
[僕]「当然啦，这世上会有讨厌女孩子内裤的男人吗～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png" x=6 y=6]
[目 storage="scene3/me9.png"]
[口 storage="scene3/kuti9.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina061.ogg"]
[にぃな]「啊哈哈，所以男生才会去掀裙子呀」[改ページ]
[_tb_end_text]

[return  ]
*話す会話3

[tb_start_text mode=4 ]
[僕]「啊啊，超可爱的。妮娜的这里」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina062.ogg"]
[にぃな]「可爱？ 这种地方只是稍微裂开了一点而已呀？」[改ページ]
[僕]「对男人来说这个肉缝酱看起来就是可爱嘛」[改ページ]
[playse storage="niina063.ogg"]
[にぃな]「哼……」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4

[tb_start_tyrano_code]
[if exp="tf.表情スキップ >= 2 && f.S3エロ台詞 == 0 || tf.表情スキップ != 1 && f.S3エロ台詞 == 1 "]
[眉 storage="scene3/mayu2.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[elsif exp="tf.表情スキップ >= 2 && f.S3エロ台詞 >= 2"]
[eval exp="tf.表情スキップ = 0"]
[call  target="*エロ表情"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 < 2"]
[call target="*話す会話4a"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S3エロ台詞 == 2"]
[call target="*話す会話4b"]
[elsif exp="f.S3エロ台詞 == 3"]
[call target="*話す会話4c"]
[elsif exp="f.S3エロ台詞 == 4"]
[call target="*話す会話4d"]
[elsif exp="f.S3エロ台詞 == 5"]
[call target="*話す会話4e"]
[elsif exp="f.S3エロ台詞 == 6"]
[call target="*話す会話4f"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す会話4a

[tb_start_text mode=4 ]
[playse storage="niina064.ogg"]
[にぃな]「真、真的只是稍微一下下啦」[改ページ]
[僕]「嗯，用手指戳戳的程度」[改ページ]

[_tb_end_text]

[return  ]
*話す会話4b

[tb_start_text mode=4 ]
[playse storage="niina065.ogg"]
[にぃな]「真是的，完全不止稍微一下嘛」[改ページ]
[僕]「是吗？错觉错觉啦」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4c

[tb_start_text mode=4 ]
[playse storage="niina066.ogg"]
[にぃな]「差不多该适可而止了，很丢人的说……」[改ページ]
[僕]「别～这么说嘛」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4d

[tb_start_text mode=4 ]
[playse storage="niina067.ogg"]
[にぃな]「差、差不多该结束了吧，这个」[改ページ]
[僕]「拜托了，再稍微一会儿就好！」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4e

[tb_start_text mode=4 ]
[僕]「看～啊，沿着光滑的一条线慢慢慢慢……」[改ページ]
[playse storage="niina068.ogg"]
[にぃな]「嗯……」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4f

[tb_start_text mode=4 ]
[僕]「怎么样？肉缝酱舒服吗？」[改ページ]
[playse storage="niina069.ogg"]
[にぃな]「没……」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る2"  cond="f.S3進行 >= 3"]
[call  target="*にぃな見る1"  cond="f.S3進行 <= 2"]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_text mode=4 ]
[if exp="f.S3にぃな == 0 || f.S3にぃな == 3 && f.ランダム == 1"]
[eval exp="f.S3にぃな = f.S3にぃな + 1"  cond="f.S3にぃな　< 3"  ]
[僕]（嘿嘿，妮娜酱正从上面看着呢……有点开心）[改ページ]
[elsif exp="f.S3にぃな == 1 || f.S3にぃな == 3 && f.ランダム == 2"]
[eval exp="f.S3にぃな = f.S3にぃな + 1"  cond="f.S3にぃな　< 3"  ]
[僕]（像这样被年纪小的女孩子注视还是第一次呢）[改ページ]
[elsif exp="f.S3にぃな == 2 || f.S3にぃな == 3 && f.ランダム == 3"]
[eval exp="f.S3にぃな = f.S3にぃな + 1"  cond="f.S3にぃな　< 3"  ]
[僕]（有妹妹的话，就是这～种感觉吗？）[改ページ]
[endif]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 >= 0 && f.S3エロ台詞 < 5"]
[call target="*にぃな見る2a"]
[elsif exp="f.S3エロ台詞 >= 5"]
[call target="*にぃな見る2b"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*にぃな見る2a

[tb_start_text mode=4 ]
[僕]（唔、好像有点不满……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2b

[tb_start_text mode=4 ]
[僕]（嘻嘻、腿在扭扭捏捏呢）[改ページ]
[_tb_end_text]

[return  ]
*服見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（妮娜酱的衣服……好凉快的样子）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*ブラ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（清纯的少女款胸罩......真是撩动萝莉控的心弦啊）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*おっぱい見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（抬头望去，眼前是微微隆起的小胸部......好幸福）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*スカート見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(2-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="2"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3スカート[0] == 0 || f.S3スカート[0] == 2 && f.ランダム == 1"]
[eval exp="f.S3スカート[0] = f.S3スカート[0] + 1"  cond="f.S3スカート[0]　< 2"  ]
[僕]（粉红色短裙......很有女孩子气真不错呢）[改ページ]
[elsif exp="f.S3スカート[0] == 1 || f.S3スカート[0] == 2 && f.ランダム == 2"]
[eval exp="f.S3スカート[0] = f.S3スカート[0] + 1"  cond="f.S3スカート[0]　< 2"  ]
[僕]（啊啊，果然看到短裙就会越来越想掀起来）[改ページ]
[僕]（而现在正是......『那个时刻』！）[改ページ]
[else]
[僕]（哦哦，这就是工口游戏里著名的掀裙子场景！）[改ページ]
[endif]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*パンツ見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3パンツ[0] == 0 || f.S3パンツ[0] == 3 && f.ランダム == 1"]
[eval exp="f.S3パンツ[0] = f.S3パンツ[0] + 1"  cond="f.S3パンツ[0]　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[僕]（啊啊，真棒......健康的白内裤。果然〇〇生就该这样）[改ページ]
[elsif exp="f.S3パンツ[0] == 1 || f.S3パンツ[0] == 3 && f.ランダム == 2"]
[eval exp="f.S3パンツ[0] = f.S3パンツ[0] + 1"  cond="f.S3パンツ[0]　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3" cond="f.kaikan_now < 10"]
[僕]（呵呵，还系着小小的蝴蝶结，超级可爱）[改ページ]
[elsif exp="f.S3パンツ[0] == 2 || f.S3パンツ[0] == 3 && f.ランダム == 3"]
[eval exp="f.S3パンツ[0] = f.S3パンツ[0] + 1"  cond="f.S3パンツ[0]　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 4" cond="f.kaikan_now < 10"]
[僕]（啊、内裤中间隐约勒出肉缝的痕迹......）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ3"  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*ワレメ見る

[tb_start_tyrano_code]
[call  target="*男消去" cond="f.S3進行 == 4" ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3ワレメ[0] == 0 || f.S3ワレメ[0] == 3 && f.ランダム == 1"]
[eval exp="f.S3ワレメ[0] = f.S3ワレメ[0] + 1"  cond="f.S3ワレメ[0]　< 3"  ]
[僕]（哈啊、一直想看到的女孩的股间线条就在眼前......）[改ページ]
[elsif exp="f.S3ワレメ[0] == 1 || f.S3ワレメ[0] == 3 && f.ランダム == 2"]
[eval exp="f.S3ワレメ[0] = f.S3ワレメ[0] + 1"  cond="f.S3ワレメ[0]　< 3"  ]
[僕]（肉缝形状好清晰。妮娜是上翘型的吗？）[改ページ]
[elsif exp="f.S3ワレメ[0] == 2 || f.S3ワレメ[0] == 3 && f.ランダム == 3"]
[eval exp="f.S3ワレメ[0] = f.S3ワレメ[0] + 1"  cond="f.S3ワレメ[0]　< 3"  ]
[僕]（光滑的一条线，真的好漂亮啊）[改ページ]
[endif]
[_tb_end_text]

[tb_start_tyrano_code]
[call target="*男出現" cond="f.S3進行 == 4"]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*脚見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3脚[0] == 0 || f.S3脚[0] == 3 && f.ランダム == 1"]
[eval exp="f.S3脚[0] = f.S3脚[0] + 1"  cond="f.S3脚[0]　< 3"  ]
[僕]（穿着过膝袜的女孩美腿，总是让人忍不住想看呢）[改ページ]
[elsif exp="f.S3脚[0] == 1 || f.S3脚[0] == 3 && f.ランダム == 2"]
[eval exp="f.S3脚[0] = f.S3脚[0] + 1"  cond="f.S3脚[0]　< 3"  ]
[僕]（从裙摆间若隐若现的雪白大腿……太棒了）[改ページ]
[elsif exp="f.S3脚[0] == 2 || f.S3脚[0] == 3 && f.ランダム == 3"]
[eval exp="f.S3脚[0] = f.S3脚[0] + 1"  cond="f.S3脚[0]　< 3"  ]
[僕]（说起来那个部位，为什么叫绝对领域呢？）[改ページ]
[endif]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*見る選択肢"]
[_tb_end_tyrano_code]

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
[服脱がす1 mayu1=scene3/mayu3.png mayux1=4 mayuy1=4 me1=scene3/me2.png kuti1=scene3/kuti7.png mayu2=scene3/mayu3.png me2=scene3/me7.png kuti2=scene3/kuti1.png mayu3=scene3/mayu1.png me3=scene3/me1.png kuti3=scene3/kuti7.png mayu4=scene3/mayu2.png me4=scene3/me2.png kuti4=scene3/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*服脱がす2

[tb_start_tyrano_code]
[服脱がす2 mayu1=scene3/mayu2.png mayux1=4 mayuy1=4 me1=scene3/me2.png kuti1=scene3/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*スカート捲る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那么，接下来要自己掀裙子咯～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina070.ogg"]
[にぃな]「诶～什么呀……那样做的话，妮娜的内裤会被看到的啦」[改ページ]
[僕]「不……其实我就是想看看妮娜的内裤，才这么说的」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina071.ogg"]
[にぃな]「哼……被这么直白地说出来，反而有点想帮忙了呢」[改ページ]
[playse storage="niina072.ogg"]
[にぃな]「好～呀，就让你们看看吧。妮娜的内裤」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[2] = 1"]
[eval exp="f.S3進行 = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti4.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina073.ogg"]
[にぃな]「嘿咻」[改ページ]
[僕]「哦哦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 22"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S3脱がす[3]==0 && f.kaikan_now<10"]
[call  target="*パンツ脱がす会話1"]
[elsif exp="f.S3脱がす[3]==0 && f.kaikan_now>=10"]
[call  target="*パンツ脱がす会話2"]
[clearvar exp="tf.表情スキップ"]
[elsif exp="f.S3脱がす[3]==1 && f.kaikan_now<20"]
[call  target="*パンツ脱がす会話3"]
[eval exp="tf.表情スキップ = 23"]
[elsif exp="f.S3脱がす[3]==1 && f.kaikan_now>=20"]
[call  target="*パンツ脱がす会話4"]
[eval exp="tf.表情スキップ = 23"]
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
[僕]（那么，差不多该……）[改ページ]
;[僕]（んじゃ、そろそろ……）[改ページ]
[僕]「那个，下面的也脱掉可以吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina074.ogg"]
[にぃな]「……下面的？」[改ページ]
[僕]「就是……裙子下面的」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=-4 y=-4]
[目 storage="scene3/me3.png"]
[口 storage="scene3/kuti8.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina075.ogg"]
[にぃな]「哎哎！？不行！！绝对不行！！」[改ページ]
[僕]「求你了！那边也想看看嘛」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina076.ogg"]
[にぃな]「可是，内裤很丢人～啦」[改ページ]
[僕]（嗯～、不行吗……看来得先多讨好妮娜才行）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[3] = 1"]
[_tb_end_tyrano_code]

[return  ]
*パンツ脱がす会話3

[tb_start_text mode=4 ]
[僕]「呐、内裤也拜托了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 23"]
[eval exp="tf.表情スキップ = 23"]
[眉 storage="scene3/mayu2.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina077.ogg"]
[にぃな]「内裤太丢人了绝对不要」[改ページ]
[僕]（嗯～、不行吗……看来得先多讨好妮娜才行）[改ページ]
[_tb_end_text]

[return  ]
*パンツ脱がす会話4

[tb_start_text mode=4 ]
[僕]（那么，既然已经讨好了妮娜……）[改ページ]
;[僕]（では、にぃなちゃんのご機嫌を[r]取ったところで……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「呐、没～关系嘛，稍微丢人一点也没什么。现在可是在做H的事呢」[改ページ]
[僕]「其实心里想着『可以哦』对吧？刚才这么近都给我看内裤了」[改ページ]
[僕]「那就干脆点……呐？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina078.ogg"]
[にぃな]「可、可是啊……」[改ページ]
[僕]（哦、在纠结在纠结。这种氛围的话……）[改ページ]
[僕]「好啦，来～把内裤脱掉脱掉～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[3] = 2"]
[eval exp="f.S3進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]唰啦唰啦唰啦……[改ページ]
[playse storage="niina079.ogg"]
[にぃな]「啊……」[改ページ]
[僕]「呼呼，这边也看～到啰」[改ページ]
[playse storage="niina080.ogg"]
[にぃな]「真、真是的……」[改ページ]
[_tb_end_text]

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
[靴下脱がす1 mayu1=scene3/mayu3.png mayux1=4 mayuy1=4 me1=scene3/me2.png kuti1=scene3/kuti6.png mayu2=scene3/mayu1.png me2=scene3/me7.png kuti2=scene3/kuti1.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*靴下脱がす2

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*頭撫でる

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（呜～嗯，手够不到啊。明明想摸摸你的）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*服触る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(2-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="2"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3服[1] == 0 || f.S3服[1] == 2 && f.ランダム == 1"]
[eval exp="f.S3服[1] = 1"  cond="f.S3服[1] == 0"]
[僕]（不～行，现在想摸的可不是那里啊）[改ページ]
[elsif exp="f.S3服[1] == 1 || f.S3服[1] == 2 && f.ランダム == 2"]
[eval exp="f.S3服[1] = 2"  cond="f.S3服[1] == 1"]
[僕]（要是想揉奶子的话，还得再拜托妮娜才行）[改ページ]
[endif]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*スカート触る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（要是用轻～佻的态度说「碰一下！」的话……嘛，肯定会生气的吧）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*脚触る

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 30" cond="f.S3脱がす[3] >= 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*脚触る4"  cond="f.S3脚[1] == 1 && f.S3脱がす[3] >= 1 && f.S3進行 == 2"]
[jump  target="*脚触る3"  cond="f.S3脚[1] == 1 && f.S3脱がす[3] >= 1 && f.S3進行 != 2"]
[jump  target="*脚触る2"  cond="f.S3脚[1] == 0 && f.S3脱がす[3] >= 1"]
[jump  target="*脚触る1"  cond="f.S3脱がす[3] < 1"]
[_tb_end_tyrano_code]

*脚触る1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（好想摸摸妮娜雪白的大腿啊……）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
*脚触る2

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（要讨好妮娜的方法……好，这里就用传统拍马屁战术吧）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脚[1] = 1"]
[eval exp="f.S3進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]摸摸～摸摸……摸摸～摸摸……[改ページ]
[playse storage="niina081.ogg"]
[にぃな]「啊～ 摸妮娜的腿了」[改ページ]
[僕]「因为实在太有魅力了嘛，妮娜的大腿」[改ページ]
[playse storage="niina082.ogg"]
[にぃな]「才、才没有呢。妮娜的腿还有点粗」[改ページ]
[僕]「这样才好呀，健康美。啊～ 光滑滑的，真的好漂亮」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina083.ogg"]
[にぃな]「嘿嘿，真的吗？」[改ページ]
[僕]（哼哼，看来她不讨厌这样啊）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
*脚触る3

[tb_start_tyrano_code]
[eval exp="f.S3進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
*脚触る4

[tb_start_tyrano_code]
[eval exp="f.S3進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[快感ランダム min=1 max=3 limit=20]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ3"  ]
[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti3.png"]
[free layer="0" page="back" name="otoko"]
[男 storage="scene3/otoko2b.png"]
[絵変更 time＝750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene3/otoko2a.png"]
[絵変更 time＝750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 20" ]
[jump  target="*領域復活"]
[endif]
[jump  target="*脚触る4" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*パンツ触る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（超想继续摸但要忍住……不能操之过急）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*ワレメ触る

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene3.ks"  target="*ワレメ触る2"  cond="f.S3ワレメ[1] == 1]
[jump  storage="scene3.ks"  target="*ワレメ触る1"  cond="f.S3ワレメ[1] == 0"]
[_tb_end_tyrano_code]

[s  ]
*ワレメ触る1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（好～嘞，那么接下来……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3ワレメ[1] = 1"  cond="f.S3ワレメ[1] == 0"]
[eval exp="f.S3進行 = 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me6.png"]
[口 storage="scene3/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]戳戳 戳[ハート]戳[ハート][改ページ]
[にぃな]「！！？？」[改ページ]
[僕]「哦～ 好厉害的水嫩」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu2.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina084.ogg"]
[にぃな]「等、等一下！你在摸哪里呀！」[改ページ]
[僕]「妮娜酱的肉缝酱」[改ページ]
[playse storage="niina085.ogg"]
[にぃな]「那边当然不行啦！」[改ページ]
[僕]「有什么关系嘛，反正都已经碰到了。呐？呐？拜托啦！就一下下」[改ページ]
[playse storage="niina086.ogg"]
[にぃな]「真、真是的，就一下下哦」[改ページ]
[僕]「太好啦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*ワレメ触る2

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=220]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ3"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene3/otoko1b.png"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*エロ表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 == 0 && f.kaikan_now >= 21 || f.S3エロ台詞 == 1 && f.kaikan_now >= 50 || f.S3エロ台詞 == 2 && f.kaikan_now >= 80 || f.S3エロ台詞 == 3 && f.kaikan_now >= 110 || f.S3エロ台詞 == 4 && f.kaikan_now >= 140 || f.S3エロ台詞 == 5 && f.kaikan_now >= 180 || f.S3エロ台詞 == 6 && f.kaikan_now >= 220"  ]
[call  target="*エロ台詞"]
[jump  target="*ワレメ触る3"  cond="f.kaikan_now >= 220"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*ワレメ触る2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*ワレメ触る3

[tb_start_text mode=4 ]
[僕]（哦、刚才那是……）[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina087.ogg"]
[にぃな]「已、已经结束了啦」[改ページ]
[僕]「嗯、嗯」[改ページ]
[僕]（她应该没有……高潮吧？）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S3クリア = 1"]
[シーン3変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene0.ks"  target=""  ]
[s  ]
*エロ表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now == 20"]
[眉 storage="scene3/mayu2.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[elsif exp="f.kaikan_now >= 21 && f.kaikan_now < 50"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti3.png"]
[elsif exp="f.kaikan_now >= 50 && f.kaikan_now < 80"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti1.png"]
[elsif exp="f.kaikan_now >= 80 && f.kaikan_now < 110"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me5.png"]
[口 storage="scene3/kuti6.png"]
[elsif exp="f.kaikan_now >= 110 && f.kaikan_now < 140"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti7.png"]
[elsif exp="f.kaikan_now >= 140 && f.kaikan_now < 180"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me5.png"]
[口 storage="scene3/kuti3.png"]
[elsif exp="f.kaikan_now >= 180 && f.kaikan_now < 220"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti1.png"]
[elsif exp="f.kaikan_now >= 220"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=8 y=8]
[目 storage="scene3/me8.png"]
[口 storage="scene3/kuti2.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*エロ台詞

[tb_start_tyrano_code]

[if exp="f.S3エロ台詞 == 0 && f.kaikan_now >= 21 && f.kaikan_now < 50"]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 1 && f.kaikan_now >= 50 && f.kaikan_now < 80"]
[tb_show_message_window  ]
[playse storage="niina088.ogg"]
[にぃな]「……果然」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 2 && f.kaikan_now >= 80 && f.kaikan_now < 110"]
[tb_show_message_window  ]
[playse storage="niina089.ogg"]
[にぃな]「太、太久了……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 3 && f.kaikan_now >= 110 && f.kaikan_now < 140"]
[tb_show_message_window  ]
[playse storage="niina090.ogg"]
[にぃな]「那、那个」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 4 && f.kaikan_now >= 140 && f.kaikan_now < 180"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 5 && f.kaikan_now >= 180 && f.kaikan_now < 220"]
[tb_show_message_window  ]
[playse storage="niina091.ogg"]
[にぃな]「哈啊……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 6 && f.kaikan_now >= 220"]
[tb_show_message_window  ]
[playse storage="niina092.ogg"]
[にぃな]「……嗯♡[ハート]」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]
[endif]

;[tb_hide_message_window  ]
[_tb_end_tyrano_code]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene3/otoko2a.png" cond="f.S3進行 == 2"]
[男 storage="scene3/otoko1a.png" cond="f.S3進行 == 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
[下着 storage="scene3/bura1.png" cond="f.S3脱がす[1] < 1 && f.S3脱がす[0] >= 3"]
[下着 storage="scene3/pantu1.png" cond="f.S3脱がす[3] <= 1 && f.S3脱がす[2] >= 1"]
[下着 storage="scene3/fuku1.png" cond="f.S3脱がす[0] < 3"]
[下着 storage="scene3/sukato1.png" cond="f.S3脱がす[2] == 0"]
[下着 storage="scene3/sukato2a.png" cond="f.S3脱がす[2] == 1 && f.S3脱がす[0] == 0 && f.S3脱がす[3] <= 1"]
[下着 storage="scene3/sukato2b.png" cond="f.S3脱がす[2] == 1 && f.S3脱がす[0] == 0 && f.S3脱がす[3] == 2"]
[下着 storage="scene3/socks1.png" cond="f.S3脱がす[4] < 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[if exp="f.S3進行 >= 3"]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene3/hoho.png"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[if exp="f.S3進行 >= 1 && f.S3脱がす[2] == 1"]
[体 storage="scene3/karada2.png"]
[else]
[体 storage="scene3/karada1.png"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S3進行 = 1" cond="f.S3進行 == 2"]
[_tb_end_tyrano_code]

[return  ]
*男出現

[tb_start_tyrano_code]
[backlay]
[男 storage="scene3/otoko1a.png"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[return  ]
