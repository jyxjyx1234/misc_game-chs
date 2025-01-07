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
好冷啊——[p]

[default_window]
#
以前我们还会互相泼水玩耍……[p]
现在却只是沉浸在海浪声和脚下沙子被冲刷的触感中。[p]
或许，这才是真实不加修饰的望吧。[p]
又或者，是这约莫两年的时间改变了望。[p]

[bg storage="CG15/CG15_6.jpg" time="800"]

[nozomi_window]
#望
……你是不是离我有点远啊？不用担心，我不会像以前那样朝你泼水了[p]

[saku_window]
#朔
我只是觉得望站在那里的样子很美，所以看入迷了[p]

#
[default_window]
[bg storage="CG15/CG15_7.jpg" time="800"]

[nozomi_window]
#望
我不太喜欢你这样刻意地夸我[p]

#
[default_window]
[bg storage="CG15/CG15_3.jpg" time="800"]

[nozomi_window]
#望
我不再强迫自己表现得开心或幸福，感觉轻松多了。朔，我也希望你能这样[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[bg storage="CG15/CG15_1.jpg" time="800"]

其实，我只是在等待合适的时机开口而已。[p]
本想着要营造戏剧性的氛围，选择完美的时机，斟酌该说的话……[p]
……啊，但是，感觉好麻烦啊。[p]
一步步按顺序来，或是计划说话前的铺垫，我都不擅长。[p]
干脆就这样直接说出来吧？[p]
毕竟我们重逢，某种程度上就是为了说这个……[p]
[delay speed=25]
望也可能在等着我，而且我们本来就是为了以后能在一起才分开的，所以最后还是没有不说的选择，也就是说现在只能说出来了对吧？？（语速很快）[p]
[resetdelay]
而且如果望说不用刻意表现自己会觉得轻松的话……[p]
那么，我也没必要勉强自己表演了吧。[p]
我装作若无其事地开口了。[p]

[fadeoutbgm]

[saku_window]
#朔
那个……望[p]

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
和我……交往吧[p]

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
（……咬到舌头了咬到舌头了咬到舌头了为什么在关键时刻我会啊啊啊啊啊啊！！！！！！）[p]
（沉默！！沉默太可怕了。从没经历过这么伤害的沉默！！喂喂该怎么办啊）[r]
[p]
（要不要像以前那样跳进海里蒙混过关～～～！）[p]

#
[default_window]
[bg storage="CG15/CG15_aka_7.jpg" time="800"]

[nozomi_window]
#望
…………[p]

[saku_window]
#朔
（呜！望你别用那么纯真的眼神看着我啊……！！）[p]

#
[default_window]
[fadeoutbgm]
[wait time=" 500"]
[bg storage="CG15/CG15_aka_9.jpg" time="800"]

[nozomi_window]
#望
……啊，我没想到你现在会说这个，有点吃惊[p]

[saku_window]
#朔
是、是啊。抱歉这么突然[p]

#
[default_window]
[bg storage="CG15/CG15_aka_6.jpg" time="800"]

[nozomi_window]
#望
不过……你说得太晚了，朔。我一直在等着呢？[p]

[saku_window]
#朔
望……[p]

#
[default_window]
[bg storage="CG15/CG15_aka_2.jpg" time="800"]

[nozomi_window]
#望
那个啊。朔……[p]

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
我也，真的喜欢上朔了哦[p]

#
[default_window]
[bg storage="CG15/CG15_aka_9.jpg" time="800"]

[nozomi_window]
#望
我一直没能说出「喜欢」这句话，你应该也注意到了吧……对不起，到现在才说出口[p]

#
[default_window]
[bg storage="CG15/CG15_aka_4.jpg" time="800"]

[nozomi_window]
#望
但、但是……那个……我是说……这样的我真的可以吗……？[p]

[saku_window]
#朔
当然可以啊[p]

#
[default_window]
[bg storage="CG15/CG15_aka_5.jpg" time="800"]

明明已经说出了「想要好好地一起生活」这种听起来像求婚宣言的话！[p]
现在说不行了，什么的……绝对不可能。[p]
而且……我也一直在等待啊。[p]
等待着能这样见到真实的望。[p]

[saku_window]
#朔
不如说……拜托了！！[p]

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
……我、我本来想自己说的。不想让朔来告白，我想……自己来告白[r]
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
……请和我交往。拜托了！[p]

[saku_window]
#朔
望……！！[p]

#
[default_window]
[bg storage="CG15/CG15_aka_4.jpg" time="500"]

[nozomi_window]
#望
啊……不对。说错了。对不起对不起，让我重来一次？[p]

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
那个……和我……交往吧！
[wait time=" 3000"]
[bg storage="CG15/CG15_aka_3.jpg" time="500"]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.bg.log_join = false;
[endscript]

[saku_window]
#朔
………………望啊啊啊啊啊啊啊啊啊啊！！[p]

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

浪涛声，和海的气息。[p]

[bg storage="umi02_yuu.jpg" time="800"]

紧紧相扣的双手。[p]
沙滩上延伸的两道身影。[p]
在重复着相同事情中停滞的我们的时间，终于开始流动了。[p]

[bg storage="monolog_01.jpg" time="800"]

曾经逃避进自杀念头，被遗忘在彼方的「幸福」的形态……[p]
我确实，想起来了。[p]
我确实，抓住了那个模糊的「东西」。[p]

[bg storage="kako_05.jpg" time="800"]

不仅仅是因为能和望交往……[p]

我……从遇见望到现在这段时间里，那个软弱的自己……[p]

[bg storage="monolog_01.jpg" time="800"]

那个蠢得要命的软弱的自己，终于能被自己接受了。[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="effect_03.jpg" time="800"]

这就是。[p]

[bg storage="shiro.jpg" time="800"]

这就是，原来如此啊——[p]
我强烈地感到绝对不想放手。[p]
我相信自己能够……想要继续向前走，走向未来。[p]

[bg storage="yuuyake.jpg" time="800"]

然后，但愿——[p]

[mask time=" 2000" graphic="shiro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="ED3.jpg" time="0"]

[mask_off time="4000" wait="true"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true


但愿，走在我身边的她，也怀着同样的愿望————。[p]



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
