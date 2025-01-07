*BAD_CG_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

[cm]
[clearfix]
[start_keyconfig]

[bg storage="CG8/CG8_haikei_2.jpg" time="1000"]


[wait time=" 500"]
[playbgm  storage="04Faraway.mp3" volume="40"]
[bg storage="kuro.jpg" time="500" method="fadeInUp"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

#
[default_window]
微笑着说着很幸福——[p]
像祈祷一样紧握着手，越过栏杆，坠入夜的深处。[p]
被重力牵引，开始坠落。[p]

[stopbgm]
[bg storage="BAD_CG/ED2_namida.jpg" time="1000" ]
[bg storage="kuro.jpg" time="500"]

然而，就在坠落的瞬间，有什么东西闪烁了一下。[p]
[wait time=" 300"]
既不是星光，也不是城市的灯火。[p]
[wait time=" 300"]

[saku_window]
#朔
————————[p]

#
[default_window]
[wait time=" 300"]

我以为我们是一边笑着说「很幸福」，一边一起跳下去的——[p]
[wait time=" 300"]
可是，为什么————[p]
[wait time=" 300"]

[bg storage="BAD_CG/ED2.jpg" time="1000"]

为什么——————[p]
[wait time=" 300"]

你会露出那样的表情————————[p]

[mask time=" 300" graphic="kuro.jpg"]

[wait time=" 2000"]
[bg storage="kuro.jpg" time="0"]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="3"  storage="BodyDrop_echo.mp3" volume="70"]
[wait time=" 3500"]

[playse buf="3"  storage="okugai_yoru.mp3" volume="60" loop=true]

[mask_off time="3000" wait="true"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

————————————————————————————————————[p]
————————————————————————————————————[p]

[bg storage="BAD_CG/ED2_2.jpg" time="1000"]

————————————————————————————————————[p]

[bg storage="BAD_CG/ED2_5.jpg" time="1000"]

[p]



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
