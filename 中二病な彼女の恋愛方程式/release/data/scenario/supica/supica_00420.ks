[SCENESTART file=supica_00420.ks]
;//supica_00420
;//BG:bg15_01
;//TIME:昼
;//日付:7/21(火)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[r]然后，到了第二天……
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「嗯，真是最适合海水浴的好天气……！」
[np]

[r]抬头仰望灿烂的太阳，我不由得脱口而出，天空晴朗无云。
[np]

[r]按照昨天约定好的，今天要和真珠星去海边约会。
[np]

[r]不过既然双方都不打算换泳装，基本等于没有行李。
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00420_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……那辆电车？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊。好像马上就要发车了，去买票吧」
[np]

[char_erase name="supica"]

[r]和真珠星开始交往后，今天是第一次约会……
[np]

[r]而且对我来说这也是人生中的第一次约会。
[np]

[r]必须尽可能让真珠星玩得开心，要让她觉得情侣约会确实是件很棒的事……！
[np]

;//背景を海bg21_01に

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg21_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[playse buf=5 storage="sound/50210.ogg"]

[playcv storage="supica_supica_00420_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……到了」
[np]
[FACEHIDE]

[r]换乘电车后，经过一小时左右到达的海水浴场。
[np]

[r]虽是工作日的星期二，但因正值暑假，沙滩上挤满了戏水的人群。
[np]

[supica storage="A_sifuku_L AB_1_L"]

[character name="ryuichi"]
【龙一】[r]「好，总之先到浪边看看吧」
[np]

[playse buf=5 storage="sound/50220.ogg"]

[r]难得来趟海边，总得跟潮起潮落的浪花嬉戏一番。
[np]

[r]这么想着的我牵起真珠星的手，但……
[np]

[supica storage="D_sifuku_L CD_5_L"]
[playcv storage="supica_supica_00420_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_sifuku"]
【真珠星】[r]「……唔……沙子，好烫……」
[np]
[FACEHIDE]

[char_jump name=supica]

[r]真珠星为了躲避从凉鞋缝隙钻进来的沙子，像小兔子般蹦跳着。
[np]

[playse buf=5 storage="sound/50230.ogg"]

[r]然而这阵冲击反而让真珠星的脚更深地陷入了被烈日炙烤的沙子中……
[np]

[supica storage="C1_sifuku_L CD_10_L"]
[playcv storage="supica_supica_00420_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_sifuku"]
【真珠星】[r]「呜……！龙一，这样好难受……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知、知道了。那我背你过去吧」
[np]

[playse buf=5 storage="sound/50210.ogg"]

[supica storage="D_sifuku_L CD_3_L"]
[playcv storage="supica_supica_00420_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]真珠星拎着凉鞋，轻盈地跳上我弓着的后背。
[np]

[r]就这样我背着她朝浪边走去……
[np]

[playse buf=5 storage="sound/50220.ogg"]

[character name="ryuichi"]
【龙一】[r]「哦——冰凉凉的好舒服……！」
[np]

[r]我甩开鞋子光着脚走进海里，向背后的真珠星展示这份沁人心脾的清凉。
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星要不要试试？真的很舒服」
[np]

[playcv storage="supica_supica_00420_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「……海星……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……？」
[np]

[playse buf=5 storage="sound/50210.ogg"]

[playcv storage="supica_supica_00420_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_sifuku"]
【真珠星】[r]「龙一……帮我捡那个海星……」
[np]
[FACEHIDE]


[r]顺着真珠星指的方向望去，一只色彩鲜艳的海星正卧在沙地上。
[np]

[character name="ryuichi"]
【龙一】[r]「这个吗……？」
[np]

[r]我弯腰拾起海星，递给背上的真珠星。
[np]

[playcv storage="supica_supica_00420_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……好可爱……」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/50230.ogg"]

[character name="ryuichi"]
【龙一】[r]「……是吗？」
[np]

[playcv storage="supica_supica_00420_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_sifuku"]
【真珠星】[r]「这种形状……仿佛蕴藏着某种难以名状的奥妙……」
[np]
[FACEHIDE]

[r]这个嘛……虽然形状是真珠星喜欢的星星模样。
[np]

[character name="ryuichi"]
【龙一】[r]「话说真珠星不打算下海吗？」
[np]

[playse buf=5 storage="sound/50210.ogg"]

[playcv storage="supica_supica_00420_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……沾了海水之后会粘沙子……不要……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这样啊……」
[np]

[r]被她这么一说……确实没法反驳呢，嗯。
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

[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg21_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[r]后来我继续背着真珠星，沿着浪花翻涌的海岸线漫步……
[np]

[character name="ryuichi"]
【龙一】[r]「好、好累……」
[np]

[r]为了稍作休息，我们走进了最近的海边小吃店。
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00420_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一，不要紧……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……真珠星，你把那个海星带过来了吗」
[np]

[supica storage="C1_sifuku_M CD_12_M"]
[playcv storage="supica_supica_00420_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_sifuku"]
【真珠星】[r]「好可爱……带回去养起来」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不不不不！快把它放回原处！听见没！？」
[np]

[r]说到底，要是就这么直接带回去的话，半路上就会干瘪掉了吧……
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00420_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「龙一……饮料还没来……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，再稍微等一下。店里太忙了，服务员好像也很辛苦的样子」
[np]

[char_erase name="supica"]

[r]虽然只是随便找了家附近的小店，但听周围客人说这好像是家挺有名的店
[np]

[r]据说附近中华料理店的老板每年都会在海边开设临时分店……
[np]

[r]能吃到普通海边小店根本比不上的美味拉面
[np]

[r]而且接待工作是由老板的两个女儿共同打理，这对姐妹还……
[np]

[character name="ryuichi"]
【龙一】[r]（好可爱啊……！）
[np]

[r]虽然当着真珠星的面不好说出口……大概那边是妹妹，这边是姐姐吧
[np]

[r]妹妹虽然打扮得很张扬，但接待客人时特别认真……感觉是个活泼开朗的姑娘
[np]

[r]至于扎着马尾辫的姐姐，首先最引人注目的是……
[np]

[character name="ryuichi"]
【龙一】[r]（好大……！）
[np]

[r]那尺寸简直让人担心会不会从泳装里溢出来……不对，应该说是提心吊胆的程度了……
[np]

[r]那个尺寸大概和桃酱、绫濑差不多吧……也就是说，她们俩要是穿上泳装的话应该也是那种——
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00420_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了？」
[np]

[r]被真珠星叫到名字的我，挂着笑容转过头去。
[np]

[r]尽可能保持自然的神态，绝不能让人发现我刚才盯着女店员胸部看——
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00420_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……你刚才在看人家的胸部……？」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/20310.ogg"]

[quake time="500"]

[r]完全暴露了——————————！！！
[np]

[character name="ryuichi"]
【龙一】[r]「不、不是，那个……！」
[np]

[supica storage="C1_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00420_016.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……好大……还会晃来晃去的……」
[np]
[FACEHIDE]

[r]因为要端菜、收拾用完的餐具等等……一直在来回走动，自然会跟着摇晃。
[np]

[r]或者说，这家店受欢迎的原因……肯定也有这个因素吧！
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00420_017.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……真珠星、平胸……」
[np]
[FACEHIDE]

[r]真珠星又像昨天那样用双手抚摸着自己的胸部。
[np]

[supica storage="D_sifuku_L CD_6_L"]
[playcv storage="supica_supica_00420_018.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_sifuku"]
【真珠星】[r]「龙一……喜欢大的吗……？讨厌小胸部……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]真、真珠星……为什么露出那种悲伤的表情……！
[np]

[character name="ryuichi"]
【龙一】[r]「那、那个！虽然大家都说男人都喜欢大的……」
[np]

[character name="ryuichi"]
【龙一】[r]「但是我也喜欢真珠星的小胸部啊！嗯！」
[np]

[supica storage="A_sifuku_L AB_5_L"]
[playcv storage="supica_supica_00420_019.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_sifuku"]
【真珠星】[r]「……真的？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真的真的！最喜欢小胸部了！」
[np]

[supica storage="A_sifuku_L AB_2_L"]
[playcv storage="supica_supica_00420_020.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_sifuku"]
【真珠星】[r]「……那就好……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]虽然拼命主张这些总算是没让真珠星不高兴……
[np]

[r]但似乎被刚好来送饮料的女店员姐姐听到了……她用略带遗憾的目光看着我，就像在看什么可悲的人。
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

;//JUMP:supica_00430
[jump storage="scenario/supica/supica_00430.ks"]
