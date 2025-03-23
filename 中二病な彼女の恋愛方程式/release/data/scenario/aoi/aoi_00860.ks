[SCENESTART file=aoi_00860.ks]
;//aoi_00860
;//BG:bg03_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:8/11(火)
;//CH:竜一,sifuku
;//CH:葵,tokushu

[r]回到宿舍，走进房间……
[np]

[aoi storage="C_sifukuB_L CD_3_L"]
[playcv storage="aoi_aoi_00860_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_sifukuB"]
【葵】[r]「啊……你回来啦，龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦……我回来了」
[np]

[r]一直在等我回来的葵，扑进了我的怀里。
[np]

[character name="ryuichi"]
【龙一】[r]「晚饭，已经吃过了吗？」
[np]

[aoi storage="A_sifukuB_L A_2_L"]
[playcv storage="aoi_aoi_00860_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_sifukuB"]
【葵】[r]「没有，因为要等龙一回来，我还没吃」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……那，现在一起吃吧」
[np]

[aoi storage="C_sifukuB_L CD_2_L"]
[playcv storage="aoi_aoi_00860_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_sifukuB"]
【葵】[r]「嗯嗯♪」
[np]
[FACEHIDE]

[r]葵用天真无邪的笑容点头……这副模样虽然也很可爱……
[np]

[r]但是，不是这样的。
[np]

[r]让我倾心的葵，是那种能用席卷周遭的气势贯彻自己喜好，充满魅力的女孩子。
[np]

[aoi storage="C_sifukuB_L CD_7_L"]
[playcv storage="aoi_aoi_00860_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_sifukuB"]
【葵】[r]「龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、抱歉……好，走吧」
[np]

[char_erase name="aoi"]

[r]等着吧葵，就由我来……
[np]

[r]——同胞漆黑复仇者——翼神龙来将你失去的记忆复苏吧！！
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

;//JUMP:aoi_00870
[jump storage="scenario/aoi/aoi_00870.ks"]