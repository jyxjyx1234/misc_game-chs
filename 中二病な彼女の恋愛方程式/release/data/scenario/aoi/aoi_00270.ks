[SCENESTART file=aoi_00270.ks]
;//aoi_00270
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku

;//\SEチャイム音
[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[r]教室的铃声响起，迎来放学后依然……
[np]

[r]午休时在天台产生的疑问，仍残留在脑海中。
[np]

[r]葵让我住进她房间的理由，简单来说……
[np]

[r]「总不能让你一直可怜兮兮地睡在客厅」……对吧。
[np]

[r]至少她们开会讨论时，好像没有人提出让我退宿的主张。
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00270_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「龙一……？」
[np]
[FACEHIDE]

[r]既然已经做出决定，收留没有房间的我应该也就是出于这种程度的理由……
[np]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00270_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「神原君不回去吗？」
[np]
[FACEHIDE]

[r]不过葵她……早就知道了吧？我的房间很快就能修好这件事……
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00270_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「喂，龙一……！」
[np]
[FACEHIDE]

[r]……既然如此，为什么——
[np]

[chisato storage="B_seifuku_M AB_11_M"]
[playcv storage="chisato_aoi_00270_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「神原君！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……怎、怎么了？」
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00270_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「这才该是我的台词。我们都要回去了哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……稍、稍等一下！我马上收拾！」
[np]

[char_erase name="chisato aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]在绫濑的催促下，我和两人一同踏上归途。
[np]

[chisato storage="B_seifuku_M AB_6_M"]
[playcv storage="chisato_aoi_00270_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「刚才看你表情特别严肃……是在想什么事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，嗯……算是吧」
[np]

[r]说是心事，或者说是在意的事……反正也差不多吧。
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00270_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「对了，今天的采购值班是真珠星……能像之前那样拜托神原君帮忙监督吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「欸，我……？」
[np]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_aoi_00270_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「真珠星最近连我的劝告都不听了……不行吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊——……那个，抱歉。今天我有些话想和葵谈谈」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00270_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「哎……」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00270_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「和葵……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「既然要住在同一个房间了，有很多事情必须提前决定好」
[np]

[character name="ryuichi"]
【龙一】[r]「所以刚才说好等回去之后两个人一起商量决定的」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00270_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「这样啊，知道了。该道歉的是我才对」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00270_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「话、话……？」
[np]
[FACEHIDE]

[r]葵似乎因为我的话而感到惊讶……不过这也是理所当然的吧。
[np]

[r]说是想谈的事情……其实也只是我单方面提出来的而已。
[np]

[char_erase name="aoi chisato"]

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

;//JUMP:aoi_00280
[jump storage="scenario/aoi/aoi_00280.ks"]