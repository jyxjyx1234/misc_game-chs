*CG19_replay1

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_04_{number}.mp3" number="13"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

[bg storage="CG19/CG19_shirt_n_3.jpg" time="800"]
[playbgm storage="DAY201.mp3" volume="20"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

[nozomi_window]
#望
亲吻时的朔，紧紧闭着眼睛。好可爱[p]

[default_window]
#
虽然望的指尖也在微微颤抖呢。[p]
……不过，这种事就不一一说出来了。[p]
仅仅是唇齿相触的亲吻，就让我刚才所有的担忧都烟消云散了。[p]

[bg storage="CG19/CG19_shirt_n_3_2.jpg" time="800"]

不仅如此，反而变得难以抑制兽欲了。[p]
在这种情况下，怎么可能忍得住。[p]
但是……真的可以吗？[p]
不要。从决定来家里的那一刻起就已经明白了。[p]
望也是为此而来的吧。[p]
无视望的心意，也会伤害到望的自尊。[p]

[bg storage="monolog_01.jpg" time="800"]

[saku_window]
#朔
（不对……不是这样）[p]
（这全都是借口）[p]

#
[default_window]
简单来说，只是……我想和望做爱。[p]
现在，就只有这个念头了。[p]

[bg storage="CG19/CG19_shirt_n_3_2.jpg" time="800"]

意识到自己得出了如此简单的结论，感到有些好笑。[p]
想起刚才被望说「可爱」，于是回应道。[p]

[bg storage="CG19/CG19_shirt_n_3.jpg" time="800"]

[saku_window]
#朔
明明望更可爱[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_6.jpg" time="800"]

[nozomi_window]
#望
……突然怎么了？这种话不适合你哦[p]

[saku_window]
#朔
你这张嘴真烦人[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_kiss_3.jpg" time="800"]

[nozomi_window]
#望
唔嗯……！！？[p]

[default_window]
#
唇分开了。[p]

[bg storage="CG19/CG19_shirt_n_8.jpg" time="800"]
[nozomi_window]
#望
……真恶心[p]

[saku_window]
#朔
这不就是简单的骂人吗[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_9.jpg" time="800"]

[nozomi_window]
#望
你刚才不是说「哼，你这张嘴真烦人」吗[p]

[saku_window]
#朔
我可没说「哼」！别自己加戏[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_2.jpg" time="800"]
[wait time=" 700"]

[bg storage="CG19/CG19_shirt_n_kiss_1.jpg" time="800"]

一边这样聊着，一边慢慢地重复着像是交流一般的亲吻。[p]

[bg storage="CG19/CG19_shirt_n_kiss_4.jpg" time="800"]

在间隙中，我瞥了一眼望的身体。[p]
更准确地说，是不由自主地看了一眼。[p]

或许是因为姿势的缘故，我的目光被那两个明显凸起的丰满吸引住了。[p]
望大概也察觉到我在看她的身体吧。[p]
所以我诚实地表达了自己想做的事。[p]

[bg storage="CG19/CG19_shirt_n_kiss_2.jpg" time="800"]

[saku_window]
#朔
那个……想脱掉衣服贴在一起[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_11.jpg" time="800"]

[nozomi_window]
#望
……唔~该怎么办呢~[p]

[saku_window]
#朔
不行吗[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_3.jpg" time="800"]

[nozomi_window]
#望
啊哈哈。真是的，别用那种小动物般的眼神看我嘛。那么……可以哦？[p]


#
[default_window]

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
