[_tb_system_call storage=system/_scene0.ks]

*scene0

[call  storage="routine.ks"  target="*メッセージ1"  ]
[tb_start_tyrano_code]
[シーン1変数リセット]
[回想リセット]
[_tb_end_tyrano_code]

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[free layer=fix name="sysbutton"]
[黒画面]
[awakegame variable_over="false" bgm_over="false"]
[if exp="f.kaisoumode != 1"]
[autosave]
[endif]
[_tb_end_tyrano_code]

*にぃなのエッチ選択

[cm  ]
[tb_start_text mode=4 ]
_　……今天终于迎来了期盼已久的周末星期六。和妮娜的秘密时光。
_　[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[mask time=0]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu1.png"]
[目 storage="scene1/me1.png"]
[口 storage="scene1/kuti1.png"]
[call  target="*服の状態"]
[call  target="*体の状態"]
[絵変更 time=100 visible=false]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[mask_off time=1000]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="500"  loop="true"  storage="1.ogg"  ]
*選択肢復活

[tb_hide_message_window  ]
[tb_start_tyrano_code]
[cancelskip]
[free layer=fix name="sysbutton"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択画像  graphic="sentaku/maenoh.png"  target="*エッチ選択肢" width="215" ]
[選択画像  graphic="sentaku/tiginoh.png"  target="*次へ" cond="f.S9クリア == null"  ]
[選択画像  graphic="sentaku/system.png" target="*システム"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*次へ

[cm  ]
[tb_start_tyrano_code]
[if exp="f.S6クリア == null"]
[call  target="*話す1"]
[elsif exp="f.S2クリア == 1"]
[call  target="*話す2"]
[elsif exp="f.S1クリア == 1"]
[call  target="*話す3"]
[elsif exp="f.S3クリア == 1"]
[call  target="*話す2"]
[elsif exp="f.S9クリア == null"]
[call  target="*話す4"]
[else]
[endif]
[_tb_end_tyrano_code]

[stopbgm  time="1000"  fadeout="true"  ]
[tb_start_tyrano_code]
[jump  storage="scene4.ks"  cond="f.S4クリア == null"  ]
[jump  storage="scene6.ks"  cond="f.S6クリア == null"  ]
[jump  storage="scene2b.ks"  cond="f.S2クリア == 1"  ]
[jump  storage="scene1b.ks"  cond="f.S1クリア == 1"  ]
[jump  storage="scene3b.ks"  cond="f.S3クリア == 1"  ]
[jump  storage="scene9.ks"  cond="f.S9クリア == null"  ]
[_tb_end_tyrano_code]

[s  ]
*エッチ選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/toujo.png"  target="*にぃな登場１開始"  exp="f.kaisou=1"  cond="f.S1クリア == 1"  ]
[選択画像  graphic="sentaku/toujo.png"  target="*にぃな登場選択肢"  cond="f.S1クリア == 2"  ]
[選択画像  graphic="sentaku/oppai.png"  target="*おっぱい１開始"  exp="f.kaisou=1"  cond="f.S2クリア == 1"  ]
[選択画像  graphic="sentaku/oppai.png"  target="*おっぱい選択肢"  cond="f.S2クリア == 2"  ]
[選択画像  graphic="sentaku/wareme.png"  target="*ワレメ１開始" exp="f.kaisou=1"  cond="f.S3クリア == 1"  ]
[選択画像  graphic="sentaku/wareme.png"  target="*ワレメ選択肢"  cond="f.S3クリア == 2"  ]
[選択画像  graphic="sentaku/omanko.png"  target="*オマンコ１開始"  exp="f.kaisou=1"  cond="f.S4クリア == 1"  ]
[選択画像  graphic="sentaku/omanko.png"  target="*オマンコ選択肢"  cond="f.S4クリア == 2"  ]
[選択画像  graphic="sentaku/housi.png"  target="*ご奉仕１開始"  exp="f.kaisou=1"  cond="f.S5クリア == 1"  ]
[選択画像  graphic="sentaku/housi.png"  target="*ご奉仕選択肢"  cond="f.S5クリア == 2"  ]
[選択画像  graphic="sentaku/osiri.png"  target="*お尻１開始"  exp="f.kaisou=1"  cond="f.S6クリア == 1"  ]
[選択画像  graphic="sentaku/osiri.png"  target="*お尻選択肢"  cond="f.S6クリア == 2"  ]
[選択画像  graphic="sentaku/sex.png"  target="*セックス１開始"  exp="f.kaisou=1"  cond="f.S7クリア == 1"  ]
[選択画像  graphic="sentaku/sex.png"  target="*セックス選択肢"  cond="f.S7クリア == 2 || f.S8クリア == 2"  ]
[選択画像  graphic="sentaku/osioki.png"  target="*話す4"  exp="f.kaisou=1"  cond="f.S9クリア == 1"  ]
[選択画像  graphic="sentaku/modoru.png"  target="*選択肢復活"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*にぃな登場選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/toujo.png"  exp="f.kaisou=1"  target="*にぃな登場１開始"  width="215"]
[選択画像  graphic="sentaku/ohirune.png"  exp="f.kaisou=1"  target="*にぃな登場２開始"  width="215"]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*にぃな登場１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene1.ks" target="*scene1"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*にぃな登場２開始

[call  target="*話す3"  storage=""  ]
[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene1b.ks" target="*scene1b"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*おっぱい選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/1.png"  exp="f.kaisou=1"  target="*おっぱい１開始"  width="215" ]
[選択画像  graphic="sentaku/2.png"  exp="f.kaisou=1"  target="*おっぱい２開始"  width="215" ]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*おっぱい１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene2.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*おっぱい２開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene2b.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*ワレメ選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/1.png"  exp="f.kaisou=1"  target="*ワレメ１開始" width="215" ]
[選択画像  graphic="sentaku/2.png"  exp="f.kaisou=1"  target="*ワレメ２開始" width="215" ]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*ワレメ１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene3.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*ワレメ２開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene3b.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*オマンコ選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/1.png"  exp="f.kaisou=1"  target="*オマンコ１開始"  width="215" ]
[選択画像  graphic="sentaku/2.png"  exp="f.kaisou=1"  target="*オマンコ２開始"  width="215" ]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*オマンコ１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene4.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*オマンコ２開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene4b.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*ご奉仕選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/1.png"  exp="f.kaisou=1"  target="*ご奉仕１開始"  width="215" ]
[選択画像  graphic="sentaku/2.png"  exp="f.kaisou=1"  target="*ご奉仕２開始"  width="215" ]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*ご奉仕１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene5.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*ご奉仕２開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene5b.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*お尻選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/1.png"  exp="f.kaisou=1"  target="*お尻１開始"  width="215" ]
[選択画像  graphic="sentaku/2.png"  exp="f.kaisou=1"  target="*お尻２開始"  width="215" ]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*お尻１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene6.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*お尻２開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene6b.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*セックス選択肢

[cm  ]
[tb_start_tyrano_code]
[選択画像  graphic="sentaku/1.png"  exp="f.kaisou=1"  target="*セックス１開始"  width="215" ]
[選択画像  graphic="sentaku/2.png"  exp="f.kaisou=1"  target="*セックス２開始"  width="215" ]
[選択画像  graphic="sentaku/modoru.png"  target="*エッチ選択肢"   ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[選択出現2]
[_tb_end_tyrano_code]

[s  ]
*セックス１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene7.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*セックス２開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene7b.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*後背位１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene8.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
*お仕置き１開始

[stopbgm  time="500"  fadeout="true"  ]
[tb_start_tyrano_code]
[黒画面 visible=false]
[sleepgame storage="scene9.ks"]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
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
*話す1

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「……」[改ページ]
[僕]「那、那个……又要做H的事吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[汗 storage="scene1/ase1.png"]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me7.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina544.ogg"]
[にぃな]「好、好～的……」[改ページ]
[僕]（……好）[改ページ]
[_tb_end_text]

[return  ]
*話す2

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「呐……来做吧，H」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me4.png"]
[口 storage="scene1/kuti3.png"]
[頬 storage="scene1/hoho.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[にぃな]「……嗯」[改ページ]
[_tb_end_text]

[return  ]
*話す3

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「来，妮娜。今天也要开始H了啊～……」[改ページ]
[_tb_end_text]

[return  ]
*話す4

[tb_show_message_window  ]
[tb_start_text mode=4 ]
[僕]「来，妮娜。今天也要开始H了啊」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png" x=8 y=4]
[目 storage="scene1/me2.png"]
[口 storage="scene1/kuti7.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina484.ogg"]
[にぃな]「诶～……不要」[改ページ]
[僕]「为、为什么！？最近明明一直被拒绝啊」[改ページ]
[playse storage="niina485.ogg"]
[にぃな]「因为很麻烦嘛」[改ページ]
[僕]「麻烦！？」[改ページ]
[playse storage="niina486.ogg"]
[にぃな]「因......累啊。妮娜可能已经不想再做H的事了」[改ページ]
[僕]「要、要放弃！？也就是说再也不做H了吗」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu1.png" x=8 y=4]
[目 storage="scene1/me9.png"]
[口 storage="scene1/kuti4.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina487.ogg"]
[にぃな]「嗯，这个打算」[改ページ]
[僕]「别、别这么说啊！我会努力让你舒服的。 好吗？ 好吗？」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[眉 storage="scene1/mayu3.png"]
[目 storage="scene1/me7.png"]
[口 storage="scene1/kuti6.png"]
[絵変更]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
[playse storage="niina488.ogg"]
[にぃな]「嗯～......算了吧。H是什么样大概也明白了。麻烦～好麻烦～」[改ページ]
[僕]「咕呜呜呜呜呜呜━━」[改ページ]
[_tb_end_text]

[tb_start_tyrano_code]
[黒画面]
[autosave cond="f.kaisou != 1"]
[_tb_end_tyrano_code]

[playbgm  volume="100"  time="500"  loop="true"  storage="6.ogg"  ]
[quake  time="300"  count="3"  hmax="10"  wait="false"  vmax="0"  ]
[tb_start_text mode=4 ]
[僕]「嗒啊啊啊啊啊！！」[改ページ]
[playse storage="niina489.ogg"]
[にぃな]「呀啊！？突、突然做什么呀！」[改ページ]
[僕]「可恶～既然这样，今天一定要让你明白！」[改ページ]
[playse storage="niina490.ogg"]
[にぃな]「啊！你、你打算做什么奇怪的事呀！住手！住手！」[改ページ]
[_tb_end_text]

[stopbgm  time="500"  fadeout="true"  ]
[tb_hide_message_window  ]
[tb_start_tyrano_code]
[if exp="f.kaisou == 1"]
[sleepgame storage="scene9.ks"]
[elsif exp="f.kaisou == null"]
[jump  storage="scene9.ks"]
[endif]
[_tb_end_tyrano_code]

[jump  target="*scene0"  storage=""  ]
[s  ]
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
*S0評価式

[tb_show_message_window  ]
[tb_start_tyrano_code]
;[emb exp="f.S1クリア"]
;[emb exp="f.S2クリア"]
;[emb exp="f.S3クリア"]
;[emb exp="f.S4クリア"]
;[emb exp="f.S5クリア"]
;[emb exp="f.S6クリア"]
;[emb exp="f.S7クリア"]
;[emb exp="f.S8クリア"]
[emb exp="f.kaisoumodo"]
[emb exp="f.kaisou"]
;[emb exp="f.S9クリア"]
;[emb exp="f.服脱ぎ"]
;[emb exp="f.スカート脱ぎ"]
;[emb exp="f.靴下脱ぎ"]
[_tb_end_tyrano_code]

[l  ]
[tb_hide_message_window  ]
[return  ]
