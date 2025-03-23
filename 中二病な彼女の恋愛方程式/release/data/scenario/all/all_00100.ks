[SCENESTART file=all_00100.ks]
;//all_00100
;//BG:bg10_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:6/15(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:【あかね】,seifuku
;//CH:爽史,seifuku

[character name="ryuichi"]
【龙一】[r]「……冷静点，平常心平常心……」
[np]

[r]对我来说，这是第一次……大概也是最后一次转学了。
[np]

[r]虽然之前也听过好几次转学生的自我介绍……
[np]

[r]但完全没想过自己会站到讲台上做这种事。
[np]

;//ドア越し
;//★＠※女性です
[playcv storage="sens_all_00100_001.ogg" name="women"]
[character name="women"]
【先生】[r]「那么请进来吧」
[np]

[character name="ryuichi"]
【龙一】[r]「啊，好的……！」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

;//背景を教室bg11_01に
[r]推开教室门的瞬间，全班的目光都集中到了我身上。
[np]

[r]意识到这点后连走路都要紧张了……别在意别在意。
[np]

[character name="ryuichi"]
【龙一】[r]「（啊……）」
[np]

[r]葵和绫濑都在……也就是说，我和她们分到了同一个班级吗。
[np]

[r]虽然昨天才刚认识，但只要有熟悉的人在……感觉整个人都轻松多了。
[np]

[character name="ryuichi"]
【龙一】[r]「那个……初次见面，我是神原龙一！从东京那边搬过来的！」
[np]

[character name="ryuichi"]
【龙一】[r]「我的人设是开朗活泼享受生活的类型！请多关照！」
[np]

