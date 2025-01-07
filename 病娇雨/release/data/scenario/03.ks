*start
;――――――――――――――――――――――――――――――――――――――――
;【第三幕】日常３
;――――――――――――――――――――――――――――――――――――――――

;BGM
[playbgm  time="1000"  loop="true"  storage="hasumi.ogg"  ]

;背景
[bg  storage="bg16.png"  time="1000"  ]

课程告一段落，午休时间即将开始。[p]
在无人的走廊上，我在等着她。[p]

[voconfig sebuf="0" name="hasumi" vostorage="hasumi/{number}.ogg"  number="16"]

[chara_mod  name="hasumi" face="10"]
[chara_show  name="hasumi"  time="1000"  wait="true" reflect="false"  ]

#hasumi
「抱歉让你久等了。明明是我叫你来的却迟到了」[p][stopse  time="1000"  buf="0"  ]
#
莲见，怎么了？突然把我叫出来……[p]
[chara_mod  name="hasumi" face="3"]
#hasumi
「谢谢你上次的雨伞。那个，真的，帮了大忙」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

她红着脸，将我借给她的雨伞递了过来。[p]
没什么，谢谢。能帮上莲见的忙就好。[p]
这是前所未有的场景。像我这样一个废柴能装帅的机会，人生中又能有几次呢……[p]
[chara_mod  name="hasumi" face="6"]
#hasumi
「我很开心……非常开心。所以想要好好地向你道谢」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

能看出她时而与我对视时而避开视线，害羞地意识着我的存在。[p]

内心涌动的感情已经快要抑制不住了。[p]
我下定决心，要向她传达自己的心意。[p]
就算玉石俱焚也无所谓。就算被她觉得恶心，再也无法和莲见说话也无所谓。[p]
即便如此……我还是想要传达。[p]
至少想要获得传达心意的许可。[p]
这和宿利那样虚伪的爱不同。[p]
这是真真正正的纯爱。[p]
因为莲见是我第一个认真喜欢上的人。[p]

『我……喜欢莲见』[p]
[chara_mod  name="hasumi" face="13"]
#hasumi
「甘太郎……你……？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="9"]
#hasumi
「啊……谢谢。那个，我很高兴能收到你的心意……但是……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

是啊。我就知道会这样……但这样就好。[p]
[chara_mod  name="hasumi" face="10"]
#hasumi
「我啊，一直有件事情瞒着你……如果甘太郎你喜欢我的话……就必须让你知道……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

……？[p]
到底是什么呢。[p]
[chara_mod  name="hasumi" face="9"]
#hasumi
「我啊…………在卖身」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="10"]
#hasumi
「和从未见过面、从未说过话的……第一次见面的、陌生男人收钱，做那种事情……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
…………[p]
莲、见…………？[p]
[chara_mod  name="hasumi" face="9"]
#hasumi
「很讨厌吧？做这种肮脏事情的我，很讨厌吧。无法爱我吧。幻灭了吧？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

……为什么，莲见要做这种事？[p]
[chara_mod  name="hasumi" face="1"]
#hasumi
「我的父母在我小学的时候就离婚了。从那以后就是妈妈一个人把我抚养大的」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="10"]
#hasumi
「但是去年，妈妈生病住院了……需要很多钱」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="9"]
#hasumi
「虽然也在打工，但那点钱根本不够。只能这样做了……」[p][stopse  time="1000"  buf="0"  ]
#hasumi
「医疗费是一方面，生活费和伙食费也需要，还得负担妹妹们的学费……」[p][stopse  time="1000"  buf="0"  ]
#
;ボイス止め
[stopse  time="1000"  buf="0"  ]
看着她虽然微不足道，却在拼命支撑着重要家人的样子……[p]
我由衷地想要救她。[p]

;ic呼び出し
[call storage=okotowari.ks target=*ic2]

;――――――――――――――――――――――――――――――――――――――――
;（はすみの売春シーン）
;――――――――――――――――――――――――――――――――――――――――

[voconfig sebuf="0" name="ex" vostorage="huuzoku/{number}.ogg"  number="1"]

[playbgm  time="1000"  loop="true"  storage="eerie.ogg"  ]

[bg  storage="9.png"  time="1000"  ]

[cg storage="9.png"]


某天晚上。[p]
破旧的废屋里回响着淫靡的水声……[p]
#hasumi
「呜啊，嗯嗯……呀，还，还没湿呢……不要，请温柔一点……嗯嗯！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

一个年轻女子被男人粗暴地进入，身体不住颤抖。[p]

#hasumi
「啊啊啊！！好，好痛……好痛，好痛啊！不要，拔出去……等湿了再，啊嗯」[p][stopse  time="1000"  buf="0"  ]
#ex
「现在就别装什么处女了。没事没事，慢慢就会舒服的」[p][stopse  time="1000"  buf="0"  ]
#hasumi
「这，这样……哦，嗯……啊啊啊啊！！啊嗯，啊嗯，啊……呀嗯，哈啊，嗯嗯嗯……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

对了，这只是工作而已。只是一项工作而已。[p]
我只需要平静地完成被要求的事情就好。[p]
但是……[p]
但是，今天在学校发生的事情却浮现在脑海中，让我无法集中精神。[p]

#ex
「喂，你完全没在专心嘛？莲见酱要认真点啊。手都停下来了」[p][stopse  time="1000"  buf="0"  ]
#
[bg  storage="9-2.png"  time="1000"  ]

