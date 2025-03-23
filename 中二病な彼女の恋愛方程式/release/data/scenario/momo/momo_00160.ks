[SCENESTART file=momo_00160.ks]
;//momo_00160
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/11(土)
;//CH:竜一,sifuku
;//CH:もも,sifuku

[r]吃完早饭的我，虽然没能帮上早上的忙，但主动承担了大家的洗碗工作。
[np]

[r]收拾完毕后正想稍作休息……哦，来得正好。
[np]

[character name="ryuichi"]
【龙一】[r]「桃酱」
[np]

[r]向偶然来到客厅的桃酱搭话。
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00160_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「嗯，有什么事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我今天轮到采购值班，正准备要出门……要买的东西已经确定了吗？」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00160_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊……请、请稍等一下，那个……」
[np]
[FACEHIDE]

[r]伏木庄的做饭工作，基本上由绫濑和桃酱两人负责。
[np]

[r]因此采购时需要先询问她们要买什么物品。
[np]

[character name="ryuichi"]
【龙一】[r]「如果方便的话，在我去超市期间，你们可以用邮件或即时通讯发过来……」
[np]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_momo_00160_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「我、我也一起去！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00160_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「那、那个……今天需要买的东西实在太多了……恐怕、不，绝对一个人应付不来的！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_momo_00160_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「而且直接跟着去的话，既省去了特意传达的麻烦……应该也能当场发现需要的东西……」
[np]
[FACEHIDE]

[r]原来如此。你能这么说我很高兴……
[np]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00160_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「不、不行……吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么会。倒不如说让你帮忙真的可以吗……」
[np]

[momo storage="D_sifuku_M D_9_M"]
[playcv storage="momo_momo_00160_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「没、没问题的！不如说这正是我期望的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是吗？那……就一起去吧」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00160_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「好♪　我现在就去准备！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]说完这句话，桃酱就小跑着上了楼梯。
[np]

[r]比起独自前往，有人相伴总不会太无聊……
[np]

[r]桃酱的提议，对我来说也坦率地感到开心。
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

;//背景をスーパーbg19に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[momo storage="B_sifuku_M AB_1_M"]
[playcv storage="momo_momo_00160_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「那个，今天要……」
[np]
[FACEHIDE]

[r]于是我们来到了站前超市兼我的打工地点。
[np]

[r]刚才和擦肩而过的兼职阿姨们简单打了个招呼，看来今天那位店长不在呢。
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00160_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「那个……前辈有什么不喜欢的食物吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不喜欢的食物？倒是没有什么特别不喜欢的……至少没有绝对不能吃的东西吧」
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00160_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「这样啊……那您喜欢什么食物呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喜欢的……像拉面啊，寿司之类的……」
[np]

[momo storage="D_sifuku_M D_7_M"]
[playcv storage="momo_momo_00160_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「嗯嗯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「基本上都是些普通的东西……比如炸鸡块、汉堡肉什么的……对了还有滑菇味噌汤」
[np]

[momo storage="C_sifuku_M C_1_M"]
[playcv storage="momo_momo_00160_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_sifuku"]
【桃】[r]「炸鸡块、汉堡肉、滑菇味噌汤……对吧！」
[np]
[FACEHIDE]

[r]她好像很认真地摆弄着手机……是在帮忙做笔记之类的吗？
[np]

[momo storage="A_sifuku_M AB_2_M"]
[playcv storage="momo_momo_00160_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「那我们首先去买蔬菜吧」
[np]
[FACEHIDE]

[r]跟着桃酱一起推着装满篮子的推车前进。
[np]

;//小声
[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00160_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「……光这些的话营养会不均衡呢……做沙拉用的西红柿和黄瓜……」
[np]
[FACEHIDE]

[r]桃酱一边把思考的内容说出口，一边认真挑选着蔬菜。
[np]

;//以下２行、all_00270で、千聖と買い物に行っている場合に表示
[if exp="f.Select00270_0=0"]
	[jump target="*selectA"]
[endif]
[if exp="f.Select00270_0=1"]
	[jump target="*end"]
[endif]

*selectA

[r]之前和绫濑两个人来购物时也这么想过……果然会做饭的人连采购都很擅长。
[np]

[r]像我这种完全分不清好坏的人，只会随便从最前面拿……
[np]
[jump target="*end"]

*end

[momo storage="D_sifuku_M D_2_M"]
[playcv storage="momo_momo_00160_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「好，接下来买肉吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「收到」
[np]

[r]离开蔬菜区前往生鲜食品区。
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00160_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「呃～鸡肉鸡肉…鸡腿肉拿３片左右应该够了吧…然后绞肉绞肉…啊，淀粉可能已经用完了…」
[np]
[FACEHIDE]

[r]此时此刻，桃酱的脑海里…大概正浮现着不止今天，还包括未来三四天左右的餐单吧。
[np]

[r]要把这些都计算进去再采购…真是太厉害了。
[np]

[r]桃酱将来一定会……
[np]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_momo_00160_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「这样就ＯＫ啦。接下来是牛奶和果汁之类的——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃酱将来肯定会是个好媳妇呢」
[np]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_momo_00160_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「诶……？」
[np]
[FACEHIDE]

[r]等等我为什么要说出口啊！？
[np]

[character name="ryuichi"]
【龙一】[r]「啊不是……！那个，看你这么会采购的样子，怎么说呢，就觉得肯定会这样……」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00160_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「哪、哪有……说人家是好媳妇又擅长购物什么的……真、真的没这回事啦……♪」
[np]
[FACEHIDE]

[r]双手贴着脸颊的桃酱随着飘动的发丝左右摇晃。
[np]

[momo storage="D_sifuku_M D_8_M"]
[playcv storage="momo_momo_00160_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「两个人单独来购物什么的，说像新婚夫妇这种话……被你这么讲的话，会让人家害羞的啦……♪」
[np]
[FACEHIDE]

[r]……诶？
[np]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_momo_00160_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「虽然在外人看来可能有这种错觉……但我们还只是前辈和后辈的关系……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱……？」
[np]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_momo_00160_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「啊……是、是的！什么事？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊那个……就是……」
[np]

[r]刚才好像突然进入了一个人的世界……没问题吗？
[np]

[character name="ryuichi"]
【龙一】[r]「呃……要继续购物吗？」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_momo_00160_024.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「好的！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]在那之后，我也继续和桃酱一起购物……
[np]

[r]直到购物车上下层都堆满食材后，两人一起回到了宿舍。
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

[jump storage="scenario/momo/momo_00170.ks"]