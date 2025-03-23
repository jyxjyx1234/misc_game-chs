[SCENESTART file=supica_00470.ks]
;//supica_00470
;//BG:bg02_01
;//TIME:昼
;//日付:7/25(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,pants
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[chisato storage="A_sifuku_L AB_6_L"]
[playcv storage="chisato_supica_00470_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「呜哇、今天也好热啊……打工的地方肯定又要忙死了……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]自海边初次约会后，过了几天的周六早晨。
[np]

[r]今天难得和葵、桃酱、绫濑还有我四个人聚在一起吃早饭。
[np]

;//「やくそくのち」のままで大丈夫です
[aoi storage="D_tokushu_M CD_1_M" trans=false]
[momo storage="C_sifuku_M C_1_M" trans=false]
[char_trans]

[playcv storage="aoi_supica_00470_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「当灼热太阳照耀我等头顶之际……通向约定之地的门扉即将开启……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_supica_00470_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「这、这么说难道……今天也要去吗……？」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[r]顺带一提，澪音学姐最近天天通宵网游，总是睡到中午才起……
[np]

[r]真珠星也裹着自己的被子睡得正香，就让她继续睡了。
[np]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00470_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「酷暑天啊……七月份就这么热，八月份可怎么熬」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_supica_00470_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「晚上也热得睡不着呢……可是开整晚空调又会着凉……」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[fadeoutbgm time="1000"]

[r]确实啊……不过真珠星就经常因此脱睡衣——
[np]

[playcv storage="supica_supica_00470_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「……早啊……」
[np]
[FACEHIDE]

[supica storage="C1_pantu_M CD2_1_M" from="right" accel="0"]

[character name="ryuichi"]
【龙一】[r]「哦，早——呃啊啊啊啊啊啊啊啊啊啊啊！！！？？」

[playse buf=5 storage="sound/20310.ogg"]

[quake time="500"]

[np]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_supica_00470_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「怎么了？等等你干嘛！？」

[chisato storage="A_sifuku_M AB_9_M"]

[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]

[char_jump name=chisato]

[np]
[FACEHIDE]

[playcv storage="momo_supica_00470_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「真、真珠星酱！？」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[supica storage="A_pantu_L AB2_1_L"]

[playcv storage="aoi_supica_00470_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「那、那那那身打扮……！」
[np]
[FACEHIDE]

[supica storage="D_pantu_L CD2_1_L"]
[playcv storage="supica_supica_00470_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「……？」
[np]
[FACEHIDE]

[r]说曹操曹操到，我回应着从楼梯传来的真珠星的声音……
[np]

[r]万万没想到她居然会以这副模样来到客厅呃啊啊啊啊啊啊啊！！！
[np]

[chisato storage="A_sifuku_M AB_10_M"]
[playcv storage="chisato_supica_00470_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「真、真珠星！你这穿的是什么呀！？」
[np]
[FACEHIDE]


[r]面对只穿着内裤紧搂玩偶的真珠星，绫濑给出了理所当然的反应。
[np]

[char_erase name="supica chisato"]

[supica storage="B4_pantu_M AB2_1_M" trans=false]
[momo storage="D_sifuku_M D_10_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00470_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「衣、衣服呢！你的衣服去哪了！？」
[np]
[FACEHIDE]

[supica storage="D_pantu_M CD2_4_M"]
[playcv storage="supica_supica_00470_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「……太热了，就脱掉了」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_supica_00470_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「确、确实很热啦！但也不能因为这个理由就穿成这样……！」
[np]
[FACEHIDE]

[supica storage="A_pantu_M AB2_1_M"]
[playcv storage="supica_supica_00470_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「……可是炎热的时候，这样最——」
[np]
[FACEHIDE]

[char_erase name="supica momo aoi"]

[supica storage="A_pantu_L AB2_1_L"]

[playse buf=5 storage="sound/10010.ogg"]

[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「哦哦哦哦哦哦哦哦哦不行啊真珠星啊啊啊啊啊啊啊啊啊啊啊！！！」
[np]

[supica storage="C1_pantu_L CD2_5_L"]
[playcv storage="supica_supica_00470_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_pantu"]

[char_jump name=supica]

【真珠星】[r]「唔嗯……唔咕唔咕……」

[char_jump name=supica]

[np]
[FACEHIDE]

[r]他猛地从座位上跳起，以光速伸手捂住真珠星的嘴。
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_supica_00470_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「怎、怎么了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没、没什么……别在意，哈哈哈……」
[np]

[r]要是让大家知道真珠星在炎热早晨总是这副模样……那绝对会引起各种麻烦！
[np]

[supica storage="A_pantu_L AB2_4_L"]

[character name="ryuichi"]
【龙一】[r]「总、总之真珠星，快穿上衣服！这是作为文明人最基本的礼仪啊！」
[np]

[supica storage="D_pantu_L CD2_4_L"]
[playcv storage="supica_supica_00470_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「……真珠星在成为文明人之前，首先是这个星球的观测者……没有理由遵循地球人的礼仪」
[np]
[FACEHIDE]

[r]这种时候就别搬出那个设定了！！
[np]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00470_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「但、但是真珠星，不管怎么说这也……」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[mion storage="C_sifuku_L CD1_4_L"]
[playcv storage="mion_supica_00470_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「真是……吵死了……」
[np]
[FACEHIDE]

[playcv storage="aoi_supica_00470_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「啊！」
[np]
[FACEHIDE]

[fadeoutbgm time="1000"]

[char_erase name="mion"]

[r]从二楼传来一阵慵懒的声音。
[np]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[r]澪音前辈轻轻整理略微凌乱的黑发，缓步走下楼梯来到客厅。
[np]

[chisato storage="A_sifuku_M AB_6_M" trans=false]
[mion storage="C_sifuku_M CD1_4_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00470_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「怎么回事啊……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00470_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「什、什么怎么回事……你、你们看这身打扮！」
[np]
[FACEHIDE]

[playcv storage="supica_supica_00470_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「……早……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_supica_00470_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「嗯，早安……穿得倒是挺大胆的，有什么问题吗？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_10_M"]
[playcv storage="chisato_supica_00470_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「这、这哪里只是大胆的问题！是裸体啊裸体！」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[supica storage="D_pantu_L CD2_1_L"]
[playcv storage="supica_supica_00470_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pantu"]
【真珠星】[r]「没全裸……穿着……内裤……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_10_M"]
[playcv storage="chisato_supica_00470_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]

[char_jump name=chisato]

【千圣】[r]「这和全裸根本没区别！」
[np]
[FACEHIDE]

[supica storage="A_pantu_L AB2_1_L"]
[playcv storage="supica_supica_00470_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pantu"]
【真珠星】[r]「没区别……那、可以脱掉……？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_supica_00470_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「当然不行啊！」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[r]那条内裤对真珠星来说，大概就是最后的良知象征吧……
[np]

[r]还、还有闲工夫想这些！虽说宿舍里的人早就习以为常，但她现在可是当着大家面赤身裸体啊！
[np]

[mion storage="C_sifuku_L CD1_4_L"]
[playcv storage="mion_supica_00470_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「夏天这么热，脱衣服很正常吧？这里改建成公共宿舍前，这个季节大家不都是这样的么」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈……！！」
[np]

[playcv storage="chisato_supica_00470_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_sifuku"]
【千圣】[r]「喂、喂！你在关注什么啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是……」
[np]

[mion storage="A_sifuku_L AB1_1_L"]
[playcv storage="mion_supica_00470_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「我一年级时还见过三年级的学姐不穿胸罩，只套着条内裤在宿舍走廊晃悠……」
[np]
[FACEHIDE]

[r]多么令人向往的故事……光凭想象就能轻松干掉三十碗饭！
[np]

[mion storage="C_sifuku_L CD1_9_L"]
[playcv storage="mion_supica_00470_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「不过那位学姐体重过百斤确实丰满，怕热也情有可原」
[np]
[FACEHIDE]

[char_erase name="mion"]

[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「呕呃呃呃呃呃呃呃呃呃呃呃呃！！」
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_supica_00470_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]

[char_jump name=aoi]

【葵】[r]「哇啊啊！？别、别吐在这里龙一！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]要命……三十碗饭的量都要吐出来了……
[np]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_supica_00470_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「所以说了，我倒觉得没什么大不了……」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_supica_00470_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「但、但是现在可是公共宿舍啊……就算是男朋友在场，在男生面前这样也太……！」

[char_jump name=momo]

[np]
[FACEHIDE]

[char_erase name="momo mion"]

[supica storage="A_pantu_L AB2_1_L"]

[character name="ryuichi"]
【龙一】[r]「嗯，桃酱说得对！真珠星，快把衣服穿上！」
[np]

[supica storage="B1_pantu_L AB2_4_L"]
[playcv storage="supica_supica_00470_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_pantu"]
【真珠星】[r]「……可是今天真的好热……我不想穿……」
[np]
[FACEHIDE]

[playcv storage="chisato_supica_00470_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「就算再热大家也都穿着衣服！这才是正常情况吧！」
[np]
[FACEHIDE]

[supica storage="D_pantu_L CD2_10_L"]
[playcv storage="supica_supica_00470_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_pantu"]
【真珠星】[r]「……地球人的常识，就是真珠星的非常识……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[chisato storage="D_sifuku_M CD_11_M" trans=false]
[momo storage="C_sifuku_M C_10_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00470_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「可、可恶……」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_supica_00470_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「请、请冷静点，千圣学姐……」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[r]真拿她没辙……真珠星那家伙，估计有一半是在赌气吧……
[np]

[r]不过也不能放任她这样下去…得想办法让真珠星乖乖穿上衣服……
[np]

[mion storage="B_sifuku_L AB1_1_L"]
[playcv storage="mion_supica_00470_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「那么…我倒有个主意」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什么主意？」
[np]

[mion storage="C_sifuku_L CD1_1_L"]
[playcv storage="mion_supica_00470_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「现在让大家各自挑选真珠星可能喜欢的衣服…然后由她亲自挑选」
[np]
[FACEHIDE]

[char_erase name="mion"]

[aoi storage="A_tokushu_M A_1_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]


[playcv storage="momo_supica_00470_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「啊……这个主意或许不错！」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_1_M"]
[playcv storage="aoi_supica_00470_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「嗯～真珠星适合的衣服……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[chisato storage="D_sifuku_M CD_1_M" trans=false]
[mion storage="B_sifuku_M AB1_1_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00470_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「确实……听起来还挺有意思的。啊不过尺寸……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_supica_00470_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「那大家先回房间拿……啊不过这段时间让她一直保持这个状态也不太好……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个交给我解决。来吧真珠星，我们也去房间」
[np]

[char_erase name="mion chisato"]

[supica storage="D_pantu_M CD2_4_M"]
[playcv storage="supica_supica_00470_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pantu"]
【真珠星】[r]「……嗯～……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「穿你平时那件Ｔ恤就行……好吗？」
[np]

[supica storage="D_pantu_M CD2_11_M"]
[playcv storage="supica_supica_00470_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_pantu"]
【真珠星】[r]「……知道了」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]太好了……虽然有些不情愿，但总算是让她接受了。
[np]

[r]那么真珠星的时装秀……虽然说是时装秀有点夸张，但大家会带什么样的衣服过来，倒是有点期待呢。
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

;//JUMP:supica_00480
[jump storage="scenario/supica/supica_00480.ks"]
