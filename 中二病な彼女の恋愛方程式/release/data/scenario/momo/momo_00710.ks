[SCENESTART file=momo_00710.ks]
;//momo_00710
;//BG:bg02_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM06.ogg" time=1000]

;//TIME:夕
;//日付:8/1(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[supica storage="C1_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00710_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「啊，等一下真珠星。汤汁会溅到衣服上的」
[np]
[FACEHIDE]

[supica storage="B2_sifuku_M AB_5_M"]
[playcv storage="supica_momo_00710_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_sifuku"]
【真珠星】[r]「……那是面条的问题」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[r]到了晚饭时间，现在大家都聚集在客厅里……
[np]

[momo storage="B_sifuku_L AB_2_L"]
[playcv storage="momo_momo_00710_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「……呵呵♪」
[np]
[FACEHIDE]

[r]从刚才开始，始终挂着幸福表情的桃酱……
[np]

[r]在对面注视着这一幕，此刻大概正露出严肃表情的我。
[np]

[char_erase name="momo"]

[satomi storage="C_sifuku_M CD_6_M"]
[playcv storage="satomi_momo_00710_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_6_FACE_sifuku"]
【圣水】[r]「素面……素面应该没问题吧，哈哈哈……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_momo_00710_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「……？怎么了？」
[np]
[FACEHIDE]

[char_erase name="mion satomi"]

[r]桃酱……怀孕的事，是真的吗……？
[np]

[r]后来我在网上查了很多资料……
[np]

[r]虽然因人而异，但资料显示孕吐等初期症状最早也要四周左右才会出现。
[np]

[r]甚至还查了生理周期和月经相关的内容，要是被人看到绝对会被当成变态……
[np]

[r]唯一能确定的，只有桃酱怀孕还为时过早……这一事实。
[np]

[aoi storage="A_tokushu_M A_7_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00710_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「喂、喂，龙一……？」
[np]
[FACEHIDE]

[r]但当事人对此深信不疑……
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_momo_00710_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「等等……你在干什么？那是麦茶不是面汤调料……啊啊……」
[np]
[FACEHIDE]

[r]要向那样的桃酱告知我所调查的事实，无论如何都让我感到退缩。
[np]

[character name="ryuichi"]
【龙一】[r]「吸溜吸溜……」
[np]

[r]只要想象到她发现自己朝思暮想的宝宝只是场误会时的反应……
[np]

[r]嗯……这素面怎么有股怪味……
[np]

[char_erase name="chisato aoi"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_momo_00710_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「他好像还没察觉呢……真有趣，继续看戏吧」
[np]
[FACEHIDE]

[char_erase name="mion"]

[momo storage="D_sifuku_L D_2_L"]
[playcv storage="momo_momo_00710_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「嗯～……♪　素面真好吃！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[satomi storage="B_sifuku_M AB_1_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00710_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「七月明明吃了那么多素面，八月这还是第一次吧？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_momo_00710_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「这不是理所当然吗？今天可是八月一号啊……」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[r]星期一……星期一去妇产科做检查……
[np]

[r]大概到那时候就能弄清楚了……在那之前就……
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

[jump storage="scenario/momo/momo_00720.ks"]