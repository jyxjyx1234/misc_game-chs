[SCENESTART file=momo_00020.ks]
;//momo_00020
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//TIME:昼
;//日付:7/2(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[r]吃完早餐后，久违地和全员一起上学。
[np]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_momo_00020_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「呜、漆黑雷达突然剧烈反应……！这果然是感应到了魔女的魔力……！？」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_9_M"]
[playcv storage="mion_momo_00020_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_seifuku"]
【澪音】[r]「不好意思今天免谈。我从昨晚开始通宵玩网游，现在可没空陪你」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_momo_00020_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「魔女投降宣言……！？看来你终于畏惧我的暗黑力量了吧……！」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_4_M"]
[playcv storage="mion_momo_00020_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_seifuku"]
【澪音】[r]「是啊，那就这样吧」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_momo_00020_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[r]明明战胜了宿敌澪音学姐，葵却不知为何露出不甘心的表情。
[np]

[chisato storage="D_seifuku_M CD_11_M" trans=false]
[mion storage="A_seifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00020_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「明明考试只剩一周了还通宵玩游戏…真是游刃有余呢」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_momo_00020_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「考试这种东西，只要平时认真听课谁都能拿满分吧？」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[character name="ryuichi"]
【龙一】[r]「咕啊…好、好痛…主要是耳朵和心里痛…！」
[np]

[aoi storage="D_seifuku_M CD_9_M" trans=false]
[momo storage="C_seifuku_M C_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00020_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「可、可恶的魔女，心理攻击吗…！」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00020_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「啊、啊哈哈…」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_momo_00020_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「不过没关系！我可是有可靠的弟子在！对吧——堕天圣职者——！」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_7_M"]
[playcv storage="momo_momo_00020_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「欸……？我、我吗？」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_11_M"]
[playcv storage="aoi_momo_00020_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「关键时刻就靠桃来解答疑问！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_momo_00020_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「依赖低一年级的学妹像话吗」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那我有不懂的地方也去问桃酱吧！」
[np]

[char_erase name="chisato"]

[momo storage="C_seifuku_M C_10_M"]
[playcv storage="momo_momo_00020_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「欸欸欸——！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="B_seifuku_M AB_4_M"]
[playcv storage="chisato_momo_00020_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_seifuku"]
【千圣】[r]「所以说啊，问刚没学过的课程内容只会让桃为难不是吗……？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[aoi storage="B_seifuku_M B_5_M" trans=false]
[momo storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00020_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「确实可能如此……但若是让桃的暗黑力量全力发挥，说不定……！」
[np]
[FACEHIDE]

[r]暗黑力量还能用在读书上……真厉害啊。
[np]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00020_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「这、这个确实有点勉强……但、不过在我懂的范围内的话，我会尽力帮忙的……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00020_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「啊、不过比我聪明许多的真珠星酱应该更可靠吧……」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[supica storage="B3_seifuku_M AB_4_M"]
[playcv storage="supica_momo_00020_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「……教人太麻烦了」
[np]
[FACEHIDE]

[r]那是当然的。
[np]

[char_erase name="supica"]

[aoi storage="A_seifuku_M A_5_M" trans=false]
[momo storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00020_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「呜呜……为何啊，为何肩负使命重返人间的我，竟要应付学业测试这种事……」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_9_M"]
[playcv storage="momo_momo_00020_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「葵、葵学姐加油……！只要熬过这关就是暑假了嘛！」
[np]
[FACEHIDE]

[r]确实是这样。下周考完试之后，再过一周发还试卷，就是暑假了……
[np]

[r]虽然还没正式确定能留在伏木庄，但如果可以的话真想和大家——
[np]

[char_erase name="momo aoi"]

[momo storage="C_seifuku_L C_2_L"]
[playcv storage="momo_momo_00020_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「学长也要加油啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[momo storage="B_seifuku_L AB_3_L"]
[playcv storage="momo_momo_00020_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「多想想暑假想做的事呀、出游计划呀之类的……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_L AB_2_L"]
[playcv storage="momo_momo_00020_099.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「把这些作为动力来激励自己学习应该会有效果的……！」
[np]
[FACEHIDE]

[r]桃酱在丰满的胸前紧紧握起双手，为我加油打气的模样。
[np]

[r]原来如此，用对暑假的期待感来调动自己的积极性吗……
[np]

[character name="ryuichi"]
【龙一】[r]「这个主意不错呢……谢谢你，桃酱！」
[np]

[momo storage="C_seifuku_L C_3_L"]
[playcv storage="momo_momo_00020_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「不用客气啦！」
[np]
[FACEHIDE]

[r]原来如此，这种想法也——
[np]

[char_erase name="momo"]

[mion storage="A_seifuku_M AB1_2_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00020_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「看来你的戒备心淡了不少呢」
[np]
[FACEHIDE]

[r]——啊？
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_momo_00020_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「戒备心？」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_momo_00020_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「我是说桃啦。和龙一相处时，已经能很自然地聊天了不是吗？」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00020_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「呃……」
[np]
[FACEHIDE]

[r]被澪音学姐这么一说，我们不由得面面相觑。
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00020_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「……」
[np]
[FACEHIDE]

[r]结果反倒是桃酱先害羞得移开了视线。
[np]

[chisato storage="C_seifuku_M C_1_M"]
[playcv storage="chisato_momo_00020_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「听她这么一说，确实有点……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00020_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「真、真的吗……？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_momo_00020_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「龙一刚来的时候，你总是一副避之不及的样子」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00020_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「避、避之不及！我才没有那样……！」
[np]
[FACEHIDE]

[char_erase name="chisato momo aoi"]

[supica storage="C1_seifuku_M CD_5_M"]
[playcv storage="supica_momo_00020_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_seifuku"]
【真珠星】[r]「……一有机会就盘算着要赶人家走……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[momo storage="C_seifuku_M C_10_M"]
[playcv storage="momo_momo_00020_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「我、我才没有做过那种事啊啊啊啊啊！！」
[np]
[FACEHIDE]

[r]面对真珠星的黑色幽默，桃酱慌慌张张拼命否定的样子。
[np]

[char_erase name="momo"]

[r]无论是昨天的事还是今早的对话……
[np]

[r]戒备心吗……听她这么一说，确实……可能真是这样呢。
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

[jump storage="scenario/momo/momo_00030.ks"]