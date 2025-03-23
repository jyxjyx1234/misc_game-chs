[SCENESTART file=all_00190.ks]
;//all_00190
;//BG:bg13_01
[HIDESYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:6/17(水)
;//CH:竜一,seifuku
;//CH:千聖,seifuku
;//CH:爽史,seifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「完全是我的错……」
[np]

[r]放学回家的路上，独自走着的脚步格外沉重。
[np]

[r]当他说「放学后要去买东西」的时候，我就该察觉到的。
[np]

[r]没能想象出爽史所说的购物究竟是怎么回事……这就是我的过失。
[np]

[character name="ryuichi"]
【龙一】[r]「唉……」
[np]

[r]爽史绝不是坏人。虽然算不上坏人……
[np]

[r]在贴满动漫游戏海报的店里被滔滔不绝说教一小时，任谁都会想叹气吧！？
[np]

;//暗転
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
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[sousi storage="B_seifuku_L B_3_L"]
[playcv storage="sousi_all_00190_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「二次元中才存在真实。你明白吗龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃，那个……」
[np]

[sousi storage="D_seifuku_L CD_2_L"]
[playcv storage="sousi_all_00190_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_2_FACE_seifuku"]
【爽史】[r]「简而言之，二次元世界才是属于我的现实，用现实这个词来形容才最贴切」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_L A_8_L"]
[playcv storage="sousi_all_00190_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_8_FACE_seifuku"]
【爽史】[r]「因此我深切认识到，自己正是现充。字面意义上的现实、也就是现世生活非常充实……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊……恭喜了……」
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_ex.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[sousi storage="D_seifuku_L CD_10_L" relx= 500]
[playcv storage="sousi_all_00190_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_10_FACE_seifuku"]
【爽史】[r]「二次元真好啊……特别是小学生。黄色的通学帽、红色的书包、郁金香形状的名牌……」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_L A_9_L" relx= 500]
[playcv storage="sousi_all_00190_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_9_FACE_seifuku"]
【爽史】[r]「啊啊，太棒了……！恍惚！愉悦！！天堂！！！」
[np]
[FACEHIDE]

[sousi storage="D_seifuku_L CD_9_L" relx= 500]
[playcv storage="sousi_all_00190_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_9_FACE_seifuku"]
【爽史】[r]「说到根源，追溯我被引领至二次元世界的历史……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、那个、其实不用特意展开说下去也……」
[np]


[r]………………。
[np]

[char_erase name="sousi"]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//背景表示
[character name="ryuichi"]
【龙一】[r]「……不行，光是回想起来就开始头疼了」
[np]

[r]结果，期待的带逛新城环节也这样草草收场了……
[np]

[r]或许该找绫濑或茜她们搭话才是正确答案吧。
[np]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]

[r]说起来，和爽史分开后我就一直想去厕所来着……！
[np]

[r]暂时遗忘的尿意再次汹涌袭来……得、得赶紧了！
[np]

;//背景を寮のリビングbg02_01に
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「我回来了」
[np]

[r]虽然试着打了声招呼，但客厅里空无一人。
[np]

[character name="ryuichi"]
【龙一】[r]「厕所、厕所……！」
[np]

[r]等等！几天前我就因为这样突然闯了祸！
[np]

;//\SEノック音
[wait time="500"]
[playse buf=5  storage="sound/00720.ogg"]
[wait time="1000"]

[r]在进洗手间之前，得先好好敲门……！
[np]

[character name="ryuichi"]
【龙一】[r]「……好！」
[np]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]确认没人回应后，我走进了洗手间。
[np]

[r]哼哼哼，看到没！人类就是通过这种方式学习的生物啊……！
[np]

[r]就算犯了错，也能从反省中获得经验教训并运用到下次，这才是人类啊！！
[np]

[r]就算被关在同样的牢笼里，我和猴子可不一样啊！！
[np]

;//\SEドアを開ける音
[wait time="500"]
[playse buf=5  storage="sound/00320.ogg"]
[wait time="1000"]

