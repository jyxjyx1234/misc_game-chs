[SCENESTART file=mion_00130.ks]
;//mion_00130
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[ws]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「结束了啊啊啊啊啊啊啊……！！！」
[np]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]当答题纸被收走，最后的铃声响起的那一瞬间……我不由得在双重意义上如此喊叫了出来。
[np]

[r]结束了……不仅意味着考试这种苦行结束了，也意味着我的成绩完蛋了。
[np]

[r]虽然应该避免了挂科补考这种即死连击……但真的能这么想吗……
[np]

[character name="ryuichi"]
【龙一】[r]「喂……爽史？」
[np]

[sousi storage="A_seifuku_M A_10_M"]
[playcv storage="sousi_mion_00130_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「…………」
[np]
[FACEHIDE]

[r]我伸手戳了戳好友的侧腹——他像尸体般纹丝不动，整个人已经灰白化了。
[np]

[sousi storage="C_seifuku_M CD_3_M"]
[playcv storage="sousi_mion_00130_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_3_FACE_seifuku"]
【爽史】[r]「……好痒……好痒啊，诗帆……啊哈哈哈哈……」
[np]
[FACEHIDE]

[r]这是彻底报废了吧。安息吧。
[np]

[char_erase name="sousi"]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_mion_00130_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「龙一……」
[np]
[FACEHIDE]

[r]正要起身离开座位时，被葵叫住了。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_mion_00130_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「过来一下……我有话要说！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？啊、等等……」
[np]

[char_erase name="aoi"]

;//背景を廊下bg10_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]被葵拽着手来到教室外。
[np]

[r]要说的话……是教室里不方便讲的内容吗？
[np]

[r]正当我满腹疑惑时，葵突然直勾勾地盯着我……
[np]

[aoi storage="C_seifuku_L CD_3_L"]
[playcv storage="aoi_mion_00130_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「龙一……不、翼神龙」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「干、干嘛啊……」
[np]

[aoi storage="A_seifuku_L A_2_L"]
[playcv storage="aoi_mion_00130_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「这里没有监视者的身影……放心把真相告诉我吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真相……呃、你说什么事？」
[np]

[aoi storage="B_seifuku_L B_4_L"]
[playcv storage="aoi_mion_00130_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「别想糊弄过去……！你肯定被那个魔女蛊惑了吧……！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈……？」
[np]

[aoi storage="D_seifuku_L CD_5_L"]
[playcv storage="aoi_mion_00130_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「突然被当作仆从使唤，最后还被囚禁在魔女的住处……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_9_L"]
[playcv storage="aoi_mion_00130_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「这、这两三天里，你究竟遭受了多少过分的对待！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「倒也没觉得她对我做了什么特别过分的事……」
[np]

[r]至少，我过得比想象中要正常。虽然偶尔会动用年长者的权力……
[np]

[aoi storage="B_seifuku_L B_7_L"]
[playcv storage="aoi_mion_00130_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「呜……难道是被下了封口的诅咒？或者已经开始被洗脑了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，应该两种情况都不是吧……」
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[playcv storage="aoi_mion_00130_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「清醒一点，翼神龙！那个魔女恐怕对你——」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_mion_00130_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「这个魔女对龙一……有什么企图吗？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_L A_7_L"]
[playcv storage="aoi_mion_00130_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
[char_jump name="aoi"]
【葵】[r]「！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「澪、澪音学姐……？」
[np]

[aoi storage="A_seifuku_M A_7_M"]
[r]突然出现的澪音学姐让我和葵都吓了一跳。
[np]

[mion storage="C_seifuku_M CD1_5_M"]
[playcv storage="mion_mion_00130_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_seifuku"]
【澪音】[r]「真是的，还以为你们在走廊说什么呢……无聊透顶」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_mion_00130_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「才不无聊！我是为了把龙一从你的魔爪中拯救出来——」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_2_M"]
[playcv storage="mion_mion_00130_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_seifuku"]
【澪音】[r]「那个龙一，已经完全成为我的俘虏了。对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……！？」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_mion_00130_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「怎……怎、怎么会这样龙一！？你、难道……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不不不！等、等一下！说是俘虏，但我并没有——」
[np]

[mion storage="A_seifuku_M AB1_3_M"]
[playcv storage="mion_mion_00130_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「今天也是，接下来还要去约会呢」
[np]
[FACEHIDE]

[r]啊、等等——！？
[np]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_mion_00130_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
[quake time=500]
【葵】[r]「什！？约、约……约、约会啊啊啊啊啊！！？？」
[np]
[FACEHIDE]

[r]这话能随便说吗！？而且偏偏还是当着葵的面……
[np]

[char_erase name="aoi mion"]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_mion_00130_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「葵、怎么了……咦，澪音前辈？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[akane storage="B_seifuku_M AB_2_M" trans=false]
[sousi storage="B_seifuku_M B_6_M" trans=false]
[char_trans]

[playcv storage="akane_mion_00130_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「哎呀呀，各位都在呢？」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_6_M"]
[playcv storage="sousi_mion_00130_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_6_FACE_seifuku"]
【爽史】[r]「听到吵闹声……发生什么事了吗？」
[np]
[FACEHIDE]

[char_erase name="sousi akane"]

[r]喂喂喂……！不只是绫濑，连茜和爽史都来了啊！
[np]

[chisato storage="D_seifuku_M CD_1_M" trans=false]
[mion storage="B_seifuku_M AB1_2_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00130_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「前辈，为什么你会在这里……？」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00130_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「考试结束了，我来接龙一君」
[np]
[FACEHIDE]

[r]或许是因为周围聚集了学生，澪音前辈挂着乖巧模式的微笑。
[np]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_mion_00130_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「接他是指，要一起回去吗？」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00130_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「不，不是哦」
[np]
[FACEHIDE]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[char_erase name="chisato mion"]

[r]这么说着，澪音前辈突然缠上了我的手臂——
[np]

[mion storage="C_seifuku_L CD1_2_L"]
[playcv storage="mion_mion_00130_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_seifuku"]
【澪音】[r]「现在要带龙一君去约会啦♪」
[np]
[FACEHIDE]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[r]！！？！？！？！？！？！？！！？
[np]

[char_erase name="mion"]

[chisato storage="A_seifuku_M AB_8_M"]

[playcv storage="chisato_mion_00130_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
[quake time=500]
【千圣】[r]「哎……！？约、约……约约约约约约会会会会会会会会会！？！？」
[np]
[FACEHIDE]

[char_erase name="chisato"]


[akane storage="C_seifuku_M CD_7_M" trans=false]
[sousi storage="B_seifuku_M B_11_M" trans=false]
[char_trans]

[playcv storage="akane_mion_00130_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「那、那个难道是……哎？难道说……」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_11_M"]
[playcv storage="sousi_mion_00130_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_11_FACE_seifuku"]
【爽史】[r]「你们两位，是在交往的意思吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是不是不是！不是这样的！真的不是这样的！！」
[np]

[char_erase name="sousi akane"]

[mion storage="D_seifuku_L CD1_8_L"]
[playcv storage="mion_mion_00130_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_seifuku"]
【澪音】[r]「真是的，龙一君……其实不用这么害羞的呀……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「妳这样脸红红的不就更容易让人误会了吗啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_mion_00130_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「喂、喂龙一……这到底怎么回事！？快给我说明啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、所以说这是——」
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00130_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「时、时间不早了。我们走吧龙一君！」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[character name="ryuichi"]
【龙一】[r]「等等啊啊啊！？」
[np]

[playcv storage="chisato_mion_00130_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「啊，逃走了！？」
[np]
[FACEHIDE]

[playcv storage="akane_mion_00130_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「哎？到底怎么回事啊！？你们在交往吗！？还是不是啊！？」
[np]
[FACEHIDE]

[playcv storage="aoi_mion_00130_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「给、给我站住啊啊啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]……之后，化身为「漆黑追踪者」的葵，与我在教学楼里展开了长达十几分钟的追逐战……
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

[jump storage="scenario/mion/mion_00140.ks"]