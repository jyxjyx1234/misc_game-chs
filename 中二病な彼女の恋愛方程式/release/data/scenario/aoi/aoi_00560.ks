[SCENESTART file=aoi_00560.ks]
;//aoi_00560
;//BG:bg03_01

[SYSTEMMENU]

;//TIME:昼
;//日付:7/22(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku

;//暗転
[playcv storage="aoi_aoi_00560_001.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……一……龙一……」
[np]

[r]嗯，嗯嗯……？
[np]

[playcv storage="aoi_aoi_00560_002.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「龙一……！龙一……！」
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]在朦胧的意识中察觉到有人在呼唤自己的名字，睁开眼睛一看……
[np]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_aoi_00560_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「啊……早安龙一！」
[np]
[FACEHIDE]

[r]葵正站在床边俯视着我的脸，露出开心的笑容。
[np]

[r]仔细一看，她已经把睡衣换成平时穿的衣服了……
[np]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_aoi_00560_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「龙一，今天是执行绝密任务的日子！不是约会的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊……这么说已经到时间了……？」
[np]

[r]这么想着看了眼时钟，发现比约定时间足足早了三个小时。
[np]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_aoi_00560_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「啊、不、时间倒还早……不过那个……」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_8_M"]
[playcv storage="aoi_aoi_00560_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「因为和龙一的绝密任务太让人期待了……结果提前醒过来了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……原来如此」
[np]

[r]既然你如此期待，那我也算没白邀请你了。
[np]

[character name="ryuichi"]
【龙一】[r]「好……那我也开始准备吧」
[np]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_aoi_00560_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「我去准备早餐！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//\SEドアが閉まる音
[r]葵带着雀跃的语气说完，快步走出了房间。
[np]

[r]不只是和葵，这也是我人生中的第一次约会……但愿一切顺利。
[np]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00560_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「啊，早上好，神原前辈」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，早上好桃酱」
[np]

[r]换上衣服下楼来到客厅，发现桃酱和葵已经并排坐在了座位上。
[np]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00560_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「那我们开动吧」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_aoi_00560_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「我开动了！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]进入暑假后，为了尊重每个人的生活作息，大家都可以在方便的时间自行食用预先准备好的餐点。
[np]

[r]听说是澪音学姐坚持推行的规矩，她总是熬夜打游戏到凌晨，然后睡到中午才起床。
[np]

[character name="ryuichi"]
【龙一】[r]「今天的早餐是桃酱做的吗？」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00560_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊，是的。虽然只是些简单的东西……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢了。葵，你要不要也学着做饭？这样也能减轻绫濑和桃酱的负担。」
[np]

[char_erase name="momo"]

[aoi storage="B_tokushu_M B_7_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00560_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「呜、右眼……右眼在抽痛……！」
[np]
[FACEHIDE]

[r]看来是没戏了。
[np]

[char_erase name="aoi"]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_aoi_00560_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「两位今天有什么安排吗？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00560_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「诶……？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_1_M"]
[playcv storage="momo_aoi_00560_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「啊，没什么，只是放假期间难得见你们起这么早……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「问得好桃酱！今天我们要去进行第一次约会！」
[np]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_aoi_00560_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「你……！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_aoi_00560_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「诶！！约、约会吗！？」
[np]
[FACEHIDE]

[r]话音刚落，桃酱便突然站起身，探出身子开始两眼放光。
[np]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_aoi_00560_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「才、才不是！这说到底只是为了执行绝密任务而采取的隐秘行动——」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_aoi_00560_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「第一次约会……！！太好啦！恭喜你们啦！！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_aoi_00560_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「桃、桃……？」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_aoi_00560_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「好开心啊……！原来如此，今天是值得纪念的初次约会日子呀！得在日历上画个圈标记起来！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_8_M"]
[character name="ryuichi"]
【龙一】[r]「为什么啊！？」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_aoi_00560_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「因为这不是很棒的事情嘛！是纪念日呀纪念日！！」
[np]
[FACEHIDE]

[r]桃酱为我们第一次约会感到高兴的样子，简直就像她自己要去约会似的。
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_aoi_00560_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「神原先辈，今天请好好加油！！要以男子汉的气概，好好引领葵小姐哦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦……」
[np]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_aoi_00560_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「声音太小啦！请拿出干劲来！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是、是！！」
[np]

[char_erase name="momo aoi"]

[r]要以男人的身份带领葵吗……
[np]

[r]虽然太过在意也不好，但也不能完全抛之脑后……！
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

;//JUMP:aoi_00570
[jump storage="scenario/aoi/aoi_00570.ks"]