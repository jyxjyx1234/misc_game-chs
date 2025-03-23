[SCENESTART file=supica_00290.ks]
;//supica_00290
;//BG:bg01_03
;//TIME:夜
;//日付:7/11(土)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[HIDESYSTEMMENU]

[SYSTEMMENU]


[r]离开屋顶穿过校门，行走在夜晚的住宅区街道上……
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00290_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……到了」
[np]
[FACEHIDE]

[r]总觉得到达宿舍前的时间，似乎比往常都要短暂。
[np]

[supica storage="D_sifuku_M CD_1_M"]

[r]正常情况下，应该直接穿过玄关，被问起什么就向大家汇报……本该是这样的，但……
[np]

[character name="ryuichi"]
【龙一】[r]（这种时候……该怎么解释才好……？）
[np]

[supica storage="D_sifuku_M CD_4_M"]

[r]以桃酱为首，宿舍的大家完全误解了我们的关系。
[np]

[r]甚至已经被认为是正在交往的程度了……这种情况还需要重新汇报什么的吗？
[np]

[char_erase name=supica to=left time=800 fade=true]

[r]不，可是正式交往也就是刚刚才确定的事，这方面还是应该明确……咦？
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星……？」
[np]

[r]原本应该站在身边的真珠星，不知何时消失了踪影。
[np]

[character name="ryuichi"]
【龙一】[r]「啊……！」
[np]

[r]在我独自烦恼时，真珠星不知何时已经打开了玄关的门……
[np]

;//背景を寮のリビングbg02_03に
[playcv storage="supica_supica_00290_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……我回来了」
[np]
[FACEHIDE]

[playcv storage="satomi_supica_00290_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊～欢迎回来～」
[np]
[FACEHIDE]

[r]跟在真珠星身后，我也慌忙进了屋
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[wait time="500"]

[SYSTEMMENU]

[satomi storage="C_sifuku_M CD1_1_M" trans=false]
[mion storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00290_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「哎呀……你们俩是去看星星了吗？」
[np]
[FACEHIDE]

[r]圣水小姐和澪音前辈在看电视，绫濑似乎在翻看时尚杂志之类的东西
[np]

[r]看起来，桃酱和葵似乎不在这里——不过
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00290_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……真珠星…成为龙一的女朋友了」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_supica_00290_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「……诶？」
[np]
[FACEHIDE]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00290_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「真珠星和龙一，恋人」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/10010.ogg"]

[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「呃！！！？？？」
[np]

[char_erase name="satomi mion supica"]

[r]等、等等！真、真珠星！？这也太突然了——
[np]

[mion storage="B_sifuku_L AB1_7_L"]
[playcv storage="mion_supica_00290_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「我知道啊……所以呢？」
[np]
[FACEHIDE]

[r]…………呃？
[np]

[playcv storage="supica_supica_00290_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]面对前辈的回应，不仅是真珠星，连我都错愕不已。
[np]

[r]等等这反应才正常啊……毕竟宿舍的大家早就以为我们……
[np]

[satomi storage="A_sifuku_M AB_7_M"]
[playcv storage="satomi_supica_00290_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「咦？你们俩不是早就是那种关系了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、那个、其实……」
[np]

[char_erase name="satomi"]

[supica storage="B2_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00290_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……真珠星和龙一……从最初开始就是恋人？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_supica_00290_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「说是从一开始…不如说从你们开始同居的时候，我就以为早就……」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_supica_00290_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……早就是恋人……」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_1_M"]

[character name="ryuichi"]
【龙一】[r]「……那个……」
[np]

[char_erase name="supica chisato"]

[r]被真珠星投来视线，我一时不知该如何回答。
[np]

[chisato storage="D_sifuku_M CD_1_M"  trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]

[character name="ryuichi"]
【龙一】[r]「其实刚开始同居的时候，我们还不是那种关系……！」
[np]

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[mion storage="A_sifuku_M AB1_7_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00290_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「哎……原来是这样吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过，我觉得这种拖拖拉拉的状态继续下去会很糟糕……所以这次，正式地，那个……」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_supica_00290_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「嘿……原来是这么回事啊」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[satomi storage="A_sifuku_L AB_2_L"]
[playcv storage="satomi_supica_00290_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊，这个猪排饭看起来好好吃！地点是在东京市区啊……出门好麻烦啊……」
[satomi storage="C_sifuku_L CD_5_L"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_4_M"]
[playcv storage="mion_supica_00290_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「圣水的懒得出门简直像病一样。我觉得你还是得想办法改善一下」
[np]
[FACEHIDE]

[playcv storage="chisato_supica_00290_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「这话由前辈来说合适吗……？」
[np]
[FACEHIDE]

[char_erase name="satomi mion"]

[r]……咦？
[np]

[character name="ryuichi"]
【龙一】[r]「呃……那个……」
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_supica_00290_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，没……」
[np]

[chisato storage="A_sifuku_M AB_1_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00290_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「啊，对了……虽然各种原因错过了开口的时机……重新说一次，真珠星以后就拜托你多关照了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦……」
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_supica_00290_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「不可以让可爱的女孩子哭泣哦……？祝你们永远幸福」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢、谢谢……」
[np]

[char_erase name="mion chisato"]

[r]收到意想不到的反应，顿时泄了气。
[np]

[supica storage="B1_sifuku_L AB_1_L"]

[r]不过，既然在大家心目中我和真珠星已经是那种关系了，或许这也是顺理成章的发展吧。
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00290_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「龙一和真珠星……早就成为恋人了……」
[np]
[FACEHIDE]

[r]听到这个声音，真珠星略带惊讶地说道。
[np]

[character name="ryuichi"]
【龙一】[r]「呃……从做过类似恋人行为的意义上来说，确实是这样没错……」
[np]

[char_erase name="supica"]

[r]……照这个情况来看，应该是那样吧。
[np]

[r]对桃酱和葵的话，或许没必要再特地报告……吧。
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

;//JUMP:supica_00300
[jump storage="scenario/supica/supica_00300.ks"]
