[SCENESTART file=momo_00200.ks]
;//momo_00200
;//BG:bg02_01

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:昼
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

;//夢
;//背景を寮のリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="kaisou_1.png" left=0 top=0 layer=1 page=back mode=psscreen visible=true]
[trans method=crossfade time=1000]
[wt]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_momo_00200_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「哎呀，真是吓我一跳……没想到龙一君居然有这样的兴趣……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是的……不是这样的……」
[np]

[char_erase name="satomi"]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_momo_00200_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「现在这个时代宅男到处都是……但没想到，居然是个会说出中学生以上就是老太婆这种话的超重量级萝莉控……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那不是我，是爽史——」
[np]

[char_erase name="mion"]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00200_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「我看错你了，翼神龙……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[supica storage="B1_sifuku_M AB_6_M"]
[playcv storage="supica_momo_00200_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_6_FACE_sifuku"]
【真珠星】[r]「……变态……」
[np]
[FACEHIDE]

[r]喂喂喂……为什么，为什么会变成这样啊……！？
[np]

[char_erase name="supica"]

[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_momo_00200_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「要跟这种人一起生活，绝对不可能！圣水小姐，请赶快把他赶出去！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等一下！这是误会！！听我解释……！！」
[np]

[char_erase name="chisato"]

;//夢の中、もものみ立ち絵無し
[playcv storage="momo_momo_00200_001.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前、前辈……前辈……？」
[np]

[character name="ryuichi"]
【龙一】[r]「听我说！！听我解释啊啊啊啊啊啊啊啊啊啊啊！！！」
[np]
[fadeoutbgm time="1000"]

;//ここから現実
;//背景を寮のリビングbg02_01に
;//ももの立ち絵表示

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM01.ogg" time=1000]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00200_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「前、前辈……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]全、全身都是汗……这显然不只是因为天气热……
[np]

[r]话说奇怪……刚才明明还是傍晚，怎么突然变成白天了……
[np]

[r]刚、刚才的……是梦……吗？
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00200_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「前、前辈……？那个，早上好……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……桃、桃酱……早啊……」
[np]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00200_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「没、没事吧……？刚才好像一直在说梦话……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……没事没事。做了个奇怪的梦……」
[np]

[r]简直就像是我取代了爽史的立场，做了个可怕的噩梦……
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之，我先去洗把脸……」
[np]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_momo_00200_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「啊，好的……」
[np]
[FACEHIDE]

[char_erase name="momo"]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[character name="ryuichi"]

【龙一】[r]「……呼」
[np]

[r]用冷水让自己清醒过来，为了确认还看了看镜中的脸。
[np]

[r]好，是我……无论怎么看都是我。不是爽史。
[np]

[momo storage="D_sifuku_M D_3_M"]
[playcv storage="momo_momo_00200_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「前辈请用」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噢，谢啦」
[np]

[r]……等等，哎，今天也……？
[np]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00200_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「……怎么了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、没……毛巾谢了」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00200_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「是，不用客气♪」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]继昨天之后，今天桃酱也陪我到盥洗室，递给我毛巾。
[np]

[r]说起来，昨天把我叫醒的也是桃酱呢……
[np]

[r]虽然并不是想胡乱猜测……但这是吹的哪阵风呢……。
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

[jump storage="scenario/momo/momo_00210.ks"]