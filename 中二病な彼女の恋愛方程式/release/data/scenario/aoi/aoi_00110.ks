[SCENESTART file=aoi_00110.ks]
;//aoi_00110
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/8(水)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,seifuku

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00110_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「我回来啦」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00110_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「啊啦、你回来了」
[np]
[FACEHIDE]

[r]回到宿舍后，不仅澪音学姐……
[np]

[char_erase name="mion chisato"]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_aoi_00110_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……欢迎回来」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00110_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊、欢迎回来！」
[np]
[FACEHIDE]

[r]一年级的两人似乎也回来了，客厅里聚集了全体成员。
[np]

[char_erase name="momo supica"]

[chisato storage="A_seifuku_M AB_3_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_aoi_00110_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「桃、午饭是你准备的吗？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00110_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「是的，因为能提早回来就想着先开始准备……」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00110_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「谢谢，我现在也来帮忙吧」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]这种时候如果我会做饭就能帮上她们俩的忙了……可惜实在无能为力。
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00110_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「那我们就来准备餐具吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、我也来帮忙！」
[np]

[char_erase name="mion"]

[r]既然如此　至少要把力所能及的事情主动做好
[np]

;//時間経過
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
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[r]接着　大家吃完午饭后……
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00110_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「那么　我们开始吧」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00110_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「好的」
[np]
[FACEHIDE]

[r]留在客厅的，有我、葵、绫濑和桃酱四人。
[np]

[r]澪音学姐属于不到夜晚就提不起劲的类型，所以请假了。
[np]

[r]而真珠星则是压根没有学习意愿直接请假，因此最终聚集了这四人。
[np]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00110_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「一年级生明天要考哪些科目？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00110_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「那个…明天有保健、数学和世界史」
[np]
[FACEHIDE]

[r]我们应该是英语、地理和生物对吧……英语可是大难关啊。
[np]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00110_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「那么　在晚饭时间前大家都要加油……！」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]就这样　众人纷纷翻开笔记开始了学习时光。
[np]