#hasumi
「啊……呼，嗯，对不起……太，太舒服了，我竟然走神了！」[p][stopse  time="1000"  buf="0"  ]
#ex
「这可不行啊，我可是付了很多钱的！不好好侍奉可不行」[p][stopse  time="1000"  buf="0"  ]
#hasumi
「对不起，对不起……只顾着自己，舒服了……啊嗯！嗯嗯，呀……」[p][stopse  time="1000"  buf="0"  ]
#ex
「啊，原来如此……是男人吗？有男朋友了？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

被说中最不想听到的话，心里一阵刺痛。[p]

[bg  storage="9.png"  time="1000"  ]

#hasumi
「我，我会努力的……啊啊，我想要更舒服，我会加油的……！！所以，今天也请，尽情地，侵犯我……吧……！」[p][stopse  time="1000"  buf="0"  ]
#ex
「哦，真乖～！那今天就多给点小费吧？」[p][stopse  time="1000"  buf="0"  ]
#ex
「真是令人感动啊，为了家人出卖身体什么的，真让人想哭呢」[p][stopse  time="1000"  buf="0"  ]
#ex
「不过女人真好啊，做爱既能享受又舒服还能赚钱」[p][stopse  time="1000"  buf="0"  ]
#
[bg  storage="9-2.png"  time="1000"  ]

#hasumi
「嗯，哈，啊………………是，是呢……嗯……」[p][stopse  time="1000"  buf="0"  ]
#ex
「咦？该不会现在想说要退出吧？」[p][stopse  time="1000"  buf="0"  ]
#ex
「那可不行啊！像莲见酱这么年轻的孩子可不常见呢！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

[bg  storage="kuro.png"  time="1000"  ]

甘太郎君…………[p]
甘太郎君、甘太郎君、甘太郎君、甘太郎君、甘太郎君…………[p]
回过神来，发现自己满脑子都是他。[p]
他笨拙、长相不出众、也不讨人喜欢……但是。[p]
但我知道他骨子里是个非常温柔的人。[p]
不知道和他做爱会是什么感觉……？[p]

;ic呼び出し
[call storage=okotowari.ks target=*ic1]

;――――――――――――――――――――――――――――――――――――――――
;はすみサイド１
;――――――――――――――――――――――――――――――――――――――――

[voconfig sebuf="0" name="yomi" vostorage="yomi/{number}.ogg"  number="1"]

[playbgm  time="1000"  loop="true"  storage="mellow.ogg"  ]

[bg  storage="bg36.png"  time="1000"  ]

『轰隆隆隆隆…………』[p]
——汽车引擎声好吵。[p]
凌晨2点。我透过车窗望着外面。[p]
一排排大楼都已经熄灯了。[p]
这个时间已经没什么人气了呢。[p]
破旧的欢乐街。随着岁月流逝而逐渐腐朽的景色。[p]
无趣的人、无趣的街道、无趣的人生……[p]
这是一座空虚的城市。腐烂再腐烂，最后变得令人无法直视……[p]
#hasumi
「……啊，就在这里停下吧。谢谢您了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

向送我回来的司机道谢后，我下了车。[p]

[bg  storage="bg38.png"  time="1000"  ]

我回到的是自己家。一栋位于小巷角落的破旧公寓。[p]
毫不犹豫地打开了那扇门。[p]

[bg  storage="bg37.png"  time="1000"  ]

今天出门的时候，我记得是让她洗衣服来着。[p]
但是，房间里却弥漫着一股腥臭味……[p]
看来连基本的打扫都没做好。[p]
厨房里堆满了没洗的碗碟，房间也乱七八糟的。[p]

[chara_mod  name="yomi" face="4"]
[chara_show  name="yomi"  time="1000"  wait="true" reflect="false"  ]

#yomi
「啊，姐、姐姐……！欢迎回……」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]

#
晾衣竿上空空如也，没有晾着衣服。也就是说……[p]

[stopbgm  time="1000"  fadeout="true"  ]

[chara_mod  name="hasumi" face="12"]
[chara_show  name="hasumi"  time="1000"  wait="true" reflect="false"  ]

#hasumi
「你他妈在耍什么花样！！我不是说了在我回来之前把衣服洗了吗！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

[playbgm  time="1000"  loop="true"  storage="boubt.ogg"  ]

一进房间我就大吼一声，随手抄起旁边的杯子扔了出去。[p]
[chara_mod  name="yomi" face="2"]
#yomi
「呀……对不起！对不起！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

妹妹吓得蜷缩在原地。[p]
[chara_mod  name="hasumi" face="11"]
#hasumi
「清见，你为什么就是不听姐姐的话？真是废物……去死算了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我把在外面无法发泄的郁闷，全都发泄在这个妹妹身上。[p]
即使在外面精神崩溃，我还有这家伙在。[p]
有什么事就责弄这家伙就好。打她就好。踢她就好……[p]
因为她不会反抗，随时都能当个称心如意的沙包。[p]
我用看垃圾般的眼神瞪着这样的妹妹——「清见」。[p]
[chara_mod  name="hasumi" face="6"]
#hasumi
「洗衣服，为什么做不到呢～？已经是小学生了吧？是笨蛋吗～？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yomi" face="1"]
#yomi
「那个，就是……我洗了……但是，太重了，没能晾起来……」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="11"]
#hasumi
「……啊～？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我感到不妙，去查看了洗手间。[p]
湿漉漉的衣物铺满了整个地板。[p]
[chara_mod  name="hasumi" face="7"]
#hasumi
「这要怎么办啊，这些……？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

