[_tb_system_call storage=system/_scene5.ks]

*scene5

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン5変数リセット]
[if exp="f.kaisou == 1"]
[脱ぎ初期化]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*ご奉仕

[cm  ]
[tb_start_text mode=4 ]
[僕]「好啦，这次给我坐下坐下啦」[改ページ]
[playse storage="niina133.ogg"]
[にぃな]「坐下就行？......这样？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="210"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ5"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ5"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更  visible=false time=100]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="2.ogg"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「对~对~很好嘛。那，接下来轮到我咯」[改ページ]
[playse storage="niina134.ogg"]
[にぃな]「哥哥的回合？」[改ページ]
[僕]「嗯，因为不公平吧？只有妮娜你单方面看光光」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina135.ogg"]
[にぃな]「所、所以说要怎样━━」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[シーン5変数リセット]
[eval exp="f.S5進行 = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=-4 y=-6]
[目 storage="scene5/me6.png"]
[口 storage="scene5/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「嘿咻」※......噗噜！[改ページ]
[playse storage="niina136.ogg"]
[にぃな]「呀！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me7.png"]
[口 storage="scene5/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina137.ogg"]
[にぃな]「你、你掏出什么啦！」[改ページ]
[僕]「鸡鸡」[改ページ]
[playse storage="niina138.ogg"]
[にぃな]「真是的～快点收起来啦」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
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
[選択画像  graphic="sentaku/negau.png"  target="*手コキ自重" width="175"  cond="f.S5進行 <= 1 && f.kaikan_now < 10" ]
[選択画像  graphic="sentaku/negau.png"  target="*領域復活" width="175"  cond="f.S5進行 <= 1 && f.kaikan_now >= 10" ]
[選択画像  graphic="sentaku/tekoki.png"  target="*領域復活" width="175"  cond="f.S5進行 == 2" ]
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
[clickable_map  visible=false  graphic=scene5/S5clickable1a.png storage=scene5.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 1 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene5/S5clickable2a.png storage=scene5.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 2 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene5/S5clickable1b.png storage=scene5.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 1 && f.kaisou == 1"  ]
[clickable_map  visible=false  graphic=scene5/S5clickable2b.png storage=scene5.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S5進行 == 2 && f.kaisou == 1"  ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*フェラ"]
[elsif exp="clickable_map.click=='FFFF00'"]
[jump target="*手コキ"]
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

[call  target="*話す2"  cond="f.S5進行 == 2"  ]
[call  target="*話す1"  cond="f.S5進行 == 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0 && f.S5話す < 3"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me7.png"]
[口 storage="scene5/kuti7.png"]
[絵変更]
[elsif exp="tf.表情スキップ != 0 && f.S5話す == 3"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
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

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ5"  ]
[tb_start_tyrano_code]
;[call  storage="gauge.ks"  target="*快感ゲージ更新" cond="f.kaikan_now <= 10"]
[_tb_end_tyrano_code]

[return  ]
*話す1a

[tb_start_text mode=4 ]
[僕]「你看，很厉害吧，已经硬邦邦了」[改ページ]
[playse storage="niina139.ogg"]
[にぃな]「不用这样故意炫耀啦」[改ページ]
[僕]「这～有什么关系，仔细看看的话，妮娜酱也被看光了啊。互相扯平嘛，互相扯平」[改ページ]
[playse storage="niina140.ogg"]
[にぃな]「妮娜才不要什么互相扯平」[改ページ]
[_tb_end_text]

[return  ]
*話す1b

[tb_start_text mode=4 ]
[僕]「啊，难道说这是第一次看到勃起的鸡鸡？」[改ページ]
[playse storage="niina141.ogg"]
[にぃな]「难道说什么的，当然是第一次啊」[改ページ]
[僕]「你看，这样往上翘的～很有趣吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=6 y=9]
[目 storage="scene5/me9.png"]
[口 storage="scene5/kuti6.png"]
;[頬 storage="scene5/hoho.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina142.ogg"]
[にぃな]「所、所以说太近了！」[改ページ]
[_tb_end_text]

[return  ]
*話す1c

[tb_start_text mode=4 ]
[僕]「呐，再靠近点仔细看看嘛，又不会咬人」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti1.png"]
;[頬 storage="scene5/hoho.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[playse storage="niina143.ogg"]
[にぃな]「头部和爸爸的不一样……为什么？」[改ページ]
[僕]「……」[改ページ]
[僕]「男生也会有各种情况的啊」[改ページ]
[playse storage="niina144.ogg"]
[にぃな]「嗯……感觉有点像樱桃呢」[改ページ]
[_tb_end_text]

[return  ]
*話す1d

[tb_start_text mode=4 ]
[playse storage="niina144.ogg"]
[にぃな]「嗯……感觉有点像樱桃呢」[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[call  target="*手コキ表情"  ]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5エロ台詞[0]== 0"]
[call  target="*話す2a"]
[elsif exp="f.S5エロ台詞[0] == 1"]
[call  target="*話す2b"]
[elsif exp="f.S5エロ台詞[0] == 2"]
[call  target="*話す2c"]
[elsif exp="f.S5エロ台詞[0] == 3"]
[call  target="*話す2d"]
[elsif exp="f.S5エロ台詞[0] == 4"]
[call  target="*話す2e"]
[elsif exp="f.S5エロ台詞[0] == 5"]
[call  target="*話す2f"]
[elsif exp="f.S5エロ台詞[0] == 6"]
[call  target="*話す2g"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す2a

[tb_start_text mode=4 ]
[僕]「啊...这还是第一次...被女孩子碰」[改ページ]
[playse storage="niina145.ogg"]
[にぃな]「妮、妮娜也...」[改ページ]

[_tb_end_text]

[return  ]
*話す2b

[tb_start_text mode=4 ]
[playse storage="niina146.ogg"]
[にぃな]「鸡鸡原来会变得这么硬啊...」[改ページ]
[僕]「很厉害吧 妮娜酱可以随便摸哦」[改ページ]
[playse storage="niina147.ogg"]
[にぃな]「嗯、嗯……」[改ページ]
[_tb_end_text]

[return  ]
*話す2c

[tb_start_text mode=4 ]
[playse storage="niina148.ogg"]
[にぃな]「摸鸡鸡什么的，感觉有点好玩呢」[改ページ]
[僕]「啊、很好。就那样～对，就那样～」[改ページ]
[_tb_end_text]

[return  ]
*話す2d

[tb_start_text mode=4 ]
[playse storage="niina149.ogg"]
[にぃな]「头部那里…有透明的液体流出来」[改ページ]
[僕]「鸡、鸡鸡感觉舒服的时候就会流出来」[改ページ]
[playse storage="niina150.ogg"]
[にぃな]「原来是这样」[改ページ]
[_tb_end_text]

[return  ]
*話す2e

[tb_start_text mode=4 ]
[playse storage="niina151.ogg"]
[にぃな]「鸡鸡一直在动。好像有生命一样」[改ページ]
[僕]「啊…差不多该不妙了」[改ページ]
[_tb_end_text]

[return  ]
*話す2f

[tb_start_text mode=4 ]
[playse storage="niina152.ogg"]
[にぃな]「这要持续到什么时候啊？人家已经累得不行了」[改ページ]
[僕]「再、再一下！哈啊哈啊、哈啊哈啊」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る4"  cond="f.S5進行 == 2 && f.S5エロ台詞[0] >= 5"  ]
[call  target="*にぃな見る3"  cond="f.S5進行 == 2 && f.S5エロ台詞[0] >= 2 && f.S5エロ台詞[0] <= 4"  ]
[call  target="*にぃな見る2"  cond="f.S5進行 == 2 && f.S5エロ台詞[0] <= 1"  ]
[call  target="*にぃな見る1"  cond="f.S5進行 <= 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（妮娜现在超级动摇的……也是难怪啦）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（妮娜……看得超认真的嘛）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_text mode=4 ]
[僕]（感觉还挺有意思的……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る4

[tb_start_text mode=4 ]
[僕]（呜、看起来超辛苦的）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*チンコ見る4"  cond="f.S5進行 == 2 && f.S5エロ台詞[0] >= 5"  ]
[call  target="*チンコ見る3"  cond="f.S5進行 == 2 && f.S5エロ台詞[0] >= 2 && f.S5エロ台詞[0] <= 4"  ]
[call  target="*チンコ見る2"  cond="f.S5進行 == 2 && f.S5エロ台詞[0] <= 1"  ]
[call  target="*チンコ見る1"  cond="f.S5進行 <= 1"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*チンコ見る1

[tb_start_text mode=4 ]
[僕]（啊、终于射出来了……在女孩子面前）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る2

[tb_start_text mode=4 ]
[僕]（哦哦、〇〇年级的新鲜女人用白嫩小手握着我的鸡鸡……）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る3

[tb_start_text mode=4 ]
[僕]（啊、被撸得比想象中还要激烈啊）[改ページ]
[_tb_end_text]

[return  ]
*チンコ見る4

[tb_start_text mode=4 ]
[僕]（要、要爆炸了！）[改ページ]
[_tb_end_text]

[return  ]
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
[服脱がす1 mayu1=scene5/mayu3.png mayux1=4 mayuy1=6 me1=scene5/me2.png kuti1=scene5/kuti7.png mayu2=scene5/mayu3.png me2=scene5/me7.png kuti2=scene5/kuti1.png mayu3=scene5/mayu1.png me3=scene5/me1.png kuti3=scene5/kuti7.png mayu4=scene5/mayu2.png me4=scene5/me2.png kuti4=scene5/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*服脱がす2

[tb_start_tyrano_code]
[服脱がす2 mayu1=scene5/mayu2.png mayux1=4 mayuy1=6 me1=scene5/me2.png kuti1=scene5/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[スカート脱がす1 ase1=scene5/ase1.png mayu1=scene5/mayu3.png me1=scene5/me1.png kuti1=scene5/kuti5.png]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
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
[靴下脱がす1 mayu1=scene5/mayu3.png mayux1=4 mayuy1=6 me1=scene5/me2.png kuti1=scene5/kuti7.png mayu2=scene5/mayu1.png me2=scene5/me7.png kuti2=scene5/kuti1.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S5脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*靴下脱がす2

[tb_start_tyrano_code]
[eval exp="f.S5脱がす[4] = 1"  ]
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
*手コキ

[tb_start_tyrano_code]
[jump  target="*手コキ2"  cond="f.S5奉仕[0] == 1"  ]
[jump  target="*手コキ1"  cond="f.S5奉仕[0] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*手コキ開始

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那现在慢慢动动小手试试看」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[call  target="*手コキ表情"  ]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina153.ogg"]
[にぃな]「嗯、嗯……」[改ページ]
[_tb_end_text]

[return  ]
*手コキ1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（那么…差不多该…）[改ページ]
[僕]「那个…我有件事想拜托妮娜…」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina154.ogg"]
[にぃな]「找妮娜帮忙？」[改ページ]
[僕]「就是…想请你摸摸我的」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina155.ogg"]
[にぃな]「欸…」[改ページ]
[僕]「看着妮娜酱就变得这么大了…现在憋得好难受…」[改ページ]
[playse storage="niina156.ogg"]
[にぃな]「很难受啊…」[改ページ]
[僕]「嗯…超级」[改ページ]
[playse storage="niina157.ogg"]
[にぃな]「……知道了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S5奉仕[0] = 1"]
[eval exp="f.S5進行 = 2"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*手コキ表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1250]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]……紧握[ハート][改ページ]
[僕]「……啊」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[jump  target="*領域復活"  ]
[_tb_end_tyrano_code]

*手コキ2

[tb_start_tyrano_code]
[call target="*手コキ開始" cond="f.kaikan_now <= 10"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[快感ランダム min=4 max=6]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ5"  ]
[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
[call  target="*手コキ表情"]
[call  target="*服の状態"]
[下着 storage="scene5/fuku3b.png"]
[体 storage="scene5/karada3b.png"]
[絵変更 time=600 visible=false]
;↑服脱ぐで顔が戻らない為必要
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S5進行 = 2"  ]
[call  target="*手コキ表情"  ]
[call  target="*服の状態"  ]
[call  target="*体の状態"  ]
[絵変更 time=600 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S5エロ台詞[0] == 0 && f.kaikan_now >= 40 || f.S5エロ台詞[0] == 1 && f.kaikan_now >= 70 || f.S5エロ台詞[0] == 2 && f.kaikan_now >= 100 || f.S5エロ台詞[0] == 3 && f.kaikan_now >= 130 || f.S5エロ台詞[0] == 4 && f.kaikan_now >= 170 || f.S5エロ台詞[0] == 5 && f.kaikan_now >= 210"  ]
[call  target="*手コキ台詞"  ]
[jump  target="*手コキ3"  cond="f.kaikan_now >= 210"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*手コキ2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*手コキ3

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「啊啊、已经到极限了」[改ページ]
[僕]「唔……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汁 storage="scene5/siru1.png"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=-4 y=-6]
[目 storage="scene5/me6.png"]
[口 storage="scene5/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音2]噗噜噜…！　噗噜噜…！噗噜噜…！　噗噜噜…！[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina158.ogg"]
[にぃな]「哇！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汁 storage="scene5/siru2.png"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音2]黏糊糊～……[改ページ]
[playse storage="niina159.ogg"]
[にぃな]「这、这是什么……？」[改ページ]
[僕]「……」[改ページ]
[僕]「塞西……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汁 storage="scene5/siru2.png"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina160.ogg"]
[にぃな]「呼嗯、这就是塞西啊」[改ページ]
[僕]「对不起……全都射到妮娜身上了」[改ページ]
[playse storage="niina161.ogg"]
[にぃな]「嗯，已经黏黏的了……」[改ページ]
[僕]「生气了吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汁 storage="scene5/siru2.png"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina162.ogg"]
[にぃな]「比起这个……鸡鸡、还难受吗？」[改ページ]
[僕]「嗯嗯……已经没事了」[改ページ]
[playse storage="niina163.ogg"]
[にぃな]「这样啊……那，可以哦」[改ページ]
[僕]（啊，好温柔啊，妮娜）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S5クリア = 1"]
[シーン5変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene0.ks"  target="*scene0"  ]
[s  ]
*手コキ表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 10 && f.kaikan_now < 40"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti6.png"]
[elsif exp="f.kaikan_now >= 40 && f.kaikan_now < 70"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me4.png"]
[口 storage="scene5/kuti1.png"]
[elsif exp="f.kaikan_now >= 70 && f.kaikan_now < 100"]
[眉 storage="scene5/mayu1.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti4.png"]
[elsif exp="f.kaikan_now >= 100 && f.kaikan_now < 130"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me4.png"]
[口 storage="scene5/kuti5.png"]
[elsif exp="f.kaikan_now >= 130 && f.kaikan_now < 170"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me5.png"]
[口 storage="scene5/kuti6.png"]
[elsif exp="f.kaikan_now >= 170 && f.kaikan_now < 210"]
[汗 storage="scene5/ase1.png"]
[眉 storage="scene5/mayu3.png" x=4 y=6]
[目 storage="scene5/me2.png"]
[口 storage="scene5/kuti7.png"]
[elsif exp="f.kaikan_now >= 210"]
[眉 storage="scene5/mayu1.png"]
[目 storage="scene5/me1.png"]
[口 storage="scene5/kuti1.png"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*手コキ台詞

[tb_start_tyrano_code]
[if exp="f.S5エロ台詞[0] == 0 && f.kaikan_now >= 40 && f.kaikan_now < 70"]
[tb_show_message_window  ]
[playse storage="niina164.ogg"]
[にぃな]「嗯～……」[改ページ]
[eval exp="f.S5エロ台詞[0] = f.S5エロ台詞[0] + 1"]

[elsif exp="f.S5エロ台詞[0] == 1 && f.kaikan_now >= 70 && f.kaikan_now < 100"]
[tb_show_message_window  ]
[playse storage="niina165.ogg"]
[にぃな]「嘿嘿」[改ページ]
[eval exp="f.S5エロ台詞[0] = f.S5エロ台詞[0] + 1"]

[elsif exp="f.S5エロ台詞[0] == 2 && f.kaikan_now >= 100 && f.kaikan_now < 130"]
[tb_show_message_window  ]
[playse storage="niina166.ogg"]
[にぃな]「啊」[改ページ]
[eval exp="f.S5エロ台詞[0] = f.S5エロ台詞[0] + 1"]

[elsif exp="f.S5エロ台詞[0] == 3 && f.kaikan_now >= 130 && f.kaikan_now < 170"]
[tb_show_message_window  ]
[playse storage="niina167.ogg"]
[にぃな]「好、好厉害……」[改ページ]
[eval exp="f.S5エロ台詞[0] = f.S5エロ台詞[0] + 1"]

[elsif exp="f.S5エロ台詞[0] == 4 && f.kaikan_now >= 170 && f.kaikan_now < 210"]
[tb_show_message_window  ]
[playse storage="niina168.ogg"]
[にぃな]「那、那个」[改ページ]
[eval exp="f.S5エロ台詞[0] = f.S5エロ台詞[0] + 1"]

[endif]

[_tb_end_tyrano_code]

[return  ]
*手コキ自重

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（嗯～……得先让妮娜看看才行）[改ページ]

[_tb_end_text]

[jump  target="*選択肢復活"  storage=""  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;靴下
[下着 storage="scene5/socks3.png" cond="f.S5脱がす[4] < 1 && f.S5進行 == 2"]
[下着 storage="scene5/socks1.png" cond="f.S5脱がす[4] < 1 && f.S5進行 <= 1"]
;パンツ
[下着 storage="scene5/pantu1.png" cond="f.S5脱がす[2] == 1 && f.S5脱がす[3] < 1 && f.S5進行 <= 2"]
;スカート
[下着 storage="scene5/sukato3.png" cond="f.S5脱がす[2] < 1 && f.S5進行 == 2"]
[下着 storage="scene5/sukato1.png" cond="f.S5脱がす[2] < 1 && f.S5進行 <= 1"]
;ブラ
[下着 storage="scene5/bura1.png" cond="f.S5脱がす[0] == 1 && f.S5脱がす[1] < 1 && f.S5進行 <= 2"]
;服
[下着 storage="scene5/fuku3a.png" cond="f.S5脱がす[0] < 1 && f.S5進行 == 2"]
[下着 storage="scene5/fuku1.png" cond="f.S5脱がす[0] < 1 && f.S5進行 <= 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene5/hoho.png" cond="f.S5進行 == 2 || f.S5進行 == 1"]
[頬 storage="scene5/hoho.png" x=-125 y=185 cond="f.S5進行 == 3"]
[頬 storage="scene5/hoho.png" x=-86 y=330 cond="f.S5進行 == 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene5/karada4b.png" cond="f.S5進行 == 4"]
[体 storage="scene5/karada4a.png" cond="f.S5進行 == 3"]
[体 storage="scene5/karada3a.png" cond="f.S5進行 == 2"]
[体 storage="scene5/karada2.png" cond="f.S5進行 == 1"]
[体 storage="scene5/karada1.png" cond="f.S5進行 == 0"]
[_tb_end_tyrano_code]

[return  ]
