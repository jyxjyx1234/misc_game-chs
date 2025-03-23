[SCENESTART file=momo_00370.ks]
;//momo_00370
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM04.ogg" time=1000]

;//TIME:昼
;//日付:7/15(水)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[wait time="1000"]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_momo_00370_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「午饭、吃午饭啦——……咦，人呢？」
[np]
[FACEHIDE]

[r]宣告午休开始的铃声刚响起，茜就几乎同时赶了过来……
[np]

[akane storage="B_seifuku_M AB_7_M"]
[playcv storage="akane_momo_00370_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「爽史？爽史——？你怎么啦——？」
[np]
[FACEHIDE]

[r]她轻轻拍打着爽史纹丝不动的脑袋，后者正趴在课桌上一动不动。
[np]

[character name="ryuichi"]
【龙一】[r]「看样子，他的英语成绩好像考砸得很厉害……」
[np]

[akane storage="C_seifuku_M CD_3_M"]
[playcv storage="akane_momo_00370_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_seifuku"]
【茜】[r]「啊，原来是这事……好啦好啦，打起精神来嘛」
[np]
[FACEHIDE]

[sousi storage="C_seifuku_M CD_4B_M"]
[playcv storage="sousi_momo_00370_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4B_FACE_seifuku"]
【爽史】[r]「……就不能说得更有二次元妹妹的感觉吗……」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_5_M"]
[playcv storage="akane_momo_00370_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_5_FACE_seifuku"]
【茜】[r]「哥哥、振作起来嘛……？要是哥哥这么消沉的话，茜也会跟着难过的……」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_8_M"]
[playcv storage="sousi_momo_00370_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_8_FACE_seifuku"]
[char_quake name="sousi"]
【爽史】[r]「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！」
[np]
[FACEHIDE]

[r]哦哦，突然来精神了……！？
[np]

[sousi storage="D_seifuku_M CD_8_M"]
[playcv storage="sousi_momo_00370_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_8_FACE_seifuku"]
【爽史】[r]「果然还是不行！三次元都是垃圾！！根本提不起干劲反而让心灵和胯下都蔫掉了！！」
[np]
[FACEHIDE]

[sousi storage="D_seifuku_M CD_9_M"]
[playcv storage="sousi_momo_00370_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_9_FACE_seifuku"]
【爽史】[r]「不过！！能让我再次领悟到二次元才是至高无上这个颠扑不破的真理，这点还是要感谢你茜咕呜呜呜呜呜呜呜呜！？」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_9_M"]
[char_jump name=akane]
[quake time="500"]
[playse buf=5 storage="sound/10050.ogg"]
[wait time="500"]

[r]茜对着突然起身高谈阔论的青梅竹马那空虚的躯壳，将紧握的右拳狠狠砸了进去。
[np]

[akane storage="A_seifuku_M AB_10_M"]
[playcv storage="akane_momo_00370_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_10_FACE_seifuku"]
[char_quake name="akane"]
【茜】[r]「我一番好意扮妹妹安慰你……害我丢脸的惩罚就是给我躺到放学再说！！」
[np]
[FACEHIDE]

[sousi storage="C_seifuku_M CD_5C_M"]
[playcv storage="sousi_momo_00370_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_5C_FACE_seifuku"]
【爽史】[r]「咕呃……」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[r]身体蜷成く字形的爽史就这么端正地坐回座位，再次趴在桌上一动不动。
[np]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_momo_00370_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「龙一，去屋顶吃饭吧♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦哦……！」
[np]

[char_erase name="akane"]

[r]……我也得小心别惹茜生气。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を屋上bg12_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_momo_00370_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「那我开动啦～！」
[np]
[FACEHIDE]

[char_erase name="akane"]

;//合わせ
[aoi storage="A_seifuku_M A_2_M" trans=false]
[chisato storage="C_seifuku_M CD_2_M" trans=false]
[char_trans]
[playse storage="momo_mix_00370_001.ogg" name="women"]
[character name="women"]
【葵＆千圣】[r]「开动啦！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[r]我们在开放的屋顶上随意找地方坐下，开始了便当时间。
[np]

[r]毕竟正值盛夏时节，大家都躲着日头，感觉人渐渐变少了……
[np]

[r]即便如此，我依然相当享受这种在蓝天之下与大家共进午餐的时光。
[np]

[aoi storage="D_seifuku_M CD_7_M" trans=false]
[akane storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_momo_00370_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「咦、爽史怎么了……？」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_3_M"]
[playcv storage="akane_momo_00370_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_seifuku"]
【茜】[r]「他说什么要和异世界的妹妹们寻求邂逅，想在放学前全神贯注地冥想呢」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_momo_00370_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「异世界的……！？难道说爽史也是『选中的勇者』吗……？」
[np]
[FACEHIDE]

[r]唉呀呀，爽史又被强加奇怪设定了……
[np]

[char_erase name="aoi akane"]

[chisato storage="C_seifuku_M CD_3_M" trans=false]
[akane storage="C_seifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="chisato_momo_00370_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「实际上只是考试成绩太差在消沉吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「然后茜就给他补上最后一刀了」
[np]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_momo_00370_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「别说得那么难听！那该说是心灵的正当防卫才对！」
[np]
[FACEHIDE]

[r]不过爽史的发言确实有问题就是了
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_momo_00370_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「神原同学的英语和地理考得怎样？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哼哼哼，说出来吓死你们，两科都完美避开了不及格！」
[np]

[chisato storage="D_seifuku_M CD_11_M"]
[playcv storage="chisato_momo_00370_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「这种事值得挺胸抬头炫耀吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「像绫濑和茜这样的优等生可能不懂……但对我跟葵来说，这已经足够自豪了！」
[np]

[aoi storage="B_seifuku_M B_1_M"]
[playcv storage="aoi_momo_00370_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_seifuku"]
[char_jump name="aoi"]
【葵】[r]「就是就是！！」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_momo_00370_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「啊哈哈！嘛、不也挺好吗？只要当事人开心就好」
[np]
[FACEHIDE]

;[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_momo_00370_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「话虽如此……」
[np]
[FACEHIDE]

[char_erase name="akane chisato aoi"]

[akane storage="B_seifuku_M AB_7_M"]
[playcv storage="akane_momo_00370_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「不过龙一，你今天和前天完全判若两人这么兴奋呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「欸……是、是吗？」
[np]

[akane storage="C_seifuku_M CD_3_M"]
[playcv storage="akane_momo_00370_012.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_seifuku"]
【茜】[r]「眼睛比嘴巴更会说话呢。是有什么好事吗？」
[np]
[FACEHIDE]

[r]听到茜这么说，绫濑和葵同时看向我。
[np]

[r]其实……对茜说的话倒是没什么好隐瞒的。
[np]

[character name="ryuichi"]
【龙一】[r]「其实……那个……昨天，我交到女朋友了」
[np]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_momo_00370_013.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「诶……？」
[np]
[FACEHIDE]

[r]听到这句话的茜故意夸张地让筷子掉了下来。
[np]

[character name="ryuichi"]
【龙一】[r]「和我住在同一宿舍的桃酱……我们开始交往了」
[np]

[akane storage="B_seifuku_M AB_8_M"]
[playcv storage="akane_momo_00370_014.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_8_FACE_seifuku"]
[char_quake name="akane"]
【茜】[r]「什……什、什、什……什么啊啊啊啊啊啊啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「笨、笨蛋！声音太大了啦！」
[np]

[akane storage="C_seifuku_M CD_5_M"]
[playcv storage="akane_momo_00370_015.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_5_FACE_seifuku"]
【茜】[r]「那那那那不就是那个嘛……！龙一君已经加入人生赢家行列了啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我觉得用有没有女朋友来判断是不是人生赢家不太对吧」
[np]

[akane storage="D_seifuku_M CD_4_M"]
[playcv storage="akane_momo_00370_016.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_4_FACE_seifuku"]
【茜】[r]「这种老成的发言本身就很像人生赢家啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我、我只是说了真心话而已！」
[np]

[akane storage="A_seifuku_M AB_4_M"]
[playcv storage="akane_momo_00370_017.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
【茜】[r]「原～来如此……所以才从早上开始就一直傻笑啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……我、我有那么傻笑吗？」
[np]

[akane storage="B_seifuku_M AB_1_M"]
[playcv storage="akane_momo_00370_018.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「有啊有啊。上课时也好课间休息也好，差不多每三十秒就笑一次」
[np]
[FACEHIDE]

[r]有那么夸张！？
[np]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_momo_00370_019.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「嘿～这样啊……原来如此呢」
[np]
[FACEHIDE]

[r]话说……茜为什么能这么清楚地观察我的样子啊。虽然确实坐的位置容易被看到就是了……
[np]

[akane storage="D_seifuku_M CD_3_M"]
[playcv storage="akane_momo_00370_020.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_seifuku"]
【茜】[r]「不管怎么说，恭喜啦！像桃酱这么可爱的女孩，你可不能让她哭哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊……谢谢」
[np]

[char_erase name="akane"]

[r]总之，这样一来算是向茜报告过了……
[np]

[r]爽史那边……嘛，等有机会再说吧，嗯。
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

[jump storage="scenario/momo/momo_00380.ks"]