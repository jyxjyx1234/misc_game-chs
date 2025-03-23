[SCENESTART file=momo_00320.ks]
;//momo_00320
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM05.ogg" time=1000]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:もも,seifuku

[r]……正如此般想着的我身上……
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]万万没想到，竟会发生这种事……！
[np]

[r]今天也照旧在发完考卷后，正打算和葵他们一起回家时……
[np]

[r]我在鞋柜里发现了「某样东西」，随便编了个理由就飞奔回教室。
[np]

[character name="ryuichi"]
【龙一】[r]（喂喂……真的假的……！）
[np]

[r]我汗津津的手里攥着个可爱信封。
[np]

[r]方才强忍着紧张与兴奋，用颤抖的手拆开它之后……
[np]

[r]信纸上用不输信封与信笺设计的可爱字迹，只写了一句话。
[np]

[r]「请在教室等我」
[np]

[r]仅此而已。
[np]

[character name="ryuichi"]
【龙一】[r]「到底是谁……」
[np]

[r]除了这句话之外再无其他内容。硬要说的话，信封角落还写着小小的「致神原龙一同学」。
[np]

[r]也就是说，这封信被误投进我的鞋柜，而非原本要给其他同学看的可能性被排除了。
[np]

[r]不过……
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]教室里还留着几组同学。虽然仍在闲聊，但大部分人都已经抱着书包准备离开。
[np]

[r]用余光瞥着他们，我再次凝视手中的信封。
[np]

[r]收到这样的信……作为青春期的男生，自然会本能地期待这是告白。
[np]

[r]即便以这个前提来考虑……假设即将出现在教室的女生真的向我表达好感……
[np]

[r]……换作是几天前的我，应该会在现场立刻做出判断……当场给予接受或拒绝的答复吧。
[np]

[r]但现在不同了。
[np]

[r]现在的我……心里已经住进了一个明确意识到自己爱慕之情的女孩。
[np]

[r]所以……虽然真的很抱歉，但对于写这封信的女生……
[np]

[character name="ryuichi"]
【龙一】[r]「……要真是整人节目的话反而更让人扫兴」
[np]

[r]当然我会暴跳如雷……但某种意义上或许那样反而更轻松
[np]

[r]就在我胡思乱想期间，回过神来发现教室里只剩我一人……
[np]

[character name="ryuichi"]
【龙一】[r]（……只要在这里……等着就行了吧……）
[np]

[r]教室陷入死寂后，自己的心跳声开始吵得刺耳
[np]

[r]不过对方应该不会立刻现身……这段时间都要保持这种紧张状态吗……
[np]

[r]……又过了几分钟。对我而言仿佛三十分钟般漫长的时光流逝后……
[np]

[playse buf=5 storage="sound/00230.ogg"]
[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]

[r]走廊方向传来轻微的脚步声
[np]

[r]听见声响的我条件反射般从座位弹了起来
[np]

[playse buf=5 storage="sound/00290.ogg"]
[wait time="500"]

[r]就在门扉开启的刹那——
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00320_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「…………」
[np]
[FACEHIDE]

[r]……看到现身的女孩……我瞬间僵在原地动弹不得。
[np]

[character name="ryuichi"]
【龙一】[r]「……桃、桃……」
[np]

[r]听到刚刚开口的我喊出那个名字，桃酱有些害羞地腼腆一笑。
[np]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00320_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「对不起学长……特意让你留下来……」
[np]
[FACEHIDE]

[r]绝不可能认错的……她的样貌、声音、气质……所有的一切，都是我所熟知的花之咲桃酱。
[np]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00320_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「……信、你读过了吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……嗯」
[np]

[r]我瞥了眼桌上摊开的信纸，重新抬头看向前方。
[np]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_momo_00320_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「说是信……其实只有短短一行字呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「刚才我一直在想会是谁……原来是桃酱啊」
[np]

