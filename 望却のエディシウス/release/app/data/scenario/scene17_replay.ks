*CG19_replay3

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_17_{number}.mp3" number="20"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

[playbgm  storage="08Voices_orgel_slow.mp3" volume="40"]

;;; スチル表示（CG19）
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]


[saku_window]
#朔
你说你睡不着在想事情，那到底在想什么啊？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_3.jpg" time="800"]

[nozomi_window]
#望
……嗯……就是关于过去的自己啊……还有未来的事情之类的……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_5.jpg" time="800"]

[nozomi_window]
#望
我啊，到现在都完全没有主动去做过什么事情……[p]

[saku_window]
#朔
啊——……所以你才想着一个人去吗？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_8.jpg" time="800"]

[nozomi_window]
#望
也有这个原因啦，不过……最主要还是刚才说的那个理由。[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_5.jpg" time="800"]

[nozomi_window]
#望
想着要好好做事的话，果然不能再给朔添麻烦了嘛。[p]

[saku_window]
#朔
无所谓啦……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_9.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
不行。我啊，昨天在想呢……朔真是个奇怪的人。
[wait time=" 6500"]
[bg storage="CG19/CG19_shihuku_n_8.jpg" time="800"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
我还以为是什么事呢，结果突然被骂了…………[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

[nozomi_window]
#望
嗯嗯。我不是想骂你啦……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_3.jpg" time="800"]

[nozomi_window]
#望
因为嘛……一开始愿意当我的约会对象，然后又收留了无处可去的我……[p]

#望
还没有放弃意志薄弱的我……甚至还给了我直面自己的勇气。[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_1.jpg" time="800"]

[nozomi_window]
#望
所以，我就觉得，真是个奇怪的人呢。[p]

[saku_window]
#朔
这是在夸我吗……？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_2.jpg" time="800"]

[nozomi_window]
#望
哈哈，这就不知道啦？……不过朔，你一开始不就是只用色色的眼光看我吗？[r]
[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_7.jpg" time="800"]

[nozomi_window]
#望
沉默了呢。[p]

[saku_window]
#朔
太真实了，我都无话可说了。[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_2.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
哈哈哈。不过……看到朔想要改变自己啊，我就觉得，啊，朔真厉害……
[wait time=" 600"]
[bg storage="CG19/CG19_shihuku_n_3.jpg" time="800" wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

#望
像那样想着去改变自己，我以前都从来没想过……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

[nozomi_window]
#望
所以呢，多亏了朔，我……虽然只是一点点，但感觉自己也能慢慢改变了。[p]

[saku_window]
#朔
那作为感谢，给我一个吻也可以吧？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_11.jpg" time="800"]

[nozomi_window]
#望
呵呵呵……笨蛋。不过，谢谢你…………[p]

[saku_window]
#朔
……虽然我觉得这是个很糟糕的请求，不过，你说的「谢谢」是谢什么啊？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

[nozomi_window]
#望
…………我啊…………连同朔的……像这样的地方在内………………[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_10.jpg" time="800"]

[nozomi_window]
#望
…………………………[p]

[saku_window]
#朔
望？[p]

[nozomi_window]
#望
……呼………………呼…………[p]

[saku_window]
#朔
(睡得也太快了吧！)[p]

[default_window]
#
(不过她昨天说没睡好啊……。)[p]
望那张安详的睡脸上，已经完全看不到曾经被不安和内疚折磨的痕迹了。[p]

[bg storage="jishitsu_hiru_01.jpg" time="1000" wait=true]

我也稍微小睡一会儿……[p]
等醒来后再查查关于自首的手续吧。[p]

………………[p]
…………[p]
……[p]


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
