[SCENESTART file=all_00050.ks]
;//all_00050
;//BG:bg02_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:夕
;//日付:6/14(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

;//千聖の名前表記は「？？？」に
[chisato storage="B_sifuku_M AB_1_M" trans=false]
[momo storage="A_sifuku_S AB_5_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【？？？】[r]「……总之，我明白你不是外人了」
[np]
[FACEHIDE]

;//以下、千聖の名前表記を通常に
[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00050_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「我是绫濑千圣（绫濑　千圣）。和你一样是二年级生」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请、请多关照……」
[np]

;//以下、ももの名前表記を通常に
[momo storage="C_sifuku_S C_5_S"]
[playcv storage="momo_all_00050_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「我、我是……花之咲，桃……一年级生……」
[np]
[FACEHIDE]

[r]皱着眉头的是绫濑千圣，躲在她身后吓得瑟瑟发抖的是花之咲桃酱。好。
[np]

[r]在如此剑拔弩张的气氛下进行自我介绍，绝对是我人生中的第一次。好想哭。
[np]

[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_all_00050_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「那么……神原君从入住首日就偷窥，还有……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这是误会！！我只是想去厕所而已……！」
[np]

[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00050_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「虽然厕所和浴室通过盥洗室相连这点……大概你确实不知道吧……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_4_M"]
[playcv storage="chisato_all_00050_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「当时圣水同学在客厅对吧？」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00050_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「在～在呀！」
[np]
[FACEHIDE]

[r]圣水高举着罐装啤酒，满脸通红地敬了个礼。
[np]

[char_erase name="satomi"]

[chisato storage="D_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00050_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「那么……关于桃在洗澡的事，你真的有好好告诉她吗？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[satomi storage="B_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00050_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「嗯，我说了呀？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我根本没听见！？」
[np]
[char_erase name="satomi"]

[chisato storage="B_sifuku_M AB_4_M"]
[playcv storage="chisato_all_00050_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「……呵……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是，我说真的！！别用那种看脏东西的眼神看我啊！」
[np]

[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00050_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「也就是说……你连门都不敲就打开盥洗室的门，是故意为之的咯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我真的没听见啊！这个醉鬼说的话和我，你更相信谁！？」
[np]

[chisato storage="D_sifuku_M CD_10_M"]
[playcv storage="chisato_all_00050_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「确实，圣水学姐是那种一年３６５天都醉醺醺的人……但比起今天刚见面的你……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]
[char_erase name="chisato"]

[r]仔细回想起来，那时候她好像确实说了些什么……关于洗澡啊、敲门啊之类的……
[np]

[r]我以为是醉鬼独自对着电视吐槽，就完全没当回事……！
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[r]有人从后面拽我的衣角……喂，葵？
[np]

[aoi storage="A_tokushu_M A_1_M" from="right" accel="0"]
[playcv storage="aoi_all_00050_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「暗夜使徒啊，看来你很困扰呢……无论如何都想要的话，本小姐可以勉为其难」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你只会越帮越乱还是安静待着吧」
[np]

[aoi storage="C_tokushu_M CD_10_M"]
[playcv storage="aoi_all_00050_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_tokushu"]
【葵】[r]「（气鼓鼓……）」
[np]
[FACEHIDE]

[r]看着鼓起包子脸闹别扭的葵，我偷偷感到一丝宽慰。
[np]
[char_erase name="aoi"]

[chisato storage="C_sifuku_M CD_4_M" trans=false]
[momo storage="A_sifuku_S AB_5_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「所以我才反对男生入住……这可是女子宿舍，迟早会闹出各种问题……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_S C_5_S"]
[playcv storage="momo_all_00050_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「真、真的……真的要今天开始就……住在这里吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘛、嘛……就是这么安排的」
[np]

[momo storage="A_sifuku_S AB_6_S"]
[playcv storage="momo_all_00050_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「这、这样啊……」
[np]
[FACEHIDE]

[r]哇啊，明显露出嫌弃的表情……
[np]

[character name="ryuichi"]
【龙一】[r]「呃，桃酱……？」
[np]

[momo storage="B_sifuku_S AB_7_S"]
[playcv storage="momo_all_00050_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「是、是……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「刚才真的很抱歉……！但那真的是意外——」
[np]

[chisato storage="D_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00050_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「你其实是假借意外偷窥吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以说，那个是——」
[np]

[fadeoutbgm time="1000"]

;//以下、澪音の名前表記は「？？？」でお願いします
;//[mion storage="A_sifuku_M A_1_M"]
[playcv storage="mion_all_00050_001.ogg" name="mion"]
[character name="mion"]
;//[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【？？？】[r]「风声……好嘈杂啊……」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]哎……？
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00050_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「哈……！这、这股邪气……！」
[np]
[FACEHIDE]

[r]怎么了？葵的表情突然变得凌厉——
[np]

[aoi storage="D_tokushu_M CD_4_M"]
[playcv storage="aoi_all_00050_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「居然还苟活着吗……妄图扰乱世间安宁的魔女……！」
[np]
[FACEHIDE]

[r]诶……魔女？
[np]
[char_erase name="aoi"]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_all_00050_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「那、那个，葵小姐？现在不是该说这些的时候……」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00050_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「准备好了吗——堕天圣职者——快展开固有结界，掩护我！」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_all_00050_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「啊、那个那个，请等一下！？」
[np]
[FACEHIDE]

[r]难道说，还有其他宿舍生也——
[np]

[char_erase name="momo aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00050_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「此乃众生蔓延、禁忌满溢的混沌之世……」
[np]
[FACEHIDE]

[r]呃！？
[np]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00050_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「难道统御森罗万象的我，还会在意死亡这种概念吗……？呵、呵呵呵……」
[np]
[FACEHIDE]

[r]都这时候了还来这种夸张的家伙啊喂……！
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00050_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「为何……！你明明那时就该被我彻底消灭了……！」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_4_M"]
[playcv storage="mion_all_00050_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「可笑……纵使这副躯壳湮灭，吾之魂魄亦将永存……」
[np]
[FACEHIDE]

;//「フラグメンツ・ローズ」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00050_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「破灭蔷薇的咏唱准备完成了吗！？那家伙随时会趁虚而入！」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_all_00050_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「那、那个，葵小姐！现、现在有点……！」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00050_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「愚蠢的人类们……怎么了？吓得腿软了吗？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_10_M"]
[playcv storage="momo_all_00050_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「不、不是这个问题啦……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00050_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「也罢……就让刹那生命的怨念，深深刻印在你们的躯体上——」
[np]
[FACEHIDE]

;//背景表示
[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_all_00050_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「……嗯？」
[np]
[FACEHIDE]

[char_erase name="mion momo aoi"]

[r]该从哪个槽点开始吐起呢。
[np]

[r]正这么想着时，和那个被称为魔女的女人对上了视线。
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_all_00050_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「那边的男生……是谁呢？」
[np]
[FACEHIDE]

[r]她用带着刻意表演感的语调，以优雅而知性的声音如此问道。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[character name="ryuichi"]
【龙一】[r]「啊……那个、我是——」
[np]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00050_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「我来介绍这位狂野的伙伴！今天起要成为伏木庄一员的，神原龙一哒——！耶——！！」
[np]
[FACEHIDE]

[r]大家投向圣水那毫无底线的摇滚式介绍的眼神让我如坐针毡。
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00050_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「伏木庄的成员……哼嗯」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请、请多指教……」
[np]

[r]好漂亮的黑发……个子高挑，胸部也丰满……一眼就能看出是个美人。
[np]

[r]不过她这种像是在评估商品般的锐利眼神……让人不由得有些紧张呢。
[np]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00050_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「顺带一提，龙一君住的房间因为昨天下雨被水淹了，这段时间就让他住在客厅啦～！」
[np]
[FACEHIDE]

[char_erase name="satomi mion"]

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[momo storage="A_sifuku_S AB_4_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「啊……啊啊啊啊啊！？」
[np]
[FACEHIDE]

[r]偏偏这时候说这个！？
[np]

[momo storage="A_sifuku_S AB_7_S"]
[playcv storage="momo_all_00050_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「客、客厅是说……这、这里吗！？」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[satomi storage="B_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00050_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「对啊～？」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[chisato storage="B_sifuku_M AB_11_M" trans=false]
[momo storage="A_sifuku_S AB_7_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「「对啊～？」才不是这样呢！！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_S AB_8_S"]
[playcv storage="momo_all_00050_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「不、不要！绝对不要！！」
[np]
[FACEHIDE]

[r]不出所料，绫濑和桃酱两人竭尽全力地反对起来。
[np]

[momo storage="B_sifuku_S AB_8_S"]
[playcv storage="momo_all_00050_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「光是住在同一屋檐下就已经够可怕了……男、男人都是大灰狼啊！？」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[satomi storage="B_sifuku_M AB_5_M"]
[playcv storage="satomi_all_00050_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「可是原本要用的房间报废了，实在没办法嘛～」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[chisato storage="D_sifuku_M CD_4_M" trans=false]
[momo storage="B_sifuku_S AB_8_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「想办法解决这种事才是管理员的工作吧！？」
[np]
[FACEHIDE]

[r]这点嘛，我也深有同感。
[np]

[char_erase name="chisato momo"]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_all_00050_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「所以，在解决之前就让他暂时住在客厅吧～？对吧？」
[np]
[FACEHIDE]

[r]对吧？才对个鬼啊！别甩给我！
[np]

[char_erase name="satomi"]

[chisato storage="B_sifuku_M AB_11_M" trans=false]
[momo storage="B_sifuku_S AB_8_S" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「我、我反对！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_S C_4_S"]
[playcv storage="momo_all_00050_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「我、我也反对！绝—————对反对！」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00050_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「原来如此……我不在的这段时间里，似乎发生了不少有趣的事呢」
[np]
[FACEHIDE]

[r]纤细柔软的手指轻抵下巴，发出吃吃笑声的女性。
[np]

[r]这人也是宿舍生……对吧？比起圣水小姐之类的，看起来可靠多了……
[np]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00050_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那么……试试这个方案如何？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_all_00050_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「什么方案？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00050_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「你们说客厅有男生很讨厌，但也不可能现在就赶他出去吧？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_all_00050_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「那、那倒是……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00050_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「所以……实践出真知，从今天起一周时间，让龙一君住在客厅试试共同生活吧」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00050_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那么一周后，我们通过多数表决来决定是继续让他住在客厅，还是另寻他处安置」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「另、另寻他处？」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00050_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「苍心学园的学生宿舍应该不止这一栋吧？管理员小姐」
[np]
[FACEHIDE]

[char_erase name="mion momo chisato"]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00050_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「大概吧！」
[np]
[FACEHIDE]

[r]别一边摆出帅气Ｖ字手势，一边用这种不确定的语气回答得这么理直气壮啊。
[np]

[char_erase name="satomi"]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00050_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「既然如此，最坏情况下也可以安排他转住其他宿舍……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00050_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「说不定这一周时间里大家会改变想法呢。这个方案如何？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦哦……」
[np]

[r]虽然刚开始觉得怎么又多了个麻烦的家伙……
[np]

[r]但这个人简直太可靠了吧！
[np]

[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_all_00050_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「……你根本是乐在其中吧？」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00050_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「当然。最近正觉得无聊呢，这不是刚好可以打发时间吗？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_all_00050_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「你说打发时间……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00050_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「还是说，千圣你有其他更好的主意？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00050_020.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「……明白了，就按你说的办吧」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_all_00050_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「我、我也……没有异议……」
[np]
[FACEHIDE]

[char_erase name="mion chisato momo"]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_all_00050_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「……虽然同意魔女的意见让我很不爽……但这样不错」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_all_00050_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「听起来挺有意思的，就这么定啦！记得储物间里有个大型犬用的笼子……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？笼、笼子……？」
[np]

[satomi storage="A_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00050_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「有那个的话，好歹能隔出个房间区域吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我、我要进去吗！？」
[np]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_all_00050_011.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「虽然乍看像是被关进笼子的动物……噗、呵呵……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是乍看啊根本就是吧！？绝对就是那个样子吧！？」
[np]

[char_erase name="satomi"]

[chisato storage="B_sifuku_M AB_1_M" trans=false]
[momo storage="A_sifuku_M AB_3_M" trans=false]
[char_trans]
[playcv storage="momo_all_00050_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「但、但是，有那个的话可能稍微安心点……」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00050_021.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「是啊……这样简单明了也挺好的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶——」
[np]

[char_erase name="chisato momo"]

[r]不仅丢了房间要住在客厅，还要被关在笼子里生活吗……！
[np]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]正这么想着时，眼前突然伸来一只白皙的手。
[np]

;//以下、澪音の名前表記を通常に
[mion storage="A_sifuku_L AB1_2_L"]
[playcv storage="mion_all_00050_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「请多关照，神原龙一君。我是黑峰澪音。三年级学生」
[np]
[FACEHIDE]

[mion storage="D_sifuku_L CD1_10_L"]
[playcv storage="mion_all_00050_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「既是这栋宿舍最年长的住客，某种意义上也是最高负责人呢……呵呵……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请、请多指教……」
[np]

[r]与挂着神秘笑容的澪音前辈进行了郑重的握手。
[np]

[r]全身细胞仿佛都在呐喊：唯独这个人，绝对不能与她为敌。
[np]

[char_erase name="mion"]

[chisato storage="B_sifuku_M AB_3_M" trans=false]
[momo storage="A_sifuku_M AB_3_M" trans=false]
[char_trans]
[playcv storage="chisato_all_00050_022.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「差不多……该准备晚饭了。桃，来帮忙吗？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_all_00050_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「啊，好的」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[r]从今天开始要尝试共同生活一周吗……也就是说可要在这期间的为人处世方式上决定自己的命运了啊。
[np]

[r]这样的话，必须在各个方面多加小心……现在已经不是说什么幸运色狼的时候了！
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

;;//JUMP:all_00060
[jump storage="scenario/all/all_00060.ks"]
