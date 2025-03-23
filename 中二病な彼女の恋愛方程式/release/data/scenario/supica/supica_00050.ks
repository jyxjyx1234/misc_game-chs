[SCENESTART file=supica_00050.ks]
;//supica_00050
;//BG:bg02_01
[HIDESYSTEMMENU]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/8(水)
;//CH:竜一,pajyama
;//CH:すぴか,pajyama
;//CH:千聖,seifuku


;//暗転
[playcv storage="chisato_supica_00050_001.ogg" name="chisato"]
[character name="chisato"]
【？？？】[r]「……君…………神原……」
[np]

[r]嗯……嗯……？……怎么回事……？
[np]

[playcv storage="chisato_supica_00050_002.ogg" name="chisato"]
[character name="chisato"]
【？？？】[r]「神原……君……喂……」
[np]

[r]是有人在……叫我吗……？
[np]

;//背景表示

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「嗯、嗯嗯……哈啊……」
[np]

[chisato storage="A_seifuku_L AB_8_L"]
[playcv storage="chisato_supica_00050_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「啊……」
[np]

[FACEHIDE]

[r]睁开眼睛支起身体，忍不住打了个大大的哈欠。
[np]

[chisato storage="A_seifuku_L AB_1_L"]

[r]这时我才意识到自己刚才一直在睡觉……
[np]

[character name="ryuichi"]
【龙一】[r]「咦，绫濑……？」
[np]

[chisato storage="C_seifuku_M CD_1_M"]

[r]发现刚才呼唤我的正是已经换上制服的绫濑。
[np]

[character name="ryuichi"]
【龙一】[r]「啊，难道已经到早饭时间了……？抱歉，都没帮忙……」
[np]

[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_supica_00050_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「啊，不是……不是这样的」
[np]
[FACEHIDE]

[r]绫濑说到这里突然顿住，难为情地垂下了眼帘。
[np]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_supica_00050_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「其实现在离早餐时间还早……只是有个状况有点棘手」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎、怎么了？」
[np]

[chisato storage="A_seifuku_M AB_6_M"]
[playcv storage="chisato_supica_00050_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「我想着吸取昨天的教训，今天要早点叫醒真珠星……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]绫濑说着将目光投向二楼——
[np]

[playcv storage="chisato_supica_00050_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「真珠星说非要神原君来才肯起床……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……我？」
[np]

[chisato storage="C_seifuku_M CD_5_M"]

[r]我不由自主地指了指自己，绫濑见状点了点头。
[np]

[character name="ryuichi"]
【龙一】[r]「等等……你说她非要我来才肯起床？」
[np]

[r]那说明她已经醒了啊……
[np]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_supica_00050_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「对……其实她早就醒了。但她说不要我开房门……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「也就是说……我不去她就不出房门？」
[np]

[r]听到我的话，绫濑再次点了点头……呃，为什么会变成这样啊？
[np]

[chisato storage="B_seifuku_M AB_6_M"]
[playcv storage="chisato_supica_00050_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「具体情况我也不是很清楚……总之，你能去试试吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、好……我知道了」
[np]

[char_erase name="chisato"]

[r]逃出牢笼的我穿着睡衣走上楼梯。
[np]

[r]非要我来了才肯出房间……？搞什么啊……
[np]

[r]不过嘛……被这样特殊对待，倒也不觉得讨厌……
[np]

;//\SEノック音

[playse buf=5 storage="sound/00720.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「真珠星——？」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[r]但真珠星的想法总是难以捉摸，反而让人有点不安……
[np]

;//ドア越し
;//意図的にフェイス外します
[playcv storage="supica_supica_00050_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，是我……」
[np]

;//SEカギを開ける音

[playse buf=5 storage="sound/00640.ogg"]
[wait time="500"]

[r]或许是确认了声音的主人，真珠星打开了房间门锁。
[np]

;//ドア越し
;//意図的にフェイス外します
[playcv storage="supica_supica_00050_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……进来」
[np]

[r]……等等等等。这次进房间不会又像昨天那样只剩条内裤吧？
[np]

[r]普通女孩子绝对不可能有这种操作……但真珠星总是一副若无其事的样子反而让人害怕……
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]啊对了，之前还有个前辈……明明敲门进去的，不知为何正好撞见她在换衣服。具体是谁就不说了。
[np]

;//ドア越し
;//意図的にフェイス外します
[playcv storage="supica_supica_00050_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一？」
[np]

[r]但既然真珠星声明我不来就不出房间，也只能这样了……
[np]

[r]再说要是真珠星自己都不在意的话，多看几眼也不会少块肉……哎呀，豁出去了！
[np]

[character name="ryuichi"]
【龙一】[r]「我、我进来咯……！」
[np]

[r]于是我战战兢兢地握住门把手……
[np]

;//背景をすぴかの部屋bg04_01に

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[SYSTEMMENU]

[r]眯着眼睛慢慢往里看，映入眼帘的是真珠星——
[np]

[supica storage="D_pajyama_M CD2_1_M"]
[playcv storage="supica_supica_00050_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「……早安」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……早、早安……」
[np]

[r]什么嘛……只是普通的睡衣打扮……啊。嗯。
[np]

[supica storage="C1_pajyama_M CD2_1_M"]
[playcv storage="supica_supica_00050_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「……有事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？啊、没……」
[np]

[r]什、什么嘛，白担心一场……
[np]

[r]话说我是不是有点失望啊？不，作为男人有那种反应或许也正常吧……
[np]

[character name="ryuichi"]
【龙一】[r]「那个，听说你指名要找我……」
[np]

[supica storage="B1_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00050_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「……制服」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊？」
[np]

[supica storage="B1_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00050_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「龙一，给真珠星穿制服」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「又来这套！！」
[np]

[supica storage="D_pajyama_M CD2_8_M"]

[char_jump name=supica]

[r]我不由得向指着地板上随手乱扔的制服的真珠星吐槽起来。
[np]

[supica storage="D_pajyama_M CD2_4_M"]

[character name="ryuichi"]
【龙一】[r]「所以说，换衣服这种事自己……」
[np]

[supica storage="B3_pajyama_M AB2_4_M"]
[playcv storage="supica_supica_00050_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_pajyama"]
【真珠星】[r]「……毁灭——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道了知道了！我帮你！我来帮你！！」
[np]

[supica storage="D_pajyama_M CD2_4_M"]
[playcv storage="supica_supica_00050_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「……这样就好」
[np]
[FACEHIDE]

[r]可恶，虽说关系到地球存亡，但凭什么要我干这种仆人般的差事……
[np]

[character name="ryuichi"]
【龙一】[r]「……搞什么，你不自己脱吗？」
[np]

[supica storage="B1_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00050_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「龙一，帮我脱」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……！！要、要我动手！？」
[np]

[supica storage="C1_pajyama_L CD2_1_L"]

[r]真珠星轻轻点头，张开双臂将自己的身躯呈现在我面前。
[np]

[r]昨天只是给赤裸的她穿衣服……现在连脱衣流程都要我来做，这犯罪气息也太浓了……
[np]

[supica storage="D_pajyama_L CD2_4_L"]
[playcv storage="supica_supica_00050_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「不快点的话……会迟到」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好、好啦我知道啦……」
[np]

[char_erase name="supica"]

[r]表面上勉强保持着不情不愿的态度，实则心脏早已砰砰直跳。
[np]

[r]不、这也没办法吧！给女孩子脱衣服这种事，出生以来还是第一次啊！
[np]

[supica storage="D_pajyama_L CD2_4_L"]
[playcv storage="supica_supica_00050_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]本以为这种体验要留到第一次亲密接触的时候……没想到，居然会在这种场合……！
[np]

;//すぴかの立ち絵を下着姿に
[supica storage="A_pantu_L AB2_1_L"]
[playcv storage="supica_supica_00050_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「嗯、嗯嗯……」
[np]
[FACEHIDE]

[r]一边这么想着，一边尽量不往那个方向看……将已经相当破旧的Ｔ恤从头部位置向上拉扯着褪下。
[np]

[supica storage="D_pantu_L CD2_4_L"]
[playcv storage="supica_supica_00050_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「哈……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]之后的过程，都是凭着昨天真珠星教过我的记忆……
[np]

;//すぴかの立ち絵を制服姿に
[supica storage="D_seifuku_L CD_1_L"]
[playcv storage="supica_supica_00050_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……嗯……好了」
[np]
[FACEHIDE]

[r]喂、好了什么的，可全都是我帮你穿上的啊……！
[np]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00050_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……吃饭……」
[np]
[FACEHIDE]

[char_erase name=supica to=right time=800 fade=true]

[character name="ryuichi"]
【龙一】[r]「啊、喂……」
[np]

[r]换好制服的真珠星，就这样若无其事地走出了房间。
[np]

[r]其实我还以为至少能听到一句谢谢……稍微有点期待呢……
[np]

[r]不过嘛，这才是平常的真珠星啊……
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

;//JUMP:supica_00060
[jump storage="scenario/supica/supica_00060.ks"]
