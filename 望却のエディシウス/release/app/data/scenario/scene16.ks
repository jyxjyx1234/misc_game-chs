
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
被看到了……对不起，朔。这是我的失误，还把你也牵连进来了……[p]

[saku_window]
#朔
我没事，本来就有这个打算。……早就做好心理准备了。[p]

#
[default_window]
[chara_hide_all time=600 wait=false]
[bg storage="camera3.jpg" time="800"]
[playbgm  storage="04_zankyou.mp3" volume="30"]

警察拿出的照片……大概是那天你来我家的时候拍的。[p]
说实话，要不是那样的话，就解释不通了。[p]
而且那天，我因为去车站的厕所，短暂地和你分开了一会儿。[p]
估计是从车站的监控摄像头里截取画面后打印出来的吧……[p]
警察手里的照片，大概就是那时候拍的。[p]
虽然我的身份还没暴露，这算是不幸中的万幸，但这也只是时间问题了。[p]

[bg storage="jishitsu_hiru_01.jpg" time="500"]
[chara_show  name="望3_ネックレス有" face="obie1_2" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#望
果然，能安全待着的地方……根本不存在。我到底该去哪儿……呜……[p]

[default_window]
#
望显然掩饰不住她的焦虑。[p]
看起来她也在拼命忍住不哭。[p]
但是。[p]
我想到了一个办法。[p]
一个能够打破现状的唯一方法。[p]
一种已经有「成功案例」的方法。[p]

[saku_window]
#朔
喂，望，我有个提议……如果成功的话，或许能从警察那儿逃掉！[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="gimon2" cross=false time=500]

[nozomi_window]
#望
提议……？[p]

[default_window]
#
低着头显得不安的望，抬起脸看向我。[p]
带着一丝希望的神情，隐约透出期待。[p]
我把那个提议的内容告诉了望。[p]

[stopbgm]
[saku_window]
#朔
那个……能不能再自杀一次？这样的话，应该就能通过循环回到我们在卯之岛的时候了。[r]
[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie2_1" cross=false time=500]

[nozomi_window]
#望
────啊！[p]

[default_window]
#
;;; 暗転
[mask time=" 400" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="effect_02.jpg" time="0"]
[mask_off time="400" wait="true"]

──那张照片是望来我家的那天拍的，所以只要让那件事变得不存在就行了。[p]
──不过，就算回去了，之后该怎么办还得再想办法。[p]
──至少目前的问题应该能解决吧？[p]

;;; 暗転戻り
[bg storage="jishitsu_hiru_01_2.jpg" time="800"]

面对没有回应的望，我继续说着这些话。[p]
望抬起的脸又低了下去，看不到她的表情。[p]
但是仔细一看，她的脚和身体都在颤抖。[p]
难道说……现在才开始害怕吗？[p]

[bg storage="jishitsu_hiru_01.jpg" time="500" wait=false]
[chara_show  name="望3_ネックレス有" face="obie1_6" top="50" width="1600" height="2259" time=500 wait=false]
[wait time=300]
[quake count=3 time=200 hmax=5 vmax=5]

[nozomi_window]
#望
不要啊……！我，我已经不想再死了……！[p]

[saku_window]
#朔
望……为什么……[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_2" cross=false time=500]

[nozomi_window]
#望
你不明白吗！？因为我真的觉得，现在是我最幸福的时候……！[p]

#望
只要能和朔一起生活就够了……只要有朔在，就算是逃亡中也能活下去，我一直是这么想的……！[r]
[p]

[saku_window]
#朔
望……[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_6" cross=false time=500]

[nozomi_window]
#望
而且我……被强迫去死这种事，绝对不行！如果是自己选择自杀还好。但被逼着去选，这不对啊……！[r]
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

我现在才明白，我做了件仿佛把一把刀深深刺入望心中的事情。[p]
「能不能自杀一下？」这个提议──[p]
和望的母亲曾说过的「要是没有你就好了」这句话几乎一样，是一种诅咒般的话语。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

我竟然没意识到这一点，说明我……[p]
啊。[p]
原来如此……[p]
确实是这样啊。[p]
看来我的某些地方已经变得不正常了。[p]


[bg storage="densha_08_2.jpg" time="800" method="vanishIn"]

疲惫到甚至做好了自杀的觉悟。[p]

[bg storage="CG8/CG8_haikei_kako.jpg" time="800" method="vanishIn"]

看到望一次次地死去。[p]

[bg storage="CG9/CG9_sashi_udenashi_3_2_9.jpg" time="800" method="vanishIn"]

也亲身经历了自己被杀的体验。[p]

[bg storage="CG6/CG6_zoom_aka_1_kako2.jpg" time="800" method="vanishIn"]

沉溺于短暂的快感和共依存中。[p]

[bg storage="monolog_01.jpg" time="800"]

在那种破碎的状态下，不可能正常地去爱望……完全不可能。[p]

[bg storage="kuro.jpg" time="500"]

……不，不对。[p]
一开始，我根本就没打算去爱她吧。[p]
我只是……[p]
只是把望当作慰藉的工具，随心所欲地利用着她。[p]
为了度过非日常的生活……不，不是这样。[p]
是为了逃避现实才这么做的。[p]
这一切……都是因为我内心的软弱导致的。[p]

[mask time=" 1000" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="1000" wait="true"]

那天，夜晚降临得惊人地快。[p]
连饭都没吃，只是呆呆地坐着，像是在等待着什么一样。[p]

[chara_new  name="jishitsu_yoru" storage="jishitsu_yoru.jpg" jname="jishitsu_yoru"]
[chara_show  name="jishitsu_yoru" top="-200" left="-960" width="2880" height="1920"]

[anim name=jishitsu_yoru left="+=600" time=15000]

期间一句话都没有说过。[p]
抱膝蜷缩着、情绪低落的望，以及……[p]
我为深深伤害了望而感到后悔。[p]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
后悔催生了焦虑，化作急促的心跳，催促着我自己。[p]

[chara_hide_all time=500 wait=false]
[bg storage="jishitsu_yoru_01.jpg" time="500"]

到了深夜，我终于忍不住开了口。[p]

[saku_window]
#朔
……这样下去你睡不着的，用床吧。[p]

[nozomi_window]
#望
…………朔你要睡哪里？[p]

[default_window]
#
细弱的声音。[p]

[saku_window]
#朔
我还想再想点事情，不用管我。[p]

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

关掉灯，有些强硬地催促她入睡。[p]
大约一个小时后。[p]

[bg storage="CG19/CG19_yoru_shihuku_n_10.jpg" time="1000"]
[cg storage="CG19/CG19_yoru_shihuku_n_10.jpg"]
[wait time=" 300"]

[nozomi_window]
#望
…………、呼……呼……[p]

[default_window]
#
……能静静地听到望的均匀呼吸声。[p]

[bg storage="kuro.jpg" time="1000"]
凌晨两点。[p]

[bg storage="jishitsu_yonaka_03.jpg" time="800"]

我打开窗户，走到了阳台上。[p]

[playse buf="3"  storage="slide_door.mp3" volume="25"]
[wait time=" 300"]
[bg storage="CG8/CG8_haikei.jpg" time="1200" wait=false]
[playse buf="1" storage="wind.mp3" volume="30"]
[wait time=" 2500"]

[saku_window]
#朔
呼——……[p]

#
[default_window]
[fadeoutse buf="1"]
像深呼吸一样，将体内积攒的空气吐了出来。[p]
透过窗户，可以看到被月光淡淡照亮的望的睡颜。[p]
……终于睡着了啊。[p]

;;; 暗転
[mask time=" 500" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="800" wait="true"]
[stopse buf="1"]
[stopse buf="3"]

[chara_show  name="望1_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=1000]
[playbgm storage="08Voices_orgel_slow.mp3" volume="40"]

关于望。[p]
我以为自己是真心喜欢上她了。[p]
强烈地感受到想要帮助她、保护她的心情。[p]
我对望，作为一个人由衷地感到敬佩。[p]
但是，仅仅这样是不够的。[p]
我们还没有做好，为了幸福而努力的准备。[p]

迈向幸福的第一步——[p]
不是让别人去迈出——[p]

;;; 暗転戻り
[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

而是首先自己必须要跨出这一步才行。[p]

;;; SE：鼓動音
[bg storage="CG8/CG8_haikei_2.jpg" time="800"]
[playse buf="3"  storage="heartbeats.mp3" volume="30" loop=true]

[saku_window]
#朔
哈……哈啊……[p]

#
[default_window]
[bg storage="CG8/CG8_haikei_3.jpg" time="300"]
[bg storage="CG8/CG8_haikei_2.jpg" time="600"]

没问题的。[p]
和之前一样就好。[p]

[bg storage="CG8/CG8_haikei_3.jpg" time="300"]
[bg storage="CG8/CG8_haikei_2.jpg" time="600"]

没事的。[p]
一定会顺利的。[p]
没事的。[p]
就像之前一样，又会循环回去，恢复原样的。[p]
所以，没事的。[p]

[bg storage="CG8/CG8_haikei_3.jpg" time="800"]

[saku_window]
#朔
哈、哈、哈……[p]

#
[default_window]
越是在心里念叨，心跳声就越大，思绪也被覆盖。[p]
没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。没事的。[p]

[bg storage="kuro.jpg" time="800"]

望向黑暗深处。[p]
看不清哪里是地面，只觉得是无尽延伸下去的一片黑暗。[p]
望竟然能跳入这样的深渊────[p]
一想到这里，眼泪就快要涌出来了。[p]
我以为自己已经理解了望所承受着的痛苦了。[p]
明白死亡可以成为一种救赎，这点在理性上是清楚了。[p]

[bg storage="CG8/CG8_haikei_2.jpg" time="800"]

一边反复告诉自己「没事」，一边把脚跨上了栏杆上方。[p]

[saku_window]
#朔
没事的……没事。[p]

#
[default_window]
一看到「这个」摆在眼前，双腿就发软了。[p]
回想起那天看到的情景。[p]

[bg storage="CG8/CG8_haikei_kako.jpg" time="800"]

最初的那一天。[p]
望从这里，带着笑容跳下去的瞬间。[p]

[bg storage="CG8/CG8_haikei_2.jpg" time="800"]

不能从脚先下去。[p]
必须头朝下，直直地坠落才行。[p]
就像当时望那样做的一样。[p]
否则，就无法确保一定能死去。[p]

[bg storage="CG8/CG8_haikei_4.jpg" time="800"]

死──────啊，对了。[p]
我现在要，去到那一边。[p]

[bg storage="CG8/CG8_haikei.jpg" time="800"]

不是交给望去做──而是我自己。[p]
我要去做这件事。[p]
为了不再让望，承受这样的痛苦──[p]

[fadeoutse buf="3"]
[bg storage="CG8/CG8_haikei_2.jpg" time="800"]

为了跳入夜的深渊，我向前倾下了身子。[p]
再稍微往前倾一点，就能掉下去了。[p]

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

心脏跳得像要冲出胸膛，视线都开始模糊了。[p]
强烈的抗拒感让我几乎失去意识。[p]
仿佛身体在抗拒跳下去的意志一般。[p]
踩在栏杆上的脚不停地颤抖着────[p]

[mask time=" 300" graphic="kuro.jpg"]
[stopbgm]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]
[fadeoutse buf="3"]

然后……[p]

[wait time=" 1000"]

[nozomi_window]
#望
不要啊————！！！！！！[p]

#
[default_window]
[stopse buf="3"]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei.jpg" time="0"]
[wait time=" 500"]
[mask_off time="300" wait="true"]

听到背后的声音，我回过头去……。[p]

;;; スチル表示
[setreplay name="CG14" storage="scene16_replay.ks" label="*CG14_replay"]

[bg storage="shiro.jpg" time="300"]
[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[bg storage="CG14/CG14_1_4.jpg" time="1800"]
[cg storage="CG14/CG14_1_4.jpg"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

[nozomi_window]
#望
喂，为什么，为什么啊……！？是因为我说了不想自杀吗！？所以朔才要替我……呜呜……我不是那个意思啊……！！[r]
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
呜，呜呜……我不想死，但更不想让朔死啊！[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_2_8.jpg" time="800"]
[cg storage="CG14/CG14_2_8.jpg"]

[nozomi_window]
#望
因为朔对我来说，已经是很重要的人了！[p]

[saku_window]
#朔
那种感觉，我也是一样的啊……！[p]

[nozomi_window]
#望
如果一样的话……！如果你也觉得不想死的话……那就一起活下去吧！[p]

#
[default_window]
[filter blur="3"]

一开口，眼泪就不由自主地流了下来。[p]
是因为默默决定要行动的事被望看到了，还是因为从死亡的恐惧中解脱了呢？[p]
心情乱成一团……完全无法理清思绪。[p]
两个人都在哭……望紧紧抱住我，想要阻止我。[p]
而我却依然不知道自己的心情究竟在哪里……。[p]
──多么笨拙的相互触碰啊。[p]

[bg storage="kuro.jpg" time="1000"]
[free_filter ]

我……一直都想要解脱。[p]
在反复经历被上司训斥的日子后……最终逃离了工作。[p]
而现在，又以帮助望为借口……试图再次逃避。[p]
这到底算什么啊。[p]
啊，不过……有一件事我是清楚的。[p]
死亡后不断循环的这种不可思议现象……是诅咒。[p]
这是束缚我的诅咒，同时也是──[p]
为了让我这个一直逃避的人，这次不再逃避……[p]
去直面『现在』的一种……残酷却温柔的机制。[p]

[bg storage="CG14/CG14_2_7.jpg" time="800"]
[cg storage="CG14/CG14_2_7.jpg"]

[saku_window]
#朔
……要活下去啊，明明情况已经绝望成这样了。[p]
不过，从望的口中听到这句话……我还是挺高兴的。[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]
[cg storage="CG14/CG14_1_2.jpg"]

[nozomi_window]
#望
……我也发现了。如果是为了某个人的话，也许我能活下去。[p]

[saku_window]
#朔
不是为了自己吗？[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]
[cg storage="CG14/CG14_2_6.jpg"]

[nozomi_window]
#望
为了自己而活……到底是什么意思，我完全不懂啊……[p]

[saku_window]
#朔
抱歉，明明是我问的，但其实我也不太明白……[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]
[cg storage="CG14/CG14_2_5.jpg"]

[nozomi_window]
#望
……真是的，这算什么嘛。[p]

[saku_window]
#朔
但是，你想要结束自己的生命……这让我感到很不甘心。[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
不甘心……？[p]

[saku_window]
#朔
只能做出这样的选择，我对自己感到很不甘心——所以，[p]

#
[default_window]
[bg storage="monolog_01.jpg" time="800"]

即使继续活下去，情况也不会有任何改变。[p]
对我们来说，根本没有一个平静的归宿。[p]
我们选择无视无路可逃的现实，只是相互依偎着安慰彼此。[p]
——然而，这种关系终究是不稳定的，一旦归宿崩塌，就会失去一切。[p]
直到我试图自杀时才终于意识到了这一点。[p]

[bg storage="monolog_03.jpg" time="800"]

我所追求的东西，其实就在那平凡的日常中。[p]

[bg storage="CG1/CG1_eating_5_2.jpg" time="800" method="vanishIn"]

比如望那双闪闪发亮的眼睛，吃饭时一脸满足的模样。[p]

[bg storage="CG4/CG4_age_6_2.jpg" time="800" method="vanishIn"]

比如我们一起嬉笑玩闹，甚至穿着衣服直接跳进海里。[p]

[bg storage="CG14/CG14_1_2.jpg" time="800"]

就像现在这样……把愚蠢的我拉回正轨。[p]

[bg storage="monolog_03.jpg" time="800"]

回想起望，我终于意识到。[p]

[chara_show  name="望2_ネックレス有" face="egao2" top="50" width="1600" height="2259" time=800]

啊，我真的……喜欢望啊。[p]
我想一直看到这样的望在笑着──[p]
我这么想着。[p]

[chara_hide_all time=400 wait=false]
[bg storage="shiro.jpg" time="400"]
[bg storage="CG14/CG14_1_1.jpg" time="800"]
[cg storage="CG14/CG14_1_1.jpg"]

将这份心情用简单的话语传达给望。[p]

[saku_window]
#朔
──我想和望一起，好好地活下去。[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
好好地活下去……是什么意思？[p]

[default_window]
#
面对望那天真的提问，我差点忍不住哭出来。[p]
啊──[p]
望还不知道「那个」啊。[p]
不……[p]
我也还不知道。[p]
只会享受那种像是勉强接上的断线一般、权宜之计的幸福。[p]

[bg storage="kuro.jpg" time="800"]

那就像是随时都会破裂的薄冰之上。[p]
沙上建的高楼。[p]
终有一天会结束的梦。[p]

[bg storage="effect_03.jpg" time="800"]

所以我──[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[saku_window]
#朔
不是因为『不想死所以活着』，而是──『想活着所以活着』。[r]
[p]

[default_window]
#
_　[r]
_　[cm]

说出口后发现这实在太理所当然了，竟然觉得有些好笑。[p]
──然后，我也希望望能是这样。[p]
强烈地、明确地、确实地这么想着。[p]

[saku_window]
#朔
望啊……接下来，你想做什么呢？[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……不知道。我从来没想过这些事。以前可能有过吧，但现在已经记不起来了。……毕竟，我曾经是想死的啊？[r]
[p]

[default_window]
#
_　[r]
_　[cm]

她小声嘀咕了一句，说因为父母的缘故，这些都变得无所谓了。[p]
──也是啊。[p]
望……对活着这件事已经失去了希望。[p]
像是在对答案一样，小心翼翼地斟酌着用词。[p]

[saku_window]
#朔
活着的时候，这一定是必要的吧。想做什么，想成为什么。我和望……想要怎么继续下去。[r]
[p]

[nozomi_window]
#望
只是待在一起……不行吗？[p]

[saku_window]
#朔
……不行的啊。[p]

#
[default_window]
[bg storage="CG14/CG14_1_1.jpg" time="800"]

[nozomi_window]
#望
……为什么？[p]

[saku_window]
#朔
因为……我们犯下了罪啊。[p]
现在或许还能逃避。我也这么认为过。[p]
但是…………[p]
无论制造多少逃避的借口，总有一天，最终还是无法逃脱。[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……不是的。不对。我想问的不是这个问题。[p]

#
[default_window]
[bg storage="CG14/CG14_3_12.jpg" time="800"]

[nozomi_window]
#望
──为什么我──到现在一直没有过任何好事的我！只是希望能活下去，这也不可以吗？[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]
[cg storage="CG14/CG14_3_10.jpg"]

[nozomi_window]
#望
我不想去考虑什么希望或者未来。这些对我来说……太难了……[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
现在已经不想死了，但朔说的那种『好好活着』……对我来说还是太沉重了……[p]

#
[default_window]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

──因为，你之前不是说过，一个人既没有去处，也没有归宿吗。[p]
如果没有我的话，望自己都没法活下去，那就没有意义了。[p]

[bg storage="kuro.jpg" time="800"]

那只是……单纯的依赖。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG14/CG14_2_6.jpg" time="0"]
[mask_off time="300" wait="true"]

[quake count=3 time=200 hmax=5 vmax=5]
[saku_window]
#朔
───你到底是不想死，还是想活下去，给我说清楚！[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
……啊！[p]

[saku_window]
#朔
我们没强大到能在没有希望的情况下活下去。[p]
所以啊……为了好好活下去……必须要学会自己活下去的方法……[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[nozomi_window]
#望
朔你是要……抛弃我吗？让我一个人活下去……你是这个意思吗？[p]

#
[default_window]
[bg storage="CG14/CG14_1_4.jpg" time="800"]

[nozomi_window]
#望
那样我做不到的啊……！没有朔的话……我活不下去的啊……[p]

[saku_window]
#朔
不能把自己的生命交托给别人。[p]
……我也曾经想把它交托给望。但如果那样的话……[p]
我就无法真正意义上帮助望。[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

……我们彼此都不够完整。[p]
内心的空隙，不是用暂时的幸福来填补的。[p]
而是要停下来，认真选择如何填补这些空隙。[p]

[bg storage="effect_03.jpg" time="800"]

所谓幸福──[p]
并不是没有污点、没有伤痕，那种纯净而美好的东西。[p]
即使满是污点、遍体鳞伤，也能接受自己的软弱，并继续向前的那种力量──[p]
而那种状态，就是自己能够接受这样的存在方式。[p]
我……非常渴望成为那样的人。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[nozomi_window]
#望
那么……我……该怎么办才好啊……[p]

[default_window]
#
我曾被望选择死亡的勇气……她的那种存在方式所吸引。[p]
然而。[p]
啊，我竟然是如此软弱。[p]
看着现在的望，我再次意识到了自己的脆弱。[p]

[bg storage="kuro.jpg" time="800"]

我们就像是一面镜子。[p]
一方逃向死亡，以为这样就能得到解脱。[p]
一方伸出手，以为握住对方的手就是救赎。[p]
我们都在寻求那种轻易让自己解脱的方法。[p]
然后，惊人地偶然──却又自然地──以共依存的形式契合在了一起。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[saku_window]
#朔
……一起重新开始吧。从头开始，一片空白的状态下。[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[saku_window]
#朔
清算罪孽……清算过去……一起做好迎接未来的准备吧。[p]
望的父母，确实是无可救药的废物。[p]
但是，夺走他们未来的人是望。[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
…………嗯。[p]

[saku_window]
#朔
就像望说过的那样……想要活下去……[p]
他们两人也一定以自己的方式，即使扭曲，也想着要活下去吧。[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
…………嗯。我……的确杀了我的父母。[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
因为我觉得，我活下去的地方会被『夺走』。但是……真正『夺走』的人是我自己。[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
……这么显而易见的事情，我为什么直到现在才意识到呢……[p]

#
[fadeoutbgm]
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
喂，朔。像我这样的人活着……真的可以被原谅吗？一直想着死掉，所以根本没想明白……[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
──好害怕啊，活着这件事。[p]

#
[default_window]
[bg storage="CG14/CG14_1_4.jpg" time="800"]

[nozomi_window]
#望
我，为什么啊……明明杀了人……却还活着？这种事是不可能被原谅的吧。因为，我杀了人啊？我啊，杀了人……[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_2_8.jpg" time="800"]

[nozomi_window]
#望
而且──不仅仅是那两个人。我还曾经对朔……也动过杀心……[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

双手颤抖着，脚步摇摇晃晃像要倒下一样，望朝某个地方走去。[p]
拐过通往厨房的角落，就在视线中消失的瞬间──[p]

;;; バタン、と望が倒れ込むSE
;;; ここは他より少し音量小さく調節する
[playse buf="3"  storage="BodyDrop.mp3" volume="20"]
[wait time=" 500"]
[bg storage="jishitsu_yonaka_04.jpg" time="500"]

[saku_window]
#朔
望！……！[p]

[default_window]
#
心里涌上一种不祥的预感，我急忙追了上去。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kitchen_yoru.jpg" time="0"]
[mask_off time="300" wait="true"]
[playbgm  storage="12Homecoming_orgel_slow.mp3" volume="40"]

[chara_show  name="望1_ネックレス有" face="utsumuki_dark" top="50" width="1600" height="2259" time=800]

[nozomi_window]
#望
朔，对不起……重新开始什么的，果然还是太自私了……我，做不到……[p]

[saku_window]
#朔
不行啊，望！！！[p]

#
[default_window]
[chara_hide_all time=800 wait=false]
[bg storage="kitchen_yoru_zoom.jpg" time="800"]

无力坐在地上的望手里握着一把菜刀。[p]
那刀尖……剧烈颤抖着，正对着望自己的脖子。[p]
我慌忙抓住她的手腕阻止了她。[p]

[bg storage="kitchen_yoru_zoom_bokasi.jpg" time="300" wait=false]
[chara_show  name="望3_ネックレス有" face="obie1_6_dark" top="-130" width="2558" height="3541" time=800]

[nozomi_window]
#望
我很软弱，对不起。我没办法回应，对不起……但是……！[p]

#望
……如果不这样做，我可能会疯掉。好害怕，连颤抖都停不下来……！害怕，害怕得要命……！[r]
[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="obie1_4_dark" cross=false time=800]

[nozomi_window]
#望
我，杀了人……！为了活下去，我夺走了别人的性命……甚至连朔的命也想夺走，呜、呜、呜哇……[r]
[p]

[default_window]
#
_　[r]
_　[cm]

望的模样────[p]
看起来像是既想因罪恶感而自尽，又在抗拒死亡之间挣扎痛苦着……。[p]
我一边让她放下手臂，一边将她紧紧抱住。[p]

[playse buf="3"  storage="huku01.mp3" volume="50"]
[mask time=" 500" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=false]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="500" wait="true"]

『已经够了。已经够了，望……』[p]

[bg storage="kuro.jpg" time="800"]

那几乎脱口而出的言语，被我拼命咽了回去。[p]

[bg storage="kitchen_yoru_zoom_bokasi.jpg" time="500" wait=false]
[chara_show  name="望3_ネックレス有" face="obie1_6_dark" top="-130" width="2558" height="3541" time=800]

因为……[p]

[wait time=" 300"]

[saku_window]
#朔
望[p]
我再说一次。我其实没办法真正意义上拯救望。[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_4_dark" cross=false time=800]

[saku_window]
#朔
只有你自己，才能拯救你自己，望。[p]

[default_window]
#
[chara_mod  name="望3_ネックレス有" face="obie1_6_dark" cross=false time=800]

[saku_window]
#朔
我知道这很沉重，也很痛苦……自己伤害自己，带着这样的痛苦活下去。[r]
[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="obie1_4_dark" cross=false time=800]

[nozomi_window]
#望
为什么……为什么非得这样活下去不可……！！？[p]

[saku_window]
#朔
……那是因为[p]

[default_window]
#
我语塞了。[p]
并不是因为无言以对。[p]
而是因为我犹豫了，这样重大的话题，我是否有资格说出口。[p]
犹豫只是一瞬间。[p]
在再次开口之前的那段时间……[p]
不过短短几秒，却仿佛像是经历了无穷无尽的漫长时光。[p]
对望的各种情感交织在心中……[p]
最终脱口而出的话语却极其简单明了。[p]

[saku_window]
#朔
那是…………[p]
因为……我喜欢望啊。[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="utsumuki2_dark" cross=false time=800]

[nozomi_window]
#望
……这算不上回答。[p]

[saku_window]
#朔
不是的。我只能这样说了。活下去的意义，只有自己才能找到。[r]
[p]

[nozomi_window]
#望
……为了让我活下去，你才对我说喜欢的吗？[p]

[saku_window]
#朔
不止是这样。[p]

[nozomi_window]
#望
……但也包括了这个意思吧。[p]

[saku_window]
#朔
喜欢的人当然希望她活下去啊。不想让她死的话，什么手段都愿意用。[r]
[p]

[nozomi_window]
#望
……「喜欢」这个词啊……我现在才觉得，这像是逼我活下去的诅咒一样。[r]
[p]

[saku_window]
#朔
…………[p]

#
[default_window]
[chara_mod  name="望3_ネックレス有" face="metoji3_dark" cross=false time=800]

[nozomi_window]
#望
但…………这是世界上最温柔的诅咒。[p]

[default_window]
#
[chara_hide_all time=800 wait=true]

;;;包丁が落ちる音
[playse buf="3"  storage="KnifeDrop.mp3" volume="30"]
[wait time=" 500"]

手中的刀掉落的同时……[p]
望眼里积蓄的泪水，像决堤般涌了出来。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="yozora.jpg" time="0"]
[mask_off time="300" wait="true"]

[nozomi_window]
#望
呜、呜呜……呜、呃……啊啊啊啊啊啊啊……！嗝、呜、抽噎……啊啊啊啊啊啊…………[r]
[p]

#
[default_window]
_　[r]
_　[cm]

[bg storage="shiro.jpg" time="1200"]

[wait time=" 400"]
──对死亡的恐惧，与对生存的恐惧。[p]
[wait time=" 400"]
──自己犯下的罪过，与背负罪过的责任。[p]
[wait time=" 400"]
──从依赖他人的自己，尝试去改变。[p]
[wait time=" 400"]
这些事情共有的，是对改变的恐惧。[p]
[wait time=" 400"]
恐惧从望的心底深处，化作痛哭倾泻而出。[p]
[wait time=" 400"]
然而她的模样──就像是刚刚降生到这个世上的婴儿一般。[p]
[wait time=" 400"]
一直被父母支配的望，第一次──[p]
[wait time=" 400"]
无论是对是错，都用自己的双脚。[p]
[wait time=" 400"]
去行走在这个无可奈何又普遍的世界上──[p]

[bg storage="effect_03.jpg" time="1200"]

望……我，能够面对吗？[p]
[wait time=" 400"]
耀眼的光芒……以及那光芒下愈发浓重的阴影……还有镜中映出的自己。[p]
[wait time=" 400"]
无数的绝望，还有无数的幸福。[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="kitchen_yoru_zoom.jpg" time="800"]

[wait time=" 400"]
怀着这样的祈愿──紧紧拥抱住望。[p]
[wait time=" 400"]
一时间，谁也没有说话。[p]
[wait time=" 400"]
不知过了多久，感到望的手环住了我的背。[p]

[bg storage="monolog_03.jpg" time="1200"]

我们迈出了崭新的一步。[p]
脚踏实地地，稳稳向前走去。[p]
每个人都理所当然迈出的那一步。[p]
不是为了飞跃到『彼岸』的一步……[p]

[bg storage="shiro.jpg" time="3000"]

而是为了迈向未来……向前进的一步。[p]

@jump storage="scene17.ks"

