[SCENESTART file=mion_00060.ks]
;//mion_00060
;//BG:bg06_01

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
[image storage="bg06_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/8(水)
;//CH:竜一,pajyama
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[character name="ryuichi"]
【龙一】[r]「哈啊……」
[np]

[r]被从窗户透进的阳光唤醒的我……
[np]

[character name="ryuichi"]
【龙一】[r]「咦……？啊，对了……」
[np]

[r]陌生的天花板让我一时不知所措，但想起昨天的事便释然了。
[np]

[r]在澪音学姐的房间里迎来的第一个早晨……虽说是理所当然，但依然有种强烈的违和感。
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00060_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「哎呀，早上好龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、早上好，澪音学姐」
[np]

[r]我一边支起身子，一边与似乎早就醒来的学姐互相问候。
[np]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_mion_00060_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「怎么样，睡得好吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还算过得去……」
[np]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00060_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「是嘛。能获得舒适的睡眠固然很好……不过，真是可惜呢」
[np]
[FACEHIDE]

[r]澪音学姐拈起裙摆嫣然一笑……
[np]

[mion storage="C_seifuku_M CD1_2_M"]
[playcv storage="mion_mion_00060_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_seifuku"]
【澪音】[r]「要是再早点醒来的话，说不定就能收录到我的更衣ＣＧ了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「！？　换、换衣服……不、不是，ＣＧ什么的……！」
[np]

[mion storage="B_seifuku_M AB1_8_M"]
[playcv storage="mion_mion_00060_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_seifuku"]
【澪音】[r]「意思是说本来可以把我更衣的画面烙印在视网膜上，作为回忆的一页珍藏在大脑相簿里……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]对啊、昨天不是才刚说过只要看看的话随便怎么看都行……！
[np]

[r]这么说来，只要比澪音学姐早起的话……就能看到她换衣服的样子，甚至是内衣打扮之类的各种样子都能大饱眼福吗！？
[np]

[mion storage="D_seifuku_M CD1_4_M"]
[playcv storage="mion_mion_00060_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「龙一，口水都要流出来了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜哇……！？　失、失礼了！」
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00060_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「好了，我们去吃早餐吧」
[np]
[FACEHIDE]

[r]换衣服……澪音学姐的换衣场景啊……
[np]

[r]好，从明天开始要努力早起了！
[np]

[char_erase name="mion"]

;//時間経過
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[momo storage="C_seifuku_M C_9_M" trans=false]
[chisato storage="A_seifuku_M AB_3_M" trans=false]
[char_trans]

[playcv storage="momo_mion_00060_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「终于、从今天就要开始了呢……！」
[np]
[FACEHIDE]

[r]吃完早餐的我们，一同朝着学园出发。
[np]

[r]路上大家的话题，全都围绕着今天即将开始的期末考试。
[np]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_mion_00060_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「是啊……如果跨不过这道坎，就连暑假都没法好好享受了，必须得加把劲……！」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]


[supica storage="B3_seifuku_M AB_4_M"]
[playcv storage="supica_mion_00060_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_seifuku"]
【真珠星】[r]「……麻烦」
[np]
[FACEHIDE]

[char_erase name="supica"]


[aoi storage="A_seifuku_M A_5_M" trans=false]
[mion storage="C_seifuku_M CD1_3_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00060_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「完全同意……说到底，身为异能使用者的我，为何非要参加这种学力测试不可……」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00060_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「既然身为学生，这就是人人平等的……嗯，类似使命的存在吧？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_mion_00060_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「话、话虽这么说……」
[np]
[FACEHIDE]

[r]面对澪音学姐的正确言论，葵不甘心地撅起了嘴唇。
[np]

[char_erase name="aoi mion"]

[r]考试要持续三天啊……
[np]

[r]虽然自认已经尽力准备了……但刚转学过来，还没适应课程进度这点实在很伤。
[np]

[r]不过找借口也无济于事……只能全力以赴了。
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

;//JUMP:mion_00070
[jump storage="scenario/mion/mion_00070.ks"]