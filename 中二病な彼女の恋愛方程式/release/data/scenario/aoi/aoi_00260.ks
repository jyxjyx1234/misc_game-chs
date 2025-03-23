[SCENESTART file=aoi_00260.ks]
;//aoi_00260
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/13(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]迎来午休的我凝视着窗外，像是看透世事般深深叹了口气。
[np]

[r]这周是暑假前的最后一周。只要周五的结业式结束，我们学生就能迎来期盼已久的暑假。
[np]

[r]但是请等一下。考试结束意味着理所当然要发还试卷……
[np]

[character name="ryuichi"]
【龙一】[r]「下次要更用功些……」
[np]

[r]开学首日拿到的数学分数，至少蕴含着足够让我产生这种想法的强烈说服力。
[np]

[character name="ryuichi"]
【龙一】[r]「好，去吃饭吧爽史！」
[np]

[sousi storage="D_seifuku_M CD_4_M"]
[playcv storage="sousi_aoi_00260_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4_FACE_seifuku"]
【爽史】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……爽史？」
[np]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_aoi_00260_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「龙一……我现在就想变成山羊。或者变成幼女的内裤」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这什么二选一」
[np]

[sousi storage="D_seifuku_M CD_8_M"]
[playcv storage="sousi_aoi_00260_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_8_FACE_seifuku"]
【爽史】[r]「这样一来就能把今天发回来的……还有明天以后可能陆续发还的悲惨考卷全部吃光……」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_10_M"]
[playcv storage="sousi_aoi_00260_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「又或者可以常驻守护幼女的重要部位，独自占有那份温暖……」
[np]
[FACEHIDE]

[r]……区区考试成绩就能让人堕落至此吗……
[np]

[sousi storage="B_seifuku_M B_11_M"]
[playcv storage="sousi_aoi_00260_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_11_FACE_seifuku"]
【爽史】[r]「等等……就算不变成山羊也能吃纸啊……好，试试看吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等等等等等！我说去吃饭不是这个意思啊！」
[np]

[sousi storage="C_seifuku_M CD_4_M"]
[playcv storage="sousi_aoi_00260_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4_FACE_seifuku"]
【爽史】[r]「怎么，不是吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「当然不是！是大家和和气气一起吃便当的意思啊！」
[np]

[akane storage="B_seifuku_M AB_1_M"]
[playcv storage="akane_aoi_00260_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「喂～你们两个在干什么呢～？再不快点好位置都要被占光啦～！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「看，茜也在催了，快走吧！」
[np]

[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_aoi_00260_007.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「啊……」
[np]
[FACEHIDE]

[char_erase name="akane sousi"]

;//背景を屋上bg12_01に
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
[wait time="700"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_aoi_00260_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「大家都准备好了吗？那我开动啦～！」
[np]
[FACEHIDE]

[char_erase name="akane"]

[r]大家带着各自的便当齐聚天台享受午餐时光。
[np]

[character name="ryuichi"]
【龙一】[r]「看她们的样子，绫濑和茜的成绩应该还不错吧」
[np]

[akane storage="C_seifuku_M CD_1_M"]
[playcv storage="akane_aoi_00260_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「算是吧～这下你们总该明白，我也是能好好学习的那种类型了吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「虽然很不甘心……但看来只能承认了……」
[np]

[char_erase name="akane"]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00260_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「我数学考得不太好……不过其他科目还算过得去」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00260_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「千圣口中的『不太好』，对我来说已经是足够合格的分数了……」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00260_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「哪有的事！葵你考了多少分？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00260_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「……４８分」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00260_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「哎……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好，我比你高三分」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00260_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「什……！？」
[np]
[FACEHIDE]

[char_erase name="chisato akane aoi"]

[sousi storage="B_seifuku_M B_1_M"]
[playcv storage="sousi_aoi_00260_008.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「顺带一提，我考了１１分。相当于小学五年级水平吧」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_aoi_00260_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「别用年龄换算啊。而我可是７２分！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「７２……！？真的假的……」
[np]

[char_erase name="akane sousi"]

[chisato storage="C_seifuku_M CD_1_M" trans=false]
[aoi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]
[playcv storage="aoi_aoi_00260_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「那、千圣你考了多少分……？」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_6_M"]
[playcv storage="chisato_aoi_00260_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「我、我是……」
[np]
[FACEHIDE]

[r]绫濑拿着筷子目光游移不定。然后……
[np]

;//小声
[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00260_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「……７８分」
[np]
[FACEHIDE]
[character name="ryuichi"]
【龙一】[r]「这不挺高的吗！！已经够高了好吗！！」
[np]

[char_erase name="chisato aoi"]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_aoi_00260_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「简单说就是我和小千、小葵还有龙一君成绩相近，爽史孤零零掉队了……」
[np]
[FACEHIDE]

[sousi storage="D_seifuku_M CD_9_M"]
[playcv storage="sousi_aoi_00260_009.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_9_FACE_seifuku"]
【爽史】[r]「没关系，我有幼女陪着！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「只存在于脑海里吧……干得漂亮葵，咱们现在算战友了」
[np]

[char_erase name="sousi akane"]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00260_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「嗯……是、是啊」
[np]
[FACEHIDE]

[r]葵没有看我的眼睛，低头盯着便当盒。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么？输给我不甘心吗？」
[np]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00260_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「不是这个意思……分数什么的，我本来也不太在意」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就好……」
[np]

[r]面对这含糊其辞的回答，我也接不上话茬了。
[np]

[char_erase name="aoi"]

[akane storage="C_seifuku_M CD_1_M" trans=false]
[sousi storage="C_seifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="akane_aoi_00260_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「嗯——……」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_11_M"]
[playcv storage="sousi_aoi_00260_010.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_11_FACE_seifuku"]
【爽史】[r]「怎么了？」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_aoi_00260_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「没，总觉得……今天这两位是不是有点生疏？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[sousi storage="C_seifuku_M C_1_M"]
[r]我花了点时间才反应过来茜说的『两位』是指我和葵。
[np]

[character name="ryuichi"]
【龙一】[r]「生疏……有吗？」
[np]

[akane storage="B_seifuku_M AB_1_M"]
[playcv storage="akane_aoi_00260_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「嗯。尤其是小葵那边，该怎么说呢……没什么精神吧？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00260_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「哪、哪有这种事……」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_aoi_00260_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「看，就是这个反应！总觉得和平时不一样嘛……发生什么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「要说发生什么……也就是变成同居关系而已——」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00260_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「啊！？」
[np]
[FACEHIDE]

[r]——啊。
[np]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_aoi_00260_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
[char_jump name=akane]
【茜】[r]「哎哎哎哎哎！？同、同一个房间！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是，那个，刚才的……！」
[np]

[sousi storage="A_seifuku_M A_11_M"]
[playcv storage="sousi_aoi_00260_011.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_11_FACE_seifuku"]
【爽史】[r]「同住一个宿舍……不对，你们是两个人住一个房间吗？」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00260_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「那、那个，这个……！」
[np]
[FACEHIDE]

[akane storage="B_seifuku_M AB_7_M"]
[playcv storage="akane_aoi_00260_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「真、真的吗！？小葵这是真的吗！？」
[np]
[FACEHIDE]

[char_erase name="aoi akane sousi"]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_aoi_00260_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「哈……嘛，就是这么个情况」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_aoi_00260_012.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「怎、怎么会……这已经是读秒阶段了吧……不对，怎么会变成这样的！？」
[np]
[FACEHIDE]

[char_erase name="akane"]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00260_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「这个嘛……归根结底是因为神原君原本要入住的房间漏雨不能用了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个房间到底什么时候能修好……」
[np]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00260_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「哎？没人跟你说吗……这周内应该就能修好了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00260_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「维修公司的人联系说这周内就能……圣水小姐没告诉你吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没，我完全没听说……」
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00260_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「不会吧？我还以为你早就知道了……」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00260_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「啊，不过……可能是在神原君打工的时候说的……」
[np]
[FACEHIDE]

[r]这样的话，我没听说过也情有可原……不过，真的能修好吗？我的房间？终于……？
[np]

[r]等等……？等一下……
[np]

[character name="ryuichi"]
【龙一】[r]「那个……所以我的房间很快就能修好了对吧？」
[np]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00260_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「嗯，应该是的」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]……既然如此……
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00260_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]为什么葵会让我住进她的房间……？
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

;//JUMP:aoi_00270
[jump storage="scenario/aoi/aoi_00270.ks"]