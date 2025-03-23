[SCENESTART file=aoi_00710.ks]
;//aoi_00710
;//BG:bg03_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:8/2(日)
;//CH:竜一,pajyama
;//CH:葵,pajyama
;//CH:もも,sifuku
;//CH:千聖,sifuku

[character name="ryuichi"]
【龙一】[r]「嗯、嗯……」
[np]

[r]早上，吗……？阳光照在脸上……
[np]

[aoi storage="C_pajyama_M CD_7_M"]
[playcv storage="aoi_aoi_00710_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_pajyama"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……哦……葵，你已经醒了啊」
[np]

[aoi storage="A_pajyama_M A_3_M"]
[playcv storage="aoi_aoi_00710_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_pajyama"]
【葵】[r]「啊……嗯、嗯嗯……早、早安，龙一……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，早安……」
[np]

[r]一边揉着惺忪的睡眼，一边下床轻轻伸了个懒腰。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯嗯——……呼」
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00710_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「龙、龙一……昨晚睡得好吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，不知不觉就睡着了……葵昨天也很累吗？」
[np]

[aoi storage="A_pajyama_M A_8_M"]
[playcv storage="aoi_aoi_00710_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_pajyama"]
【葵】[r]「诶……那个，为什么这么问？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我洗完澡回房间的时候，你已经睡着了啊」
[np]

[aoi storage="B_pajyama_M B_7_M"]
[playcv storage="aoi_aoi_00710_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_pajyama"]
【葵】[r]「啊……！！　那、那是……」
[np]
[FACEHIDE]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00710_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「嗯、嗯嗯！可能是在约会时玩得太疯了……啊哈哈」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[character name="ryuichi"]
【龙一】[r]「葵……？」
[np]

[aoi storage="A_pajyama_M A_8_M"]
[playcv storage="aoi_aoi_00710_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_pajyama"]
【葵】[r]「哎……！？　怎、怎么了……？」
[np]
[FACEHIDE]

[aoi storage="A_pajyama_L A_8_L"]
[r]目不转睛地盯着莫名慌张的葵的脸。
[np]

[aoi storage="C_pajyama_L CD_8_L"]
[playcv storage="aoi_aoi_00710_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「龙、龙一……？脸、脸……太近了……」
[np]
[FACEHIDE]

[r]既不是感冒也不是身体不适……这只是因为害羞而脸红罢了。
[np]

[r]但总觉得从刚才开始就有点不对劲。
[np]

[character name="ryuichi"]
【龙一】[r]「那个……总之先下楼吃饭吧」
[np]

[aoi storage="C_pajyama_L CD_7_L"]
[playcv storage="aoi_aoi_00710_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_pajyama"]
【葵】[r]「啊……嗯、嗯嗯……！」
[np]
[FACEHIDE]

[r]……应该不是我的错觉吧。
[np]

[char_erase name="aoi"]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[aoi storage="C_pajyama_M CD_1_M"]

[playcv storage="chisato_aoi_00710_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「啊、早上好两位」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、早啊—」
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00710_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「早上好、神原前辈、葵小姐」
[np]
[FACEHIDE]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00710_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「早、早上好、桃……酱」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00710_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「诶……？」
[np]
[FACEHIDE]

[aoi storage="A_pajyama_M A_8_M"]
[playcv storage="aoi_aoi_00710_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_pajyama"]
【葵】[r]「啊、没、没什么……！桃、桃！早上好！嗯！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_aoi_00710_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「好、好的……早上好……？」
[np]
[FACEHIDE]

[r]……什么情况？刚才的对话……
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00710_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「神原君、怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、没事……没什么、嗯」
[np]

[char_erase name="chisato momo aoi"]

[r]早餐准备完毕、众人各自入座后……
[np]


[chisato storage="C_sifuku_M CD_3_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_aoi_00710_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「那么、我开动了」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00710_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「我开动了」
[np]
[FACEHIDE]

[r]与往常一样，伏木庄的早餐时间开始了。
[np]

[r]真珠星大概还在睡觉，澪音前辈应该通宵玩网络游戏了吧。进入暑假后，四人共进早餐的机会变得多了起来。
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00710_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「千圣今天要打工吗？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00710_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「是啊，吃完这个稍作准备就要出门了」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_aoi_00710_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「请加油哦。那么两位是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「今天我们打算一起做暑假作业。对吧？」
[np]

[char_erase name="momo chisato"]

[aoi storage="C_pajyama_M CD_7_M"]
[playcv storage="aoi_aoi_00710_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_pajyama"]
【葵】[r]「啊…嗯、嗯，是、是这样的」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="A_sifuku_M AB_1_M"]
[playcv storage="momo_aoi_00710_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「这样啊，虽然很想说一起……但打扰你们的二人时光也不太好吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，没关系的。如果葵不介意的话，我倒是——」
[np]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_aoi_00710_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
[quake time="500"]
【桃】[r]「不行啊前辈！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噫！？」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_aoi_00710_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「你们已经是恋人了！是公认的、正处于热恋期的恋人！」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_aoi_00710_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「既然成为了恋人，就应该优先享受二人时光！这才是世界的选择！！」
[np]
[FACEHIDE]

[r]桃、桃酱，你今天的气势格外惊人呢……。
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00710_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「所以暑假作业也请在小葵房间里两人独处着完成吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好、好的……」
[np]

[char_erase name="momo aoi"]

[r]说完这些，桃酱露出心满意足的表情，重新坐回座位。
[np]

[character name="ryuichi"]
【龙一】[r]「那我们就两个人努力吧……对吧，葵？」
[np]

[aoi storage="A_pajyama_M A_3_M"]
[playcv storage="aoi_aoi_00710_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_pajyama"]
【葵】[r]「嗯、嗯……是、是啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…你刚才说『是啊』？」
[np]

[aoi storage="A_pajyama_M A_8_M"]
[playcv storage="aoi_aoi_00710_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_pajyama"]
【葵】[r]「哎……？什、什么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不…刚才葵你说了『是啊』……」
[np]

[r]如果是平时的葵，应该会说『没错』……大概。
[np]

;//[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_aoi_00710_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「葵、你从刚才开始就坐立不安的……发生什么事了吗？」
[np]
[FACEHIDE]

[aoi storage="B_pajyama_M B_7_M"]
[playcv storage="aoi_aoi_00710_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_pajyama"]
[char_jump name=aoi]
【葵】[r]「噫……！？」
[np]
[FACEHIDE]

;//[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00710_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「是啊……听她这么一说，确实感觉和平时不太一样」
[np]
[FACEHIDE]

[r]不仅是我，绫濑和桃酱似乎也察觉到葵的样子有些不对劲。
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00710_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「没、没什么不对劲的……！什么都没有，这才是正常的……」
[np]
[FACEHIDE]

[aoi storage="A_pajyama_M A_1_M"]
[playcv storage="aoi_aoi_00710_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_pajyama"]
【葵】[r]「这、这才是，正常的……嗯……」
[np]
[FACEHIDE]

[r]话说到一半，葵突然把话咽了回去。
[np]

[char_erase name="aoi"]

[r]要我说的话，拼命强调自己普通的时候就已经很不普通了……
[np]

[r]不如边写作业边试探下这方面的事吧。
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

;//JUMP:aoi_00720
[jump storage="scenario/aoi/aoi_00720.ks"]