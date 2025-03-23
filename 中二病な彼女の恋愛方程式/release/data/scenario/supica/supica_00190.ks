[SCENESTART file=supica_00190.ks]
;//supica_00190
;//BG:bg13_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:千聖,seifuku


[chisato storage="A_seifuku_L AB_1_L"]

[playcv storage="momo_supica_00190_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「那个……测验结果怎么样……？」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_L CD_1_L"]
[playcv storage="chisato_supica_00190_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「该怎么说呢，既不算好也不算坏……大概就是这种感觉吧」
[np]
[FACEHIDE]

[playcv storage="aoi_supica_00190_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「……千圣的不可，对我来说就是可……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]平常的三人加上一年级的两人，形成了一支稍显庞大的回家队伍。
[np]

[r]排成一列横队确实会妨碍通行，于是分成了前后两列行走，不过……
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_supica_00190_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]我旁边是真珠星，剩下三人在后面倒也罢了……
[np]

[r]前后两列的距离是不是有点远？本来就该这样吗？你说呢？
[np]

[supica storage="D_seifuku_M CD_4_M"]
[playcv storage="supica_supica_00190_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_seifuku"]
【真珠星】[r]「……好热」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……确实……」
[np]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00190_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「龙一……好热……」
[np]
[FACEHIDE]

[r]真珠星先是怨念地仰头看了眼太阳，接着又用困扰的表情看向我。
[np]

[character name="ryuichi"]
【龙一】[r]「别用那种眼神看我啊……我只是个普通人，实在无能为力」
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_supica_00190_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「龙一并非凡俗，乃是现世降临的神龙……若是运用那份力量，或许——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别说了别说了别说了！这话被后面那位听到又要起反应了！」
[np]

[r]本想这么提醒……但或许因为考试的事情情绪低落，葵似乎没有听见这番话。
[np]

[character name="ryuichi"]
【龙一】[r]「倒不如说真珠星你想想办法啊。你不是从宇宙来的观测者吗？用点神奇力量什么的……」
[np]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00190_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「局部气温微调极其困难……若是将日本全境气温降至冰点以下倒有可能」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……那还是算了」
[np]

[r]要是现在让日本全国突然变成严冬，我可担不起这个责任。
[np]

[character name="ryuichi"]
【龙一】[r]「比起那个真珠星，不好好看路走路很危险啊」
[np]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00190_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……咦？」
[np]
[FACEHIDE]

[r]从刚才开始，真珠星就始终面朝我这边走路。此刻交谈时也是如此。
[np]

[character name="ryuichi"]
【龙一】[r]「所以，别光顾着看这边，好好看着前面——」
[np]

[r]话音刚落——
[np]

[supica storage="A_seifuku_M AB_8_M"]
[playcv storage="supica_supica_00190_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_seifuku"]
【真珠星】[r]「啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「危险……！！」
[np]

[char_erase name="supica"]

[playse buf=5 storage="sound/10010.ogg"]

[quake time="300"]

[supica storage="A_seifuku_L AB_1_L"]

[r]真珠星脚尖绊了一下险些摔倒，我千钧一发之际拉住了她的手。
[np]

[character name="ryuichi"]
【龙一】[r]「看吧，刚说完就……」
[np]

[supica storage="D_seifuku_L CD_4_L"]
[playcv storage="supica_supica_00190_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_seifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「要是刚才真摔了，搞不好会受伤……喂，真珠星？」
[np]

[r]到底有没有在听我说话……？怎么一直盯着我们牵着的手……
[np]

[character name="ryuichi"]
【龙一】[r]「啊…弄疼你了吗？抱歉，这是——」
[np]

[supica storage="D_seifuku_L CD_1_L"]
[playcv storage="supica_supica_00190_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「就这样继续……」
[np]
[FACEHIDE]

[r]刚想松开手，真珠星却反过来紧紧握住。
[np]

[supica storage="A_seifuku_L AB_1_L"]
[playcv storage="supica_supica_00190_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……就这样，回家」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[supica storage="C1_seifuku_L CD_4_L"]
[playcv storage="supica_supica_00190_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_seifuku"]
【真珠星】[r]「龙一……能不能紧紧握住真珠星的手……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃、那个……」
[np]

[supica storage="C1_seifuku_L CD_1_L"]
[playcv storage="supica_supica_00190_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「然后……就这样回家……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]……她的脸上绝对没有浮现出笑容。
[np]

[r]可是不知为何……从她话语的细微之处仿佛能感受到真珠星的笑意，我不由得心头一颤。
[np]

[supica storage="A_seifuku_L AB_1_L"]
[playcv storage="supica_supica_00190_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……不行吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘛、嘛啊……倒也不是不可以……」
[np]

[char_erase name="supica"]

[r]和真珠星牵手这件事本身我倒没什么抵触。可是……
[np]

[chisato storage="C_seifuku_M CD_8_M" relx= -100 trans=false]
[aoi storage="A_seifuku_M A_8_M" relx= 0 trans=false]
[momo storage="A_seifuku_M AB_3_M" relx= 100 trans=false]
[char_trans]

[playcv storage="chisato_supica_00190_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「哇……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_supica_00190_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「……！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_supica_00190_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「嘻嘻……♪」
[np]
[FACEHIDE]

[r]从刚才开始跟在后面的三个人，她们默默窥视这边动静的模样简直一清二楚……这实在让人害臊得不行！
[np]

;//小声
[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_supica_00190_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]

[char_jump name=momo]

【桃】[r]「真珠星酱，神原先辈……祝你们永结同心，百年好合……♪」
[np]
[FACEHIDE]

[r]都听见了啦！全都听见了啦桃酱！
[np]

[char_erase name="momo aoi chisato"]

[supica storage="A_seifuku_L AB_1_L"]
[playcv storage="supica_supica_00190_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「龙一……走吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦哦……」
[np]

[char_erase name="supica"]

[r]……结果我之后也一直和真珠星牵着手……
[np]

[r]感受着背后如芒在背的好奇目光，比平时多流了好几倍汗水才回到宿舍。
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

;//JUMP:supica_00200
[jump storage="scenario/supica/supica_00200.ks"]
