[SCENESTART file=momo_00340.ks]
;//momo_00340
;//BG:bg01_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM06.ogg" time=1000]

;//TIME:夜
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,seifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[momo storage="C_seifuku_M C_5_M"]
[playcv storage="momo_momo_00340_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_seifuku"]
【桃】[r]「……已经到了呢」
[np]
[FACEHIDE]

[r]仿佛在依依不舍两人的时光般，桃酱遗憾地低语。
[np]

[character name="ryuichi"]
【龙一】[r]「那么……该怎么办呢？」
[np]

[r]我所询问的，当然是指如何应对宿舍的大家。
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00340_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「是、是啊……该怎么办才好呢……」
[np]
[FACEHIDE]

[r]我本身并没有特别要隐瞒的意思……打算被问起时就如实回答。
[np]

[r]刻意隐瞒的话迟早会暴露，而且本来就没有隐瞒的必要……
[np]

[character name="ryuichi"]
【龙一】[r]「……就顺其自然……这样可以吗？」
[np]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00340_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「好、好的……我觉得没问题」
[np]
[FACEHIDE]

[r]好，那么……
[np]

[char_erase name="momo"]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[character name="ryuichi"]
【龙一】[r]「我回来了」
[np]

[r]佯装无事地推开玄关大门，正在脱鞋时——
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00340_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「欢迎回来。然后，怎么样了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[r]突然被双手叉腰摆出金刚力士姿势的前辈迎接了。
[np]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_momo_00340_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「啊、欢迎回来小桃……！」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00340_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「我、我回来了……咦，咦……？」
[np]
[FACEHIDE]

[r]在这位前辈身后，绫濑和真珠星、手拿罐装啤酒的圣水，以及不知为何满头大汗的葵——
[np]