[momo storage="D_seifuku_M D_2_M"]
[playcv storage="momo_momo_00320_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「嘿嘿……抱歉，让你失望了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么可能……说什么失望……」
[np]

[r]应该说，正中要害。
[np]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00320_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「……我、那个……有、有件事想……告诉学长……」
[np]
[FACEHIDE]

[r]桃酱在胸前紧紧攥住那双小手，带着充满决意的表情与我四目相对。
[np]

[r]这一瞬间，我既预感到即将发生的对话内容……又因自己的不中用，差点要露出自嘲的苦笑。
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00320_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「那、那个……就是……」
[np]
[FACEHIDE]

[r]在这种事情上，身为男生的我……根本没有资格高举什么廉价的自尊。
[np]

[momo storage="A_seifuku_M AB_4_M"]
[playcv storage="momo_momo_00320_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_seifuku"]
【桃】[r]「其实……嗯、那个……」
[np]
[FACEHIDE]

[r]正是因为桃酱的主动示好，这份心意才在我心中萌芽。多亏了桃酱，我才得以意识到这份心意。
[np]

[r]而此刻……率先鼓起勇气的，仍是眼前这个女孩。
[np]

[momo storage="D_seifuku_M D_9_M"]
[playcv storage="momo_momo_00320_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_seifuku"]
【桃】[r]「那、那个……神、神原学长！」
[np]
[FACEHIDE]

[r]原本低着头的桃酱突然甩动长发，仰面呼唤我的名字。
[np]

[momo storage="B_seifuku_M AB_6_M"]
[playcv storage="momo_momo_00320_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_seifuku"]
【桃】[r]「其实……我、我……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_momo_00320_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「我……对神原学长……喜、喜欢您！！！」
[np]
[FACEHIDE]

[r]这句话悄然溶入我的胸膛……轻而易举地加速了心脏的跳动。
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_momo_00320_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「所、所以那个……请、请和我……交、交往……可以让我……成为学长的女朋友吗……！？」
[np]
[FACEHIDE]

[r]她露出仿佛随时会哭出来的表情。
[np]

[r]即便如此桃酱还是鼓起勇气，向我表白了心意。
[np]

[r]……竟然让这么可爱的女孩露出这种表情……好好反省吧，我。
[np]

[character name="ryuichi"]
【龙一】[r]「……谢谢，桃酱。不过该怎么说呢……这话应该由我来说才对……」
[np]

[momo storage="D_seifuku_M D_7_M"]
[playcv storage="momo_momo_00320_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「呃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……其实是我该请求你。桃酱……能不能让我……」
[np]

[character name="ryuichi"]
【龙一】[r]「成为你的……男朋友呢」
[np]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_momo_00320_014.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「……！！」
[np]
[FACEHIDE]

[r]她圆溜溜的大眼睛剧烈颤动起来……
[np]

[momo storage="C_seifuku_M C_7_M"]
[playcv storage="momo_momo_00320_015.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「哎……哎、哎……？那、那也就是说……那个……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00320_016.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「也就是说……学、学长是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我也喜欢桃酱！」
[np]

[momo storage="D_seifuku_M D_6_M"]
[playcv storage="momo_momo_00320_017.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_6_FACE_seifuku"]
【桃】[r]「——！」
[np]
[FACEHIDE]

[r]站在我面前的娇小可爱的女孩子。
[np]

[r]大颗的泪珠不断从她眼眶坠落，在制服上晕染开来。
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00320_018.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「骗人……哎……？学长也、学、学长也……对我……？哎、哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「桃酱！」
[np]

[momo storage="B_seifuku_L AB_7_L"]
[playcv storage="momo_momo_00320_019.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[r]或许是因为各种感情复杂地交织在一起，桃酱的泪水越发汹涌。
[np]

[r]我将这样的桃酱紧紧搂进怀里——
[np]

[momo storage="A_seifuku_L AB_9_L"]
[playcv storage="momo_momo_00320_020.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_9_FACE_seifuku"]
【桃】[r]「嗯……？嗯、啾……」
[np]
[FACEHIDE]

[r]为了传达自己毫无虚假的心意……我吻上了那可爱的樱唇。
[np]

[momo storage="D_seifuku_M D_7_M"]
[playcv storage="momo_momo_00320_021.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「啊……学、学长，刚才……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……现在能相信我了吗？」
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00320_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[r]回过神来，那双泛红的眼眸已不再流泪……
[np]

[momo storage="B_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00320_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「……嗯……♪」
[np]
[FACEHIDE]

[r]带着脸颊上未干的泪痕，她绽放出灿烂的笑容。
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00320_024.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「……最开始听到时……我还以为是在做梦……立刻就怀疑起来了……」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00320_025.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「学长说喜欢我什么的……实在让人不敢相信……」
[np]
[FACEHIDE]

[momo storage="C_seifuku_M C_3_M"]
[playcv storage="momo_momo_00320_026.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「但是……被学长紧紧抱住……感受到这份心跳加速和温暖……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00320_027.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「现在又得到了学长的吻……终于确定这不是梦了……♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……那鼓起勇气的吻也算值得了」
[np]

[r]虽然有点难为情，但内心其实怦怦直跳得厉害。或者说，现在也还在跳。
[np]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_momo_00320_028.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「那我们……现在算是恋人了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……是啊，就从此时此刻开始，正式成为男女朋友的关系吧」
[np]

[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_momo_00320_029.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「……嘿嘿♪」
[np]
[FACEHIDE]

[r]看着被我紧紧搂在怀中、露出欣喜笑容的桃酱的表情……
[np]

[r]我感受到自己的心情正被不可思议的温暖所包裹。
[np]

[r]活到现在从未体验过的感觉……这一定就是与心爱之人结合时——
[np]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00320_030.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「……学长」
[np]
[FACEHIDE]

[r]就在我快要飘飘欲仙之际，桃酱仰起脸望来的眼神将我的意识拉回现实。
[np]

[momo storage="D_seifuku_M D_8_M"]
[playcv storage="momo_momo_00320_031.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
【桃】[r]「那个、就是……成为恋人之后……可以提第一个请求吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请求？」
[np]

[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_momo_00320_032.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「嗯……刚才的吻是、那个……为了让我确信这不是梦的吻……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00320_033.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「这次……作为成为恋人的纪念……能再吻我一次吗……？」
[np]
[FACEHIDE]

[r]……面对可爱女友的撒娇请求，我默默点头……
[np]

[momo storage="C_seifuku_L C_7_L"]
[playcv storage="momo_momo_00320_034.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「嗯啊……」
[np]
[FACEHIDE]

[r]手掌轻抚她柔软的脸颊，将双唇缓缓靠近——
[np]

[momo storage="A_seifuku_L AB_9_L"]
[playcv storage="momo_momo_00320_035.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_9_FACE_seifuku"]
【桃】[r]「……啾……♪」
[np]
[FACEHIDE]

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

[jump storage="scenario/momo/momo_00330.ks"]