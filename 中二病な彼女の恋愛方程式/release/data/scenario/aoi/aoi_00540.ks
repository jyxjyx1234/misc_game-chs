[SCENESTART file=aoi_00540.ks]
;//aoi_00540
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
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:夜
;//日付:7/18(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[playse buf=5 storage="sound/00370.ogg"]

[character name="ryuichi"]
【龙一】[r]「我回来啦」
[np]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_aoi_00540_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「啊、欢迎回来龙一！」
[np]
[FACEHIDE]

[r]我刚回到宿舍，葵就像等待工作归来的父亲的孩子般雀跃地跑来迎接。
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_aoi_00540_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「任务都好好完成了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯。多亏有葵，今天一整天都干劲十足地努力了」
[np]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00540_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「这……这、这样啊，那就好……」
[np]
[FACEHIDE]

[r]或许是想起打工前的事，葵的脸颊微微泛红。
[np]

[playcv storage="chisato_aoi_00540_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「欢迎回来神原君。辛苦了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，谢谢绫濑。已经要吃晚饭了？」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00540_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「嗯。大概再过五分钟就好，再稍等会儿哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「了解。对了，我也来帮忙吧。摆筷子可以吗？」
[np]

[char_erase name="chisato aoi"]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00540_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「筷子我来摆，龙一君就负责餐盘吧」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00540_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「啊、那放在这里……咦？」
[np]
[FACEHIDE]

[supica storage="A_sifuku_M AB_3_M"]
[playcv storage="supica_aoi_00540_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「……真珠星已经全部摆好了」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_aoi_00540_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「哇、谢谢真珠星酱……！」
[np]
[FACEHIDE]

[char_erase name="momo mion supica"]

[r]本想帮忙做点什么……不过看来人手已经足够了。
[np]

[character name="ryuichi"]
【龙一】[r]「话说、那个……」
[np]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00540_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「澪音前辈、我的筷子不见了……」
[np]

[char_erase name="chisato"]

[r]我发现自己常坐的位置没有摆我的筷子。该不会是欺负人……！？
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00540_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「哎呀，需要吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊？不、那当然……」
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00540_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「抱歉呢。我原本以为葵会全程喂你吃的……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_8_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00540_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_tokushu"]
【葵】[r]「什……！？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_aoi_00540_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「你们已经是恋人了，不打算来点『来，啊～嗯……』之类的喂食行为吗？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[char_jump name=aoi]
[playcv storage="aoi_aoi_00540_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「怎、怎么可能做那种事！你这魔女到底在误会什么！！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00540_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「本、本来我们之间就只是缔结了主从之间的盟约关系而已……！」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00540_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「呵呵，一害羞就立刻躲进这个设定里呢……不过你还能嘴硬到什么时候呢？」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_aoi_00540_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「这、这话什么意思……要是你想较量的话，我现在就可以奉陪到底！！」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[chisato storage="C_sifuku_M CD_4_M"]
[playcv storage="chisato_aoi_00540_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「好了好了，要比试等吃完饭再说」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]虽然害羞就会发作「中二病」这点确实很有葵的风格……
[np]

[r]不过那仅限于在大家面前……两人独处时，她倒是会展露出女孩子气的一面呢。
[np]

[r]今天也是，我提出请求后她还给了出门前的告别吻……
[np]

[character name="ryuichi"]
【龙一】[r]「呵呵……呵呵呵……」
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_aoi_00540_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「神、神原先辈……？你的鼻子下面好像……」
[np]
[FACEHIDE]
[character name="ryuichi"]
【龙一】[r]「哎呀失礼了……该去洗个手了！」
[np]

[char_erase name="momo"]

[r]只有我知道的、葵不为人知的一面……倒也不坏！
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

;//JUMP:aoi_00550
[jump storage="scenario/aoi/aoi_00550.ks"]