清见正跪坐着低着头，一副做错事的样子。[p]
[chara_mod  name="hasumi" face="8"]
#hasumi
「你啊，知道给我增添了多少负担吗？光是活着就已经够添麻烦了，好歹做点有用的事啊」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

一察觉到要挨骂，这家伙就立刻低下头。[p]
[chara_mod  name="yomi" face="6"]
#yomi
「对！对不起，对不，起……！姐姐……对不起……！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
看到她这样一副厌恶的样子，难道以为我不会生气吗。[p]
为什么不明白这只会惹我生气。为什么连这种事都察觉不到……[p]
这个只会哭的家伙肯定根本没有罪恶感吧。[p]
[chara_mod  name="hasumi" face="12"]
#hasumi
「哔哔哔哔烦死了！为什么你总是这样让我困扰！？」[p][stopse  time="1000"  buf="0"  ]
#hasumi
「去死吧！去死！！去死啊混蛋！！！！」[p][stopse  time="1000"  buf="0"  ]
#

[stopse  time="1000"  buf="0"  ]

我用力踢向妹妹的头部、肩膀和腹部……[p]
[chara_mod  name="yomi" face="7"]
#yomi
「啊，呃！……呜，哈……咳咳，咳咳」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
清见痛苦地流着口水，双手捂着肚子。[p]
[chara_mod  name="hasumi" face="8"]
#hasumi
「装什么受害者？受害的明明是我好吗！？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="12"]
#hasumi
「啊，对了，你也去卖身啊！这样的话就能明白我的心情了吧！？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
我不断地踢她，但妹妹已经一动不动了。[p]
她只是默默蜷缩着抽泣。[p]
[chara_mod  name="hasumi" face="11"]
#hasumi
「对了，清见应该也能工作了吧。说不定萝莉控会有需求呢？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yomi" face="6"]
#yomi
「不…………不要啊，姐姐……我，不想做那种事…………」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="6"]
#hasumi
「啊哈哈，对啊！我是不是天才？下次去问问大叔？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="hasumi" face="5"]
#hasumi
「清见也要和姐姐一起，来做H的事情哦？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yomi" face="1"]
#yomi
「啊……啊…………哈…………」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

看着受伤的清见的样子……我的嘴角不禁扬起了一丝笑意。[p]

;ic呼び出し
[call storage=okotowari.ks target=*ic1]

;――――――――――――――――――――――――――――――――――――――――
;雨の日の逢瀬３
;――――――――――――――――――――――――――――――――――――――――

[bg  storage="bg14.png"  time="1000"  ]

;ムービー
[layermode_movie  mode="screen"  speed="1"  volume="0"  loop="true"  time="100"  wait="true"  video="rain1-2.webm"  ]

[playbgm  time="1000"  loop="true"  storage="yadori.ogg"  ]

[voconfig sebuf="0" name="yadori" vostorage="yadori/{number}.ogg"  number="108"]

因为下雨了，我又去了校舍后面。[p]

[chara_mod  name="yadori" face="1"]
[chara_show  name="yadori"  time="1000"  wait="true" reflect="false"  ]

那个女孩像往常一样，理所当然地在那里。[p]
今天她也像雨一样湿润地笑着，嘲笑着我。[p]

[chara_mod  name="yadori" face="3"]

#yadori
「咦？我还以为你今天不会来呢」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

这家伙又在闹什么别扭啊。[p]
宿利到底把我当成什么了。[p]
[chara_mod  name="yadori" face="6"]
#yadori
「呵呵。嗯，甘太郎君，今天很准时嘛。真了不起」[p][stopse  time="1000"  buf="0"  ]
#
别以为我总是会迟到啊？[p]
……然后，你肯定又要说恶魔契约的事了吧。[p]
[chara_mod  name="yadori" face="9"]
#yadori
「没错哦。好厉害，你怎么知道的？是超能力吗？」[p][stopse  time="1000"  buf="0"  ]
#

[stopse  time="1000"  buf="0"  ]

才不是呢。因为宿利每次来这里第一个就说这个话题。[p]
已经厌倦了。我觉得这是世界上最无聊的预定剧本。[p]
[chara_mod  name="yadori" face="2"]
#yadori
「甘太郎君，你到底把这段时间当成什么了？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

是什么呢……[p]
……告白时间？[p]
[chara_mod  name="yadori" face="9"]
#yadori
「告白吗」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我还以为你是想找我聊天才叫我出来的。[p]
但最近我明白了。宿利根本不把我当人看。只是想把我变成性奴隶而已。[p]
没有爱情的做爱，只是发泄性欲的出口。……说白了，就像炮友一样。[p]
虽然嘴上说着「喜欢」，但实际上根本不是这么想的吧。[p]
………………[p]
[chara_mod  name="yadori" face="3"]
#yadori
「诶…………嗯，差不多是这样呢。对，就是这样。很遗憾，这就是恶魔的密会」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

