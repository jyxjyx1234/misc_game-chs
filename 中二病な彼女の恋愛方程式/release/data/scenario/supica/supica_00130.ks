[SCENESTART file=supica_00130.ks]
;//supica_00130
;//BG:bg02_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/9(木)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

[aoi storage="C_tokushu_M CD_6_M"]
[playcv storage="aoi_supica_00130_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_tokushu"]
【葵】[r]「……好咸……这个素面，比平时咸了好多……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「葵……那一定是我们的悔恨泪水溶进面汤里了……」
[np]

[char_erase name="aoi"]

[playse buf=5 storage="sound/20430.ogg"]

[r]测试，第二天结束。双重意义上的结束。
[np]

[r]昨天本该用来复习的时间都拿去观星了……虽然我并没有要拿这个当借口的意思……
[np]

[r]今天考的三门科目，只要不挂科就谢天谢地……考成这个样子。
[np]

[aoi storage="C_tokushu_M CD_5_M" trans=false]
[momo storage="C_sifuku_M C_5_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00130_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「呃、请振作点，葵小姐……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

;//「リベンジャー」でお願いします
[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_supica_00130_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「呵呵呵……这种状态的「复仇者」，捏婴儿小手般轻松就能击败呢」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_supica_00130_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「所以拜托，吃饭时候别这样好吗……？」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[aoi storage="A_tokushu_L A_5_L"]
[playcv storage="aoi_supica_00130_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「……多谢款待……」
[np]
[FACEHIDE]

[char_erase name=aoi to=left time=800 fade=true]

[r]虽然难得是澪音前辈主动邀请，但葵还是垂头丧气地收拾餐具，径直回房去了。
[np]

[chisato storage="A_sifuku_M AB_5_M" trans=false]
[mion storage="C_sifuku_M CD1_4_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00130_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「哎呀……看这模样，好像考得相当糟糕呢……」
[np]
[FACEHIDE]

[playcv storage="chisato_supica_00130_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「考完试之后，她在课桌上趴了好久呢……」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_supica_00130_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「我、我先失陪了，多谢款待……」
[np]
[FACEHIDE]

[char_erase name=momo to=left time=800 fade=true]

[r]也许是担心这样的葵，吃完午餐的桃酱径直跟着进了葵的房间。
[np]

[chisato storage="C_sifuku_M CD_1_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00130_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那么，我就随便玩会儿游戏好了」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00130_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「还是一如既往的从容呢……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_supica_00130_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「这就是平时预习复习的成果啦」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_supica_00130_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「话是这么说…可我也有好好预习复习啊……」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[r]接着学姐和绫濑也收拾餐具去了厨房，各自回到房间后……
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00130_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「吸溜吸溜……」
[np]
[FACEHIDE]

[r]留在餐桌旁的只剩真珠星和我。
[np]

[r]顺带一提圣水小姐似乎因为昨晚的勾芡风味蔬菜炒菜和啤酒太搭，现在还在房间里酣睡。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星的考试…其实不用问也知道吧」
[np]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_supica_00130_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「每科二十分钟就做完了…剩下的考试时间都用来睡觉」
[np]
[FACEHIDE]

[r]真是让人羡慕啊……
[np]

[character name="ryuichi"]
【龙一】[r]「多谢款待了」
[np]

[char_erase name="supica"]

[r]把剩下的面汤倒进厨房水槽后，顺手拿起海绵准备洗碗。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星也快吃完了吗？要是的话，不如一起——」
[np]

;//小声
[supica storage="C3_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00130_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……作战开始……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]在流水声的干扰下，真珠星的声音听不太清。
[np]

[r]不过……至少看起来，她并没有在回答我的问题。
[np]

[char_erase name="supica"]

[r]因为真珠星突然起身，朝着我的房间——或者说牢房——的方向走去……
[np]

[supica storage="D_sifuku_S CD_1_S" relx=100]

[playcv storage="supica_supica_00130_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「嗯……嗯哼……嗯嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]……将书包、换洗衣物、枕头等行李一件接一件扔到铺好的被褥上，然后一股脑地拖了出来——
[np]

[playse buf=5 storage="sound/20310.ogg"]

[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「喂——！等等！！」
[np]

[supica storage="D_sifuku_L CD_11_L"]
[playcv storage="supica_supica_00130_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「……什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什么才不是重点！为什么擅自把我的行李从牢房里拖出来啊！而且还是用这么粗暴的方式！」
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00130_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……准备上楼梯」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么可能！楼梯上到一半行李就会噼里啪啦往下掉，等到了二楼就只剩被褥了……不对重点不是这个！！」
[np]

[supica storage="C1_sifuku_L CD_1_L"]

[r]真珠星依然用双手紧紧攥着我的被褥，朝我投来茫然的眼神。
[np]

[character name="ryuichi"]
【龙一】[r]「好，我们冷静沟通……真珠星，为什么要搬我的行李去二楼？」
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00130_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……搬到真珠星的房间」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……………………哈？」
[np]

[supica storage="B2_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00130_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「从今天起，龙一要和真珠星一起生活……」
[np]
[FACEHIDE]

[fadeoutbgm time="1000"]

[r]……………………嗯？
[np]

[character name="ryuichi"]
【龙一】[r]「抱歉，再说一遍」
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00130_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……龙一，要和真珠星一起生活」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……一起生活……我……在真珠星的房间里，一起……？」
[np]

[r]指了指自己，又指了指真珠星……听到我这番话，真珠星轻轻点了点头。
[np]

[r]啊，原来如此。因为我和真珠星要同住一个房间，所以真珠星才搬我的行李——
[np]

[playse buf=5 storage="sound/20310.ogg"]

[quake time="500"]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「开什么玩笑啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！为什么会变成这样！！？？」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00130_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「星辰的指引……这是最优解」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「最优！？哪里优！？什么时候优！？怎么个优法！？」
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00130_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「龙一是这颗星球的住民……最适合担任真珠星的照料者」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「照、照料者……？」
[np]

[r]等、等等……怎么突然就跳到这种话题了……！？
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00130_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一也来帮忙……搬行李」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「慢、慢着慢着慢着！照料者是什么鬼！？再说了为什么要同居啊！？」
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00130_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「真珠星心中有数」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「给我好好说清楚！用我能理解的方式表达出来！！」
[np]

[playcv storage="mion_supica_00130_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「吵死了……怎么回事？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……没、没事……真的没什么，没什么……」
[np]

[playcv storage="mion_supica_00130_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「是么……那就好」
[np]
[FACEHIDE]

[r]可能是我声音太大，前辈从门后露出狐疑的表情。
[np]

[r]好在似乎没被深究……不对，现在问题在这边啊！
[np]

[r]照料者？难道是因为帮忙换衣服就被这么认定了……？
[np]

[r]虽然这几天确实为和真珠星关系拉近感到高兴……
[np]

[r]但突然就要同居什么的……这也太跳跃了吧！
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之真珠星，同居是不行的。把我的行李还给我」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00130_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「不」
[np]
[FACEHIDE]

[r]真珠星连摇头的动作都省去，仅用单字表达拒绝。
[np]

[character name="ryuichi"]
【龙一】[r]「可、可是……那毕竟是我的行李……」
[np]

[supica storage="A_sifuku_L AB_4_L"]
[playcv storage="supica_supica_00130_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「龙一的行李就是真珠星的行李」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这算什么小屁孩理论！求你了快住手！还给我啊！」
[np]

[supica storage="A_sifuku_L AB_10_L"]
[playcv storage="supica_supica_00130_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_sifuku"]
【真珠星】[r]「别……！龙一、要和真珠星一起住。心怀感激吧……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么会变成这样啊……！绝对不行，绝对不可以！」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00130_017.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……龙一、要违抗星辰指引吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、我又没被什么指引……」
[np]

[supica storage="C1_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00130_018.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]或许是因为我始终顽固拒绝，真珠星的情绪明显越来越差。
[np]

[supica storage="A_sifuku_L AB_4_L"]
[playcv storage="supica_supica_00130_019.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……若再继续拒绝……不惜采取强硬手段……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……具体指什么？」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00130_020.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「消灭……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「地球都毁灭了还谈什么同居啊！！！」
[np]

[supica storage="D_sifuku_L CD_10_L"]

[r]真珠星紧紧攥住我的被子，用能杀人的眼神瞪着我。
[np]

[r]看这架势不管说什么她都不会听了……既然如此……
[np]

[character name="ryuichi"]
【龙一】[r]「好好好，我明白！真珠星的意思我都懂！」
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00130_021.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……那……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「但这里是公共宿舍啊！要和同住的大家商量好才行吧？你说是不是？」
[np]

[supica storage="C1_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00130_022.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……这个道理……倒也不是不懂」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对吧？所以晚饭时问问大家意见……要是大家都同意的话……这样如何？」
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00130_023.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]

[char_jump name=supica]

【真珠星】[r]「……知道了」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]好，拿到承诺了……！
[np]

[r]毫无恋爱关系的男女突然要同居，大家肯定会反对的。
[np]

[r]这样真珠星也能死心……亏我能想出这么完美的缓兵之计！
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

;//JUMP:supica_00140
[jump storage="scenario/supica/supica_00140.ks"]
