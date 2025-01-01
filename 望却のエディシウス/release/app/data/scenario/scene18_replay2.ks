*CG15_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_18_{number}.mp3" number="31"]
[vostart]

[cm]
[clearfix]
[start_keyconfig]

;;;スチル表示
[fadeoutse buf="3"]
[mask time=" 500" graphic="shiro.jpg"]
[wait time=" 1000"]
[bg storage="CG15/CG15_2.jpg" time="0"]
[mask_off time="2000" wait="true"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

[nozomi_window]
#望
好冷──[p]

[default_window]
#
以前我们还会互相泼水玩……[p]
现在只是任由海浪的声音和脚下沙子被冲走的感觉包围着自己。[p]
大概，这才是真正不加修饰的望吧。[p]
或者说，是这两年的时间改变了望。[p]

[bg storage="CG15/CG15_6.jpg" time="800"]

[nozomi_window]
#望
……你是不是在故意保持距离？不像以前那样泼水玩了。[p]

[saku_window]
#朔
只是觉得望站在那里很像一幅画，所以看得入神了而已。[p]

#
[default_window]
[bg storage="CG15/CG15_7.jpg" time="800"]

[nozomi_window]
#望
这样刻意夸我，我其实不太喜欢。[p]

#
[default_window]
[bg storage="CG15/CG15_3.jpg" time="800"]

[nozomi_window]
#望
因为不再强迫自己去享受、去追求幸福，反而轻松了很多，所以我也希望朔能这样。[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[bg storage="CG15/CG15_1.jpg" time="800"]

其实，只是在找个合适的时机说而已。[p]
精心铺垫一个戏剧性的场景，选择完美的时机，说出该说的话……。[p]
……啊，不过，这样想想好麻烦啊。[p]
逐步安排顺序、计划好开口的流程之类的，我真的不擅长这些。[p]
干脆就趁着这股劲直接说了吧？[p]
毕竟，这次重逢好像就是为了说那个吧……[p]
[delay speed=25]
望可能也在等着我啊，毕竟当初分开就是为了以后还能在一起，所以根本没有不说的选项啊，也就是说，现在只能说了吧？？（语速很快）[p]
[resetdelay]
再说了，如果望觉得不用伪装自己就很轻松的话……[p]
那我也没必要勉强自己装模作样了吧。[p]
隐藏着自己的心情，我张开了嘴。[p]

[fadeoutbgm]

[saku_window]
#朔
那、那个……望。[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG15/CG15_2.jpg" time="800"]
[wait time=" 2000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[saku_window]
#朔
能不能……和我交往？[p]

#
[default_window]
[wait time=" 500"]
[bg storage="CG15/CG15_4.jpg" time="800"]
[wait time=" 500"]

[nozomi_window]
#望
…………………………[p]

#
[default_window]
[wait time=" 1000"]

[saku_window]
#朔
……………………………………。[p]

#
[default_window]
[wait time=" 1000"]

[bg storage="CG15/CG15_aka_7.jpg" time="800"]

[nozomi_window]
#望
………………………………………………[p]

#
[default_window]
[wait time=" 1000"]

[saku_window]
#朔
………………………………………………………………。[p]

#
[default_window]
[wait time=" 500"]

[bg storage="yuuyake.jpg" time="500"]

[wait time=" 500"]

[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[saku_window]
#朔
（……结巴了结巴了结巴了，为什么关键时刻我会啊啊啊啊啊啊啊！！！！！！）[p]
（沉默！！沉默太可怕了！这种让人受重创的沉默我还是第一次遇到！！喂喂，这下该怎么办啊！！）[r]
[p]
（要不要像以前那样跳进海里糊弄过去算了～～～！）[p]

#
[default_window]
[bg storage="CG15/CG15_aka_7.jpg" time="800"]

[nozomi_window]
#望
…………[p]

[saku_window]
#朔
（呜呜呜！不要用那么纯真的眼神看着我，望……！！）[p]

#
[default_window]
[fadeoutbgm]
[wait time=" 500"]
[bg storage="CG15/CG15_aka_9.jpg" time="800"]

[nozomi_window]
#望
……我、我没想到你会现在说，有点吓到了。[p]

[saku_window]
#朔
是、是啊。突然说出来对不起。[p]

#
[default_window]
[bg storage="CG15/CG15_aka_6.jpg" time="800"]

[nozomi_window]
#望
但是……你说得太晚了，朔。我一直在等你哦？[p]

[saku_window]
#朔
望……[p]

#
[default_window]
[bg storage="CG15/CG15_aka_2.jpg" time="800"]

[nozomi_window]
#望
那个啊，朔……[p]

;;;スチル表示
[mask time=" 300" graphic="shiro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG15/CG15_zoom_1.jpg" time="0"]
[wait time=" 700"]
[mask_off time="1000" wait="true"]
[playbgm storage="12Homecoming_orgel.mp3" volume="40"]

[wait time=" 700"]
[bg storage="CG15/CG15_zoom_2.jpg" time="800"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[nozomi_window]
#望
我也，已经真正喜欢上你了哦。[p]

#
[default_window]
[bg storage="CG15/CG15_aka_9.jpg" time="800"]

[nozomi_window]
#望
一直没能说出「喜欢」这句话，我自己也知道……到现在才说出来，对不起啦！[p]

#
[default_window]
[bg storage="CG15/CG15_aka_4.jpg" time="800"]

[nozomi_window]
#望
但、但是……那个……话说回来……真的可以是这样的我吗……？[p]

[saku_window]
#朔
当然可以啊！[p]

#
[default_window]
[bg storage="CG15/CG15_aka_5.jpg" time="800"]

『想要好好地一起生活下去』，都像是在求婚宣言了！[p]
现在却说还是算了什么的……根本不可能。[p]
而且……我也是，一直在等着呢。[p]
等着能够这样，遇见真实的望。[p]

[saku_window]
#朔
所以说……拜托了！！[p]

#
[default_window]
[bg storage="CG15/CG15_aka_8.jpg" time="800"]

[nozomi_window]
#望
……不要！[p]

[saku_window]
#朔
不、不要……？[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
……我、我本来想从我这边说的啦。不是朔来告白，而是我来告白……我想这么做。[r]
[wait time=" 2200"]
[bg storage="CG15/CG15_aka_6.jpg" time="500"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

#
[default_window]
[bg storage="CG15/CG15_zoom_2.jpg" time="500"]

[nozomi_window]
#望
……请和我交往吧。拜托了！[p]

[saku_window]
#朔
望……！！[p]

#
[default_window]
[bg storage="CG15/CG15_aka_4.jpg" time="500"]

[nozomi_window]
#望
啊……不对，搞错了。对不起对不起，重新来一次可以吗？[p]

[saku_window]
#朔
诶？[p]

#
[default_window]
[bg storage="CG15/CG15_aka_2.jpg" time="500"]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.bg.log_join = true;
[endscript]

[nozomi_window]
#望
那个……请和……我交往吧！
[wait time=" 3000"]
[bg storage="CG15/CG15_aka_3.jpg" time="500"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
………………望啊啊啊啊啊啊啊啊！！[p]

#
[default_window]
[mask time=" 3000" graphic="shiro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="yuuyake.jpg" time="0"]
[wait time=" 2500"]
[mask_off time="4000" wait="true"]
[playbgm  storage="05Homecoming.mp3" volume="40"]
[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

海浪的声音，和大海的气息。[p]

[bg storage="umi02_yuu.jpg" time="800"]

紧紧相握的双手。[p]
沙滩上延伸出的两个人的影子。[p]
在不断重复的日常中停滞的我们的时间，终于开始流动了。[p]

[bg storage="monolog_01.jpg" time="800"]

曾经逃避到自杀念头中，被遗忘在记忆深处的「幸福」的模样……[p]
确实地，想起来了。[p]
确实地，用这双手抓住了那模糊不清的「它」。[p]

[bg storage="kako_05.jpg" time="800"]

不只是因为和望交往了……[p]

我……从和望相遇到现在这段时间里，把自己懦弱的一面……[p]

[bg storage="monolog_01.jpg" time="800"]

那个像个傻瓜一样懦弱的自己，终于能够亲自承认了。[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="effect_03.jpg" time="800"]

这就是。[p]

[bg storage="shiro.jpg" time="800"]

这就是，那样的吗，──[p]
我强烈地觉得，这绝不能放手。[p]
我相信，未来也想要一起走下去……也一定能一起走下去。[p]

[bg storage="yuuyake.jpg" time="800"]

然后，我祈愿──[p]

[mask time=" 2000" graphic="shiro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="ED3.jpg" time="0"]

[mask_off time="4000" wait="true"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true


祈愿她也能和我一样，怀着同样的心愿，一起并肩前行────。[p]



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