那个停顿是什么意思啊。[p]
[chara_mod  name="yadori" face="1"]
#yadori
「你可能不会相信，但是我……非常喜欢甘太郎君。不想被任何人抢走」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="3"]
#yadori
「所以下雨天才会叫你出来。因为想和你说话。因为想做H的事。平时虽然是秘密，但雨天就可以自由自在……这样不是很好吗？很浪漫哦」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

这一点都不浪漫啊。[p]
突然说这种话，我也很困扰啊……[p]
[chara_mod  name="yadori" face="4"]
#yadori
「没关系。嗯。我明白的……你已经有喜欢的人了呢」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

她似乎看穿了我的心思，没有再多问什么。[p]

[chara_mod  name="yadori" face="9"]
#yadori
「……不要和那个女孩走得太近」[p][stopse  time="1000"  buf="0"  ]
#
…………啊？[p]
[chara_mod  name="yadori" face="1"]
#yadori
「看到你和那个女孩关系这么好，我的心就会揪痛……非常痛苦。啊，这就是所谓的恋爱吗。真难受啊……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我不要。凭什么一个连恋人都不是的人要对我指手画脚。[p]
[chara_mod  name="yadori" face="10"]
#yadori
「你就乖乖听我的话。我说不要就是不要。按我说的做。你是讨厌我吗？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
所以说为什么……！[p]
[chara_mod  name="yadori" face="7"]
#yadori
「我无论如何都不想让别人把你抢走。求你了听我的话……否则，我就只能用强硬的手段让你听话了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
我完全搞不懂了。我什么时候成了宿利的所有物了？[p]
[chara_mod  name="yadori" face="9"]
#yadori
「看到你这么开心我很痛苦」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
我才没有开心。我和莲见还什么都不是呢。[p]
[chara_mod  name="yadori" face="8"]
#yadori
「不管怎么看你都很开心吧。我看得出来！」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]
#
你懂我什么啊！[p]
[chara_mod  name="yadori" face="8"]
#yadori
「我懂的！只要看着我就好。我不行吗？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="2"]
#yadori
「那个女孩永远不会喜欢上你的。你永远也得不到她。她是那种收钱和男人交易的女人」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
你怎么会知道这些……[p]
[chara_mod  name="yadori" face="3"]
#yadori
「那根本不是真爱。但是我……时雨宿利，可以给你真正的爱」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="4"]
#yadori
「这不是谎言。在这个世界上，只有我一个人能够永远真心实意地爱你」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="10"]
#yadori
「丑陋、肮脏、无人爱的你，就让我来拯救吧……」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="11"]
#yadori
「选择我吧，甘太郎君……忘掉那个妓女吧！！」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]

#
我……[p]

;【いやだ】
;【やどりの言う通りにする】
　[glink  color="ts09"  size="30"  x="200"  width="760"  y="200"  text="不要"  target="*select7"  ]
　[glink  color="ts09"  size="30"  x="200"  width="760"  y="400"  text="按照宿利说的做"  target="*select8"  ]
[s]
;――――――――――――――――――――――――――――――――――――――――
;【いやだ】BAD３
;――――――――――――――――――――――――――――――――――――――――
*select7

不要。[p]
我摇摇头，低下了头。[p]
真是让人无语。我已经受够这个任性的女人了。[p]
我喜欢莲见。所以我不能再和你在一起了……[p]

[voconfig sebuf="0" name="yadori" vostorage="yadori/{number}.ogg"  number="129"]

[chara_mod  name="yadori" face="10"]
#yadori
「是吗……原来如此」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
宿利面无表情地，直直地看着我。[p]
#yadori
「我，已经没用了呢」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
她喃喃自语道。[p]
我没有回答。她很善解人意，应该会把这当作默认吧。[p]
在倾盆大雨中……[p]
我丢下宿利离开了那里。[p]

[chara_hide_all  time="100"  wait="true"  ]

;ムービー消し
[free_layermode  ]

;（学校）

[bg  storage="bg12.png"  time="1000"  ]

不知从那天起过去多久了。[p]
和宿利一样，在班上我们不说话，也不来往。[p]
与那时唯一的不同，就是不再有私会了吧。[p]
即使下雨，我也不会去那个地方。[p]
再也不会去那个地方了……也不会见宿利。[p]

这意味着，不能和她说话，不能触碰她，不能接吻，也不能做爱了……[p]
这意味着要和她彻底断绝关系……[p]
失去了那样的日常，才让我意识到它对我来说是多么重要。[p]
每当回想起和她在一起的日子，就感觉心里被挖出了一个大洞。[p]
人们说失去后才懂得珍惜……是这样吗？[p]

[bg  storage="kuro.png"  time="1000"  ]

[chara_mod  name="hasumi" face="3"]
[chara_show  name="hasumi"  time="1000"  wait="true" reflect="false"  ]

但是，现在的我有莲见在身边。[p]
她是我第一个真正喜欢上的人……第一个让我懂得爱的人。[p]
前几天，我和她开始交往了。[p]
是啊，我现在终于和心上人两情相悦了。[p]
我真是个幸福的人啊。[p]
为了和她的幸福，我也该好好调整心态了……[p]

[chara_hide_all  time="100"  wait="true"  ]
[bg  storage="bg12.png"  time="1000"  ]

啊。差不多到班会开始的时间了。[p]

[chara_mod  name="yadori" face="1"]
[chara_show  name="yadori"  time="1000"  wait="true" reflect="false"  ]

#yadori
「起立，鞠躬……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

