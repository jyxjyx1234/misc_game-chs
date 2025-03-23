[SCENESTART file=supica_00010.ks]
;//supica_00010
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]
[SYSTEMMENU]

;//TIME:昼
;//日付:7/7(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,pants
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku


[r]作为和真珠星在学院屋顶眺望星空的代价，被省略了晚饭的次日早晨……。
[np]

[character name="ryuichi"]
【龙一】[r]「绫濑、昨天真的很对不起……！」
[np]

[r]在盥洗室换上制服的我，对着正在用平底锅煎荷包蛋的绫濑低下了头。
[np]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_supica_00010_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「都说了没关系啦。道歉的话，昨天早就听够本了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话是这么说……但过了一夜就立刻恢复原状，感觉好像没有反省的意思……」
[np]

[chisato storage="D_seifuku_M CD_2_M"]
[playcv storage="chisato_supica_00010_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「呵呵……神原君意外地会在意这种细节呢。早就不生气了真的没关系啦」
[np]
[FACEHIDE]

[r]当第三个鸡蛋被磕进平底锅时，绫濑终于对我露出了笑容。
[np]

[character name="ryuichi"]
【龙一】[r]「那就好……下次开始，我会注意分寸的」
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00010_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「嗯，能这样的话，不止是我，桃也会轻松很多」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]好，总算顺利和解了……现在的我，在立场上可不能做出破坏宿舍团结的行为啊。
[np]

[character name="ryuichi"]
【龙一】[r]「那么，我也来摆餐具……」
[np]

[r]为了不被赶出这个日渐熟悉的栖身之所，必须时刻注意自己的言行——
[np]

[playcv storage="chisato_supica_00010_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「啊、神原君！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_1_M"]
[r]正打算走近餐具柜摆放早餐要用的盘子时，被绫濑出声叫住了。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00010_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「餐具我来摆，能替我去叫醒真珠星吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、她还在睡啊……」
[np]

[r]被这么一说环视客厅，确实不见人影。
[np]

[chisato storage="B_seifuku_M AB_6_M"]
[playcv storage="chisato_supica_00010_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「这个时间再不叫醒她就来不及了……但我现在腾不开手」
[np]
[FACEHIDE]

[r]确实，在煎荷包蛋的当口，没法上二楼啊。
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00010_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「想着昨天陪她看星星的神原君去的话应该没问题……可以吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没问题，小事一桩」
[np]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_supica_00010_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「太好了，那就拜托啦」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]对绫濑点头回应后，我踏上了通往二楼的楼梯。
[np]

[r]站到真珠星的房门前……
[np]

;//\SEノック音

[playse buf=5 storage="sound/00720.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「真珠星？」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[r]一边喊着真珠星的名字一边轻叩房门……但毫无反应。
[np]

;//\SEノック音

[playse buf=5 storage="sound/00720.ogg"]
[wait time="300"]

[character name="ryuichi"]
【龙一】[r]「真珠星？早上了哦——」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[r]之后又喊了几声并敲了敲门，却始终没有回应……
[np]

[character name="ryuichi"]
【龙一】[r]「门没锁吗……」
[np]

[r]发现门没上锁，于是决定先踏进房间看看。
[np]

;//背景をすぴかの部屋bg04_01に

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=scroll from=left stay=stayfore time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=scroll from=left stay=stayback time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「哦……」
[np]

[r]第一次踏入真珠星的房间，该怎么说呢……
[np]

[r]虽不能说是充满女孩子气息的房间，但只要说是真珠星风格的房间，就会让人恍然大悟。
[np]

[r]等等，那边掉着的是内衣吗……！我、我不能看！不可以看！
[np]

[character name="ryuichi"]
【龙一】[r]「喂、喂，真珠星……？」
[np]

[r]本来擅自进入女生房间还东张西望地打量，这种行为就绝对不值得提倡……
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星——快起床啊——起来啊——」
[np]

[r]为了完成绫濑交代的任务，我对着床上隆起的被团反复呼唤。持续呼唤。然而……
[np]

[character name="ryuichi"]
【龙一】[r]「……完全感觉不到要醒来的迹象啊……」
[np]

[r]包裹着真珠星的被团正有规律地上下起伏，显然还在呼吸。
[np]

[r]不过再这么磨蹭下去，我连吃早饭的时间都要没有了……
[np]

[r]事到如今就算会惹真珠星生气，也只能采取强硬手段了！
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，快起床！！」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]我双手抓住被子边缘，准备一口气——
[np]

