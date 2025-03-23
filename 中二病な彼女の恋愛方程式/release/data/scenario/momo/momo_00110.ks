[SCENESTART file=momo_00110.ks]
;//momo_00110
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:もも,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「……好！」
[np]

[r]随着下课铃声放下自动铅笔，我踌躇满志地把答题纸往前传去。
[np]

[r]自从确定可以继续住在伏木庄后，转眼已过去数日……
[np]

[r]就算刚考完全科的测验成绩惨不忍睹，只要有这份喜悦我就能活下去！
[np]

[character name="ryuichi"]
【龙一】[r]「爽史……考得怎样？」
[np]

[sousi storage="A_seifuku_M A_4_M"]
[playcv storage="sousi_momo_00110_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_4_FACE_seifuku"]
【爽史】[r]「……跨越数百位二次元妹妹们啊……我…作为哥哥…可是英勇奋战过了……」
[np]
[FACEHIDE]

[r]没救了。
[np]

[sousi storage="C_seifuku_M CD_3_M"]
[playcv storage="sousi_momo_00110_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_3_FACE_seifuku"]
【爽史】[r]「啊啊……是啊，我现在就去你们那边的世界……等着我，诗帆……」
[np]
[FACEHIDE]

[char_erase name="sousi"]
[r]在心底吐槽着这什么鬼台词，我抱着书包起身离席。
[np]

[r]正当我要和茜她们搭话时……
[np]

[character name="ryuichi"]
【龙一】[r]「咦……？」
[np]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00110_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[r]不知为何，我和在走廊上朝教室里张望的桃酱对上了视线。
[np]

;[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_momo_00110_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「咦，桃？你怎么——」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_momo_00110_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「哦哦，来了啊桃！不，是堕天セシ圣职者——！」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00110_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊…」
[np]
[FACEHIDE]

[r]葵一把抓住因被那样称呼而不知所措的桃酱的肩膀。
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00110_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「葵、葵学姐，那个，今天…」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_5_M"]
[playcv storage="aoi_momo_00110_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「经过定期测验这场可憎的地狱鏖战…我的魔力已严重枯竭…！」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_momo_00110_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「所以即刻开始修行吧！那件圣物带了吗？」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_3_M"]
[playcv storage="momo_momo_00110_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「带、带来了…！」
[np]
[FACEHIDE]

[playcv storage="akane_momo_00110_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「龙一君，什么修行？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别问我」
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_momo_00110_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「很好…觉醒吧翼神龙！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃！？」
[np]

[r]这嗓门实在太大，足够引起全班注意了……
[np]

[r]周围同学齐刷刷看过来……喂喂！！
[np]

[character name="ryuichi"]
【龙一】[r]「你、你这家伙…别用那个名字……」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_momo_00110_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「愣着干嘛？快跟上啊翼神龙！没时间了翼神龙！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你绝对是故意的吧！？知道了！知道了还不行吗！！」
[np]

[r]要想不让她继续喊那个羞耻的名字，眼下只能服从葵的指示……！
[np]

[char_erase name="aoi momo"]

[r]如此判断的我，只能不情不愿地跟着两人走出去……
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

[jump storage="scenario/momo/momo_00120.ks"]