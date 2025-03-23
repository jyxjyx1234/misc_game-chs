[SCENESTART file=mion_00280.ks]
;//mion_00280
;//BG:bg06_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:夜
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

;//澪音視点
[mion storage="B_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00280_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「真是的，为什么还不出来啊……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]“吵架”“和好”“道歉方式”“对不起”……
[np]

[r]我一直认为，只要在搜索引擎中输入想查的内容，就理所当然能找到任何答案。
[np]

[r]然而即便用尽此刻脑海中浮现的所有词汇去搜索……依然找不到能让我心情舒畅的正确答案。
[np]

[r]关于「如何与恋人朋友和好」这种问题，虽然有很多人热心留言解答……
[np]

[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00280_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「不对……不是这样的……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]我想知道的，是更加——
[np]

;//竜一視点
;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[character name="ryuichi"]

【龙一】[r]「……唉……」
[np]

[r]即使冲了个澡，内心深处萦绕的烦闷也丝毫未被洗去……
[np]

[r]就连敲门这个动作，都让我感到了些许踌躇。
[np]

[r]虽然两人独处会有些尴尬……但也不能再拿这个当借口了。
[np]

;//\SEノック音
[playse buf=5 storage="sound/00690.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「学姐？」
[np]

[r]等待回应时屏息凝神，听见房内传来哐当一声响动。
[np]

;//ドア越し
[playcv storage="mion_mion_00280_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「进、进来吧……」
[np]
[FACEHIDE]

[r]紧接着传来学姐有些慌乱的声线。
[np]

;//背景を澪音の部屋bg06_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]我刻意忽略这份违和感，缓缓推开了门。
[np]

[character name="ryuichi"]
【龙一】[r]「我、我去洗澡了」
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00280_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「这、这样啊……」
[np]
[FACEHIDE]

[r]虽然心知这报告无关紧要，我还是在获准落座的空间里坐了下来。
[np]

[r]至于学姐，依然正襟危坐面朝电脑……
[np]

[character name="ryuichi"]
【龙一】[r]「现在是在玩游戏吗？」
[np]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00280_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「唔……！？」
[np]
[FACEHIDE]

[r]当我随口这么问时，学姐的脊背突然绷得笔直。
[np]

[mion storage="A_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00280_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「要、要你管……反正和龙一没关系……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话是这么说没错……」
[np]

[r]我将那句「至少告诉我你在做什么也好吧……」咽了回去。
[np]

[mion storage="B_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00280_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「与、与其说那个，龙一……！」
[np]
[FACEHIDE]

[r]听到她呼唤我的名字，我转头望去——眼前的前辈正以前所未有的紧张神情注视着我。
[np]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了……？」
[np]

[mion storage="D_sifuku_M CD1_8_M"]
[playcv storage="mion_mion_00280_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_sifuku"]
【澪音】[r]「我查资料查得肩膀都僵了……像、像平时那样给我按摩吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……倒也无妨」
[np]

[r]又是平时那套吗……？我暗自思忖，但今天的氛围似乎有所不同。
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00280_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「……怎、怎么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，没什么……」
[np]

[r]她既没有像往常一样露出神秘微笑……反而透着一股下定决心的感觉，或者说……
[np]

[r]罢了，想太多也无济于事。
[np]

[character name="ryuichi"]
【龙一】[r]「那我要开始咯」
[np]

[r]我如此想着，站到了澪音前辈身后……
[np]

[char_erase name="mion"]

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

[jump storage="scenario/mion/mion_00290.ks"]