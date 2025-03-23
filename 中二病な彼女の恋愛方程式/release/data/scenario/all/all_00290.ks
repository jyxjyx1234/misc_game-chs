[SCENESTART file=all_00290.ks]
;//all_00290
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:昼
;//日付:6/25(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku

;//\SEチャイム音
[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[r]教室的铃声响起，宣告放学时间到了……
[np]

[r]其实我从上课开始，就一直在考虑一件事。
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_all_00290_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「神原？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……怎么了？」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00290_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「班会已经结束了。我们三个一起回去吧」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_1_M"]
[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]俗话说择日不如撞日……与其犹豫不如先行动，对吧。
[np]

[character name="ryuichi"]
【龙一】[r]「抱歉，今天我有点事情要办。你们两个先回吧？」
[np]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_all_00290_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「事情……？难道是普通人不能知道的机密任务？那我也」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「放心，绝对不是那种事」
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00290_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「那我们就先回去了。如果太晚的话，记得要联系我们」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好，知道了」
[np]

[char_erase name="chisato aoi"]

;//背景を校庭bg09_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[r]与两人道别后离开教室，换好鞋子走到外面。
[np]

[r]那么……要找打工的话，果然还是车站前比较合适吧。
[np]

;//背景を駅前bg15_01に

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
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「那个……」
[np]

[r]从学校走了一段路，来到已经看得很眼熟的车站前。
[np]

[r]目的不是别的，正是为了找兼职工作。
[np]

[r]我现在全靠父母寄生活费过日子。虽然这样也完全够用……
[np]

[r]但至少能自由支配的钱，想要靠自己的力量赚……！之类的想法吧。
[np]

[r]可能因为听说爽史和绫濑都在打工，受他们影响吧……好了。
[np]

[character name="ryuichi"]
【龙一】[r]「首先是工作种类……」
[np]

[r]学生能想到的打工，便利店、快餐店、绫濑说过的咖啡厅……
[np]

[r]基本上都是餐饮业或服务业的吧。果然还是这类比较稳妥吗？或者……
[np]

[character name="ryuichi"]
【龙一】[r]「在那之前，口渴了……」
[np]

[r]虽说梅雨季节尚未结束，但夏天已然近在眼前。
[np]

[r]总之先去超市买瓶饮料……边润喉咙边考虑吧。
[np]

;//背景をスーパーbg19に
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//★＠
[playcv storage="shoA_all_00290_001.ogg" name="man"]
[character name="man"]
【店员】[r]「感谢惠顾～」
[np]

[r]拎着碳酸饮料塑料瓶结完账，快步离开收银台。
[np]

[r]不愧是超市内部，冷气开得实在太足了。糟糕，突然不想走出去了……
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[r]哎呀……仔细一看这里贴着招聘广告。
[np]

[r]「因白天兼职大妈爆满，现大量招募傍晚时段可出勤的学生」……说得真直白啊。
[np]

[r]工作内容包括收银、商品上架、货架整理……哦？时薪９５０日元？挺不错的嘛。
[np]

[r]不过还是多找几个备选——
[np]

;//★＠最初は？？？で
[playcv storage="shiB_all_00290_001.ogg" name="man"]
[character name="man"]
【？？？】[r]「ＹＯＵゥ呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜呜！！！！！」
[np]

[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「哇啊啊啊啊！？」
[np]

[r]被猛冲过来的大叔抓住双肩，手里的饮料不自觉掉在了地上。
[np]

;//★＠ここはオッサンに
[playcv storage="shiB_all_00290_002.ogg" name="man"]
[character name="man"]
【大叔】[r]「ＹＯＵ刚才在看那边的招聘广告对吧！？肯定是这样没错吧！？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊？呃、那个……」
[np]

[r]这、这人怎么回事……！轮廓深邃的五官完全不像日本人……太近了！脸贴太近了！！
[np]

;//★＠ここはオッサンに
[playcv storage="shiB_all_00290_003.ogg" name="man"]
[character name="man"]
【大叔】[r]「终于找到啦！！能拯救这家缺人超市的超级英雄！毕竟是超市嘛！」
[np]

[character name="ryuichi"]
【龙一】[r]「不是，那个……你谁啊？」
[np]

;//★＠
[playcv storage="shiB_all_00290_004.ogg" name="man"]
[character name="man"]
【店长】[r]「噢～抱歉！我就是这家店的店长！来，这是我的名片！」
[np]

[character name="ryuichi"]
【龙一】[r]「…小酒馆美雪？」
[np]

;//★＠
[playcv storage="shiB_all_00290_005.ogg" name="man"]
[character name="man"]
【店长】[r]「哎呀搞错了！这是昨晚去玩的夜店……咦，我的名片呢。算了！」
[np]

;//★＠
[playcv storage="shiB_all_00290_006.ogg" name="man"]
[character name="man"]
【店长】[r]「我刚才从仓库出来时，正好看到ＹＯＵ在认真看招聘广告！所以就冲过来啦！」
[np]

[character name="ryuichi"]
【龙一】[r]「倒也没认真到需要被这么说……」
[np]

;//★＠
[playcv storage="shiB_all_00290_007.ogg" name="man"]
[character name="man"]
【店长】[r]「哈哈哈不用害羞嘛♪ＹＯＵ这个年纪的年轻人啊，都是爱害羞的小可爱呢！戳戳♪」
[np]

[character name="ryuichi"]
【龙一】[r]「住手啊啊啊啊！！你一个大叔别用食指戳别人的脸啊啊啊！！！」
[np]

[r]这疯子大叔到底怎么回事……！店长？开玩笑吧……！？
[np]

;//★＠
[playcv storage="shiB_all_00290_008.ogg" name="man"]
[character name="man"]
【店长】[r]「那咱们立刻开始面试吧！面试！！」
[np]

[character name="ryuichi"]
【龙一】[r]「等、等一下！我还没说要在这里工作——」
[np]

;//★＠
[playcv storage="shiB_all_00290_009.ogg" name="man"]
[character name="man"]
【店长】[r]「第一道考题！生菜和卷心菜，做白菜卷用的是哪种！？」
[np]

[character name="ryuichi"]
【龙一】[r]「你都直接把答案说出来了！！还说什么卷心菜啊！！」
[np]

;//★＠
[playcv storage="shiB_all_00290_010.ogg" name="man"]
[character name="man"]
【店长】[r]「正确答案！合格啦！！正式录用！！」
[np]

[character name="ryuichi"]
【龙一】[r]「哈！？录用了！？刚才那就算面试了！？」
[np]

;//★＠
[playcv storage="shiB_all_00290_011.ogg" name="man"]
[character name="man"]
【店长】[r]「啊对了，联系方式我刚才已经确认过了！来，手机还你！」
[np]

[character name="ryuichi"]
【龙一】[r]「你他妈的为什么拿着我的手机！？什么时候偷走的！？」
[np]

;//★＠
[playcv storage="shiB_all_00290_012.ogg" name="man"]
[character name="man"]
【店长】[r]「那改天再正式联系你！多指教啊小伙子！！嘎哈哈哈！！」
[np]

[character name="ryuichi"]
【龙一】[r]「喂、喂等等大叔！我……！！」
[np]

[r]自称店长的大叔放声大笑着响彻整个店铺，随即以光速躲回了后厨。
[np]

[r]……啊？什么？这就定下来了？我要在这里打工……？
[np]

[r]在这里打工，或者说……要在那种疯子大叔手下干活！？
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

;//JUMP:all_00300
[jump storage="scenario/all/all_00300.ks"]