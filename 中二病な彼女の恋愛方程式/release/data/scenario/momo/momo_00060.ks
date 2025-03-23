[SCENESTART file=momo_00060.ks]
;//momo_00060
;//BG:bg18_01

;//TIME:昼
;//日付:7/4(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/4(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku

;//空背景
[r]正如圣水小姐所说，经过三十分钟的电车颠簸后我们……
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_all_00390_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哇啊啊啊──！！」
[np]
[FACEHIDE]

[r]攥着别人转让的门票，我们来到了风见水族乐园，简称水乐园。
[np]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_all_00390_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「哦哦，是过山车！只要有那个就能获得突破极限的加速度……！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_all_00390_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「葵小姐葵小姐！那边有旋转木马耶！」
[np]
[FACEHIDE]

[r]葵和桃酱两人，简直像小孩子一样欢闹个不停。
[np]

[char_erase name="momo aoi"]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_all_00390_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「嚯，游乐设施种类还挺丰富的嘛……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你是第一次来这地方吗？」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_all_00390_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「是呀。虽然聊起过，但从来没来玩过」
[np]
[FACEHIDE]

[r]游乐园啊……对于不太擅长惊险项目的我来说，倒是想用其他设施来蒙混过关。
[np]

[character name="ryuichi"]
【龙一】[r]「总之，先玩哪个项目？」
[np]