今天的日值是宿利啊……[p]
虽然觉得还是尽快忘记比较好，但我发现自己还是会在意她。[p]
她还是一如既往地微笑着，[p]

[chara_mod  name="yadori" face="6"]
#yadori
「坐下——」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
她举起了课桌，[p]
……！？[p]

[playbgm  time="1000"  loop="true"  storage="occupy.ogg"  ]

[chara_hide_all  time="100"  wait="true"  ]
[bg  storage="kuro.png"  time="100"  ]

[playse buf=2 storage="hit_p06.ogg"]
[bg  storage="blood1.png"  time="10"  ]
[bg  storage="blood2.png"  time="10"  ]
[bg  storage="blood3.png"  time="10"  ]
[quake count=5 time=300 hmax=20]

朝着前排坐着的莲见的头顶砸了下去。[p]

#hasumi
「呃、啊啊！！！！？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
莲见头部喷出鲜血，倒在了原地。[p]

[voconfig sebuf="0" name="seito" vostorage="wex/{number}.ogg"  number="1"]

#seito
「啊啊啊啊啊啊啊啊啊啊啊！！！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
周围的同学们发出了尖叫。[p]

[bg  storage="bg12.png"  time="1000"  ]

[chara_mod  name="yadori" face="6"]
[chara_show  name="yadori"  time="1000"  wait="true" reflect="false"  ]

#yadori
「啊哈哈哈哈哈！！太滑稽了，不要不要，真是愉快愉快。大家知道吗——？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

宿利举起椅子，远远地扔了出去。[p]

[chara_mod  name="yadori" face="8"]

#yadori
「这个世界上，有需要的人，也有不需要的人啊！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

[playse buf=2 storage="garasu.ogg"]

『哗啦啊啊啊！！』[p]

扔出去的椅子击碎玻璃窗飞到了外面。[p]
[chara_mod  name="yadori" face="7"]
#yadori
「那些社会不需要的废物们。分享着毫无意思的事情还要假笑，装作朋友的东西」[p][stopse  time="1000"  buf="0"  ]
#yadori
「根本不去理解学生的心情，只会强加理想的父母和老师」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="9"]
#yadori
「明明不可能被心上人选中……还在徒劳挣扎的蠢女人」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="8"]
#yadori
「我啊，就是无法原谅这样的人。这个只有像我们这样纯粹的人才会受伤，被贬低的世界！我无法原谅！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
[chara_mod  name="yadori" face="7"]

[voconfig sebuf="0" name="sensei" vostorage="mex/{number}.ogg"  number="1"]
#sensei
「宿利，住手！！」[p][stopse  time="1000"  buf="0"  ]
#

[stopse  time="1000"  buf="0"  ]

老师试图阻止宿利，但被她甩开了手。[p]
[chara_mod  name="yadori" face="8"]
#yadori
「吵死了，别碰我！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
她发出尖叫，举起了藏着的金属球棒。[p]

[chara_hide_all  time="100"  wait="true"  ]

[bg  storage="10-2.png"  time="1000"  ]

#yadori
「呜哦哦哦哦哦啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

宿利以能把所有窗玻璃都打碎的气势冲了出去。[p]

[playse buf=2 storage="garasu2.ogg"]

啪啦啪啦碎裂的玻璃片散落了整个走廊。[p]

[stopse  time="1000"  buf="2"  ]

#yadori
「突然消失了也没人会注意到。这种毫无意义的存在我无法容忍……啊啊无法容忍，这是多么的不合理啊！？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]
宿利情绪激动，而众人则目瞪口呆。也有人害怕地离开了教室。[p]
我跑向倒下的莲见身边。[p]

[bg  storage="aka.png"  time="1000"  ]

莲见！[p]
你没事吧！？莲见……[p]
啊啊……头上的血……止不住。到底该怎么办……[p]
当我抱着奄奄一息的莲见，沉浸在悲伤中时……[p]

[bg  storage="10-4.png"  time="1000"  ]

宿利从头顶上方用愉快的表情注视着我。[p]

#yadori
「那些毫无意义的存在啊，根本意识不到自己只是别人的复制品这个现实」[p][stopse  time="1000"  buf="0"  ]

#yadori
「那家伙根本不是原创。只是个只会模仿他人的无个性存在罢了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

你在说什么啊……？[p]

[bg  storage="10-5.png"  time="1000"  ]

#yadori
「那个女人啊，发型、口头禅、小动作，甚至连行为举止，全——都是在模仿我」[p][stopse  time="1000"  buf="0"  ]
#yadori
「她这辈子都成不了原创。因为她做的每一件事，到头来都只是我的拙劣模仿罢了……呵呵！」[p][stopse  time="1000"  buf="0"  ]

[bg  storage="10-4.png"  time="1000"  ]

#yadori
「你喜欢那个女人吗？那么，这份感情，难道不该是对我的吗？」[p][stopse  time="1000"  buf="0"  ]
#yadori
「毕竟，那个女人的原型可是我啊」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

宿利！你到底在说什么啊！？[p]
你说的话我一句都听不懂啊！[p]

[bg  storage="10.png"  time="1000"  ]

[cg storage="10.png"]


#yadori
「所以说啊，为了能从零创造出一的天才，把那个毫无价值的抄袭女杀掉比较好吧？」[p][stopse  time="1000"  buf="0"  ]
[bg  storage="10-2.png"  time="1000"  ]
#yadori
「是我先的哦。因为是我先喜欢上你的。我不会让给她」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