[r]开始后的一段时间里，大家都默不作声地埋头学习……
[np]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_aoi_00110_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「不好意思千圣学姐……这里可以请教您吗……？」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00110_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「嗯，哪里？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_4_M"]
[playcv storage="momo_aoi_00110_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「这个关于二次方程的题目……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00110_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「唔、数学……那个，我记得这里应该是……」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]二次方程是什么来着……不行不行，集中注意力……
[np]

[playcv storage="aoi_aoi_00110_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「喂，龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_aoi_00110_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「紧急事态……可能需要龙一被封印的力量……」
[np]
[FACEHIDE]

[r]这家伙……连学习时都不忘犯中二病吗？
[np]

[r]抱歉，现在可没空陪你胡闹……！
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「呃……考试范围到这里为止……呃……」
[np]

[playcv storage="aoi_aoi_00110_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「龙一……？」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「总之先把这部分的练习题做完就——」
[np]

[playcv storage="aoi_aoi_00110_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「龙一、龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇啊！别拽我衣服啊！现在可不是玩的时候！？」
[np]

[aoi storage="A_tokushu_M A_4_M"]
[playcv storage="aoi_aoi_00110_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_tokushu"]
【葵】[r]「……？你说玩是什么意思？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是你自己说需要我的力量吗」
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00110_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「没错，需要龙一的力量。这些排列组合题我完全看不懂……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……需要力量是指学习上的吗」
[np]

[r]容易让人误解……不过可能责任在我，是我自己先入为主了……
[np]

[character name="ryuichi"]
【龙一】[r]「英语啊……话说你真觉得我能教人？」
[np]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_aoi_00110_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「千圣忙着教桃同学呢……而且比起我，那个……总觉得龙一可能更靠谱些」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过是五十步笑百步罢了……哪题不会？」
[np]

[aoi storage="A_tokushu_M A_4_M"]
[playcv storage="aoi_aoi_00110_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_tokushu"]
【葵】[r]「这道题……什么ｔｈａｔ怎样、关系代词如何的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，这里啊……」
[np]

[char_erase name="aoi"]

[r]说实话，这地方我自己也不太清楚……
[np]

[r]所以，虽然我们两个都想依赖绫濑……但那样会增加绫濑的负担。
[np]

[r]更重要的是，作为男人既然被依赖了一次，就想靠自己的力量解决……！
[np]

[character name="ryuichi"]
【龙一】[r]「呃，这个嘛……首先主语在最前面知道吧？」
[np]

[aoi storage="C_tokushu_L CD_1_L" relx=-300]
[playcv storage="aoi_aoi_00110_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「嗯嗯」
[np]
[FACEHIDE]

[r]凑近座位的葵靠过来，探头看向我的笔记本。
[np]

[character name="ryuichi"]
【龙一】[r]「然后接着这个……啊，选项里有陷阱。这种情况……」
[np]

[character name="ryuichi"]
【龙一】[r]「『我和家人一起在周末去了那家超市』所以……」
[np]

[r]……嗯？
[np]

[aoi storage="A_tokushu_L A_1_L" relx=-300]
[playcv storage="aoi_aoi_00110_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「『和家人一起』放在最前面……嗯，周末在最后……？不，可是……」
[np]
[FACEHIDE]

[r]葵正一脸认真地试图解答英语排序题。
[np]

[r]认真是好事，但距离是不是有点太近了……？具体来说，脸的距离……
[np]

[aoi storage="C_tokushu_L CD_4_L" relx=-300]
[playcv storage="aoi_aoi_00110_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「行きました是过去式……所以用这个的话，这里就会变成这样……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等……葵……？」
[np]

[r]太、太近了……不知为何，距离越来越近……！
[np]

[aoi storage="D_tokushu_L CD_2_L"]
[playcv storage="aoi_aoi_00110_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「啊我明白了龙一！也就是说这里这样处理——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「停！」
[np]

[aoi storage="A_tokushu_L A_8_L"]
[playcv storage="aoi_aoi_00110_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「诶……？啊……！！」
[np]
[FACEHIDE]

[r]她解题太过专注，完全没有察觉到吧。
[np]

[r]在彼此的脸颊几乎要碰触到的瞬间，葵慌忙拉开了距离。
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「……察觉到了？」
[np]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00110_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「呜、啊……对、对不起……！只、只顾着看题目，那个……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘛，能这么专注是好事啦……」
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_aoi_00110_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「呜……我、我知道错了……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00110_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「你们两个怎么了？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00110_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「咦……？啊、没……没什么……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00110_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「葵小姐，你的脸好像有点红……？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00110_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「啊……这、这个，那个……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00110_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「难不成是感冒了……？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00110_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「不、不是的，不是那样……只、只是感觉有点热而已……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00110_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「啊，确实……可能还是把窗户打开比较好呢」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]站起身的绫濑为了通风打开了客厅的窗户。
[np]

[momo storage="C_sifuku_M C_4_M"]
[playcv storage="momo_aoi_00110_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「……盯——……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_9_M"]
[r]……不知怎的，桃酱正目不转睛地盯着葵……
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_aoi_00110_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「啊……！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]
[r]接着在和我目光交汇的瞬间，她慌忙将视线垂落到课本上。……怎么回事？
[np]

;//小声
[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_aoi_00110_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「果、果然……嗯，说不定真的没弄错……这样下去，已经……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃酱？」
[np]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_aoi_00110_010x.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「咿呀啊！？什、什什、什么事啊！？」
[np]
[FACEHIDE]

;//[r]ちょっと声をかけただけで、そんなに驚かれるとは……。
;//[np]

;//[character name="ryuichi"]
;//【竜一】[r]「いや、今なんか言ってなかった……？」
;//[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00110_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「哎……！？我、我什么都没说哦……？是不是你的错觉啊……？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00110_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「啊、快到点心时间了！我去准备零食吧！」
[np]
[FACEHIDE]

[r]突然说出这句话后，桃酱像是要逃离现场般起身离席。
[np]

[char_erase name="momo"]

[r]怎么回事，刚才的反应……虽然有点在意，不过算了……
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

;//JUMP:aoi_00120
[jump storage="scenario/aoi/aoi_00120.ks"]