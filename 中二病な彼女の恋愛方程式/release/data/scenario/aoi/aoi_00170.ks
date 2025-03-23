[SCENESTART file=aoi_00170.ks]
;//aoi_00170
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[character name="ryuichi"]
【龙一】[r]「结束了啊啊啊啊啊啊啊啊啊！！！」
[np]

[r]随着考试结束，班会也告一段落，下课铃声随之响起……
[np]

[r]从期末考试的重压下解放出来的我，不由得喊出了声。
[np]

[character name="ryuichi"]
【龙一】[r]「干得好爽史！结束了，终于结束了啊！」
[np]

[sousi storage="D_seifuku_M CD_4_M"]
[playcv storage="sousi_aoi_00170_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4_FACE_seifuku"]
【爽史】[r]「是啊，结束了……不过你说的结束，和我说的结束意义不同……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别这么垂头丧气嘛……！就算考砸了，人又不会死！」
[np]

[character name="ryuichi"]
【龙一】[r]「再说了，你不是还有……那个吗？在二次元世界里，不是有很多能安慰你的女孩子吗？」
[np]

[sousi storage="A_seifuku_M A_11_M"]
[playcv storage="sousi_aoi_00170_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_11_FACE_seifuku"]
【爽史】[r]「哈，说得对……回去之后，就让小萝莉们好好抚慰我的身心吧……」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_7_M"]
[playcv storage="sousi_aoi_00170_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_7_FACE_seifuku"]
【爽史】[r]「不如设定成『要是好好参加暑假补习的话，就给哥哥奖励哦♪』——」
[np]
[FACEHIDE]

[r]好，看来他恢复精神了。还是保持点距离吧。
[np]

[char_erase name="sousi"]

[akane storage="D_seifuku_M CD_1_M"]
[playcv storage="akane_aoi_00170_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「小千，准备好了吗？」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00170_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「稍等一下，我得先把这份资料送到教师办公室……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哟，大家辛苦了」
[np]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_aoi_00170_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「噢、辛苦了龙一君」
[np]
[FACEHIDE]

[r]我与伸手过来的茜轻轻击了下掌。
[np]

[character name="ryuichi"]
【龙一】[r]「你们俩接下来要去哪儿吗？」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00170_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「嗯。考试也结束了，正商量要不要去商场逛逛……」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_10_M"]
[playcv storage="akane_aoi_00170_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「现在要和咱们班第一美少女小千去约会啦——！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00170_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
[char_jump name=chisato]
【千圣】[r]「茜、茜……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那作为拎包工具人让我加入的话……」
[np]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_aoi_00170_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「那、那不行！今天绝对不可以」
[np]
[FACEHIDE]

[r]可恶，被斩钉截铁地拒绝了……！
[np]

[akane storage="A_seifuku_M AB_5_M"]
[playcv storage="akane_aoi_00170_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_5_FACE_seifuku"]
【茜】[r]「抱歉啦龙一君，平时的话完全没问题……」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_aoi_00170_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「但今天小千说想和女孩子单独逛街……其实是要买内衣啦」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_10_M"]
[playcv storage="chisato_aoi_00170_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_seifuku"]
[char_jump name=chisato]
【千圣】[r]「茜、茜……！！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……这、这样啊，是这么回事啊……」
[np]

[r]绫濑要去买新内衣……停、停下！别去想象啊！
[np]

[chisato storage="D_seifuku_M CD_11_M"]
[playcv storage="chisato_aoi_00170_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「……神原君，刚才没在想奇怪的事情吧……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没、没想没想！我什么都没想！」
[np]

[akane storage="A_seifuku_M AB_3_M"]
[playcv storage="akane_aoi_00170_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_seifuku"]
【茜】[r]「嘛、就是这样所以很抱歉……啊、葵酱要一起吗？女孩子的话超级欢迎哦？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00170_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「我……还是算了」
[np]
[FACEHIDE]

[r]轻轻摇头的葵将视线转向了我这边。
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_aoi_00170_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「我要……和龙一起回去」
[np]
[FACEHIDE]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_aoi_00170_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「了解。那大家下周见啦～♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，回见」
[np]

[char_erase name="akane chisato"]

[r]对着离开教室的绫濑和茜轻轻挥手……
[np]

[character name="ryuichi"]
【龙一】[r]「那我们也回去吧」
[np]

[aoi storage="A_seifuku_M A_3_M"]
[playcv storage="aoi_aoi_00170_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_seifuku"]
【葵】[r]「啊、嗯……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]收拾好回家的物品后，我和葵两人一同离开了校园。
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

;//JUMP:aoi_00180
[jump storage="scenario/aoi/aoi_00180.ks"]