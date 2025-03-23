[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00290.txt]
;//chisato_00290
;//BG:bg12_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//\SEチャイム音
[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]结果虽然早上总算避免了迟到……
[np]

[r]今天发回来的各科试卷依旧惨不忍睹，我的内心片刻不得安宁。
[np]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_chisato_00290_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「龙一君龙一君。走啦，该去吃便当啦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，好的……」
[np]

[char_erase name="akane"]

[r]……本来还想着日本史说不定能勉强达到平均分呢……
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]




;//背景を屋上bg12_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]



[akane storage="C_seifuku_M CD_10_M" trans=false]
[sousi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="akane_chisato_00290_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「那我开动啦～！」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_2_M"]

[r]午休时分，我们在天台角落围坐成一圈，各自打开便当。
[np]

[r]随着暑假临近，愿意特意跑到烈日当空的天台吃午饭的学生似乎越来越少了。
[np]

[sousi storage="A_seifuku_M A_5_M"]
[playcv storage="sousi_chisato_00290_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_5_FACE_seifuku"]
【爽史】[r]「我的人生理想不过是终日被二次元小萝莉环绕……」
[np]
[FACEHIDE]

[akane storage="C_seifuku_M CD_4_M"]
[playcv storage="akane_chisato_00290_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_4_FACE_seifuku"]
【茜】[r]「突然说这个……先说好，二次元世界里也有期末考试的哦？」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_9_M"]
[playcv storage="sousi_chisato_00290_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_9_FACE_seifuku"]
【爽史】[r]「求之不得！！为了不浪费和二次元萝莉共度的暑假时光，我将以钢铁般的意志全身心投入避免挂科！！」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_4_M"]
[playcv storage="akane_chisato_00290_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
【茜】[r]「志向也太低了吧……」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_7_M"]
[playcv storage="sousi_chisato_00290_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_7_FACE_seifuku"]
【爽史】[r]「啊啊、看到了、看到了……坐在檐廊上听着蝉鸣、天真无邪舔着冰棍的小女孩，而我正微笑注视着的场景……」
[np]
[FACEHIDE]

[char_erase name="sousi akane"]
[r]突然起身的爽史挥舞着手中的面包开始高谈阔论。
[np]

[sousi storage="A_seifuku_L A_8_L"]
[playcv storage="sousi_chisato_00290_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_8_FACE_seifuku"]
【爽史】[r]「被阳光晒得微微发红的肌肤，从稍大尺寸连衣裙中若隐若现的白皙肌肤渐变！恭喜你！！」
[np]
[FACEHIDE]

;//「しごく」でお願いします。
[sousi storage="A_seifuku_L A_7_L"]
[playcv storage="sousi_chisato_00290_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_7_FACE_seifuku"]
【爽史】[r]「待到小女孩开始犯困时，握着牛奶味特制冰棍的我怀揣着背德感正要摆弄起来的时候就会——哦哦哦哦哦！！？」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[playse buf=5 storage="sound/10050.ogg"]
[quake time="500"]

[akane storage="A_seifuku_M AB_10_M"]
[playcv storage="akane_chisato_00290_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_10_FACE_seifuku"]
【茜】[r]「妄想是你的自由，但１８禁的展开是ＮＧ——！！」
[np]
[FACEHIDE]

[r]茜的一记贴身肘击正中毫无防备的腹部，爽史当场向前扑倒不再动弹。
[np]

[akane storage="C_seifuku_M CD_2_M"]
[playcv storage="akane_chisato_00290_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「好啦别管他了快吃吧。哇、有我喜欢的照烧𫚕鱼耶～♪」
[np]
[FACEHIDE]

[char_erase name="akane"]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_chisato_00290_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「啊哈哈……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]而后茜若无其事地开始用餐的模样……看来早就习以为常了吧。
[np]

[aoi storage="B_seifuku_L B_7_L"]
[playcv storage="aoi_chisato_00290_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「唔……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，怎么了？」
[np]

[aoi storage="C_seifuku_L CD_4_L"]
[char_jump name=aoi]

[playcv storage="aoi_chisato_00290_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「能听见……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……？」
[np]

[char_erase name="aoi"]

[aoi storage="D_seifuku_M CD_9_M" trans=false]
[chisato storage="B_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="aoi_chisato_00290_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「喂、你听见了吗安杰……这夹杂着悲鸣的呻吟声……」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00290_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂、喂……！」
[np]

[char_erase name="aoi chisato"]


[r]葵这家伙、居然在茜她们面前用那种称呼……！
[np]



[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_chisato_00290_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「嗯？安杰？」
[np]
[FACEHIDE]

[char_erase name="akane"]
[r]确实昨天、千圣公开承认了中二病……但那是仅限于宿舍的大家而已——
[np]

;//小声
[chisato storage="A_seifuku_L AB_11_L"]
[playcv storage="chisato_chisato_00290_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「不会有错、那家伙开始行动了……」
[np]
[FACEHIDE]

[r]哎……。
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_chisato_00290_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「安杰是指、小千吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、那个、这是……」
[np]

[char_erase name="akane chisato"]

[chisato storage="C_seifuku_M CD_9_M" trans=false]
[akane storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="chisato_chisato_00290_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「那、那个啊，小茜……！」
[np]
[FACEHIDE]

[r]千圣紧张地面对着满脸困惑的茜。
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_chisato_00290_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「其、其实那个……我、我一直以来都瞒着大家……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]原来如此……千圣从一开始就打算这么做。所以才会用那种方式回应葵……
[np]

[char_erase name="akane chisato"]


[chisato storage="B_seifuku_L AB_11_L"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00290_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「其实我……是为了守护世界和平而从天界降临的光之圣天使！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[akane storage="D_seifuku_L CD_10_L"]
[quake time="500"]
[playcv storage="akane_chisato_00290_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「什、什么啊啊啊啊啊啊啊啊啊啊啊！！！？？」
[np]
[FACEHIDE]

[r]茜用连年轻艺人都自叹不如的夸张反应，拼命表现出震惊的样子。
[np]

[akane storage="A_seifuku_L AB_4_L"]
[playcv storage="akane_chisato_00290_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_4_FACE_seifuku"]
【茜】[r]「光、光之圣天使……！？那个，也就是说……」
[np]
[FACEHIDE]

[akane storage="A_seifuku_L AB_7_L"]
[playcv storage="akane_chisato_00290_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「也就是说……小千也和葵一样拥有特殊能力对吧……！？」
[np]
[FACEHIDE]

[char_erase name="akane"]

[r]……从茜的措辞中能感受到她对朋友的关怀之情。
[np]

[r]尽管对突如其来的出柜宣言感到惊讶，但还是努力配合的温柔……让人不由得肃然起敬。
[np]

[chisato storage="D_seifuku_M CD_9_M" trans=false]
[akane storage="A_seifuku_M AB_7_M" trans=false]
[char_trans]

[playcv storage="chisato_chisato_00290_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「嗯、嗯……就是那样……」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_7_M"]

[playcv storage="akane_chisato_00290_013.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「真让人吃惊啊，这所学园里全都是厉害人物呢……！对吧，爽史你听到了吗？话说你还活着吗？」
[np]
[FACEHIDE]

[char_erase name="akane chisato"]


[sousi storage="B_seifuku_L B_3_L"]
[playcv storage="sousi_chisato_00290_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「我还活着，而且也在认真听你们说话。这样啊，连绫濑也……」
[np]
[FACEHIDE]

[r]原本瘫倒在地的爽史撑起身子，用指尖轻轻推正眼镜后……
[np]

[sousi storage="B_seifuku_L B_10_L"]
[playcv storage="sousi_chisato_00290_007.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「既然聚集了这么多超能力者……通往二次元的大门开启之日恐怕也不远了吧……」
[np]
[FACEHIDE]

[char_erase name="sousi"]
[r]虽然摆出一副认真的表情，但两个鼻孔却不断淌下鲜红的血。毕竟刚才脸朝下摔得那么狠。
[np]

[chisato storage="A_seifuku_M AB_5_M" trans=false]
[akane storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]


[playcv storage="chisato_chisato_00290_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「那个……对、对不起，一直瞒着你们……」
[np]
[FACEHIDE]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_chisato_00290_014.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「完全不用道歉啦！倒不如说，你现在能坦白这些让我很开心呢！」
[np]
[FACEHIDE]

[char_erase name="akane chisato"]
[r]看着两人如此自然地接纳了鼓起勇气坦白的千圣……
[np]

[r]目睹这般温馨景象，连我都不由自主地感到欣慰。
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


;//JUMP:chisato_00300
[jump storage="scenario/chisato/chisato_00300.ks"]

