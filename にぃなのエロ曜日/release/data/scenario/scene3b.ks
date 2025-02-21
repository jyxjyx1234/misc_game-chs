[_tb_system_call storage=system/_scene3b.ks]

*scene3b

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン3変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*たくし上げ2回目

[cm  ]
[tb_start_text mode=4 ]
[僕]「那么，来我前面吧。」[改ページ]
[playse storage="niina405.ogg"]
[にぃな]「好～的」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="300"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ3b"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ3b"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti3.png"]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="2.ogg"  ]
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
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る" ]
[選択画像  graphic="sentaku/fuku.png"  target="*服見る"   cond="f.S3脱がす[0] < 1"]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ見る"  cond="f.S3脱がす[1] < 1 && f.S3脱がす[0] >= 1"]
[選択画像  graphic="sentaku/oppai.png"  target="*おっぱい見る"  cond="f.S3脱がす[1] == 1"]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート見る"   cond="f.S3脱がす[2] <= 1"]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る"  cond="f.S3進行 == 1"]
[選択画像  graphic="sentaku/wareme.png"  target="*ワレメ見る"  cond="f.S3進行 >= 3"]
[選択画像  graphic="sentaku/asi.png"  target="*脚見る"   cond="f.S3脱がす[4] < 1"]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活" ]
[選択出現2]
[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]

