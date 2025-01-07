*CG8_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_05_{number}.mp3" number="17"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]



[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="shiro.jpg" time="300"]
[chara_new  name="yozora" storage="yozora.jpg" jname="yozora"]
[playse buf="3"  storage="okugai_yoru.mp3" volume="50" loop=true]

[chara_show  name="yozora"  top="-100" width="1920" height="2880"]
[bg storage="kuro.jpg" time="0"]
[anim name=yozora top="-=700" time=7000]
[wa]

[chara_hide_all time=800 wait=false]
;;; スチル表示
[bg storage="CG8/CG8_haikei.jpg" time="800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
……望？[p]

#
[default_window]

[bg storage="CG8/CG8_ushiro.jpg" time="800"]
[playbgm storage="08Voices_orgel.mp3" volume="40"]

仿佛从一开始就决定要这么做一样——[p]
毫不犹豫地，她把脚搭上了栏杆。[p]

[bg storage="CG8/CG8_yokogao_3.jpg" time="800"]

直到注意到这一点，我才终于明白望想要做什么。[p]
她要越过8楼阳台的另一侧。[p]
这个行为所意味的东西，再明显不过了。[p]

[saku_window]
#朔
住手，望！[p]

#
[default_window]
[bg storage="CG8/CG8_yokogao_1.jpg" time="800"]

望看向了这边。[p]
她那充满忧愁的眼神，映照着漆黑夜晚的黑暗。[p]

[bg storage="CG8/CG8_yokogao_1_zoom.jpg" time="800"]

尽管如此……[p]
我却无意识地感觉到……[p]
她那身影有种说不出的美。[p]
——然而。[p]

[bg storage="CG8/CG8_yokogao_2.jpg" time="800"]

再走几步就能够到她了。[p]
可是，那段距离却仿佛永恒一般遥远。[p]
我拼命伸出手想要阻止望。[p]
必须阻止她！[p]
一定要阻止她——[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[stopbgm]
[mask_off time="300" wait="true"]

——因为如果不阻止的话，让她从这里跳下去的话……[p]
因为协助自杀而被逮捕的，可是我啊——[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_yokogao_1.jpg" time="0"]
[mask_off time="300" wait="true"]

所以我伸出手——却够不到。[p]

我冲出阳台的瞬间，望已经——[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG8/CG8_yokogao_1_zoom.jpg" time="800"]
[wait time=" 500"]
[bg storage="CG8/CG8_yokogao_5_zoom.jpg" time="800"]
[wait time=" 500"]
[fadeoutse buf="3"]
[bg storage="CG8/CG8_yokogao_6_zoom.jpg" time="800"]
[wait time=" 500"]
[bg storage="CG8/CG8_yokogao_6.jpg" time="800"]
[wait time=" 500"]
[bg storage="CG8/CG8_yokogao_5.jpg" time="800"]
[wait time=" 500"]
[stopse buf="3"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#望
拜拜[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_ushiro.jpg" time="0"]
[wait time=" 100"]
[mask_off time="300" wait="true"]

[wait time=" 1000"]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_tobiori.jpg" time="0"]
[wait time=" 100"]
[mask_off time="300" wait="true"]

[wait time=" 500"]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei.jpg" time="0"]
[wait time=" 100"]
[mask_off time="300" wait="true"]

[wait time=" 800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
——————！[p]

#
[default_window]
[bg storage="kuro.jpg" time="300"]
在她坠落的过程中，我们的目光相遇了。[p]
她幸福地笑着，泪珠在空中飞舞。[p]
然后望的身体被黑暗吞噬……[p]

[wait time=" 500"]
[playse buf="3"  storage="BodyDrop_echo.mp3" volume="60"]
[wait time=" 3500"]

我确实亲眼目睹了那一幕，亲耳听到了那声音。[p]


;;; リプレイモード終了

[autostop]
[skipstop]

[cm]
[clearfix]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeoutbgm]
[fadeoutse buf="3"]
[fadeoutse buf="1"]

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
