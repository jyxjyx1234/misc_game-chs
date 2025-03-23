[SCENESTART file=aoi_00600.ks]
;//aoi_00600
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:夜
;//日付:7/22(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]然后，回到宿舍的我们……
[np]

[mion storage="C_sifuku_M CD1_1_M" trans=false]
[momo storage="C_sifuku_M C_1_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00600_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「那么……赶紧开始听取报告吧」
[np]
[FACEHIDE]

[r]看着兴致盎然的澪音学姐带头，跃跃欲试的桃酱……
[np]

[r]圣水和绫濑也表现出兴趣的样子，唯独真珠星还是和往常一样面对这个状况。
[np]

[r]嘛，虽然我早有预料会是如此……
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00600_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「第一届，甜蜜情侣约会成果发表会——」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00600_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「呀——————！！！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「停停停！说什么第一届的话，听起来像是之后还要继续搞这种活动啊！」
[np]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00600_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「哎呀，不是吗？我还以为你们每次约会后都会立刻向我们汇报成果呢」
[np]
[FACEHIDE]

[char_erase name="momo mion"]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_aoi_00600_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「而且说什么甜蜜啊！别、别让我这么难为情！」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00600_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「这么说的话，难道你们约会不甜蜜吗？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00600_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「这、这个嘛……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_4_M"]
[playcv storage="chisato_aoi_00600_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「葵这副害羞的模样……看来你们经历了不少事情呢」
[np]
[FACEHIDE]

[char_erase name="aoi satomi chisato"]

[momo storage="C_sifuku_M C_9_M"]
[playcv storage="momo_aoi_00600_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「啊、葵小姐！别慌别急，慢慢来一个一个说明吧！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00600_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「连、连千圣和桃也站在她们那边吗！你们这些叛徒！！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00600_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「对了，真珠星……！快来帮帮我，我需要你的力量！」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_aoi_00600_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……真珠星的……力量……？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00600_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「没错！除了我和龙一，大家都被魔女洗脑失去理智了……用星星的力量想想办法……」
[np]
[FACEHIDE]

[supica storage="B2_sifuku_M AB_5_M"]
[playcv storage="supica_aoi_00600_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_sifuku"]
【真珠星】[r]「……现在阴天……没办法」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[playcv storage="aoi_aoi_00600_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「怎么会这样！？」
[np]
[FACEHIDE]

[char_erase name="aoi supica"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00600_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「好了，认命吧小日向葵……你做好觉悟了吗，要在晚餐时把一切和盘托出……？」
[np]
[FACEHIDE]

[r]这种说法在吃饭时真不想听到……
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_aoi_00600_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「呜、呜呜……到、到底要我做何觉悟！说到底，我和龙一不过是——」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_9_M"]
[playcv storage="mion_aoi_00600_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「缔结血之契约的普通盟友……除此之外什么都不是，还想继续糊弄过去吗？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00600_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「呜……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00600_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「对了，如果葵和龙一君的关系真的只是普通盟友……那我当他的恋人也可以吧？」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_7_M" trans=false]
[aoi storage="D_tokushu_M CD_9_M" trans=false]
[char_trans]
[playcv storage="aoi_aoi_00600_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「绝、绝绝绝绝绝绝绝绝绝绝绝绝对不行！！！！！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00600_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「……啊！」
[np]
[FACEHIDE]

[r]葵突然站起身来，大声驳回了澪音学姐的提议。
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_aoi_00600_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「啊哇……哈哇哇哇……」
[np]
[FACEHIDE]

[r]她拼命主张的模样被大家看在眼里，脸颊渐渐染上红晕。
[np]

[char_erase name="aoi mion"]

[r]……话说回来，其实我也挺难为情的。
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00600_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「呵呵……听到刚才那句话我就安心啦」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00600_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「什……！？」
[np]
[FACEHIDE]

;//[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_aoi_00600_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「是啊。嘴上再怎么不坦率，也还是能让人感受到你对神原君的喜欢呢」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00600_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「什啊啊啊！？」
[np]
[FACEHIDE]

;//[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_aoi_00600_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「噗、嘻嘻……呵呵呵呵……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_aoi_00600_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「不、不许笑啊魔女！！今天说什么我都绝对不会原谅你的啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_aoi_00600_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「好了好了吃饭时候别闹腾啦。我的吐息可是会爆炸的哦～？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_aoi_00600_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「唔……」
[np]
[FACEHIDE]

[char_erase name="aoi satomi"]

[r]被圣水这么一说，葵只好乖乖坐回座位。
[np]

[character name="ryuichi"]
【龙一】[r]「哎呀，这不是挺好的嘛。大家也都那么说了」
[np]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00600_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「才、才不好！害我这么难为情……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好啦，再不快点吃就要凉了。这可是桃酱和绫濑特地为我们做的。」
[np]

[char_erase name="aoi"]

;//小声
[momo storage="C_sifuku_M C_2_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="momo_aoi_00600_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「噢……！神原先辈这波体贴我给满分……！」
[np]
[FACEHIDE]

;//小声
[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00600_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「作为男友倒是挺会体贴人的嘛……真有点意外……」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]喂，我可都听得清清楚楚啊……！
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

;//JUMP:aoi_00610
[jump storage="scenario/aoi/aoi_00610.ks"]