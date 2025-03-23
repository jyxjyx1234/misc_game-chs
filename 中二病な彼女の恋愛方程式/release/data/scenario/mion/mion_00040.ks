[SCENESTART file=mion_00040.ks]
;//mion_00040
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:夜
;//日付:7/7(火)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]然后，在晚饭的餐桌上……
[np]

[satomi storage="D_sifuku_M CD_2_M" trans=false]
[momo storage="C_sifuku_M C_3_M" trans=false]
[char_trans]

[playcv storage="satomi_mion_00040_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「嗯～！好吃！桃做的生姜烧和啤酒很配呢！」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_mion_00040_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「啊、谢谢您，啊哈哈……」
[np]
[FACEHIDE]

[char_erase name="momo satomi"]

[chisato storage="C_sifuku_M CD_11_M"]
[playcv storage="chisato_mion_00040_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「圣水小姐对任何料理都会说这句话呢」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]除了正在观测天体的真珠星之外，大家都聚在一起吃饭。
[np]

[r]在这个充满家庭般温馨氛围的场合……我实在忍不住担心澪音前辈的情况。
[np]

[r]从今早的对话来看，估计现在该提起同居的话题——
[np]

[mion storage="A_sifuku_M AB1_1_M" trans=false]
[satomi storage="C_sifuku_M CD_3_M" trans=false]
[char_trans]

[playcv storage="mion_mion_00040_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「说起来，圣水小姐」
[np]
[FACEHIDE]

[r]要说了……！
[np]

;[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_mion_00040_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「嗯，什么事？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00040_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「今天早上龙一君来控诉说『我受够这种笼中生活了！又不是动物园的观赏动物！我可是堂堂正正的人类！』……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00040_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「他跪下来恳求我『请让我住在澪音大人的房间里！当仆人或者奴隶都可以！为了证明诚意我连脚都可以舔！』」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00040_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「……一边哭一边这么哀求，作为管理员小姐你觉得没问题吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等等等等等等！！　全是假的！从里到外都是谎言的集合体啊！！」
[np]

[char_erase name="mion satomi"]

[aoi storage="D_tokushu_L CD_9_L" trans=false]
[momo storage="B_sifuku_M AB_8_M" trans=false]
[char_trans]

[playcv storage="aoi_mion_00040_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
[char_quake name=aoi]
【葵】[r]「龙一……你难道向那个魔女出卖了灵魂……！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「误会啊误会！我完全不记得说过那种话！」
[np]

[momo storage="B_sifuku_M AB_8_M"]
[playcv storage="momo_mion_00040_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「居、居然要舔脚……主从关系来说也太激烈了吧～……！」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[character name="ryuichi"]
【龙一】[r]「桃酱！？这是误会啊！？还有你为啥看起来有点高兴啊！？」
[np]

[satomi storage="B_sifuku_L AB_2_L"]
[playcv storage="satomi_mion_00040_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「也就是说要同居？　可以啊」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「太草率了吧！？　就没有其他要考虑的吗！？　比如仔细想想啊，装出为难的样子啊！！」
[np]

[satomi storage="A_sifuku_L AB_1_L"]
[playcv storage="satomi_mion_00040_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「可是作为管理员，比起待在客厅还是那样更有面子……」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_8_M"]
[playcv storage="chisato_mion_00040_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「可、可是男女同住一间房……真的好吗？」
[np]
[FACEHIDE]

[satomi storage="A_sifuku_L AB_10_L"]
[playcv storage="satomi_mion_00040_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「有什么不好？也有从那里开始的恋情嘛！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……！！！」
[np]

[char_erase name="satomi chisato"]

[r]圣水的一句话让餐桌上的气氛骤变……。
[np]

[momo storage="D_sifuku_M D_8_M" trans=false]
[aoi storage="A_tokushu_M A_8_M" trans=false]
[char_trans]

[playcv storage="momo_mion_00040_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_sifuku"]
【桃】[r]「恋、恋爱……从同居开始的恋爱……！！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_mion_00040_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「怎、怎、怎么……！？」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00040_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「呵呵……这样展开好像也很有趣呢。龙一君意下如何？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎怎、怎、怎么突然……」
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00040_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「处男？」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time=500]
【龙一】[r]「噗——————————！！！」
[np]

[playcv storage="momo_mion_00040_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「呀啊啊啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起桃酱！澪音前辈，你突然说些什么啊！？」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00040_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「我看龙一君欲言又止的样子……就帮你说出来而已呀？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「在这种对话语境下根本不可能提到那个词吧！？」
[np]

[r]啊啊真是的，这什么气氛啊……！从刚才起身体就一直发烫……！
[np]

[r]其他人也都面红耳赤的……不过其中大约有一位只是因酒精而脸红的人。
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00040_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「总之，作为管理员既然认可了……既然已经得到官方许可……」
[np]
[FACEHIDE]

[r]露出无畏笑容的澪音学姐，像是要舔舐般紧盯着我的脸。
[np]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_mion_00040_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「今后请多关照啦，龙一君……♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃！好、好的……」
[np]

[char_erase name="mion"]

[r]……明明是要和身材姣好、容貌秀丽、有着乌黑长发的姐姐……开始同居生活……
[np]

[r]刚才脑海中突然浮现的「被蛇盯上的青蛙」这个说法……到底是怎么回事啊……。
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

[jump storage="scenario/mion/mion_00050.ks"]