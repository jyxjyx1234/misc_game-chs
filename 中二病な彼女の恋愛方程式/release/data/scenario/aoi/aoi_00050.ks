[SCENESTART file=aoi_00050.ks]
;//aoi_00050
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="kaisou_1.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

;//TIME:昼
;//日付:7/7(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

;//暗転
[r]…………。
[np]

[r]嗯……？怎么回事，这里……
[np]

[r]这景色，在哪儿见过……。
[np]

[r]感觉不到风、气温或空气的气味……只是视野存在于此处。
[np]

[r]是在做梦吗……？但总觉得这风景似曾相识……。
[np]

[r]啊，想起来了……这是小学时常来玩的公园。
[np]

[r]也就是说，我在追寻自己的记忆……？还是说，这就是那样的梦……？
[np]

[r]正说着——
[np]

;//幼少期の葵。名前は「？？？」で
[playcv storage="aoi_aoi_00050_001.ogg" name="women"]
[character name="women"]
【？？？】[r]「呀……不要啊，别过来……」
[np]

[r]飘然浮现的，是一个眼看就要哭出来的女孩。
[np]

[r]大概是在害怕什么吧。女孩身旁，还有一只狗……
[np]

[r]而在两者之间，站着一个男孩——
[np]

[r]啊，这不是我吗！！
[np]

[character name="ryuichi"]
【龙一】[r]「没事的，我会保护你的！」
[np]

;//幼少期の葵。名前は「？？？」で
[playcv storage="aoi_aoi_00050_002.ogg" name="women"]
[character name="women"]
【？？？】[r]「可、可是……」
[np]

[character name="ryuichi"]
【龙一】[r]「喂，一边去！　嘘！　嘘！」
[np]

[r]——啊啊，我想起来了。
[np]

[r]这是多少年前的事了呢…具体时间已经记不清了……
[np]

[r]在常去的公园里，看到个面生的女孩就上前搭话……
[np]

[r]然后一起玩耍时，不知谁家的狗突然凑过来。
[np]

[r]那女孩吓得不行…我就挡在她前面，拼命想赶走那家伙……
[np]

[r]不过当时我…虽然没被狗咬到，但额头还是留下了——
[np]

;//以下、葵は通常表記
[playcv storage="aoi_aoi_00050_003.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……疼……..」
[np]
[FACEHIDE]

[r]嗯……？
[np]

[playcv storage="aoi_aoi_00050_004.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「一……了哦……噜……」
[np]
[FACEHIDE]

[r]咦……有人在叫我吗？
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]话说回来，这个声音——
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[aoi storage="A_seifuku_L A_2_L"]
[playcv storage="aoi_aoi_00050_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「早上了，龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time="500"]
【龙一】[r]「呜哇！？」
[np]

[char_erase name="aoi"]

[r]有人在耳边大声叫喊，我踢开被子猛地坐起身。
[np]

[character name="ryuichi"]
【龙一】[r]「啊、葵……？」
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00050_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「可算醒了……再不快点就要迟到啦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……抱歉，已经这个时间了吗……！」
[np]

[r]都怪刚才做了个令人怀念的梦，意识都被拉回过去了。
[np]

[r]说是怀念的梦，不过……那其实是真实发生过的事吧。这种情况该怎么说？应验的梦……好像也不太对。
[np]

[aoi storage="A_seifuku_M A_4_M"]
[playcv storage="aoi_aoi_00050_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_seifuku"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……嗯？」
[np]

[r]支起身体的我的……准确来说是我的额头，葵正凝视着。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00050_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「啊……没、没什么……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]葵虽然露出欲言又止的表情，还是这样嘀咕着离开了。
[np]

[r]又在看这个伤疤吗？……算了，先去洗把脸吧。
[np]

;//時間経過
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
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_aoi_00050_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「那我开动啦」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]煎蛋、吐司、培根和沙拉组成的宿舍早餐。
[np]

[r]每天早上想到是绫濑和桃酱准备的早餐，真是抬不起头来。
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_aoi_00050_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「终于、明天就要开始考试了呢……！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00050_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
千圣[r]「只要熬过这关，就跟放暑假没两样啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这周整周都是考试，下周开始讲评试卷……对吧？」
[np]

[char_erase name="chisato momo"]

[mion storage="C_seifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00050_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「是啊。不过能不能平安迎来暑假，还是要看考试成绩呢……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00050_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「别、别看着我说啊！我肯定没问题的！」
[np]
[FACEHIDE]

[r]啊、对哦……原来不管哪个学园都有补修制度啊……
[np]

[char_erase name="aoi mion"]

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_aoi_00050_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「补、补修……应该不要紧吧……？」
[np]
[FACEHIDE]

[supica storage="B2_seifuku_M AB_3_M"]
[playcv storage="supica_aoi_00050_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_seifuku"]
【真珠星】[r]「……桃肯定没问题的……星星是这么宣告的……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_aoi_00050_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「啊、谢谢，真珠星酱……！」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[r]在这座城市度过的第一个暑假……
[np]

[r]为了能好好享受假期，至少绝对不能挂科……！
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

;//JUMP:aoi_00060
[jump storage="scenario/aoi/aoi_00060.ks"]