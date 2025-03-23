[SCENESTART file=aoi_00310.ks]
;//aoi_00310
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

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
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/14(火)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_aoi_00310_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「那么，我开动了」
[np]
[FACEHIDE]

[char_erase name="chisato"]

;//合わせ
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[momo storage="A_sifuku_M AB_2_M" trans=false]
[supica storage="B2_sifuku_M AB_3_M" trans=false]
[char_trans]
[playcv storage="aoi_mix_00310_001.ogg" name="women"]
[character name="women"]
【桃・澪音・真珠星】[r]「我开动了」
[np]

[char_erase name="supica mion momo"]

[r]夕阳西下，和大家共进晚餐的时间到了。
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_aoi_00310_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「嗯——！汉堡肉好好吃！和啤酒超配！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00310_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「在圣水看来，什么都和啤酒很配吧……」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[character name="ryuichi"]
【龙一】[r]「不过这个真的太好吃了……！这也是绫濑和桃酱做的吗？」
[np]

[momo storage="C_sifuku_M C_1_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="momo_aoi_00310_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「啊，是的……！是和千圣一起捏成型、煎烤的……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00310_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「形状不好看的是我做的，漂亮的是桃做的呢」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00310_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「桃可是伏木庄里最擅长料理的人呢」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_8_M"]
[playcv storage="momo_aoi_00310_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「没、没有那种事啦……」
[np]
[FACEHIDE]

[r]桃酱那带着羞涩的声音逐渐变小了。
[np]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_aoi_00310_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「不过，被狗咬到真是倒霉呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎呀，真的。长着那么可爱的脸，却是个不得了的家伙呢。对吧，葵？」
[np]

[char_erase name="mion momo"]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00310_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「啊、啊啊……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00310_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「那时候，葵也用自己的得意异能战斗了吗……？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00310_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「我、我确实试图战斗过……但、但我的暗属性能力，和它相性太差了……」
[np]
[FACEHIDE]

[r]是啊……确实，完全没效果呢。
[np]

[char_erase name="aoi mion"]

[momo storage="B_sifuku_M AB_4_M"]
[playcv storage="momo_aoi_00310_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「不过好可怕呀……暂时都不敢靠近河滩了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过，那大概是家养犬吧……毛色那么漂亮的流浪狗，应该不存在嘛」
[np]

[char_erase name="momo"]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00310_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「那还是早点回到主人身边比较好呢」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]到时候，稍微索要点赔偿金也不为过……之类的。
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00310_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]……又来了。
[np]

[char_erase name="aoi"]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00310_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「对了，说到今年的暑假……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]最近吃饭时，葵总是投来谜样的视线……
[np]

[r]本来只要我不在意就没事的……
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00310_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「呜……」
[np]
[FACEHIDE]

[r]但一旦对上眼神，又故意移开……害得我也开始在意起来了！
[np]

[character name="ryuichi"]
【龙一】[r]「啊、葵……怎么了？」
[np]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00310_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「哎……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是，刚才好像……一直在看我吧？」
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00310_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「没、没看……大概……」
[np]
[FACEHIDE]

[r]什么叫大概……！
[np]

[char_erase name="aoi"]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_aoi_00310_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「龙一、葵，你们在听吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？啊、在听？」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00310_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「今年的暑假期间，说是要搞宿舍大扫除来着……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，大扫除……！嗯，我觉得挺好的！」
[np]

[char_erase name="mion"]

[r]不行……太在意葵的事，连我自己都有点不对劲了……。
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

;//JUMP:aoi_00320
[jump storage="scenario/aoi/aoi_00320.ks"]