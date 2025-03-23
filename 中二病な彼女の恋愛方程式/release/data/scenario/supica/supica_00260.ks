[SCENESTART file=supica_00260.ks]
;//supica_00260
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//TIME:昼
;//日付:7/11(土)
;//CH:ryuichi,sifuku
;//CH:すぴか,sifuku
;//CH:千聖,sifuku

[character name="ryuichi"]
【龙一】[r]「………………」
[np]

[r]……那么，该怎么办呢。
[np]

[r]现阶段真珠星与我的关系性、所处状况、我对真珠星的心意、真珠星出于什么想法让我留在房间里……
[np]

[r]正因为考试告一段落的现在，才想重新梳理这些思绪。
[np]

[r]虽然更想在开着空调的凉爽宿舍里思考，但当着真珠星的面恐怕无法冷静思考。
[np]

[r]正是出于这样的理由，才不得不在这种烈日当空时出门的，本该如此，然而……
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00260_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一，要去哪里……？」
[np]
[FACEHIDE]

[r]为什么这家伙能这么理所当然地跟过来啊……！
[np]

[character name="ryuichi"]
【龙一】[r]「没有……我并不是决定了目的地才出来的……」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00260_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「这样啊……真珠星也没有特别想去的地方……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那你为什么要跟来？」
[np]

[supica storage="B1_sifuku_M AB_3_M"]
[playcv storage="supica_supica_00260_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「因为龙一出门了」
[np]
[FACEHIDE]

[r]……这也算理由吗？你说呢？
[np]

[char_erase name="supica"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

;//背景を駅前bg15_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]漫无目的地在熟悉的通学路上走着，不知不觉就来到了车站前。
[np]

[character name="ryuichi"]
【龙一】[r]「好热……」
[np]

[r]明明才七月，今天却热得像盛夏一样……
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00260_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]瞥向真珠星的方向，她保持着不近不远的距离，正仰头凝视着我。
[np]

[r]这样子简直像是深信不疑跟着母鸟的雏鸟。
[np]

[character name="ryuichi"]
【龙一】[r]「今天这么热……你还好吗？」
[np]

[supica storage="D_sifuku_M CD_3_M"]
[playcv storage="supica_supica_00260_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「嗯……没事……」
[np]
[FACEHIDE]

[r]虽然她这么点头应着……但看到额头上渗出的汗珠，还是担心起她的水分补给。
[np]

[character name="ryuichi"]
【龙一】[r]「去咖啡厅坐坐吧」
[np]

[char_erase name="supica"]

[r]明知真珠星会跟来，还是随意选了家站前的咖啡厅——
[np]

;//背景をカフェbg17_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg17_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[chisato storage="B_sifuku_M AB_2_M" from="right" accel="0"]
[playcv storage="chisato_supica_00260_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「欢迎光临——！」
[np]
[FACEHIDE]

[r]结果看到我的瞬间——！！
[np]

[chisato storage="C_sifuku_M CD_8_M"]
[playcv storage="chisato_supica_00260_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「哎……神、神原君？还有真珠星也……」
[np]
[FACEHIDE]

[r]踏入咖啡厅看到迎接的店员时，心脏猛地跳了一下。
[np]

[character name="ryuichi"]
【龙一】[r]「啊！原来绫濑打工的咖啡厅就是这家！？」
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_supica_00260_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「你、你不知情就进来了吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……想着找家咖啡厅休息就随便选了家……真的假的」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_supica_00260_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「说起来确实没告诉过你店名呢……」
[np]
[FACEHIDE]

[r]绫濑正笑着谈论这个偶然的巧合……
[np]

[r]但对我来说…该怎么说呢…现在这种和真珠星在一起的样子，实在不想被熟人看到……
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_supica_00260_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「所以你们两位刚才在做什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？那个…你看…就是…这个……！」
[np]

[chisato storage="D_sifuku_M CD_9_M"]
[playcv storage="chisato_supica_00260_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「难道说……是在约会之类的……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什……！？」
[np]

[char_erase name="chisato"]

[supica storage="C1_sifuku_M CD_4_M"]
[playcv storage="supica_supica_00260_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……约会？」
[np]
[FACEHIDE]

[r]……所以我才想避开这种容易让人误会的状况啊。
[np]

[char_erase name="supica"]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_supica_00260_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「哎呀，不是吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂喂，饶了我吧……」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_supica_00260_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「因为最近你们俩突然变得很要好的样子……」
[np]
[FACEHIDE]

;//小声
[chisato storage="A_sifuku_M AB_4_M"]
[playcv storage="chisato_supica_00260_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「而且就像桃说的……那、那个都住进同一间房间的关系了，所以才会这么想嘛……」
[np]
[FACEHIDE]

[r]也许是因为在打工的立场，或是对话题内容有所顾虑……绫濑稍微压低了声音，只对我这样耳语道。
[np]

[character name="ryuichi"]
【龙一】[r]「不，这个嘛……说来话长……」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_supica_00260_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「总、总之先带你们入座……这边请」
[np]
[FACEHIDE]

[r]在绫濑生硬的笑容引导下，我和真珠星坐到了窗边的座位。
[np]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_supica_00260_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「这是菜单……决定好点什么之后，再叫我过来吧。」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦……」
[np]

[char_erase name="chisato"]

[r]约会……约会啊……。
[np]

[r]不过说到底，这些也都是我自己种下的因缘吧……
[np]

[r]就像刚才绫濑说的，已经同居的男女一起出门的话，在旁人看来自然会往那方面想吧。
[np]

;//[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_supica_00260_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……龙一……」
[np]
[FACEHIDE]

[r]就算我没有……或者说真珠星大概也一样，就算我们都没有那种自觉……
[np]

[r]在旁人眼里，现在的我们——
[np]

;//[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00260_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……怎、怎么了？」
[np]

[supica storage="B1_sifuku_M AB_3_M"]
[playcv storage="supica_supica_00260_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「真珠星……这个……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……哦，奶油蜜瓜苏打啊。其他不要了吗？」
[np]

[r]看到真珠星轻轻点头后，我也准备看菜单——
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00260_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一……」
[np]
[FACEHIDE]

[r]刚要翻阅菜单又被叫住，只好放下菜单看向真珠星。
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00260_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「这是……约会……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……」
[np]

[supica storage="B3_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00260_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「刚才，千圣说过的……真珠星和龙一，正在约会……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那个……」
[np]

[char_erase name="supica"]

[r]约会的定义，应该和是否在交往无关，只要关系好的男女两人一起出门就算吧……？
[np]

[r]这么说来，我和真珠星……至少关系不算差……所以，那个……怎么说呢……
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00260_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「…………龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起真珠星……我、我去下洗手间！」
[np]

[supica storage="A_sifuku_M AB_8_M"]
[playcv storage="supica_supica_00260_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_sifuku"]
【真珠星】[r]「啊……」
[np]
[FACEHIDE]

;//暗転
[char_erase name="supica"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「……我这是在干嘛」
[np]

[r]明明没有特别需要，却对着逃进厕所的自己叹了口气。
[np]

[r]难道在动摇吗？因为被真珠星问这是不是约会？
[np]

[r]喂喂……又不是小孩子了……真的饶了我吧……。
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

;//JUMP:supica_00270
[jump storage="scenario/supica/supica_00270.ks"]