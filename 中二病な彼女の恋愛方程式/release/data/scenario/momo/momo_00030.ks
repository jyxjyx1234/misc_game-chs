[SCENESTART file=momo_00030.ks]
;//momo_00030
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/2(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:もも,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[playse buf=5 storage="sound/00090.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「好险……！」
[np]

[r]宣告所有课程结束的钟声响起，放学时分。
[np]

[r]看来我短暂失去了几分钟意识，回过神时黑板上已经写满了考试范围。
[np]

[r]一边擦着嘴角的口水，一边拼命抄写总算蒙混过关，不过……
[np]

[r]……考试前一周的课还敢打瞌睡，这已经够致命了吧……
[np]

[character name="ryuichi"]
【龙一】[r]「爽史，辛苦了……」
[np]

[r]在心底苦笑一声，转头向邻座的朋友搭话。
[np]

[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_momo_00030_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……爽史？」
[np]

[r]他保持着端正的坐姿，笔直的目光仿佛要将黑板盯穿。
[np]

[r]完全纹丝不动啊，看起来超级专注……现在搭话是不是不太好？
[np]

[character name="ryuichi"]
【龙一】[r]「……打扰了爽史，那我先走——」
[np]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_momo_00030_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「…………咕……」
[np]
[FACEHIDE]

[r]……诶？
[np]

[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_momo_00030_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「咕……呼……咕……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「居然睁着眼睛睡觉啊！！！」
[np]

[sousi storage="A_seifuku_M A_3_M"]
[playcv storage="sousi_momo_00030_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「嗯、嗯嗯……哥哥，人家已经忍不住了呀……快点、快点……进来……？」
[np]
[FACEHIDE]

[r]这家伙到底在做什么梦……虽然有点在意但还是别问为妙。
[np]

[sousi storage="B_seifuku_M B_2_M"]
[playcv storage="sousi_momo_00030_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_2_FACE_seifuku"]
【爽史】[r]「对，就是那里……我最珍贵的……只属于哥哥的……」
[np]
[FACEHIDE]

[r]此刻保持沉默才是文明人的基本素养，不过有句话实在不吐不快。
[np]

[r]你代入的居然是妹妹视角啊！！！
[np]

[char_erase name="sousi"]

[r]……在内心完成这番吐槽后，我抱着书包离开了这位从挚友荣升为变态的奇葩同学。
[np]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_momo_00030_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「啊，龙一君辛苦啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，辛苦啦」
[np]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_momo_00030_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「咦，怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、不，没什么……你们两个这就要回去了吗？」
[np]

[akane storage="A_seifuku_M AB_3_M"]
[playcv storage="akane_momo_00030_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_seifuku"]
【茜】[r]「嗯。我是来给社团帮忙的，小千是来打工的。对吧？」
[np]
[FACEHIDE]

[r]被茜抛来话头，绫濑点头回应。
[np]

[character name="ryuichi"]
【龙一】[r]「也就是说，我必然得……」
[np]

;//[aoi storage="B_seifuku_M B_4_M"]
[r]……也就是说，我得和那个从刚才开始就一直捂着一只眼睛意味深长地盯着这边看的家伙一起回家啊。
[np]

[chisato storage="C_seifuku_M CD_2_M"]
[playcv storage="chisato_momo_00030_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「那待会儿见啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，打工加油吧」
[np]

[char_erase name="chisato akane"]

[r]目送着两个关系要好的女生离开教室，我重新抱紧书包……
[np]

[character name="ryuichi"]
【龙一】[r]「走了，复仇者」
[np]

[aoi storage="C_seifuku_M CD_11_M"]
[playcv storage="aoi_momo_00030_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_seifuku"]
[char_jump name="aoi"]
【葵】[r]「！」
[np]
[FACEHIDE]

[r]和仅因一句话就眼睛发亮的葵一起离开了教室。
[np]
[char_erase name="aoi"]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_momo_00030_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「……好了放心吧翼神龙。这条道路没问题。除了我们之外没有其他能力者的气息」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……」
[np]

[r]都怪刚才不小心叫了声复仇者……现在这孩子已经完全进入状态了……
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_momo_00030_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「回到宿舍后立刻开始作战会议吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「作战……？什么作战」
[np]

[aoi storage="B_seifuku_M B_3_M"]
[playcv storage="aoi_momo_00030_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_3_FACE_seifuku"]
【葵】[r]「忘记了吗龙一，魔女现在体力消耗严重……换句话说今晚就是讨伐的最佳时机」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]要对通宵打游戏熬到早上的前辈出手吗……可别惹她生气了啊
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_momo_00030_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「既然如此，首先要和桃——」
[np]
[FACEHIDE]

;[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_momo_00030_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「小葵——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[r]突然听到背后传来的声音，转身望去……
[np]

;//「ダークプリーステス」でお願いします
[aoi storage="D_seifuku_M CD_7_M"]
[playcv storage="aoi_momo_00030_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「噢——堕天圣职者——！」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00030_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「呃……！」
[np]
[FACEHIDE]

[r]发现我们后跑过来的桃酱，在听到那个称呼后整个人僵住了。
[np]

[character name="ryuichi"]
【龙一】[r]「你刚才不是说除了我们之外没有其他能力者的气息吗？」
[np]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_momo_00030_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「啊、那个……只是排除了同伴的识别信号而已啦」
[np]
[FACEHIDE]

[r]那、那就当是这样吧。
[np]

[aoi storage="C_seifuku_M CD_2_M"]
[playcv storage="aoi_momo_00030_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「正好你来了……今晚要和翼神龙一起执行作战代号『白夜之月』，刚刚才取得同意」
[np]
[FACEHIDE]

[r]我根本没同意啊！
[np]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00030_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「啊……原、原来是这样……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_momo_00030_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「当然，作战成功离不开桃的协助……你愿意帮忙吗？」
[np]
[FACEHIDE]
[r]听到葵的话，桃酱先是偷偷瞥了我一眼。
[np]

[r]果然会这样……这几周相处下来我也发现了……
[np]

[r]桃酱似乎只有在葵和澪音学姐面前以外的地方，都不太愿意展露中二病的一面。
[np]

[r]个中缘由不言而喻，自然是觉得难为情……不过某种意义上，这才是正常的——
[np]

;//「ダークプリーステス」でお願いします
[momo storage="D_seifuku_M D_9_M"]
[playcv storage="momo_momo_00030_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「我、我明白了……！这、这位堕天圣职者——在下虽不才，也定当竭尽所能完成任务！」
[np]
[FACEHIDE]

[r]诶……
[np]

[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_momo_00030_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「能辅助师傅魔法的只有我……！我、我会全力以赴的！！」
[np]
[FACEHIDE]

[r]　桃酱摆出一副像是决定姿势的架势向葵如此宣言。
[np]

;//「ダークプリーステス」でお願いします
[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_momo_00030_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「感激不尽，堕天圣职者……如有你相助便如虎添翼」
[np]
[FACEHIDE]


[r]　是被葵的热忱所感染才勉强答应的么。亦或是——
[np]


;//[sousi storage="B_seifuku_M B_3_M"]
[playcv storage="sousi_momo_00030_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「嚯，看来挺有趣的」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00030_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「欸……」
[np]
[FACEHIDE]

[char_erase name="aoi momo"]

[r]突然从背后传来的声音让我们转头望去——
[np]

[sousi storage="C_seifuku_M CD_1_M"]

[character name="ryuichi"]
【龙一】[r]「喂、爽史！？」
[np]

[r]就在刚刚还在睁着眼睛说危险梦话的朋友——或者说变态，此刻却若无其事地站在我们身后。
[np]

[character name="ryuichi"]
【龙一】[r]「你、你怎么……」
[np]

[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_momo_00030_007.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「这里是我回家的必经之路。正往家走时碰巧看到你们三位」
[np]
[FACEHIDE]

[sousi storage="C_seifuku_M CD_2_M"]
[playcv storage="sousi_momo_00030_008.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_2_FACE_seifuku"]
【爽史】[r]「本想打个招呼的，不过看你们聊得正起劲……就稍等了一会儿」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那刚才的对话……」
[np]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_momo_00030_009.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「作战代号『白夜之月』么……真是个让人起鸡皮疙瘩的命名」
[np]
[FACEHIDE]

[r]爽史只是坦率地说出了自己的想法，但不知为何总觉得有点难为情……
[np]

[char_erase name=sousi]

[momo storage="D_seifuku_M D_10_M"]
[playcv storage="momo_momo_00030_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
【桃】[r]「啊……啊、啊哇、啊哇哇……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、那个……桃酱……？」
[np]

[r]发生什么事了。突然就满脸通红——
[np]

[momo storage="A_seifuku_M AB_6_M"]
[playcv storage="momo_momo_00030_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_seifuku"]
【桃】[r]「不、不要啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！」
[np]
[FACEHIDE]

[char_erase name=momo to=right time=800 fade=true]

;//[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_momo_00030_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「小桃————！？」
[np]
[FACEHIDE]

[r]……在耳尖通红的瞬间，桃酱就以光速逃离了现场。
[np]

[sousi storage="D_seifuku_M CD_6_M"]
[playcv storage="sousi_momo_00030_010.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_6_FACE_seifuku"]
【爽史】[r]「……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……那个，嗯……」
[np]

[char_erase name="sousi"]

[r]果然当众犯中二病……这种事，还是觉得难为情了吧。
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

[jump storage="scenario/momo/momo_00040.ks"]