[SCENESTART file=aoi_00140.ks]
;//aoi_00140
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/9(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku

[r]夏日艳阳高悬头顶的放学路上，我与葵并肩而行。
[np]

[r]考试日唯一的好处就是能早点回家啊。
[np]

[character name="ryuichi"]
【龙一】[r]「但真的好热……」
[np]

[r]擦拭额角沁出的汗珠，对着晴空投去不服气的眼神。
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00140_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「龙一原来讨厌炎热吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯…不太好说呢。硬要在酷暑和严寒里选的话，可能更讨厌寒冷吧」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00140_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「原来如此，龙族畏惧寒冷么……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「噢……」
[np]

[r]顺着视线望去，发现了自动贩卖机。
[np]

[r]来得正好。正好口渴了，买罐果汁吧。
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00140_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「龙一这是在补充魔力吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊，稍等我下。呃……」
[np]

[char_erase name="aoi"]

[r]在自动贩卖机前驻足，掏出钱包打量着商品。
[np]

[r]现在特别想喝碳酸饮料…找个看起来好喝的……
[np]

[character name="ryuichi"]
【龙一】[r]「哦……」
[np]

[r]新上市的水果苏打…那就试试这个吧。
[np]

[character name="ryuichi"]
【龙一】[r]「好嘞」
[np]

[r]投入硬币按下按钮，取出滚出的罐装饮料。
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00140_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「真是新奇的饮料…从没见过的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「写着新上市呢，应该是刚推出的吧？」
[np]

[char_erase name="aoi"]

;//\SE缶ジュースを開ける音
[wait time="1000"]
[playse buf=5 storage="sound/60007.ogg"]
[wait time="1000"]

[r]握着挂满水珠的铝罐，另一只手拉开拉环。
[np]

[r]那么，味道究竟……
[np]

[character name="ryuichi"]
【龙一】[r]「嗯…嗯、嗯…咕嘟…嗯嗯！？」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00140_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「怎、怎么了龙一！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这……这也太好喝了吧！」
[np]

[r]呲啦作响的碳酸气泡与水果香味在鼻尖掠过……
[np]

[r]甜而不腻的清爽感沁透全身……这个真不错！
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00140_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「真的这么好喝吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「虽然可能也有口渴的缘故……但这个确实棒！」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00140_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「被你这么说的话，我也有些在意……龙一，让我尝一口！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_aoi_00140_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「要是真的好喝我也买！所以快让我尝一口味道！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「尝一口什么的……」
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_aoi_00140_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「只要尝一点就行……毕竟我和龙一是，一同从漆黑深渊中诞生的同伴对吧？」
[np]
[FACEHIDE]

[r]不、这和深渊不深渊的没关系……关键是，这罐饮料我已经喝过了啊。
[np]

[r]也就是说，葵要是再对着罐口喝的话……
[np]

[character name="ryuichi"]
【龙一】[r]「葵……你、你真的不介意吗？」
[np]

[aoi storage="C_seifuku_L CD_9_L"]
[playcv storage="aoi_aoi_00140_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「说什么介意不介意的，我是在说想喝一口啦！快点龙一，给我！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……那……」
[np]

[char_erase name="aoi"]

[r]葵开心地接过了我犹犹豫豫递过去的饮料。
[np]

[r]然后……
[np]

[aoi storage="A_seifuku_L A_2_L"]
[playcv storage="aoi_aoi_00140_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「嗯……嗯……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_L B_7_L"]
[playcv storage="aoi_aoi_00140_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「哈——！哇，这个真的好好喝！」
[np]
[FACEHIDE]

[r]她毫无察觉地露出了满足的笑容。
[np]

[aoi storage="D_seifuku_L CD_2_L"]
[playcv storage="aoi_aoi_00140_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「谢啦，龙一！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、嗯……」
[np]

[char_erase name="aoi"]

[r]从葵手中接回饮料后，我的目光不自觉地落在了她喝过的罐口上。
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00140_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「……？怎么了龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不……真的没问题吗？」
[np]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_aoi_00140_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「没问题……是指什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这可是……和我间接接吻啊」
[np]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00140_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「——哎？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我先喝过之后，葵又对着罐口喝……看你好像不在意的样子，我就想着应该没关系」
[np]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_aoi_00140_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「怎……怎、怎么……怎啊啊啊啊啊！！？！！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……难道说，现在才反应过来？」
[np]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00140_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「呜、呜呜……啊呜……」
[np]
[FACEHIDE]

[r]葵的耳朵变得通红，顿时手忙脚乱地慌乱起来。
[np]

[r]看这情形，如果我不说，她可能永远都不会察觉吧……
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00140_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「间、间接……间接接吻什么的……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_aoi_00140_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「也、也就是说……我和龙一……那、那个……接吻……了吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「咦……？」
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00140_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「间、间接接吻也是接吻的一种……我、我只是、那个……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00140_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「难、难道说我的『初吻』就这样被龙一夺走了吗！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈！？等、等等等等！你这跳跃得也太夸张了！！」
[np]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_aoi_00140_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「可、可是我和龙一间接接吻了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不不，间接接吻虽然带个接吻的词，但和普通接吻是两码事……！」
[np]

[character name="ryuichi"]
【龙一】[r]「总、总之那个……啊，葵你担心的初吻归属问题不会算在这上面，放心吧！」
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00140_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「真、真的吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊！」
[np]

[r]再说了，要是这都算的话，那大部分人的初吻对象都得是父母或兄弟姐妹了……。
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00140_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「这、这样啊……那就好……」
[np]
[FACEHIDE]

[r]得知自己的初吻安然无恙后，葵如释重负地松了口气。
[np]

[r]她也会像普通女孩子一样在意这种事情啊……
[np]

[character name="ryuichi"]
【龙一】[r]「喂，我们走吧」
[np]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00140_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「啊，嗯……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]……既然会担心初吻的事……也就是说葵还没有接吻的经验。
[np]

[r]我、我在胡思乱想什么啊！这种事跟我有什么关系……！
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

;//JUMP:aoi_00150
[jump storage="scenario/aoi/aoi_00150.ks"]