[SCENESTART file=aoi_00480.ks]
;//aoi_00480
;//BG:b02_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

;//TIME:夕
;//日付:7/17(金)
;//CH:竜一,sifuku
;//CH:葵,私服
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[satomi storage="C_sifuku_L CD_2_L" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]

[playcv storage="satomi_aoi_00480_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊、今天结业式啊。那大家都要放暑假了，真羡慕呢……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00480_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「圣水小姐，你一年到头都像是在过暑假一样不是吗」
[np]
[FACEHIDE]

[r]在晚饭时打开罐装啤酒的圣水小姐，澪音前辈回了她一句精准的吐槽。
[np]

[r]之后，我和葵吃完午饭在车站前闲逛了一阵子，差不多到时间就回来了。
[np]

[satomi storage="C_sifuku_L CD_3_L"]
[playcv storage="satomi_aoi_00480_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「虽然由我来说有点奇怪，不过作业还是早点写完比较好哦」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00480_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「哎呀，难得听到你给出学生宿舍管理员该有的建议呢」
[np]
[FACEHIDE]

[char_erase name="mion satomi"]


[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00480_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「圣水小姐是属于会提早完成暑假作业的类型吗？」
[np]
[FACEHIDE]

[char_erase name="momo"]


[satomi storage="B_sifuku_L AB_10_L"]
[playcv storage="satomi_aoi_00480_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「怎么可能！我非但不提前做，反而是那种要一直拖到暑假结束的类型啦！」
[np]
[FACEHIDE]

[r]完全就是最糟糕的类型啊。
[np]

[chisato storage="C_sifuku_M CD_5_M" trans=false]
[satomi storage="C_sifuku_L CD_2_L" trans=false]
[char_trans]
[playcv storage="chisato_aoi_00480_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「直到结束都在酝酿……说白了其实就是没做对吧？」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_L CD_3_L"]
[playcv storage="satomi_aoi_00480_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「整个暑假都是啊。然后在开学典礼那天低头拜托朋友，借写完了的家伙的作业来看」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[r]为什么这种人能当学生宿舍管理员啊……
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00480_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「啊、对了……葵姐！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00480_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「嗯……？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00480_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「今天回来得挺晚的……是去了什么地方吗？」
[np]
[FACEHIDE]

;//「エンシェントドラゴン」でお願いします
[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00480_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「诶？啊…这、这个嘛。在讨伐《被封印的古代龙》」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_aoi_00480_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「啊，该不会是去游戏厅……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00480_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「没错，和龙一两个人一起……」
[np]
[FACEHIDE]

;//[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00480_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「嘿诶，两个人……那算是放学后的约会？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[momo storage="C_sifuku_M C_3_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00480_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「！！才、才不是！只是顺路……不对，是为了从灭亡危机中拯救人类的重要——」
[np]
[FACEHIDE]

;//[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00480_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「现在先不说那个了。哎呀，交往第二天就去约会……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_aoi_00480_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「因为你们已经是恋人关系了嘛……！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_8_M"]
[char_quake name=aoi]

[playcv storage="aoi_aoi_00480_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「呜啊……！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00480_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「成为恋人之后，有没有想做什么这个、想做什么那个之类的……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00480_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「哪、哪有那种事……！」
[np]
[FACEHIDE]

;//[satomi storage="C_sifuku_M CD_7_M"]
[playcv storage="satomi_aoi_00480_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_7_FACE_sifuku"]
【圣水】[r]「没有…才怪呢。想做的事啊，想去的地方啊……」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[aoi storage="D_tokushu_L CD_9_L"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00480_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「我、我和龙一可是通过血之契约缔结的关系！」
[np]
[FACEHIDE]

[r]每次听都觉得奇怪，为什么每次契约的宗旨都不一样呢。
[np]

[aoi storage="A_tokushu_L A_9_L"]
[playcv storage="aoi_aoi_00480_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「与其沉溺于男女关系，不如把时间用在锻炼提升自己……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_L CD_8_L"]
[playcv storage="aoi_aoi_00480_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「……锻、锻炼……」
[np]
[FACEHIDE]

[r]察觉到众人的视线都集中在自己身上，站起身的葵害羞地坐了回去。
[np]

[char_erase name="aoi"]

[r]成为恋人后想做的事吗…虽然才交往第二天，但确实没考虑过这个问题。
[np]

[r]葵那边…到底是怎么想的呢。
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

;//JUMP:aoi_00490
[jump storage="scenario/aoi/aoi_00490.ks"]