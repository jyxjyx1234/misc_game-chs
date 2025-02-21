[_tb_system_call storage=system/_scene6b.ks]

*scene6b

[call  storage="routine.ks"  target="*メッセージ2"  ]
[tb_start_tyrano_code]
[シーン6変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*お尻

[cm  ]
[tb_start_text mode=4 ]
[僕]「那～这次就在那张床上……」[改ページ]
[playse storage="niina438.ogg"]
[にぃな]「啊～ 妮娜的屁股被看到了吧」[改ページ]
[僕]「没错～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="300"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ6b"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ6b"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti3.png"]
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
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"]
[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活" width="175" exp="f.S6行動 = 0" cond="f.S6進行 < 6" ]
[選択画像  graphic="sentaku/ireru.png"  target="*領域復活" width="175" exp="f.S6行動 = 1" cond="f.S6進行 >= 2" ]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175"]
[選択画像  graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"    ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る"     cond="f.S6脱がす[3] < 1" ]
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
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"]
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
[clickable_map  visible=false  graphic=scene6/S6clickable1a.png storage=scene6b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S6行動 == 0 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene6/S6clickable2a.png storage=scene6b.ks target=*領域選択2 cursorImage=cursor/yubi.png cond="f.S6行動 == 1 && f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene6/S6clickable1b.png storage=scene6b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.S6行動 == 0 && f.kaisou == 1"  ]
[clickable_map  visible=false  graphic=scene6/S6clickable2b.png storage=scene6b.ks target=*領域選択2 cursorImage=cursor/yubi.png cond="f.S6行動 == 1 && f.kaisou == 1"  ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*お尻撫でる"  cond="f.S6進行 < 2"]
[eval exp="f.S6アナル[1] = 2"  cond="f.S6アナル[1] == 1 || f.S6アナル[1] == 3"]
[eval exp="f.S6オマンコ[1] = 2"  cond="f.S6オマンコ[1] == 1"]

[jump  target="*お尻撫でる"  cond="f.S6進行 >= 2"]
[elsif exp="clickable_map.click=='FFFF00'"]
[jump  target="*お尻撫でる"  cond="f.S6進行 < 2"]
[eval exp="f.S6アナル[1] = 2"  cond="f.S6アナル[1] == 1 || f.S6アナル[1] == 3"]
[jump  target="*オマンコ開く"  cond="f.S6進行 >= 2"]

[elsif exp="clickable_map.click=='00FF00'"]
[jump  target="*お尻撫でる"  cond="f.S6進行 < 2"]
[eval exp="f.S6オマンコ[1] = 2"  cond="f.S6オマンコ[1] == 1"]
[jump  target="*アナル開き"  cond="f.S6進行 >= 2"]

[elsif exp="clickable_map.click=='FF00FF'"]
[free layer="0" page="fore" name="icon"]
[free layer="0" page="back" name="icon"]
[free layer="0" page="fore" name="maru"]
[free layer="0" page="back" name="maru"]
[jump  target="*選択肢復活"  storage=""  ]

[elsif exp="clickable_map.click=='A40001'"]
[eval exp="f.快感速度 = 0"]
[jump  target="*領域復活"]

[elsif exp="clickable_map.click=='AD6B00'"]
[eval exp="f.快感速度 = 1"]
[jump  target="*領域復活"]

[else]
;それ以外の範囲は全て領域復帰！
[jump  target="*領域復活"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*領域選択2

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[if exp="clickable_map.click=='FFFF00'"]
[jump  target="*オマンコ挿入"]

[elsif exp="clickable_map.click=='00FF00'"]
[jump  target="*アナル挿入"]

[elsif exp="clickable_map.click=='FF00FF'"]
[free layer="0" page="fore" name="icon"]
[free layer="0" page="back" name="icon"]
[free layer="0" page="fore" name="maru"]
[free layer="0" page="back" name="maru"]
[jump  target="*選択肢復活"  storage=""  ]

[elsif exp="clickable_map.click=='A40001'"]
[eval exp="f.快感速度 = 0"]
[jump  target="*領域復活"]

[elsif exp="clickable_map.click=='AD6B00'"]
[eval exp="f.快感速度 = 1"]
[jump  target="*領域復活"]

;他範囲は全て領域復帰！
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
[call  target="*話す1"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S6進行 == 2"]
[call  target="*話す2"]
[eval exp="tf.表情スキップ = 0]
[elsif exp="f.S6進行 == 4"]
[call  target="*話す4"]
[eval exp="tf.表情スキップ = 0]
[elsif exp="f.S6進行 == 5"]
[call  target="*話す5"]
[eval exp="tf.表情スキップ = 1]
[elsif exp="f.S6進行 == 6"]
[call  target="*話す6"]
[endif]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_text mode=4 ]
[僕]「呐，我想看屁股的事，你是怎么知道的啊？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene6/mayu1.png" x=-4 y=6]
[目 storage="scene6/me2 .png"]
[口 storage="scene6/kuti4.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina439.ogg"]
[にぃな]「哎～ 因为哥哥你，看起来就是喜欢屁股嘛～」[改ページ]
[僕]「嗯，最喜欢了」[改ページ]

[_tb_end_text]

[return  ]
*話す2

[tb_start_text mode=4 ]
[僕]「啊啊，无论什么时候看都是超可爱的屁股」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina440.ogg"]
[にぃな]「……有那么夸张吗？」[改ページ]
[僕]「嗯，妮娜的屁股最棒了」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu2.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina441.ogg"]
[にぃな]「说什么呢，难道还有第二名吗？」[改ページ]
[僕]「没、没有啦！」[改ページ]
[僕]（妮娜酱偶尔也挺可怕的）[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_start_text mode=4 ]
[僕]「哈啊～太棒了……倒着看的〇〇岁幼嫩小穴」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[男 storage="scene6/otoko2.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina442.ogg"]
[にぃな]「……哪里奇怪了吗？」[改ページ]
[僕]「就像第一次看到时那么新鲜」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu2.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina443.ogg"]
[にぃな]「别、别说这种话啦」[改ページ]
[_tb_end_text]

[return  ]
*話す5

[tb_start_text mode=4 ]
[僕]「啊～屁眼真的好像菊花一样」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[眉 storage="scene6/mayu2.png" x=-6 y=9]
[目 storage="scene6/me9.png"]
[口 storage="scene6/kuti5.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina444.ogg"]
[にぃな]「笨蛋笨蛋笨蛋笨蛋！不许看那里」[改ページ]
[_tb_end_text]

[return  ]
*話す6

[tb_start_tyrano_code]
[if exp="f.S6後背位台詞 == 0"]
[call target="*話す6a"]
[elsif exp="f.S6後背位台詞 == 1"]
[call target="*話す6b"]
[elsif exp="f.S6後背位台詞 == 2"]
[call target="*話す6c"]
[elsif exp="f.S6後背位台詞 == 3"]
[call target="*話す6d"]
[elsif exp="f.S6後背位台詞 == 4"]
[call target="*話す6e"]
[elsif exp="f.S6後背位台詞 == 5"]
[call target="*話す6f"]
[elsif exp="f.S6後背位台詞 == 6"]
[call target="*話す6g"]
[elsif exp="f.S6後背位台詞 == 7"]
[call target="*話す6h"]
[elsif exp="f.S6後背位台詞 == 8"]
[call target="*話す6i"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す6a

[tb_start_text mode=4 ]
[playse storage="niina445.ogg"]
[にぃな]「嘿嘿……快点嘛」[改ページ]
[_tb_end_text]

[return  ]
*話す6b

[tb_start_text mode=4 ]
[僕]「怎么样？从后面来感觉不同吧？」[改ページ]
[playse storage="niina446.ogg"]
[にぃな]「没、没有……不一样」[改ページ]
[僕]「具体～是什么感觉？」[改ページ]
[playse storage="niina447.ogg"]
[にぃな]「那个、就是、顶到的地方……」[改ページ]
[_tb_end_text]

[return  ]
*話す6c

[tb_start_text mode=4 ]
[playse storage="niina448.ogg"]
[にぃな]「用这种姿势做的时候…心跳得好快呢」[改ページ]
[僕]「是不是感觉自己变成野生动物了？」[改ページ]
[playse storage="niina449.ogg"]
[にぃな]「嗯……可能吧」[改ページ]
[_tb_end_text]

[return  ]
*話す6d

[tb_start_text mode=4 ]
[playse storage="niina450.ogg"]
[にぃな]「原来会顶到那种地方啊」[改ページ]
[僕]「这里还是第一次被摩擦到吧…我会好好帮你搓揉的哦」[改ページ]
[playse storage="niina451.ogg"]
[にぃな]「啊　[ハート]啊　啊[ハート]　啊啊[ハート]　啊　[ハート]啊　[ハート]啊」[ハート][ハート][ハート][改ページ]
[_tb_end_text]

[return  ]
*話す6e

[tb_start_text mode=4 ]
[playse storage="niina452.ogg"]
[にぃな]「呐、哥哥。妮娜…可能挺喜欢后入的」[ハート][改ページ]
[僕]「嗯，妮娜的脸上都写满了呢」[改ページ]
[_tb_end_text]

[return  ]
*話す6f

[tb_start_text mode=4 ]
[僕]「怎么样？被从后面噗嗤噗嗤插着娇小萝莉小穴舒服吗？」[改ページ]
[playse storage="niina453.ogg"]
[にぃな]「嗯～被[ハート]从后面噗嗤噗嗤插着娇小萝莉小穴，妮娜感觉超级舒服～」[ハート][改ページ]

[_tb_end_text]

[return  ]
*話す6g

[tb_start_text mode=4 ]
[playse storage="niina454.ogg"]
[にぃな]「插太深了　[ハート]插太深了哥哥[ハート]顶到最里面了呀」[ハート][改ページ]
[僕]「看招看招！对着小丫头子宫咚咚地顶下去啰！」[改ページ]
[_tb_end_text]

[return  ]
*話す6h

[tb_start_text mode=4 ]
[playse storage="niina455.ogg"]
[にぃな]「好舒服　好[ハート]舒服　背后位[ハート]超级舒服」[ハート][改ページ]
[僕]「交尾做爱最棒～？」[改ページ]
[playse storage="niina456.ogg"]
[にぃな]「嗯～最[ハート]棒～工口做[ハート]爱真的最棒～」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す6i

[tb_start_text mode=4 ]
[playse storage="niina457.ogg"]
[にぃな]「要去了　要去[ハート]了　妮娜要被背[ハート]后位弄高潮了」[ハート][改ページ]
[僕]「高潮吧！高潮吧！最喜欢背后位了，工口小骚货」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る6"  cond="f.S6進行 == 6"]
[call  target="*にぃな見る5"  cond="f.S6進行 == 5"]
[call  target="*にぃな見る4"  cond="f.S6進行 == 4"]
[call  target="*にぃな見る3"  cond="f.S6進行 == 3 || f.S6進行 == 1 "]
[call  target="*にぃな見る2"  cond="f.S6進行 == 2"]
[call  target="*にぃな見る1"  cond="f.S6進行 == 0"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（汪汪队风格的妮娜…好H）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（这、这种姿势下没穿内裤太刺激了！）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_text mode=4 ]
[僕]（被摸屁股绝对很爽吧…）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る4

[tb_start_text mode=4 ]
[僕]（好像对我喜欢那里的事有点无语…）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る5

[tb_start_text mode=4 ]
[僕]（呜哇～妮娜超级生气的）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る6

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*にぃな見る6a"  cond="f.S6後背位台詞 <= 2"]
[call  target="*にぃな見る6b"  cond="f.S6後背位台詞 >= 3 &&f.S6後背位台詞 <= 4"]
[call  target="*にぃな見る6c"  cond="f.S6後背位台詞 >= 5"]
[_tb_end_tyrano_code]

[return  ]
*にぃな見る6a

[tb_start_text mode=4 ]
[僕]（啊啊～背后位果然让人兴奋啊）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る6b

[tb_start_text mode=4 ]
[僕]（哦哦～看起来相当有感觉了）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る6c

[tb_start_text mode=4 ]
[僕]（妮娜已经high到不行了！）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（哦哦～白色内裤正在逼近眼前）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*お尻見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*お尻見る4"  cond="f.S6進行 == 6"]
[call  target="*お尻見る3"  cond="f.S6進行 == 5"]
[call  target="*お尻見る2"  cond="f.S6進行 == 4"]
[call  target="*お尻見る1"  cond="f.S6進行 == 2 || f.S6進行 == 3"]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*お尻見る1

[tb_start_text mode=4 ]
[僕]（哈啊…妮娜圆滚滚的屁股就在眼前）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る2

[tb_start_text mode=4 ]
[僕]（今天也是漂亮的粉红色呢）[ハート][改ページ]
[_tb_end_text]

[return  ]
*お尻見る3

[tb_start_text mode=4 ]
[僕]（啊、小小的褶皱在抽搐着……）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る4

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*お尻見る4a"  cond="f.S6後背位台詞 <= 4"]
[call  target="*お尻見る4b"  cond="f.S6後背位台詞 >= 5"]
[_tb_end_tyrano_code]

[return  ]
*お尻見る4a

[tb_start_text mode=4 ]
[僕]（哈啊～光滑的蜜桃臀贴在我肚子上……好幸福）[改ページ]
[_tb_end_text]

[return  ]
*お尻見る4b

[tb_start_text mode=4 ]
[僕]（小、小小的屁股在摇晃耶）[改ページ]
[_tb_end_text]

[return  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S6脱がす[0] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[服脱がす5]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6進行 < 3"]
[eval exp="tf.表情スキップ = 20"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti3.png"]
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
[eval exp="f.S6脱がす[1] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[ブラ脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6進行 < 3"]
[eval exp="tf.表情スキップ = 21"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti3.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S6脱がす[2] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[スカート脱がす3]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6進行 < 3"]
[eval exp="tf.表情スキップ = 22"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti1.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「好啦，现在重新开始脱内裤～」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6脱がす[3] = 1"]
[eval exp="f.S6進行 = 2"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu1.png" x=-4 y=6]
[目 storage="scene6/me5.png"]
[口 storage="scene6/kuti7.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]咻溜咻溜咻溜……[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 23"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S6脱がす[4] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[靴下脱がす2]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6進行 < 3"]
[eval exp="tf.表情スキップ = 22"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti1.png"]
[else]
[backlay]
[endif]
[call  target="*服の状態"]
[絵変更 time=1000 visible=false]
[jump  target="*選択肢復活"  storage=""  ]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*お尻撫でる

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 30"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S6進行 == 0"]
[call  target="*お尻撫でる1"]
[else]
[call  target="*お尻撫でる2"]
[endif]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*領域復活"  storage=""  ]
[s  ]
*お尻撫でる1

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]摸摸、摸摸……摸摸、摸摸……[改ページ]
[僕]「哈啊～真是可爱的屁股」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina458.ogg"]
[にぃな]「果然像在被痴汉骚扰。可以踹飞你吗？」[改ページ]
[僕]「求求你住手啦！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[call  storage="scene6b.ks"  target="*男消去"]
[_tb_end_tyrano_code]

[return  ]
*お尻撫でる2

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]摸摸、摸摸……摸摸、摸摸……[改ページ]
[にぃな]「……」[改ページ]
[僕]「嗯～摸太多妮娜的屁股会让她睡着啦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me7.png"]
[口 storage="scene6/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina459.ogg"]
[にぃな]「才没有那种事呢……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[call  storage="scene6b.ks"  target="*男消去"]
[_tb_end_tyrano_code]

[return  ]
*オマンコ開く

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*オマンコ開く2"  cond="f.S6オマンコ[1] >= 1"]
[call  target="*オマンコ開く1"  cond="f.S6オマンコ[1] == 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 31]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*オマンコ開く1

[tb_start_text mode=4 ]
[僕]「那接下来就看看妮娜可爱的花瓣这边……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6オマンコ[1] = 1"]
[eval exp="f.S6進行 = 4"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me5.png"]
[口 storage="scene6/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]啾嗯嗯……♡[ハート][改ページ]
[playse storage="niina460.ogg"]
[にぃな]「啊、喂、别擅自……」[改ページ]
[僕]「有什么关系嘛～我们早就互相看光光的关系了」[改ページ]
[playse storage="niina461.ogg"]
[にぃな]「哥、哥哥是自己主动给我看的吧」[改ページ]
[_tb_end_text]

[return  ]
*オマンコ開く2

[tb_start_tyrano_code]
[if exp="f.S6オマンコ[1] == 1"]
[eval exp="f.S6オマンコ[1] = 2"]
[eval exp="f.S6進行 = 2"]
[elsif exp="f.S6オマンコ[1] == 2"]
[eval exp="f.S6オマンコ[1] = 1"]
[eval exp="f.S6進行 = 4"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti3.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*アナル開き

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*アナル開き3"  cond="f.S6アナル[1] >= 2"]
[call  target="*アナル開き2"  cond="f.S6アナル[1] == 1"]
[call  target="*アナル開き1"  cond="f.S6アナル[1] == 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 32]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
[s  ]
*アナル開き1

[tb_start_text mode=4 ]
[僕]「好啦，这里也让我看看……」[改ページ]
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
[エロ音1]嗯咕……♡[ハート][改ページ]
[playse storage="niina462.ogg"]
[にぃな]「啊啊、不行！」[改ページ]
[僕]「为～什么？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu2.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti8.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina463.ogg"]
[にぃな]「这、这种事你明明懂的！」[改ページ]
[僕]「人家不懂嘛」[改ページ]
[_tb_end_text]

[return  ]
*アナル開き2

[tb_start_text mode=4 ]
[playse storage="niina464.ogg"]
[にぃな]「真是的 都说了不要嘛」[改ページ]
[僕]「知道啦知道啦……」[改ページ]
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
*オマンコ挿入

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call target="*男消去"  cond="f.S6進行 <= 5 && f.S6進行 >= 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*オマンコ挿入3"  cond="f.S6オマンコ[2] == 1 && f.S6進行 == 6"]
[jump  target="*オマンコ挿入2"  cond="f.S6オマンコ[2] == 1 && f.S6進行 != 6"]
[jump  target="*オマンコ挿入1"  cond="f.S6オマンコ[2] == 0"]
[_tb_end_tyrano_code]

[s  ]
*ピストン開始

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「那，要开始咯」[改ページ]
[_tb_end_text]

[return  ]
*オマンコ挿入1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「呐，来做吧……做爱」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu1.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina465.ogg"]
[にぃな]「咦、要这样直接来吗？」[改ページ]
[僕]「嗯～就是所谓的后入～。想试试看是什么感觉吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
;[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me7.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina466.ogg"]
[にぃな]「也、也不是不行啦……」[改ページ]
[僕]「太好啦～那就马上开始！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[男 storage="scene6/otoko4b.png"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me4.png"]
[口 storage="scene6/kuti3.png"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina467.ogg"]
[にぃな]「嗯……」[改ページ]
[僕]「啊、抱歉。确实有点太没情调了……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina468.ogg"]
[にぃな]「没、没事～啦。比起这个我更在意……后入」[改ページ]
[僕]「哦是吗？那就……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 6"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
;[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-6 y=9]
[目 storage="scene6/me9.png"]
[口 storage="scene6/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina469.ogg"]
[にぃな]「嗯啊」[改ページ]
[僕]「哈啊、从后面完全进去了[ハート]」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene6/mayu1.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina470.ogg"]
[にぃな]「嘿嘿……快一点」[改ページ]
[僕]（好厉害啊、进入状态的女孩子）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 31"]
[eval exp="f.S6オマンコ[2] = 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*オマンコ挿入2

[tb_start_tyrano_code]
[eval exp="f.S6進行 = 6"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*後背位表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"]
[_tb_end_tyrano_code]

*オマンコ挿入3

[tb_start_tyrano_code]
[call target="*ピストン開始"  cond="f.kaikan_now == 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[快感ランダム min=5 max=6 limit=300]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene6/otoko4b.png"]
[絵変更 time=600 visible=false cond="f.S6後背位台詞 <= 4"  ]
[絵変更 time=500 visible=false cond="f.S6後背位台詞 >= 5"  ]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ6b"  ]
[tb_start_tyrano_code]
[eval exp="f.S6進行 = 6"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*後背位表情"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=600 visible=false cond="f.S6後背位台詞 <= 4"  ]
[絵変更 time=500 visible=false cond="f.S6後背位台詞 >= 5"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S6後背位台詞 == 0 && f.kaikan_now >= 0 || f.S6後背位台詞 == 1 && f.kaikan_now >= 30 || f.S6後背位台詞 == 2 && f.kaikan_now >= 60 || f.S6後背位台詞 == 3 && f.kaikan_now >= 90 || f.S6後背位台詞 == 4 && f.kaikan_now >= 130 || f.S6後背位台詞 == 5 && f.kaikan_now >= 170 || f.S6後背位台詞 == 6 && f.kaikan_now >= 210 || f.S6後背位台詞 == 7 && f.kaikan_now >= 250 || f.S6後背位台詞 == 8 && f.kaikan_now >= 300"  ]
[call  target="*後背位台詞"]
[jump  target="*オマンコ挿入4" cond="f.kaikan_now >= 300"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*オマンコ挿入3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*オマンコ挿入4

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[playse storage="niina471.ogg"]
[にぃな]「哈啊啊啊～～～～嗯」[ハート][ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「啊啊、紧致小穴在收缩」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[フラッシュ visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png" x=4 y=-6]
[目 storage="scene6/me6b.png"]
[口 storage="scene6/kuti9b.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]噗啾～噗[ハート]啾～噗啾[ハート]～噗啾～[ハート]噗啾～噗[ハート]啾～噗啾[ハート]～噗啾～[ハート][ハート][ハート][改ページ]
[playse storage="niina472.ogg"]
[にぃな]「啊啊啊[ハート]啊又、[ハート]又在噗[ハート]啾噗啾[ハート]地射了啦」[ハート][改ページ]
[僕]「嗯嗯、今天也要一滴不剩地射进小小子宫哦！」[改ページ]
[playse storage="niina473.ogg"]
[にぃな]「啊哈啊[ハート]哈啊哈[ハート]啊哈射[ハート]太多 [ハート]射太多 妮[ハート]娜里面被射太[ハート]多啦～」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png" x=-8 y=12]
[目 storage="scene6/me8b.png"]
[口 storage="scene6/kuti9.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina474.ogg"]
[にぃな]「哈啊啊…嗯」[ハート][改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[汗 storage="scene6/ase2.png"]
[汁 storage="scene6/siru1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me2b.png"]
[口 storage="scene6/kuti4.png"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「哈、哈、哈、哈……喜欢后入吗？」[改ページ]
[playse storage="niina475.ogg"]
[にぃな]「哈啊[ハート]…哈啊[ハート]…哈啊[ハート]…嗯…[ハート]…好舒服」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S6クリア = 2"]
[シーン6変数リセット]
[clearvar exp="tf.表情スキップ"]
;[eval exp ="f.kaikan_now = 0"]
[_tb_end_tyrano_code]

[jump  storage="scene0.ks"  target=""  ]
[s  ]
*後背位表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu1.png" x=4 y=-6]
[目 storage="scene6/me6.png"]
[口 storage="scene6/kuti1.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me1.png"]
[口 storage="scene6/kuti4.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me5.png"]
[口 storage="scene6/kuti5.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 130"]
[汗 storage="scene6/ase1.png"]
[眉 storage="scene6/mayu3.png" x=-4 y=6]
[目 storage="scene6/me2.png"]
[口 storage="scene6/kuti9.png"]
[elsif exp="f.kaikan_now >= 130 && f.kaikan_now < 170"]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png" x=-6 y=9]
[目 storage="scene6/me9.png"]
[口 storage="scene6/kuti11.png"]
[elsif exp="f.kaikan_now >= 170 && f.kaikan_now < 210"]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png" x=4 y=-6]
[目 storage="scene6/me6b.png"]
[口 storage="scene6/kuti9.png"]
[elsif exp="f.kaikan_now >= 210 && f.kaikan_now < 250"]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png" x=-6 y=9]
[目 storage="scene6/me9b.png"]
[口 storage="scene6/kuti10b.png"]
[elsif exp="f.kaikan_now >= 250 && f.kaikan_now < 300"]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png"]
[目 storage="scene6/me10b.png"]
[口 storage="scene6/kuti8b.png"]
[elsif exp="f.kaikan_now >= 300"]
[汗 storage="scene6/ase2.png"]
[眉 storage="scene6/mayu3.png" x=-6 y=9]
[目 storage="scene6/me9b.png"]
[口 storage="scene6/kuti8b.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*後背位台詞

[tb_start_tyrano_code]
[if exp="f.S6後背位台詞 == 0 && f.kaikan_now >= 0 && f.kaikan_now < 30"]
[tb_show_message_window  ]
[playse storage="niina476.ogg"]
[にぃな]「啊……」[改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 1 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina477.ogg"]
[にぃな]「这、这种感觉……」[改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 2 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina478.ogg"]
[にぃな]「啊 [ハート]啊 啊[ハート] 啊好[ハート]、好厉[ハート]……」[改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 3 && f.kaikan_now >= 90 && f.kaikan_now < 130"]
[tb_show_message_window  ]
[playse storage="niina479.ogg"]
[にぃな]「哈啊啊……[ハート] 哈啊啊……[ハート]哈啊啊……[ハート] 哈啊啊……[ハート]」[改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 4 && f.kaikan_now >= 130 && f.kaikan_now < 170"]
[tb_show_message_window  ]
[playse storage="niina480.ogg"]
[にぃな]「啊啊啊[ハート]啊啊啊[ハート]啊啊啊[ハート]啊啊啊[ハート]啊啊啊[ハート]啊啊」[ハート][ハート][ハート][改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 5 && f.kaikan_now >= 170 && f.kaikan_now < 210"]
[tb_show_message_window  ]
[playse storage="niina481.ogg"]
[にぃな]「啊啊啊[ハート] 啊啊[ハート]啊 啊[ハート]啊啊 [ハート]啊啊啊[ハート]不要 等一下啦」[ハート][改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 6 && f.kaikan_now >= 210 && f.kaikan_now < 250"]
[tb_show_message_window  ]
[playse storage="niina482.ogg"]
[にぃな]「哈～哈[ハート]～哈～[ハート]哈～哈[ハート]～哈～[ハート]哈～哈[ハート]～」[ハート][ハート][ハート][改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]

[elsif exp="f.S6後背位台詞 == 7 && f.kaikan_now >= 250 && f.kaikan_now < 300"]
[tb_show_message_window  ]
[playse storage="niina483.ogg"]
[にぃな]「噫呀 [ハート]噫呀 [ハート]噫呀 [ハート]噫呀等[ハート]等等等[ハート]真的已[ハート]经不要啦」[ハート][改ページ]
[eval exp="f.S6後背位台詞 = f.S6後背位台詞 + 1"]
[endif]

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
;男の手戻す↓
[eval exp="f.S6進行 = 0"  cond="f.S6進行 == 1"]
[eval exp="f.S6進行 = 2"  cond="f.S6進行 >= 3"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[return  ]
