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
嗯？[p]

[nozomi_window]
#望
我有件事必须要告诉你。[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_1.jpg" time="800"]

[nozomi_window]
#望
我今天一整天都决定了，「一定要把自己想做的事情全都做完！」你知道为什么吗？[r]
[p]

[saku_window]
#朔
……你这么问我也没法答啊。[p]

[default_window]
#
我根本不可能知道原因。[p]
虽然也想过是不是在发泄无处释放的压力，或者有种自毁倾向之类的。[p]
但说出口的话，总觉得对望非常失礼。[p]

[bg storage="CG19/CG19_yoru_shirt_4.jpg" time="800"]

[nozomi_window]
#望
那个啊，你还记得我在海边说过的话吗？[p]

[saku_window]
#朔
说了很多啊……你指的是哪句？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_10.jpg" time="800"]

[nozomi_window]
#望
「我杀了我的父母」这句。[p]

[saku_window]
#朔
啊，好像是听你说过……不过那是开玩笑的吧？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_4.jpg" time="800"]

[nozomi_window]
#望
不是的。[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_3.jpg" time="800"]

[nozomi_window]
#望
是真的。[p]

[saku_window]
#朔
…………[p]

[default_window]
#
居然会开两次一样的玩笑，未免太啰嗦了……本来想这么笑着回应她。[p]
但空气中弥漫着一种让人觉得这是真的的紧张感。[p]

[saku_window]
#朔
为什么偏偏现在，要特意说这种事？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_4.jpg" time="800"]

[nozomi_window]
#望
因为我今天想做的事情，全都做完了啊。[p]

[saku_window]
#朔
……是真的吗？[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_11.jpg" time="800"]

[nozomi_window]
#望
都说了嘛，是真的啦。[p]

[saku_window]
#朔
………………[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_5.jpg" time="800"]

[nozomi_window]
#望
因为虐待太严重了。所以我杀了他们。[p]

[saku_window]
#朔
喂，望。[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_11.jpg" time="800"]

完全没有现实感的告白。[p]
那种人，我一直以为只会出现在虚构故事里。[p]
说自己杀了父母的望。[p]
一定是……真的吧。[p]
即便她过去再怎么痛苦、再怎么凄惨……[p]
杀了人，杀了自己的父母────[p]

[saku_window]
#朔
为什么，你……[p]

[stopbgm]
#朔
──还能露出那样的笑容？[p]

#
[default_window]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="CG19/CG19_yoru_shirt_10_2.jpg" time="300"]
[bg storage="CG19/CG19_yoru_shirt_10.jpg" time="600"]

心底深处感到了一丝『恐惧』。[p]

[bg storage="CG19/CG19_yoru_shirt_2.jpg" time="500"]

[nozomi_window]
#望
啊哈哈……我，居然真的在笑呢[p]

#
[default_window]
[bg storage="CG19/CG19_yoru_shirt_3.jpg" time="500"]

[nozomi_window]
#望
这说明和朔在一起的时光真的很愉快呢[p]

[default_window]
#
虽然我觉得都已经做爱了，现在再说这种话也没资格──[p]

[bg storage="monolog_01.jpg" time="800"]

……别把我牵扯进去。[p]
望肯定很快就会被警察抓住。[p]
和这样的人有牵连，我也不知道自己会变成什么样。[p]
过去的非常规生活确实，坦率地说很快乐。[p]
但是。[p]
我可不想回不了正常的生活。[p]
即使那是多么糟糕的日常。[p]
──就此结束和望的关系吧。[p]
现在只要温柔一点，等到天亮就让她马上离开……[p]
就在我这么想的时候。[p]

[bg storage="kuro.jpg" time="800"]
[wait time=" 500"]

[nozomi_window]
#望
──所以，就到此为止吧[p]


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
