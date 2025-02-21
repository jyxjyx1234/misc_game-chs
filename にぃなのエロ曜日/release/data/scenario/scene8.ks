[_tb_system_call storage=system/_scene8.ks]

*scene8

[cm  ]
[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン8変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina334.ogg"]
[にぃな]「……还要来吗」[改ページ]
[僕]「嗯、不管多少次都想做呢……和妮娜酱一起」[改ページ]
[playse storage="niina335.ogg"]
[にぃな]「真是的，每次都马上说这种话」[改ページ]
[_tb_end_text]

*にぃなとエッチ2

[cm  ]
[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="300"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ8"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ8"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene8/mayu3.png" x=-8 y=4]
[目 storage="scene8/me2.png"]
[口 storage="scene8/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="2.ogg"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那、要开始咯」[改ページ]
[playse storage="niina336.ogg"]
[にぃな]「嗯」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S8進行 = 1"  ]
[眉 storage="scene8/mayu3.png" x=-10 y=5]
[目 storage="scene8/me7.png"]
[口 storage="scene8/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina337.ogg"]
[にぃな]「嗯……」[改ページ]
[僕]「噢、好像比之前……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S8進行 = 2"  ]
[眉 storage="scene8/mayu3.png" x=-12 y=6]
[目 storage="scene8/me11.png"]
[口 storage="scene8/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina338.ogg"]
[にぃな]「……嗯啊♡」[改ページ]
[僕]「啊、今天很顺利呢」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me5.png"]
[口 storage="scene8/kuti1.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina339.ogg"]
[にぃな]「……真的呢」[改ページ]
[_tb_end_text]

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
[選択画像  graphic="sentaku/ugoku.png"  target="*領域復活" width="175"]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"  ]
[選択画像  graphic="sentaku/henkou.png"  target="*体位変更" width="175"  ]
[選択画像  graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"  ]
[選択画像  graphic="sentaku/omanko.png"  target="*オマンコ見る" cond="f.S8脱がす[3] == 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S8脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S8脱がす[1] < 1 && f.S8脱がす[0] == 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S8脱がす[2] < 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S8脱がす[4] < 1" ]
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
[clickable_map  visible=false  graphic=scene8/S8clickable1a.png storage=scene8.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == null"   ]
[clickable_map  visible=false  graphic=scene8/S8clickable1b.png storage=scene8.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == 1"   ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*ピストン"  ]
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
[if exp="f.S8ピストン台詞 < 2"]
[call target="*話す1"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S8ピストン台詞 == 2"]
[call target="*話す2"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S8ピストン台詞 == 3"]
[call target="*話す3"]
[elsif exp="f.S8ピストン台詞 == 4"]
[call target="*話す4"]
[elsif exp="f.S8ピストン台詞 == 5"]
[call target="*話す5"]
[elsif exp="f.S8ピストン台詞 == 6"]
[call target="*話す6"]
[elsif exp="f.S8ピストン台詞 == 7"]
[call target="*話す7"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S8ピストン台詞 == 8"]
[call target="*話す8"]
[endif]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_text mode=4 ]
[僕]「呐、其实你挺期待再做爱的吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me1.png"]
[口 storage="scene8/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina340.ogg"]
[にぃな]「才、才没有呢」[改ページ]
[僕]「真的吗？」[改ページ]
[playse storage="niina341.ogg"]
[にぃな]「真的啦」[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]「怎么样？舒服起来的速度比之前快吗？」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me9.png"]
[口 storage="scene8/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina342.ogg"]
[にぃな]「可能……」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_text mode=4 ]
[playse storage="niina343.ogg"]
[にぃな]「今天好像特别厉害」[改ページ]
[僕]「哦～这不是很好嘛。快要爱上做爱了吧？」[改ページ]
[playse storage="niina344.ogg"]
[にぃな]「欧尼酱好坏～」[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_start_text mode=4 ]
[僕]「看你这湿漉漉的小穴，让我好好搅弄一番吧」[改ページ]
[playse storage="niina345.ogg"]
[にぃな]「哈啊♡[ハート]这样好舒服哦～」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す5

[tb_start_text mode=4 ]
[playse storage="niina346.ogg"]
[にぃな]「做爱好舒服...妮娜快要变得奇怪了啦」[改ページ]
[僕]「没关系啊～变得奇怪就好」[改ページ]

[_tb_end_text]

[return  ]
*話す6

[tb_start_text mode=4 ]
[僕]「哦～叫得真好听啊」[改ページ]
[playse storage="niina347.ogg"]
[にぃな]「会、会自己叫出来的嘛」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す7

[tb_start_text mode=4 ]
[僕]「看好了～要用鸡鸡顶起完全勃起的阴蒂咯」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-12 y=6]
[目 storage="scene8/me11b.png"]
[口 storage="scene8/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina348.ogg"]
[にぃな]「不要！不要！绝对不可以磨蹭那里！」[改ページ]
[僕]「Ｇ点有感觉了吧～」[改ページ]
[playse storage="niina349.ogg"]
[にぃな]「太有感觉了啦[ハート]」[改ページ]
[_tb_end_text]

[return  ]
*話す8

[tb_start_text mode=4 ]
[playse storage="niina350.ogg"]
[にぃな]「要…去…[ハート]了要…去…[ハート]了要…去[ハート]…了 要…[ハート]去…了」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る1"  cond="f.S8ピストン台詞 <= 2"  ]
[call  target="*にぃな見る2"  cond="f.S8ピストン台詞 >= 3 && f.S8ピストン台詞 <= 5"  ]
[call  target="*にぃな見る3"  cond="f.S8ピストン台詞 >= 6"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（太好了......今天看起来没问题）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（啊、看来药效相当强呢）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_text mode=4 ]
[僕]（啊啊～少女的娇喘声太棒了～）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*オマンコ見る1"  cond="f.S8ピストン台詞 <= 2"  ]
[call  target="*オマンコ見る2"  cond="f.S8ピストン台詞 >= 3 && f.S8ピストン台詞 <= 5"  ]
[call  target="*オマンコ見る3"  cond="f.S8ピストン台詞 >= 6"  ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*オマンコ見る1

[tb_start_text mode=4 ]
[僕]（我的鸡鸡完全插进去了……）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る2

[tb_start_text mode=4 ]
[僕]（哈啊……鸡鸡抽插得好顺畅）[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る3

[tb_start_text mode=4 ]
[僕]（蜜汁已经喷得到处都是了！）[改ページ]
[_tb_end_text]

[return  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S8脱がす[0] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[服脱がす5]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S8脱がす[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[ブラ脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S8脱がす[2] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[スカート脱がす3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S8脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*ピストン

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call target="*ピストン開始"  cond="f.kaikan_now == 0"]
[jump  target="*ピストン1"]
[_tb_end_tyrano_code]

[s  ]
*ピストン開始

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「来吧、今天也要用我的粗壮大肉棒噗嗤噗嗤地插个够哦～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png" x=-4 y=-8]
[目 storage="scene8/me4.png"]
[口 storage="scene8/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina351.ogg"]
[にぃな]「那、那是什么……」[改ページ]
[僕]「呵呵、很悸动对吧」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me1.png"]
[口 storage="scene8/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*ピストン1

[tb_start_tyrano_code]
[快感ランダム min=5 max=6 limit=300]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S8進行 = 1"]
[call  target="*ピストン表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=700 visible=false cond="f.S8ピストン台詞 <= 4"  ]
[絵変更 time=600 visible=false cond="f.S8ピストン台詞 >= 5"  ]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ8"  ]
[tb_start_tyrano_code]
[eval exp="f.S8進行 = 2"]
[call  target="*ピストン表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=600 visible=false cond="f.S8ピストン台詞 <= 4"  ]
[絵変更 time=500 visible=false cond="f.S8ピストン台詞 >= 5"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S8ピストン台詞 == 0 && f.kaikan_now >= 0 || f.S8ピストン台詞 == 1 && f.kaikan_now >= 30 || f.S8ピストン台詞 == 2 && f.kaikan_now >= 60 || f.S8ピストン台詞 == 3 && f.kaikan_now >= 90 || f.S8ピストン台詞 == 4 && f.kaikan_now >= 130 || f.S8ピストン台詞 == 5 && f.kaikan_now >= 170 || f.S8ピストン台詞 == 6 && f.kaikan_now >= 210 || f.S8ピストン台詞 == 7 && f.kaikan_now >= 250 || f.S8ピストン台詞 == 8 && f.kaikan_now >= 300"  ]
[call  target="*ピストン台詞"]
[jump  target="*ピストン2" cond="f.kaikan_now >= 300"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*ピストン1" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*ピストン2

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[playse storage="niina352.ogg"]
[にぃな]「妮娜、又要被哥哥的粗壮大鸡鸡干到高潮了啦～～」[ハート][ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「啊啊、今天的妮娜酱真的太工口了啊啊啊！！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-12 y=6]
[目 storage="scene8/me14b.png"]
[口 storage="scene8/kuti8b.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]咻～咻～[ハート]咻～咻～[ハート]咻～咻～[ハート]咻～咻～[ハート][ハート][ハート][ハート][ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina353.ogg"]
[にぃな]「啊啊啊[ハート]啊小穴[ハート]里灌满[ハート]了精液[ハート]」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-12 y=6]
[目 storage="scene8/me11b.png"]
[口 storage="scene8/kuti12b.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina354.ogg"]
[にぃな]「哈啊……嗯」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S8進行 = 0"]
[汁 storage="scene8/siru1.png"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me5b.png"]
[口 storage="scene8/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「哈、哈、哈、哈……最、最后那下、太厉害了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汁 storage="scene8/siru1.png"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me9.png"]
[口 storage="scene8/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina355.ogg"]
[にぃな]「哈啊、哈啊、哈啊、哈啊……感、感觉变得好奇怪」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S7クリア = 2"]
[eval exp="f.S8クリア = 2"]
[シーン8変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene0.ks"  target=""  ]
[s  ]
*ピストン表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[眉 storage="scene8/mayu3.png"]
[目 storage="scene8/me5.png"]
[口 storage="scene8/kuti1.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[眉 storage="scene8/mayu3.png" x=-8 y=4]
[目 storage="scene8/me6.png"]
[口 storage="scene8/kuti2.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png" x=-10 y=5]
[目 storage="scene8/me7.png"]
[口 storage="scene8/kuti5.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 130"]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png" x=-16 y=8]
[目 storage="scene8/me10.png"]
[口 storage="scene8/kuti9.png"]
[elsif exp="f.kaikan_now >= 130 && f.kaikan_now < 170"]
[汗 storage="scene8/ase1.png"]
[眉 storage="scene8/mayu3.png" x=-10 y=5]
[目 storage="scene8/me3b.png"]
[口 storage="scene8/kuti8.png"]
[elsif exp="f.kaikan_now >= 170 && f.kaikan_now < 210"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-12 y=6]
[目 storage="scene8/me11b.png"]
[口 storage="scene8/kuti9.png"]
[elsif exp="f.kaikan_now >= 210 && f.kaikan_now < 250"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-4 y=-8]
[目 storage="scene8/me8b.png"]
[口 storage="scene8/kuti13b.png"]
[elsif exp="f.kaikan_now >= 250 && f.kaikan_now < 300"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-4 y=-8]
[目 storage="scene8/me12b.png"]
[口 storage="scene8/kuti8b.png"]
[elsif exp="f.kaikan_now >= 300"]
[汗 storage="scene8/ase2.png"]
[眉 storage="scene8/mayu3.png" x=-12 y=6]
[目 storage="scene8/me11b.png"]
[口 storage="scene8/kuti12b.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*ピストン台詞

[tb_start_tyrano_code]
[if exp="f.S8ピストン台詞 == 0 && f.kaikan_now >= 0 && f.kaikan_now < 30"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 1 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina356.ogg"]
[にぃな]「嗯嗯……」[改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 2 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina357.ogg"]
[にぃな]「啊　[ハート]啊　啊[ハート]　啊已[ハート]、已经[ハート]？」[改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 3 && f.kaikan_now >= 90 && f.kaikan_now < 130"]
[tb_show_message_window  ]
[playse storage="niina358.ogg"]
[にぃな]「哈啊[ハート]　哈啊[ハート]　哈啊[ハート]　哈啊[ハート]哈啊[ハート]　哈啊[ハート]　哈啊[ハート]　哈啊[ハート]」[改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 4 && f.kaikan_now >= 130 && f.kaikan_now < 170"]
[tb_show_message_window  ]
[playse storage="niina359.ogg"]
[にぃな]「啊啊啊[ハート]啊呀　[ハート]稍微等[ハート]一下啦[ハート]」[ハート][ハート][改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 5 && f.kaikan_now >= 170 && f.kaikan_now < 210"]
[tb_show_message_window  ]
[playse storage="niina360.ogg"]
[にぃな]「哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊哈啊[ハート]哈啊哈[ハート]啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 6 && f.kaikan_now >= 210 && f.kaikan_now < 250"]
[tb_show_message_window  ]
[playse storage="niina361.ogg"]
[にぃな]「哇啊！？ 哇啊！？那里！！ 那里！！」[改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]

[elsif exp="f.S8ピストン台詞 == 7 && f.kaikan_now >= 250 && f.kaikan_now < 300"]
[tb_show_message_window  ]
[playse storage="niina362.ogg"]
[にぃな]「啊～啊[ハート]～啊～[ハート]啊～要[ハート]去了 [ハート]要去了哥[ハート]哥、又快要[ハート]那个了啦」[ハート][改ページ]
[eval exp="f.S8ピストン台詞 = f.S8ピストン台詞 + 1"]
[endif]

[_tb_end_tyrano_code]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;服
[下着 storage="scene8/fuku1.png" cond="f.S8脱がす[0] < 1"]
;ブラ
[下着 storage="scene8/bura1.png" cond="f.S8脱がす[1] < 1 && f.S8脱がす[0] == 1"]
;パンツ
;[下着 storage="scene8/pantu1.png" cond="f.S8脱がす[3] < 1"]
;スカート
[下着 storage="scene8/sukato1.png" cond="f.S8脱がす[2] < 1"]
;靴下
[下着 storage="scene8/socks1.png" cond="f.S8脱がす[4] < 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene8/hoho.png" cond="f.S8進行 >= 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene8/karada3.png" cond="f.S8進行 == 2"]
[体 storage="scene8/karada2.png" cond="f.S8進行 == 1"]
[体 storage="scene8/karada1.png" cond="f.S8進行 == 0"]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
*体位変更

[tb_start_tyrano_code]
[eval exp="f.S7進行=f.S8進行"]
[eval exp="f.S7話す=f.S8話す"]
[eval exp="f.S7にぃな=f.S8にぃな"]
[eval exp="f.S7おっぱい=f.S8おっぱい"]
[eval exp="f.S7オマンコ=f.S8オマンコ"]
[eval exp="f.S7チンコ=f.S8チンコ"]
[eval exp="f.S7脱がす=f.S8脱がす"]
[eval exp="f.S7挿入台詞=f.S8挿入台詞"]
[eval exp="f.S7ピストン台詞=f.S8ピストン台詞"]
[eval exp ="f.S7ピストン台詞 = f.S8ピストン台詞"]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene7b.ks"  target="*体位変更後"  ]
[s  ]
*体位変更後

[tb_bar_hide  time="1000"  wait="false"  name=""  ]
[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="300"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ8"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ8"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[call  target="*ピストン表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[call  storage="routine.ks"  target="*メッセージ2"  ]
[jump  target="*選択肢復活"  storage=""  ]
