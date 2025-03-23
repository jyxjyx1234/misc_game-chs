[SCENESTART file=all_00160.ks]
;//all_00160
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//TIME:昼
;//日付:6/16(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[wait time="500"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_all_00160_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「呀吼——！开吃啦开吃啦，今天大家也一起吃便当吧！」
[np]
[FACEHIDE]

[r]就在大家翘首以盼的午休时间到来之际，茜兴致勃勃地凑了过来。
[np]

[char_erase name="akane"]

[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_all_00160_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「今天也去屋顶吗？」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00160_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「天气这么好，去屋顶不是正好吗？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00160_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「没有异议」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我也觉得这样挺好」
[np]

[char_erase name="aoi chisato"]

[akane storage="D_seifuku_M CD_10_M"]
[playcv storage="akane_all_00160_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「全票通过呢！那么，出发吧！」
[np]
[FACEHIDE]

[char_erase name="akane"]

[r]众人带着便当离开教室后……
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[SYSTEMMENU]

;//背景を屋上bg12_01に
[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_all_00160_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「我要开动啦——！」
[np]
[FACEHIDE]

[r]继昨日之后，我们再次在晴空下享用午餐。
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_all_00160_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「哦，龙一君今天带的是便当呀」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊。是绫濑帮我准备的」
[np]

[akane storage="B_seifuku_M AB_7_M"]
[playcv storage="akane_all_00160_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「哎——！这么说来是爱心便当……！？」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_10_M"]
[playcv storage="chisato_all_00160_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「才、才不是啦！只是帮宿舍的大家一起做了而已」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「多谢啦绫濑，真的帮大忙了」
[np]

[akane storage="A_seifuku_M AB_3_M"]
[playcv storage="akane_all_00160_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_seifuku"]
【茜】[r]「就是说啊，小千真的很能干呢。明明还是学生，做饭洗衣打扫卫生……把宿舍事务全都包揽了吧？」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00160_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「又不是只有我一个人在做……」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_all_00160_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「再说管理员什么都不帮忙，我们只能自己动手了」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_3_M"]
[playcv storage="akane_all_00160_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_seifuku"]
【茜】[r]「即便如此能做到这种程度也很厉害啊！总感觉散发着妈妈般的气场呢！」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_all_00160_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「这种说法挺伤人的，别说了……」
[np]
[FACEHIDE]

[r]妈妈啊……确实，绫濑在伏木庄就像是妈妈般的存在呢。
[np]

[char_erase name="chisato akane"]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00160_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「唔……！」
[np]
[FACEHIDE]

[r]突然葵就像延续着今早的情景似的，按住自己拿着筷子的右手。
[np]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_all_00160_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「哦呀，怎么啦小葵！？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_all_00160_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「对、对不起……右手有点……」
[np]
[FACEHIDE]

[r]喂喂，你不会是想在这里继续早上的事情吧……！
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_all_00160_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「又开始疼了？突然发作了吗！？」
[np]
[FACEHIDE]

[r]嗯……？
[np]

[aoi storage="B_seifuku_M B_5_M"]
[playcv storage="aoi_all_00160_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「其实今天早上…和那个魔女差点就一触即发……」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_6_M"]
[playcv storage="sousi_all_00160_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_6_FACE_seifuku"]
【爽史】[r]「交手了么？」
[np]
[FACEHIDE]

;//分岐文
[if exp="f.Select00150_0==0"]
	[jump target="*selectA"]
[endif]
[if exp="f.Select00150_0==1"]
	[jump target="*selectB"]
[endif]

;//シーン00150の選択肢で、「ゴッド・ドラゴンになって窘める」を選んでいた場合
*selectA

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_all_00160_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「多亏龙…龙一及时控制住局面」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_all_00160_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「哦哦！龙一同学也有特异功能吗！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别这么说！被相提并论的感觉很糟！」
[np]

;//ここまで
[jump target="*selectEnd"]

;//「関わったら負けだ……！」を選んでいた場合
*selectB

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_all_00160_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「不过最后总算避免了正面冲突……」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_all_00160_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「太危险了……！要是打起来可是会出人命的！」
[np]
[FACEHIDE]

[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00160_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「确实。早上的上学时段要是出事，学生们都会被波及」
[np]
[FACEHIDE]

;//ここまで
[jump target="*selectEnd"]

;//合流地点
*selectEnd

[char_erase name="aoi akane sousi"]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_all_00160_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「一大早又干了什么奇怪的事……？真是的……」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_all_00160_012.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「这也是没办法的事！葵可是守护伏木庄、乃至整个苍心学园和平的黑暗英雄呢！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_all_00160_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「是是是，你说得都对……」
[np]
[FACEHIDE]

[r]嘿……
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_all_00160_013.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「嗯？怎么了龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、不……那个、怎么说呢。茜和爽史都能自然地跟上葵的节奏啊」
[np]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_all_00160_014.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「那当然！我们可是多年老友啊！」
[np]
[FACEHIDE]

[char_erase name="aoi akane chisato"]

[sousi storage="B_seifuku_M B_3_M"]
[playcv storage="sousi_all_00160_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「小日向同学的设定颇具二次元魅力，实在令人着迷」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[character name="ryuichi"]
【龙一】[r]「这样啊，你们四个从高一就是同班同学对吧？」
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00160_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「没错。不过葵住进宿舍，是今年四月份才开始的事」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……是这样吗？」
[np]

[char_erase name="chisato"]

[r]对于我的疑问，葵轻轻点了点头。
[np]

[character name="ryuichi"]
【龙一】[r]「为什么要在二年级的时候……？」
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_all_00160_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「那个是因为……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]葵说到这里稍稍停顿，露出一副若有所思的样子……
[np]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00160_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「……是为了潜入那个魔女的怀抱！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂，你的身份不是完全暴露了吗」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00160_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「那是迫不得已！如果不那么做的话，我们的性命就——」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_all_00160_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「好啦好啦。虽然聊得很起劲，但再不快点吃午休就要结束了哦」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_all_00160_015.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「和昨天一样，大家聊得真热闹啊」
[np]
[FACEHIDE]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00160_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「下节是体育课……也没法继续悠闲了」
[np]
[FACEHIDE]

[char_erase name="sousi akane chisato"]

[r]茜和爽史，都和葵认识很久了吗……
[np]

[r]通过这次午休，关于今后该如何与葵相处这件事……似乎稍微有了些头绪。
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

;;//JUMP:all_00170
[jump storage="scenario/all/all_00170.ks"]
