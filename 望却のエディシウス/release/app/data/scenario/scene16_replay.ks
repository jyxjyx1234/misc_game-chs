*CG14_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_16_{number}.mp3" number="13"]
[vostart]

[chara_new  name="望2_ネックレス有" storage="chara/nozomi/tachie_2/on_neckless/2_tuujou.png" jname="望2_ネックレス有"]
[chara_face name="望2_ネックレス有" face="egao2" storage="chara/nozomi/tachie_2/on_neckless/2_egao2.png"]

[cm]
[clearfix]
[start_keyconfig]

[bg storage="shiro.jpg" time="300"]
[playse buf="3"  storage="BodyDrop_soft.mp3" volume="60"]
[bg storage="CG14/CG14_1_4.jpg" time="1800"]
[playbgm  storage="05Homecoming.mp3" volume="40"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

[nozomi_window]
#望
喂，为什么，为什么啊……！？就因为我说不要自杀吗！？所以朔就要代替我……呜咽……我不是那个意思啊……！！[r]
[p]

[saku_window]
#朔
………………望……[p]

#
[default_window]
[bg storage="CG14/CG14_3_12.jpg" time="800"]

[nozomi_window]
#望
呜，呜咽……我自己死掉也不要，但是……朔死掉更不要！[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_2_8.jpg" time="800"]

[nozomi_window]
#望
因为朔对我来说，已经成为了重要的人！[p]

[saku_window]
#朔
这种事，我也是一样的……！[p]

[nozomi_window]
#望
既然一样的话……！如果你也不想死的话……那就活下去吧[p]

#
[default_window]
[filter blur="3"]

一说话，眼泪就不由自主地流了出来。[p]
是因为被望看到我默默地想要自杀，还是因为从死亡的恐惧中解脱了呢。[p]
我的情绪一团糟……理不清头绪。[p]
我们互相哭泣着……望为了阻止我而紧紧抱住我。[p]
我则不知道该如何安放自己的情绪……[p]
——多么笨拙的接触啊。[p]

[bg storage="kuro.jpg" time="1000"]
[free_filter ]

我……一直想要轻松一点。[p]
明明自己一再重复被上司训斥的生活……最后还是逃离了工作。[p]
而现在，又以帮助望为借口……想要再次逃避。[p]
这是什么啊。[p]
啊，但是……有一件事我明白了。[p]
死亡后循环的不可思议现象……是诅咒啊。[p]
那是束缚着我的诅咒，同时也是——[p]
为了让一直逃避的我，这次不再逃避……[p]
让我直面「当下」的……残酷却又温柔的机制。[p]

[bg storage="CG14/CG14_2_7.jpg" time="800"]

[saku_window]
#朔
……活下去，什么的……明明是这么绝望的处境[p]
但是，能从望口中听到这句话……我很高兴[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
……我也意识到了。为了某个人的话，也许就能活下去[p]

[saku_window]
#朔
不是为了……自己吗？[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
为自己而活是什么意思，我不太明白……[p]

[saku_window]
#朔
抱歉。明明是我问的，但我也不太懂……[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……唉。你这是什么意思啊[p]

[saku_window]
#朔
不过，当我想要自杀的时候……我感到很不甘心[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
不甘心……？[p]

[saku_window]
#朔
我感到不甘心的是，自己只能选择这样的选择——所以，[p]

#
[default_window]
[bg storage="monolog_01.jpg" time="800"]

即使继续活下去，情况也不会有任何改变。[p]
对我们来说，哪里都没有安宁的容身之处。[p]
我们避开了无处可逃的现实，相互依偎着安慰彼此。[p]
——然而，这只是一种不稳定的关系，一旦失去容身之处就会崩溃。[p]
我在试图自杀时终于意识到。[p]

[bg storage="monolog_03.jpg" time="800"]

我所追求的东西，其实就在平凡的日常生活中。[p]

[bg storage="CG1/CG1_eating_5_2.jpg" time="800" method="vanishIn"]

望眼睛闪闪发光，津津有味地吃饭的样子。[p]

[bg storage="CG4/CG4_age_6_2.jpg" time="800" method="vanishIn"]

笑着一起玩耍，或是穿着衣服一起跳进海里。[p]

[bg storage="CG14/CG14_1_2.jpg" time="800"]

还有像现在这样……阻止愚蠢的我。[p]

[bg storage="monolog_03.jpg" time="800"]

回想起望的种种，我终于真切地感受到。[p]

[chara_show  name="望2_ネックレス有" face="egao2" top="50" width="1600" height="2259" time=800]

啊，我真的……喜欢上望了。[p]
我希望今后也能一直看到望那样的笑容——[p]
我这么想着。[p]

[chara_hide_all time=400 wait=false]
[bg storage="shiro.jpg" time="400"]
[bg storage="CG14/CG14_1_1.jpg" time="800"]

我决定用简单的话语，向望表达这份心意。[p]

[saku_window]
#朔
——我想和望一起好好地活下去[p]

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
我们只知道享受那种像是把磨损的线头随意连接起来的、权宜之计般的幸福。[p]

[bg storage="kuro.jpg" time="800"]

那就像是站在随时可能破裂的薄冰上。[p]
就像是沙上的楼阁。[p]
终将醒来的梦。[p]

[bg storage="effect_03.jpg" time="800"]

所以我——[p]

[bg storage="kuro.jpg" time="500"]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[saku_window]
#朔
不是「因为不想死所以活着」——而是「因为想活着所以活着」[r]
[p]

[default_window]
#
_　[r]
_　[cm]

说出口后才发现这是多么理所当然的事，不禁觉得有些好笑。[p]
——我也希望望能成为这样的人。[p]
我强烈而清晰地确信了这一点。[p]

[saku_window]
#朔
望啊……你今后想做些什么呢？[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……我不知道。从没想过。也许以前有过，但现在已经想不起来了。……因为，我本来是想死的啊？[r]
[p]

[default_window]
#
_　[r]
_　[cm]

她小声嘟囔着，说因为父母的缘故，那些都无所谓了。[p]
——是啊。[p]
望……无法对生存抱有希望。[p]
我仿佛在核对答案一般，小心翼翼地选择着词语。[p]

[saku_window]
#朔
在生活中，这肯定是必要的。想要做什么，想要成为什么样的人。我和望……想要怎么生活下去[r]
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
现在也许还能逃脱。我也这么想过[p]
但是…………[p]
无论我们如何为自己创造逃避的空间，终有一天，最后我们将无处可逃[p]

#
[default_window]
[bg storage="CG14/CG14_2_5.jpg" time="800"]

[nozomi_window]
#望
……不对。不是这样的。我想听的不是这种话[p]

#
[default_window]
[bg storage="CG14/CG14_3_12.jpg" time="800"]

[nozomi_window]
#望
──为什么我──到现在为止从未有过任何好事的我！就连单纯地希望活下去也不行吗？[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
我不想考虑什么希望和未来。对我来说……太难了……[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
现在我已经不想死了，但是朔说的『好好活着』……对我来说太沉重了……[p]

#
[default_window]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="300" wait="true"]

──可是，你不是说过一个人既无处可去也无处可归吗。[p]
就算没有我，望也必须能够独立生活才有意义。[p]

[bg storage="kuro.jpg" time="800"]

那只不过是…………单纯的依赖而已。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG14/CG14_2_6.jpg" time="0"]
[mask_off time="300" wait="true"]

[quake count=3 time=200 hmax=5 vmax=5]
[saku_window]
#朔
────到底是不想死，还是想活着，给我说清楚！[p]

#
[default_window]
[bg storage="CG14/CG14_1_2.jpg" time="800"]

[nozomi_window]
#望
……唔！[p]

[saku_window]
#朔
我们没有强大到可以不怀抱希望就能活下去[p]
所以啊……为了好好活着……必须要能够自己独立生活才行……[p]

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
那是不可能的……！没有朔的话……我活不下去的……[p]

[saku_window]
#朔
不能把自己的生命托付给他人[p]
……我曾经也想把生命托付给望。但是，那样的话……[p]
我无法真正意义上帮助望[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

……我们彼此都有所欠缺。[p]
心灵的空虚，不该用虚假的幸福来填补。[p]
我们必须停下脚步，好好思考如何填补这份空虚。[p]

[bg storage="effect_03.jpg" time="800"]

幸福──[p]
并非是没有污秽和伤痕的，纯洁美好的东西。[p]
而是即使沾染污秽、伤痕累累，也能同等接纳自己的弱点，并继续前进的力量──[p]
以及能够接受这种生存状态的自我。[p]
我……强烈地希望能成为那样的人。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[nozomi_window]
#望
那……我……该怎么办……[p]

[default_window]
#
我曾被望主动选择死亡的勇气……那种生存方式所吸引。[p]
但是。[p]
啊，我竟是如此软弱。[p]
看着现在的望，我再次意识到了自己的软弱。[p]

[bg storage="kuro.jpg" time="800"]

我们──就像镜子一样。[p]
一方想逃避死亡，立刻觉得自己得到了救赎。[p]
另一方伸出手，错以为握住的手就是救赎。[p]
我们都在寻求能轻易获得解脱的方法。[p]
然后出乎意料地偶然——却又自然而然地——以共依存的形式纠缠在了一起。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="CG14/CG14_2_6.jpg" time="1200"]

[saku_window]
#朔
……让我们一起重新开始吧。从头来过。从一片空白开始[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[saku_window]
#朔
赎清罪孽……清算过去……一起为迎接未来做准备[p]
我确实认为望的父母是无可救药的人渣[p]
但是，剥夺他们未来生存权的人是望[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
…………[p]

[saku_window]
#朔
就像望说想活下去一样……[p]
她的父母也一定是以自己的方式，即便扭曲也想活下去的[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
…………嗯。我……的确杀了父母[p]

#
[default_window]
[bg storage="CG14/CG14_2_6.jpg" time="800"]

[nozomi_window]
#望
我以为我的生存空间会被『夺走』。但实际上……『夺走』别人生命的是我[p]

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
呐，朔。像我这样的人活着……会被原谅吗？因为一直想着要死，所以都没有意识到……[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_3_10.jpg" time="800"]

[nozomi_window]
#望
——好怕啊，活着[p]

#
[default_window]
[bg storage="CG14/CG14_1_4.jpg" time="800"]

[nozomi_window]
#望
我、为什么……明明杀了人……却还活着？这怎么可能被原谅。毕竟，我杀了……人啊？我、杀了人……[r]
[p]

#
[default_window]
[bg storage="CG14/CG14_2_8.jpg" time="800"]

[nozomi_window]
#望
而且——不只是他们。我、连朔也曾经……杀、过……[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

望一边颤抖着双手，一边踉跄着朝某个方向走去。[p]
在拐进厨房的转角后，她的身影消失了——[p]

;;; バタン、と望が倒れ込むSE
;;; ここは他より少し音量小さく調節する
[playse buf="3"  storage="BodyDrop.mp3" volume="20"]
[wait time=" 500"]
[bg storage="jishitsu_yonaka_04.jpg" time="500"]

[saku_window]
#朔
望……！[p]

[default_window]
#
我心生不祥的预感，慌忙追了上去。[p]


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