够了，宿利……[p]
[bg  storage="10-5.png"  time="1000"  ]
#yadori
「哈哈……叫我停下什么？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我是说你别再伤害大家了。快住手别再破坏学校了。[p]
真是可笑。[p]
原来你是那种会把这种无聊的野心和疯狂的妄想付诸实践的人啊。[p]

[bg  storage="10-4.png"  time="1000"  ]

#yadori
「哈啊…………」[p][stopse  time="1000"  buf="0"  ]
#yadori
「…………你是说，你不会帮我咯？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

她一脸无奈地瞪着我。[p]

[bg  storage="10-5.png"  time="1000"  ]
#yadori
「是谁让我变成这样的？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我怎么知道！！你不过是自己病态罢了！[p]
[bg  storage="10-3.png"  time="1000"  ]
#yadori
「这全都是你的错！！！！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

宿利激动地举起手中的球棒。[p]
#yadori
「都是因为你……因为你无论如何都不愿意成为我的人……我才不得不这么做的！！」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]
#

[bg  storage="kuro.png"  time="1000"  ]

[playse buf=2 storage="hit_p08_a.ogg"]
[bg  storage="blood1.png"  time="10"  ]
[bg  storage="blood2.png"  time="10"  ]
[bg  storage="blood3.png"  time="10"  ]
[bg  storage="blood4.png"  time="10"  ]
[bg  storage="blood5.png"  time="10"  ]

[quake count=5 time=300 hmax=20]

挥下的球棒直接击中了我的头顶。[p]

;――――――――――――――――――――――――――――――――ー
;音声ストップ
[stopse  time="1000"  buf="0"  ]
;――――――――――――――――――――――――――――――――ー
;退場
[chara_hide_all  time="100"  wait="true"  ]
;――――――――――――――――――――――――――――――――ー
;ウインドウ消去
@layopt layer=message0 visible=false
;――――――――――――――――――――――――――――――――ー
;メニュー非表示
[layopt layer="fix" visible="false" ]
[hidemenubutton]
;――――――――――――――――――――――――――――――――ー
;背景黒
[bg  storage="kuro.png"  time="1000"  ]
;――――――――――――――――――――――――――――――――ー
;BAD END表示
;ムービー再生
[movie storage="bad4.webm" skip=false ]
;――――――――――――――――――――――――――――――――ー
;BGM消し
[stopbgm  time="2000"  fadeout="true"  ]
;――――――――――――――――――――――――――――――――ー
;ウエイト
[wait time="2000"]
;――――――――――――――――――――――――――――――――ー
;タイトルへ
[jump  storage="first.ks"  target="*endreturn"  ]

[s]
;――――――――――――――――――――――――――――――――ー

;BADEND４【投影】
;――――――――――――――――――――――――――――――――――――――――
;【やどりの言う通りにする】Hシーン
;――――――――――――――――――――――――――――――――――――――――
*select8

[playbgm  time="100"  loop="false"  storage="intimate.ogg"  ]

我明白了。我会按照宿利说的做。[p]
[chara_mod  name="yadori" face="3"]

[voconfig sebuf="0" name="yadori" vostorage="yadori/{number}.ogg"  number="156"]


#yadori
「呵。对，你就该这样。只要听我的话就好……」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]

#
按你说的做，是吧……要我怎么做？[p]
[chara_mod  name="yadori" face="4"]
#yadori
「那今天，我想要从后面来。今天我想被狠狠地要……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

你是说后入？[p]
说什么今天，你不是一直都这样吗。毕竟你是抖M……[p]

[chara_hide_all  time="100"  wait="true"  ]

;ムービー消し
[free_layermode  ]

[bg  storage="11.png"  time="1000"  ]

[cg storage="11.png"]

#yadori
「对。要好好插进小穴哦？喂……看到了吗？穴在这里哦♪」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]

#
宿利翘起臀部，用手指张开展示着小穴。[p]
不用那样我也知道……[p]

#yadori
「快点啦……我已经忍不住了……想要肉棒插进来……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

真拿你没办法。[p]
我将已经兴奋勃起的那里插入了她展示的小穴。[p]

[bg  storage="11-2.png"  time="1000"  ]

#yadori
「呜咕。嗯嗯……！好大……好大！你的、肉棒……哈啊、啊啊！」[p][stopse  time="1000"  buf="0"  ]
[bg  storage="11-3.png"  time="1000"  ]
#yadori
「嗯、哈啊哈啊哈啊……哈啊，拜托，再慢一点……！这样磨蹭的话，啊啊……嗯呜，好痛，要坏掉了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

别开玩笑了。你怎么可能被这种程度就弄得这么舒服。[p]
你以为我侵犯过你多少次了。你的小穴早就松松垮垮了。[p]
我保持着固定的速度继续抽插。[p]
#yadori
「呀！不要，这么粗暴，啊！嘶，啊嗯，再，温柔点…！啊嗯，啊嗯！！嗯，啊！哈啊，啊嗯，嗯嗯嗯……！！」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]

#
开始觉得无聊了。要不要打打屁股试试。[p]
我用力拍打宿利白皙的臀部。[p]

[playse buf=2 storage="span.ogg"]
[bg  storage="11-4.png"  time="500"  ]

