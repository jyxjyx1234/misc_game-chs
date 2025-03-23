[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00060.txt]
;//chisato_00060
;//BG:bg11_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/6(月)
;//CH:竜一,seifuku
;//CH:千聖,seifuku

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]


[r]然后……
[np]

[chisato storage="A_seifuku_M AB_4_M"]
[playcv storage="chisato_chisato_00060_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_seifuku"]
【千圣】[r]「神原君……！」
[np]
[FACEHIDE]

[r]班会结束后迎来放学时分……正当我要起身离座时，走过来的绫濑向我搭话。
[np]

[chisato storage="C_seifuku_M CD_11_M"]
[playcv storage="chisato_chisato_00060_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「午休时间的事…你可真敢做啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个啊……虽说我也觉得抱歉，但我的膀胱到极限了……」
[np]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_chisato_00060_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「这、这种事情不用说出来！快点走啦！」
[np]
[FACEHIDE]

[char_erase name="chisato"]


;//背景を校庭bg09_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[r]跟着快步走出校舍的绫濑，我拖着还没穿好的鞋往校门方向走去。
[np]

[character name="ryuichi"]
【龙一】[r]「啊咧，葵呢？」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_chisato_00060_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「葵今天和桃一起回去了。好像说她们两个人有事情要谈」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这么说今天是我和绫濑一起回去？」
[np]

[chisato storage="C_seifuku_M CD_4_M"]
[playcv storage="chisato_chisato_00060_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_seifuku"]
【千圣】[r]「……在那之前……陪我稍微去买点东西」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？买东西？」
[np]

[chisato storage="B_seifuku_M AB_11_M"]
[playcv storage="chisato_chisato_00060_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「可以吧，谁让你白天让我遭遇那种事……」
[np]
[FACEHIDE]

[r]呃，那个…确实…我也觉得是我不对啦……
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_chisato_00060_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「刚好有些想买的东西……陪我去站前商店街」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「啊，哦……」
[np]

[r]绫濑撂下这句带刺的话，转身往站前方向走了过去。
[np]

[r]午休时那件事……我本是想对绫濑过度的监视做出些微小抵抗才那么说的……
[np]

[r]不过追根究底，绫濑会变成这样也是因为昨天我的过错……这次还是老老实实听话吧。
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


;//JUMP:chisato_00070
[jump storage="scenario/chisato/chisato_00070.ks"]
