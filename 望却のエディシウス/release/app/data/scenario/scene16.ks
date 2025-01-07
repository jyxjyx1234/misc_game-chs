
;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_16_{number}.mp3" number="1"]
[vostart]

[wait time=" 1500"]
[bg storage="jishitsu_hiru_01.jpg" time="800"]
[chara_show  name="望3_ネックレス有" face="obie1_1" top="50" width="1600" height="2259" time=800]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[nozomi_window]
#望
被看到了……对不起，朔。都是我的错。连朔也被卷进来了……[p]

[saku_window]
#朔
我没事，本来就有这个心理准备。……我已经做好觉悟了[p]

#
[default_window]
[chara_hide_all time=600 wait=false]
[bg storage="camera3.jpg" time="800"]
[playbgm  storage="04_zankyou.mp3" volume="30"]

警察给我看的照片……大概是望来我家那天拍的。[p]
不，应该说，如果不是那天的话就说不通了。[p]
而且那天，我因为要去车站的厕所，有那么一瞬间和望分开了。[p]
他们大概是截取了车站监控摄像头的画面并打印出来……[p]
警察手里的，应该就是那时候的照片。[p]
我的脸没有被认出来是不幸中的万幸，但这也只是时间问题罢了。[p]

[bg storage="jishitsu_hiru_01.jpg" time="500"]
[chara_show  name="望3_ネックレス有" face="obie1_2" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
果然，根本就没有什么安全的地方……我该去哪里才好啊……呜[p]

[default_window]
#
望看起来无法掩饰自己的焦急。[p]
她似乎在拼命忍住不哭出来。[p]
但是。[p]
我想到了一个办法。[p]
一个打破现状的唯一方法。[p]
一个已经有『成功案例』的方法。[p]

[saku_window]
#朔
那个，望，我有个提议……如果顺利的话，也许可以逃脱警察的追捕！[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="gimon2" cross=false time=500]

[nozomi_window]
#望
提议……？[p]

[default_window]
#
望不安地低着头，抬起脸看向这边。[p]
那表情中似乎透露出一丝希望，带着期待。[p]
我向望说出了那个提议的内容。[p]

[stopbgm]
[saku_window]
#朔
那个，你能再自杀一次吗？这样我们就能通过循环回到卯之岛的那个时候[r]
[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie2_1" cross=false time=500]

[nozomi_window]
#望
──啊[p]

[default_window]
#
;;; 暗転
[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="effect_02.jpg" time="0"]
[mask_off time="400" wait="true"]

──那张照片是望来我家那天拍的，所以只要让那件事不曾发生就行了。[p]
──不过，即使回去了，之后该怎么办还得再想想。[p]
──至少可以解决现在的问题，不是吗？[p]

;;; 暗転戻り
[bg storage="jishitsu_hiru_01_2.jpg" time="800"]

面对没有回应的望，我不断地说着这样的话。[p]
望刚刚抬起的脸又低了下去，看不清表情。[p]
但仔细一看，能发现她的腿，不，整个身体都在颤抖。[p]
难道……到现在还在害怕吗？[p]

[bg storage="jishitsu_hiru_01.jpg" time="500" wait=false]
[chara_show  name="望3_ネックレス有" face="obie1_6" top="50" width="1600" height="2259" time=500 wait=false]
[wait time=300]
[quake count=3 time=200 hmax=5 vmax=5]

[nozomi_window]
#望
不要啊……！！！我、我不想再死了……！[p]

[saku_window]
#朔
那、望……为什么啊[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_2" cross=false time=500]

[nozomi_window]
#望
你不明白吗！？因为我……真心觉得现在是最幸福的时候！[p]

#望
明明只要能和朔一起生活就足够了……我以为只要有朔在，即使逃亡也能活下去的……！[r]
[p]

[saku_window]
#朔
望……[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_6" cross=false time=500]

[nozomi_window]
#望
而且我……绝对不想被强迫去死！如果是自己选择自杀那还好。但是，被迫选择是不对的……！[r]
[p]

[saku_window]
#朔
………………[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="effect_02.jpg" time="0"]
[playbgm storage="03Nerine.mp3" volume="40"]
[mask_off time="300" wait="true"]

我……直到现在才意识到，自己对望的心灵造成了多么深的伤害。[p]
『你能自杀吗？』这样的提议──[p]
和望的母亲说的『要是你不存在就好了』这样的话几乎一样，都是诅咒般的话语。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

我竟然连这种事都没意识到，我……[p]
啊啊。[p]
原来如此……[p]
是啊。[p]
我已经，变得不正常了啊。[p]


[bg storage="densha_08_2.jpg" time="800" method="vanishIn"]

疲惫到甚至做好了自杀的觉悟。[p]

[bg storage="CG8/CG8_haikei_kako.jpg" time="800" method="vanishIn"]

多次看到望死去。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_9.jpg" time="800" method="vanishIn"]

自己也经历了被杀的体验。[p]

[bg storage="CG6/CG6_zoom_aka_1_kako2.jpg" time="800" method="vanishIn"]

沉溺于短暂的快感和相互依存中。[p]

[bg storage="monolog_01.jpg" time="800"]

在这种崩溃的状态下，怎么可能……正常地爱望呢。[p]

[bg storage="kuro.jpg" time="500"]

……不。[p]
从一开始，我就没打算去爱她，不是吗？[p]
我……只是。[p]
把望……当成了一个方便利用的玩物。[p]
为了度过非日常的生活……不，不对。[p]
是为了逃避现实。[p]
这一切……都是我内心软弱导致的结果。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="1000" wait="true"]

那天夜晚来得出奇地快。[p]
甚至连饭都没吃，只是静静地，像在等待着什么。[p]

[chara_new  name="jishitsu_yoru" storage="jishitsu_yoru.jpg" jname="jishitsu_yoru"]
[chara_show  name="jishitsu_yoru" top="-200" left="-960" width="2880" height="1920"]

[anim name=jishitsu_yoru left="+=600" time=15000]

在这期间，一句对话都没有。[p]
抱着膝盖闷闷不乐的望和。[p]
我后悔深深伤害了望。[p]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
后悔引发焦虑，化作急促的心跳催促着我。[p]

[chara_hide_all time=500 wait=false]
[bg storage="jishitsu_yoru_01.jpg" time="500"]

到了午夜，我终于忍不住开口了。[p]

[saku_window]
#朔
……这样下去睡不着的。你去床上睡吧[p]

[nozomi_window]
#望
…………朔要在哪里睡[p]

[default_window]
#
微弱的声音。[p]

[saku_window]
#朔
我还要再想一会儿。你不用在意[p]

[nozomi_window]
#望
…………[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[wait time=" 300"]
[playse buf="3" storage="Light_Switch.mp3" volume="50"]
[bg storage="jishitsu_yonaka_01.jpg" time="500"]
[wait time=" 300"]

我关掉灯，半强迫地让她去睡觉。[p]
大约一小时后。[p]

[bg storage="CG19/CG19_yoru_shihuku_n_10.jpg" time="1000"]
[cg storage="CG19/CG19_yoru_shihuku_n_10.jpg"]
[wait time=" 300"]

[nozomi_window]
#望
…………呼…………呼…………[p]

[default_window]
#
……望平静的呼吸声传了过来。[p]

[bg storage="kuro.jpg" time="1000"]
凌晨2:00。[p]

[bg storage="jishitsu_yonaka_03.jpg" time="800"]

我打开窗户，走到阳台上。[p]

[playse buf="3"  storage="slide_door.mp3" volume="25"]
[wait time=" 300"]
[bg storage="CG8/CG8_haikei.jpg" time="1200" wait=false]
[playse buf="1" storage="wind.mp3" volume="30"]
[wait time=" 2500"]

[saku_window]
#朔
呼……[p]

#
[default_window]
[fadeoutse buf="1"]
我像深呼吸一样，将体内积聚的空气呼出。[p]
透过窗户，可以看到被月光淡淡照亮的望的睡颜。[p]
……终于睡着了。[p]

;;; 暗転
[mask time=" 500" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="800" wait="true"]
[stopse buf="1"]
[stopse buf="3"]

[chara_show  name="望1_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=1000]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

关于望。[p]
我以为自己是真的喜欢上她了。[p]
强烈地感觉到想要帮助她，保护她。[p]
我能够作为一个人而尊敬望。[p]
但是，仅仅这样是不够的。[p]
我们……还没有做好获得幸福的准备。[p]

迈向幸福的第一步——[p]
不是让别人来迈出——[p]

;;; 暗転戻り
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

而是首先要由自己踏出才行。[p]

;;; SE：鼓動音
[bg storage="CG8/CG8_haikei_2.jpg" time="800"]
[playse buf="3"  storage="heartbeats.mp3" volume="30" loop=true]

[saku_window]
#朔
哈……哈……[p]

#
[default_window]
[bg storage="CG8/CG8_haikei_3.jpg" time="300"]
[bg storage="CG8/CG8_haikei_2.jpg" time="600"]

没关系。[p]
和以前一样。[p]

[bg storage="CG8/CG8_haikei_3.jpg" time="300"]
[bg storage="CG8/CG8_haikei_2.jpg" time="600"]

没事的。[p]
一定会顺利的。[p]
没问题的。[p]
像以前一样，又会循环，回到原点的。[p]
所以，没事的。[p]

[bg storage="CG8/CG8_haikei_3.jpg" time="800"]

[saku_window]
#朔
哈、哈、哈……[p]

#
[default_window]
在心中不断念叨着，心跳却越来越剧烈，逐渐淹没了思绪。[p]
没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。[p]

[bg storage="kuro.jpg" time="800"]

我凝视着黑暗的深处。[p]
分不清地面在哪里，仿佛是无尽延伸的黑暗。[p]
望能跳进这样的黑暗中————[p]
一想到这里，眼泪就快要夺眶而出。[p]
我以为自己理解了望所承受的痛苦。[p]
从道理上我明白死亡可以成为救赎。[p]

[bg storage="CG8/CG8_haikei_2.jpg" time="800"]

一边反复告诉自己没事，一边将脚搭上栏杆。[p]

[saku_window]
#朔
没事的……没事的[p]

#
[default_window]
面对『这个』，我的双腿不由自主地颤抖了。[p]
回想起那天所见的景象。[p]

[bg storage="CG8/CG8_haikei_kako.jpg" time="800"]

最初的那天。[p]
望从这里，带着笑容跳下去的那一瞬间。[p]

[bg storage="CG8/CG8_haikei_2.jpg" time="800"]

从脚先着地是不行的。[p]
必须头朝下，笔直地坠落。[p]
就像当初望那样做。[p]
不然的话，就无法确保死亡。[p]

[bg storage="CG8/CG8_haikei_4.jpg" time="800"]

死亡──────啊，对了。[p]
我现在就要去往那边。[p]

[bg storage="CG8/CG8_haikei.jpg" time="800"]

不是托付给望──而是我。[p]
是我要去。[p]
为了不再让望承受这样的痛苦──[p]

[fadeoutse buf="3"]
[bg storage="CG8/CG8_haikei_2.jpg" time="800"]

为了跃入夜的深处，我将身体前倾。[p]
再稍微倾斜一点就能坠落了。[p]

[fadeoutbgm]
[playse buf="3"  storage="heartbeats_fast.mp3" volume="40" loop=true]

[saku_window]
#朔
哈、哈、哈、哈、哈……[p]

#
[default_window]
[bg storage="CG8/CG8_haikei_3.jpg" time="300"]
[wait time=" 300"]
[bg storage="CG8/CG8_haikei_2.jpg" time="500"]

心脏跳动得几乎要跃出胸膛，视线变得模糊不清。[p]
强烈的抵抗感几乎让我失去意识。[p]
就好像身体在抗拒跳下去的意志一样。[p]
踩在栏杆上的脚不住地颤抖────[p]

[mask time=" 300" graphic="kuro.jpg"]
[stopbgm]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]
[fadeoutse buf="3"]

然后……[p]

[wait time=" 1000"]

[nozomi_window]
#望
不要啊啊啊啊啊！！！！！！[p]

#
[default_window]
[stopse buf="3"]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei.jpg" time="0"]
[wait time=" 500"]
[mask_off time="300" wait="true"]

听到背后传来的声音，我回过头去……[p]

;;; スチル表示
[setreplay name="CG14" storage="scene16_replay.ks" label="*CG14_replay"]

[bg storage="shiro.jpg" time="300"]
[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[bg storage="CG14/CG14_1_4.jpg" time="1800"]
[cg storage="CG14/CG14_1_4.jpg"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

[nozomi_window]
#望
喂，为什么，为什么啊……！？是因为我说不想自杀吗！？所以朔要代替我……呜咽……我不是那个意思啊……！！[r]
[p]

[saku_window]
#朔
………………望……[p]

#
[default_window]
[bg storage="CG14/CG14_3_12.jpg" time="800"]
[cg storage="CG14/CG14_3_12.jpg"]

[nozomi_window]
#望
呜，呜咽……我不想自己死，但是……更不想朔死啊！[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_2_8.jpg" time="800"]
[cg storage="CG14/CG14_2_8.jpg"]

[nozomi_window]
#望
因为朔已经成为我很重要的人了！[p]

[saku_window]
#朔
这种事，我也一样啊……！[p]

[nozomi_window]
#望
既然一样的话……！如果你也不想死的话……那就活下去吧[p]

#
[default_window]
[filter blur="3"]

一开口，眼泪就不由自主地流了下来。[p]
不知是因为被望看到我默默地想要付诸行动，还是因为从死亡的恐惧中解脱出来。[p]
心情乱糟糟的……理不清头绪。[p]
我们互相哭泣着……望为了阻止我紧紧地抱住我。[p]
而我还不知道该如何安置自己的情绪……[p]
——这是多么笨拙的接触啊。[p]

[bg storage="kuro.jpg" time="1000"]
[free_filter ]

我……一直想要轻松一点。[p]
明明自己一再重复被上司训斥的生活……却逃避了工作。[p]
而现在，又以帮助望为借口……想要再次逃避。[p]
这算什么啊。[p]
啊，但是……有一件事我确实明白了。[p]
死亡后会循环的不可思议现象……是一种诅咒。[p]
它是束缚我的诅咒，但同时也是——[p]
为了让一直逃避的我这次不再逃避……[p]
为了让我面对「当下」的……残酷却又温柔的机制。[p]

[bg storage="CG14/CG14_2_7.jpg" time="800"]
[cg storage="CG14/CG14_2_7.jpg"]

[saku_window]
#朔
……说什么要活下去，明明处境如此绝望[p]
不过，能从望口中听到这句话……我很高兴[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]
[cg storage="CG14/CG14_1_2.jpg"]

[nozomi_window]
#望
……我也意识到了。或许为了某个人就能活下去[p]

[saku_window]
#朔
不是为了自己……吗？[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]
[cg storage="CG14/CG14_2_6.jpg"]

[nozomi_window]
#望
为自己而活，到底是什么意思啊……我不明白[p]

[saku_window]
#朔
抱歉。我问了这个问题，但其实我也不太懂……[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]
[cg storage="CG14/CG14_2_5.jpg"]

[nozomi_window]
#望
……哎。你这是什么意思[p]

[saku_window]
#朔
但是，当我想要自杀的时候……我感到很不甘心[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
不甘心……？[p]

[saku_window]
#朔
我对只能选择这种选项的自己感到不甘心——所以，[p]

#
[default_window]
[bg storage="monolog_01.jpg" time="800"]

即使继续活下去，情况也不会有任何改变。[p]
对我们来说，没有任何安宁的容身之处。[p]
我们互相依偎、安慰，试图逃避无处可逃的现实。[p]
——然而这种关系是不稳定的，一旦失去容身之处就会崩溃。[p]
我在尝试自杀时终于意识到了这一点。[p]

[bg storage="monolog_03.jpg" time="800"]

我所追求的东西，原来就在平凡的日常生活中。[p]

[bg storage="CG1/CG1_eating_5_2.jpg" time="800" method="vanishIn"]

望眼睛闪闪发光，津津有味地吃饭的样子。[p]

[bg storage="CG4/CG4_age_6_2.jpg" time="800" method="vanishIn"]

一起开怀大笑地玩耍，穿着衣服一起跳进海里。[p]

[bg storage="CG14/CG14_1_2.jpg" time="800"]

还有像现在这样……挽留愚蠢的我。[p]

[bg storage="monolog_03.jpg" time="800"]

回想起望的点点滴滴，我终于真切地感受到了。[p]

[chara_show  name="望2_ネックレス有" face="egao2" top="50" width="1600" height="2259" time=800]

啊，我真的……喜欢上望了。[p]
我想以后也能一直看到望那样的笑容——[p]
我这样想着。[p]

[chara_hide_all time=400 wait=false]
[bg storage="shiro.jpg" time="400"]
[bg storage="CG14/CG14_1_1.jpg" time="800"]
[cg storage="CG14/CG14_1_1.jpg"]

我决定用简单的话语，向望表达这份心情。[p]

[saku_window]
#朔
——我想和望一起，好好地活下去[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
好好地活下去……是什么意思？[p]

[default_window]
#
面对望天真无邪的提问，我忍不住快要哭出来了。[p]
啊——[p]
望还不知道「那个」啊。[p]
不……[p]
我也还不知道。[p]
我只知道享受那种像是勉强把断线重新连接起来的临时幸福。[p]

[bg storage="kuro.jpg" time="800"]

那就像是站在随时可能破裂的薄冰上。[p]
是沙上的楼阁。[p]
是终将醒来的梦。[p]

[bg storage="effect_03.jpg" time="800"]

所以我——[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[saku_window]
#朔
不是「因为不想死所以活着」，而是「因为想活着所以活着」[r]
[p]

[default_window]
#
_　[r]
_　[cm]

说出口后才发现是如此理所当然的事，不知怎的觉得有点好笑。[p]
——而且我也希望望能这样。[p]
我强烈地、清晰地、确实地这么想着。[p]

[saku_window]
#朔
望啊……你今后想做些什么呢？[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……不知道呢。从没想过。也许以前有过，但现在已经想不起来了。……毕竟，我本来是想死的啊？[r]
[p]

[default_window]
#
_　[r]
_　[cm]

她小声嘟囔着，因为父母的缘故那些都变得无所谓了。[p]
——是啊。[p]
望……还无法对生存抱有希望。[p]
像是在核对答案一样，我仔细地选择着词语。[p]

[saku_window]
#朔
在活着的过程中，这肯定是必要的。想要做什么，想要成为什么样的人。我和望……想要怎么生活下去[r]
[p]

[nozomi_window]
#望
仅仅在一起……不行吗？[p]

[saku_window]
#朔
……是不行的[p]

#
[default_window]
[bg storage="CG14/CG14_1_1.jpg" time="800"]

[nozomi_window]
#望
……为什么？[p]

[saku_window]
#朔
因为……我们犯了罪[p]
现在也许还能逃脱。我也是这么想的[p]
但是…………[p]
无论创造多少逃避的地方，总有一天，最终我们将无处可逃[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……不对。不是这样的。我想问的不是这个[p]

#
[default_window]
[bg storage="CG14/CG14_3_12.jpg" time="800"]

[nozomi_window]
#望
——为什么我——到现在为止什么好事都没有发生过的我！就不能只是祈求活着吗？[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]
[cg storage="CG14/CG14_3_10.jpg"]

[nozomi_window]
#望
我不想考虑什么希望和未来。对我来说……太难了……[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
现在我已经不想死了，但是朔所说的「好好活着」……对我来说太沉重了……[p]

#
[default_window]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

——因为，你不是说过一个人既没有去处也没有归宿吗。[p]
即使没有我，望也必须能够独立生活，否则就没有意义。[p]

[bg storage="kuro.jpg" time="800"]

那只是……单纯的依赖而已。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG14/CG14_2_6.jpg" time="0"]
[mask_off time="300" wait="true"]

[quake count=3 time=200 hmax=5 vmax=5]
[saku_window]
#朔
——到底是不想死，还是想活着，给我说清楚！[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
……唔！[p]

[saku_window]
#朔
我们没有强大到可以不怀抱希望就能活下去[p]
所以啊……为了好好活着……必须要能够自己独立生活才行啊……[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[nozomi_window]
#望
朔是要……抛弃我吗？你是在说……让我一个人活下去吗？[p]

#
[default_window]
[bg storage="CG14/CG14_1_4.jpg" time="800"]

[nozomi_window]
#望
那是不可能的啊……！没有朔的话……我活不下去的……[p]

[saku_window]
#朔
不能把自己的生命托付给他人[p]
……我曾经也想把生命托付给望。但是，那样的话……[p]
我就无法真正意义上帮助到望[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

……我们彼此都有所欠缺。[p]
心灵的空虚，不应该用虚假的幸福来填补。[p]
我们必须停下脚步，选择如何填补这份空虚。[p]

[bg storage="effect_03.jpg" time="800"]

幸福并非——[p]
是没有污秽和伤痕的，干净美好的东西。[p]
即使被玷污、伤痕累累，也要有能够接受自己的弱点并继续前进的力量——[p]
这就是接受自己这种存在方式的状态。[p]
我……强烈地希望能够成为这样的人。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[nozomi_window]
#望
那么……我……该怎么办呢……[p]

[default_window]
#
我被望自主选择死亡的勇气……被她那种存在方式所吸引。[p]
但是。[p]
啊，我是如此的软弱。[p]
看着现在的望，我再次意识到了自己的软弱。[p]

[bg storage="kuro.jpg" time="800"]

我们——就像镜子一样。[p]
一方想逃向死亡，立刻就觉得得到了救赎。[p]
另一方伸出手，错以为紧握的手就是救赎。[p]
我们都在寻求能轻易获得解脱的方法。[p]
然后惊人的巧合——却又如此自然地——以共依存的形式契合在了一起。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[saku_window]
#朔
……让我们一起重新开始吧。全部。从一片空白开始[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[saku_window]
#朔
清算罪孽……清算过去……一起为迎接未来做准备吧[p]
我想，望的父母确实是无可救药的人渣[p]
但是，剥夺了他们未来生命的人是望[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
…………[p]

[saku_window]
#朔
就像望说想要活下去一样……[p]
她的父母也一定是以自己的方式，即使扭曲地也想要活下去[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
…………嗯。我……确实杀了父母[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
因为我以为自己生存的空间会被「夺走」。但是……「夺走」的其实是我[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
……这么显而易见的事，为什么直到现在才意识到呢……[p]

#
[fadeoutbgm]
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
喂，朔。像我这样的人活着……会被原谅吗？因为一直想着去死所以没有意识到……[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
——好怕，好怕活下去[p]

#
[default_window]
[bg storage="CG14/CG14_1_4.jpg" time="800"]

[nozomi_window]
#望
我，为什么……明明杀了人……却还活着？这怎么可能被原谅。因为，我杀了……人啊？我，杀了人……[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_2_8.jpg" time="800"]

[nozomi_window]
#望
而且——不只是他们。我，连朔也曾经……杀，过……[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

望颤抖着双手，脚步虚浮地朝某个方向走去。[p]
转过通往厨房的拐角，身影消失在视线中——[p]

;;; バタン、と望が倒れ込むSE
;;; ここは他より少し音量小さく調節する
[playse buf="3"  storage="BodyDrop.mp3" volume="20"]
[wait time=" 500"]
[bg storage="jishitsu_yonaka_04.jpg" time="500"]

[saku_window]
#朔
望！[p]

[default_window]
#
我有种不祥的预感，慌忙追了上去。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kitchen_yoru.jpg" time="0"]
[mask_off time="300" wait="true"]
[playbgm  storage="12Homecoming_orgel_slow.mp3" volume="40"]

[chara_show  name="望1_ネックレス有" face="utsumuki_dark" top="50" width="1600" height="2259" time=800]

[nozomi_window]
#望
朔，对不起……重新开始什么的，果然还是太自以为是了……我，做不到啊……[p]

[saku_window]
#朔
不要，望！！！[p]

#
[default_window]
[chara_hide_all time=800 wait=false]
[bg storage="kitchen_yoru_zoom.jpg" time="800"]

无力地坐在地上的望手里握着一把菜刀。[p]
那刀刃……正剧烈颤抖着指向望自己的脖子。[p]
我慌忙抓住望的手臂阻止她。[p]

[bg storage="kitchen_yoru_zoom_bokasi.jpg" time="300" wait=false]
[chara_show  name="望3_ネックレス有" face="obie1_6_dark" top="-130" width="2558" height="3541" time=800]

[nozomi_window]
#望
对不起，我太软弱了。对不起，我无法回应你……！但是……！[p]

#望
……如果不这样做，我感觉自己要疯了。我好害怕，止不住颤抖……！害怕得不得了……！[r]
[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="obie1_4_dark" cross=false time=800]

[nozomi_window]
#望
我，杀了人……！为了自己活下去，夺走了别人的生命……连朔的生命都夺走了……呜，呜，呃……[r]
[p]

[default_window]
#
_　[r]
_　[cm]

望的样子————[p]
看起来像是在罪恶感驱使下想要自杀，却又在自杀的抗拒中痛苦挣扎……[p]
我一边让她放下手臂，一边紧紧抱住望。[p]

[playse buf="3"  storage="huku01.mp3" volume="50"]
[mask time=" 500" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="500" wait="true"]

『已经，够了。已经可以了。望……』[p]

[bg storage="kuro.jpg" time="800"]

我拼命忍住了已经到了喉咙的那些话。[p]

[bg storage="kitchen_yoru_zoom_bokasi.jpg" time="500" wait=false]
[chara_show  name="望3_ネックレス有" face="obie1_6_dark" top="-130" width="2558" height="3541" time=800]

因为……[p]

[wait time=" 300"]

[saku_window]
#朔
望[p]
我再说一遍。我无法从真正意义上帮助望[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_4_dark" cross=false time=800]

[saku_window]
#朔
只有你自己。能够帮助望的只有你自己[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_6_dark" cross=false time=800]

[saku_window]
#朔
我知道这很沉重。也很痛苦。……你将不得不伤害自己，带着痛苦活下去[r]
[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="obie1_4_dark" cross=false time=800]

[nozomi_window]
#望
为什么，非得这样活着不可……！！？[p]

[saku_window]
#朔
……那是因为[p]

[default_window]
#
我话说到一半停住了。[p]
并不是因为无法回答。[p]
而是因为我犹豫着，不知道自己是否有资格说出那样重大的话。[p]
犹豫只是一瞬间。[p]
在我再次开口之前的那段时间……[p]
感觉仿佛过了短短几秒，又或是无限漫长的时间。[p]
对望的各种情感在心中翻涌……[p]
最终脱口而出的话语却异常简单。[p]

[saku_window]
#朔
那是…………[p]
因为我喜欢望[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="utsumuki2_dark" cross=false time=800]

[nozomi_window]
#望
……这不算是回答[p]

[saku_window]
#朔
不，我只能说到这个程度。因为活着的意义，只有自己才能找到[r]
[p]

[nozomi_window]
#望
……你是为了让我活下去，才说喜欢我的吗？[p]

[saku_window]
#朔
不只是这样[p]

[nozomi_window]
#望
……但确实包含了这层意思[p]

[saku_window]
#朔
喜欢的人当然希望她能活下去。如果不想让她死，我会不择手段[r]
[p]

[nozomi_window]
#望
……我第一次觉得，「喜欢」这个词……像是强迫我活下去的诅咒[r]
[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="metoji3_dark" cross=false time=800]

[nozomi_window]
#望
但是…………这是世界上最温柔的诅咒[p]

[default_window]
#
[chara_hide_all time=800 wait=true]

;;;包丁が落ちる音
[playse buf="3"  storage="KnifeDrop.mp3" volume="30"]
[wait time=" 500"]

手中紧握的菜刀掉落的同时……[p]
望眼中积蓄的泪水，如同决堤般涌了出来。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="yozora.jpg" time="0"]
[mask_off time="300" wait="true"]

[nozomi_window]
#望
呜、呜呜……呜、咕……呜啊啊啊啊啊啊啊啊啊……！呃、呜、呜咽……啊啊啊啊啊啊啊啊啊…………[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[bg storage="shiro.jpg" time="1200"]

[wait time=" 400"]
——对死亡的恐惧，以及对生存的恐惧。[p]
[wait time=" 400"]
——自己犯下的罪行，以及背负这罪行继续活下去。[p]
[wait time=" 400"]
——试图改变依赖他人的自己。[p]
[wait time=" 400"]
这些共同的、对改变的恐惧。[p]
[wait time=" 400"]
恐惧从望的内心深处，化作痛哭涌了出来。[p]
[wait time=" 400"]
但那副模样——就像刚刚降生在这个世上的婴儿一般。[p]
[wait time=" 400"]
一直被父母支配的望，第一次——[p]
[wait time=" 400"]
无论对错，用自己的双脚。[p]
[wait time=" 400"]
为了能够在这个无可奈何却又普世的世界上行走——[p]

[bg storage="effect_03.jpg" time="1200"]

望……我，能否直面这一切呢。[p]
[wait time=" 400"]
与耀眼的光芒……那光芒下愈发深邃的阴影……以及镜中的自己。[p]
[wait time=" 400"]
与无数的绝望，和无数的幸福。[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="kitchen_yoru_zoom.jpg" time="800"]

[wait time=" 400"]
怀着这样的祈愿——我紧紧拥抱住望。[p]
[wait time=" 400"]
一时间，无言以对。[p]
[wait time=" 400"]
不知过了多久，望的手环上了我的背。[p]

[bg storage="monolog_03.jpg" time="1200"]

我们，迈出了新的一步。[p]
脚踏实地，坚定不移。[p]
那一步，是每个人都理所当然地迈出的一步。[p]
不是为了飞向『彼岸』的一步……[p]

[bg storage="shiro.jpg" time="3000"]

而是为了向未来……向前迈进的一步。[p]

@jump storage="scene17.ks"

