[_tb_system_call storage=system/_scene1b.ks]

*scene1b

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン1変数リセット]
[全脱ぎ開放]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

*お昼寝にぃな

[cm  ]
[tb_start_text mode=4 ]
;[僕]「さぁ、にぃなちゃん。[r]今日もエッチを始めるよ～……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_bar_set  max="140"  width="40"  height="600"  bgcolor="0x000000"  color="0xff3399"  direction="top"  zindex="2"  name="快感ゲージ1b"  variable="kaikan_now"  variable_type="false"  y="50"  x="35"  ]
[tb_bar_show  time="500"  wait="false"  name="快感ゲージ1b"  ]
[tb_start_tyrano_code]
[その他 storage="barflame.png"]
[眉 storage="scene1/mayu1.png" x=16 y=8]
[目 storage="scene1/me8.png"]
[口 storage="scene1/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="1000"  loop="true"  storage="3.ogg"  ]
[tb_show_message_window  ]
[tb_start_text mode=4 ]
[playse storage="niina363.ogg"]
[にぃな]「……呼」[改ページ]
[僕]「……」[改ページ]
[僕]「睡着了……」[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
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
[選択画像  graphic="sentaku/hanasu.png"  target="*話す"]
[選択画像  graphic="sentaku/miru.png"  target="*見る選択肢"]
[選択画像  graphic="sentaku/sawaru.png"  target="*領域復活"]
[選択画像  graphic="sentaku/nugasu.png"  target="*服脱がさない" cond="f.S1エロ台詞 < 2"]
[選択画像  graphic="sentaku/nugasu.png"  target="*脱がす選択肢" cond="f.S1エロ台詞 >= 2"]
[選択画像 graphic="sentaku/system.png" target="*システム"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*領域復活

[tb_hide_message_window  ]
[call  storage="routine.ks"  target="*快感速度"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[clickable_map  visible=false  graphic=scene1/S1clickable1a.png storage=scene1b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == null"  ]
[clickable_map  visible=false  graphic=scene1/S1clickable1b.png storage=scene1b.ks target=*領域選択 cursorImage=cursor/yubi.png cond="f.kaisou == 1"  ]
[_tb_end_tyrano_code]

[s  ]
*領域選択

[tb_start_tyrano_code]
[clickable_map_clear]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000'"]
[jump  target="*触る初回" cond="f.S1進行 == 0" ]
[jump  target="*触る"]

[elsif exp="clickable_map.click=='FFFF00'"]
[jump  target="*触る初回" cond="f.S1進行 == 0" ]
[jump  target="*触る"]

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
*見る選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/nina.png"  target="*にぃな見る"]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ見る" cond="f.S1脱がす[3] == 0" ]
[選択画像  graphic="sentaku/wareme.png"  target="*ワレメ見る" cond="f.S1脱がす[3] == 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/fuku.png"  target="*服脱がす選択肢" cond="f.S1脱がす[0] < 1" ]
[選択画像  graphic="sentaku/bura.png"  target="*ブラ脱がす" cond="f.S1脱がす[1] < 1 && f.S1脱がす[0] >= 1" ]
[選択画像  graphic="sentaku/sukato.png"  target="*スカート脱がす" cond="f.S1脱がす[2] < 1" ]
[選択画像  graphic="sentaku/pantu.png"  target="*パンツ脱がす" cond="f.S1脱がす[3] < 1" ]
[選択画像  graphic="sentaku/kutusita.png"  target="*靴下脱がす" cond="f.S1脱がす[4] < 1" ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*服脱がす選択肢

[cm  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/mekuru.png"  target="*服脱がす" exp="f.S1脱がす[0] = 1"]
[選択画像  graphic="sentaku/nugasu.png"  target="*服脱がす" exp="f.S1脱がす[0] = 2"]
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
[call  target="*話す2"  cond="f.S1進行 >= 1"  ]
[call  target="*話す1"  cond="f.S1進行 == 0"  ]
[_tb_end_tyrano_code]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*話す1

[tb_start_text mode=4 ]
[僕]（呜～嗯，看起来睡得很舒服啊……）[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_start_tyrano_code]
[if exp="f.S1エロ台詞 == 0"]
[call  target="*話す2a"]
[elsif exp="f.S1エロ台詞 == 1"]
[call  target="*話す2b"]
[elsif exp="f.S1エロ台詞 == 2"]
[call  target="*話す2c"]
[elsif exp="f.S1エロ台詞 == 3"]
[call  target="*話す2d"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*話す2a

[tb_start_text mode=4 ]
[僕]「喂～，睡得这么熟的话我可要H的恶作剧了哦～」[改ページ]
[playse storage="niina364.ogg"]
[にぃな]「呼哧呼哧……　呼哧呼哧……」[改ページ]
[_tb_end_text]

[return  ]
*話す2b

[tb_start_text mode=4 ]
[僕]「啊，稍微动了一下」[改ページ]
[playse storage="niina365.ogg"]
[にぃな]「嗯嗯……」[改ページ]

[_tb_end_text]

[return  ]
*話す2c

[tb_start_text mode=4 ]
[僕]「啊啊，妮娜，看起来好难过……」[改ページ]
[playse storage="niina366.ogg"]
[にぃな]「哈啊哈啊……　哈啊哈啊……」[改ページ]

[_tb_end_text]

[return  ]
*話す2d

[tb_start_text mode=4 ]
[僕]「怎么样？被我H的恶作剧弄得很舒服吗？」[改ページ]
[playse storage="niina367.ogg"]
[にぃな]「呼…っ　呼[ハート]…っ　呼…っ[ハート]　呼…っ」[ハート][ハート][改ページ]
[_tb_end_text]

[return  ]
*にぃな見る

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S1エロ台詞 == 0"]
[call  target="*にぃな見る1"]
[elsif exp="f.S1エロ台詞 == 1"]
[call  target="*にぃな見る2"]
[elsif exp="f.S1エロ台詞 == 2"]
[call  target="*にぃな見る2"]
[elsif exp="f.S1エロ台詞 == 3"]
[call  target="*にぃな見る3"]
[endif]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*にぃな見る1

[tb_start_text mode=4 ]
[僕]（妮娜酱……睡得好沉）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る2

[tb_start_text mode=4 ]
[僕]（嘿嘿，腿在微微发抖呢……）[改ページ]
[_tb_end_text]

[return  ]
*にぃな見る3

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_text mode=4 ]
[僕]（啊，身体扭动得好厉害……）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る

[tb_start_tyrano_code]
[call  target="*男消去" cond="f.S1進行 == 2" ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S1エロ台詞 == 0"]
[call  target="*パンツ見る1"]
[elsif exp="f.S1エロ台詞 == 1"]
[call  target="*パンツ見る1"]
[elsif exp="f.S1エロ台詞 == 2"]
[call  target="*パンツ見る1"]
[elsif exp="f.S1エロ台詞 == 3"]
[call  target="*パンツ見る2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*男出現" cond="f.S1進行 == 3" ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*パンツ見る1

[tb_start_text mode=4 ]
[僕]（这孩子睡觉时总是把内裤完全露出来啊……）[改ページ]
[_tb_end_text]

[return  ]
*パンツ見る2

[tb_start_text mode=4 ]
[僕]（内裤已经湿得一塌糊涂了）[改ページ]
[_tb_end_text]

[return  ]
*ワレメ見る

[tb_start_tyrano_code]
[call  target="*男消去" cond="f.S1進行 == 2" ]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_tyrano_code]
[if exp="f.S1エロ台詞 == 0"]
[call  target="*ワレメ見る1"]
[elsif exp="f.S1エロ台詞 == 1"]
[call  target="*ワレメ見る1"]
[elsif exp="f.S1エロ台詞 == 2"]
[call  target="*ワレメ見る1"]
[elsif exp="f.S1エロ台詞 == 3"]
[call  target="*ワレメ見る2"]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*男出現" cond="f.S1進行 == 3" ]
[_tb_end_tyrano_code]

[jump  target="*見る選択肢"  storage=""  ]
[s  ]
*ワレメ見る1

[tb_start_text mode=4 ]
[僕]（一条线的肉缝……好可爱啊）[改ページ]
[_tb_end_text]

[return  ]
*ワレメ見る2

[tb_start_text mode=4 ]
[僕]（肉缝已经变得黏糊糊了……）[改ページ]
[_tb_end_text]

[return  ]
*服脱がさない

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（不要，不过那样果然还是……先观察下情况比较好）[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*服脱がす会話1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*服脱がす会話1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（小心再小心……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*ブラ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*ブラ脱がす会話1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*ブラ脱がす会話1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（安静再安静……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1脱がす[1] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*スカート脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*スカート脱がす会話1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*スカート脱がす会話1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（慢慢再慢慢……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1脱がす[2] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*パンツ脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*パンツ脱がす会話1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*パンツ脱がす会話1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（轻手轻脚再轻手轻脚……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1脱がす[3] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]
[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*靴下脱がす

[tb_show_message_window  ]
[tb_start_tyrano_code]
[call  target="*靴下脱がす会話1"]
[_tb_end_tyrano_code]

[jump  target="*選択肢復活"  storage=""  ]
[s  ]
*靴下脱がす会話1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]（一点一点再一点一点……）[改ページ]

[_tb_end_text]

[tb_start_tyrano_code]
[eval exp="f.S1脱がす[4] = 1"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[backlay]

[call  target="*服の状態"  ]
[絵変更 time=1000 visible=false]
[_tb_end_tyrano_code]

[return  ]
*触る初回

[tb_start_tyrano_code]
[eval exp="f.S1進行 = 1" cond="clickable_map.click=='FF0000'"]
[eval exp="f.S1進行 = 2" cond="clickable_map.click=='FFFF00'"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「……」[改ページ]
[僕]（做这种事应该不会醒吧～）[改ページ]
[playse storage="niina368.ogg"]
[にぃな]「呼…」[改ページ]
[僕]（嘛、反正睡得这么死，稍微弄一下应该没问题）[改ページ]
[僕]（那么、轻～轻地、轻～轻地……）[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[call  target="*イタズラ表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[_tb_end_tyrano_code]

[jump  target="*領域復活"  storage=""  ]
*触る

[tb_start_tyrano_code]
[eval exp="tf.表情スキップ = 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="clickable_map.click=='FF0000' && f.S1進行 == 2 || clickable_map.click=='FFFF00' && f.S1進行 == 1 ||  f.S1進行 == 3 "]
[jump  target="*触る1"  ]
[else]
[jump  target="*触る2"  ]
[endif]
[_tb_end_tyrano_code]

[s  ]
*触る1

[tb_start_tyrano_code]
[eval exp="f.S1エロ台詞 = f.S1エロ台詞 - 1"]
[eval exp="f.S1エロ台詞 = 0" cond="f.S1エロ台詞 < 0"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[eval exp="f.S1進行 = 1" cond="clickable_map.click=='FF0000'"]
[eval exp="f.S1進行 = 2" cond="clickable_map.click=='FFFF00'"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*イタズラ表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=750 visible=false]
[call  target="*イタズラ台詞"  ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  target="*領域復活"  storage=""  ]
[_tb_end_tyrano_code]

*触る2

[tb_start_tyrano_code]
[快感ランダム min=3 max=5]
[_tb_end_tyrano_code]

[tb_bar_update  time="300"  wait="false"  name="快感ゲージ1b"  ]
[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko"]
[男 storage="scene1/otoko1b.png"  cond="f.S1進行 == 1"]
[男 storage="scene1/otoko2b.png"  cond="f.S1進行 == 2"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[call  target="*イタズラ表情"  ]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.S1エロ台詞 == 0 && f.kaikan_now >= 30 || f.S1エロ台詞 == 1 && f.kaikan_now >= 60 || f.S1エロ台詞 == 2 && f.kaikan_now >= 100 || f.S1エロ台詞 == 3 && f.kaikan_now >= 140"  ]
[call  target="*イタズラ台詞"  ]
[jump  target="*触る3"  storage=""  cond="f.kaikan_now >= 140"  ]
[jump  target="*領域復活"]
[endif]
[jump  target="*触る2" cond="f.快感速度 == 1"  ]
[jump  target="*領域復活" cond="f.快感速度 == 0"  ]
[_tb_end_tyrano_code]

*触る3

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[僕]「那个…」[改ページ]
[僕]「…早啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase2.png"]
[眉 storage="scene1/mayu2.png" x=8 y=4]
[目 storage="scene1/me2.png"]
[口 storage="scene1/kuti3.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase2.png"]
[眉 storage="scene1/mayu2.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti8.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina369.ogg"]
[にぃな]「去死吧！」[改ページ]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="0"  wait="false"  vmax="10"  ]
[tb_start_text mode=4 ]
[僕]「嘎啊！！」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[黒画面]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[僕]（靠、踢得真够狠）[改ページ]
[文章]
_　…噗通。[改ページ]
;_　僕はそのまま気を失った……[改ページ]
[_tb_end_text]

[tb_hide_message_window  ]
*次へ

[tb_eval  exp="f.kaikan_now=0"  name="kaikan_now"  cmd="="  op="t"  val="0"  val_2="undefined"  ]
[tb_start_tyrano_code]
[eval exp="f.S1クリア = 2"]
[シーン1変数リセット]
[clearvar exp="tf.表情スキップ"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[jump  storage="scene0.ks"  target=""  cond="f.kaisou == 1"]
[jump  storage="scene5b.ks"  target=""  ]
[_tb_end_tyrano_code]

[s  ]
*イタズラ表情

[tb_start_tyrano_code]
[if exp="f.kaikan_now >= 0 && f.kaikan_now < 30"]
[眉 storage="scene1/mayu1.png" x=16 y=8]
[目 storage="scene1/me8.png"]
[口 storage="scene1/kuti1.png"]
[elsif exp="f.kaikan_now >= 30 && f.kaikan_now < 60"]
[眉 storage="scene1/mayu1.png" x=8 y=4]
[目 storage="scene1/me9.png"]
[口 storage="scene1/kuti2.png"]
[elsif exp="f.kaikan_now >= 60 && f.kaikan_now < 100"]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png" x=16 y=8]
[目 storage="scene1/me8.png"]
[口 storage="scene1/kuti7.png"]
[elsif exp="f.kaikan_now >= 100 && f.kaikan_now < 140"]
[汗 storage="scene1/ase2.png"]
[眉 storage="scene1/mayu3.png" x=8 y=4]
[目 storage="scene1/me9.png"]
[口 storage="scene1/kuti4.png"]
[elsif exp="f.kaikan_now >= 140"]
[汗 storage="scene1/ase2.png"]
[眉 storage="scene1/mayu3.png" x=-8 y=-4]
[目 storage="scene1/me6.png"]
[口 storage="scene1/kuti6.png"]
[endif]
[_tb_end_tyrano_code]

[return  ]
*イタズラ台詞

[tb_start_tyrano_code]
[if exp="f.S1エロ台詞 == 0 && f.kaikan_now >= 30 && f.kaikan_now < 60"]
[tb_show_message_window  ]
[playse storage="niina370.ogg"]
[にぃな]「…嗯」[改ページ]
[eval exp="f.S1エロ台詞 = f.S1エロ台詞 + 1"]

[elsif exp="f.S1エロ台詞 == 1 && f.kaikan_now >= 60 && f.kaikan_now < 100"]
[tb_show_message_window  ]
[playse storage="niina371.ogg"]
[にぃな]「哈啊…」[改ページ]
[僕]「……」[改ページ]
[僕]（看来暂时不会醒，这样的话……）[改ページ]
[eval exp="f.S1エロ台詞 = f.S1エロ台詞 + 1"]

[elsif exp="f.S1エロ台詞 == 2 && f.kaikan_now >= 100 && f.kaikan_now < 140"]
[tb_show_message_window  ]
[playse storage="niina372.ogg"]
[にぃな]「啊…　[ハート]啊…啊…[ハート]　啊…[ハート]」[ハート][改ページ]
[eval exp="f.S1エロ台詞 = f.S1エロ台詞 + 1"]

[elsif exp="f.S1エロ台詞 == 3 && f.kaikan_now >= 140"]
[tb_show_message_window  ]
[playse storage="niina373.ogg"]
[にぃな]「诶！？」[改ページ]
[僕]「啊…醒来了」[改ページ]
[endif]
[_tb_end_tyrano_code]

[return  ]
*服の状態

[tb_start_tyrano_code]
[free layer="0" page="back" name="otoko" time="0"]
[男 storage="scene1/otoko1a.png" cond="f.S1進行 == 1"]
[男 storage="scene1/otoko2a.png" cond="f.S1進行 == 2"]

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
[free layer="0" page="back" name="hoho" time="0"]
[頬 storage="scene1/hoho.png" cond="f.kaikan_now >= 150"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[free layer="0" page="back" name="karada" time="0"]
[体 storage="scene1/karada1.png"]
[_tb_end_tyrano_code]

[return  ]
*男消去

[tb_start_tyrano_code]
[backlay]
[free layer="0" page="back" name="otoko" time="0"]
[絵変更 visible=false]
[eval exp="f.S1進行 = 3"]
[_tb_end_tyrano_code]

[return  ]
*男出現

[tb_start_tyrano_code]
[backlay]
[男 storage="scene1/otoko2a.png"]
[絵変更 visible=false]
[eval exp="f.S1進行 = 2"]
[_tb_end_tyrano_code]

[return  ]
