[SCENESTART file=mion_00540.ks]
;//mion_00540
;//BG:bg15_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM08.ogg" time=1000]

;//TIME:昼
;//日付:7/25(土)
;//CH:竜一,sifuku
;//CH:澪音,tokushu
;//CH:千聖,sifuku

[r]我拽着学长的手一路跑到了车站前。
[np]

[mion storage="D_tokushu_M CD2_7_M"]
[playcv storage="mion_mion_00540_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_tokushu"]
【澪音】[r]「龙、龙一……！　龙一！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在，怎么啦！？」
[np]

[mion storage="B_tokushu_M AB2_9_M"]
[playcv storage="mion_mion_00540_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_tokushu"]
【澪音】[r]「什么「怎么啦」……！　你先冷静一下……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，抱歉……！　我有点兴奋过头了，不自觉就……」
[np]

[mion storage="A_tokushu_M AB2_4_M"]
[playcv storage="mion_mion_00540_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_tokushu"]
【澪音】[r]「你拉着我的手跑得那么快，害我都出汗了……你说怎么办吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那……去咖啡厅休息会儿？」
[np]

[mion storage="D_tokushu_M CD2_7_M"]
[playcv storage="mion_mion_00540_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_tokushu"]
【澪音】[r]「诶……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「里边凉快，喝点冷饮休息下吧」
[np]

[mion storage="A_tokushu_M A_1_M"]
[playcv storage="mion_mion_00540_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_tokushu"]
【澪音】[r]「倒也不是不行……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就这么定了，走吧……」
[np]

