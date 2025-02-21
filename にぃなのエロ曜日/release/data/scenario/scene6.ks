[_tb_system_call storage=system/_scene6.ks]

*scene6

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン6変数リセット]
[if exp="f.kaisou == 1"]
[脱ぎ初期化]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*お尻

[cm  ]
[tb_start_text mode=4 ]
[僕]「来～把屁股再撅高一点嘛～」[改ページ]
[playse storage="niina169.ogg"]
[にぃな]「还、还要？像这样吗？」[改ページ]
[僕]「对～对～脸也朝这边」[改ページ]
[playse storage="niina170.ogg"]
[にぃな]「好好好......」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="220"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ6"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ6"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti1.png"]
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

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"  ]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"]
[選択画像  graphic="sentaku/sawaru.png"  target="*さわる自重1" width="175" cond="f.S6脱がす[2] < 1 && f.S6進行 >= 2" ]
[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活" width="175" cond="f.S6脱がす[2] >= 1 && f.S6進行 >= 2" ]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"]
[選択画像  graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る" cond="f.S6脱がす[3] < 1" ]
[選択画像  graphic="sentaku/osiri.png"  target="*お尻見る" cond="f.S6脱がす[3] == 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"    ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S6脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S6脱がす[1] < 1 && f.S6脱がす[0] == 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S6脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす" cond="f.S6脱がす[3] < 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S6脱がす[4] < 1" ]
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
[clickable_map  visible=false  graphic=scene6/S6clickable1a.png storage=scene6.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene6/S6clickable1b.png storage=scene6.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == 1"  ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[if exp="clickable_map.click=='FF0000'"]
[eval exp="f.S6アナル[1] = 2"  cond="f.S6アナル[1] == 1 || f.S6アナル[1] == 3"  ]
[jump  target="*お尻撫でる"  ]

[elsif exp="clickable_map.click=='FFFF00'"]
[jump  target="*オマンコ触る"  ]

[elsif exp="clickable_map.click=='00FF00'"]
[eval exp="f.S6オマンコ[1] = 2"  cond="f.S6オマンコ[1] == 1"  ]
[jump  target="*アナル開き"]

[elsif exp="clickable_map.click=='FF00FF'"]
[free layer="0" page="fore" name="icon"]
[free layer="0" page="back" name="icon"]
[free layer="0" page="fore" name="maru"]
[free layer="0" page="back" name="maru"]
[if exp="f.S6進行 == 1"]
[eval exp="f.S6進行 = 0"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[endif]

[jump  target="*選択肢復活"]

[elsif exp="clickable_map.click=='A40001'"]
[eval exp="f.快感速度 = 0"  ]
[jump  target="*領域復活"]
[elsif exp="clickable_map.click=='AD6B00'"]
[eval exp="f.快感速度 = 1"  ]
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
[if exp="f.S6進行 == 0"]
[call  target="*話す1"  ]
;表情スキップ受け渡し
[elsif exp="f.S6進行 == 2"]
[call  target="*話す2"  ]
[eval exp="tf.表情スキップ = 0]
[elsif exp="f.S6進行 == 3"]
[call  target="*話す3"  ]
;表情スキップ触るで0
[elsif exp="f.S6進行 == 5"]
[call  target="*話す5"  ]
[eval exp="tf.表情スキップ = 0]
[endif]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_tyrano_code]
[if exp="f.S6話す == 0"]
[eval exp="f.kaikan_now = f.kaikan_now + 3"]
[call  target="*話す1a"  ]
[eval exp="tf.表情スキップ = 0]
[elsif exp="f.S6話す == 1"]
[eval exp="f.kaikan_now = f.kaikan_now + 3"]
[call  target="*話す1b"  ]
[eval exp="tf.表情スキップ = 0]
[elsif exp="f.S6話す >= 2"]
[eval exp="f.kaikan_now = f.kaikan_now + 4"]
[call  target="*話す1c"  ]
[eval exp="tf.表情スキップ = 1]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S6話す = f.S6話す + 1"]
[eval exp ="f.kaikan_now = 10" cond="f.kaikan_now > 10"]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ6"  ]
[return  ]
*話す1a

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti1.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「啊～这角度真棒」[改ページ]
[playse storage="niina171.ogg"]
[にぃな]「真是的～老让人家摆奇怪姿势」[改ページ]
[僕]「因为人家想从各个角度欣赏妮娜嘛」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me7.png"]
[口 storage="scene6/kuti6.png"]
[頬 storage="scene6/hoho.png"]
[絵変更]
[free layer="0" page="back" name="hoho" time="0"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina172.ogg"]
[にぃな]「你、你突然说什么帅气的台词啊明明只是个哥哥」[改ページ]
[僕]（......嗯？妮娜好像特别慌张的样子）[改ページ]
[_tb_end_text]

[return  ]
*話す1b

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「总觉得这样好像两个人在通风管道里前进」[改ページ]
[playse storage="niina173.ogg"]
[にぃな]「……啥意思？」[改ページ]
[僕]「游戏漫画里经常有的桥段啊」[改ページ]
[僕]「『绝对不可以偷看前面哦！』女孩子都会这么说」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu2.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina174.ogg"]
[にぃな]「绝·对·不·可·以·偷·看·前·面·哦！」[改ページ]
[僕]「哦哦！」[改ページ]
[_tb_end_text]

[return  ]
*話す1c

[tb_start_text mode=4 ]
[僕]「妮娜酱配合度真高啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina175.ogg"]
[にぃな]「人家是认真在说的啦！」[改ページ]

[_tb_end_text]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]「啊啊～好可爱的屁股」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina176.ogg"]
[にぃな]「……真的？」[改ページ]
[僕]「嗯嗯，真的真的。可爱得让人心脏都要揪起来了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me7.png"]
[口 storage="scene6/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina177.ogg"]
[にぃな]「哼、哼……嘛，嘛，就算被哥哥夸奖人家也不会开心就是了」[改ページ]
[僕]「……」[改ページ]
[僕]（妮娜的反应也太好懂了吧……）[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[eval exp="tf.表情スキップ = 0]
[call  target="*尻撫で表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6エロ台詞 == 0"]
[call  target="*話す3a"]
[elsif exp="f.S6エロ台詞 == 1"]
[call  target="*話す3b"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S6エロ台詞 == 2"]
[call  target="*話す3c"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S6エロ台詞 == 3"]
[call  target="*話す3d"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す3a

[tb_start_text mode=4 ]
[playse storage="niina178.ogg"]
[にぃな]「被、被摸屁股总感觉像遇到色狼一样」[改ページ]
[僕]「……你被骚扰过？」[改ページ]
[playse storage="niina179.ogg"]
[にぃな]「嗯～嗯，只是想象过这种情况而已啦」[改ページ]
[僕]「太好了……妮娜漂亮的小屁股，我是第一个摸到的」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*話す3b

[tb_start_text mode=4 ]
[playse storage="niina180.ogg"]
[にぃな]「女孩子屁股什么的…真的这么想摸吗？」[改ページ]
[僕]「嗯……特别是像妮娜这么可爱的女孩子」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me7.png"]
[口 storage="scene6/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina181.ogg"]
[にぃな]「你、你在说什么没头没脑的话呀」[改ページ]
[僕]（绝对在暗爽吧……）[改ページ]
[_tb_end_text]

[return  ]
*話す3c

[tb_start_text mode=4 ]
[僕]「今天的妮娜酱，心情好像特别好呢」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina182.ogg"]
[にぃな]「普、普通而已。就稍微被夸了一下才不会变这样啦」[改ページ]
[僕]（完全是自己说漏嘴了……）[改ページ]
[_tb_end_text]

[return  ]
*話す3d

[tb_start_text mode=4 ]
[僕]「被摸屁屁是什么感觉～？」[改ページ]
[playse storage="niina183.ogg"]
[にぃな]「呃、感觉有点安心……」[改ページ]
[_tb_end_text]

[return  ]
*話す5

[tb_start_text mode=4 ]
[僕]「啊啊，屁穴真的好像菊花一样」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 0"]
[眉 storage="scene6/mayu2.png" x=-6 y=9]
[目 storage="scene6/me9.png"]
[口 storage="scene6/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina184.ogg"]
[にぃな]「笨蛋笨蛋笨蛋！不许看那种地方」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る5"  cond="f.S6進行 == 5"  ]
[call  target="*にぃな見る4"  cond="f.S6進行 == 4"  ]
[call  target="*にぃな見る3"  cond="f.S6進行 == 3"  ]
[call  target="*にぃな見る2"  cond="f.S6進行 == 2"  ]
[call  target="*にぃな見る1"  cond="f.S6進行 == 0"  ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（汪汪队风格的妮娜……好H啊）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（这、这种姿势还不穿内裤太刺激了！）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_tyrano_code]
[call  target="*にぃな見る3a" cond="f.S6エロ台詞 <= 1"]
[call  target="*にぃな見る3b" cond="f.S6エロ台詞 >= 2"]
[_tb_end_tyrano_code]

[return  ]
*にぃな見る3a

[tb_start_text mode=4 ]
[僕]（被摸屁股还一脸害羞样……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3b

[tb_start_text mode=4 ]
[僕]（哎、怎么好像自己主动把屁股凑过来了……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る4

[tb_start_text mode=4 ]
[僕]（真是的～一副拿你没办法的样子）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る5

[tb_start_text mode=4 ]
[僕]（呜哇～妮娜酱气得不行了）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（哦哦、白色内裤正在逼近眼前）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*お尻見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*お尻見る3"  cond="f.S6進行 == 5"  ]
[call  target="*お尻見る2"  cond="f.S6進行 == 4"  ]
[call  target="*お尻見る1"  cond="f.S6進行 == 2 || f.S6進行 == 3"  ]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ6"  ]
[tb_hide_message_window  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*お尻見る1

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_start_tyrano_code]

[if exp="f.S6お尻[0] == 0 || f.S6お尻[0] == 3 && f.ランダム == 1"]
[eval exp="f.S6お尻[0] = f.S6お尻[0] + 1"  cond="f.S6お尻[0]　< 3"  ]
[call  target="*お尻見る1a"  ]

[elsif exp="f.S6お尻[0] == 1 || f.S6お尻[0] == 3 && f.ランダム == 2"]
[eval exp="f.S6お尻[0] = f.S6お尻[0] + 1"  cond="f.S6お尻[0]　< 3"  ]
[call  target="*お尻見る1b"  ]

[elsif exp="f.S6お尻[0] == 2 || f.S6お尻[0] == 3 && f.ランダム == 3"]
[eval exp="f.S6お尻[0] = f.S6お尻[0] + 1"  cond="f.S6お尻[0]　< 3"  ]

[call  target="*お尻見る1c"  ]
[endif]
[_tb_end_tyrano_code]

[return  ]
*お尻見る1a

[tb_start_text mode=4 ]
[僕]（哈啊、妮娜酱的圆润屁股就在眼前）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る1b

[tb_start_text mode=4 ]
[僕]（中间的竖缝从后面看也一清二楚！）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る1c

[tb_start_text mode=4 ]
[僕]（要是掰开那蜜桃臀的话妮娜酱的屁穴也……）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る2

[tb_start_text mode=4 ]
[僕]（今天也是漂亮的粉红色呢～[ハート]）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る3

[tb_start_text mode=4 ]
[僕]（这、这就是〇〇岁的肛门。小小的褶皱在一抽一抽地收缩着……）[改ページ]
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
[服脱がす1 mayu1=scene6/mayu3.png mayux1=-4 mayuy1=6 me1=scene6/me2.png kuti1=scene6/kuti7.png mayu2=scene6/mayu3.png me2=scene6/me7.png kuti2=scene6/kuti1.png mayu3=scene6/mayu1.png me3=scene6/me1.png kuti3=scene6/kuti7.png mayu4=scene6/mayu2.png me4=scene6/me2.png kuti4=scene6/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*服脱がす2

[tb_start_tyrano_code]
[服脱がす2 mayu1=scene6/mayu2.png mayux1=-4 mayuy1=6 me1=scene6/me2.png kuti1=scene6/kuti7.png]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*スカート脱がす2"  cond="f.スカート脱ぎ == 1"]
[call  target="*スカート脱がす1"  cond="f.スカート脱ぎ == null"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*スカート脱がす1

[tb_start_tyrano_code]
[スカート脱がす1 ase1=scene6/ase1.png mayu1=scene6/mayu3.png me1=scene6/me1.png kuti1=scene6/kuti5.png]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす2

[tb_start_tyrano_code]
[スカート脱がす2 ase1=scene6/ase1.png mayu1=scene6/mayu3.png me1=scene6/me1.png kuti1=scene6/kuti5.png mayu2=scene6/mayu3.png mayux2=-4 mayuy2=6 me2=scene6/me2.png kuti2=scene6/kuti4.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S6脱がす[2] = 1"  ]
[eval exp="f.kaikan_now = f.kaikan_now + 10"]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ6"  ]
[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti3.png"]
[call  target="*服の状態"  ]
[call  target="*体の状態"]
[絵変更 visible=false time=1000]
[_tb_end_tyrano_code]

[return  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*パンツ脱がす自重"  cond="f.kaikan_now < 10"  ]
[call  target="*パンツ脱がす1"  cond="f.kaikan_now >= 10"  ]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす自重

[tb_start_text mode=4 ]
[僕]（嗯～……在这美妙光景面前何必这么心急呢）[改ページ]
[_tb_end_text]

[return  ]
*パンツ脱がす1

[tb_start_text mode=4 ]
[僕]「好～今天也要元气满满地脱内裤脱脱脱～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6脱がす[3] = 1"  ]
[eval exp="f.S6進行 = 2"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me5.png"]
[口 storage="scene6/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]滑溜溜溜……[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 23"]
[_tb_end_tyrano_code]

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
[靴下脱がす1 mayu1=scene6/mayu3.png mayux1=-4 mayuy1=6 me1=scene6/me2.png kuti1=scene6/kuti6.png mayu2=scene6/mayu1.png me2=scene6/me7.png kuti2=scene6/kuti1.png]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S6脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*靴下脱がす2

[tb_start_tyrano_code]
[eval exp="f.S6脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*さわる自重1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「……」[改ページ]
[僕]（无论如何都要把这件裙子脱下来……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.スカート脱ぎ = 1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*お尻撫でる

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 30" cond="f.S6お尻[1] == 0"]
[eval exp="tf.表情スキップ = 0" cond="f.S6お尻[1] == 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*お尻撫でる3"  cond="f.S6お尻[1] == 1 && f.S6進行 == 3"  ]
[jump  target="*お尻撫でる2"  cond="f.S6お尻[1] == 1 && f.S6進行 != 3"  ]
[jump  target="*お尻撫でる1"  cond="f.S6お尻[1] == 0"  ]
[_tb_end_tyrano_code]

[s  ]
*お尻撫でる1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（那么，蜜桃臀的触感……试试看）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6お尻[1] = 1"  ]
[eval exp="f.S6進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]摸摸、摸摸……摸摸、摸摸……[改ページ]
[playse storage="niina185.ogg"]
[にぃな]「啊、在摸人家屁股」[改ページ]
[僕]「因为妮娜的小屁股就像布丁一样Q弹可爱嘛」[改ページ]
[playse storage="niina186.ogg"]
[にぃな]「哥哥这个大色鬼」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*お尻撫でる2

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 3"]
[eval exp="tf.表情スキップ = 0"]
[eval exp="f.S6エロ台詞 = f.S6エロ台詞 - 1"]
[eval exp="f.S6エロ台詞 = 0" cond="f.S6エロ台詞 < 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*尻撫で表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[call  target="*尻撫で台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*お尻撫でる3

[tb_start_tyrano_code]
[快感ランダム min=4 max=6 limit=220]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ6"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene6/otoko1b.png"  ]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*尻撫で表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6エロ台詞 == 0 && f.kaikan_now >= 70 || f.S6エロ台詞 == 1 && f.kaikan_now >= 120 || f.S6エロ台詞 == 2 && f.kaikan_now >= 170 || f.S6エロ台詞 == 3 && f.kaikan_now >= 220"  ]
[call  target="*尻撫で台詞"  ]
[jump  target="*お尻撫でる4"  cond="f.kaikan_now >= 220"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*お尻撫でる3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*お尻撫でる4

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[playse storage="niina187.ogg"]
[にぃな]「嗯……」[改ページ]
[僕]「那、那个，妮娜……？」[改ページ]
[にぃな]「……」[改ページ]
[僕]（不妙……妮娜这样下去真的要睡着了）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「那、那个，妮娜。我们做点别的吧」[改ページ]
[playse storage="niina188.ogg"]
[にぃな]「诶……嗯，倒也不是不行」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me5.png"]
[口 storage="scene6/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina189.ogg"]
[にぃな]「突、突然觉得下半身光溜溜的好丢人……」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.服脱ぎ = 2"]
[eval exp="f.スカート脱ぎ = 2"]
;↑上の服脱ぎフラグ※必要
[eval exp="f.S6クリア = 1"]
[シーン6変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene4b.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
*尻撫で表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 20 && f.kaikan_now < 70"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me5.png"]
[口 storage="scene6/kuti6.png"]
[elsif exp="f.kaikan_now >= 70 && f.kaikan_now < 120"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti7.png"]
[elsif exp="f.kaikan_now >= 120 && f.kaikan_now < 170"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti2.png"]
[elsif exp="f.kaikan_now >= 170 && f.kaikan_now < 220"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me7.png"]
[口 storage="scene6/kuti5.png"]
[elsif exp="f.kaikan_now >= 220"]
[眉 storage="scene6/mayu1.png" x=-8 y=12]
[目 storage="scene6/me8.png"]
[口 storage="scene6/kuti2.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*尻撫で台詞

[tb_start_tyrano_code]
[if exp="f.S6エロ台詞 == 0 && f.kaikan_now >= 70 && f.kaikan_now < 120"]
[tb_show_message_window  ]
[playse storage="niina190.ogg"]
[にぃな]「呐」[改ページ]
[eval exp="f.S6エロ台詞 = f.S6エロ台詞 + 1"]

[elsif exp="f.S6エロ台詞 == 1 && f.kaikan_now >= 120 && f.kaikan_now < 170"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S6エロ台詞 = f.S6エロ台詞 + 1"]

[elsif exp="f.S6エロ台詞 == 2 && f.kaikan_now >= 170 && f.kaikan_now < 220"]
[tb_show_message_window  ]
[playse storage="niina191.ogg"]
[にぃな]「哈啊……」[改ページ]
[eval exp="f.S6エロ台詞 = f.S6エロ台詞 + 1"]

[endif]
[_tb_end_tyrano_code]

[return  ]
*オマンコ触る

[tb_show_message_window  ]
[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_text mode=4 ]
[僕]「……」[改ページ]
[僕]（触碰那里的许可还没获得呢……）[改ページ]

[_tb_end_text]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*アナル開き

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*アナル開き3"  cond="f.S6アナル[1] >= 2"  ]
[call  target="*アナル開き2"  cond="f.S6アナル[1] == 1"  ]
[call  target="*アナル開き1"  cond="f.S6アナル[1] == 0"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 32]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*アナル開き1

[tb_start_text mode=4 ]
[僕]「来来，让我看看这里……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 5"]
[eval exp="f.S6アナル[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png" x=4 y=-6]
[目 storage="scene6/me6.png"]
[口 storage="scene6/kuti8.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]咕扭……っ[ハート][改ページ]
[playse storage="niina192.ogg"]
[にぃな]「啊啊、不行！」[改ページ]
[僕]「为～什么？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu2.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti8.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina193.ogg"]
[にぃな]「你、你明明知道的！这种事！」[改ページ]
[僕]「人家不知道嘛」[改ページ]
[_tb_end_text]

[return  ]
*アナル開き2

[tb_start_text mode=4 ]
[playse storage="niina194.ogg"]
[にぃな]「真是的～　快住手啦」[改ページ]
[僕]「好啦好啦……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 2"]
[eval exp="f.S6アナル[1] = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[return  ]
*アナル開き3

[tb_start_tyrano_code]
[if exp="f.S6アナル[1] == 3"]
[eval exp="f.S6アナル[1] = 2"]
[eval exp="f.S6進行 = 2"]
[elsif exp="f.S6アナル[1] == 2"]
[eval exp="f.S6アナル[1] = 3"]
[eval exp="f.S6進行 = 5"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6進行 == 5"]
[眉 storage="scene6/mayu2.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti3.png"]
[elsif exp="f.S6進行 == 2"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti1.png"]
[endif]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene6/otoko1a.png" cond="f.S6進行 == 3 || f.S6進行 == 1"]
[男 storage="scene6/otoko2.png" cond="f.S6進行 == 4"]
[男 storage="scene6/otoko3.png" cond="f.S6進行 == 5"]
[男 storage="scene6/otoko4a.png" cond="f.S6進行 == 6"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;服
[下着 storage="scene6/fuku1.png" cond="f.S6脱がす[0] < 1"]
;ブラ
[下着 storage="scene6/bura1.png" cond="f.S6脱がす[1] < 1 && f.S6脱がす[0] == 1"]
;パンツ
[下着 storage="scene6/pantu1.png" cond="f.S6脱がす[3] < 1"]
;スカート
[下着 storage="scene6/sukato1.png" cond="f.S6脱がす[2] < 1"]
;靴下
[下着 storage="scene6/socks1.png" cond="f.S6脱がす[4] < 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
;頬
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene6/hoho.png" cond="f.S6進行 >= 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene6/karada1.png"]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