[chisato storage="B_sifuku_M AB_2_M"]
[playcv storage="chisato_all_00390_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「既然都来游乐园了，果然首先应该坐过──」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00390_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「是鬼屋呀……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「鬼、鬼屋？一上来就玩这个吗……？」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_all_00390_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「离开宿舍前，我在网上查了很多资料……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00390_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「Ａｑｕａ乐园的鬼屋据说制作非常逼真，相当恐怖呢……有点在意这个」
[np]
[FACEHIDE]

[char_erase name="mion"]

;//合わせ
[aoi storage="A_tokushu_M A_7_M" trans=false]
[momo storage="A_sifuku_M AB_8_M" trans=false]
[char_trans]
[playcv storage="mix002.ogg" name="women"]
[character name="women"]
【葵・桃】[r]「呜……！」
[np]

[r]话音刚落，原本欢闹的两人动作突然戛然而止。
[np]

[momo storage="B_sifuku_M AB_6_M"]
[playcv storage="momo_all_00390_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「制、制作逼真……相当可怕的说……！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_all_00390_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「别、别怕啊桃！　鬼、鬼屋什么的终究只是人造的东西！　在我的暗黑力量面前不堪一击！！」
[np]
[FACEHIDE]

[aoi storage="D_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00390_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「最糟糕的情况就用武力让它闭嘴！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在鬼屋里动武可是违规的违规！」
[np]

[char_erase name="aoi momo"]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_all_00390_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「就、就是啊你们两个，不用这么害怕啦……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00390_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「哎呀……？　这么说来千圣你的声音是不是也有点发抖呀？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_all_00390_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「才、才没有那种事呢！」
[np]
[FACEHIDE]

[r]反驳的声音也有些发颤……连绫濑也，或许对这种东西不擅长吧？
[np]

[char_erase name="chisato mion"]

[r]这样的话，或许正是男子汉大显身手的好机会……我可是完全不怕幽灵什么的类型！
[np]

[character name="ryuichi"]
【龙一】[r]「那、那就先去鬼屋吧？」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00390_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「在那之前，先决定组队方式吧。六个人一起进去的话，兴致会大打折扣的」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_all_00390_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「组、组合……要、要怎么做啊……？」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00390_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「嗯……六个人的话，分成三人两组的小队吧」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_9_M"]
[playcv storage="aoi_all_00390_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「正、正合我意……！不管对手是谁我都不会手下留情！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么要战斗啊。那，要怎么决定呢？」
[np]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00390_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「那是你们的自由。可以自由组队，也可以通过游戏来决定」
[np]
[FACEHIDE]

[r]两人一组，决定方式自由吗……那么，该怎么办呢。
[np]

[char_erase name="mion aoi momo"]

;//ここから新規シーン
[momo storage="B_sifuku_M AB_6_M"]
[playcv storage="momo_momo_00060_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_sifuku"]
【桃】[r]「鬼、鬼屋……」
[np]
[FACEHIDE]

[r]抖得这么厉害……看来桃酱是相当害怕啊。既然如此……
[np]

[character name="ryuichi"]
【龙一】[r]「好……桃酱，要和我组队吗？」
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00060_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「咿哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我对这种项目可是游刃有余的类型。说不定能稍微缓解下桃酱的恐惧感呢」
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00060_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「神、神原前辈……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00060_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「那我就和葵组队吧……没问题吧？」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_7_M"]
[playcv storage="aoi_momo_00060_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_tokushu"]
【葵】[r]「和、和我组队……？没、没问题，正合我意，尽管放马过来！」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_momo_00060_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「那、那我就和真珠星……」
[np]
[FACEHIDE]

[supica storage="B4_sifuku_M AB_3_M"]
[playcv storage="supica_momo_00060_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「…知道了」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[r]组队确定后，我们开始排鬼屋的队列。
[np]

[r]正值这个季节，可能大家都想寻求清凉吧……再加上周末的缘故，人还挺多的呢。
[np]

;//小声
[momo storage="C_sifuku_M C_4_M"]
[playcv storage="momo_momo_00060_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_sifuku"]
【桃】[r]「…真的…好可怕…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……桃酱？」
[np]

[momo storage="D_sifuku_M D_10_M"]
[playcv storage="momo_momo_00060_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
[char_quake name="momo"]
【桃】[r]「噫呀！？」
[np]
[FACEHIDE]

[r]只是打个招呼就让你怕成这样……感觉像是我做错了什么一样……
[np]

[character name="ryuichi"]
【龙一】[r]「不要紧的，不用这么害怕」
[np]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00060_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「话、话是这么说……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「虽然这么说可能不太合适……但鬼屋之类的说到底都是人造的……和真正的幽灵比起来根本不吓人吧？」
[np]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00060_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「真、真正的……！？难、难道真的有吗！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、不、我的意思是和真正的比起来……」
[np]

[momo storage="C_sifuku_M C_10_M"]
[playcv storage="momo_momo_00060_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「幽、幽灵……真正的……？不、不可能有那种事……」
[np]
[FACEHIDE]

[r]这下麻烦了……本来想让她放松下来结果反而更紧张了……
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之……要是害怕的话……随时可以依靠我」
[np]

[momo storage="D_sifuku_M D_5_M"]
[playcv storage="momo_momo_00060_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「依、依靠前辈…………可、可以吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「当然。这种地方不展现男子气概的话，还要等到什么时候展现呢？」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00060_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「明、明白了……那我就……」
[np]
[FACEHIDE]

[r]就在这样磨蹭的时候，终于轮到我们了。
[np]

[character name="ryuichi"]
【龙一】[r]「那么……我们走吧，桃酱」
[np]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00060_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「好、好的！！」
[np]
[FACEHIDE]

;//暗転
[char_erase name="momo"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]与桃酱互相点头示意后，我们穿过漆黑的布帘——
[np]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]
[SYSTEMMENU]

;//通常ＣＧ挿入(お化け屋敷ver)
[CG cgno=37 sabunno=04]
[fadeinbgm storage="bgm/BGM11.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]

[r]突然感觉到手臂传来柔软的触感……
[np]

[playcv storage="momo_momo_00060_016.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前、前辈……拜托您了……！」
[np]

[r]桃、桃酱……正紧紧抓着我的手臂！？
[np]

[character name="ryuichi"]
【龙一】[r]（这、这是……！）
[np]

[r]和同年级的真珠星完全不可相提并论的，丰满柔软又温暖的隆起……。
[np]

[r]光是这点就已经够要命了，我居然还两次亲眼目睹过这处圣域……！
[np]

[r]一想起那时候的事……桃酱胸前的丰满也就算了，连股间也……！
[np]

[playcv storage="momo_momo_00060_017.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前、前辈……？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……抱歉，我们快走吧！」
[np]

[playcv storage="momo_momo_00060_018.ogg" name="momo"]
[character name="momo"]
【桃】[r]「好、好的……！」
[np]

[r]那双紧紧攥着我胳膊的手，此刻仍在微微发抖。
[np]

[r]这不是在意不在意的问题……桃酱似乎连意识到自己胸部正紧贴着我的余裕都没有了。
[np]

[r]好……既然决定了，就在适度享受这梦幻般触感的同时，像个男子汉一样将桃酱引导至出口——
[np]

[CG cgno=37 sabunno=05]

[playcv storage="momo_momo_00060_019.ogg" name="momo"]
[character name="momo"]
[quake time="500"]
【桃】[r]「呀啊啊啊啊啊啊啊啊啊啊啊！！！？？」
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇啊啊啊！？」
[np]

[r]怎、怎么了！？发生什么事了！？
[np]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱！？　你怎么了！？」
[np]

[playcv storage="momo_momo_00060_020.ogg" name="momo"]
[character name="momo"]
【桃】[r]「刚、刚才！有什么东西碰到了我的头发，有什么东西在碰我的头发啊！！」
[np]

[r]竟然敢碰桃酱的头发……！？女性的头发可是如同生命般重要，这么粗鲁的工作人员……不，应该说是妖怪才对。
[np]

[r]怀揣着这样的正义感，我环顾四周却发现……
[np]

[playcv storage="momo_momo_00060_021.ogg" name="momo"]
[character name="momo"]
【桃】[r]「不要不要啊啊啊！！我好想回家啊啊啊！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「咦……桃酱，难道说……是这个？」
[np]

[CG cgno=37 sabunno=04]

[playcv storage="momo_momo_00060_022.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呜嗳……？」
[np]

[r]桃酱经过的通道墙壁上，装饰着让人联想到废弃房屋的布满破洞的纸拉门。
[np]

[r]表面黏糊糊地剥落着，正好垂落到桃酱脸部的高度。
[np]

[playcv storage="momo_momo_00060_023.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊……」
[np]

[r]简单来说，与其说是被什么东西触碰，倒更像是她自己撞上去的……
[np]

[playcv storage="momo_momo_00060_024.ogg" name="momo"]
[character name="momo"]
【桃】[r]「这、这屋子破成这样……该、该不会从里面会有鬼怪跑出来之类的……！？」
[np]

[character name="ryuichi"]
【龙一】[r]「不，再怎么说也……」
[np]

[r]看起来完全就是个营造气氛的布景而已……
[np]

[CG cgno=37 sabunno=05]

[playcv storage="momo_momo_00060_025.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊哇哇哇哇……！前、前辈，我们快逃吧！这样下去我们俩都会被杀的！！」
[np]

[character name="ryuichi"]
【龙一】[r]「被杀……咦，这不是鬼屋吗！？」
[np]

[playcv storage="momo_momo_00060_026.ogg" name="momo"]
[character name="momo"]
【桃】[r]「快点！快走啊啊啊！！」
[np]

[character name="ryuichi"]
【龙一】[r]「知、知道了，快跑！！」
[np]

[r]她那纤细的手指深深嵌入我的手臂……而我的手臂也深深陷入桃酱胸部的触感中，就这样被紧紧抱住。
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=36]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//暗転
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]
[fadeoutbgm time=1000]

[r]我和桃酱头也不回地朝着出口方向奔去……
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg18_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[character name="ryuichi"]
【龙一】[r]「到了……！」
[np]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[r]重返比之前更加耀眼的蓝天之下。
[np]

[momo storage="C_sifuku_M C_5_M"]
[playcv storage="momo_momo_00060_027.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_sifuku"]
【桃】[r]「哈啊……哈、哈啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃酱，没事吧……？」
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00060_028.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「没、没事……您看，我还活得好好的……！」
[np]
[FACEHIDE]

[r]或许因为最后阶段是尖叫着拼命奔跑，桃酱此刻呼吸急促。
[np]

[r]她弯下腰擦拭汗水的模样，随着剧烈喘息让丰满的胸部不断起伏……实在令人难以移开视线。
[np]

[momo storage="B_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00060_029.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「其、其他人……应该还没出来吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊，我们是第一批进去的……要坐在长椅上边休息边等吗」
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00060_030.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「好、好的……」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]之后我们顺利会合吃了午餐，又在游乐园尽情体验了其他游乐设施……
[np]

[r]毋庸置疑，这天最令我记忆深刻的，当属桃酱胸部的触感。
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

[jump storage="scenario/momo/momo_00070.ks"]