[mion storage="A_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「等、等一下龙一！　今天，应该……啊，真是的！」
[np]
[FACEHIDE]

[r]我拉着不知所措的学长的手，半强硬地拽着……
[np]
[char_erase name="mion"]

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

;//背景をカフェbg17_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg17_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[playcv storage="chisato_mion_00540_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「欢迎光……哎？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哟」
[np]

[mion storage="A_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「～～～！！？」
[np]
[FACEHIDE]

[r]对作为兼职来迎接的绫濑露出灿烂的笑容打招呼。
[np]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_mion_00540_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「神原同学和……咦，澪音学姐……？」
[np]
[FACEHIDE]

[mion storage="D_tokushu_M CD2_8_M"]
[playcv storage="mion_mion_00540_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_tokushu"]
【澪音】[r]「……是、是不是认错人了……？」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_mion_00540_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「不，任谁看都是澪音学姐啊……咦？这身打扮是怎么回事？」
[np]
[FACEHIDE]

[mion storage="A_tokushu_M AB2_4_M"]
[playcv storage="mion_mion_00540_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_tokushu"]
【澪音】[r]「这、这是那个……机、机关的命令需要扮成人类的样子——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是我拜托她的。说想看看学长穿得像普通女孩的样子，一次也好」
[np]

[mion storage="C_tokushu_M CD2_7_M"]
[playcv storage="mion_mion_00540_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_tokushu"]
【澪音】[r]「等等！？」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_mion_00540_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「嘿……普通女孩……」
[np]
[FACEHIDE]

[r]绫濑露出一副了然于心的表情，上下打量着学长。
[np]

[character name="ryuichi"]
【龙一】[r]「所以我就让她换装了……怎么样！？是不是很可爱！？」
[np]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_mion_00540_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「确实……或者说可爱得让人感觉违和……噗、咯咯……」
[np]
[FACEHIDE]

[mion storage="A_tokushu_M AB2_9_M"]
[playcv storage="mion_mion_00540_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_tokushu"]
【澪音】[r]「千、千圣！？有什么好笑的！？」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_mion_00540_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「哪、哪里好笑了！只是……那个……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_2_M"]
[playcv storage="chisato_mion_00540_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「平、平时总是一副高冷架子的学姐，突然穿得这么普通……反而像是在玩角色扮演……」
[np]
[FACEHIDE]

[mion storage="B_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「呜……！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_3_M"]
[playcv storage="chisato_mion_00540_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「总、总之先带你们入座吧！」
[np]
[FACEHIDE]

[r]跟着绫濑来到座位后，两人各自拿起菜单。
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_mion_00540_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「那么，二位要点些什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我要一杯可乐」
[np]

[chisato storage="B_sifuku_M AB_2_M"]
[playcv storage="chisato_mion_00540_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「可乐记下了。澪音学姐要……噗……」
[np]
[FACEHIDE]

[mion storage="C_tokushu_M CD2_8_M"]
[playcv storage="mion_mion_00540_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_tokushu"]
【澪音】[r]「你明明就是在笑！！」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_mion_00540_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「我、我没笑！真的没笑！那身衣服真的很适合你，非常可爱！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「果然绫濑也这么觉得……！现在的澪音学姐简直可爱到爆啊！！」
[np]

[mion storage="B_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「呜……！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_mion_00540_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「那么，要点什么……」
[np]
[FACEHIDE]

[mion storage="A_tokushu_M AB2_5_M"]
[playcv storage="mion_mion_00540_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_tokushu"]
【澪音】[r]「那、那就冰咖啡……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_2_M"]
[playcv storage="chisato_mion_00540_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「可乐和冰咖啡对吧，记下了……！」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]绫濑确认完订单后，离开我们身边……
[np]

[mion storage="B_tokushu_M AB2_9_M"]
[playcv storage="mion_mion_00540_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_tokushu"]
【澪音】[r]「我要回去了！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等等，不行啊学姐！饮料马上就要送来了！」
[np]

[mion storage="A_tokushu_M AB2_6_M"]
[playcv storage="mion_mion_00540_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_6_FACE_tokushu"]
【澪音】[r]「我才不需要那种东西！放开我！快放开我！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「您这样吵闹会给其他客人添麻烦的……！」
[np]

[mion storage="C_tokushu_M CD2_7_M"]
[playcv storage="mion_mion_00540_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_tokushu"]
【澪音】[r]「啊……」
[np]
[FACEHIDE]

[r]或许是因为察觉到了周围投来的视线，前辈红着脸低下头变得安分起来。
[np]

[character name="ryuichi"]
【龙一】[r]「您这是怎么了，突然说要回去……」
[np]

[mion storage="D_tokushu_M CD2_8_M"]
[playcv storage="mion_mion_00540_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_tokushu"]
【澪音】[r]「啊、你……是明知故犯对吧……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[mion storage="B_tokushu_M AB2_9_M"]
[playcv storage="mion_mion_00540_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_tokushu"]
【澪音】[r]「你明明知道我很难为情，还故意看我笑话对吧！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「看、看笑话这种难听的说法完全是误会！天大的误会！」
[np]

[r]正确来说，我是在欣赏着害羞的前辈那可爱的模样。
[np]

[mion storage="A_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「明明是因为出汗才进来乘凉的……结果被弄得这么难为情，反而出更多汗了……！」
[np]
[FACEHIDE]

[r]前辈依旧涨红着脸，正用手掌拼命给自己扇风。
[np]

[mion storage="C_tokushu_M CD2_4_M"]
[playcv storage="mion_mion_00540_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_tokushu"]
【澪音】[r]「龙一你也一样！为什么偏要选这家咖啡店！？还偏偏挑千圣当班的日子！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我想着既然要选这里，正好也能让绫濑看看这么可爱的学姐……」
[np]

[mion storage="A_tokushu_M AB2_5_M"]
[playcv storage="mion_mion_00540_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_tokushu"]
【澪音】[r]「你……从刚才开始就一个劲地说可爱可爱的……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这也没办法啊，因为真的特别可爱嘛……」
[np]

[mion storage="B_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_024.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「呜……！所、所以说这种话——」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_3_M"]
[playcv storage="chisato_mion_00540_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「让二位久等了，这是可乐和冰咖啡」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，谢啦」
[np]

[r]正当前辈要反驳时，我们点的饮品正好送到了。
[np]

[chisato storage="C_sifuku_M CD_2_M"]
[playcv storage="chisato_mion_00540_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「不过真没想到前辈也会有这种衣服呢」
[np]
[FACEHIDE]

[mion storage="D_tokushu_M CD2_7_M"]
[playcv storage="mion_mion_00540_025.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_tokushu"]
【澪音】[r]「……这、这是……为了见父母准备的，就这一套……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_3_M"]
[playcv storage="chisato_mion_00540_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「这样啊。其实平时也可以多穿穿的……」
[np]
[FACEHIDE]

[mion storage="A_tokushu_M AB2_9_M"]
[playcv storage="mion_mion_00540_026.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_tokushu"]
【澪音】[r]「才、才不要呢！对我来说平时那套就是日常穿着呀！」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_mion_00540_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「可是那身打扮，夏天不会很热吗……？」
[np]
[FACEHIDE]

[mion storage="C_tokushu_M CD2_9_M"]
[playcv storage="mion_mion_00540_027.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_tokushu"]
【澪音】[r]「时、时尚总要付出点代价嘛……比起这个，在这种地方悠闲闲聊真的没问题吗？」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_mion_00540_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「没事的，现在客人也不多」
[np]
[FACEHIDE]

[mion storage="A_tokushu_M AB2_5_M"]
[playcv storage="mion_mion_00540_028.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_tokushu"]
【澪音】[r]「唔……」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_8_M"]
[playcv storage="chisato_mion_00540_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「啊，不过我在的话会打扰你们约会吧……那我就不打扰了，请慢用」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[mion storage="B_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00540_029.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「呜啊啊啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「前、前辈！冷静！冷静点！！」
[np]

[mion storage="A_tokushu_M AB2_9_M"]
[playcv storage="mion_mion_00540_030.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_tokushu"]
【澪音】[r]「千圣……你给我记住了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「难得穿上这么可爱的衣服，摆出那种表情就浪费了。来，笑一个笑一个！」
[np]

[mion storage="C_tokushu_M CD2_7_M"]
[playcv storage="mion_mion_00540_031.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_tokushu"]
【澪音】[r]「都说了——！不许再说我可爱了——————！」
[np]
[FACEHIDE]

[r]就连这样的反应也像个普通女孩子……毫无疑问，作战大获成功！
[np]

[char_erase name="mion"]

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

[jump storage="scenario/mion/mion_00550.ks"]