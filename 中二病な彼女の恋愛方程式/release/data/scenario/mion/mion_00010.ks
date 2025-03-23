[SCENESTART file=mion_00010.ks]
;//mion_00010
;//BG:bg02_01

;//TIME:昼
;//日付:7/7(火)
;//CH:竜一,pajyama
;//CH:葵,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

;//暗転
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="700"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「呜……呜呜……」
[np]

[r]为、为什么……为什么又是内衣打扮啊……！我、我确实敲门了吧……！？
[np]

[r]既然如此，为什么……为什么前辈会是这副模样——
[np]

[playcv storage="mion_mion_00010_001.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「哎呀，我有什么问题吗？」
[np]

[r]…………咦？
[np]

;//背景表示
[r]突然，听到清晰的声音……这时我才第一次意识到自己正在做梦……
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[mion storage="D_seifuku_M CD1_4_M"]
[playcv storage="mion_mion_00010_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「早安，龙一君」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……早、早安，澪音前辈」
[np]

[r]澪音前辈如同在观察我一般，正站在笼子外面。
[np]

[character name="ryuichi"]
【龙一】[r]「那个……难道是前辈叫醒我的吗……？」
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00010_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「嗯。差不多到早饭时间了……你可以心怀感激哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……非常感谢」
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00010_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「不用谢。话说……」
[np]
[FACEHIDE]

[r]弯下腰的前辈隔着笼子窥视我的脸。
[np]

[r]总感觉这样好像变成了动物园里的动物……
[np]

[mion storage="A_seifuku_M A_1_M"]
[playcv storage="mion_mion_00010_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「龙一君，你梦到我了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_mion_00010_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「刚才你在梦话里好像喊了我的名字……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「咕呃……！」
[np]

[mion storage="C_seifuku_M CD1_4_M"]
[playcv storage="mion_mion_00010_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「咕呃……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、呃……是、是啊！我梦到和宿舍的大家一起去学校……！」
[np]

[character name="ryuichi"]
【龙一】[r]「那时候，我正在和澪音前辈说话……大、大概就是这个吧！」
[np]

[mion storage="D_seifuku_M CD1_4_M"]
[playcv storage="mion_mion_00010_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「哼嗯……去学校的梦啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊！那我先去洗把脸！」
[np]

[char_erase name="mion"]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[r]在露出破绽前赶紧离开前辈，我暂时躲进了洗手间。
[np]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]用冷水洗了把脸，边擦毛巾边盯着镜子。
[np]

[r]……其实我梦到撞见澪音前辈换衣服的场景了……
[np]

[r]这种事……根本说不出口啊。
[np]

;//時間経過
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
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[chisato storage="D_seifuku_M CD_2_M" trans=false]
[momo storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00010_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「我开动啦」
[np]
[FACEHIDE]

[r]早餐桌上摆着米饭、味噌汤、凉拌菠菜和昨天的剩菜。
[np]

[r]本该说全员到齐……不过真珠星今天似乎还在熟睡所以缺席。
[np]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_mion_00010_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「今天是七月七日，该过七夕了呢」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_3_M"]
[playcv storage="chisato_mion_00010_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「说起来确实是呢。织女和牛郎……看这天气应该没问题吧」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[mion storage="D_seifuku_M CD1_5_M"]
[playcv storage="mion_mion_00010_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_seifuku"]
【澪音】[r]「万里无云的晴朗蓝天……真无聊。要是能来场雷雨就更有趣了……」
[np]
[FACEHIDE]
[char_erase name="mion"]

[chisato storage="A_seifuku_M AB_5_M" trans=false]
[aoi storage="B_seifuku_M B_9_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00010_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「为、为什么要雷雨啊……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_mion_00010_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「毕竟是魔女，肯定在盼着别人倒霉。真是的……」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]


[mion storage="C_seifuku_L CD1_3_L"]
[playcv storage="mion_mion_00010_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「倒也不全是那样……不过天气越恶劣，才越能营造氛围呀」
[np]
[FACEHIDE]

;[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_mion_00010_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「氛围……？」
[np]
[FACEHIDE]

[mion storage="A_seifuku_L AB1_3_L"]
[playcv storage="mion_mion_00010_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「没错……为了和仆人缔结契约的，那个」
[np]
[FACEHIDE]

[char_erase name="mion"]


[aoi storage="D_seifuku_L CD_7_L"]
[char_jump name=aoi]
[playcv storage="aoi_mion_00010_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「仆人，你是说……？」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]突然在说什么啊……我边想边抬起头，不知为何正好与前辈四目相对。
[np]

[mion storage="C_seifuku_M CD1_10_M"]
[playcv storage="mion_mion_00010_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「嗯。我准备把在场的龙一君收作仆人，在我的房间里进行管理」
[np]
[FACEHIDE]

[r]于是，保持着四目相对的状态僵住了。
[np]

[character name="ryuichi"]
【龙一】[r]「……………………啊？」
[np]

[r]不止是我……在场所有人都停下筷子盯着前辈。
[np]

[character name="ryuichi"]
【龙一】[r]「奇怪，我突然耳鸣了吗……麻烦再说一遍？」
[np]

[stopbgm time=1000]

[mion storage="D_seifuku_L CD1_1_L"]
[playcv storage="mion_mion_00010_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「即日起，龙一君将作为我的仆人。同时今后要在我房间里生活」
[np]
[FACEHIDE]

[char_erase name="mion"]
[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[aoi storage="B_seifuku_M B_7_M" trans=false]
[chisato storage="C_seifuku_M CD_8_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00010_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「什……！？」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_8_M"]
[playcv storage="chisato_mion_00010_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「哎……！？」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]

[character name="ryuichi"]
[quake time="500"]
【龙一】[r]「哇啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！？？？？」
[np]

[r]我下意识猛地站了起来！哎，同住一间房！？为什么啊！？
[np]

[mion storage="C_seifuku_L CD1_3_L" trans=false]
[momo storage="A_seifuku_M AB_8_M" trans=false]
[char_trans]

[playcv storage="momo_mion_00010_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「怎、怎怎怎、怎么回事啊！？仆、仆人……仆人什么的！？」
[np]
[FACEHIDE]

[r]原以为仆人什么的不过是老毛病中二发作……但要同住一间房！？
[np]

;[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00010_099.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「距离决定龙一君去向的讨论日只剩十天出头了……让生活核心区域的客厅继续被龙一君占据，各方面都不太合适吧？」
[np]
[FACEHIDE]

[char_erase name="momo mion"]

[chisato storage="A_seifuku_M AB_6_M" trans=false]
[momo storage="B_seifuku_M AB_5_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00010_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「那、那是……」
[np]
[FACEHIDE]

;[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_mion_00010_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「可、可我觉得至少……神原先辈今后还是该住在这个宿舍……」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[mion storage="B_seifuku_L AB1_1_L"]
[playcv storage="mion_mion_00010_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「当然，我完全没有要赶人走的意思。但长期占据客厅对彼此都没好处」
[np]
[FACEHIDE]

[mion storage="C_seifuku_L CD1_2_L"]
[playcv storage="mion_mion_00010_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_seifuku"]
【澪音】[r]「所以作为全宿舍的代表……由最年长的我来收留龙一君」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「收、收留……这……」
[np]

;[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_mion_00010_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「这、这样真的好吗！？男女同住一间房什么的……」
[np]
[FACEHIDE]

[mion storage="A_seifuku_L AB1_2_L"]
[playcv storage="mion_mion_00010_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「我不介意。而且龙一君没有否决权」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么啊！？」
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00010_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「毕竟宿舍里女生占多数……大家觉得呢？这样安排更方便吧？」
[np]
[FACEHIDE]

[char_erase name="mion chisato"]


[r]咦、无视我吗？我的发言被跳过了？
[np]
[momo storage="C_seifuku_M C_8_M" trans=false]
[chisato storage="C_seifuku_M CD_9_M" trans=false]
[char_trans]

[playcv storage="momo_mion_00010_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「的、的确……晚上去洗手间的时候……确实有点在意……」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_9_M"]
[playcv storage="chisato_mion_00010_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「也是呢……穿着居家服时的内衣之类的……那种情况……该怎么说呢……」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

[r]看到桃酱和绫濑难以启齿地羞红了脸……虽然嘴上绝不会说出口，但内心却兴奋不已。
[np]

[character name="ryuichi"]
【龙一】[r]「那个、关于我没有否决权这件事……」
[np]

[mion storage="D_seifuku_L CD1_10_L"]
[playcv storage="mion_mion_00010_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「哎呀，这不是理所当然吗？既然要在我房间同住，就必须明确上下级关系」
[np]
[FACEHIDE]

[mion storage="B_seifuku_L AB1_3_L"]
[playcv storage="mion_mion_00010_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「准确来说不是上下级而是主从关系……我是主人，你是仆从。仆从还妄想有发言权吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可、可是只要不住同一间房就根本不会产生上下级——」
[np]

[mion storage="A_seifuku_L AB1_2_L"]
[playcv storage="mion_mion_00010_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「那么，还有其他意见吗？」
[np]
[FACEHIDE]

[r]又无视我！？
[np]

[mion storage="C_seifuku_L CD1_1_L"]
[playcv storage="mion_mion_00010_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「既然没有异议，今天就立刻——」
[np]
[FACEHIDE]

[char_erase name="mion"]

[quake time="500"]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_mion_00010_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
[quake time="500"]
【葵】[r]「给我等一下啊啊啊啊啊啊！！」
[np]
[FACEHIDE]

[r]哦哦，葵站起来了！
[np]

[aoi storage="A_seifuku_M A_4_M"]
[char_jump name=aoi]

[playcv storage="aoi_mion_00010_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_seifuku"]
【葵】[r]「你这家伙……竟想对我盟友翼神龙洗脑吗！？」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[mion storage="D_seifuku_L CD1_4_L" trans=false]
[aoi storage="C_seifuku_M CD_9_M" trans=false]
[char_trans]

[playcv storage="mion_mion_00010_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「洗脑？说得真难听呢……我只是单纯对龙一君……对翼神龙感兴趣而已呀？」
[np]
[FACEHIDE]

;[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_mion_00010_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「感兴趣……？就因为这个理由，就要把他监禁在自己房间吗……！」
[np]
[FACEHIDE]

[mion storage="A_seifuku_L AB1_3_L"]
[playcv storage="mion_mion_00010_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「是啊……光是监禁太无聊了。采集你的皮肤样本观察细胞，可能的话再解剖看看……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好可怕好可怕好可怕！！话题突然变得太危险了！！」
[np]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_mion_00010_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「这种事……我绝对不会允许！！」
[np]
[FACEHIDE]

[mion storage="C_seifuku_L CD1_9_L"]
[playcv storage="mion_mion_00010_024.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_seifuku"]
【澪音】[r]「呵……我本来就没打算征求你的许可……！」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]


[momo storage="A_seifuku_M AB_8_M" trans=false]
[chisato storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]


[playcv storage="momo_mion_00010_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「那、那个……你们两个……？」
[np]
[FACEHIDE]

;//「ダーク・プリーステス」でお願いします
;[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_mion_00010_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「——堕天邪圣职者——！我绝不会让这个魔女为所欲为！上吧！！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_10_M"]
[playcv storage="momo_mion_00010_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
【桃】[r]「呜呜！？啊、那个那个……呃……！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_11_M"]
[playcv storage="chisato_mion_00010_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_seifuku"]
【千圣】[r]「好啦好啦，吃饭的时候禁止做那种事！」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]

;//「ダーク・リベンジャー」でお願いします
[mion storage="A_seifuku_M AB1_3_M" trans=false]
[aoi storage="B_seifuku_M B_4_M" trans=false]
[char_trans]

[playcv storage="mion_mion_00010_025.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「怎么了——漆黑复仇者——……？难道一个人就什么都做不到的废物吗……？」
[np]
[FACEHIDE]

;//「ヘル・フレイム」の言いかけでお願いします
[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_mion_00010_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「我要让你再也说不出这种废话……！——地狱的——」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[quake time="500"]

[chisato storage="B_seifuku_L AB_11_L"]
[playcv storage="chisato_mion_00010_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
[quake time="500"]
【千圣】[r]「给我好好吃饭——————！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="B_seifuku_M AB1_2_M" trans=false]
[aoi storage="B_seifuku_M B_4_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00010_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「……这、这个胜负，之后绝对要……！」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00010_026.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「呵呵……正合我意……」
[np]
[FACEHIDE]

[char_erase name="mion aoi"]

[r]随着绫濑的雷击落下，场面总算是勉强平息了……
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]对我来说根本算不上平息……呃……到头来，我还是要寄住在学姐的房间里吗？
[np]

[r]也就是说……这算是同居……对吧……？
[np]

[r]…………啊？
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

[jump storage="scenario/mion/mion_00020.ks"]