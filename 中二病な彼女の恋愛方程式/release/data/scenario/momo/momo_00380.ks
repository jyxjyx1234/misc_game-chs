[SCENESTART file=momo_00380.ks]
;//momo_00380
;//BG:bg09_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM05.ogg" time=1000]

;//TIME:昼
;//日付:7/15(水)
;//CH:竜一,seifuku
;//CH:もも,seifuku

[character name="ryuichi"]
【龙一】[r]「……呃……」
[np]

[r]放学后。独自站在校门旁，拼命压抑着涌上心头的情绪。
[np]

[r]之后被茜点破的我，自己也有意识地观察确认过……
[np]

[r]确实，无论是上课还是其他时候，自己总会在各种场合不自觉地露出傻笑。
[np]

[r]不、这也是没办法的吧……！毕竟随着时间临近，我又回想起今早刚和我立下约定的桃酱——
[np]

[playcv storage="momo_momo_00380_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「啊、学长……！」
[np]
[FACEHIDE]

[r]听到身后传来的声音，我条件反射地转过身。
[np]

[momo storage="C_seifuku_M C_4_M"]
[playcv storage="momo_momo_00380_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_seifuku"]
【桃】[r]「对不起，让您久等了吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没事的，桃酱」
[np]

[r]桃酱发现提前到达校门的我后，小跑着靠近过来，手指轻轻按在胸前。
[np]

[momo storage="D_seifuku_M D_3_M"]
[playcv storage="momo_momo_00380_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「关于考试题目，有些不太明白的地方……请教老师后就耽搁了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……桃酱，果然很认真呢……」
[np]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00380_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「像我这种去老师办公室交试卷的情况，只有在分数因批改错误而提高的时候才会去」
[np]

[character name="ryuichi"]
【龙一】[r]「所以跟我比起来……不、连比较都显得不自量力了，果然你才是认真踏实的那种……」
[np]

[momo storage="A_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00380_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「认、认真什么的……没、没有那种事啦……」
[np]
[FACEHIDE]

[r]桃酱紧紧抓住裙摆，微微泛红的脸庞低垂下来。
[np]

[r]虽然笑容可爱是理所当然的，但像这样害羞的表情……也让人想珍藏在心中的相册里，真是美好啊……
[np]

[character name="ryuichi"]
【龙一】[r]「好了……我们回去吧？」
[np]

[momo storage="D_seifuku_M D_7_M"]
[playcv storage="momo_momo_00380_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「啊……那、那个……」
[np]
[FACEHIDE]

[r]转身背对校门正要迈步时……
[np]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00380_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「学长今天……有时间吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「之后吗？没什么特别安排啊」
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00380_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「那、那能陪我去买东西吗？」
[np]
[FACEHIDE]

[r]购物……和女孩子两个人放学后顺路逛逛……嗯，这不是挺好的嘛！
[np]

[character name="ryuichi"]
【龙一】[r]「当然没问题。那我们出发吧」
[np]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00380_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「好～♪」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]离开校园的我们，朝着与宿舍相反的方向走去……
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を駅前bg15_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM08.ogg" time=1000]

[r]来到了男女老少熙来攘往的站前商业区。
[np]

[character name="ryuichi"]
【龙一】[r]「话说要买什么？」
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_momo_00380_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「啊、是的。之前说过的《ＢＬＡＭＥ》新刊，还有新洗面奶……另外需要采购各种演出服用的装饰品……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「演出服？」
[np]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00380_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「……就、就是……Ｄ—Ｄａｒｋ　Ｐｒｉｅｓｔｅｓｓ的……」
[np]
[FACEHIDE]

[r]看着桃酱羞赧地说出那个名字的模样……我不禁在内心吐槽自己居然到现在才反应过来。
[np]

[r]和葵不同，她比较内敛……像这样普普通通的桃酱，才是大家熟悉的桃酱啊。
[np]

[character name="ryuichi"]
【龙一】[r]「这样啊，虽然没什么实感……不过桃酱你也是……那个……中二病对吧？」
[np]

[momo storage="B_seifuku_M AB_6_M"]
[playcv storage="momo_momo_00380_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_seifuku"]
【桃】[r]「呜……对、对不起……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不不不！你不用道歉啊！能对喜欢的事情全情投入，光这一点就很了不起了」
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00380_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「真、真的吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以今后那个……就算和我在一起的时候，你也可以尽情展现自己哦？」
[np]

[momo storage="D_seifuku_M D_7_M"]
[playcv storage="momo_momo_00380_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「可、可是那样会给学长添麻……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我一点都不觉得麻烦……我就是喜欢这样的你……包括你的这些特质……」
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00380_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「……！！！」
[np]
[FACEHIDE]

[r]……说完这句话后，空气陷入了几秒钟的沉默。
[np]

[character name="ryuichi"]
【龙一】[r]「那、那我们该从哪里开始逛！？」
[np]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00380_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「啊……对、对了！那个……那、那就先去药妆店……！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]为掩饰这份羞赧主动转移话题后，我和桃酱一起朝药妆店走去。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//暗転
[r]然后……
[np]

;//背景を通学路bg13_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

[r]享受完放学后的购物时光，踏上归途时……夕阳已经西沉了。
[np]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00380_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「对不起，没想到花了这么长时间……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别在意。光是能陪着桃酱购物，我也很开心啊」
[np]

[r]听着远处传来的暮蝉鸣叫，两人并肩走在住宅区街道上。
[np]

[character name="ryuichi"]
【龙一】[r]「桃酱那些服装道具，全都是自己做的吗？」
[np]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_momo_00380_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「是、是的……不过也不是从零开始……都是参考喜欢的作品里出现的服装和道具设计……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是那个《布莱梅尔》？」
[np]

[momo storage="D_seifuku_M D_2_M"]
[playcv storage="momo_momo_00380_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「对的！因为葵小姐也是这部作品的忠实粉丝……比如这个道具可能就是参考了那个……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00380_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「这段咒语肯定是受那个魔法的启发，像这样发现各种细节真的很有趣……」
[np]
[FACEHIDE]

[r]哦……这就是所谓中二病常见的套路吧。
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_momo_00380_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「如果前辈有兴趣的话……要不要试着读读看？我房间里收藏了全套……说不定前辈也会觉醒呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「作品本身挺有意思的，不过觉醒的可能性应该……没有吧」
[np]

[momo storage="D_seifuku_M D_3_M"]
[playcv storage="momo_momo_00380_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「啊、说的也是……毕竟前辈可是当时救了我的『翼神龙』先生，早就已经……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、桃酱！」
[np]

[momo storage="B_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00380_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「呵呵呵……♪　好啦、我们走吧前辈」
[np]
[FACEHIDE]

[r]她难得……不、说不定是第一次呢。
[np]

[r]桃酱主动像刚才那样开玩笑这种事。
[np]

[char_erase name="momo"]

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

[jump storage="scenario/momo/momo_00390.ks"]