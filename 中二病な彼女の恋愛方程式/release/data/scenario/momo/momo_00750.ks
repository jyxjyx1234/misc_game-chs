[SCENESTART file=momo_00750.ks]
;//momo_00750
;//BG:bg19_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM04.ogg" time=1000]

;//TIME:昼
;//日付:8/2(日)
;//CH:竜一,sifuku
;//CH:もも,sifuku

[momo storage="B_sifuku_M AB_1_M"]
[playcv storage="momo_momo_00750_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「卷心菜、韭菜、绞肉……啊，千圣小姐是要包饺子吗……？」
[np]
[FACEHIDE]

[r]从购物中心返回车站前的我们，正在冷气充足的超市里采购。
[np]

[r]桃酱单手拿着绫濑给的字条，把蔬菜放进购物篮。
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00750_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「然后还有纳豆、鲑鱼切片……啊，还得买牛奶」
[np]
[FACEHIDE]

[r]今天是周日……也就是说我明天要陪桃酱去医院。
[np]

[r]需要让医生诊断后……真诚地接受被告知的检查结果。
[np]

[momo storage="D_sifuku_M D_2_M"]
[playcv storage="momo_momo_00750_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「……呵呵♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么了吗？」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00750_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「啊，那个……总觉得挺着大肚子购物的样子，好像新婚夫妇呢……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_momo_00750_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「想象前辈是丈夫，我是妻子……就忍不住觉得开心～♪」
[np]
[FACEHIDE]

[r]看着桃酱幸福洋溢的放松表情，我也不由得跟着微笑起来。
[np]

[r]新婚夫妇啊……这种情况的话，应该算是奉子成婚的类型吧……
[np]

[character name="ryuichi"]
【龙一】[r]「啊……对了，桃酱」
[np]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00750_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「嗯，怎么啦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这件事……你还没跟大家说吧？」
[np]

[momo storage="B_sifuku_M AB_1_M"]
[playcv storage="momo_momo_00750_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「是的。想着明天去检查之后，等正式结果出来再……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……嗯。那就好」
[np]

[char_erase name="momo"]

[r]对同住一个宿舍的伙伴们隐瞒这么重要的事，怎么说都不太合适。
[np]

[r]不过，在还没百分之百确定的情况下就告诉大家，引起骚动的话我也会过意不去。
[np]

[r]因此，我认为桃酱的判断很正确……我也正打算这么做。
[np]

[r]说实话，就连现在这样一起购物的时候……心里也总有些飘飘忽忽的感觉……
[np]

[r]总之，还是要看明天的检查结果……对吧。
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

[jump storage="scenario/momo/momo_00760.ks"]