;//ＣＧ挿入
;//[fadeoutbgm time="1000"]
[CG cgno="66" sabunno="01"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[playcv storage="chisato_all_00190_001.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「呃…………？」
[np]


[char_erase name="chisato"]
[r]——没错，我和猴子……和猴子，不一样——
[np]

[character name="ryuichi"]
【龙一】[r]「…………诶？」
[np]

[r]……我走进的厕所里，不知为何已经有人了。
[np]

[character name="ryuichi"]
【龙一】[r]「绫濑……千圣？」
[np]

[CG cgno="66" sabunno="02"]

[playcv storage="chisato_all_00190_002.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「……神原……龙一……君……？」
[np]

[r]我们互相呼唤着对方名字，只是呆呆地凝视彼此。
[np]

[r]正坐在马桶上、仰头望着我的绫濑——
[np]

[r]脱下裙子和内裤的绫濑，任谁看都显然是在方便……。
[np]

[r]咦，怎么会……？门、门没锁对吧？刚才轻轻一推就开了对吧？
[np]

[character name="ryuichi"]
【龙一】[r]「那、那个……就是……」
[np]

[fadeoutbgm time="1000"]

[playcv storage="chisato_all_00190_003.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「…………………………」
[np]

[CG cgno="66" sabunno="04"]

[r]淅淅沥沥的水流声传入我的耳朵……
[np]

[r]当声音完全停止时，绫濑的脸已经红到了耳根——
[np]

[CG cgno="66" sabunno="03"]
[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[playcv storage="chisato_all_00190_004.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「不——要——啊——————————————————————！！！！！！！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「对不起啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！」
[np]

[playcv storage="chisato_all_00190_005.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「为、为什么啊！？　我明明锁了门的啊！！　我明明好好锁上了门的啊！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「不是！但门把手轻轻一推就开了啊！因为门锁显示是蓝色的，我就以为没问题啊！！」
[np]

[playcv storage="chisato_all_00190_006.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「解、解释什么的之后再说快给我出去！现在立刻出去！不然就去死啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「我可不想死！这就出去！现在马上出去！！」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=65]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//背景を寮のリビングbg02_01に
[wait time="500"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「哈啊、哈、哈啊……！　」
[np]

[r]在绫濑取我性命之前，拼死逃回了客厅。
[np]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00190_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「哈啊……真是吵死了……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、圣水小姐……！　那个、现在、这个……！」
[np]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_all_00190_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「圣水小姐！！！」
[np]
[FACEHIDE]

[r]这时，满脸通红的绫濑出现了。
[np]

[chisato storage="D_seifuku_M CD_10_M"]
[playcv storage="chisato_all_00190_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「厕所的门锁！到底什么时候才能修好啊！？」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_7_M"]
[playcv storage="satomi_all_00190_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「厕所的门锁……？哎、坏了吗？」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_11_M"]
[playcv storage="chisato_all_00190_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「就是坏了！所以请快点修好！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_10_M"]
[playcv storage="chisato_all_00190_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「关于这个问题的报告，我都已经向圣水小姐提交过几十次了不是吗啊啊啊！！！」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00190_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「哎呀、有这回事吗……？不过啊、酒这东西真可怕呢」
[np]
[FACEHIDE]

[r]与正处于爆发状态的绫濑形成鲜明对比，圣水小姐正没心没肺地笑着。
[np]

[chisato storage="A_seifuku_M AB_11_M"]
[playcv storage="chisato_all_00190_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「之前因为住的都是女生，还算勉强能忍……」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_all_00190_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「既然现在神原君也要一起住，就请优先处理这个问题否则会很困扰的！！」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_7_M"]
[playcv storage="chisato_all_00190_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_7_FACE_seifuku"]
【千圣】[r]「就因为这样，现在……现在，发生了不该发生的事——」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_10_M"]
[playcv storage="satomi_all_00190_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「啊、难道被龙一君看到——」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_11_M"]
[playcv storage="chisato_all_00190_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
[char_jump name=chisato]
【千圣】[r]「圣　水　小　姐　！　！　！　！　！」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00190_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「知道啦知道啦。那我明天给锁匠打电话吧」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_6_M"]
[playcv storage="chisato_all_00190_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_seifuku"]
【千圣】[r]「现在就请打啊！！」
[np]
[FACEHIDE]

[r]原来锁坏了啊……所以门才这么轻易就开了……
[np]

[r]不过……我确实看到了绫濑那……绝对不愿示人的生活状态……这是不争的事实。
[np]

[character name="ryuichi"]
【龙一】[r]「啊、绫濑、对不起……！」
[np]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_all_00190_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
[char_jump name=chisato]
【千圣】[r]「……」
[np]
[FACEHIDE]

[r]他深深低下头，为自己的过失道歉。
[np]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_all_00190_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「反、反正……又不怪你？都、都怪神原君你……又不是你的错……」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_6_M"]
[playcv storage="chisato_all_00190_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_seifuku"]
【千圣】[r]「锁、锁坏了也是没办法的事……那个……」
[np]
[FACEHIDE]

[r]虽然绫濑嘴上这么说……但确实发生了尴尬的事。
[np]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_all_00190_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「不、不用在意……真的、赶紧给我忘掉！不对是必须忘掉！！听到没！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、好的……」
[np]

[char_erase name="chisato satomi"]

[r]这下糟了……本以为好不容易才逐渐适应这里的生活了……
[np]

[r]经过这件事，可能又会让对方对我产生坏印象吧……
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

;;//JUMP:all_00200
[jump storage="scenario/all/all_00200.ks"]
