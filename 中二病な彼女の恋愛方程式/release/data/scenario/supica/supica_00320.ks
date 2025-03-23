[SCENESTART file=supica_00320.ks]
;//supica_00320
;//BG:bg11_01
;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「呵、呵呵……呵呵呵……」
[np]

[r]学园午休时分。在发还考卷的第一天，我只能勉强扯动脸颊挤出僵硬的笑容。
[np]

[r]不管哪个家伙都只差几分就要不及格……但奇迹般地所有科目都在最后关头惊险避开了……！
[np]

[r]虽然被这岌岌可危的分数吓出冷汗，但感受到这种无需补考的刺激感……会忍不住发出怪笑也是理所当然的吧。
[np]

[character name="ryuichi"]
【龙一】[r]「喂爽史……爽史？」
[np]

[sousi storage="A_seifuku_M A_10_M"]
[playcv storage="sousi_supica_00320_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「………………」
[np]
[FACEHIDE]

[r]爽史连眉毛都没动一下，保持着凛然的表情凝视着窗外……
[np]

[char_erase name="sousi"]

[r]散落在课桌上的答题卡排列着个位数的分数。我瞬间明白了一切。
[np]

[chisato storage="A_seifuku_M A_1_M" trans=false]
[akane storage="B_seifuku_M AB_7_M" trans=false]
[char_trans]

[playcv storage="akane_supica_00320_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]

[char_jump name=akane]

【茜】[r]「哦—，吃饭时间到啦！　不过，你这是在合掌干嘛啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊……只是稍微对战死者表示一下哀悼而已」
[np]

[chisato storage="B_seifuku_M AB_5_M" trans=false]
[akane storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="akane_supica_00320_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「没必要做这种事啦。反正你肯定没好好复习，整天沉迷那些下流的游戏吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说的也是。好，开饭吧」
[np]

;//背景を廊下bg10_01に

[char_erase name="akane chisato"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=500]
[wt]

[r]我们把如铜像般僵直的爽史留在原地，像往常一样朝屋顶走去——
[np]

[supica storage="A_seifuku_S AB_3_S"]
[playcv storage="supica_supica_00320_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_seifuku"]
【真珠星】[r]「啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯？」
[np]

[supica storage="A_seifuku_M AB_2_M"]

[r]刚走到走廊，真珠星就加快脚步朝我这边走来，像是专门来找我的。
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_supica_00320_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「真珠星，怎么了……？」
[np]
[FACEHIDE]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00320_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……在等龙一」
[np]
[FACEHIDE]

[playcv storage="aoi_supica_00320_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「诶……？」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[supica storage="A_seifuku_L AB_3_L"]
[playcv storage="supica_supica_00320_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_seifuku"]
【真珠星】[r]「要和龙一……一起吃午饭」
[np]
[FACEHIDE]

[r]她手中紧握着今早从绫濑那里收到的便当盒……
[np]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_supica_00320_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「哈啊～……」
[np]
[FACEHIDE]


[r]本该毫不知情的茜却不知为何摆出一副了然于心的样子挤到我们中间。
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_supica_00320_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「原来如此原来如此……也就是说，是这么回事对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这是怎么回事……？」
[np]

[char_erase name="akane supica"]

[akane storage="C_seifuku_L CD_10_L"]
[playcv storage="akane_supica_00320_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「难道要让我亲口说出来？龙一君这个色鬼……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么会联想到那里去！？」
[np]

[akane storage="A_seifuku_L AB_2_L"]
[playcv storage="akane_supica_00320_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「嘛，玩笑先放一边……说要一起吃饭的话，你们是要去屋顶吧？」
[np]
[FACEHIDE]

[char_erase name="akane"]

[supica storage="A_seifuku_L AB_12_L"]

[character name="ryuichi"]
【龙一】[r]「大概是……这样？」
[np]

[r]将茜的问题直接转述给真珠星后，真珠星轻轻点了点头。
[np]

[char_erase name="supica"]

[chisato storage="C_seifuku_M CD_1_M" trans=false]
[akane storage="D_seifuku_M CD_2_M" trans=false]
[char_trans]

[playcv storage="akane_supica_00320_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「那我们就改变计划，在教室里吃吧」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00320_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「是啊……这样或许更好」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂、喂，不用做到这个地步也……」
[np]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_supica_00320_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「我说可以就可以！作为交换，之后要好好给我们说明情况哦！」
[np]
[FACEHIDE]

[char_erase name=akane to=right time=800 fade=true]

[r]扔下这句话后，茜气势十足地返回教室。
[np]

[char_erase name=chisato to=right time=800 fade=true]

[r]紧接着，绫濑和葵也相继离开之后……
[np]

[supica storage="D_seifuku_L CD_3_L"]
[playcv storage="supica_supica_00320_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_seifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]留下来的只有真珠星，她依然用指尖捏着我的制服下摆不肯松手。
[np]

[char_erase name="supica"]

[r]她是在顾虑我的感受……这样理解应该没问题吧。
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

;//JUMP:supica_00330
[jump storage="scenario/supica/supica_00330.ks"]
