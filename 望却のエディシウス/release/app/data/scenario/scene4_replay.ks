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
接吻的时候，朔紧紧闭着眼睛。好可爱。[p]

[default_window]
#
望的指尖也在微微颤抖呢。[p]
……不过，这种事我才不会说出口。[p]
仅仅是一个触碰的吻，就已经把我刚才所有的担忧一扫而空了。[p]

[bg storage="CG19/CG19_shirt_n_3_2.jpg" time="800"]

甚至让压抑兽欲变得更加困难了。[p]
在这种情况下，根本不可能忍耐得住。[p]
但是……真的可以吗？[p]
不要。从决定来家里的那一刻起，我就已经明白了。[p]
望肯定也是为了这个才来的吧。[p]
无视望的心意，会伤害到她的自尊的。[p]

[bg storage="monolog_01.jpg" time="800"]

[saku_window]
#朔
（不……不是这样的）[p]
（这一切，都是借口。）[p]

#
[default_window]
简单来说，只是……我想和望做爱。[p]
现在，只有这个念头了。[p]

[bg storage="CG19/CG19_shirt_n_3_2.jpg" time="800"]

对于得出如此简单明了的结论，我还觉得有些好笑。[p]
刚才望说我「可爱」的话浮现在脑海，我开口回应。[p]

[bg storage="CG19/CG19_shirt_n_3.jpg" time="800"]

[saku_window]
#朔
还是望更可爱吧。[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_6.jpg" time="800"]

[nozomi_window]
#望
……突然怎么了？完全不适合你啊，这种话。[p]

[saku_window]
#朔
真是多嘴的家伙。[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_kiss_3.jpg" time="800"]

[nozomi_window]
#望
嗯唔……！！？[p]

[default_window]
#
我松开了嘴唇。[p]

[bg storage="CG19/CG19_shirt_n_8.jpg" time="800"]
[nozomi_window]
#望
……真恶心。[p]

[saku_window]
#朔
这就是单纯的恶意吧！[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_9.jpg" time="800"]

[nozomi_window]
#望
「哼，真是多嘴的家伙」之类的，还说得一脸正经呢。[p]

[saku_window]
#朔
我才没说什么「哼」！别随便加戏啊！[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_2.jpg" time="800"]
[wait time=" 700"]

[bg storage="CG19/CG19_shirt_n_kiss_1.jpg" time="800"]

一边斗嘴，一边慢慢地，像是交流般地反复亲吻着。[p]

[bg storage="CG19/CG19_shirt_n_kiss_4.jpg" time="800"]

在这过程中，我瞥了一眼望的身体。[p]
更准确地说，是下意识地看了过去。[p]

可能是因为姿势问题，目光被那两处隆起深深吸引住了。[p]
大概，我偷看她身体的事，已经被望察觉到了吧。[p]
所以我坦率地表达了自己的想法。[p]

[bg storage="CG19/CG19_shirt_n_kiss_2.jpg" time="800"]

[saku_window]
#朔
那个……我想脱掉衣服抱在一起。[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_11.jpg" time="800"]

[nozomi_window]
#望
……诶——怎么办好呢——[p]

[saku_window]
#朔
不可以吗？[p]

#
[default_window]
[bg storage="CG19/CG19_shirt_n_3.jpg" time="800"]

[nozomi_window]
#望
哈哈哈。真是的，别用那种小动物一样的眼神看我啦。那么……可以哦？[p]


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
