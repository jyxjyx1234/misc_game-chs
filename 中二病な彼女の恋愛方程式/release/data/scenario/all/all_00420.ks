[SCENESTART file=all_00420.ks]
;//all_00420
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/6(月)
;//CH:竜一,seifuku
;//CH:澪音,seifuku

[r]考试两天后的课程结束后，迎来了放学时间。
[np]

[r]不经意望向窗外，万里无云的晴空一望无际。
[np]


;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=稍微绕个路吧 jump target="*select1"]
	[select_button text=不，还是直接回家吧 jump target="*select2"]
[select_end]

;//ちょっとだけ寄り道するか、を選んだ場合
*select1
[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00420_0=0"]
[eval exp="f.love_mion=f.love_mion+1"]
[jump target="*selectA"]
*selectA

[character name="ryuichi"]
【龙一】[r]「稍微绕个路吧」
[np]

[r]不过也就是换条不同的路回家而已啦。
[np]

[r]在灿烂阳光的引诱下，我离开了教室。
[np]

;//背景を川原bg14_01に

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
[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「哦……」
[np]

[r]出校门后随意闲逛，不知不觉走到了熟悉的地方。
[np]

[r]河滩边，孩子们正在欢快地打着棒球。这场景真不错啊。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[r]仔细一看，穿着我们学校制服的……而且还有个女生混在里面？
[np]

[r]站在投手丘上的那个女生，任凭漆黑长发随风飘扬，以豪迈的姿势——
[np]

[mion storage="C_seifuku_S CD1_1_S"]
[character name="ryuichi"]
【龙一】[r]「澪、澪音前辈！？」
[np]

[r]发现对方竟是熟人，而且还是完全出乎意料的人物，我不禁脱口喊出声。
[np]

[r]那、那个人在干嘛啊……放学路上居然混在孩子们中间在河滩打棒球……这根本不是她的风格吧！
[np]

[character name="ryuichi"]
【龙一】[r]「澪、澪音前辈……！」
[np]

[mion storage="A_seifuku_S AB1_7_S"]
[playcv storage="mion_all_00420_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「嗯……？哎呀，龙一君」
[np]
[FACEHIDE]

[r]发现我的前辈迈着步子朝这边走来。
[np]

[char_erase name="mion"]

[character name="ryuichi"]
【龙一】[r]「前辈，您这是在做什么……！？」
[np]

[mion storage="D_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00420_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「看不出来吗？当然是在打棒球呀」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，我不是这个意思——」
[np]

;//★＠
[playcv storage="boyA_all_00420_001.ogg" name="man"]
[character name="man"]
【男孩】[r]「澪音姐姐，这个人是你的男朋友吗！？」
[np]

[character name="ryuichi"]
【龙一】[r]「什！？」
[np]

[mion storage="B_seifuku_M AB1_3_M"]
[playcv storage="mion_all_00420_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「不是啦，是头号小跟班」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂！！」
[np]

[r]我可不记得自己成了仆人，而且当着孩子的面用这种称呼更不行啊！
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00420_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「来得正好，我正打算收工呢。要不要一起回去？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？啊，好……倒是没关系……」
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00420_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「那大姐姐要回家咯……你们要好好相处哦」
[np]
[FACEHIDE]

[r]听到澪音前辈的话，孩子们异口同声地回应着充满活力的答复。
[np]

[char_erase name="mion"]

;//背景を通学路bg13_01に
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
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM08.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「不过怎么会突然打棒球……」
[np]

[r]离开河滩后，和前辈并肩走在往常的放学路上。
[np]

[mion storage="D_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00420_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「这个嘛……因为今天天气很好，突然想沿着河滩小路回家」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[mion storage="B_seifuku_M AB1_7_M"]
[playcv storage="mion_all_00420_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「……？怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、不……没什么」
[np]

[r]澪音前辈竟然和我出于完全相同的理由绕远路，这让我有些意外。
[np]

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00420_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「然后呢，我刚沿着河滩走，突然有颗球飞过来……」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00420_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「华丽地接住球又帅气地扔回去后，不知不觉就被孩子们围在圈子里……大概就是这么回事」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘿……总觉得，和想象中不太一样」
[np]

[mion storage="B_seifuku_M AB1_7_M"]
[playcv storage="mion_all_00420_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「哎呀，你这话什么意思呀？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、那个……只是我的主观印象……」
[np]

[character name="ryuichi"]
【龙一】[r]「我以为澪音前辈不是那种喜欢陪小孩子玩的性格……」
[np]

[mion storage="C_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00420_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「真意外呢……」
[np]
[FACEHIDE]

[r]虽然嘴上这么说，她的表情却柔和地微笑着。
[np]

[mion storage="A_seifuku_M AB1_3_M"]
[playcv storage="mion_all_00420_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_seifuku"]
【澪音】[r]「确实，我最讨厌麻烦的小鬼了。对这种孩子，我可是毫不留情地展现魔女本色哦」
[np]
[FACEHIDE]

[r]魔女式的应对方式到底是怎样的……不，还是别问了吧。
[np]

[mion storage="D_seifuku_M CD1_2_M"]
[playcv storage="mion_all_00420_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_seifuku"]
【澪音】[r]「不过基本上我还是喜欢小孩子的。和大人们不同，孩子们的思维更灵活，又天真可爱……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「听到澪音前辈说天真可爱这种话，总觉得是不是别有用心呢」
[np]

[mion storage="C_seifuku_M CD1_9_M"]
[playcv storage="mion_all_00420_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_seifuku"]
【澪音】[r]「你这不是挺会说话的嘛」
[np]
[FACEHIDE]

[r]两人交换着半开玩笑的对话，不约而同地相视而笑。
[np]

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00420_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「那么刚才看到的场景，有没有稍微解开你的误会呢？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「算是吧。不过感觉还有很多不了解的地方」
[np]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00420_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「那还有别的想问的吗？现在可以特别回答你哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「想问的事吗……」
[np]

[mion storage="C_seifuku_M CD1_10_M"]
[playcv storage="mion_all_00420_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「要是愿意的话，不止是提问……青春期男生的那些期待，我也可以应和哦……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不用了……！」
[np]

[mion storage="A_seifuku_M AB1_7_M"]
[playcv storage="mion_all_00420_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「哎呀，真没劲……龙一君是对女孩子不感兴趣的类型吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「请不要用那种分类来定义我！一点都不好笑！」
[np]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00420_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「不过你看，现在不是很流行这种设定吗？说不定会受女孩子欢迎哦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什……」
[np]

[r]不过，为了获得女生的人气而走同性恋路线……这算怎么回事啊？
[np]

[character name="ryuichi"]
【龙一】[r]「啊、对了……」
[np]

[mion storage="C_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00420_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「想到什么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「澪音前辈为什么会是『魔女』呢？」
[np]

[mion storage="B_seifuku_M AB1_7_M"]
[playcv storage="mion_all_00420_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_seifuku"]
【澪音】[r]「哎呀，我没说过吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是，虽然听说过是中二病的角色设定之类的……」
[np]

[character name="ryuichi"]
【龙一】[r]「该怎么说呢，前辈踏入这条路的契机之类的……」
[np]

[mion storage="D_seifuku_M CD1_4_M"]
[playcv storage="mion_all_00420_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「契机啊……」
[np]
[FACEHIDE]

[r]澪音前辈将指尖轻点在唇下，陷入沉思。
[np]

[mion storage="C_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00420_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「关于这个，只能说回过神来就已经变成这样了……」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00420_024.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「我从小就很喜欢漫画和游戏……从小学开始就整天泡在网络世界里」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00420_025.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「喜欢的作品大多是恐怖或黑暗奇幻类……连服装和房间布置的品味也都是受这个影响」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……」
[np]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00420_026.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「所以刚入学苍心学园搬进伏木庄时，可是被所有寄宿生关注了呢」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00420_027.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「大家用『这孩子不简单……！』的感觉围着我，成为好奇的焦点……不过我倒不讨厌这样」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「从一年级开始就完全保持自我风格啊」
[np]

[mion storage="D_seifuku_M CD1_1_M"]
[playcv storage="mion_all_00420_028.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_seifuku"]
【澪音】[r]「没错。后来这样的性格和日常穿着，让我得到了『宿舍魔女』的外号」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00420_029.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「所以说魔女这个称呼，一半是角色设定，另一半倒也算实至名归」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「原来如此……澪音前辈对被称作魔女这件事，会不会觉得……」
[np]

[mion storage="B_seifuku_M AB1_1_M"]
[playcv storage="mion_all_00420_030.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「怎么会。不如说相当中意这个称呼呢，最初我还主动到处跟人这么自我介绍」
[np]
[FACEHIDE]

[r]如果是这个人的话确实做得出来……我竟然就这么轻易接受了这个设定。
[np]

[mion storage="A_seifuku_M AB1_2_M"]
[playcv storage="mion_all_00420_031.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「与众不同，非同寻常……不觉得这是件很美妙的事吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]从漫无边际的闲聊中突然被抛来一个深刻的质问，让我不由得……瞬间停下了脚步。
[np]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_all_00420_032.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「呵呵……好了，快点回去吧。今天的晚饭会是什么呢」
[np]
[FACEHIDE]

[char_erase name=mion to=left time=800 fade=true]

[r]澪音前辈甩动着漆黑长发，英姿飒爽地走在前面。
[np]

[r]望着她渐行渐远的背影……不知为何，竟觉得有些帅气。
[np]

;//ここまで

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

;//JUMP:all_00440
[jump storage="scenario/all/all_00440.ks"]

;//いや、まっすぐ帰ろう、を選んだ場合
*select2
[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00420_0=1"]
[jump target="*selectB"]
*selectB

[character name="ryuichi"]
【龙一】[r]「不，还是直接回去吧」
[np]

[r]进入七月后，气温每天都在节节攀升。
[np]

[r]这种大热天要是绕路的话只会弄得满身是汗……还得复习备考，还是直接回宿舍吧。
[np]

[r]我拎起书包，独自离开了教室。
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

;//JUMP:all_00430
[jump storage="scenario/all/all_00430.ks"]