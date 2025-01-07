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
你说你睡不着在想事情，到底在想什么呢？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_3.jpg" time="800"]

[nozomi_window]
#望
……那个……在想过去的自己啊……还有以后的事情之类的[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_5.jpg" time="800"]

[nozomi_window]
#望
我啊，到现在为止几乎从来没有主动去做过什么……[p]

[saku_window]
#朔
啊——……所以你才想一个人去吗[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_8.jpg" time="800"]

[nozomi_window]
#望
这也是原因之一，不过……最主要的还是刚才说的那个理由[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_5.jpg" time="800"]

[nozomi_window]
#望
我觉得自己必须要好好做，所以果然不能给朔添麻烦啊[p]

[saku_window]
#朔
我倒是无所谓……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_9.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
不行。我啊，昨天在想……朔真是个奇怪的人呢
[wait time=" 6500"]
[bg storage="CG19/CG19_shihuku_n_8.jpg" time="800"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
我还以为什么呢，突然就开始说坏话了…………[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

[nozomi_window]
#望
嗯——嗯。我不是想说坏话……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_3.jpg" time="800"]

[nozomi_window]
#望
因为……你不仅愿意做我的约会对象，还收留了无处可去的我……[p]

#望
没有抛弃意志薄弱的我……还给了我面对自己的勇气[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_1.jpg" time="800"]

[nozomi_window]
#望
所以，我觉得你是个奇怪的人[p]

[saku_window]
#朔
这算是在夸我吗……？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_2.jpg" time="800"]

[nozomi_window]
#望
啊哈哈，谁知道呢？……不过朔，你一开始只是用色眯眯的眼光看我吧[r]
[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_7.jpg" time="800"]

[nozomi_window]
#望
你不说话了[p]

[saku_window]
#朔
太真实了，我无言以对[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_2.jpg" time="800"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
啊哈哈。不过……看着朔努力想要改变的样子，我就在想，啊，朔真了不起……
[wait time=" 600"]
[bg storage="CG19/CG19_shihuku_n_3.jpg" time="800" wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

#望
像这样想要改变自己，我从来都没有想过……[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

[nozomi_window]
#望
所以啊，多亏了朔，我……虽然是一点点，但感觉自己也能慢慢改变了[p]

[saku_window]
#朔
那作为感谢，亲一下我也不过分吧[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_11.jpg" time="800"]

[nozomi_window]
#望
呵呵呵……傻瓜。不过，谢谢你…………[p]

[saku_window]
#朔
……我还以为这是个过分的要求呢，你说「谢谢」是在谢什么啊？[p]

#
[default_window]
[bg storage="CG19/CG19_shihuku_n_4.jpg" time="800"]

[nozomi_window]
#望
…………我啊…………朔的……包括这样的地方在内………………[p]

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
（睡得真快！）[p]

[default_window]
#
不过她昨天说没睡好……。[p]
望平静的睡颜上，看不到一丝曾经被不安和愧疚折磨的痕迹。[p]

[bg storage="jishitsu_hiru_01.jpg" time="1000" wait=true]

我也稍微小睡一会儿……[p]
醒来后就去查查自首的相关手续吧。[p]

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