『啪！』[p]

#yadori
「呀啊！！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

宿利的身体弹跳了一下。[p]
#yadori
「甘太郎君，你、你在干什么……好过分。我、我不是说了要温柔点……嗯呜！你还这样！」[p][stopse  time="1000"  buf="0"  ]
#

[stopse  time="1000"  buf="0"  ]
宿利说出了平时绝对不会说的台词。[p]
有意思……那么。[p]

[playse buf=2 storage="span.ogg"]
[wait time="500"]
[playse buf=2 storage="span.ogg"]
[wait time="500"]
[playse buf=2 storage="span.ogg"]
『啪！啪！啪！！』[p]

#yadori
「呀、呜呜、不要！」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

一边打着屁股一边猛烈地撞击着腰部。[p]
啊，差不多该到极限了……[p]
宿利……要射了……要射了！[p]
#yadori
「嗯、射进来……把我的小腹射得满满的！精液全部、射进来啊！！」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]

[bg  storage="11-5.png"  time="1000"  ]

#
呜——……！！[p]
如她所愿，全部射在了里面。[p]
#yadori
「哈啊……哈啊，哈啊……嗯、啊…………喜欢……最喜欢了……甘太郎、君……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

她用迷离的眼神看着这边，给了我一个深吻。[p]

[bg  storage="11-6.png"  time="1000"  ]

#yadori
「嗯啾、甘太郎君，嗯嗯、啾。再也不准你出轨了……绝对不允许……」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

;ic呼び出し
[call storage=okotowari.ks target=*ic2]

;――――――――――――――――――――――――――――――――――――――――
;あまたろーサイド２
;――――――――――――――――――――――――――――――――――――――――
;（別れ際）

[bg  storage="bg7.png"  time="1000"  ]

[playbgm  time="100"  loop="false"  storage="mellow.ogg"  ]

我来到这个地方，就只是为了和她谈谈而已。[p]
那天因为违背了约定，我被满屏蔽了所有联系方式。[p]
因为无法联系她，我想只能亲自去告诉她了。[p]

[bg  storage="bg39.png"  time="1000"  ]

在她就读的学校校门口，寻找着满的身影。[p]

[chara_mod  name="mitiru" face="2"]
[chara_show  name="mitiru"  time="1000"  wait="true" reflect="false"  ]

#mitiru
「啊。是甘太郎啊。怎么了？」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]
#
那个，想为之前的事道歉……[p]
[chara_mod  name="mitiru" face="3"]
#mitiru
「啊，那件事啊～。我没生气所以不用在意啦」[p][stopse  time="1000"  buf="0"  ]
[stopse  time="1000"  buf="0"  ]
#
……来不及了吗？已经无法重来了吗？[p]
或者说我们，已经分手了，对吧……[p]
我战战兢兢地向她问道。[p]
[chara_mod  name="mitiru" face="1"]
#mitiru
「你在说什么啊？我们早就分手了啊。我说过的吧？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「如果错过这次机会就结束了。和你复合的可能性就不存在了」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「但是，选择接受这个结果的是你那边吧？以为我在开玩笑？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我毕业后会搬到这边来。这样满就不会寂寞了。这样不行吗？[p]
[chara_mod  name="mitiru" face="1"]
#mitiru
「不行啊。不，或者说毕业后什么的我不在乎。我只是，想要你那天来见我而已」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「我啊，喜欢那种女朋友说想见面的时候，无论什么时候都会立刻赶来的男人」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="5"]
#mitiru
「反过来说，做不到这点的男人，就是不能把女人的感受放在第一位，所以最终都不会长久呢」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「算了，这都无所谓了。啊哈，是你自己说要来见我的哦？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="5"]
#mitiru
「明明是自己说要来的，结果因为父母反对就不来了，也太逊了吧！」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="1"]
#mitiru
「我对你完全冷淡了。不可能了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

这个……对不起…………[p]
真的对不起……[p]

[stopbgm  time="100"  fadeout="true"  ]

[chara_mod  name="mitiru" face="2"]
#mitiru
「恶心」[p][stopse  time="1000"  buf="0"  ]
#
[playbgm  time="100"  loop="false"  storage="boubt.ogg"  ]

5年前是因为被情敌抢走了，所以现在她单身了就想着还有机会，我一直在努力着。[p]
[chara_mod  name="mitiru" face="7"]
#mitiru
「你搞错了吧。你没被选中是你自己的问题哦？」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「因为你实在太没用太让人失望了，所以我才没有选择你」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

诶…………？[p]
[chara_mod  name="mitiru" face="3"]
#mitiru
「就算没有那个情敌，我想我也不会选择你」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「因为，我连被你亲吻都觉得恶心」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="5"]
#mitiru
「不知道你对自己有多自信，但是对方是否喜欢自己都不确定就去亲吻，这也太过分了吧」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「诶，你觉得我当时没有拒绝才是不对劲的？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「那个时候，因为周围都是朋友，我不想因为表现出讨厌而破坏朋友关系，所以才忍耐的」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="1"]
#mitiru
「你好好想想看？证据就是，我从来没有主动吻过你，也没有主动碰过你。全都是你单方面的行为」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="3"]
#mitiru
「我只会主动亲吻我真正喜欢的人」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「你是不是搞错了什么啊？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

