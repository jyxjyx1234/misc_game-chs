[SCENESTART file=supica_00210.ks]
;//supica_00210
;//BG:bg04_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/10(金)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku


[character name="ryuichi"]
【龙一】[r]「哈啊……」
[np]

[r]吃完晚饭回到真珠星的房间后……
[np]

[r]连我自己都没意识到，不自觉地就叹了口气。
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00210_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「啊呜……吧唔……」
[np]
[FACEHIDE]

[r]坐在自己床上的真珠星一边啪嗒啪嗒地摆动着脚，一边品尝着最爱的布丁。
[np]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_supica_00210_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……嗯～……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]我瞥见真珠星叼着勺子眯起眼睛的样子……
[np]

[r]果然还是应该重新考虑和她一起住在这个房间的事比较好吧。
[np]

[r]一开始被真珠星喜欢上的事确实让我很开心，而且比起继续住在客厅这边更好……
[np]

[r]种种这样的想法交织在一起，最终接受了和真珠星同居的事。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]但过了一天冷静下来再想想……
[np]

[r]既非交往关系的男女以如此亲密的距离共同生活……果然还是有些奇怪吧。
[np]

[r]真珠星本人对这方面似乎完全没放在心上，但光是现在这样相处着，果然还是我这边更坐立不安……
[np]

[r]不行，脑袋里一片混沌，根本无法正常思考……。
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00210_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……龙一？要去哪里？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「去冲个澡」
[np]

;//\SEドアが閉まる音

[playse buf=5 storage="sound/00360.ogg"]

[wait time="1000"]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_supica_00210_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

;//背景を洗面所bg08に
[char_erase name="supica"]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「哈啊……」
[np]

[r]又叹气了啊我……无意识的情况下就更糟糕了。
[np]

[r]虽然时间还早，冲个澡清爽一下……或许能让这份烦闷的心情稍微明朗些——
[np]

[character name="ryuichi"]
【龙一】[r]「……嗯？」
[np]

[r]把浴巾和换洗衣物放进篮子，正要脱掉上衣时……忽然感觉到背后有奇怪的动静。
[np]

[r]暂时停下脱衣服的手，转头看去……
[np]

[supica storage="A_sifuku_M AB_1_M"]

[character name="ryuichi"]
【龙一】[r]「真、真珠星……？」
[np]

[r]吃完布丁的真珠星一动不动地凝视着我。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，你怎么在这里……」
[np]

[supica storage="D_sifuku_M CD_1_M"]

[r]仔细看的话，真珠星手里拿着浴巾和换洗衣物——等等，那件内裤——
[np]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_supica_00210_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「真珠星也要进去……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00210_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一和真珠星……一起，洗澡」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/10010.ogg"]

[quake time="500"]

[r]什……！？
[np]

[character name="ryuichi"]
【龙一】[r]「难、难道像上次那样要洗头或者擦背……」
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00210_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……上次？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊不是……！」
[np]

[r]对、对啊……那时候确实是真珠星半睡半醒……第二天早上见面的时候，她好像完全不记得了……！
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00210_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「真珠星也要，洗澡……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等等等等！别脱啊！别一副理所当然的样子就开始脱啊！！」
[np]

[supica storage="A_sifuku_L AB_1_L"]

[r]我全力制止了正准备解开洋服的真珠星。
[np]

[supica storage="A_sifuku_L AB_4_L"]
[playcv storage="supica_supica_00210_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……可是，要洗澡的话不脱衣服不行……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话、话是这么说……但我可没说过要和真珠星一起洗啊！」
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00210_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「那，现在说……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不说！绝对不可以一起洗澡！」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00210_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……为什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不管怎样都不行！不行就是不行！」
[np]

[r]虽说帮她换衣服或者早上叫醒她的时候……早就看过了真珠星的裸体，但那是两码事！
[np]

[character name="ryuichi"]
【龙一】[r]「好了，快点回房间去……」
[np]

[r]照这个势头继续拒绝下去的话，恐怕真珠星又要毁灭地球了吧。
[np]

[r]不过，即便如此我——
[np]

[supica storage="D_sifuku_L CD_10_L"]
[playcv storage="supica_supica_00210_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_sifuku"]
【真珠星】[r]「……唔～……」
[np]
[FACEHIDE]

[r]——哎？
[np]

[supica storage="A_sifuku_L AB_10_L"]
[playcv storage="supica_supica_00210_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_sifuku"]
【真珠星】[r]「……真珠星要和龙一洗澡啦……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等等……真、真珠星……？」
[np]

[supica storage="A_sifuku_L AB_10_L"]
[playcv storage="supica_supica_00210_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_sifuku"]

[char_jump name=supica]

【真珠星】[r]「要洗……一起洗……」
[np]
[FACEHIDE]

[r]本以为她会像往常一样说出「毁灭地球」……我都做好心理准备了……
[np]

[supica storage="C1_sifuku_L CD_10_L"]
[playcv storage="supica_supica_00210_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_sifuku"]
【真珠星】[r]「唔～……！」
[np]
[FACEHIDE]

[r]她使劲鼓起她那看似柔软的脸颊，向我表达抗议。
[np]

[r]虽然可能自认为是在生气，但看起来只是特别可爱……
[np]

[character name="ryuichi"]
【龙一】[r]「不、不行不行……总、总之不能一起洗澡！」
[np]

[supica storage="C1_sifuku_L CD_8_L"]
[playcv storage="supica_supica_00210_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_8_FACE_sifuku"]

[char_jump name=supica]

【真珠星】[r]「啊……」
[np]
[FACEHIDE]

;//背景を寮のリビングbg02_03に
[char_erase name="supica"]

[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[r]从真珠星身旁钻过，我逃也似地冲出盥洗室。
[np]

[r]没想到她会那样耍性子……因为还挺可爱的，一瞬间我的决心都动摇了……
[np]

[character name="ryuichi"]
【龙一】[r]「洗澡……等真珠星睡了之后再洗吧」
[np]

[r]不这样的话，又会像刚才那样被逼得走投无路吧……
[np]

[r]这次，我暗自叹了口气……踏上了通往二楼的楼梯。
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

;//JUMP:supica_00220
[jump storage="scenario/supica/supica_00220.ks"]
