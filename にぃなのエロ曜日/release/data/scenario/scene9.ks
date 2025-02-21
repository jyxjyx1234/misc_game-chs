[_tb_system_call storage=system/_scene9.ks]

*scene9

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン9変数リセット]
[全脱ぎ開放]

[_tb_end_tyrano_code]

*お仕置き

[cm  ]
[tb_bar_set  max="360"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ9"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ9"  ]
[tb_start_tyrano_code]
[mask time=0]
[その他 storage="barflame.png"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me1.png"]
[口 storage="scene9/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="4.ogg"  ]
[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0]
[_tb_end_tyrano_code]

*選択肢復活

[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"  width="175"]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢" width="175"]
[選択画像  graphic="sentaku/semeru.png"  target="*領域復活" width="175" cond="f.S9話す >= 3 && f.S9脱がす[3] == 1"]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" width="175" cond="f.S9話す >= 3"]
[選択画像  graphic="sentaku/nugasu.png"  target="*自重" width="175" cond="f.S9話す < 3"]
[選択画像  graphic="sentaku/system.png" target="*システム"]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"    ]
[選択画像  graphic="sentaku/oppai.png"  target="*おっぱい見る"      cond="f.S9脱がす[1] == 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る"      cond="f.S9脱がす[3] == 0" ]
[選択画像  graphic="sentaku/omanko.png"  target="*オマンコ見る"      cond="f.S9脱がす[3] == 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"    ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす"  cond="f.S9脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす"  cond="f.S9脱がす[1] < 1 && f.S9脱がす[0] == 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S9脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす" cond="f.S9脱がす[3] < 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす"  cond="f.S9脱がす[4] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"  ]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*責め"]
[elsif exp="clickable_map.click=='FFFF00'"]
[jump  target="*責め"]
[elsif exp="clickable_map.click=='00FF00'"]
[jump  target="*責め"]
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

[clickable_map  visible=false  graphic=scene9/S9clickable1a.png storage=scene9.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene9/S9clickable1b.png storage=scene9.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == 1"  ]
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

[if exp="f.S9進行 == 0"]
[call  target="*話す1"  ]
[eval exp="tf.表情スキップ = 0"]
[elsif exp="f.S9進行 == 1"]
[call  target="*話す2"  ]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S9進行 >= 2"]
[call  target="*話す3"  ]
;表情スキップ受け渡し
[endif]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_tyrano_code]

[if exp="f.S9話す == 0"]
[eval exp="f.S9話す = f.S9話す + 1"]
[call  target="*話す1a"  ]
[elsif exp="f.S9話す == 1"]
[eval exp="f.S9話す = f.S9話す + 1"]
[call  target="*話す1b"  ]
[elsif exp="f.S9話す == 2"]
[eval exp="f.S9話す = f.S9話す + 1"]
[call  target="*話す1c"  ]
[elsif exp="f.S9話す == 3"]
[call  target="*話す1d"  ]
[endif]

[_tb_end_tyrano_code]

[return  ]
*話す1a

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_text mode=4 ]
[playse storage="niina491.ogg"]
[にぃな]「喂！这到底是要干什么啦」[改ページ]
[僕]「怎～么样，完全动不了吧！」[改ページ]
[playse storage="niina492.ogg"]
[にぃな]「为～什么妮娜非得遭这种罪不可呀」[改ページ]
[僕]「那还用说！当然是惩罚你啊，惩罚惩罚」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png" x=-4 y=-4]
[目 storage="scene9/me4.png"]
[口 storage="scene9/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina493.ogg"]
[にぃな]「惩罚！？」[改ページ]

[_tb_end_text]

[return  ]
*話す1b

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png" x=4 y=4]
[目 storage="scene9/me2.png"]
[口 storage="scene9/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina494.ogg"]
[にぃな]「凭什么妮娜非得被惩罚不可啊？」[改ページ]
[僕]「因为妮娜酱说和我做H什么的很麻烦！」[改ページ]
[playse storage="niina495.ogg"]
[にぃな]「因为真的很麻烦嘛。做H什么的早就腻了」[改ページ]
[僕]「少瞧不起人！你以为我之前对你放了多少水啊！！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me9.png"]
[口 storage="scene9/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina496.ogg"]
[にぃな]「又、又不知道，妮娜才不管。别擅自放水又生气啊」[改ページ]
[_tb_end_text]

[return  ]
*話す1c

[tb_start_text mode=4 ]
[僕]「哦～这样啊，这样啊。那今天就让我用这个好好让你领教一下！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png" x=-4 y=-4]
[目 storage="scene9/me4.png"]
[口 storage="scene9/kuti5.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina497.ogg"]
[にぃな]「什、什么东西啦」[改ページ]
[僕]「最新型棒状跳蛋！！虽然小巧但威力超强的哦～」[改ページ]
[playse storage="niina498.ogg"]
[にぃな]「等等！别把奇怪的东西靠近我啊」[改ページ]
[_tb_end_text]

[return  ]
*話す1d

[tb_start_text mode=4 ]
[playse storage="niina498.ogg"]
[にぃな]「等等！别把奇怪的东西靠近我啊」[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png" x=4 y=4]
[目 storage="scene9/me2.png"]
[口 storage="scene9/kuti7.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina499.ogg"]
[にぃな]「把人固定住再脱衣服也太差劲了！」[改ページ]
[僕]「喂！随你怎么说！」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_start_tyrano_code]
[if exp="f.S9責め台詞 == 0"]
[call target="*話す3a"]
[elsif exp="f.S9責め台詞 == 1"]
[call target="*話す3b"]
[eval exp="tf.表情スキップ = 1"]
[elsif exp="f.S9責め台詞 == 2"]
[call target="*話す3c"]
[elsif exp="f.S9責め台詞 == 3"]
[call target="*話す3d"]
[elsif exp="f.S9責め台詞 == 4"]
[call target="*話す3e"]
[elsif exp="f.S9責め台詞 == 5"]
[call target="*話す3f"]
[elsif exp="f.S9責め台詞 == 6"]
[call target="*話す3g"]
[elsif exp="f.S9責め台詞 == 7"]
[call target="*話す3h"]
[elsif exp="f.S9責め台詞 == 8"]
[call target="*話す3i"]
[elsif exp="f.S9責め台詞 == 9"]
[call target="*話す3j"]
[elsif exp="f.S9責め台詞 == 10"]
[call target="*話す3k"]
[elsif exp="f.S9責め台詞 == 11"]
[call target="*話す3l"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す3a

[tb_start_text mode=4 ]
[playse storage="niina500.ogg"]
[にぃな]「在、在发抖！？」[改ページ]
[僕]「怎～么样，很有趣吧～」[改ページ]
[_tb_end_text]

[return  ]
*話す3b

[tb_start_text mode=4 ]
[if exp="f.S9進行 == 2"]
[僕]「嘿嘿，第一次的小穴震动体验很有效吧～」[改ページ]
[elsif exp="f.S9進行 >= 3"]
[僕]「嘿嘿，第一次的乳头震动体验很有效吧～」[改ページ]
[endif]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="tf.表情スキップ != 1"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me1.png"]
[口 storage="scene9/kuti4.png"]
[絵変更]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina501.ogg"]
[にぃな]「哈？这种玩意怎么可能有效啊」[改ページ]
[僕]「嘻嘻，看你能嘴硬到什么时候」[改ページ]
[_tb_end_text]

[return  ]
*話す3c

[tb_start_text mode=4 ]
[playse storage="niina502.ogg"]
[にぃな]「这种无聊的事你打算做到什么时候？」[改ページ]
[僕]「当然是到妮娜酱理解为止，无论多久......」[改ページ]
[playse storage="niina503.ogg"]
[にぃな]「绝对不可能理解的」[改ページ]
[_tb_end_text]

[return  ]
*話す3d

[tb_start_text mode=4 ]
[僕]「哦，这表情......看来稍微开始理解了呢」[改ページ]
[にぃな]「......」[改ページ]
[_tb_end_text]

[return  ]
*話す3e

[tb_start_text mode=4 ]
[僕]「哎呀？和刚才不同呼吸变得很急促嘛」[改ページ]
[playse storage="niina504.ogg"]
[にぃな]「这太狡猾了！犯规啊！」[改ページ]
[_tb_end_text]

[return  ]
*話す3f

[tb_start_text mode=4 ]
[playse storage="niina505.ogg"]
[にぃな]「我要把至今为止的事全都告诉妈妈！」[改ページ]
[僕]「哈啊？明明自己也会惹上麻烦的」[改ページ]
[_tb_end_text]

[return  ]
*話す3g

[tb_start_text mode=4 ]
[僕]「怎么，已经到极限了吗？」[改ページ]
[playse storage="niina506.ogg"]
[にぃな]「诶！才、才不是！但是……」[改ページ]
[_tb_end_text]

[return  ]
*話す3h

[tb_start_text mode=4 ]
[if exp="f.S9進行 == 2"]
[僕]「来，把跳蛋深深顶进肉缝深处吧」[改ページ]
[elsif exp="f.S9進行 >= 3"]
[僕]「来，把跳蛋紧紧按在硬挺的乳头上吧」[改ページ]
[endif]
[playse storage="niina507.ogg"]
[にぃな]「嗯啊啊…顶[ハート]得太用力了」[ハート][改ページ]
[_tb_end_text]

[return  ]
*話す3i

[tb_start_text mode=4 ]
[僕]「嘿嘿，高潮了高潮了」[改ページ]
[playse storage="niina508.ogg"]
[にぃな]「嗯……[ハート]」[改ページ]
[_tb_end_text]

[return  ]
*話す3j

[tb_start_text mode=4 ]
[playse storage="niina509.ogg"]
[にぃな]「停下！停下！求求你，快住手啊！」[改ページ]
[僕]「哈啊？为什么啊？接下来才是精彩部分呢」[改ページ]
[_tb_end_text]

[return  ]
*話す3k

[tb_start_text mode=4 ]
[playse storage="niina510.ogg"]
[にぃな]「呀啊！[ハート]跳蛋比刚才震动得更厉害了啊～」[ハート][改ページ]
[僕]「咕嘿嘿嘿！这就是你期待已久的MAX功率啊」[改ページ]
[_tb_end_text]

[return  ]
*話す3l

[tb_start_text mode=4 ]
[playse storage="niina511.ogg"]
[にぃな]「不要不[ハート]要再继[ハート]续了，妮娜的脑袋要坏掉了啦～」[ハート][改ページ]
[僕]「坏掉吧坏掉吧，嚣张的小婊子」[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S9進行 < 2"]
[call  target="*にぃな見る1"]
[elsif exp="f.S9進行 >= 2 && f.S9責め台詞 <= 3"]
[call  target="*にぃな見る2"]
[elsif exp="f.S9進行 >= 2 && f.S9責め台詞 >= 4 && f.S9進行 >= 2 && f.S9責め台詞 <= 7"]
[call  target="*にぃな見る3"]
[elsif exp="f.S9進行 >= 2 && f.S9責め台詞 == 8"]
[call  target="*にぃな見る4"]
[elsif exp="f.S9進行 >= 2 && f.S9責め台詞 >= 9"]
[call  target="*にぃな見る5"]
[endif]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（今天就彻底干到底吧！）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（来吧，给老子好好享受啊）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[tb_start_text mode=4 ]
[僕]（噗嗤，看来药效开始发作了啊）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る4

[tb_start_text mode=4 ]
[僕]（好～，小母狗的战败绝顶这就来咯～）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る5

[tb_start_text mode=4 ]
[僕]（哦～，这才刚刚开始呢！！）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（咕嘿嘿，内裤都看得一清二楚啊）[改ページ]
[_tb_end_text]

[jump  target="*見る選択肢"  storage=""  ]
*おっぱい見る

[cm  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S9責め台詞 <= 3"]
[call  target="*おっぱい見る1"  storage=""  ]
[elsif exp="f.S9責め台詞 >= 4 && f.S9責め台詞 <= 8"]
[call  target="*おっぱい見る2"  storage=""  ]
[elsif exp="f.S9責め台詞 >= 9"]
[call  target="*おっぱい見る3"  storage=""  ]
[endif]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*おっぱい見る1

[tb_start_text mode=4 ]
[僕]（呜嘻嘻，小学六年级的小胸部果然超棒啊）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る2

[tb_start_text mode=4 ]
[僕]（哼，龟头都已经硬邦邦了啊）[改ページ]
[_tb_end_text]

[return  ]
*おっぱい見る3

[tb_start_text mode=4 ]
[僕]「看啊看啊！软绵绵的乳头还想要更多是吧！」[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る

[cm  ]
[tb_start_tyrano_code]
[eval exp="f.S9進行 = 5" cond="f.S9進行 == 1"]
[eval exp="f.S9進行 = 6" cond="f.S9進行 == 2"]
[eval exp="f.S9進行 = 7" cond="f.S9進行 == 3"]
[eval exp="f.S9進行 = 8" cond="f.S9進行 == 4"]
[eval exp="tf.表情スキップ = 10]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]

[if exp="f.S9責め台詞 <= 3"]
[call  target="*オマンコ見る1"]
[elsif exp="f.S9責め台詞 >= 4 && f.S9責め台詞 <= 7"]
[call  target="*オマンコ見る2"]
[elsif exp="f.S9責め台詞 == 8"]
[call  target="*オマンコ見る3"]
[elsif exp="f.S9責め台詞 >= 9"]
[call  target="*オマンコ見る4"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S9進行 = 1" cond="f.S9進行 == 5"]
[eval exp="f.S9進行 = 2" cond="f.S9進行 == 6"]
[eval exp="f.S9進行 = 3" cond="f.S9進行 == 7"]
[eval exp="f.S9進行 = 4" cond="f.S9進行 == 8"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9進行 == 1"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me1.png"]
[口 storage="scene9/kuti3.png"]
[else]
[call  target="*責め表情"  ]
[endif]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*オマンコ見る1

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png" x=4 y=4]
[目 storage="scene9/me6.png"]
[口 storage="scene9/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[頬 storage="scene9/hoho.png"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「哦～哦～ 粉粉嫩嫩的小穴可真不赖啊」[改ページ]
[playse storage="niina512.ogg"]
[にぃな]「别、别随便看啊！」[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る2

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png" cond="f.S9責め台詞 <= 6"]
[汗 storage="scene9/ase2.png" cond="f.S9責め台詞 >= 7"]
[眉 storage="scene9/mayu3.png" x=5 y=5]
[目 storage="scene9/me7.png" cond="f.S9責め台詞 <= 6"]
[目 storage="scene9/me7b.png" cond="f.S9責め台詞 >= 7"]
[口 storage="scene9/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「嘿嘿，已经湿得一塌糊涂了吧」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る3

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「嘿嘿，已经湿得一塌糊涂了吧」[改ページ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[return  ]
*オマンコ見る4

[tb_start_tyrano_code]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=6 y=6]
[目 storage="scene9/me11c.png" cond="f.S9責め台詞 >= 11"]
[目 storage="scene9/me11b.png" cond="f.S9責め台詞 <= 10"]
[口 storage="scene9/kuti8b.png" cond="f.S9責め台詞 >= 10"]
[口 storage="scene9/kuti8.png" cond="f.S9責め台詞 <= 9"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「哦吼、好厉害！蜜汁都冒泡冒个不停！」[改ページ]
[playse storage="niina513.ogg"]
[にぃな]「不要啊、放过我吧！」[改ページ]
[_tb_end_text]

[return  ]
*自重

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（哎～呀、先给这个嚣张丫头来个『最终宣告』吧！[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「欧啦！衣服脱掉衣服！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S9脱がす[0] = 1"  ]
[eval exp="tf.表情スキップ = 20"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9進行 <= 1"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png" x=4 y=4]
[目 storage="scene9/me6.png"]
[口 storage="scene9/kuti7.png"]
[eval exp="f.S9進行 = 1"]
[elsif exp="f.S9進行 >= 2"]
[backlay]
[endif]
[call  target="*服の状態"  ]
[call  target="*体の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「好～嘞、把小奶子露出来！小六的小奶子咿咿！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S9脱がす[1] = 1"  ]
[eval exp="tf.表情スキップ = 21"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9進行 <= 1"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me9.png"]
[口 storage="scene9/kuti3.png"]
[eval exp="f.S9進行 = 1"]
[elsif exp="f.S9進行 >= 2"]
[backlay]
[endif]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「快脱快脱！要把裙子扒下来啦！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S9脱がす[2] = 1"  ]
[eval exp="tf.表情スキップ = 22"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9進行 <= 1"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me5.png"]
[口 storage="scene9/kuti3.png"]
[eval exp="f.S9進行 = 1"]
[elsif exp="f.S9進行 >= 2"]
[backlay]
[endif]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「咕嘿嘿嘿！小穴露出来小穴！光溜溜的萝莉小穴嗷！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S9脱がす[3] = 1"  ]
[eval exp="f.S9進行 = 1"]
[eval exp="tf.表情スキップ = 23"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png" x=4 y=4]
[目 storage="scene9/me6.png"]
[口 storage="scene9/kuti6.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*靴下脱がす

[tb_show_message_window  ]
[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_text mode=4 ]
[僕]「小鬼头穿什么过膝袜！过膝袜袜！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S9脱がす[4] = 1"  ]
[eval exp="tf.表情スキップ = 24"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9進行 <= 1"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me5.png"]
[口 storage="scene9/kuti3.png"]
[eval exp="f.S9進行 = 1"]
[elsif exp="f.S9進行 >= 2"]
[backlay]
[endif]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
*責め

[cm  ]
[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9おっぱい[1] == 0 || f.S9オマンコ[1] == 0"]
[jump  target="*責め1"  storage=""  ]
[elsif exp="f.S9おっぱい[1] == 1 && f.S9進行 == 3 && clickable_map.click=='FF0000'"]
[jump  target="*責め3"  storage=""  ]
[elsif exp="f.S9おっぱい[1] == 1 && f.S9進行 == 4 && clickable_map.click=='FFFF00'"]
[jump  target="*責め3"  storage=""  ]
[elsif exp="f.S9オマンコ[1] == 1 && f.S9進行 == 2 && clickable_map.click=='00FF00'"]
[jump  target="*責め3"  storage=""  ]
[else]
[jump  target="*責め2"  storage=""  ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*責め1

[cm  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
[eval exp="f.S9おっぱい[1] = 1"  ]
[eval exp="f.S9オマンコ[1] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]「好～嘞！要来咯！要来咯！现在就好好惩罚你咯」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png" x=6 y=6]
[目 storage="scene9/me11.png"]
[口 storage="scene9/kuti5.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina514.ogg"]
[にぃな]「别靠近妮娜！别碰我！色鬼！变态！萝莉控男～～～～！」[改ページ]
[僕]「......嚯啦」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S9進行 = 2" cond="clickable_map.click=='00FF00'"]
[eval exp="f.S9進行 = 3" cond="clickable_map.click=='FF0000'"]
[eval exp="f.S9進行 = 4" cond="clickable_map.click=='FFFF00'"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*責め表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=1000]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[エロ音1]......唔唔[ハート][改ページ]
[playse storage="niina515.ogg"]
[にぃな]「啊！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*領域復活"  ]
[_tb_end_tyrano_code]

*責め2

[tb_start_tyrano_code]
[eval exp="f.S9進行 = 2" cond="clickable_map.click=='00FF00'"]
[eval exp="f.S9進行 = 3" cond="clickable_map.click=='FF0000'"]
[eval exp="f.S9進行 = 4" cond="clickable_map.click=='FFFF00'"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*責め表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false time=1000]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"  ]
[_tb_end_tyrano_code]

*責め3

[tb_start_tyrano_code]
[if exp="f.S9責め台詞 < 8"]
[快感ランダム min=5 max=6 limit=240  cond="f.S9進行 == 2"]
[快感ランダム min=4 max=5 limit=240  cond="f.S9進行 == 3 || f.S9進行 == 4"]
[elsif exp="f.S9責め台詞 >= 8"]
[快感ランダム min=6 max=7 limit=400  cond="f.S9進行 == 2"]
[快感ランダム min=5 max=6 limit=400  cond="f.S9進行 == 3 || f.S9進行 == 4"]
[endif]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ9"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene9/otoko3b.png" cond="f.S9進行 == 2"]
[男 storage="scene9/otoko1b.png" cond="f.S9進行 == 3"]
[男 storage="scene9/otoko2b.png" cond="f.S9進行 == 4"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*責め表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S9責め台詞 == 0 && f.kaikan_now >= 30 || f.S9責め台詞 == 1 && f.kaikan_now >= 60 || f.S9責め台詞 == 2 && f.kaikan_now >= 90 || f.S9責め台詞 == 3 && f.kaikan_now >= 120 || f.S9責め台詞 == 4 && f.kaikan_now >= 150 || f.S9責め台詞 == 5 && f.kaikan_now >= 180 || f.S9責め台詞 == 6 && f.kaikan_now >= 210 || f.S9責め台詞 == 7 && f.kaikan_now >= 240 || f.S9責め台詞 == 8 && f.kaikan_now >= 241 || f.S9責め台詞 == 9 && f.kaikan_now >= 280 || f.S9責め台詞 == 10 && f.kaikan_now >= 320 || f.S9責め台詞 == 11 && f.kaikan_now >= 360"  ]
[call  target="*責め台詞"]
[jump  target="*責め4"  storage="" cond="f.S9責め台詞 >= 12"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*責め3" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*責め4

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「哦哦～！翻白眼了！〇〇生的大绝顶超工口～～！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=8 y=8]
[目 storage="scene9/me10c.png"]
[口 storage="scene9/kuti9b.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina516.ogg"]
[にぃな]「哈啊哈[ハート]啊哈啊[ハート]哈啊跳[ハート]蛋太厉[ハート]害啦小穴噗噜噗噜最棒～[ハート]」[ハート][改ページ]
[_tb_end_text]

[tb_start_text mode=4 ]
[僕]「怎～样、认输了吧！这下你再说不出不和我H的话了吧」[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=4 y=4]
[目 storage="scene9/me2b.png"]
[口 storage="scene9/kuti9b.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina517.ogg"]
[にぃな]「啊哈啊[ハート]哈啊哈[ハート]啊哈嗯[ハート]！妮娜[ハート]绝对不要和哥哥H」[改ページ]
[僕]「什、什么鬼！！都被搞成这样了！？」[改ページ]
[playse storage="niina518.ogg"]
[にぃな]「嗯、所以──」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png"]
[目 storage="scene9/me9b.png"]
[口 storage="scene9/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina519.ogg"]
[にぃな]「再、再惩罚妮娜的话......」[改ページ]
[僕]「……」[改ページ]
[僕]「真拿你没办法……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[jump  target="*次へ"  cond="f.kaisou == 1"]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[文章]
_　看来和妮娜的工口日子还要持续好一阵子呢。
_　[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[iscript]
$(".current_span").parent().css("text-align","center");
[endscript]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
──终──[改ページ]
[_tb_end_text]

*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[シーン9変数リセット]
[eval exp="f.S9クリア = 1"]
[eval exp="sf.ゲームクリア = 1"]
[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[黒画面]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
_　恭喜通关！从『前次H』开始可以体验全部场景。
_　
_　[改ページ]
[_tb_end_text]

[jump  storage="scene0.ks"  target=""  ]
[s  ]
*責め表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu1.png" x=-4 y=-4]
[目 storage="scene9/me8.png"]
[口 storage="scene9/kuti7.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png" x=4 y=4]
[目 storage="scene9/me2.png"]
[口 storage="scene9/kuti3.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 90"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu2.png"]
[目 storage="scene9/me9.png"]
[口 storage="scene9/kuti1.png"]
[elsif exp="f.kaikan_now >= 90 && f.kaikan_now < 120"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu1.png" x=-4 y=-4]
[目 storage="scene9/me8.png"]
[口 storage="scene9/kuti6.png"]
[elsif exp="f.kaikan_now >= 120 && f.kaikan_now < 150"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png" x=4 y=4]
[目 storage="scene9/me2.png"]
[口 storage="scene9/kuti5.png"]
[elsif exp="f.kaikan_now >= 150 && f.kaikan_now < 180"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png" x=4 y=4]
[目 storage="scene9/me6.png"]
[口 storage="scene9/kuti7.png"]
[elsif exp="f.kaikan_now >= 180 && f.kaikan_now < 210"]
[汗 storage="scene9/ase1.png"]
[眉 storage="scene9/mayu3.png"]
[目 storage="scene9/me1.png"]
[口 storage="scene9/kuti5.png"]
[elsif exp="f.kaikan_now >= 210 && f.kaikan_now < 240"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=6 y=6]
[目 storage="scene9/me13b.png"]
[口 storage="scene9/kuti10.png"]
[elsif exp="f.kaikan_now == 240"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=6 y=6]
[目 storage="scene9/me11b.png"]
[口 storage="scene9/kuti2.png"]
[elsif exp="f.kaikan_now >= 241 && f.kaikan_now < 280"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png"]
[目 storage="scene9/me1b.png"]
[口 storage="scene9/kuti9.png"]
[elsif exp="f.kaikan_now >= 280 && f.kaikan_now < 320"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=-4 y=-4]
[目 storage="scene9/me8b.png"]
[口 storage="scene9/kuti8b.png"]
[elsif exp="f.kaikan_now >= 320 && f.kaikan_now < 360"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png" x=-4 y=-4]
[目 storage="scene9/me4c.png"]
[口 storage="scene9/kuti9b.png"]
[elsif exp="f.kaikan_now >= 360 && f.kaikan_now < 400"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png"]
[目 storage="scene9/me12c.png"]
[口 storage="scene9/kuti8b.png"]
[elsif exp="f.kaikan_now >= 400"]
[汗 storage="scene9/ase2.png"]
[眉 storage="scene9/mayu3.png"]
[目 storage="scene9/me12c.png"]
[口 storage="scene9/kuti4.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*責め台詞

[tb_start_tyrano_code]
[if exp="f.S9責め台詞 == 0 && f.kaikan_now >= 0 && f.kaikan_now < 30"]

[elsif exp="f.S9責め台詞 == 0 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 1 && f.kaikan_now >= 60 && f.kaikan_now < 90"]
[tb_show_message_window  ]
[playse storage="niina520.ogg"]
[にぃな]「哼、蠢死了……」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 2 && f.kaikan_now >= 90 && f.kaikan_now < 120"]
[tb_show_message_window  ]
[にぃな]「……」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 3 && f.kaikan_now >= 120 && f.kaikan_now < 150"]
[tb_show_message_window  ]
[playse storage="niina521.ogg"]
[にぃな]哈啊哈啊……　哈啊哈啊……哈啊哈啊……　哈啊哈啊……[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 4 && f.kaikan_now >= 150 && f.kaikan_now < 180"]
[tb_show_message_window  ]
[playse storage="niina522.ogg"]
[にぃな]「啊　[ハート]啊　啊[ハート]　啊呜[ハート]、真的[ハート]～该适可而止了……」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 5 && f.kaikan_now >= 180 && f.kaikan_now < 210"]
[tb_show_message_window  ]
[playse storage="niina523.ogg"]
[にぃな]「啊啊啊[ハート]　等一下～」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 6 && f.kaikan_now >= 210 && f.kaikan_now < 240"]
[tb_show_message_window  ]
[playse storage="niina524.ogg"]
[にぃな]「呼啊…嗯　[ハート]呼啊…嗯呼啊[ハート]…嗯　呼啊[ハート]…嗯」[ハート][改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 7 && f.kaikan_now == 240"]
[tb_show_message_window  ]
[playse storage="niina525.ogg"]
[にぃな]「嗯嗯嗯……嗯[ハート]」[改ページ]
[フラッシュ visible=false]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 8 && f.kaikan_now >= 241 && f.kaikan_now < 280"]
[tb_show_message_window  ]
[playse storage="niina526.ogg"]
[にぃな]「啊啊啊[ハート]啊啊啊[ハート]不行！[ハート]　不行[ハート]！　不许再让那里布鲁布鲁抖动了！」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 9 && f.kaikan_now >= 280 && f.kaikan_now < 320"]
[tb_show_message_window  ]
[playse storage="niina527.ogg"]
[にぃな]「呜啊呜[ハート]啊呜啊[ハート]呜啊为[ハート]什么啊[ハート]？　为什么啊？」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 10 && f.kaikan_now >= 320 && f.kaikan_now < 360"]
[tb_show_message_window  ]
[playse storage="niina528.ogg"]
[にぃな]「啊～啊[ハート]～啊～[ハート]啊～不[ハート]行！　[ハート]不行！　真的不行了！」[改ページ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]

[elsif exp="f.S9責め台詞 == 11 && f.kaikan_now >= 360 && f.kaikan_now < 400"]
[tb_show_message_window  ]
[playse storage="niina529.ogg"]
[にぃな]「啊啊啊啊啊～～～～[ハート][ハート]嗯」[改ページ]
[フラッシュ]
[eval exp="f.S9責め台詞 = f.S9責め台詞 + 1"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene9/otoko3a.png" cond="f.S9進行 == 2"]
[男 storage="scene9/otoko1a.png" cond="f.S9進行 == 3"]
[男 storage="scene9/otoko2a.png" cond="f.S9進行 == 4"]
[男 storage="scene9/otoko4.png" cond="f.S9進行 >= 5"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="huku" time="0"]
;ブラ
[下着 storage="scene9/bura1.png" cond="f.S9脱がす[1] < 1"]
;服
[下着 storage="scene9/fuku1.png" cond="f.S9脱がす[0] < 1 && f.S9脱がす[2] == 0"]
[下着 storage="scene9/fuku2.png" cond="f.S9脱がす[0] < 1 && f.S9脱がす[2] == 1"]
;パンツ
[下着 storage="scene9/pantu1.png" cond="f.S9脱がす[3] < 1"]
;スカート
[下着 storage="scene9/sukato1.png" cond="f.S9脱がす[2] < 1 && f.S9脱がす[3] == 0"]
[下着 storage="scene9/sukato2.png" cond="f.S9脱がす[2] < 1 && f.S9脱がす[3] == 1"]
;靴下
[下着 storage="scene9/socks1.png" cond="f.S9脱がす[4] < 1"]
[_tb_end_tyrano_code]

[return  ]
*体の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene9/hoho.png" cond="f.kaikan_now >= 120"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene9/karada1.png"]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[return  ]
