[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00300.txt]
;//chisato_00300
;//BG:bg11_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[r]然后，放学后……
[np]

[akane storage="B_seifuku_M AB_2_M" trans=false]
[chisato storage="A_seifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="akane_chisato_00300_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「那我说啊，小千你是什么时候觉醒这种能力的？」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_chisato_00300_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「嗯…大概几年前吧。当时有只从未见过的妖精突然出现在我面前…」
[np]
[FACEHIDE]

[char_erase name="chisato akane"]
[r]我们聚集在教室后排，像往常一样和固定成员们闲聊。
[np]

[r]话题内容自然都是午休时没聊完的关于千圣的事。
[np]

[sousi storage="A_seifuku_M A_1_M" trans=false]
[aoi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="sousi_chisato_00300_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「光之圣天使…这么说来属性正好和葵完全相反啊」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_11_M"]
[playcv storage="aoi_chisato_00300_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「没错…但现在我们缔结了特别盟约…要齐心协力共同合作，打倒那个可恨的魔女…！」
[np]
[FACEHIDE]

[char_erase name="aoi sousi"]

[akane storage="C_seifuku_M CD_10_M"]
[sousi storage="B_seifuku_M B_5B_M"]
[char_trans]

[playcv storage="akane_chisato_00300_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「原来如此，那个人是共同的敌人啊」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_3_M"]
[playcv storage="sousi_chisato_00300_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「原本敌对阵营的人居然携手合作…真是热血的发展」
[np]
[FACEHIDE]

[char_erase name="akane sousi"]

[aoi storage="B_seifuku_L B_8_L"]
[char_jump name=aoi]

[playcv storage="aoi_chisato_00300_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「！？」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_chisato_00300_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「哦、怎么了小葵！？」
[np]
[FACEHIDE]

[r]突然摆出警戒姿态的葵让在场所有人都紧张起来。
[np]

[aoi storage="D_seifuku_L CD_4_L"]
[playcv storage="aoi_chisato_00300_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「很近……魔女的爪牙……不对，这气息恐怕是二重身……！啊，在那里！！」
[np]
[FACEHIDE]

[r]见葵神情严肃地指向走廊，大家都跟着转头望去，但……
[np]

[character name="ryuichi"]
【龙一】[r]「……什么都没有啊」
[np]

[aoi storage="C_seifuku_L CD_11_L"]
[playcv storage="aoi_chisato_00300_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「翼神龙，使用心眼……对方现在正隐藏身影不让普通人看见」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_chisato_00300_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「也就是说，我们也看不见对吧……！」
[np]
[FACEHIDE]

[char_erase name="akane aoi"]

[chisato storage="C_seifuku_L CD_10_L"]
[playcv storage="chisato_chisato_00300_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「在那里……！」
[np]
[FACEHIDE]

[r]千圣似乎听从葵的建议使用了所谓的心眼，正死死盯着走廊仿佛捕捉到了目标
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_chisato_00300_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「那家伙的力量根源和我们一样是暗之气息……安洁，你的属性更占优势！」
[np]
[FACEHIDE]

[char_erase name="aoi"]


;//「ホーリーアロー」でお願いします。
[chisato storage="B_seifuku_L AB_11_L"]
[playcv storage="chisato_chisato_00300_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「交给我吧！将神圣之力汇聚于手，此刻正是贯穿邪恶之时！——圣之矢——，去吧！！」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_11_M"]
[playcv storage="aoi_chisato_00300_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「漂亮！！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_chisato_00300_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「哇哦，成功了？打倒了吗？」
[np]
[FACEHIDE]

[char_erase name="akane"]


;//「ホーリーアロー」でお願いします
[aoi storage="D_seifuku_L CD_2_L"]
[playcv storage="aoi_chisato_00300_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「嗯……安洁射出的——圣之矢——精准命中要害……那家伙的二重身已经灰飞烟灭了」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_10_M"]
[playcv storage="sousi_chisato_00300_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「也就是说…学院的和平算是保住了吗？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_11_L"]
[playcv storage="aoi_chisato_00300_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「正是如此…果然可靠！干得漂亮安洁！！」
[np]
[FACEHIDE]

[char_erase name="aoi sousi"]

[r]看来在葵的认知中敌人已完全消灭…或许是想要分享这份喜悦，她转头看向千圣的方向…
[np]

[chisato storage="C_seifuku_L CD_9_L"]
[playcv storage="chisato_chisato_00300_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「呀…！！！」
[np]
[FACEHIDE]

[r]或许意识到刚才的华丽互动吸引了全班同学的注意…千圣涨红了脸浑身发抖。
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_chisato_00300_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「呃、怎么了安洁…？用力过猛了吗？」
[np]
[FACEHIDE]


[chisato storage="C_seifuku_M CD_10_M"]
[playcv storage="chisato_chisato_00300_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「葵、葵同学…？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[aoi storage="A_seifuku_L A_7_L"]
[playcv storage="aoi_chisato_00300_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「噫…！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]只见千圣突然用力抓住葵的双肩…
[np]

[chisato storage="A_seifuku_L AB_11_L"]
[playcv storage="chisato_chisato_00300_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「要玩这种梗也不是不行…但下次能不能注意一下场合…？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[aoi storage="D_seifuku_L CD_11_L"]
[playcv storage="aoi_chisato_00300_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「才、才不是什么梗啊！你应该也看见了吧！？要是放任那个二重身不管，同学们都会遭殃——」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[chisato storage="B_seifuku_L AB_9_L"]
[playcv storage="chisato_chisato_00300_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「能不能注意一下场合…！？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_6_L"]
[playcv storage="aoi_chisato_00300_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_seifuku"]
【葵】[r]「噫——！？」
[np]
[FACEHIDE]

[r]千圣面泛红晕却仍强作镇定，一脸认真地告诫着葵。
[np]

[r]面对这突如其来的状况，葵——
[np]

[aoi storage="D_seifuku_M CD_11_M"]
[playcv storage="aoi_chisato_00300_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「啊……！差、差不多该出发了！次元夹缝中的命运即将交错！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00150.ogg"]
[char_erase name="aoi"]
[r]她突然说着意义不明的话语，抱起书包冲出了教室。
[np]

[akane storage="C_seifuku_M CD_2_M" trans=false]
[chisato storage="C_seifuku_M CD_10_M" trans=false]
[char_trans]

[playcv storage="akane_chisato_00300_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「啊哈哈，原来如此原来如此，是这么回事呀」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_10_M"]
[playcv storage="chisato_chisato_00300_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「……走、走吧，龙一！」
[np]
[FACEHIDE]

[char_erase name="chisato akane"]
[character name="ryuichi"]
【龙一】[r]「啊，好……」
[np]

[r]或许是觉得难为情，千圣也红着脸匆匆离开了教室。
[np]

[character name="ryuichi"]
【龙一】[r]「那明天见！」
[np]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_chisato_00300_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「嗯，再见啦」
[np]
[FACEHIDE]

[char_erase name="akane"]
[r]我也抱起书包，紧跟着千圣离开了。
[np]

[HIDESYSTEMMENU]

[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]


;//背景を通学路bg13_01に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[chisato storage="A_seifuku_M AB_11_M"]
[playcv storage="chisato_chisato_00300_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「真是的……居然在教室也来这套……」
[np]
[FACEHIDE]

[r]千圣鼓着仍泛微红的脸颊，嘟囔着不满。
[np]

[character name="ryuichi"]
【龙一】[r]「但千圣不也配合得很起劲嘛」
[np]

[chisato storage="A_seifuku_L AB_9_L"]
[playcv storage="chisato_chisato_00300_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「那、那是……同为异能者之间被抛梗就要接住，算是种礼仪吧……」
[np]
[FACEHIDE]

[r]原来还有这种潜规则啊……
[np]

[character name="ryuichi"]
【龙一】[r]「不过……我啊，突然想到个事」
[np]

[r]那是午休时分。当千圣在屋顶向二人坦白秘密时，我突然意识到的问题。
[np]

[character name="ryuichi"]
【龙一】[r]「我们的关系……打算什么时候向大家公开？」
[np]

[chisato storage="C_seifuku_M CD_9_M"]
[playcv storage="chisato_chisato_00300_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「啊……」
[np]
[FACEHIDE]

[r]虽说从昨天到现在还没找到合适的时机……
[np]

[r]既然同住一个屋檐下还开始交往了，总觉得该给大家一个像样的交代。
[np]

[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_chisato_00300_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「确实呢……虽然没考虑过……但也没打算刻意隐瞒……」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_chisato_00300_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「如果有人问起就老实回答…这样不就好了？」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「这样或许最妥当」
[np]

[r]况且要是没人问就突然自曝…感觉也不太对劲…
[np]

[r]就按千圣说的，等有人问起相关话题时再顺势公开…这样处理吧。
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


;//JUMP:chisato_00310
[jump storage="scenario/chisato/chisato_00310.ks"]

