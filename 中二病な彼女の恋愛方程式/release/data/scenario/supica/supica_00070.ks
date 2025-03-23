[SCENESTART file=supica_00070.ks]
;//supica_00070
;//BG:bg13_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/8(水)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:千聖,seifuku

[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「果然是第３个选项啊啊啊啊啊啊啊啊！！！」
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00070_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「我也在２和３之间犹豫过，不过前面的动词是过去式所以……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]在结束第一天的考试回家的路上，我们一边回忆一边核对答案。
[np]

[r]得知最可靠的绫濑所选答案不同后，我不由得抓狂起来。
[np]

[character name="ryuichi"]
【龙一】[r]「真的吗，真的吗……对了，葵你选的是哪个……？」
[np]

[aoi storage="A_seifuku_L A_5_L"]
[playcv storage="aoi_supica_00070_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「……过去的事就不要再提了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……好像说了不该说的话」
[np]

[char_erase name="aoi"]

[r]唯独这件事，似乎无法用引以为傲的黑暗力量来解决。
[np]

[chisato storage="B_seifuku_M AB_1_M" trans=false]
[aoi storage="A_seifuku_M A_5_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00070_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「不过这次英语考试确实挺难的……平均分应该也不会高吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「但愿如此啊……或者说，除了祈祷之外已经别无他法了……」
[np]

[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_supica_00070_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「我觉得现在应该赶紧转换心情，准备明天的考试复习才是正确选择……」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]

[r]唔姆，第一天就惨遭迎头痛击的感觉真是强烈啊……
[np]

[r]正如绫濑所说，必须把心情转换到明天继续努力了……！
[np]

;//背景を寮のリビングbg02_01に

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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[SYSTEMMENU]

[playcv storage="chisato_supica_00070_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「我回来了」
[np]
[FACEHIDE]

[r]跟着绫濑穿过玄关来到客厅后……
[np]

[supica storage="B1_seifuku_M AB_1_M" trans=false]
[momo storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00070_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「啊，欢迎回来」
[np]
[FACEHIDE]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00070_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……欢迎回来」
[np]
[FACEHIDE]

[r]回到宿舍时，先一步回来的桃酱和真珠星已经坐在座位上了。
[np]

[char_erase name="supica momo"]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_supica_00070_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「我回来了……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_supica_00070_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「啊，那个……葵小姐……？」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="B_seifuku_M B_5_M"]
[playcv storage="aoi_supica_00070_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「呜呜……堕天圣职者……快给我、治愈魔法……」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_10_M"]
[playcv storage="momo_supica_00070_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]

[char_jump name=momo]

【桃】[r]「诶，诶诶……！？」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[r]刚踏进宿舍大门，葵就摇摇晃晃地紧挨着桃酱坐了下来。
[np]

[r]看那样子，考试所受的打击可能比我还要严重……
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00070_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「你们两个已经吃过饭了吗？」
[np]
[FACEHIDE]

[playcv storage="momo_supica_00070_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「啊、是的。我和真珠星酱两个人已经先吃过了」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_supica_00070_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「对了真珠星，今天该轮到你采购了吧？」
[np]
[FACEHIDE]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00070_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……大概吧」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_supica_00070_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「稍等一下哦，我现在把需要买的东西记下来……」
[np]
[FACEHIDE]

[char_erase name=chisato to=left time=800 fade=true]

[r]绫濑将书包放在沙发上，取出一本设计可爱的记事本。
[np]

[r]采购…要去采购啊。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星是打算现在就去吗？」
[np]

[supica storage="A_seifuku_M AB_1_M"]

[r]面对我的询问，真珠星犹豫了几秒后轻轻点了点头。
[np]

[character name="ryuichi"]
【龙一】[r]「那…我也一起去吧」
[np]

[char_erase name="supica"]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_supica_00070_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「神原君也要去？可是你的午饭……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「现在还不怎么饿，回来再吃吧」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_supica_00070_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「是吗？那好吧」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[supica storage="A_seifuku_M AB_1_M"]

[character name="ryuichi"]
【龙一】[r]「真珠星也没问题吧？就算我跟着去」
[np]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00070_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……龙一，帮忙拿东西？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊，你能这么想就再好不过了」
[np]

[r]作为这个宿舍里唯一的男生，主动承担这类体力活也是我的本分之一。
[np]

[r]再加上这次考试考得一塌糊涂，想借着采购的机会出去走走，让大脑清醒一下……这就是另一个理由了。
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_supica_00070_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……那就随你便吧」
[np]
[FACEHIDE]

[playcv storage="chisato_supica_00070_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「那就拜托你啦」
[np]
[FACEHIDE]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00070_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……嗯」
[np]
[FACEHIDE]

[char_erase name=supica to=right time=800 fade=true]

[r]真珠星从绫濑手中接过备忘录，朝我使了个眼色便走向玄关。
[np]

[chisato storage="C_seifuku_M CD_1_M" trans=false]
[momo storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]

[character name="ryuichi"]
【龙一】[r]「那我这就出发了」
[np]

[chisato storage="D_seifuku_M CD_2_M" trans=false]
[momo storage="C_seifuku_M C_2_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00070_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「好，路上小心」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]在绫濑和桃酱的目送下，我们再次踏入了夏日的骄阳之中。
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

;//JUMP:supica_00080
[jump storage="scenario/supica/supica_00080.ks"]