;//通常ＣＧ０１挿入
[HIDESYSTEMMENU]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[CG cgno=22 sabunno=01]
[wait time="500"]
[SYSTEMMENU]

[playcv storage="supica_supica_00010_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……呼……呼……」
[np]

[r]——猛地掀开被子后……映入眼帘的是……
[np]

[character name="ryuichi"]
【龙一】[r]「什什什什什什什什什什什什么！？？？」
[np]

[CG cgno=22 sabunno=02]

[playcv storage="supica_supica_00010_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……嗯嗯……」
[np]

[char_erase name="supica"]
[r]啪、啪、啪嗒……！！　怎、怎么只穿内裤！？
[np]

[r]你你你这家伙怎么穿成这样！？衣服呢！？为什么不穿！？为什么啊！？
[np]

[CG cgno=22 sabunno=01]

[playcv storage="supica_supica_00010_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯——……」
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！！」
[np]

[r]真珠星只是稍微动了动身子，我的心脏就快要从喉咙里跳出来了。
[np]

[r]不妙、这太糟糕了……！光是看到真珠星这副模样就已经够要命了！
[np]

[r]话说我刚才可是大声喊出来了啊……？不会有人听到后过来吧！？
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]我贴着门板仔细聆听外面的动静……既没有上楼梯的脚步声，也没有走廊里的走动声。
[np]

[r]传入耳中的只有自己的心跳声……好，暂时人身安全是保住了，不过……
[np]

[character name="ryuichi"]
【龙一】[r]（这下该怎么办啊……！）
[np]

【龙一】[r]「真、真珠星……真珠星？」
[np]

[r]总之，必须先让她清醒过来……
[np]

[CG cgno=22 sabunno=02]

[playcv storage="supica_supica_00010_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[r]啊……总算是醒过来了……吗？
[np]

[r]她揉着惺忪睡眼，微微睁开那双圆溜溜的大眼睛……
[np]

[CG cgno=22 sabunno=03]

[playcv storage="supica_supica_00010_005.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……唔诶……」
[np]
[FACEHIDE]

[r]真珠星顶着一脸茫然的表情和我四目相对。好，任务完成！！
[np]

[character name="ryuichi"]
【龙一】[r]「早、早安真珠星……！你看，都早上了！」
[np]

[CG cgno=22 sabunno=04]

[playcv storage="supica_supica_00010_006.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……早上……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没错，早上了！早餐已经准备好了，赶紧换好衣服下来吧？那我先走了！」
[np]

[r]要是继续和这副打扮的真珠星共处一室，天知道会发生什么。
[np]

[r]更重要的是，现在的我绝对不能在这个宿舍里惹出任何麻烦……！所以完成任务叫醒她之后就得立刻撤退——
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=21]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//背景表示
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[CGHIDE]

[SYSTEMMENU]

[supica storage="D_pantu_M CD_1_M"]
[playcv storage="supica_supica_00010_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哇啊啊！？」
[np]

[r]等……瞬、瞬间移动！？你刚才明明还在床上啊！？
[np]

[supica storage="A_pantu_M AB_1_M"]
[playcv storage="supica_supica_00010_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「……早……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「早、早啊……！」
[np]

[r]从床上下来的真珠星依然只穿着内裤……喂、比起拿布偶你还有该先做的事吧！
[np]

[character name="ryuichi"]
【龙一】[r]「真、真珠星快把制服……」
[np]

[supica storage="D_pantu_M CD_1_M"]
[playcv storage="supica_supica_00010_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「……龙一帮我穿」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………………………啥？」
[np]

[supica storage="C1_pantu_M CD_1_M"]
[playcv storage="supica_supica_00010_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「龙一给真珠星穿制服」
[np]
[FACEHIDE]

[r]这标题怎么像国民级动画的副标题啊。
[np]

[character name="ryuichi"]
【龙一】[r]「呃……要我给真珠星穿制服？」
[np]

[r]面对几乎鹦鹉学舌般的询问，真珠星轻轻点了点头。
[np]

[character name="ryuichi"]
【龙一】[r]「开什么玩笑！！这种事怎么可能办得到啊！？」
[np]

[supica storage="D_pantu_M CD_4_M"]
[playcv storage="supica_supica_00010_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「……不明白为何做不到」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不明白……你都这年纪了还要别人帮你穿制服……不对，在那之前我是男的，你是女的啊！」
[np]

[supica storage="C1_pantu_M CD_1_M"]
[playcv storage="supica_supica_00010_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「……发言重点不明确」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊啊！！总之就是说要你自己穿！ＯＫ！？」
[np]

[supica storage="C1_pantu_M CD_11_M"]
[playcv storage="supica_supica_00010_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_pantu"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]听到我的话语，真珠星那双圆溜溜的大眼睛渐渐眯了起来……
[np]

[supica storage="A_pantu_L AB_4_L"]
[playcv storage="supica_supica_00010_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_pantu"]
【真珠星】[r]「……毁灭你……」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/20310.ogg"]
[quake time="300"]

[character name="ryuichi"]
【龙一】[r]「就为了这种理由！？」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[supica storage="D_pantu_L CD_4_L"]
[playcv storage="supica_supica_00010_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「……问题的大小无关紧要……这个星球的人类让真珠星不高兴了。这个理由就足够充分」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等等等等，冷静下来好好谈谈……！我们明明还可以用对话的方式解决啊！」
[np]

[supica storage="B3_pantu_M AB_4_M"]
[playcv storage="supica_supica_00010_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_pantu"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]真珠星只是死死盯着试图走向和解之路的我。
[np]

[r]啊啊真是的，到底该怎么办……？
[np]

[r]如果我就这么装没听见离开房间，心情变糟的真珠星说不定最坏情况下都不会下楼来客厅了……。
[np]

[r]但话说回来，让我来帮真珠星换衣服也——
[np]

;//\SEノック音
;//ドア越し

[playse buf=5 storage="sound/00720.ogg"]
[wait time="300"]

[playcv storage="aoi_supica_00010_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_seifuku"]
【葵】[r]「翼神龙哟……在吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃！？」
[np]

[r]随着敲门声响起葵的声音传来，我心脏都快停跳了。
[np]

[character name="ryuichi"]
【龙一】[r]「怎、怎怎、怎么了……！？」
[np]

[playcv storage="aoi_supica_00010_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「审判的时刻即将来临……抱歉，我们要先走一步了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇诶……！？」
[np]

[playcv storage="aoi_supica_00010_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「……是千圣让我转告的……再会了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、喂！？」
[np]

[r]听到葵的话后确认真珠星房间的时钟……哇，确实已经没时间了！
[np]

[r]也就是说我现在要独自承担绫濑平时负责的工作……对吧！？
[np]

[supica storage="B1_pantu_M AB_1_M"]
[playcv storage="supica_supica_00010_017.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「龙一……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还能怎么样……！啊啊真是的，知道了知道了！」
[np]

[r]继续和真珠星争论下去，话题只会僵持不下。
[np]

[r]既然如此，现在由我让步听从真珠星的指示，应该是最明智的判断……才对！
[np]

[character name="ryuichi"]
【龙一】[r]「那、制服在哪！？」
[np]

[supica storage="D_pantu_M CD_1_M"]
[playcv storage="supica_supica_00010_018.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「……这边……」
[np]
[FACEHIDE]

[r]真珠星指着的不是衣柜而是地板……就这么随便扔在地上吗！？
[np]

[character name="ryuichi"]
【龙一】[r]「啊找到了！你看！呃、先穿裙子……！等等？该、该先穿哪件！？」
[np]

[supica storage="A_pantu_L AB_1_L"]
[playcv storage="supica_supica_00010_019.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「……先穿这个……接着穿这个……」
[np]
[FACEHIDE]

[r]说是理所当然也确实如此，但我怎么可能知道女生制服的穿法……
[np]

[character name="ryuichi"]
【龙一】[r]「这、这个吗！？接、接下来是这个！？」
[np]

[supica storage="D_pantu_L CD_4_L"]
[playcv storage="supica_supica_00010_020.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「……嗯……」
[np]
[FACEHIDE]

[HIDESYSTEMMENU]

[char_erase name="supica"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

[r]依靠真珠星的指示，同时极力避免直视她的裸体，我协助她更衣……
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
[wait time="1000"]

;//JUMP:supica_00020
[jump storage="scenario/supica/supica_00020.ks"]