我喜欢了她五年。[p]
等了五年！整整五年啊！我爱了她整整五年啊！？[p]
所以她一定也在想着我。这是理所当然的……她不可能背叛我。[p]

[chara_mod  name="mitiru" face="1"]
#mitiru
「话说，你不是把家人放在第一位吗，那就和家人在一起呗。反正我也不想和你在一起」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

不可能！我一直都是把满放在第一位的！[p]
今天我可是花了两千日元车费来见满啊！[p]
[chara_mod  name="mitiru" face="5"]
#mitiru
「不是，所以说……我才不管呢。就是这种小气吧啦的态度让人受不了。坐的是公交车吧？又不是坐飞机来的，才区区两千日元就在这大呼小叫的」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="6"]
#mitiru
「而且，居然还要跟女朋友提这种交通费，真是太小气了……该不会肉棒也这么小吧？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

五年的单相思……得到的答案却完全相反。[p]
从梦中醒来的她，仿佛要重新确认我的丑陋和可悲，开始毫不保留地说出所有想说的话。[p]
[chara_mod  name="mitiru" face="2"]
#mitiru
「嗯——现在想想，从一开始我就不喜欢甘太郎呢」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="3"]
#mitiru
「那时候是因为正好合适才跟你交往的。因为刚被甩了心情很脆弱，所以想要有个人陪在身边」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「说实话，是谁都无所谓。只要是对我温柔的人就行」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="5"]
#mitiru
「碰巧你联系了我，我就觉得正好可以」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「要不是这样，我怎么可能会选你啊。用常识想想都知道」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="7"]
#mitiru
「你是不是根本没意识到自己有多低等啊？这方面倒是挺厉害的呢」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「像你这种人，根本就没有人权吧。别说找恋人了，连选择对象的权利都没有」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="3"]
#mitiru
「但我不一样。我是人生赢家，和你不同，我有选择对象的权利」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="5"]
#mitiru
「你长得丑，还秃头，性格也差，没钱，约会费和车费都要斤斤计较，真是个丢人的男人」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="7"]
#mitiru
「而且鸡鸡还那么小，做爱也很差劲。连让一个女人满意都做不到。就是个一无是处的垃圾人渣」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「这种程度，小学初中生也就算了……你到底多大了啊？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="6"]
#mitiru
「呵呵，真是的。都是成年人了不觉得丢人吗？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「你只有「真心」这一张牌。地位、金钱、名誉，一张都没有」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="7"]
#mitiru
「就连这张「真心」这最后的王牌，在最重要的时候都打不出来」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「你什么都做不了。光是被父母反对就动弹不得」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「真是个无聊透顶的人」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="7"]
#mitiru
「就像垃圾一样。活着都没价值。从我面前消失好吗？看着你让我不舒服」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「能不能别再让我看到你那张脏兮兮的脸？」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「不过你也就这种水平的人了，我猜你大概会一直这样唧唧歪歪下去吧」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="7"]
#mitiru
「一直在SNS上因为失去我而自怨自艾，真恶心你知道吗？」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

她说的是我那个只关注她的SNS账号。[p]
一有不开心就会变得混乱的时间线。现在正因为违背了和满的约定而自怨自艾。[p]
但是，至少让我发发牢骚吧……[p]
[chara_mod  name="mitiru" face="5"]
#mitiru
「你以为你在那装可怜，我就会因为心软而继续理你吗？」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「在只有我能看到的账号上发「救救我」之类的，太恶心了好吗。这不就跟直接对我说没什么区别吗」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="6"]
#mitiru
「你以为一直装作还在想着我，一直等下去就能轮到你了吗？怎么可能啊」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

但是……填补满内心空虚的是我的责任啊。[p]
满只有我啊！[p]
[chara_mod  name="mitiru" face="7"]
#mitiru
「你这样沉醉在自己有多可怜里面，真让人恶心！」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="1"]
#mitiru
「没关系的，我已经有别人了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

满、满……？不会吧……[p]
[chara_mod  name="mitiru" face="7"]
#mitiru
「他可是把我放在第一位的哦？把我当成最重要的人。不像你这种被家里人牵着鼻子走、还违背和我的约定的人」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="5"]
#mitiru
「我现在很幸福哦。我打算和他结婚」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「已经见过我父母了呢。你大概是没这个机会了吧」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="1"]
#mitiru
「所以，能不能别来妨碍我的幸福？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="2"]
#mitiru
「你这种配角一辈子都不可能成为主角的，你做什么白日梦呢？」[p][stopse  time="1000"  buf="0"  ]
[chara_mod  name="mitiru" face="4"]
#mitiru
「我已经不需要你了。你的戏份已经结束了」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

那时的记忆深深地烙印在我的脑海中……[p]
我开始对恋爱感到无比恐惧。[p]

#mitiru
「像你这么丑的人，怎么可能会有人愿意搭理你啊」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「真可怜啊。甘太郎又丑又没价值，所以永远都不会被人选择呢」[p][stopse  time="1000"  buf="0"  ]
#mitiru
「我可是又可爱又有价值的人，所以很多人都会选择我。和你不一样」[p][stopse  time="1000"  buf="0"  ]
#
[stopse  time="1000"  buf="0"  ]

她的那些话一直一直在我脑海中回响……[p]
挥之不去。[p]

;ic呼び出し
[call storage=okotowari.ks target=*ic1]

[jump  storage="04.ks"  target="*start"  ]
