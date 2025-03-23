[SCENESTART file=supica_00220.ks]
;//supica_00220
;//BG:bg04_03（消灯）
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_04.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/10(金)
;//CH:竜一,pajyama
;//CH:すぴか,pajyama

[r]然后……
[np]

[playcv storage="supica_supica_00220_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……呼……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]……好了。
[np]

;//背景を寮のリビングbg02_03（消灯）に

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_04.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[r]确认真珠星发出熟睡的呼吸声后，我悄悄离开房间……
[np]

;//背景を洗面所bg08に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[playse buf=5 storage="sound/00610.ogg"]
[wait time="300"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]打开洗手间的灯，终于松了口气。
[np]

[r]因为后来每次我要离开房间时，真珠星总会跟上来……
[np]

[r]等到真珠星睡着后，我决定去冲个澡。
[np]

;//\SE風呂場のドアを開ける音
;//暗転

[HIDESYSTEMMENU]

[playse buf=5 storage="sound/00290.ogg"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「呼——……」
[np]

[r]洗完身体和头发后，将打出的洗面奶泡沫抹在脸上，开始用力揉搓。
[np]

[r]不过……今天好歹像这样成功脱身了……
[np]

[r]从今往后可能每天都得等到真珠星睡着才能行动了。
[np]

[r]虽然万幸她的就寝时间不算太晚……但往后天气会越来越热，不能随心所欲冲凉这件事——
[np]

;//\SE風呂場のドアを開ける音

[playse buf=5 storage="sound/00290.ogg"]

[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「……诶？」
[np]

[r]刚才的声响，应该不是听错吧……
[np]

[character name="ryuichi"]
【龙一】[r]「嘶……！」
[np]

[r]等、等一下……这逐渐逼近的动静，总觉得之前也经历过……
[np]

[r]不对，应该说现在，这家伙正坐在我面前……！？
[np]

[r]强压下内心的动摇冲洗掉洗面奶泡沫后，我睁开眼睛——
[np]

;//通常ＣＧ挿入

[HIDESYSTEMMENU]

[CG cgno="21" sabunno="01"]

[wait time="500"]

[fadeinbgm storage="bgm/BGM10.ogg" time="500"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「开什么玩笑……！？」
[np]

[playcv storage="supica_supica_00220_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……唔唔……」
[np]
[FACEHIDE]

[r]眼前重现了初次见面时的场景——睡眼惺忪的真珠星正……
[np]

[character name="ryuichi"]
【龙一】[r]「到头来还是变成这样了吗！」
[np]

[r]搞什么啊，明明特意等到真珠星睡着才出来的……！
[np]

[character name="ryuichi"]
【龙一】[r]「真是的，为什么总是这样……」
[np]

[playcv storage="supica_supica_00220_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……在等……等你……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[playcv storage="supica_supica_00220_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一……在洗澡之前……一直在等你……」
[np]
[FACEHIDE]

[r]这么说来……刚才的鼾声，根本是在装睡对吧……！？
[np]

[playcv storage="supica_supica_00220_005.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……龙一……帮真珠星洗头……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「唔……！」
[np]

[r]就像那时一样，眼前浮现出真珠星纤小光滑的脊背……
[np]

[r]果然和换衣服时看到裸体不同……连、连我自己也光着身子，莫名觉得难为情……！
[np]

[CG cgno="21" sabunno="02"]

[playcv storage="supica_supica_00220_006.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一，快点……真珠星……困了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊真是的！知道了知道了！」
[np]

[r]粗暴地抓起洗发水……意识到这样用力过猛不行，强行平复心情后……
[np]

[CG cgno="21" sabunno="06"]

[playcv storage="supica_supica_00220_007.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……啊……」
[np]
[FACEHIDE]

[r]我轻轻揉洗着真珠星的头发。
[np]

[CG cgno="21" sabunno="03"]

[playcv storage="supica_supica_00220_008.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……嗯嗯……好舒服……」
[np]
[FACEHIDE]

[r]睡眼惺忪的真珠星时不时向前垂下脑袋……
[np]

[r]我小心避开拉扯发丝的力道，仔细清洗着每一缕青丝。
[np]

[character name="ryuichi"]
【龙一】[r]「真是……为什么我要做这种事……」
[np]

[CG cgno="21" sabunno="05"]

[playcv storage="supica_supica_00220_009.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一……讨厌给真珠星洗头吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别、倒不是讨厌啦……」
[np]

[r]当然不会讨厌真珠星。这种情感或许更应该说是一种抗拒。
[np]

[playcv storage="supica_supica_00220_010.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「那为什么……要和真珠星一起洗澡……这么抗拒呢……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「因为啊……男女共住宿舍还一起泡澡……这本来就不正常」
[np]

[CG cgno="21" sabunno="03"]

[playcv storage="supica_supica_00220_011.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「不可能……吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这种事通常都是恋人之间才会做的……」
[np]

[r]话说到这个份上，不知为何我却突然语塞了。
[np]

[playcv storage="supica_supica_00220_012.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……恋人……？」
[np]
[FACEHIDE]

[r]镜中的真珠星一脸茫然地歪着头，仿佛在说根本不理解这个词的含义。
[np]

[playcv storage="supica_supica_00220_013.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一，恋人是指……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]话说到这个地步，甚至让我怀疑是不是在被愚弄……
[np]

[character name="ryuichi"]
【龙一】[r]「好了，洗完了」
[np]

[r]在这种地方生气也毫无意义吧。
[np]

[CG cgno="21" sabunno="06"]

[playcv storage="supica_supica_00220_014.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯、嗯嗯……」
[np]
[FACEHIDE]

[r]一边这么想着，一边用热水冲洗真珠星的头发。
[np]

[CG cgno="21" sabunno="01"]

[r]随着水流，白色泡沫顺着她及腰的美丽长发滑落。
[np]

[character name="ryuichi"]
【龙一】[r]「好，这样就行……」
[np]

[playcv storage="supica_supica_00220_015.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「后背也……由龙一来洗」
[np]
[FACEHIDE]

[r]……嘛，虽然我也料到会这样。
[np]

[character name="ryuichi"]
【龙一】[r]「知道啦，我会洗的……」
[np]

[CG cgno="21" sabunno="06"]

[r]我拿起海绵搓出泡沫，避开湿发让她的后背显露出来。
[np]

[r]光是让真珠星露出肌肤的举动就让我产生某种异样感……打住打住。
[np]

[playcv storage="supica_supica_00220_016.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯、嗯嗯……」
[np]
[FACEHIDE]

[r]海绵擦拭着后背，真珠星发出怕痒的轻哼。
[np]

[CG cgno="21" sabunno="03"]

[playcv storage="supica_supica_00220_017.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一……恋人……是？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这个话题已经结束了」
[np]

[CG cgno="21" sabunno="06"]

[playcv storage="supica_supica_00220_018.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……这样啊……」
[np]
[FACEHIDE]

[r]关于恋人的定义……说实在的，连我自己也模糊不清。
[np]

[r]原本认为关系亲密的男女一旦开始交往……就在那一瞬间，两人便会从朋友变为恋人……
[np]

[r]假设现在，我和真珠星……
[np]

[r]……我到底在想什么啊……
[np]

[playcv storage="supica_supica_00220_019.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「呀……嗯、啊……」
[np]
[FACEHIDE]

[r]赶紧洗完结束这状况吧。现在，只专注于这件事就好……
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[CGHIDE]

;//JUMP:supica_00230
[jump storage="scenario/supica/supica_00230.ks"]
