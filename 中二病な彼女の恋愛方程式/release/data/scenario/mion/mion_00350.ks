[SCENESTART file=mion_00350.ks]
;//mion_00350
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_mion_00350_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「啊，早、早上好！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，早上好！」
[np]

[char_erase name="akane"]

[r]把书包放在自己的座位上，和往常的那几个家伙打了招呼。
[np]

[character name="ryuichi"]
【龙一】[r]「爽史你也早上好。从今天开始终于要发考卷了啊」
[np]

[sousi storage="C_seifuku_L CD_5B_L"]
[playcv storage="sousi_mion_00350_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_5B_FACE_seifuku"]
【爽史】[r]「咕啊……！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_7_M"]
[playcv storage="chisato_mion_00350_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_7_FACE_seifuku"]
[char_quake time=500]
【千圣】[r]「呀啊啊啊！？」
[np]
[FACEHIDE]


[r]吐血！？
[np]

[char_erase name="chisato"]

[character name="ryuichi"]
【龙一】[r]「喂、喂爽史！？　你没事吧！？」
[np]

[sousi storage="A_seifuku_L A_5_L"]
[playcv storage="sousi_mion_00350_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_5_FACE_seifuku"]
【爽史】[r]「对、对不起……一听到发考卷，身体就产生排斥反应……好像让你有点受惊了啊……」
[np]
[FACEHIDE]
[character name="ryuichi"]

【龙一】[r]「岂止是有点，简直吓死人了好吗……」
[np]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_mion_00350_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「难、难道爽史，你……身体被病魔侵蚀了吗……！」
[np]
[FACEHIDE]

[char_erase name="aoi sousi"]


[sousi storage="B_seifuku_M B_4_M"]
[playcv storage="sousi_mion_00350_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_4_FACE_seifuku"]
【爽史】[r]「……是啊，就算继续隐瞒下去，迟早也会暴露的……」
[np]
[FACEHIDE]

[r]爽史利落地推了推眼镜，神情真挚地望向虚无的远方……
[np]

[sousi storage="C_seifuku_L CD_4B_L"]
[playcv storage="sousi_mion_00350_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4B_FACE_seifuku"]
【爽史】[r]「其实我得了不定期喝二次元女生的尿就会死的病咕哦哦哦哦哦哦哦哦！？」
[np]
[FACEHIDE]
[playse buf=5 storage="sound/10050.ogg"]
[quake time="500"]

[akane storage="D_seifuku_M CD_9_M"]
[sousi storage="C_seifuku_L CD_5B_L"]
[playcv storage="akane_mion_00350_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「刚才的发言确实太过分了啊啊啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[char_jump name=akane]
[playse buf=5 storage="sound/10050.ogg"]

[r]一记迅雷不及掩耳的身体击打精准命中爽史的腹部。
[np]

[char_erase name="akane sousi"]

[akane storage="A_seifuku_L AB_10_L"]
[playcv storage="akane_mion_00350_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_10_FACE_seifuku"]
[char_quake name="akane"]
【茜】[r]「所以请你就这样去死吧！！去死吧！！赶紧给我死透啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[char_jump name=akane]
[playse buf=5 storage="sound/10050.ogg"]

[char_erase name="akane"]

[playse buf=5 storage="sound/10050.ogg"]


[sousi storage="C_seifuku_M CD_5C_M"]
[playcv storage="sousi_mion_00350_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_5C_FACE_seifuku"]
【爽史】[r]「咕呜！？哈啊、呃……咳咳！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/10050.ogg"]


[char_erase name="sousi"]

[r]茜对着瘫倒在地的爽史持续进行着执着的鞭尸踢击。
[np]

[aoi storage="D_seifuku_M CD_7_M" trans=false]
[akane storage="C_seifuku_M CD_2_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00350_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「还是老样子，配合得天衣无缝的双人表演……！」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_mion_00350_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「那当然！我们可不是白从小一起长大的！」
[np]
[FACEHIDE]

[char_erase name="aoi akane"]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_mion_00350_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「不，这已经超越表演的范畴了吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘛，这样不也挺好的吗……？一大早这么精神比什么都强」
[np]

[r]虽然还有个从早上就开始吐血瘫在地上的家伙。
[np]

[char_erase name="chisato"]


[akane storage="A_seifuku_M AB_3_M" trans=false]
[chisato storage="A_seifuku_M AB_6_M" trans=false]
[char_trans]

[playcv storage="akane_mion_00350_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_seifuku"]
【茜】[r]「虽然想说活力就是我最大的优点啦…不过发考卷的时候还是会有点消沉呢」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_6_M"]
[playcv storage="chisato_mion_00350_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「是啊…这次好多科目都没把握…」
[np]
[FACEHIDE]

[char_erase name="akane chisato"]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_mion_00350_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「……即便如此……你们俩的分数肯定还是比我高……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎呀别灰心葵！别管那两个家伙，和我来一场火热的不及格大战吧！」
[np]

[aoi storage="D_seifuku_M CD_10_M"]
[playcv storage="aoi_mion_00350_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「不要说不及格！我、我还没差到那种地步！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「其实我也想说自己没那么糟糕啦！」
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_mion_00350_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「我、我也是……！」
[np]
[FACEHIDE]

[r]连平均分的一半都不到…怎么说也不至于差到那种程度——
[np]

[char_erase name="aoi"]

[akane storage="B_seifuku_M AB_7_M" trans=false]
[chisato storage="A_seifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="akane_mion_00350_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「龙一君…今天好像心情不错？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶…？」
[np]

[r]茜像在鉴定商品似的紧盯着我的脸看个不停。
[np]

[akane storage="C_seifuku_M CD_1_M"]
[playcv storage="akane_mion_00350_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「通常发考卷的日子大家都会情绪低落到极点…但今天好像不太一样呢？」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_mion_00350_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「说起来，你上学路上看起来心情也不错呢。是有什么好事发生吗？」
[np]
[FACEHIDE]

[r]好事……确实是有，但感觉不是能随便说出来的事情啊。
[np]

[character name="ryuichi"]
【龙一】[r]「嘛，算是吧。各种事情……」
[np]

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[wait time="500"]

[akane storage="B_seifuku_M AB_4_M"]
[playcv storage="akane_mion_00350_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
[char_jump name="akane"]
【茜】[r]「这种说法让人很在意啊……不过这就打铃了？！」
[np]
[FACEHIDE]

[r]茜恰到好处的吐槽仿佛信号一般，大家纷纷四散回到自己座位上。
[np]

;//[sousi storage="D_seifuku_M CD_5B_M"]
[playcv storage="sousi_mion_00350_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_5B_FACE_seifuku"]
【爽史】[r]「咳咳！？」
[np]
[FACEHIDE]

;[akane storage="akane_CD_2_FACE_seifuku"]
[playcv storage="akane_mion_00350_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「啊、抱歉爽史，没注意到你！」
[np]
[FACEHIDE]

[char_erase name="akane chisato"]

[r]对像尸体一样瘫倒的爽史视若无睹，我也回到自己座位，将课本和笔记从书包里搬到桌上。
[np]

[r]和澪音学姐开始交往了……这件事，总有一天会被大家知道的吧……
[np]

[r]这种情况，该在什么时机说出来比较好呢。
[np]

[HIDESYSTEMMENU]
[fadeoutbgm time=1000]
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//JUMP:mion_00360
[jump storage="scenario/mion/mion_00360.ks"]
