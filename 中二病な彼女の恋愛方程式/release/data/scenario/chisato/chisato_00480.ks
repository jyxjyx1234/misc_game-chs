[SCENESTART file=chisato_00480.ks]
;//chisato_00480
;//BG:bg15_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

;//TIME:夕
;//日付:7/24(金)
;//CH:竜一,sifuku
;//CH:千聖,sifuku

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_chisato_00480_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「啊，真开心……♪」
[np]
[FACEHIDE]

[r]回顾今日整日的经历，胸中充盈着喜悦的千圣与……
[np]

[character name="ryuichi"]
【龙一】[r]「活着…我…还活着…」
[np]

[r]从电车下来安然抵达车站前，切实感受着生命存在的我。
[np]

[r]说实话第四次之后的记忆都模糊了…但只要千圣能高兴的话……
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_chisato_00480_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「……龙一，谢谢你……还有，对不起……」
[np]
[FACEHIDE]

[r]忽然，千圣用力握住了我的手。
[np]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_chisato_00480_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「可能有点得意忘形玩过头了…闹得太过火了呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这点程度根本不算什么！再来十次都奉陪！」
[np]

[r]对着似乎真心反省的千圣，刻意摆出夸张的挺胸姿势。
[np]

[character name="ryuichi"]
【龙一】[r]「……刚才那当然是开玩笑…不过千圣真的不用在意」
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_chisato_00480_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「可是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「因为该怎么说呢……包括那些在内，也算是生日礼物的一部分吧……」
[np]

[character name="ryuichi"]
【龙一】[r]「毕竟我之前都没好好记住她的生日……所以觉得至少要努力做到那种程度」
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_chisato_00480_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「原来…是这样啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以啊……到我生日的时候，要连去五次鬼屋作回礼」
[np]

[chisato storage="D_sifuku_M CD_8_M"]
[playcv storage="chisato_chisato_00480_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「唔……！！！」
[np]
[FACEHIDE]

[r]虽然我不擅长惊险项目，但对幽灵或灵异现象之类的倒是无所谓。
[np]

[r]所以人造鬼屋什么的根本不在话下……不过根据上次的情况来看，千圣肯定是……
[np]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_chisato_00480_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「鬼、鬼屋……但如果是作为给龙一的礼物的话……我、我……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊不……当然是开玩笑的」
[np]

[chisato storage="B_sifuku_L AB_10_L"]
[playcv storage="chisato_chisato_00480_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「我、我才不怕呢……因为龙一你会陪着我嘛……没、没问题，没问题的……」
[np]
[FACEHIDE]

[r]千圣说着紧紧抱住了我的胳膊。
[np]

[char_erase name="chisato"]

[r]……虽然是随口开的玩笑……不过……既然现在已经是恋人了，再一起去一次的话……说不定会很有趣呢。
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

;//JUMP:chisato_00490
[jump storage="scenario/chisato/chisato_00490.ks"]