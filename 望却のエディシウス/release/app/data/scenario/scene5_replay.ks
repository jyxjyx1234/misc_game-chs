*CG19_replay2

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_05_{number}.mp3" number="1"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]


[bg storage="CG19/CG19_yoru_shirt_3.jpg" time="800"]
[playbgm storage="09Unopened_orgel.mp3" volume="30"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]


[nozomi_window]
#望
朔[p]

[saku_window]
#朔
怎么了？[p]

[nozomi_window]
#望
我有件事必须要说[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_1.jpg" time="800"]

[nozomi_window]
#望
我今天一整天都决定要『做自己想做的所有事情！』你知道为什么吗？[r]
[p]

[saku_window]
#朔
……你这么问我也……[p]

[default_window]
#
我怎么可能知道。[p]
我想象了各种可能性，比如她在发泄无处宣泄的压力，或者有自毁倾向之类的。[p]
但说出这些感觉对望太失礼了。[p]

[bg storage="CG19/CG19_yoru_shirt_4.jpg" time="800"]

[nozomi_window]
#望
那个，你还记得我在海边说过的话吗？[p]

[saku_window]
#朔
我们聊了很多啊……你指哪一句？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_10.jpg" time="800"]

[nozomi_window]
#望
『我父母是我杀的』这句[p]

[saku_window]
#朔
啊，我记得你确实说过……不过是开玩笑吧？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_4.jpg" time="800"]

[nozomi_window]
#望
嗯嗯[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_3.jpg" time="800"]

[nozomi_window]
#望
是真的[p]

[saku_window]
#朔
…………[p]

[default_window]
#
我本想嘲笑她说「连续两次开同样的玩笑，未免太过分了」……[p]
但空气中弥漫着一种让人感觉这是事实的紧张感。[p]

[saku_window]
#朔
为什么现在才特意说这种事？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_4.jpg" time="800"]

[nozomi_window]
#望
因为我今天想做的事，全～部都做完了啊[p]

[saku_window]
#朔
……是真的吗？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_11.jpg" time="800"]

[nozomi_window]
#望
我不是说了嘛。是真的哦[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_5.jpg" time="800"]

[nozomi_window]
#望
虐待太严重了。所以我杀了他们[p]

[saku_window]
#朔
喂，望[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_11.jpg" time="800"]

这完全不真实的告白。[p]
我一直以为这种人只存在于虚构作品中。[p]
说自己杀了父母的望。[p]
恐怕……是真的吧。[p]
即便过去再怎么痛苦、再怎么凄惨……[p]
杀了人，杀了父母────[p]

[saku_window]
#朔
你为什么……[p]

[stopbgm]
#朔
——能露出那样的笑容？[p]

#
[default_window]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="CG19/CG19_yoru_shirt_10_2.jpg" time="300"]
[bg storage="CG19/CG19_yoru_shirt_10.jpg" time="600"]

内心深处不禁感到「恐惧」。[p]

[bg storage="CG19/CG19_yoru_shirt_2.jpg" time="500"]

[nozomi_window]
#望
啊哈哈…………我，能好好地笑出来呢[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_3.jpg" time="500"]

[nozomi_window]
#望
这就说明和朔在一起的时光有多快乐啊[p]

[default_window]
#
虽然都已经做爱了，现在说这种话可能没资格——[p]

[bg storage="monolog_01.jpg" time="800"]

……别把我牵扯进去。[p]
望肯定很快就会被警察抓住吧。[p]
要是和这种人扯上关系，我的下场也不好说。[p]
度过的非日常确实是发自内心地觉得快乐。[p]
但是。[p]
我可不想回不去日常生活。[p]
就算那是再糟糕的日常生活也一样。[p]
——就此结束和望的关系吧。[p]
现在先对她温柔一点，等睡醒后就立即让她回去……[p]
就在我这么想的时候。[p]

[bg storage="kuro.jpg" time="800"]
[wait time=" 500"]

[nozomi_window]
#望
——所以，到此为止了[p]


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
[fadeoutse buf="2"]
[fadeoutse buf="1"]

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[stopse buf="2"]
[stopse buf="1"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
