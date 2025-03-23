[SCENESTART file=momo_00690.ks]
;//momo_00690
;//BG:bg01_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM05.ogg" time=1000]

;//TIME:昼
;//日付:8/1(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「确实挺热的……」
[np]

[r]结束了上午的打工，我回到了宿舍。
[np]

[r]虽然出门的时候还没那么热，不过太阳升高气温自然也跟着上来了。
[np]

[r]或许是因为刚才一直待在开着空调的店里，现在有点理解圣水当时想当场喝啤酒的心情了。
[np]

;//背景を寮のリビングbg02_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「我回来了——」
[np]

[satomi storage="B_sifuku_M AB_10_M"]
[playcv storage="satomi_momo_00690_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「啊，欢迎回来……嗯，嗯……噗哈……」
[np]
[FACEHIDE]

[r]那应该就是刚才买的啤酒吧……已经开始喝了吗。
[np]

[char_erase name="satomi"]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_momo_00690_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「哦，回来了啊龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我回来了……话说，咦？」
[np]

[r]葵站在厨房里还挺少见的……或者说，除了洗碗之外我还是第一次见到。
[np]

[character name="ryuichi"]
【龙一】[r]「葵，你在做东西吗？」
[np]

[aoi storage="C_tokushu_M CD_3_M"]
[playcv storage="aoi_momo_00690_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「是啊……今天千圣去打工，魔女在睡觉，圣水和桃也出门了……所以只好由我来露一手了」
[np]
[FACEHIDE]

[r]真珠星……原来从一开始就没算上她啊。
[np]

[character name="ryuichi"]
【龙一】[r]「哦哦，是冷面啊」
[np]

[r]虽然之前还在想她的厨艺到底如何，但至少卖相看着不差。
[np]

[aoi storage="D_tokushu_M CD_1_M"]
[playcv storage="aoi_momo_00690_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「马上就做好了，你就好好期待吧。接下来——」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[playcv storage="momo_momo_00690_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「我回来了……」
[np]
[FACEHIDE]

[playcv storage="satomi_momo_00690_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「喔——欢迎回来小桃——」
[np]
[FACEHIDE]

[r]我刚回到宿舍，前后脚的功夫，桃酱也回来了。
[np]

[character name="ryuichi"]
【龙一】[r]「回来啦桃酱。出去哪儿了吗？」
[np]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_momo_00690_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「啊……是、是的。稍微…散了会儿步……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这么热的天还真有兴致出门啊……」
[np]

[momo storage="D_sifuku_M D_3_M"]
[playcv storage="momo_momo_00690_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「是、是啊……！虽然自己也这么觉得，不过该说是转换心情吧……适、适量的运动还是很有必要的……！」
[np]
[FACEHIDE]

[r]这道理虽然没错……转换心情？
[np]

[r]嘛，可能也不是什么需要深究的事情……
[np]

[char_erase name="momo"]

[playcv storage="aoi_momo_00690_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_2_FACE_tokushu"]
【葵】[r]「好，完成了！！」
[np]
[FACEHIDE]

[r]正这么想着时，葵已经端着盛满冷面的盘子陆续摆上桌。
[np]

[HIDESYSTEMMENU]
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

;//時間経過
[r]随后，我与桃酱洗完手，在餐桌旁落座……
[np]

[satomi storage="B_sifuku_M AB_7_M"]
[playcv storage="satomi_momo_00690_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「喔，看起来很好吃嘛！明明有这手艺，葵平时就该多下厨啊」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[aoi storage="D_tokushu_M CD_5_M"]
[playcv storage="aoi_momo_00690_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「虽然我也想帮忙……但千圣说求我千万别进厨房」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]嗯……？
[np]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_momo_00690_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「那我就不客气啦♪」
[np]
[FACEHIDE]

[r]刚才那句话让我在意地拿着筷子……先喝了口麦茶。
[np]

[r]端着玻璃杯装作不经意地……观察圣水将面条和配菜一起吸入口中的模样。
[np]

[satomi storage="C_sifuku_M CD_5_M"]
[playcv storage="satomi_momo_00690_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
【圣水】[r]「嗯，嗯唔……嗯——……………嗯嗯？」
[np]
[FACEHIDE]

[r]然而令人意外的是。圣水保持着营业式笑容突然定格不动……
[np]

[satomi storage="A_sifuku_M AB_5_M"]
[playcv storage="satomi_momo_00690_006.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_5_FACE_sifuku"]
【圣水】[r]「呜噗……呜、呜咕……」
[np]
[FACEHIDE]

[r]眼看着她的脸色迅速发青——
[np]

[fadeinbgm storage="sound/BGM14.ogg" time=1000]
[satomi storage="B_sifuku_M AB_6_M"]
[playcv storage="satomi_momo_00690_007.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_6_FACE_sifuku"]
【圣水】[r]「嗯嗯嗯嗯！！！？？」
[np]
[FACEHIDE]

;//[playse buf=5 storage="sound/00150.ogg"]
;//[wait time="500"]

[char_erase name=satomi to=right time=800 fade=true]

[r]她以弹飞椅子的势头猛然起身，一头冲进盥洗室……
[np]

;//遠くから聞こえる風に
[playcv storage="satomi_momo_00690_008.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_10_FACE_sifuku"]
【圣水】[r]「呜诶诶噜噜噜噜噜噜噜——————————！！！！！」
[np]
[FACEHIDE]

[r]……代替临终惨叫的，是我们在用餐时绝对不想听到的呕吐声。
[np]

;//二つ目の聖水は「せいすい」でお願いします
[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_momo_00690_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「圣水那家伙，又被身体侵蚀了吧……所以千圣总是说，要控制圣水的过量摄取……」
[np]
[FACEHIDE]

[r]圣水小姐那种状态，偶尔会在宿醉严重的清晨见到……
[np]

[r]但这次……原因绝对不是那个！
[np]

[character name="ryuichi"]
【龙一】[r]「……那、那个葵」
[np]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_momo_00690_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「嗯，怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话说回来……这个，你有好好尝过味道吗？」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_momo_00690_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「没、完全没有」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这样啊……」
[np]

[aoi storage="D_tokushu_M CD_2_M"]
[playcv storage="aoi_momo_00690_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「来龙一，别客气。还有很多可以添的，尽管吃吧！」
[np]
[FACEHIDE]

[r]居然还能添饭……！真不想听到这个啊……！！
[np]

[aoi storage="A_tokushu_M A_7_M"]
[playcv storage="aoi_momo_00690_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「桃也怎么回事？从刚才开始就呆呆的……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//[momo storage="C_sifuku_M C_7_M"]
;//[playcv storage="momo_momo_00690_003.ogg" name="momo"]
;//[character name="momo"]
;//[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
;//【もも】[r]「あっ……ご、ごめんなさい。いただきます……」
;//[np]
;//[FACEHIDE]

[momo storage="A_sifuku_M AB_1_M"]
[playcv storage="momo_momo_00690_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「吸溜…………嗯……嗯咕…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、等等……！」
[np]

[r]桃酱，刚才圣水那副模样……你应该没看见吧？
[np]

[r]倒不如说，从刚才开始就神游天外……整个人心不在焉的……
[np]

[momo storage="B_sifuku_M AB_4_M"]
[playcv storage="momo_momo_00690_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「………………………………………………」
[np]
[FACEHIDE]

[playcv storage="aoi_momo_00690_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「味道如何？」
[np]
[FACEHIDE]

[momo storage="D_sifuku_M D_5_M"]
[playcv storage="momo_momo_00690_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00340.ogg"]
[wait time="500"]

[char_erase name=momo to=right time=800 fade=true]

[r]桃酱保持着和圣水完全相同的反应，径直冲向洗手间……
[np]

[r]……嗯。比起圣水显得更有女孩子样，似乎还特意避开了会让我听到声音的举动。
[np]

;//[aoi storage="A_tokushu_M A_1_M"]
;//[playcv storage="aoi_momo_00690_011.ogg" name="aoi"]
;//[character name="aoi"]
;//[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
;//【葵】[r]「…………」
;//[np]
;//[FACEHIDE]

[r]对于造成两位牺牲者这件事，葵现在究竟在想些什么。
[np]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_momo_00690_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「来吧，接下来轮到龙一了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什么叫轮到我了！不要啊！我才不想变成那样！」
[np]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_momo_00690_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「那至少尝一口告诉我感想！这些反省可以作为下次的参考！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你先自己吃啊！亲身体验才是最直接的吧！」
[np]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_momo_00690_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「这个恕难从命！因为我是——」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00690_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「学、学长！！！」
[np]
[FACEHIDE]

[r]从洗手间回来的桃酱脸色大变，急匆匆地朝我跑来。
[np]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_momo_00690_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「那…那个那个！请…请来一下我的房间！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？啊等等！？」
[np]

[char_erase name="momo aoi"]

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

[jump storage="scenario/momo/momo_00700.ks"]