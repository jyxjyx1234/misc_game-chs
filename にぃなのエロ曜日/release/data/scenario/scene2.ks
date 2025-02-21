[_tb_system_call storage=system/_scene2.ks]

*scene2

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン2変数リセット]
[if exp="f.kaisou == 1"]
[脱ぎ初期化]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*おっぱい

[cm  ]
[tb_start_text mode=4 ]
[僕]「喂，到这边来」[改ページ]
[playse storage="niina019.ogg"]
[にぃな]「嗯、嗯……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="220"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ2"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ2"  ]
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

[playbgm  volume="100"  time="500"  loop="true"  storage="2.ogg"  ]
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
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  ]

[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢"  cond="f.kaikan_now < 220" ]
[選択画像  graphic="sentaku/miru.png"  target="*自重4"  cond="f.kaikan_now >= 220" ]

[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活"  cond="f.kaikan_now < 220" ]
[選択画像  graphic="sentaku/sawaru.png"  target="*自重4"  cond="f.kaikan_now >= 220" ]

[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢"  cond="f.kaikan_now < 220" ]
[選択画像  graphic="sentaku/nugasu.png"  target="*自重4"  cond="f.kaikan_now >= 220" ]
[選択画像  graphic="sentaku/tugi.png"  target="*自重5"  cond="f.kaikan_now >= 220"  ]
[選択画像 graphic="sentaku/system.png" target="*システム"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
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
[選択画像  graphic="sentaku/nina.png"  target="*頭見る"  ]
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
[選択画像  graphic="sentaku/fuku.png"  target="*服めくる"   cond="f.S2脱がす[0] < 2" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"   cond="f.S2脱がす[1] < 1 && f.S2脱がす[0] >= 2" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす"     cond="f.S2脱がす[2] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"   ]
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
[clickable_map  visible=false  graphic=scene2/S2clickable1a.png storage=scene2.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 0 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable2a.png storage=scene2.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 1 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable3a.png storage=scene2.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 >= 2 && f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable1b.png storage=scene2.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 0 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable2b.png storage=scene2.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 == 1 && f.kaisou == 1"   ]
[clickable_map  visible=false  graphic=scene2/S2clickable3b.png storage=scene2.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S2進行 >= 2 && f.kaisou == 1"   ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[eval exp="f.S2進行 = 2" cond="f.S2進行 > 2"   ]
[jump  target="*頭撫でる"]

[elsif exp="clickable_map.click=='FFFF00'"]
[eval exp="f.S2愛撫 = 0" cond="f.S2進行 >= 2"   ]
[jump  target="*服触る"  cond="f.S2進行 == 0"   ]
[jump  target="*ブラ触る"  cond="f.S2進行 == 1"  ]
[jump  target="*おっぱい揉む"  cond="f.S2進行 >= 2"  ]

[elsif exp="clickable_map.click=='00FF00'"]
[eval exp="f.S2愛撫 = 0" cond="f.S2進行 >= 2"   ]
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

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「啊、这么说～来还是第一次吧」[改ページ]
[playse storage="niina020.ogg"]
[にぃな]「……什么第一次？」[改ページ]
[僕]「好好看着我的眼睛说话」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png" x=12 y=12]
[目 storage="scene2/me9.png"]
[口 storage="scene2/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina021.ogg"]
[にぃな]「啊哈，这样啊」[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]「呐，这个胸罩～是自己选的吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina022.ogg"]
[にぃな]「嗯～嗯，和妈妈一起选的。妮娜其实更想要可爱点的款式……」[改ページ]
[僕]（干得好！妈妈）[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_text mode=4 ]
[僕]「啊啊，多么娇小的青春期奶子」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina023.ogg"]
[にぃな]「所、所以都说了没什么可看的嘛」[改ページ]
[僕]「没有没有，我可是很高兴的。毕竟我是萝莉控，这种尺寸正合胃口」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina024.ogg"]
[にぃな]「哼……」[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0"]
[call target="*話す4a"]
[elsif exp="f.S2エロ台詞 == 1"]
[call target="*話す4b"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S2エロ台詞 == 2"]
[call target="*話す4c"]
[elsif exp="f.S2エロ台詞 == 3"]
[call target="*話す4d"]
[elsif exp="f.S2エロ台詞 == 4"]
[call target="*話す4e"]
[elsif exp="f.S2エロ台詞 == 5"]
[call target="*話す4f"]
[elsif exp="f.S2エロ台詞 == 6"]
[call target="*話す4g"]
[elsif exp="f.S2エロ台詞 == 7"]
[call target="*話す4h"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す4a

[tb_start_text mode=4 ]
[僕]「男、男人面前有奶子的话，就忍不住想摸啊」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す4b

[tb_start_text mode=4 ]
[僕]「啊啊，这就是真奶子的触感。像刚捣好的年糕一样」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina025.ogg"]
[にぃな]「……小奶子？」[改ページ]
[僕]「就…就是小奶子所以叫小奶子」[改ページ]
[playse storage="niina026.ogg"]
[にぃな]「小小小地说个不停」[改ページ]
[_tb_end_text]

[return  ]
*話す4c

[tb_start_text mode=4 ]
[playse storage="niina027.ogg"]
[にぃな]「妮娜的奶子揉着有意思吗？」[改ページ]
[僕]「嗯，超开心的。妮娜的小奶子揉起来软乎乎的」[改ページ]
[playse storage="niina028.ogg"]
[にぃな]「真是的，本来就没多少可揉的了」[改ページ]
[_tb_end_text]

[return  ]
*話す4d

[tb_start_text mode=4 ]
[僕]「啊……奶子好像变得有点软了呢」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す4e

[tb_start_text mode=4 ]
[playse storage="niina029.ogg"]
[にぃな]「别弄了，总觉得有点痒痒的」[改ページ]
[僕]「啊啊，这感觉真棒」[改ページ]
[_tb_end_text]

[return  ]
*話す4f

[tb_start_text mode=4 ]
[僕]「……怎～么了？」[改ページ]
[playse storage="niina030.ogg"]
[にぃな]「没…没什么」[改ページ]
[_tb_end_text]

[return  ]
*話す4g

[tb_start_text mode=4 ]
[僕]「来，像这样轻轻托起发烫的小奶子……」[改ページ]
[playse storage="niina031.ogg"]
[にぃな]「哈啊哈啊、哈啊哈啊……感觉好热……」[改ページ]
[_tb_end_text]

[return  ]
*話す4h

[tb_start_text mode=4 ]
[僕]「生气……了？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0"]
[call target="*話す5a"]
[elsif exp="f.S2エロ台詞 == 1"]
[call target="*話す5b"]
[elsif exp="f.S2エロ台詞 == 2"]
[call target="*話す5c"]
[elsif exp="f.S2エロ台詞 == 3"]
[call target="*話す5d"]
[elsif exp="f.S2エロ台詞 == 4"]
[call target="*話す5e"]
[elsif exp="f.S2エロ台詞 == 5"]
[call target="*話す5f"]
[elsif exp="f.S2エロ台詞 == 6"]
[call target="*話す5g"]
[elsif exp="f.S2エロ台詞 == 7"]
[call target="*話す5h"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す5a

[tb_start_text mode=4 ]
[僕]「才～没呢，刚才绝对有抖一下吧」[改ページ]
[playse storage="niina032.ogg"]
[にぃな]「所、所以说没有啦」[改ページ]
[_tb_end_text]

[return  ]
*話す5b

[tb_start_text mode=4 ]
[僕]「呼呼，又小又可爱的小豆豆」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5c

[tb_start_text mode=4 ]
[playse storage="niina033.ogg"]
[にぃな]「乳头被那样揪的话会痛的啊」[改ページ]
[僕]「乳头很有感觉对吧。让我好好揪弄一番吧」[改ページ]
[_tb_end_text]

[return  ]
*話す5d

[tb_start_text mode=4 ]
[僕]「来，有节奏地拉扯敏感的小豆豆……咯」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5e

[tb_start_text mode=4 ]
[playse storage="niina034.ogg"]
[にぃな]「总觉得头部开始发麻了」[改ページ]
[僕]「啊、感觉不错」[改ページ]
[_tb_end_text]

[return  ]
*話す5f

[tb_start_text mode=4 ]
[僕]「哦、变得相当硬了呢」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す5g

[tb_start_text mode=4 ]
[僕]「啊、小小的乳头已经硬邦邦」[改ページ]
[playse storage="niina035.ogg"]
[にぃな]「已、已经可以了，别再碰那里了。フゥフゥ、フゥフゥ……」[改ページ]
[_tb_end_text]

[return  ]
*話す5h

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[僕]「……」[改ページ]
[にぃな]「……」[改ページ]
[僕]「生气……了吗？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2クリア = 1"]
[_tb_end_tyrano_code]

[return  ]
*頭見る

[tb_show_message_window  ]
[tb_start_tyrano_code]

[call  target="*にぃな見る2"  cond="f.S2進行 >= 2"  ]
[call  target="*にぃな見る1"  cond="f.S2進行 < 2"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_text mode=4 ]
[if exp="f.S2頭[0] == 0 || f.S2頭[0] == 3 && f.ランダム == 1"]
[eval exp="f.S2頭[0] = f.S2頭[0] + 1"  cond="f.S2頭[0]　< 3"  ]
[僕]（哦、妮娜酱离得好……好近！）[改ページ]
[elsif exp="f.S2頭[0] == 1 || f.S2頭[0] == 3 && f.ランダム == 2"]
[eval exp="f.S2頭[0] = f.S2頭[0] + 1"  cond="f.S2頭[0]　< 3"  ]
[僕]（像这样和女孩子面对面，到底是多久没经历过了……）[改ページ]
[elsif exp="f.S2頭[0] == 2 || f.S2頭[0] == 3 && f.ランダム == 3"]
[eval exp="f.S2頭[0] = f.S2頭[0] + 1"  cond="f.S2頭[0]　< 3"  ]
[僕]（嘿嘿、这个花朵图案的发卡和她超配的嘛）[改ページ]
[endif]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 >= 0 && f.S2エロ台詞 < 6"]
[call target="*にぃな見る2a"]
[elsif exp="f.S2エロ台詞 >= 6"]
[call target="*にぃな見る2b"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*にぃな見る2a

[tb_start_text mode=4 ]
[僕]（嘿嘿、妮娜酱脸都红透了……好可爱）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2b

[tb_start_text mode=4 ]
[僕]（啊、怎么感觉脸上开始发烫了……）[改ページ]
[_tb_end_text]

[return  ]
*服見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S2服[0] == 0 || f.S2服[0] == 3 && f.ランダム == 1"]
[eval exp="f.S2服[0] = f.S2服[0] + 1"  cond="f.S2服[0]　< 3"  ]
[僕]（妮娜酱的衣服……看起来好清凉）[改ページ]
[elsif exp="f.S2服[0] == 1 || f.S2服[0] == 3 && f.ランダム == 2"]
[eval exp="f.S2服[0] = f.S2服[0] + 1"  cond="f.S2服[0]　< 3"  ]
[僕]（无～论如何视线都会往那个隆起的地方飘）[改ページ]
[elsif exp="f.S2服[0] == 2 || f.S2服[0] == 3 && f.ランダム == 3"]
[eval exp="f.S2服[0] = f.S2服[0] + 1"  cond="f.S2服[0]　< 3"  ]
[僕]（啊啊、这下面就是妮娜酱的奶子……）[改ページ]
[endif]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*ブラ見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S2ブラ[0] == 0 || f.S2ブラ[0] == 3 && f.ランダム == 1"]
[eval exp="f.S2ブラ[0] = f.S2ブラ[0] + 1"  cond="f.S2ブラ[0]　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3"]
[僕]（妮娜酱戴着少女胸罩。青涩感真棒啊）[改ページ]
[elsif exp="f.S2ブラ[0] == 1 || f.S2ブラ[0] == 3 && f.ランダム == 2"]
[eval exp="f.S2ブラ[0] = f.S2ブラ[0] + 1"  cond="f.S2ブラ[0]　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 3"]
[僕]（这种包裹整个胸部的款式，最能撩动萝莉控的心弦了）[改ページ]
[elsif exp="f.S2ブラ[0] == 2 || f.S2ブラ[0] == 3 && f.ランダム == 3"]
[eval exp="f.S2ブラ[0] = f.S2ブラ[0] + 1"  cond="f.S2ブラ[0]　< 3"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 4"]
[僕]（啊、发现有个尖尖的地方，那该不会是……）[改ページ]
[endif]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp ="f.kaikan_now = 20" cond="f.kaikan_now > 20"]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ2"  ]
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

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_text mode=4 ]
[if exp="f.S2おっぱい[0] == 0 || f.S2おっぱい[0] == 3 && f.ランダム == 1"]
[eval exp="f.S2おっぱい[0] = f.S2おっぱい[0] + 1"  cond="f.S2おっぱい[0]　< 3"  ]
[僕]（哦哦、这就是〇〇生刚开始发育的奶子，多么惹人怜爱……）[改ページ]
[elsif exp="f.S2おっぱい[0] == 1 || f.S2おっぱい[0] == 3 && f.ランダム == 2"]
[eval exp="f.S2おっぱい[0] = f.S2おっぱい[0] + 1"  cond="f.S2おっぱい[0]　< 3"  ]
[僕]（还像未绽放的花蕾……几乎看不到谷间）[改ページ]
[elsif exp="f.S2おっぱい[0] == 2 || f.S2おっぱい[0] == 3 && f.ランダム == 3"]
[eval exp="f.S2おっぱい[0] = f.S2おっぱい[0] + 1"  cond="f.S2おっぱい[0]　< 3"  ]
[僕]（哈、小小的乳头……傲娇地向上翘着）[改ページ]
[endif]
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
[僕]（哦哦、我的手正在揉〇〇生的奶子……难以置信）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る2b

[tb_start_text mode=4 ]
[僕]（好、揉得比刚开始顺手了……）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る2c

[tb_start_text mode=4 ]
[僕]（哈、汗津津的乳头……受不了了）[改ページ]

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

[tb_start_text mode=4 ]
[僕]（小小的凸起……真可爱啊）[改ページ]
[_tb_end_text]

[return  ]
*乳首見るb

[tb_start_text mode=4 ]
[僕]（啊、头部有点鼓起来了）[改ページ]
[_tb_end_text]

[return  ]
*乳首見るc

[tb_start_text mode=4 ]
[僕]（乳、乳头已经通红通红了！）[改ページ]
[_tb_end_text]

[return  ]
*スカート見る

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(2-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="2"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S2スカート[0] == 0 || f.S2スカート[0] == 2 && f.ランダム == 1"]
[eval exp="f.S2スカート[0] = f.S2スカート[0] + 1"  cond="f.S2スカート[0]　< 2"  ]
[僕]（粉色短裙......很有女孩子气真棒啊）[改ページ]
[elsif exp="f.S2スカート[0] == 1 || f.S2スカート[0] == 2 && f.ランダム == 2"]
[eval exp="f.S2スカート[0] = f.S2スカート[0] + 1"  cond="f.S2スカート[0]　< 2"  ]
[僕]（啊啊、一直盯着短裙看的话，越来越想掀起来了......）[改ページ]
[僕]（不～行！现在还不是时候）[改ページ]
[endif]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*頭撫でる

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 30"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*頭撫でる3"  cond="f.S2頭[1] == 1 && f.S2愛撫 == 1"  ]
[jump  target="*頭撫でる2"  cond="f.S2頭[1] == 1 && f.S2愛撫 == 0"  ]
[jump  target="*頭撫でる1"  cond="f.S2頭[1] == 0"  ]
[_tb_end_tyrano_code]

*頭撫でる1

[tb_start_tyrano_code]
[eval exp="f.S2頭[1] = 1"]
[eval exp="f.S2愛撫 = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu1.png" x=-8 y=-8]
[目 storage="scene2/me3.png"]
[口 storage="scene2/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina036.ogg"]
[にぃな]「为、为什么要摸妮娜的头？」[改ページ]
[僕]「因为妮娜酱很可爱嘛。早就想摸摸你了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti3.png"]
[頬 storage="scene2/hoho.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「......」[改ページ]
[僕]（啊、有点害羞了呢......）[改ページ]
[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
*頭撫でる2

[tb_start_tyrano_code]
[eval exp="f.S2愛撫 = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti3.png"]
[頬 storage="scene2/hoho.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更  visible=false  time=750]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
*頭撫でる3

[tb_start_tyrano_code]
[if exp="f.S2進行 == 0"]
[快感ランダム min=1 max=3 limit=10]
[endif]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ2"  ]
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

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 10" ]
[jump  target="*領域復活"]
[endif]
[jump  target="*頭撫でる3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*服触る

[tb_show_message_window  ]
[call  target="*自重1"  storage=""  ]
[jump  target="*領域復活"  storage=""  ]
[s  ]
*ブラ触る

[tb_show_message_window  ]
[call  target="*自重2"  storage=""  ]
[jump  target="*領域復活"  storage=""  ]
[s  ]
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
[僕]（好～嘞、趁着妮娜酱现在稍微松懈的时机......）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 3"]
[eval exp="f.S2おっぱい[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]......嗯啾[ハート][改ページ]
[playse storage="niina037.ogg"]
[にぃな]「啊！」[改ページ]
[僕]「哦哦、水嫩......妮娜的奶子、胀得好厉害」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina038.ogg"]
[にぃな]「你、你摸了吧」[改ページ]
[僕]「谁让那里长着奶子嘛」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「......」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
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
[絵変更 time=750 visible=false]
[call  target="*おっぱい台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*おっぱい3

[tb_start_tyrano_code]
[快感ランダム min=3 max=5 limit=220]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ2"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene2/otoko1b.png]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*おっぱい表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0 && f.kaikan_now >= 21 || f.S2エロ台詞 == 1 && f.kaikan_now >= 50 || f.S2エロ台詞 == 2 && f.kaikan_now >= 80 || f.S2エロ台詞 == 3 && f.kaikan_now >= 110 || f.S2エロ台詞 == 4 && f.kaikan_now >= 140 || f.S2エロ台詞 == 5 && f.kaikan_now >= 180 || f.S2エロ台詞 == 6 && f.kaikan_now >= 220"  ]
[call  target="*おっぱい台詞"  ]
[jump  target="*おっぱいストップ"  cond="f.kaikan_now >= 220"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*おっぱい3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*おっぱい表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now <= 20"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti6.png"]
[elsif exp="f.kaikan_now >= 21 && f.kaikan_now < 50"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti1.png"]
[elsif exp="f.kaikan_now >= 50 && f.kaikan_now < 80"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 80 && f.kaikan_now < 110"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti3.png"]
[elsif exp="f.kaikan_now >= 110 && f.kaikan_now < 140"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti4.png"]
[elsif exp="f.kaikan_now >= 140 && f.kaikan_now < 180"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=-8 y=-8]
[目 storage="scene2/me6.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 180 && f.kaikan_now < 220"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti10.png"]
[elsif exp="f.kaikan_now >= 220"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti3.png"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*おっぱい台詞

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0 && f.kaikan_now <= 20"]
[tb_show_message_window  ]
[にぃな]「......」[改ページ]

[elsif exp="f.S2エロ台詞 == 0 && f.kaikan_now >= 21 && f.kaikan_now < 50"]
[tb_show_message_window  ]
[playse storage="niina039.ogg"]
[にぃな]「啊......」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 1 && f.kaikan_now >= 50 && f.kaikan_now < 80"]
[tb_show_message_window  ]
[playse storage="niina040.ogg"]
[にぃな]「......我说」[改ページ]
[eval exp="f.S2乳首[1] = 1"]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 2 && f.kaikan_now >= 80 && f.kaikan_now < 110"]
[tb_show_message_window  ]
[にぃな]「......」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 3 && f.kaikan_now >= 110 && f.kaikan_now < 140"]
[tb_show_message_window  ]
[playse storage="niina041.ogg"]
[にぃな]「还、还要揉吗……？」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 4 && f.kaikan_now >= 140 && f.kaikan_now < 180"]
[tb_show_message_window  ]
[playse storage="niina042.ogg"]
[にぃな]「啊」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 5 && f.kaikan_now >= 180 && f.kaikan_now < 220"]
[tb_show_message_window  ]
[playse storage="niina043.ogg"]
[にぃな]「哈啊……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 6 && f.kaikan_now >= 220"]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*乳首摘まむ

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*乳首摘まむ3"  cond="f.S2乳首[1] == 1 && f.S2進行 == 4"  ]
[jump  target="*乳首摘まむ2"  cond="f.S2乳首[1] == 1 && f.S2進行 != 4"  ]
[jump  target="*乳首摘まむ1"  cond="f.S2乳首[1] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*乳首摘まむ1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「这个小巧的头部也……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 4"]
[eval exp="f.S2乳首[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti3.png"]
[free layer="0" page="back" name="otoko"]
[男 storage="scene2/otoko2a.png]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]......紧[ハート][改ページ]
[playse storage="niina044.ogg"]
[にぃな]「嗯......」[改ページ]
[僕]「啊、刚才抽搐了一下」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina045.ogg"]
[にぃな]「才、才没有」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*乳首摘まむ2

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
[絵変更 time=750 visible=false]
[call  target="*乳首台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*乳首摘まむ3

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=220]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ2"  ]
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
[if exp="f.S2エロ台詞 == 0 && f.kaikan_now >= 21 || f.S2エロ台詞 == 1 && f.kaikan_now >= 50 || f.S2エロ台詞 == 2 && f.kaikan_now >= 80 || f.S2エロ台詞 == 3 && f.kaikan_now >= 110 || f.S2エロ台詞 == 4 && f.kaikan_now >= 140 || f.S2エロ台詞 == 5 && f.kaikan_now >= 180 || f.S2エロ台詞 == 6 && f.kaikan_now >= 220"  ]
[call  target="*乳首台詞"  ]
[jump  target="*おっぱいストップ"  cond="f.kaikan_now >= 220"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*乳首摘まむ3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*乳首表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now <= 20"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 21 && f.kaikan_now < 50"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti3.png"]
[elsif exp="f.kaikan_now >= 50 && f.kaikan_now < 80"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti10.png"]
[elsif exp="f.kaikan_now >= 80 && f.kaikan_now < 110"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti6.png"]
[elsif exp="f.kaikan_now >= 110 && f.kaikan_now < 140"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 140 && f.kaikan_now < 180"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me5.png"]
[口 storage="scene2/kuti2.png"]
[elsif exp="f.kaikan_now >= 180 && f.kaikan_now < 220"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti7.png"]
[elsif exp="f.kaikan_now >= 220"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti3.png"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*乳首台詞

[tb_start_tyrano_code]
[if exp="f.S2エロ台詞 == 0 && f.kaikan_now <= 20"]
[tb_show_message_window  ]
[playse storage="niina046.ogg"]
[にぃな]「真是的」[改ページ]

[elsif exp="f.S2エロ台詞 == 0 && f.kaikan_now >= 21 && f.kaikan_now < 50"]
[tb_show_message_window  ]
[にぃな]「......」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 1 && f.kaikan_now >= 50 && f.kaikan_now < 80"]
[tb_show_message_window  ]
[playse storage="niina047.ogg"]
[にぃな]「那个……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 2 && f.kaikan_now >= 80 && f.kaikan_now < 110"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 3 && f.kaikan_now >= 110 && f.kaikan_now < 140"]
[tb_show_message_window  ]
[playse storage="niina048.ogg"]
[にぃな]「摸、摸太多了……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 4 && f.kaikan_now >= 140 && f.kaikan_now < 180"]
[tb_show_message_window  ]
[playse storage="niina049.ogg"]
[にぃな]「……嗯嗯」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 5 && f.kaikan_now >= 180 && f.kaikan_now < 220"]
[tb_show_message_window  ]
[playse storage="niina050.ogg"]
[にぃな]「呼……」[改ページ]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]

[elsif exp="f.S2エロ台詞 == 6 && f.kaikan_now >= 220"]
[eval exp="f.S2エロ台詞 = f.S2エロ台詞 + 1"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*おっぱいストップ

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[僕]（呜……）[改ページ]
[にぃな]「……」[改ページ]
[僕]「……」[改ページ]
[にぃな]「……」[改ページ]
[僕]「生气……了吗？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2クリア = 1"]
[free layer="0" page="fore" name="icon"]
[free layer="0" page="back" name="icon"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服めくる

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.kaikan_now>=10 && f.S2脱がす[0] == 1"]
[call  target="*服めくる2"]
[else]
[call  target="*服めくる1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 20"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服めくる1

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「那个……那、把上衣掀起来吧」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina051.ogg"]
[にぃな]「该怎么办呢……」[改ページ]
[僕]（……哎、哎？）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2脱がす[0] = 1"]
[_tb_end_tyrano_code]

[return  ]
*服めくる2

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「那个……能把奶子给我看看吗」[改ページ]
[playse storage="niina052.ogg"]
[にぃな]「奶子？不用～看啦。妮娜没什么可看的」[改ページ]
[僕]「这样～下去什么都开始不了啊。不是要做H的事吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina053.ogg"]
[にぃな]「唔～……好吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2進行 = 1"]
[eval exp="f.S2脱がす[0] = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu1.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina054.ogg"]
[にぃな]「……喏」[改ページ]
[僕]「噢哦、是胸罩啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina055.ogg"]
[にぃな]「这不是当然的嘛～妮娜可是高年级生了呀」[改ページ]

[_tb_end_text]

[return  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*ブラ脱がす2"  cond="f.kaikan_now>=20"  ]
[call  target="*ブラ脱がす1"  cond="f.kaikan_now < 20"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 21"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*ブラ脱がす1

[tb_start_text mode=4 ]
[僕]「那、接下来把这可爱的胸罩也……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 21"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti3.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
……快快。[改ページ]
[僕]（啊、被躲开了）[改ページ]
[_tb_end_text]

[return  ]
*ブラ脱がす2

[tb_start_text mode=4 ]
[僕]「那、接下来把这可爱的胸罩也……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 21"]
[汗 storage="scene2/ase1.png"]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me7.png"]
[口 storage="scene2/kuti3.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
……快快。[改ページ]
[僕]「这次、不许再躲了哦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me1.png"]
[口 storage="scene2/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina056.ogg"]
[にぃな]「好～的……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2脱がす[1] = 1"]
[eval exp="f.S2進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene2/mayu3.png"]
[目 storage="scene2/me4.png"]
[口 storage="scene2/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]……噗噜[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S2頭[0] = 4"]
;[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*スカート脱がす1"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*スカート脱がす1

[tb_start_text mode=4 ]
[僕]「……」[改ページ]
[僕]（突然说裙子什么的有点难以启齿啊）[改ページ]

[_tb_end_text]

[return  ]
*自重1

[tb_start_text mode=4 ]
[僕]（不、突然碰身体还是算了吧……这里必须慎重行事）[改ページ]
[_tb_end_text]

[return  ]
*自重2

[tb_start_tyrano_code]
;[call  target="*男消去" cond="f.S2愛撫 != 0" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko"]
[free layer="0" page="back" name="hoho"]
[eval exp="f.S2愛撫 = 0"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（那、轻～轻地、轻～轻地……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 31"]
[眉 storage="scene2/mayu2.png" x=8 y=8]
[目 storage="scene2/me2.png"]
[口 storage="scene2/kuti1.png"]
[絵変更]
[eval exp="tf.表情スキップ = 31"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina057.ogg"]
[にぃな]「滋～～……」[改ページ]
[僕]（呜、被警戒了……）[改ページ]
[_tb_end_text]

[return  ]
*自重4

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（不、不要啊，再碰奶子就糟糕了……）[改ページ]
[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
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
[backlay]
[free layer="0" page="back" name="hoho" cond="f.S2愛撫 == 1"]
[free layer="0" page="back" name="otoko"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S2愛撫 = 0" cond="f.S2愛撫 != 0" ]
[_tb_end_tyrano_code]

[return  ]
*男出現

[tb_start_tyrano_code]
[backlay]
[男 storage="scene2/otoko1a.png" cond="f.S2進行 == 3 && f.S2愛撫 != 1"]
[男 storage="scene2/otoko2a.png" cond="f.S2進行 == 4 && f.S2愛撫 != 1"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[return  ]
*自重5

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「好、好的，我不继续了……」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S2クリア = 1"]
;↑消しても消さなくても
[シーン2変数リセット]
[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene3.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
