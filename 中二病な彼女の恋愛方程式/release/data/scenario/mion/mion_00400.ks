[SCENESTART file=mion_00400.ks]
;//mion_00400
;//BG:bg13_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM02.ogg" time=1000]

;//TIME:昼
;//日付:7/14(火)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[supica storage="C1_seifuku_M CD_5_M" trans=false]
[momo storage="B_seifuku_M AB_7_M" trans=false]
[char_trans]

[playcv storage="supica_mion_00400_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_seifuku"]
【真珠星】[r]「哈啊……」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_7_M"]
[playcv storage="momo_mion_00400_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「真珠星酱，打这么大的哈欠……睡眠不足吗？」
[np]
[FACEHIDE]

[supica storage="B1_seifuku_M AB_12_M"]
[playcv storage="supica_mion_00400_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_seifuku"]
【真珠星】[r]「……昨晚在尝试与母星建立通信……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[r]翌日的上学路上。七月已过半，夏日的阳光日渐强烈，不过……
[np]

[character name="ryuichi"]
【龙一】[r]「哈啊啊啊……」
[np]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_mion_00400_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「这边才是更大的哈欠呢……熬夜了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、没有……昨天明明提早钻进被窝了……」
[np]

[char_erase name="chisato"]

[r]睡前澪音学姐突然脱口而出的那句话……
[np]

[r]那件事无论如何都忘不掉，甚至犹豫要不要独自处理到恢复元气为止，结果辗转难眠……
[np]

[r]要是把实情告诉绫濑的话，被她揍了都没法抱怨。所以还是不说了。
[np]

[aoi storage="B_seifuku_M B_4_M"]
[playcv storage="aoi_mion_00400_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_seifuku"]
【葵】[r]「恐怕是在谋划和魔女两人支配学园宿舍吧……」
[np]
[FACEHIDE]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_mion_00400_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「支配？我还以为早就完成了呢」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_mion_00400_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「你、你说什么呢！只要我还有一口气在，就绝不会让你为所欲为！」
[np]
[FACEHIDE]

[r]包括今天在内还有三天……再上三天学就要放暑假了。
[np]

[r]今年暑假要和澪音前辈一起过……本来盂兰盆节期间还打算回趟老家，现在该怎么办呢。
[np]

[mion storage="D_seifuku_M CD1_3_M"]
[playcv storage="mion_mion_00400_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「……呵呵」
[np]
[FACEHIDE]

[r]正这么想着时，突然与前辈四目相对……她朝我嫣然一笑。
[np]

[char_erase name="aoi mion"]

[r]还没来得及反应，彼此的距离骤然缩短——
[np]

;//小声
[mion storage="B_seifuku_L AB1_2_L"]
[playcv storage="mion_mion_00400_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「放学后来我教室」
[np]
[FACEHIDE]

[r]她用几乎不会被旁人察觉的细微声音，在我耳边悄声低语。
[np]

[char_erase name="mion"]

[chisato storage="D_seifuku_M CD_1_M" trans=false]
[mion storage="A_seifuku_M AB1_1_M" trans=false]
[char_trans]

[playcv storage="chisato_mion_00400_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「对了前辈，考试考得怎么样？」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_mion_00400_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「考试？至少昨天发回来的科目成绩……」
[np]
[FACEHIDE]

[r]前辈泰然自若地与绫濑闲聊着，仿佛什么都没发生过。
[np]

[char_erase name="mion chisato"]

[r]放学后，前往前辈的教室……
[np]

[r]明明只是这么简单的一句话……或许是因为被突然在耳畔低语，我的心情竟莫名亢奋起来。
[np]

[r]冷、冷静点啊我……！在上学路上胡思乱想个什么劲！快镇定！给我镇定下来！！
[np]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_mion_00400_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「……？」
[np]
[FACEHIDE]

[char_erase name="supica"]

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

[jump storage="scenario/mion/mion_00410.ks"]