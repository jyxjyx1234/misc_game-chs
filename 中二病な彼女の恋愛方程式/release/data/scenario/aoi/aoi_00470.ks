[SCENESTART file=aoi_00470.ks]
;//aoi_00470
;//BG:bg09_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/17(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//★＠女子Ｆ
[playcv storage="girf_aoi_00470_001.ogg" name="women"]
[character name="women"]
【女子】[r]「……以上就是校长的讲话」
[np]

[r]可能觉得让学生在烈日下久站不太好，比预想的要简短真是帮大忙了。
[np]

[r]正想着这些时，结业式已顺利落下帷幕……
[np]

;//背景を教室bg11_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[akane storage="A_seifuku_M AB_2_M"]
[char_jump name=akane]

[playcv storage="akane_aoi_00470_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「终于结束啦——————！！」
[np]
[FACEHIDE]

[r]班会刚结束的瞬间，茜响彻教室的喊声就传了过来。
[np]

[chisato storage="A_seifuku_M AB_5_M"]
[playcv storage="chisato_aoi_00470_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「啊，小茜，太得意忘形了啦……！」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_aoi_00470_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「没办法嘛！暑假开始的瞬间，这种心跳加速的感觉根本停不下来啊！」
[np]
[FACEHIDE]

[sousi storage="C_seifuku_M CD_4_M"]
[playcv storage="sousi_aoi_00470_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_4_FACE_seifuku"]
【爽史】[r]「但普通人也不会像你这样大喊大叫吧」
[np]
[FACEHIDE]

[akane storage="B_seifuku_M AB_1_M"]
[playcv storage="akane_aoi_00470_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「啊，没时间耽搁了！今天还要去篮球部练习呢！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00470_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「还真是个大忙人，又要去当救兵？」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_aoi_00470_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「没错！为了明天比赛的友情支援！那各位！暑假快乐——！」
[np]
[FACEHIDE]
[playse buf=5 storage="sound/00170.ogg"]
[char_erase name="akane"]

[character name="ryuichi"]
【龙一】[r]「你这时节说错了吧！！」
[np]


[r]最后茜元气十足地装疯卖傻一番，离开了教室。
[np]

[chisato storage="C_seifuku_M CD_3_M"]
[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_aoi_00470_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「那我也该走了……我得赶紧补完攒下的动画」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「保重啊。有空一起玩！」
[np]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_aoi_00470_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「你这么说我很高兴……不过你与其陪我，不如多陪陪小日向？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[sousi storage="A_seifuku_M A_2_M"]
[playcv storage="sousi_aoi_00470_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_2_FACE_seifuku"]
【爽史】[r]「开个玩笑。那我先走了」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[r]这不像爽史会说的话，让我一时反应不过来……
[np]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00470_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「那我也回去吧。你们俩呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我们俩啊……」
[np]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_aoi_00470_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「难得时间这么早……不去哪里玩玩吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……」
[np]

[r]确实是个好主意……这么想着看向葵的方向……
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00470_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「我无所谓，怎样都行……」
[np]
[FACEHIDE]

[r]虽然嘴上这么说，但看起来其实挺想去的。
[np]

[character name="ryuichi"]
【龙一】[r]「好，那就稍微绕个路吧！」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00470_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「！！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_aoi_00470_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「那要是太晚的话记得联系我哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，知道了」
[np]

[char_erase name="chisato aoi"]

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

;//背景を校庭bg09_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[r]我和葵两人穿过操场，来到校门口。
[np]

[character name="ryuichi"]
【龙一】[r]「要说绕路的话……果然还是去站前商圈吧」
[np]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00470_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「唔……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了，发生什么……！？」
[np]

[r]葵突然捂住右眼，蹲在原地不动。
[np]

;//「オーラ」でお願いします
[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00470_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「这、这股不祥的『波动』……那家伙，开始行动了吗……！」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00470_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「龙、龙一……！快、快去站前！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，本来就是这么打算的……」
[np]

[char_erase name="aoi"]

[r]……算了。
[np]


;//背景を駅前bg15_01に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]



[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[r]和感知到所谓波动的葵一起来到站前商圈。
[np]

[character name="ryuichi"]
【龙一】[r]「快到正午了……葵，午饭怎么解决？」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00470_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「古语有云饿着肚子打不了仗……不过必须尽快解决否则受害范围会扩大……」
[np]
[FACEHIDE]

[r]或许是因为最近经历种种让中二病的一面暂时收敛了……
[np]

[r]现在看到葵恢复平常的样子，我竟然觉得有点开心。
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00470_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「好，这边走龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好好，这是要去哪？」
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00470_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「距离确实在缩短……不可松懈警戒……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]被这么提醒着，葵走进的地方是……
[np]

;//背景をゲームセンターbg20_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg20_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「……游戏中心？」
[np]

[r]这里难道有散发着不祥之气的敌人吗？虽然就算有这样的人也不奇怪。
[np]

[aoi storage="D_seifuku_M CD_2_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00470_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「龙一！这边这边！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，别太兴奋摔倒了哦？」
[np]

[r]穿过问答游戏和格斗游戏的区域，葵前往的地方是……
[np]

;//「エンシェントドラゴン」でお願いします
[aoi storage="D_seifuku_L CD_1_L"]
[playcv storage="aoi_aoi_00470_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「终于找到你了……——被封印的古代龙——！」
[np]
[FACEHIDE]

[r]……不管怎么看都是普通的射击游戏。
[np]

[character name="ryuichi"]
【龙一】[r]「你想玩这个吗？」
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00470_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「龙一，这可不是游戏！是关乎人类存亡的战斗！」
[np]
[FACEHIDE]

[r]在葵的脑海里，似乎不管什么事都关乎着人类的存亡啊。
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00470_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「虽然现在这家伙数据化后潜藏在这台机台里……要是让它逃到外面，世界就……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……好，那就打倒它吧」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00470_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「好气势！与我并肩作战吧！不过要２００円哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「当救世主还要花钱啊……」
[np]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_aoi_00470_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知、知道了知道了！我付！我付总行了吧！」
[np]

[aoi storage="C_seifuku_M CD_2_M"]


[r]既然怕被吐槽，一开始直接说想玩不就好了……
[np]

[character name="ryuichi"]
【龙一】[r]「好了……」
[np]

[r]投入硬币后，画面瞬间切换，故事开始了。
[np]

[r]虽然之前有段时间经常跑游戏厅，但这类游戏倒是没碰过呢。
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00470_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「好，上吧龙一……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦！」
[np]

[char_erase name="aoi"]

[r]反正刚开始应该很简单，随便打打——
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[char_quake name=aoi]

[playcv storage="aoi_aoi_00470_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「喝！！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/50310.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[aoi storage="B_seifuku_L B_8_L"]
[char_quake name=aoi]

[playcv storage="aoi_aoi_00470_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「咚！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/50310.ogg"]
[wait time="1000"]

[r]葵一边摆出华丽的姿势，一边将屏幕上的敌人逐个解决。
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[char_quake name=aoi]

[playcv storage="aoi_aoi_00470_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「哈啊啊啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/50310.ogg"]
[wait time="1000"]

[r]呃……
[np]

[aoi storage="C_seifuku_L CD_11_L"]
[playcv storage="aoi_aoi_00470_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「哼……不过如此」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]在怪物显现于屏幕的瞬间，葵以迅雷不及掩耳之势扣动扳机……
[np]

[r]似乎所有攻击都精准命中弱点，在我还未来得及动作时画面就已切换至移动场景。
[np]

[character name="ryuichi"]
【龙一】[r]「你挺擅长这个啊……？」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00470_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「哼……对于日常摆弄实弹的我来说，这种程度不过是小儿科」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00470_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「所以世人都称我——」
[np]
[FACEHIDE]

;//★＠男Ａ
[playcv storage="dana_aoi_00470_001.ogg" name="man"]
[character name="man"]
【男】[r]「喂！『神速射手』好久没来玩了！」
[np]

;//★＠男Ｂ
[playcv storage="danb_aoi_00470_001.ogg" name="man"]
[character name="man"]
【男】[r]「真的假的！话说那不是双持武器嘛」
[np]

;//★＠男Ｃ
[playcv storage="danc_aoi_00470_001.ogg" name="man"]
[character name="man"]
【男】[r]「旁边有个男人啊……那是谁？」
[np]

[aoi storage="C_seifuku_M CD_11_M"]
[playcv storage="aoi_aoi_00470_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
【葵】[r]「呵」
[np]
[FACEHIDE]

[r]露出得意的表情看向我的葵——
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「喂、敌人！来了来了！！」
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00470_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「那里！！哈！嘿！！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/50310.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「哇……！！」
[np]

[r]但是不看画面却全弹命中……！？这家伙到底练了多久啊！？
[np]

[aoi storage="B_seifuku_L B_1_L"]
[playcv storage="aoi_aoi_00470_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_seifuku"]
【葵】[r]「今天一定……今天一定要打倒你！我们这边可是有可靠的龙在呢！」
[np]
[FACEHIDE]

[r]不是，我这是第一次玩这个游戏啊……。
[np]

[character name="ryuichi"]
【龙一】[r]「糟……！」
[np]

[playse buf=5 storage="sound/50310.ogg"]
[wait time="1000"]

[aoi storage="C_seifuku_L CD_1_L"]
[playcv storage="aoi_aoi_00470_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「哦，不错嘛龙一！」
[np]
[FACEHIDE]

[r]随着关卡推进，敌人数量果然多到连葵一个人也难以应付了。
[np]

[r]倒不如说对我而言，这样才终于有玩游戏的实感……！
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[playcv storage="aoi_aoi_00470_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「龙一，左边交给你了！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/50310.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「噢！你的后背由我来守护！！」
[np]

[aoi storage="A_seifuku_L A_1_L"]
[playcv storage="aoi_aoi_00470_027.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「别大意，从这里开始敌人会变得更加强力……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「正合我意……尽管放马过来吧！」
[np]

[char_erase name="aoi"]

[r]这种情况，该说是放学后的约会吗……
[np]

[r]硬要说的话，更像是和朋友一起玩耍的感觉……
[np]

[r]这种相处方式本身也很有趣……或许也不错吧。
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

;//JUMP:aoi_00480
[jump storage="scenario/aoi/aoi_00480.ks"]