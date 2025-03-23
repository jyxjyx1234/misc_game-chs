[SCENESTART file=mion_00150.ks]
;//mion_00150
;//BG:bg01_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM06.ogg" time=1000]

;//TIME:夕
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:澪音,seifuku
;//CH:千聖,sifuku

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_mion_00150_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「差不多该吃晚饭了……时间上也刚好呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊……」
[np]

[r]和澪音学姐的实验性约会结束后，两人一起回到了宿舍前。
[np]

[r]不过，与其说是约会，不如说是一直被戏弄的感觉……
[np]

[r]要是打开这扇门……一旦打开的话，恐怕就——
[np]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00150_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「来，进去吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[char_erase name="mion"]

;//背景を寮のリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[r]跟在澪音学姐身后，从玄关走向客厅时……
[np]

[playcv storage="aoi_mion_00150_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「啊！！」
[np]
[FACEHIDE]

[playcv storage="momo_mion_00150_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「回、回来了！！」
[np]
[FACEHIDE]

[fadeoutbgm time="1000"]

[character name="ryuichi"]
【龙一】[r]「我回——」
[np]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[aoi storage="C_tokushu_L CD_9_L"]
[playcv storage="aoi_mion_00150_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[quake time=500]
【葵】[r]「龙一啊啊啊啊啊啊啊啊啊！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哦哦哦哦！？」
[np]

[r]葵和桃酱带着可怕的表情向我逼近。
[np]

[aoi storage="C_tokushu_L CD_9_L"]
[playcv storage="aoi_mion_00150_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_quake name=aoi]
【葵】[r]「龙、龙一！这到底是怎么回事！？我需要一个解释！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等一下！冷静点！到底怎么回事啊！？」
[np]

[char_erase name="aoi"]

[momo storage="C_sifuku_L C_9_L"]
[playcv storage="momo_mion_00150_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
[char_quake name="momo"]
【桃】[r]「你、你和澪音学姐去约会了对吧！？是这么回事对吧！？」
[np]
[FACEHIDE]

[r]虽然早有心理准备，但果然是这件事……！
[np]

[char_erase name="momo"]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00150_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「我回来了，千圣」
[np]
[FACEHIDE]

[playcv storage="chisato_mion_00150_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「欢、欢迎回来……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]在厨房准备晚饭的绫濑也时不时朝这边偷瞄……她那副暗自关心的样子明显不过。
[np]

[aoi storage="D_tokushu_L CD_4_L"]
[playcv storage="aoi_mion_00150_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
[char_quake name=aoi]
【葵】[r]「我们不是同伴吗！？居然瞒着大家和敌人私下约会……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="D_sifuku_L D_3_L"]
[playcv storage="momo_mion_00150_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
[char_quake name="momo"]
【桃】[r]「那、那到底怎么样了啊……！？是什么样的感觉啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃、这个……那个……」
[np]

[char_erase name="momo"]

[r]倒也不是什么不能说的内容，但要说是约会感想的话总感觉有点难为情……
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00150_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「既然你们这么想听，就由我亲口讲述吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……」
[np]

[r]包括我在内的在场所有人都将视线投向了澪音学姐。
[np]

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_mion_00150_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「原本想着考试刚结束比较疲惫，两个人随便逛逛店铺就结束的……」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_8_M"]
[playcv storage="mion_mion_00150_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_seifuku"]
【澪音】[r]「可能是被我的魅力所折服，龙一突然进入发情期……差点就要被带进酒店了呢」
[np]
[FACEHIDE]

[char_erase name=mion]

[aoi storage="B_tokushu_M B_8_M" trans=false]
[chisato storage="D_seifuku_M CD_8_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00150_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「什！？」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_8_M"]
[playcv storage="chisato_mion_00150_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「哎！？」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[momo storage="C_sifuku_L C_10_L"]
[playcv storage="momo_mion_00150_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
[char_quake name="momo"]
【桃】[r]「酒、酒、酒、酒店呜呜呜呜呜呜呜呜呜呜呜呜呜呜！！！！！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂等等等等等等等等等等等等等等等等啊！！！！！！」
[np]

[char_erase name="momo"]

[aoi storage="A_tokushu_L A_9_L"]
[playcv storage="aoi_mion_00150_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「龙、龙一！你这混蛋……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是不是不是不是不是啊啊啊啊啊啊啊啊啊！！都是胡扯！！学姐最擅长的捏造对吧是捏造！！」
[np]

[char_erase name="aoi"]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_mion_00150_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「真、真的……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那还用说！你们看我这表情就知道了吧！」
[np]

[char_erase name="chisato"]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_mion_00150_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「哼哼哼……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[momo storage="C_sifuku_M C_7_M" trans=false]
[chisato storage="C_sifuku_M CD_11_M" trans=false]
[char_trans]

[playcv storage="momo_mion_00150_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「那副表情…明显是神原先辈看到混乱场面在偷乐吧」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_11_M"]
[playcv storage="chisato_mion_00150_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「确、确实…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对吧！？你们俩终于明白了吗！？」
[np]

[char_erase name="chisato momo"]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00150_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「好啦，我去洗个手」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂！至少把刚才的话撤回…喂！喂————！？」
[np]

[char_erase name=mion to=left time=800 fade=true]

[r]可恶…居然逃进洗手间了…这个魔女…！
[np]

[chisato storage="A_sifuku_M AB_4_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00150_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「就、就是说啊…放学后去酒店什么的，这也太…」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_mion_00150_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「怎、再怎么想都不可能吧！啊哈哈…」
[np]
[FACEHIDE]

[r]太好了……绫濑和桃酱也红着脸消除了对我的怀疑。
[np]

[char_erase name="momo chisato"]

[character name="ryuichi"]
【龙一】[r]「所以说，葵也……」
[np]

[aoi storage="A_tokushu_L A_9_L"]
[playcv storage="aoi_mion_00150_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「……看错你了，龙一……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_mion_00150_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「够了……够了！和你的盟约，就在此刻彻底撕毁！！！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等一下，葵！？」
[np]

[r]葵一边跑上通往房间的楼梯，一边狠狠瞪着我。
[np]

[aoi storage="B_tokushu_S B_9_S"]
[playcv storage="aoi_mion_00150_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「龙一……翼神龙已经完全倒向邪恶！从今天起你就是敌人了！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00260.ogg"]

[character name="ryuichi"]
【龙一】[r]「啊……！」
[np]

[char_erase name="aoi"]

[r]葵逃也似地冲进房间，砰地一声重重关上了门。
[np]

[character name="ryuichi"]
【龙一】[r]「……敌人，吗」
[np]

[chisato storage="B_sifuku_M AB_5_M" trans=false]
[momo storage="B_sifuku_M AB_8_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00150_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「哎，这也是当然的……毕竟你和最近走得很近、被当成魔女的前辈…」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_mion_00150_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「那、也就是说……对，对我来说也成了敌人……！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、这样啊……」
[np]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_mion_00150_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「呃、那个、那个……下、下次见面我可不会手下留情了，给我做好觉悟吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……」
[np]

[char_erase name="momo chisato"]

[r]要是和身为葵与桃酱对头的前辈关系亲密的话，那当然会变成这样了……
[np]

[r]我虽然并不在意那些复杂的人际关系……但为什么会觉得好像做了坏事一样呢。
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

[jump storage="scenario/mion/mion_00160.ks"]