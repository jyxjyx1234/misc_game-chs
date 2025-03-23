[SCENESTART file=supica_00480.ks]
;//supica_00480
;//BG:bg02_01
;//TIME:昼
;//日付:7/25(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,pajyama
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

[HIDESYSTEMMENU]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[r]大约过了十分钟后……
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_supica_00480_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「大家，都好好带过来了呢。那么……」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_supica_00480_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]

[char_jump name=aoi]

【葵】[r]「首先由我来！看这个！」
[np]
[FACEHIDE]

[r]众人刚在客厅集合，葵就抢先亮出藏在背后的衣服。
[np]

;//「シャドウ・ローブ」でお願いします

[char_erase name="aoi mion"]

[aoi storage="C_tokushu_L CD_1_L"]
[playcv storage="aoi_supica_00480_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_tokushu"]
【葵】[r]「比起我现在披着的蝙蝠羽翼编织的幻影外套……这件兼具次等防御力与耐久力的大衣如何！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_supica_00480_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「哦哦……！」
[np]
[FACEHIDE]

[r]如浸过重油般漆黑的外观上装饰着诸多金属与皮带的神秘大衣。
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_supica_00480_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「师、师父，这难道是……」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_L CD_11_L"]
[playcv storage="aoi_supica_00480_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「没错……与刻耳柏洛斯展开死斗后获得的传说防具——涅墨亚的毛皮！」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[r]葵帅气宣言后，现场陷入了短暂的沉默。
[np]

[supica storage="A_pajyama_L AB2_1_L"]

[playcv storage="aoi_supica_00480_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「……真、真珠星，这个怎么样！」
[np]
[FACEHIDE]

[supica storage="C1_pajyama_L CD2_4_L"]
[playcv storage="supica_supica_00480_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「涅墨亚……栖息在那里的狮子正是如今狮子座的起源……」
[np]
[FACEHIDE]

[playcv storage="aoi_supica_00480_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「呃……」
[np]
[FACEHIDE]

[supica storage="D_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00480_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「这件毛皮…和狮子座有关系吗…？」
[np]
[FACEHIDE]

[playcv storage="aoi_supica_00480_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「那、那个……呃……这个……」
[np]
[FACEHIDE]

[r]面对真珠星的提问，葵当场僵在原地。
[np]

[char_erase name="supica"]

[chisato storage="A_sifuku_M AB_1_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00480_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「接、接下来该我啦！」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_2_M"]
[playcv storage="chisato_supica_00480_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「啊……那、那我也……」
[np]
[FACEHIDE]

[r]正当葵陷入困境时，桃酱和绫濑同时展开了手中的衣物。
[np]

[chisato storage="C_sifuku_M CD_1_M" trans=false]
[momo storage="B_sifuku_M AB_3_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00480_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「这、这个……我觉得这种款式可能挺适合真珠星酱的……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_supica_00480_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「是啊，我也……特意选了有清凉感的荷叶边款式……」
[np]
[FACEHIDE]

[r]两人带来的都是真珠星平时常穿的连衣裙款式。
[np]

[r]两件都是可爱的设计……有点想看看真珠星穿上这些的样子呢。
[np]

[playcv storage="supica_supica_00480_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「可是……真珠星是平板身材……穿不了她们的衣服……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_6_M" trans=false]
[momo storage="B_sifuku_M AB_5_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00480_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「那、那是……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_supica_00480_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「确实是这样呢……两位都是，发育得这么出色呢」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_supica_00480_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「呀啊！？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_supica_00480_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]

[char_jump name=chisato]

【千圣】[r]「呀！？等、等一下前辈！？」
[np]
[FACEHIDE]

[char_erase name="chisato momo mion"]

[r]从背后悄然接近的前辈，用双手分别按在两人的胸口上……羡……不知廉耻！
[np]

[mion storage="A_sifuku_L AB1_1_L"]

[playcv storage="chisato_supica_00480_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「可、可是，要这么说的话前辈您也……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_L CD1_1_L"]
[playcv storage="mion_supica_00480_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「呵呵呵……我可是把这点也考虑周全了。看这个……！」
[np]
[FACEHIDE]

[r]前辈自信满满地展开的服装竟是……
[np]

[playcv storage="aoi_supica_00480_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「魔、魔女……的装束……？」
[np]
[FACEHIDE]

[playcv storage="supica_supica_00480_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_pajyama"]
【真珠星】[r]「……！」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]正如葵所说，尖顶帽与黑白配色的服装……甚至还有长袜和魔法杖等配件，整套宛如「魔法少女」的ｃｏｓｐｌａｙ装扮展现在眼前。
[np]

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00480_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「这、这是怎么回事……？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_supica_00480_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「我一年级的时候，伏木庄的圣诞晚会上有礼物交换环节……那时候，传到我手里的就是这个」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_5_M"]
[playcv storage="mion_supica_00480_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「当时我已经以魔女形象示人了，觉得这衣服特别合适……可惜尺寸完全不合身」
[np]
[FACEHIDE]

[r]确实，一眼看去就和前辈的身材不搭……特别是胸部、胸部还有胸部这些地方。
[np]

[chisato storage="C_sifuku_M CD_1_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00480_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「不过想着将来可以给入学的后辈穿着玩……就一直保留到了今天」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]

[supica storage="C1_pajyama_L CD2_12_L"]
[playcv storage="supica_supica_00480_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_pajyama"]

[char_jump name=supica]

【真珠星】[r]「真珠星要这个……！」
[np]
[FACEHIDE]

[playcv storage="momo_supica_00480_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「诶……」
[np]
[FACEHIDE]

[r]真珠星对这件衣服表现出的兴趣与之前看其他服装时截然不同。
[np]

[character name="ryuichi"]
【龙一】[r]「这种魔女装扮很合你胃口吗……？」
[np]

[supica storage="D_pajyama_L CD2_3_L"]
[playcv storage="supica_supica_00480_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_pajyama"]
【真珠星】[r]「这里，这里……还有这里都有好多星星……优秀的设计」
[np]
[FACEHIDE]

[r]啊，原来是这个原因……
[np]

[char_erase name="supica"]

[aoi storage="A_tokushu_M A_9_M" trans=false]
[chisato storage="A_sifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="aoi_supica_00480_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「可恨……没想到真珠星居然要沦为魔女的爪牙……！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_supica_00480_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「不，应该不是这个意思吧……」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]

[supica storage="A_pajyama_M AB2_1_M"]

[character name="ryuichi"]
【龙一】[r]「呃……那要不试试这件？」
[np]

[supica storage="B1_pajyama_M AB2_2_M"]
[playcv storage="supica_supica_00480_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_pajyama"]
【真珠星】[r]「嗯！」
[np]
[FACEHIDE]

[r]总觉得她似乎有点开心……
[np]

[char_erase name="supica"]

[mion storage="A_sifuku_L AB1_1_L"]

[character name="ryuichi"]
【龙一】[r]「那我们就借走了」
[np]

;//「好きなように」から小声
[mion storage="C_sifuku_L CD1_10_L"]
[playcv storage="mion_supica_00480_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「嗯，请便……随你怎么用都行。各种意义上……？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]我决定当作没听见学姐的话，将拿到手的衣服递给真珠星……
[np]

;//時間経過

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

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

[r]真珠星进入盥洗室几分钟后。
[np]

;//すぴかの衣装を特殊衣装に

[supica storage="A_tokushu_M AB_1_M"]
[playcv storage="supica_supica_00480_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_tokushu"]
【真珠星】[r]「……换好了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦……！」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_supica_00480_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「哇、好可爱啊真珠星酱……！」
[np]
[FACEHIDE]

[playcv storage="mion_supica_00480_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「嚯，还挺像模像样的嘛」
[np]
[FACEHIDE]

[r]身裹从学姐那儿借来的魔女风服装的真珠星回到了客厅。
[np]

[char_erase name="momo supica"]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_supica_00480_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「这、这是……从真珠星身上感受到强大的魔力！难道那件衣服……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别擅自添加奇怪的设定啊」
[np]

[aoi storage="C_tokushu_M CD_10_M"]
[playcv storage="aoi_supica_00480_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_tokushu"]
【葵】[r]「呜……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[supica storage="A_tokushu_L AB_1_L"]

[r]暂且不论这个……嗯，真的很可爱呢。
[np]

[r]因为是第一次看到这种装扮所以觉得新鲜……不过主要还是因为这套衣服和真珠星的气质特别相配……
[np]

[supica storage="D_tokushu_L CD_1_L"]
[playcv storage="supica_supica_00480_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_tokushu"]
【真珠星】[r]「……龙一……怎么样……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[supica storage="D_tokushu_L CD_4_L"]
[playcv storage="supica_supica_00480_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_tokushu"]
【真珠星】[r]「真珠星……合适吗……？」
[np]
[FACEHIDE]

[r]走到我面前的真珠星抬头望着我这样问道……我不由得心头一颤。
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……很可爱哦，真珠星」
[np]

[supica storage="A_tokushu_L AB_12_L"]
[playcv storage="supica_supica_00480_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_tokushu"]
【真珠星】[r]「……可爱……」
[np]
[FACEHIDE]

[supica storage="A_tokushu_L AB_3_L"]

[r]轻声呢喃后，真珠星的脸颊微微松弛下来。
[np]

[r]虽说这身打扮太过惹眼不方便外出……不过如果只穿给我看的话——
[np]

[supica storage="C1_tokushu_L CD_1_L"]
[playcv storage="supica_supica_00480_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_tokushu"]
【真珠星】[r]「那……要和真珠星约会吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[supica storage="A_tokushu_L AB_3_L"]
[playcv storage="supica_supica_00480_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_tokushu"]
【真珠星】[r]「和真珠星约会……现在就去吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「现在去……就、就穿这身？」
[np]

[supica storage="B1_tokushu_L AB_1_L"]
[playcv storage="supica_supica_00480_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_tokushu"]

[char_jump name=supica]

【真珠星】[r]「……如果龙一想的话……真珠星不介意」
[np]
[FACEHIDE]

[r]真、真的假的……还以为绝对不可能，没想到真珠星主动提出……
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_supica_00480_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「听起来很有趣啊。要不去试试？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样可以吗？」
[np]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_supica_00480_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「当然。没什么可不可以的，我只是把衣服借给真珠星……之后做什么是你们的自由吧？」
[np]
[FACEHIDE]

[char_erase name="mion"]

[supica storage="D_tokushu_L CD_3_L"]
[playcv storage="supica_supica_00480_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_tokushu"]
【真珠星】[r]「……因为」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那就……」
[np]

[char_erase name="supica"]

[r]顺风顺水地就决定去第二次约会了……不过
[np]

[r]正因为真珠星比之前更积极了，连我这边也跟着心跳加速起来……
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

;//JUMP:supica_00490
[jump storage="scenario/supica/supica_00490.ks"]
