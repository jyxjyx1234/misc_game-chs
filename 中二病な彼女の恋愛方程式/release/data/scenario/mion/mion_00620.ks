[SCENESTART file=mion_00620.ks]
;//mion_00620
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:夜
;//日付:7/26(日)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]吃完大量青椒后，在房门前轻轻做了个深呼吸。
[np]

;//\SEノック音
[playse buf=5 storage="sound/00690.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「前辈……？」
[np]

[r]战战兢兢地敲了敲门，却没有回应。
[np]

[r]不过我们已经确定恋人关系了。光是进房间这种事，应该不需要这么紧张……吧？
[np]

;//背景を澪音の部屋bg06_03に
;//\SEドアを開く音
[playse buf=5 storage="sound/00320.ogg"]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]边这么想着边缓缓推开了门。
[np]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]只见前辈正抱着膝盖蜷缩在床铺上。
[np]

[character name="ryuichi"]
【龙一】[r]「前、前辈……你还好吗？」
[np]

[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00620_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[r]即使直接呼唤，也得不到任何回应……
[np]

[r]看来心灵受到的创伤相当深重……就让我来做个谨慎的缝合手术——
[np]

[mion storage="A_sifuku_M AB1_5_M"]
[playcv storage="mion_mion_00620_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「……笨蛋……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[mion storage="B_sifuku_L AB1_6_L"]
[playcv storage="mion_mion_00620_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_6_FACE_sifuku"]
【澪音】[r]「笨蛋……大笨蛋……龙一你这个大笨蛋啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇啊！？」
[np]

[r]突然被她一把抱住，虽然差点摔倒但还是勉强接住了。
[np]

[mion storage="D_sifuku_L CD1_6_L"]
[playcv storage="mion_mion_00620_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「真是的！笨蛋笨蛋大笨蛋！！为什么、为什么要让我做那种事啦！！」
[np]
[FACEHIDE]

[r]前、前辈，你在哭……？
[np]

[mion storage="B_sifuku_L AB1_6_L"]
[playcv storage="mion_mion_00620_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_6_FACE_sifuku"]
【澪音】[r]「明明觉得如果是龙一的话，一定会保护我的……明明觉得作为男朋友的你，一定会守护我的！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那是……」
[np]

[mion storage="C_sifuku_L CD1_5_L"]
[playcv storage="mion_mion_00620_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「人家当时超级羞耻的啊！！羞得我简直想死，羞得快要死掉了啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起前辈……！总之先冷静下来……」
[np]

[mion storage="B_sifuku_L AB1_5_L"]
[playcv storage="mion_mion_00620_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「呜……呜呜……抽泣……呜诶……呜咿……！」
[np]
[FACEHIDE]

[r]在这种状况下虽然绝对不能说出口……
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]但看到前辈能对我如此直率地表达情感……真的觉得她超级可爱——
[np]

[fadeinbgm storage="sound/BGM03.ogg" time=1000]

[mion storage="D_sifuku_L CD1_10_L"]
[playcv storage="mion_mion_00620_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「……你以为我会说出那种话吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[mion storage="A_sifuku_L AB1_3_L"]
[playcv storage="mion_mion_00620_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「你以为被称为魔女的我……会像柔弱的小女生一样扑在你怀里哭吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噫！？」
[np]

[r]前、前辈的表情突然变得狰狞——
[np]

[character name="ryuichi"]
【龙一】[r]「嗷嗷嗷嗷嗷嗷嗷！！？？？」
[np]

[mion storage="C_sifuku_L CD1_4_L"]
[playcv storage="mion_mion_00620_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「继昨天之后……你居然敢让我这么丢脸……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等等前辈！？那里不行！不能捏的那个！！」
[np]

[mion storage="D_sifuku_L CD1_10_L"]
[playcv storage="mion_mion_00620_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「你指的是哪里呢……？是说这两个丑陋的吊钟吗？」
[np]
[FACEHIDE]

[r]前辈的手正攥着我的黄金球……！像捏核桃一样咔咔作响！？
[np]

[character name="ryuichi"]
【龙一】[r]「前辈这真的会出人命！唯、唯独那里还请您高抬贵手……！！」
[np]

[mion storage="A_sifuku_L AB1_2_L"]
[playcv storage="mion_mion_00620_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「不是挺好的吗……？一旦这里被捏碎，伴随痛楚的反省之后，就不会再犯同样的错误了吧……？」
[np]
[FACEHIDE]

[r]这人的眼神是认真的！
[np]

[character name="ryuichi"]
【龙一】[r]「我、我再也不敢了！绝对不会再有第二次了！！」
[np]

[mion storage="B_sifuku_L AB1_3_L"]
[playcv storage="mion_mion_00620_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「不敢做什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「绝、绝对不再做让前辈感到羞耻的事……！！」
[np]

[mion storage="C_sifuku_L CD1_2_L"]
[playcv storage="mion_mion_00620_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「当真？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「千真万确！！向神明……不、向澪音前辈发誓，绝对不会再犯了！」
[np]

[mion storage="D_sifuku_L CD1_1_L"]
[playcv storage="mion_mion_00620_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「……是吗」
[np]
[FACEHIDE]

[r]前辈松手的同时，我的黄金球也得以解脱……浑、浑身冷汗直冒……。
[np]

[mion storage="B_sifuku_L AB1_7_L"]
[playcv storage="mion_mion_00620_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「真是的……明明是为了惩罚才捏住的，为什么反而膨胀起来了呢……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这个嘛……」
[np]

[r]最近和前辈亲热的时候，『啊咧、我难道是Ｍ体质…？』这样想的次数好像变多了…
[np]

[r]但这是另一回事，人在紧张状态下会自然充血膨胀…这是生理现象啦。
[np]

[mion storage="C_sifuku_L CD1_5_L"]
[playcv storage="mion_mion_00620_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「哈啊…真是的，这两天被迫经历了不得了的体验呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那个…实在是对不起」
[np]

[mion storage="A_sifuku_L AB1_2_L"]
[playcv storage="mion_mion_00620_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「借用龙一的话来说……这次经历会为小说创作提供素材吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可、可能是…这样呢，嗯…」
[np]

[mion storage="D_sifuku_L CD1_3_L"]
[playcv storage="mion_mion_00620_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「不过…某种意义上也算是新鲜体验…我会以此为养分，努力将之转化为自己的东西」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就、就是这个气势！请加油！」
[np]

[char_erase name="mion"]

[r]说实话，感觉更像是前辈单方面在承受羞耻体验…
[np]

[r]但只要前辈能积极看待的话，结果好就行…对吧！
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

[jump storage="scenario/mion/mion_00630.ks"]