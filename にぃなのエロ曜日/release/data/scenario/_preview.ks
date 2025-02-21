[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
*scene1

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン1変数リセット]
[if exp="f.kaisou == 1"]
[脱ぎ初期化]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible="false"]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*にぃな登場

[cm  ]
[tb_start_tyrano_code]
[背景 storage="scene1/dining.png"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
_　……在一楼的餐桌旁 我的母亲正和年纪相仿的女人交谈着。[改ページ]
_　两人似乎是学生时代的朋友 说要合伙开饮食店，今后每个周末都要在我家开战略会议。
_　[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene1/mayu1.png"]
[目 storage="scene1/me7.png"]
[口 storage="scene1/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false time=100]
[_tb_end_tyrano_code]

[tb_bar_set  max="120"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ1"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ1"  ]
[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="500"  loop="true"  storage="1.ogg"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
_　……然后这孩子是妮娜。现在〇〇岁。 是那位朋友的女儿。[改ページ]
_　直到昨天还和妈妈待在一起，今天却在我二楼的房间里无所事事地发呆。
_　
_　[改ページ]
[_tb_end_text]

*選択肢復活

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像 graphic="sentaku/hanasu.png" target="*話す"]
[選択画像 graphic="sentaku/miru.png" target="*見る選択肢"]
[選択画像 graphic="sentaku/tugi.png" target="*次へ" cond="f.S1クリア == 1 && f.kaikan_now >= 120"]
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
[選択画像 graphic="sentaku/nina.png" target="*にぃな見る"]
[選択画像 graphic="sentaku/fuku.png" target="*服見る"]
[選択画像 graphic="sentaku/pantu.png" target="*パンツ見る"]
[選択画像 graphic="sentaku/asi.png" target="*脚見る"]
[選択画像 graphic="sentaku/modoru.png" target="*選択肢復活"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
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
[call  target="*話す6"  cond="f.S1話す==5"  ]
[call  target="*話す5"  cond="f.S1話す==4 && f.kaikan_now>=120"  ]
[call  target="*話す4"  cond="f.S1話す == 3 && f.kaikan_now >= 60 || f.S1話す == 4 && f.kaikan_now < 120"  ]
[call  target="*話す3"  cond="f.S1話す == 2 || f.S1話す == 3 && f.kaikan_now < 60"  ]
[call  target="*話す2"  cond="f.S1話す == 1"  ]
[call  target="*話す1"  cond="f.S1話す == 0"  ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
*話す1

[tb_start_text mode=4 ]
[僕]「……」[改ページ]
[にぃな]「……」[改ページ]
[僕]「……」[改ページ]
[にぃな]「……」[改ページ]
[僕]「我说......你不觉得无聊吗？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina001.ogg"]
[にぃな]「嗯......超无聊」[改ページ]
[僕]「明明不用跟着妈妈来 留在家里看家就好了」[改ページ]
[playse storage="niina002.ogg"]
[にぃな]「看家？嗯~...... 那样也不太」[改ページ]
[僕]「为~什么？」[改ページ]
[playse storage="niina003.ogg"]
[にぃな]「因为电视上看到过...关于幽灵之类的」[改ページ]
[僕]「啊 你害怕啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png" x=8 y=4]
[目 storage="scene1/me2.png"]
[口 storage="scene1/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「......」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me7.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina004.ogg"]
[にぃな]「才不怕呢......」[改ページ]
[僕]（刚才说的幽灵是怎么回事！？）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1話す = 1"]
[_tb_end_tyrano_code]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]「嘛 虽然怎样都好......怎么办？看样子还要持续很久」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png" x=8 y=4]
[目 storage="scene1/me2.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina005.ogg"]
[にぃな]「嗯，好像是呢」[改ページ]
[僕]「要不要做点什么？两个人一起能玩的开心事儿之类的」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu1.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina006.ogg"]
[にぃな]「啊哈，两个人能玩的开心事儿？接龙游戏之类的？」[改ページ]
[僕]「不要啦～　那样很快就结束了吧。要不一起打游戏？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me4.png"]
[口 storage="scene1/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina007.ogg"]
[にぃな]「唔唔……妮娜不喜欢打游戏。而且玩得很烂」[改ページ]
[僕]「啊啊这样……」[改ページ]
[僕]（嗯～，游戏不要吗）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1話す = 2"]
[_tb_end_tyrano_code]

[return  ]
*話す3

[tb_start_text mode=4 ]
[僕]「啊，那不然下将棋怎么样？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina008.ogg"]
[にぃな]「将～棋？妮娜不知道怎么玩啦」[改ページ]
[僕]「这样啊。那～我来教你棋子的走法吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png" x=8 y=4]
[目 storage="scene1/me9.png"]
[口 storage="scene1/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina009.ogg"]
[にぃな]「呜、头突然好痛……」[改ページ]
[僕]「……」[改ページ]
[僕]（明显一脸不情愿……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1話す = 3"]
[_tb_end_tyrano_code]

[return  ]
*話す4

[tb_start_text mode=4 ]
[僕]「游戏也不行，将棋也不行吗……那、那么──」[改ページ]
[僕]「……干脆来做工口的事吧？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png" x=-8 y=-4]
[目 storage="scene1/me3.png"]
[口 storage="scene1/kuti5.png"]
[頬 storage="scene1/hoho1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina010.ogg"]
[にぃな]「哎哎！」[改ページ]
[僕]「因、因为实在没事做啊。再说我们……年轻男女嘛」[改ページ]
[playse storage="niina011.ogg"]
[にぃな]「可、可是，妮娜还是〇〇生呀？」[改ページ]
[僕]「我虽然喜欢……〇〇生」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[free layer="0" page="back" name="hoho" time="0"]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina012.ogg"]
[にぃな]「哥哥～……原来是萝莉控啊」[改ページ]
[僕]「嗯……」[改ページ]
[僕]（说漏嘴了……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1話す = 4"]
[_tb_end_tyrano_code]

[return  ]
*話す5

[tb_start_text mode=4 ]
[僕]「我、我要是被讨厌就算了。因为妮娜酱是我超喜欢的类型，只是抱着侥幸心理说说而已」[改ページ]
[playse storage="niina013.ogg"]
[にぃな]「哼嗯……」[改ページ]
[にぃな]「……」[改ページ]
[playse storage="niina014.ogg"]
[にぃな]「……可以哦」[改ページ]
[僕]「就、就是说啊～说了奇怪的话真的对不起。太闲了，整个人都不正常了」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu1.png" x=-8 y=-4]
[目 storage="scene1/me3.png"]
[口 storage="scene1/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「那、那我从接龙开始，新干线......那个──」[改ページ]
[僕]「诶～～～～！！真的可以吗！？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png" x=8 y=4]
[目 storage="scene1/me2.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina015.ogg"]
[にぃな]「嘛、稍微一下下的话......」[改ページ]
[僕]「你、你是认真的！？不是在耍我吧！？」[改ページ]
[playse storage="niina016.ogg"]
[にぃな]「嗯......没在耍你啦。妮娜，不会说谎的」[改ページ]
[僕]「太好啦！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina017.ogg"]
[にぃな]「但、但是！要是妮娜说不要的话绝对要停下哦」[改ページ]
[僕]「知道了，我保证！」[改ページ]
[僕]（啊啊、超级开心！这种事情真的存在吗！）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1話す = 5"]
[eval exp="f.S1クリア = 1"]
[_tb_end_tyrano_code]

[return  ]
*話す6

[tb_start_text mode=4 ]
[僕]「哈啊哈啊、对可爱的〇〇生女孩子做那种事还有这种事……」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[eval exp="tf.表情スキップ = 1]
[眉 storage="scene1/mayu2.png" x=8 y=4]
[目 storage="scene1/me2.png"]
[口 storage="scene1/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina018.ogg"]
[にぃな]「真、真的只能一下下哦……」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[cm  ]
[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S1にぃな[0] < 3"  ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[if exp="f.S1にぃな[0] == 0 || f.S1にぃな[0] == 3 && f.ランダム == 1"]
[eval exp="f.S1にぃな[0] = f.S1にぃな[0] + 1"  cond="f.S1にぃな[0]　< 3"  ]
[僕]（嗯……好神奇。我的房间里居然有女孩子）[改ページ]
[elsif exp="f.S1にぃな[0] == 1 || f.S1にぃな[0] == 3 && f.ランダム == 2"]
[eval exp="f.S1にぃな[0] = f.S1にぃな[0] + 1"  cond="f.S1にぃな[0]　< 3"  ]
[僕]（妮娜酱、真的好可爱啊。第一次见面时心跳超快的）[改ページ]
[elsif exp="f.S1にぃな[0] == 2 || f.S1にぃな[0] == 3 && f.ランダム == 3"]
[eval exp="f.S1にぃな[0] = f.S1にぃな[0] + 1"  cond="f.S1にぃな[0]　< 3"  ]
[僕]（不过……这种大胆的放松姿势。都快分不清是谁的房间了）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ1"  ]
[jump  target="*見る選択肢"  storage=""  ]
*服見る

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S1服[0] < 3"  ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S1服[0] == 0 || f.S1服[0] == 3 && f.ランダム == 1"]
[eval exp="f.S1服[0] = f.S1服[0] + 1"  cond="f.S1服[0]　< 3"  ]
[僕]（妮娜酱最近经常穿那种露肩很多的衣服。那个叫什么来着？）[改ページ]
[elsif exp="f.S1服[0] == 1 || f.S1服[0] == 3 && f.ランダム == 2"]
[eval exp="f.S1服[0] = f.S1服[0] + 1"  cond="f.S1服[0]　< 3"  ]
[僕]（嘿嘿、胸口那里微微鼓起……感觉在发育期呢）[改ページ]
[elsif exp="f.S1服[0] == 2 || f.S1服[0] == 3 && f.ランダム == 3"]
[eval exp="f.S1服[0] = f.S1服[0] + 1"  cond="f.S1服[0]　< 3"  ]
[僕]（从侧面能不能稍微瞄到……）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ1"  ]
[jump  target="*見る選択肢"  storage=""  ]
*パンツ見る

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S1パンツ[0] < 3"  ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S1パンツ[0] == 0 || f.S1パンツ[0] == 3 && f.ランダム == 1"]
[eval exp="f.S1パンツ[0] = f.S1パンツ[0] + 1"  cond="f.S1パンツ[0]　< 3"  ]
[僕]「……」[改ページ]
[僕]（从刚才开始内裤就完全走光了……该不该告诉她呢？）[改ページ]
[僕]（不要、别乱想……不知为妙）[改ページ]

[elsif exp="f.S1パンツ[0] == 1 || f.S1パンツ[0] == 3 && f.ランダム == 2"]
[eval exp="f.S1パンツ[0] = f.S1パンツ[0] + 1"  cond="f.S1パンツ[0]　< 3"  ]
[僕]（这～种不设防的样子，果然还是小孩子啊。......虽然让我超开心的）[改ページ]

[elsif exp="f.S1パンツ[0] == 2 || f.S1パンツ[0] == 3 && f.ランダム == 3"]
[eval exp="f.S1パンツ[0] = f.S1パンツ[0] + 1"  cond="f.S1パンツ[0]　< 3"  ]
[僕]（啊、真好啊，纯白内裤。心灵都被净化了）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ1"  ]
[jump  target="*見る選択肢"  storage=""  ]
*脚見る

[tb_start_tyrano_code]
[eval exp="f.kaikan_now = f.kaikan_now + 10"  cond="f.S1脚[0] < 3"  ]
[_tb_end_tyrano_code]

[tb_eval  exp="f.ランダム=Math.floor(Math.random()*(3-1+1)+1)"  name="ランダム"  cmd="="  op="r"  val="1"  val_2="3"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[if exp="f.S1脚[0] == 0 || f.S1脚[0] == 3 && f.ランダム == 1"]
[eval exp="f.S1脚[0] = f.S1脚[0] + 1"  cond="f.S1脚[0]　< 3"  ]
[僕]（哦哦、穿着过膝袜......好时尚）[改ページ]
[elsif exp="f.S1脚[0] == 1 || f.S1脚[0] == 3 && f.ランダム == 2"]
[eval exp="f.S1脚[0] = f.S1脚[0] + 1"  cond="f.S1脚[0]　< 3"  ]
[僕]（妮娜酱的腿型、好修长啊）[改ページ]
[elsif exp="f.S1脚[0] == 2 || f.S1脚[0] == 3 && f.ランダム == 3"]
[eval exp="f.S1脚[0] = f.S1脚[0] + 1"  cond="f.S1脚[0]　< 3"  ]
[僕]（啊啊、好想蹭蹭那雪白的大腿......）[改ページ]
[endif]
[_tb_end_text]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ1"  ]
[jump  target="*見る選択肢"  storage=""  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;ブラ
[下着 storage="scene1/bura1.png" cond="f.S1脱がす[1] < 1"]
;パンツ
[下着 storage="scene1/pantu1.png" cond="f.S1脱がす[3] < 1"]
;服
[下着 storage="scene1/fuku1.png" cond="f.S1脱がす[0] < 1"]
[下着 storage="scene1/fuku2.png" cond="f.S1脱がす[0] == 1"]
;靴下
[下着 storage="scene1/socks1.png" cond="f.S1脱がす[4] < 1"]
;スカート
[下着 storage="scene1/sukato1.png" cond="f.S1脱がす[2] < 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene1/karada1.png"]
[_tb_end_tyrano_code]

[return  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S1クリア = 1"]
;↑消しても消さなくても
[シーン1変数リセット]
[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene2.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
