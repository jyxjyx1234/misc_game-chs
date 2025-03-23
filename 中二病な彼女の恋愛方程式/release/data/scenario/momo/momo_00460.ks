[SCENESTART file=momo_00460.ks]
;//momo_00460
;//BG:bg13_01

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
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM01.ogg" time=1000]

;//TIME:昼
;//日付:7/17(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[r]和桃酱第一次结合后，过了一夜……
[np]

[supica storage="C1_seifuku_M CD_5_M"]
[playcv storage="supica_momo_00460_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_seifuku"]
【真珠星】[r]「……嗯嗯……呼……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_momo_00460_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「真、真珠星酱，不能一边走路一边睡觉啦……！」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[r]全员整队走在早晨的上学路上。
[np]

[r]考试结束，试卷也发还完毕……只要今天结业式结束，我们就能正式迎来暑假。
[np]

[mion storage="A_seifuku_M A_1_M" trans=false]
[aoi storage="C_seifuku_M CD_5_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00460_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「葵最后补考科目是维持一门吗？」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_5_M"]
[playcv storage="aoi_momo_00460_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「……我、没有回答义务」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_4_M"]
[playcv storage="mion_momo_00460_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「增加了呢」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_momo_00460_002.ogg" name="aoi"]
[character name="aoi"]
[char_quake name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「别、别擅自决定！我还什么都没说呢！」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_momo_00460_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「神原君这边没问题吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呵呵呵……关于不及格这件事，总算全科目都避开了」
[np]

[char_erase name="chisato"]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_momo_00460_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
[char_quake name="aoi"]
【葵】[r]「怎会……！？我、我还以为龙一是同类呢！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「抱歉啊葵……这一切都是为了和桃酱度过一个愉快的暑假……」
[np]

[aoi storage="D_seifuku_M CD_6_M"]
[playcv storage="aoi_momo_00460_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_seifuku"]
【葵】[r]「可…果然是因为我失去了主位吗……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]在我们进行这样的对话时，桃酱还在照顾着睡眼惺忪的真珠星。
[np]

[r]在初次体验后的第二天早晨，桃酱和我都没有粗神经到能若无其事地说话。
[np]

[r]更何况在大家面前容易露馅……或许就这样直接去学院才是正确的选择吧。
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

[jump storage="scenario/momo/momo_00470.ks"]