;//以下、【あかね】の名前表記は「？？？」でお願いします
[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_all_00100_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【？？？】[r]「好——啦！龙一同学有女朋友吗——？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什……！？」
[np]

[char_erase name="akane"]

[r]突、突然问这个……！？
[np]

;//★＠
[playcv storage="girA_all_00100_001.ogg" name="women"]
[character name="women"]
【女子】[r]「哇哦，小茜这记直球」
[np]

;//★＠
[playcv storage="girB_all_00100_001.ogg" name="women"]
[character name="women"]
【女子】[r]「不愧是三班的核弹头！」
[np]

;//以下、【あかね】の名前表記を通常に
[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_all_00100_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「哎嘿嘿！交给我吧！」
[np]
[FACEHIDE]

[r]面对这个开场就投出犀利问题的女孩，班上女生们送上了掌声。
[np]

[char_erase name="akane"]

[character name="ryuichi"]
【龙一】[r]「女、女朋友还没有！但正在火热征集中！！」
[np]

[r]我的回答让男生女生都发出“喔！”的欢呼。这种氛围还挺不赖。
[np]

;//★＠
[playcv storage="sens_all_00100_002.ogg" name="women"]
[character name="women"]
【先生】[r]「那你就用倒数第二排……靠窗那个座位吧」
[np]

[character name="ryuichi"]
【龙一】[r]「啊，好的！」
[np]

[r]在全班同学的掌声中，我走向被指定的座位。
[np]

[r]这个班级的氛围真不错。虽然在宿舍刚开头就被打击得七荤八素，但这边倒是有个顺利的好兆头……！
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

[SYSTEMMENU]

;//暗転
[r]然后……
[np]

[wait time="1000"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

;//時間経過
;//\SEチャイム音
[r]转学来苍心学园后的第一个课间。
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[r]虽然也幻想过被女生们团团围住、轮番提问的场景……但那可是帅哥专属事件。
[np]

[r]于是乎……
[np]

[character name="ryuichi"]
【龙一】[r]「嗨，初次见面！」
[np]

[r]主动出击的交流作战计划！
[np]

;//以下、爽史の名前表記は「？？？」でお願いします
[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_all_00100_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【？？？】[r]「……？啊，初次见面」
[np]
[FACEHIDE]

[r]坐在我左侧的是个透着知性冷峻气质的眼镜男生。
[np]

[r]突然搭讪女生难度系数太高，就先锁定你了！
[np]

[character name="ryuichi"]
【龙一】[r]「既然成了邻座也算有缘……能告诉我你的名字吗？」
[np]

;//以下、爽史の名前表記を通常に
[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00100_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「我叫爽史。柳爽史。」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「柳爽史啊。请多关照！该怎么称呼？」
[np]

[sousi storage="B_seifuku_M B_1_M"]
[playcv storage="sousi_all_00100_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「叫爽史就行。男生们基本都这么叫」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道了。请多指教啊爽史」
[np]

[sousi storage="A_seifuku_M A_3_M"]
[playcv storage="sousi_all_00100_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「嗯，请多指教」
[np]
[FACEHIDE]

[r]本以为看起来像沉默寡言的类型……不过实际好像并非如此。
[np]

[character name="ryuichi"]
【龙一】[r]「话说爽史……突然问这个，咱们班女生……怎么样？」
[np]

[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00100_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「怎么样……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「乍看水准都挺高的……啊，爽史喜欢的类型是什么样？」
[np]

[sousi storage="B_seifuku_M B_1_M"]
[playcv storage="sousi_all_00100_006.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「喜欢的类型……这个嘛」
[np]
[FACEHIDE]

[r]转学第一天就抛出这种话题，按理说本不可能。虽然我自己也这么觉得……
[np]

[r]既然是能直接问转学生有没有女友的班级，判断可行才采取的行动。来吧，看爽史怎么接招！
[np]

[sousi storage="A_seifuku_M A_3_M"]
[playcv storage="sousi_all_00100_007.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「这个嘛，要论本季度的话……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……嗯？」
[np]

[r]本季……婚期？
[np]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_all_00100_008.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「普莉兹玛☆玛利亚的玛利亚，还有露露姆碧瑶的琳酱」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……呃……？」
[np]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_all_00100_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「好啦好啦稍微打断一下！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇！？」
[np]

[r]我和爽史之间突然有个女生插了进来……这女孩不就是刚才的——
[np]

[akane storage="C_seifuku_M CD_1_M"]
[playcv storage="akane_all_00100_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「抱歉啊。这家伙只对二次元感兴趣啦」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_1_M"]
[playcv storage="sousi_all_00100_009.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
【爽史】[r]「你为什么要道歉……我只是被问到喜欢的类型就如实回答了而已」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「二次元是指动画或者漫画吗？」
[np]

[akane storage="A_seifuku_M AB_3_M"]
[playcv storage="akane_all_00100_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_seifuku"]
【茜】[r]「没错没错。他刚才说的全是深夜档动画里的角色」
[np]
[FACEHIDE]

[sousi storage="A_seifuku_M A_1_M"]
[character name="ryuichi"]
【龙一】[r]「呃……真、真的吗！？」
[np]

[r]这、这家伙…长着这副面孔居然是个重度宅男！？
[np]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_all_00100_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「啊对了，还没自我介绍呢。我叫茜！音无茜！」
[np]
[FACEHIDE]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_all_00100_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「咦？说姓『音无』却这么吵闹？经常有人这么说啦！欸嘿嘿！」
[np]
[FACEHIDE]

[r]不，我并没有问这个。
[np]

[character name="ryuichi"]
【龙一】[r]「那个…爽史和音无同学是——」
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_all_00100_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「叫茜就行啦？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那…茜。你们俩关系很好吗？」
[np]

[akane storage="C_seifuku_M CD_1_M"]
[playcv storage="akane_all_00100_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「说关系好不如说是孽缘？从幼儿园到现在都一直在一起，而且永远同班呢。对吧？」
[np]
[FACEHIDE]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00100_010.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「算是美少女游戏里常见的设定」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_10_M"]
[playcv storage="akane_all_00100_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_10_FACE_seifuku"]
[char_jump name=akane]
【茜】[r]「快给我改掉这种说法！」
[np]
[FACEHIDE]

[r]对于爽史的一句话，茜立刻吐槽道。
[np]

[character name="ryuichi"]
【龙一】[r]「你们的组合段子……确实能感觉到很熟练啊」
[np]

[sousi storage="C_seifuku_M CD_1_M"]
[akane storage="C_seifuku_M CD_9_M"]
[playcv storage="akane_all_00100_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_9_FACE_seifuku"]
【茜】[r]「对吧对吧？不过不许说什么组合啦！」
[np]
[FACEHIDE]

[r]这次换我被吐槽，不由得相视而笑。
[np]

[akane storage="A_seifuku_M AB_2_M"]
[playcv storage="akane_all_00100_012.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「对吧龙一！这个班级可是聚集了我们年级最顶级的美少女呢……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真的！？」
[np]

[akane storage="D_seifuku_M CD_2_M"]
[playcv storage="akane_all_00100_013.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「当然是真的！以我为首，还有小千啊、小葵啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「先不说茜……小千是指绫濑千圣吗？」
[np]

[akane storage="A_seifuku_M AB_10_M"]
[playcv storage="akane_all_00100_014.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_10_FACE_seifuku"]
【茜】[r]「别排挤我啊！……等等，咦？你认识她？」
[np]
[FACEHIDE]

[akane storage="A_seifuku_M AB_1_M"]
[character name="ryuichi"]
【龙一】[r]「不，该说是认识还是……」
[np]

[r]看向绫濑和葵二人，绫濑正和朋友愉快地闲聊，而葵则在写些什么笔记——
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_all_00100_015.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「嗯……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了？」
[np]

[r]在对话途中突然被她凑近窥视脸庞，让我不由得心头一颤。
[np]

[char_erase name="sousi"]

[akane storage="C_seifuku_L CD_7_L"]
[playcv storage="akane_all_00100_016.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「这里，怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]茜用食指轻轻敲了敲自己的额头。
[np]

[akane storage="A_seifuku_L AB_7_L"]
[playcv storage="akane_all_00100_017.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「好像有伤痕呢？是哪里撞到了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……这个啊，是小时候的伤。疤痕一直没消掉呢」
[np]

[akane storage="C_seifuku_M CD_7_M"]
[playcv storage="akane_all_00100_018.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「嘿～这样啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「连我自己都不记得是什么时候弄的……那应该是，大概——」
[np]

;//\SEチャイム音
[wait time="500"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[r]仿佛要打断话语般，宣告课程开始的铃声骤然响起。
[np]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_all_00100_019.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「哎呀，要上课了！那龙一、爽史，一起加油吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好，一起加油！」
[np]

[char_erase name="akane"]

[r]茜如一阵风般出现，又如一阵风般回到自己座位。
[np]

[r]多亏自己主动搭话，很快就交到了两个朋友……感觉还挺不错的。
[np]

[r]感觉在这个学园里，应该能快乐地生活下去！
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

;;//JUMP:all_00110
[jump storage="scenario/all/all_00110.ks"]