[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S3脱がす[0] < 1"]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S3脱がす[1] < 1 && f.S3脱がす[0] >= 1"]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート選択肢" cond="f.S3脱がす[2] < 1"]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす"   cond="f.S3脱がす[3] <= 1 && f.S3脱がす[2] >= 1"]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S3脱がす[4] < 1"]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活" ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*スカート選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/mekuru.png"  target="*スカート捲る"  ]
[選択画像  graphic="sentaku/nugasu.png"  target="*スカート脱がす"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
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
[clickable_map  visible=false  graphic=scene3/S3clickable1a.png storage=scene3b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 0 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable2a.png storage=scene3b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 1 && f.kaisou == null || f.S3進行 == 2 && f.kaisou == null"]
[clickable_map  visible=false  graphic=scene3/S3clickable4a.png storage=scene3b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 >= 3 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable1b.png storage=scene3b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 0 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene3/S3clickable2b.png storage=scene3b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 == 1 && f.kaisou == 1 || f.S3進行 == 2 && f.kaisou == 1"]
[clickable_map  visible=false  graphic=scene3/S3clickable4b.png storage=scene3b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S3進行 >= 3 && f.kaisou == 1"   ]
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
[jump  target="*パンツ触る" cond="f.S3進行 < 3"]
[jump  target="*ワレメ触る" cond="f.S3進行 >= 3"]
[elsif exp="clickable_map.click=='0000FF'"]
[jump  target="*脚触る"]
[elsif exp="clickable_map.click=='FF00FF'"]
[call target="*男消去" cond="f.S3進行 == 2"]
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
[call target="*話す会話1"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S3進行 == 1"]
[call target="*話す会話2"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S3進行 == 3"]
[call target="*話す会話3"]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S3進行 == 4"]
[call target="*話す会話4"]
;表情スキップ触るで0
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す会話1

[tb_start_text mode=4 ]
[僕]「啊～真想要个妮娜这样的妹妹啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene3/mayu1.png" x=6 y=6]
[目 storage="scene3/me9.png"]
[口 storage="scene3/kuti9.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina406.ogg"]
[にぃな]「让妮娜当哥哥的妹妹？啊哈哈，真是的」[改ページ]
[僕]（太差劲了！）[改ページ]
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
[playse storage="niina407.ogg"]
[にぃな]「呐～还这么想看内裤呀？」[改ページ]
[僕]「为、为什么要说这么悲伤的话！？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina408.ogg"]
[にぃな]「诶～可是哥哥早就看过妮娜的裸体了嘛」[改ページ]
[僕]「内裤可是完全不同的东西啊！！」[改ページ]
[_tb_end_text]

[return  ]
*話す会話3

[tb_start_text mode=4 ]
[僕]「哈啊……[ハート]不管看几次都超可爱的光滑滑肉缝啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti4.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina409.ogg"]
[にぃな]「哇～哥哥、笑得超色眯眯的」[改ページ]
[僕]「当然会这样啊。因为实在太开心了嘛」[改ページ]
[playse storage="niina410.ogg"]
[にぃな]「这个闷声色鬼」[改ページ]
[僕]「才不是闷声」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 == 0"]
[call target="*話す会話4a"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S3エロ台詞 == 1"]
[call target="*話す会話4b"]
[elsif exp="f.S3エロ台詞 == 2"]
[call target="*話す会話4c"]
[elsif exp="f.S3エロ台詞 == 3"]
[call target="*話す会話4d"]
[elsif exp="f.S3エロ台詞 == 4"]
[call target="*話す会話4e"]
[elsif exp="f.S3エロ台詞 == 5"]
[call target="*話す会話4f"]
[elsif exp="f.S3エロ台詞 == 6"]
[call target="*話す会話4g"]
[elsif exp="f.S3エロ台詞 == 7"]
[call target="*話す会話4h"]
[elsif exp="f.S3エロ台詞 == 8"]
[call target="*話す会話4i"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す会話4a

[tb_start_tyrano_code]
[if exp="tf.表情スキップ >= 2"]
[call target="*エロ表情"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「啊啊，太棒了。妮娜的这里，真的水嫩水嫩」[改ページ]
[playse storage="niina411.ogg"]
[にぃな]「别说得像在说我胖嘛……」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4b

[tb_start_text mode=4 ]
[playse storage="niina412.ogg"]
[にぃな]「嗯、总觉得有点痒痒的……」[改ページ]
[僕]「呵呵，摸得这么温柔让你急不可耐了吧」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4c

[tb_start_text mode=4 ]
[僕]「差不多该好好疼爱肉缝妹妹了吧？」[改ページ]
[にぃな]「……」[改ページ]
[エロ音1]……咕。[改ページ]
[_tb_end_text]

[return  ]
*話す会話4d

[tb_start_text mode=4 ]
[僕]「手指……插这么深？」[改ページ]
[playse storage="niina413.ogg"]
[にぃな]「嗯、就这个深度」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4e

[tb_start_text mode=4 ]
[僕]「看啊～让手指深深陷进肉缝最里面了哦」[改ページ]
[playse storage="niina414.ogg"]
[にぃな]「啊啊、哥哥的手指顶得好深……」[改ページ]
[_tb_end_text]

[return  ]
*話す会話4f

[tb_start_text mode=4 ]
[playse storage="niina415.ogg"]
[にぃな]「啊、腿自己抖起来了啦」[改ページ]
[僕]「今天肉缝妹妹抽搐得特别带劲吧」[改ページ]
[playse storage="niina416.ogg"]
[にぃな]「嗯啊」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す会話4g

[tb_start_text mode=4 ]
[僕]「呐、听见了吗？这咕啾咕啾的下流声音」[改ページ]
[playse storage="niina417.ogg"]
[にぃな]「啊　[ハート]啊　啊[ハート]　啊呀[ハート]　好丢[ハート]人啊[ハート]～」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す会話4h

[tb_start_text mode=4 ]
[僕]「看看啊，这个硬邦邦挺立着的小豆豆是啥呀？」[改ページ]
[playse storage="niina418.ogg"]
[にぃな]「啊啊啊[ハート]啊啊啊[ハート]啊、那[ハート]、那是[ハート]妮娜的阴蒂呀」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す会話4i

[tb_start_text mode=4 ]
[僕]「被我玩弄滑溜溜的肉缝太多次，已经要高潮了？」[改ページ]
[playse storage="niina419.ogg"]
[にぃな]「嗯～滑[ハート]溜溜的肉缝被哥哥玩弄太多次，妮娜已经要高潮了～」[ハート][改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call target="*にぃな見る2"  cond="f.S3進行 >= 3"]
[call target="*にぃな見る1"  cond="f.S3進行 <= 2"]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（嘿嘿，妮娜酱正从上面看着呢……有点开心）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 >= 0 && f.S3エロ台詞 < 1"]
[call target="*にぃな見る2a"]
[elsif exp="f.S3エロ台詞 >= 1 && f.S3エロ台詞 < 4"]
[call target="*にぃな見る2b"]
[elsif exp="f.S3エロ台詞 >= 4 && f.S3エロ台詞 < 7"]
[call target="*にぃな見る2c"]
[elsif exp="f.S3エロ台詞 >= 7"]
[call target="*にぃな見る2d"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*にぃな見る2a

[tb_start_text mode=4 ]
[僕]（害羞的妮娜酱……好可爱）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2b

[tb_start_text mode=4 ]
[僕]（嘿嘿，腿在扭来扭去……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2c

[tb_start_text mode=4 ]
[僕]（啊，看起来相当舒服的样子……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2d

[tb_start_text mode=4 ]
[僕]（脸蛋在发抖，再加把劲！）[改ページ]
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
[僕]（清纯的少女胸罩……真是激发萝莉控之心啊）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*おっぱい見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（抬头就能看到贫乳……真幸福）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*スカート見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3脱がす[2] == 0"]
[僕]（粉红色裙子……很少女很赞呢）[改ページ]
[else]
[僕]（哦哦、这就是工口游戏里著名的掀裙动作！）[改ページ]
[endif]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*パンツ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（健康的白色内裤……小蝴蝶结超可爱）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*ワレメ見る

[tb_start_tyrano_code]
[call target="*男消去" cond="f.S3進行 == 4"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 >= 0 && f.S3エロ台詞 < 4"]
[call target="*ワレメ見る2a"]
[elsif exp="f.S3エロ台詞 >= 4 && f.S3エロ台詞 < 6"]
[call target="*ワレメ見る2b"]
[elsif exp="f.S3エロ台詞 >= 6"]
[call target="*ワレメ見る2c"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call target="*男出現" cond="f.S3進行 == 4"]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
*ワレメ見る2a

[tb_start_text mode=4 ]
[僕]（光滑的一条线……真的好漂亮啊）[改ページ]
[_tb_end_text]

[return  ]
*ワレメ見る2b

[tb_start_text mode=4 ]
[僕]（肉缝都变红了……好色）[改ページ]
[_tb_end_text]

[return  ]
*ワレメ見る2c

[tb_start_text mode=4 ]
[僕]（已经黏糊糊的……洪水泛滥了）[改ページ]
[_tb_end_text]

[return  ]
*脚見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（穿着过膝袜的女孩腿，总会忍不住盯着看啊）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*見る選択肢"]
[_tb_end_tyrano_code]

[s  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[服脱がす4 mayu1=scene3/mayu3.png mayux1=4 mayuy1=4 me1=scene3/me2.png kuti1=scene3/kuti5.png cond="f.kaikan_now == 0"]
[服脱がす5 cond="f.kaikan_now > 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[0] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[ブラ脱がす1 mayu1=scene3/mayu3.png mayux1=8 mayuy1=8 me1=scene3/me8.png kuti1=scene3/kuti7.png cond="f.kaikan_now == 0"]
[ブラ脱がす2 cond="f.kaikan_now > 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*スカート捲る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「喂～把裙子掀起来」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina420.ogg"]
[にぃな]「嗯～……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[2] = 1"]
[eval exp="f.S3進行 = 1"]
[eval exp="tf.表情スキップ = 22"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti7.png"]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 time=1250]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina421.ogg"]
[にぃな]「嘿咻！」[改ページ]
[僕]「噢噢、假动作成功了呢」[改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「裙子、可以放下来吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti4.png"]

;[眉 storage="scene3/mayu3.png" x=4 y=4]
;[目 storage="scene3/me2.png"]
;[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina422.ogg"]
[にぃな]「哥哥你呀～嘴上这么说却总是马上让人家穿上呢」[改ページ]
[僕]「不管多少次都会脱掉......这才是男人的浪漫啊」[改ページ]
[playse storage="niina423.ogg"]
[にぃな]「哼嗯～奇怪的浪漫」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[2] = 2"]
[eval exp="f.S3進行 = 1"]
[eval exp="tf.表情スキップ = 22"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 visible=false time=1000]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call target="*パンツ脱がす会話1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす会話1

[cm  ]
[tb_start_text mode=4 ]
[僕]「来、今天也要把内裤脱光光」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[3] = 2"]
[eval exp="f.S3進行 = 3"]
[eval exp="tf.表情スキップ = 23"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti3.png"]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]唰啦唰啦唰啦......[ハート][改ページ]
[_tb_end_text]

[return  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[靴下脱がす2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S3脱がす[4] = 1"]
;[eval exp="tf.表情スキップ = 24"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call target="*服の状態"]
[絵変更 visible=false time=1000]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*頭撫でる

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（呜～嗯、手够不到啊。明明想好好抚摸的说）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*服触る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(2-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="2"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S3服[1] == 0 || f.S3服[1] == 2 && f.ランダム == 1"]
[eval exp="f.S3服[1] = 1"  cond="f.S3服[1] == 0"]
[僕]（不～行、现在想摸的不是那边哦）[改ページ]
[elsif exp="f.S3服[1] == 1 || f.S3服[1] == 2 && f.ランダム == 2"]
[eval exp="f.S3服[1] = 2"  cond="f.S3服[1] == 1"]
[僕]（想揉奶子的话、还得再拜托妮娜酱才行）[改ページ]
[endif]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*スカート触る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（那么～、裙子该怎么处理呢）[改ページ]

[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*脚触る

[tb_start_tyrano_code]
[call target="*脚触る1"  cond="f.S3脚[1] == 0"]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*脚触る1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（传统的奉承策略……已经不需要了呢）[改ページ]
[_tb_end_text]

[return  ]
*パンツ触る

[tb_start_tyrano_code]
[eval exp="f.S3進行 = 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me4.png"]
[口 storage="scene3/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]……戳戳、戳戳。[改ページ]
[playse storage="niina424.ogg"]
[にぃな]「啊……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina425.ogg"]
[にぃな]「别、别这样。呀～别碰那里、H」[改ページ]
[僕]「好好……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3進行 = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu1.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti3.png"]
[free layer="0" page="back" name="hoho" time="0"]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false time=1000]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*ワレメ触る

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*ワレメ触る2"  cond="f.S3ワレメ[1] == 1]
[jump  target="*ワレメ触る1"  cond="f.S3ワレメ[1] == 0"]
[_tb_end_tyrano_code]

[s  ]
*ワレメ触る1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「妮娜酱的这里……要摸下去咯」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina426.ogg"]
[にぃな]「请、请便……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S3ワレメ[1] = 1"  cond="f.S3ワレメ[1] == 0"]
[eval exp="f.S3進行 = 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti1.png"]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*ワレメ触る2

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=300]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ3b"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene3/otoko1b.png"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call target="*エロ表情"]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 == 0 && f.kaikan_now >= 30 || f.S3エロ台詞 == 1 && f.kaikan_now >= 60 || f.S3エロ台詞 == 2 && f.kaikan_now >= 90 || f.S3エロ台詞 == 3 && f.kaikan_now >= 120 || f.S3エロ台詞 == 4 && f.kaikan_now >= 150 || f.S3エロ台詞 == 5 && f.kaikan_now >= 180 || f.S3エロ台詞 == 6 && f.kaikan_now >= 220 || f.S3エロ台詞 == 7 && f.kaikan_now >= 260 || f.S3エロ台詞 == 8 && f.kaikan_now >= 300"  ]
[call  target="*エロ台詞"]
[jump  target="*ワレメ触る3"  cond="f.kaikan_now >= 300"]
[jump  target="*領域復活"]
[endif]
[jump  target="*ワレメ触る2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*ワレメ触る3

[tb_start_tyrano_code]
[eval exp="f.S3進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;[free layer="0" page="back" name="otoko" time="0"]
[汗 storage="scene3/ase2.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti7.png"]
[call target="*服の状態"]
[call target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「……要去了」[改ページ]
[playse storage="niina427.ogg"]
[にぃな]「哈啊哈啊、哈啊哈啊……真是的、不用每次都报告啦～」[改ページ]
[僕]「因为人家想说嘛」[改ページ]
[playse storage="niina428.ogg"]
[にぃな]「鬼～哥哥好坏哦」[改ページ]
[僕]「呵呵……再来一次吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene3/ase2.png"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina429.ogg"]
[にぃな]「……嗯」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S3クリア = 2"]
[シーン3変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene6b.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
*エロ表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me7.png"]
[口 storage="scene3/kuti1.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti7.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me5.png"]
[口 storage="scene3/kuti3.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 120"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me1.png"]
[口 storage="scene3/kuti4.png"]
[elsif exp="f.kaikan_now >= 120 && f.kaikan_now < 150"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me5.png"]
[口 storage="scene3/kuti7.png"]
[elsif exp="f.kaikan_now >= 150 && f.kaikan_now < 180"]
[汗 storage="scene3/ase1.png"]
[眉 storage="scene3/mayu3.png" x=4 y=4]
[目 storage="scene3/me2.png"]
[口 storage="scene3/kuti5.png"]
[elsif exp="f.kaikan_now >= 180 && f.kaikan_now < 220"]
[汗 storage="scene3/ase2.png"]
[眉 storage="scene3/mayu3.png" x=8 y=8]
[目 storage="scene3/me8.png"]
[口 storage="scene3/kuti9.png"]
[elsif exp="f.kaikan_now >= 220 && f.kaikan_now < 260"]
[汗 storage="scene3/ase2.png"]
[眉 storage="scene3/mayu3.png" x=-4 y=-4]
[目 storage="scene3/me6b.png"]
[口 storage="scene3/kuti8.png"]
[elsif exp="f.kaikan_now >= 260 && f.kaikan_now < 300"]
[汗 storage="scene3/ase2.png"]
[眉 storage="scene3/mayu3.png"]
[目 storage="scene3/me11b.png"]
[口 storage="scene3/kuti9.png"]
[elsif exp="f.kaikan_now >= 300"]
[汗 storage="scene3/ase2.png"]
[眉 storage="scene3/mayu3.png" x=6 y=6]
[目 storage="scene3/me9b.png"]
[口 storage="scene3/kuti8.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*エロ台詞

[tb_start_tyrano_code]
[if exp="f.S3エロ台詞 == 0 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina430.ogg"]
[にぃな]「那、那个……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 1 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 2 && f.kaikan_now >=90 && f.kaikan_now < 120"]
[tb_show_message_window  ]
[playse storage="niina431.ogg"]
[にぃな]「嘿嘿……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 3 && f.kaikan_now >= 120 && f.kaikan_now < 150"]
[tb_show_message_window  ]
[playse storage="niina432.ogg"]
[にぃな]「哈啊哈啊、哈啊哈啊……」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 4 && f.kaikan_now >= 150 && f.kaikan_now < 180"]
[tb_show_message_window  ]
[playse storage="niina433.ogg"]
[にぃな]「啊～这是什么呀～？」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 5 && f.kaikan_now >= 180 && f.kaikan_now < 220"]
[tb_show_message_window  ]
[playse storage="niina434.ogg"]
[にぃな]「哈啊……　[ハート]哈啊……哈啊[ハート]……　哈啊[ハート]……」[ハート][改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 6 && f.kaikan_now >= 220 && f.kaikan_now < 260"]
[tb_show_message_window  ]
[playse storage="niina435.ogg"]
[にぃな]「啊～！？　那里不行[ハート]啦～」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.S3エロ台詞 == 7 && f.kaikan_now >= 260 && f.kaikan_now < 300"]
[tb_show_message_window  ]
[playse storage="niina436.ogg"]
[にぃな]「啊……[ハート]　　啊……[ハート]啊……[ハート]　　啊……[ハート]妮、妮娜已经…」[改ページ]
[eval exp="f.S3エロ台詞 = f.S3エロ台詞 + 1"]

[elsif exp="f.kaikan_now >= 300"]
[tb_show_message_window  ]
[playse storage="niina437.ogg"]
[にぃな]「啊啊啊…♡[ハート]」[改ページ]
[フラッシュ visible=false]
[endif]
[_tb_end_tyrano_code]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene3/otoko5.png" cond="f.S3進行 == 2"]
[男 storage="scene3/otoko1a.png" cond="f.S3進行 == 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
[下着 storage="scene3/bura1.png" cond="f.S3脱がす[1] < 1 && f.S3脱がす[0] >= 1"]
[下着 storage="scene3/pantu1.png" cond="f.S3脱がす[3] <= 1 && f.S3脱がす[2] >= 1"]
[下着 storage="scene3/fuku1.png" cond="f.S3脱がす[0] < 1 && f.S3脱がす[2] <= 1"]
[下着 storage="scene3/fuku2.png" cond="f.S3脱がす[0] < 1 && f.S3脱がす[2] == 2"]
[下着 storage="scene3/sukato1.png" cond="f.S3脱がす[2] == 0"]
[下着 storage="scene3/sukato2a.png" cond="f.S3脱がす[2] == 1 && f.S3脱がす[0] == 0 && f.S3脱がす[3] <= 1"]
[下着 storage="scene3/sukato2b.png" cond="f.S3脱がす[2] == 1 && f.S3脱がす[0] == 0 && f.S3脱がす[3] == 2"]
[下着 storage="scene3/sukato2c.png" cond="f.S3脱がす[2] == 1 && f.S3脱がす[0] == 1 && f.S3脱がす[3] <= 1"]
[下着 storage="scene3/sukato2d.png" cond="f.S3脱がす[2] == 1 && f.S3脱がす[0] == 1 && f.S3脱がす[3] == 2"]
;[下着 storage="scene3/sukato2.png" cond="f.S3脱がす[2] == 1"]
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
[絵変更 time=750]
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