[aoi storage="D_tokushu_M CD_5_M"]
[playcv storage="aoi_momo_00340_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「对、对不起两位！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇！？」
[np]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00340_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「啊、葵小姐……！？」
[np]
[FACEHIDE]

[r]突然插进前辈和我们之间的葵，在玄关突然开始下跪磕头。
[np]

[aoi storage="C_tokushu_M CD_6_M"]
[playcv storage="aoi_momo_00340_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_tokushu"]
【葵】[r]「实在扛不住这个性恶魔女的拷问……我、我就……那个、小桃她……小桃今天……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00340_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊……难道是说向前辈告白的事……？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_5_M"]
[playcv storage="aoi_momo_00340_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_tokushu"]
【葵】[r]「……被捆住四肢挠痒痒……实在扛不住……！」
[np]
[FACEHIDE]

[r]所谓的拷问就是挠痒痒啊……
[np]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00340_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「没、没关系的葵小姐……那、那个该怎么说呢……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_momo_00340_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「至少我已经……把我喜欢前辈的事……告诉真珠星酱和澪音学姐了所以……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_momo_00340_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
[char_quake name="aoi"]
【葵】[r]「哎……原、原来是这样吗！？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_momo_00340_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「顺带一提，我也早就察觉到了」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_8_M"]
[playcv storage="aoi_momo_00340_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「怎么会……！？」
[np]
[FACEHIDE]

[char_erase name="aoi momo chisato"]

[satomi storage="B_sifuku_M AB_7_M" trans=false]
[mion storage="A_sifuku_M AB1_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00340_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「哎？难道就我不知道？全靠葵的证词才知情」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_9_M"]
[playcv storage="mion_momo_00340_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「圣水平日里总醉醺醺的，这也难怪……好了」
[np]
[FACEHIDE]

[r]澪音前辈隔着仍跪在地上的葵，再次转向我们这边。
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00340_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「看这情形……告白算是成功了？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00340_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「啊…………是、是的……♪」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00340_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「既然如此……这些料理也不会浪费了呢」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00340_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「哎……？」
[np]
[FACEHIDE]

[char_erase name="momo mion satomi"]

[r]前辈这么说着，在众人让出的道路尽头……
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇……！」
[np]

[r]位于客厅中央的餐桌上，摆满了寿司和披萨这类外卖食品，还有薯条、炸鸡、沙拉和果汁……
[np]

[r]这根本就是派对开始的菜单嘛……！
[np]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00340_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「好、好厉害……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_momo_00340_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「听说小桃要告白，大家就赶紧准备了这些」
[np]
[FACEHIDE]

[r]虽然很感谢这份心意，但要是告白失败的话你们打算怎么收场啊……
[np]

;//[satomi storage="A_sifuku_M A_1_M"]
[playcv storage="satomi_momo_00340_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「好啦好啦，大家快拿好杯子呀—。人家等得都累死了—！」
[np]
[FACEHIDE]

[r]……这种问题，多想就显得不解风情了
[np]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_momo_00340_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「圣水小姐刚才开始就在喝了吧……那大家也拿饮料……」
[np]
[FACEHIDE]

[r]接过早已倒满果汁的杯子，与大家目光交汇…
[np]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_momo_00340_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「那个…要不让葵来主持比较好吧？」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[aoi storage="A_tokushu_L A_8_L"]
[playcv storage="aoi_momo_00340_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
[char_jump name="aoi"]
【葵】[r]「哎…为、为什么是我！？」
[np]
[FACEHIDE]

;//[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00340_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「因为你是师父呀？」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_L CD_8_L"]
[playcv storage="aoi_momo_00340_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「啊…呜…那个…」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_L CD_3_L"]
[playcv storage="aoi_momo_00340_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「为、为黑暗献上…不对！祝、祝桃和龙一…永远幸福…！干、干杯！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[fadeoutbgm time=1000]

;//合わせ
[mion storage="C_sifuku_M CD1_3_M" trans=false]
[chisato storage="C_sifuku_M CD_3_M" trans=false]
[supica storage="C1_sifuku_M CD_3_M" trans=false]
[char_trans]
[playcv storage="momo_mix_00340_001.ogg" name="women"]
[character name="women"]
【一同】[r]「干杯——！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/30220.ogg"]
[wait time="500"]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]
[char_erase name="mion chisato supica"]

[r]众人碰杯后仰头畅饮。
[np]

[r]没想到会以这样的形式得到祝福…真是做梦都没想过。
[np]

[supica storage="B1_sifuku_M AB_12_M"]
[playcv storage="supica_momo_00340_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_sifuku"]
【真珠星】[r]「…桃…」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_momo_00340_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「啊真珠星酱……」
[np]
[FACEHIDE]
[supica storage="B2_sifuku_M AB_2_M"]
[playcv storage="supica_momo_00340_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「…恭喜你」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00340_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「……嗯谢谢你真珠星酱……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[satomi storage="A_sifuku_M AB_10_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00340_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「嗯——寿司好好吃啊——！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_11_M"]
[playcv storage="chisato_momo_00340_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「圣水小姐、请别光吃大脂！」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[aoi storage="A_tokushu_M A_5_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00340_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「可恶……没想到、我居然会败在魔女手下……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_momo_00340_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「不过托她的福、现在大家能这样热热闹闹聚在一起……多少也算是个安慰吧？」
[np]
[FACEHIDE]

;//「ダークリベンジャー」でお願いします
[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00340_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「啰、啰嗦！我可是——漆黑复仇者——！正如其名、无论多少次都会重生！」
[np]
[FACEHIDE]

[char_erase name="aoi mion"]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_momo_00340_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「别拿着炸鸡乱挥」
[np]
[FACEHIDE]

[r]确实、要不是葵自曝身份、晚餐也不会这么丰盛吧。
[np]

[r]不过话说回来其他人大致也都察觉到桃酱的心意了吧……现在回想起来确实可能挺明显的……
[np]

[char_erase name="chisato"]

[satomi storage="B_sifuku_M AB_7_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00340_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「唔、咕嘟……嗯啊、有了！」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M A_11_M"]
[playcv storage="chisato_momo_00340_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「请不要边吃边说话！」
[np]
[FACEHIDE]

[satomi storage="D_sifuku_M CD_3_M"]
[playcv storage="satomi_momo_00340_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「嗯、咕……还有个好消息哦！主要是给龙一的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「给我的？」
[np]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_momo_00340_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「之前说的漏水维修工这周就会来啦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎、这么说……」
[np]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_momo_00340_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「这样一来龙一君就能如愿以偿独居一室啦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「噢噢……！！」
[np]

[char_erase name="satomi chisato"]

[r]按时间算不过短短三周……但对我来说却无比漫长……！
[np]

[r]终于……终于能告别牢笼般的生活了！！
[np]

[r]这种说法怎么透着一股犯罪者的气息啊！
[np]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00340_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「学长、太好了呢……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊啊谢谢你桃酱！」
[np]

[char_erase name="momo"]

[r]这样一来、我就不用独自在客厅露出蠢兮兮的睡相——
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_momo_00340_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「龙一君真的需要一个人住吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]接连不断的喜讯让我兴奋不已……但前辈的一句话让我冷静了下来。
[np]

[character name="ryuichi"]
【龙一】[r]「说、说什么呢？当然有必要啊」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00340_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「可是……龙一君不是刚和桃开始交往吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是、是这样没错……」
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00340_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「那直接住一个房间不就好了」
[np]
[FACEHIDE]

;//表記は合わせで
[char_erase name="mion"]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00340_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【龙一＆桃】[r]「！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="A_seifuku_M AB_9_M" trans=false]
[satomi storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00340_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「等、澪音前辈……！？」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_momo_00340_009.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「啊，原来如此」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[character name="ryuichi"]
【龙一】[r]「不、哪里来的「原来如此」啊！」
[np]

[r]虽说我们确实开始交往了……但、但突然就要做这么高难度的事……！
[np]

[aoi storage="A_tokushu_M A_9_M" trans=false]
[momo storage="C_seifuku_M C_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00340_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「两、两个人住同一个房间……桃、这怎么行啊！？」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00340_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「呜、呜哎哎哎！？那、那个、这个……！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[chisato storage="C_sifuku_M CD_9_M"]
[playcv storage="chisato_momo_00340_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「虽说是恋人关系……突然这样实在是……不过……」
[np]
[FACEHIDE]

[r]面对澪音前辈的爆炸性发言，众人各自展现出不同的反应后……
[np]

[char_erase name="chisato"]

[supica storage="C2_sifuku_M CD_11_M"]
[playcv storage="supica_momo_00340_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「……盯……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[momo storage="D_seifuku_L D_8_L"]
[playcv storage="momo_momo_00340_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「那、那个……这个……」
[np]
[FACEHIDE]

[r]所有人的视线都集中到了桃酱身上
[np]

[momo storage="C_seifuku_L C_4_L"]
[playcv storage="momo_momo_00340_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_seifuku"]
【桃】[r]「和、和前辈住同一间房……！那个、我、我并不是不愿意……但、但是……！」
[np]
[FACEHIDE]

[r]成为众人瞩目焦点的桃酱像平时一样手忙脚乱了一番之后……
[np]

[momo storage="B_seifuku_L AB_8_L"]
[playcv storage="momo_momo_00340_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「那、那个……请、请让我稍微考虑一下……！」
[np]
[FACEHIDE]

[r]桃酱干得漂亮……！大概这就是最稳妥的回答吧！
[np]

;[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00340_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「也就是说，将来会以同居的形式……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_L AB_7_L"]
[playcv storage="momo_momo_00340_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「这、这个嘛，那个、那个……！」
[np]
[FACEHIDE]

[char_erase name="momo mion"]

[chisato storage="C_sifuku_M CD_5_M" trans=false]
[satomi storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00340_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「前辈，都说了别太煽风点火啦……」
[np]
[FACEHIDE]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_momo_00340_010.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊，顺便一提同居完全没问题哦。既然在交往就一点问题都没有！」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[r]真轻率啊……在普通的学生宿舍里根本不敢想象会有这种宽容度。
[np]

[r]……不过，和桃酱同居吗……
[np]

[momo storage="C_seifuku_L C_10_L"]
[playcv storage="momo_momo_00340_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
【桃】[r]「啊、呜啊呜啊呜呜呜～……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]说的也是啊，我们才刚刚成为恋人……
[np]

[r]这种事……也是被允许的关系了吧。
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

[jump storage="scenario/momo/momo_00350.ks"]