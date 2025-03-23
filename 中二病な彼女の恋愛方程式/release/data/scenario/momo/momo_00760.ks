[SCENESTART file=momo_00760.ks]
;//momo_00760
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:昼
;//日付:8/3(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

[r]然后……
[np]

[chisato storage="D_sifuku_M CD_2_M"]
[playcv storage="chisato_momo_00760_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「真难得呢，暑假期间大家居然都到齐了」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]８月３日，星期一的早晨。
[np]

[r]正如绫濑所说，早餐的座位上不仅有桃酱和葵，连真珠星和澪音学姐也到场了。
[np]

[r]虽然这么想……
[np]

[supica storage="C2_sifuku_M CD_5_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="supica_momo_00760_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_sifuku"]
【真珠星】[r]「呼……呼……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_momo_00760_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「真、真珠星酱，吃饭的时候不可以睡着哦……？」
[np]
[FACEHIDE]

[r]大约有一人正在进行边吃饭边睡觉的高难度动作。不愧是来自宇宙的生命体。
[np]

[char_erase name="momo supica"]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_momo_00760_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「千圣，可以给我咖啡吗？」
[np]
[FACEHIDE]

;//[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_momo_00760_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「好的，请稍等一下哦」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]久违的热闹而又和睦的氛围中……
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]我一个人满脑子都是接下来要和桃酱一起去的地方。
[np]

[r]说到妇产科……当然我从未进去过，自己也没接受过相关治疗……到底是个怎样的地方呢。
[np]

[r]作为陪同的我，只要在候诊室等着就行了吗……以我们这样的年纪，果然会被用异样的眼光看待吗？
[np]

[r]虽然满脑子都在想这些事……
[np]

[momo storage="A_sifuku_L AB_2_L"]
[playcv storage="momo_momo_00760_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「……呵呵♪」
[np]
[FACEHIDE]

[r]和我对上目光的桃酱，脸上露出没有一丝不安的笑容。
[np]

[char_erase name="momo"]

[r]唉，事到如今再怎么担心也没用……不去亲眼看看是不会明白的。
[np]

[aoi storage="D_tokushu_M CD_2_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00760_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「我吃好了！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_momo_00760_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「好——餐具就放在那边吧」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]

[r]葵将吃完的餐具拿到水槽边后，脚步轻快地上了楼梯。
[np]

[r]将视线移回自己的吐司后……我咬了一口烤得酥脆的吐司边。
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

[jump storage="scenario/momo/momo_00770.ks"]