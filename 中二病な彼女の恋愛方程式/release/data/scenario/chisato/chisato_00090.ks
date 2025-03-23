[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00090.txt]
;//chisato_00090
;//BG:bg11_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/8(水)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku


[sousi storage="A_seifuku_M A_10_M" trans=false]
[akane storage="C_seifuku_M CD_2_M" trans=false]
[char_trans]

[playcv storage="sousi_chisato_00090_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「这里是爽史……二次元，请回答……这里是爽史……二次元，请回答……」
[np]
[FACEHIDE]
[sousi storage="C_seifuku_M CD_9_M"]

[playcv storage="akane_chisato_00090_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]
【茜】[r]「啊，这已经完全坏掉了」
[np]
[FACEHIDE]

[char_erase name="akane sousi"]
[r]自从和绫濑立下约定的那天起过了两天，考试首日结束……
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_chisato_00090_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「……想回去……回到漆黑的夹缝里……」
[np]
[FACEHIDE]

[r]聚集在教室后排的老面孔们，明显分成了两个阵营。
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「是伙伴的话，爽史和葵……就跟我一起走吧……呐……」
[np]

[chisato storage="B_seifuku_M AB_5_M"]
[playcv storage="chisato_chisato_00090_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「别说傻话了，快点回家吧。还得准备午饭呢……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_chisato_00090_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「啊……我要和桃在车站附近逛逛再回去……大概，午饭也在那边解决……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_chisato_00090_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「这样啊。那午饭准备五人份的……回去吧，神原君」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「嗯……」
[np]

[HIDESYSTEMMENU]

[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]


;//背景を通学路bg13_01に
[r]和前几天一样，两人走在没有葵同行的放学路上。
[np]

[chisato storage="A_seifuku_M AB_3_M"]
[playcv storage="chisato_chisato_00090_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「看这样子，今天考得很惨吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「简直是命悬一线啊……感觉比之前就读的学校考试难度更大……」
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_chisato_00090_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「是吗？不过……啊」
[np]
[FACEHIDE]

[r]打断绫濑对话的，是只尾巴竖得笔直、在围墙上平衡行走的小黑猫。
[np]

[chisato storage="C_seifuku_M CD_4_M"]
[playcv storage="chisato_chisato_00090_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_seifuku"]
【千圣】[r]「……」
[np]
[FACEHIDE]

[r]是被它可爱的样子吸引了吗……等等，那孩子……这只小猫，好像在哪里见过——
[np]

[chisato storage="B_seifuku_L AB_4_L"]
[playcv storage="chisato_chisato_00090_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_seifuku"]
【千圣】[r]「难道你是……黑暗势力的使者……？」
[np]
[FACEHIDE]

[r]…………诶？
[np]

[chisato storage="B_seifuku_L AB_11_L"]
[playcv storage="chisato_chisato_00090_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「快回答我……！你根本不是普通黑猫对吧？」
[np]
[FACEHIDE]

;//★＠
[playcv storage="kone_chisato_00090_001.ogg" name="women"]
[character name="women"]
小猫[r]「喵啊～……」
[np]

[chisato storage="C_seifuku_L CD_4_L"]
[char_jump name=chisato]
[playcv storage="chisato_chisato_00090_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_seifuku"]
【千圣】[r]「……！果、果然……！居然会在这里设下埋伏……」
[np]
[FACEHIDE]

[r]……绫濑突然开始说像葵一样的话了……呃，这种情况该怎么应对呢……
[np]

[chisato storage="C_seifuku_M CD_10_M"]
[playcv storage="chisato_chisato_00090_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「……没、没关系嘛……现在这里只有我和神原君两个人……」
[np]
[FACEHIDE]

[r]我的困惑似乎写在脸上，绫濑面泛红晕噘起嘴唇。
[np]

[r]啊、原来是这样……也对啊、绫濑也是个十足的中二病——
[np]

;//★＠
[playcv storage="kone_chisato_00090_002.ogg" name="women"]
[character name="women"]
小猫[r]「呜哇」
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00090_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「呀！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「喂、危险——」
[np]

[r]黑猫突然朝绫濑跳了下来、受惊的绫濑顿时失去平衡……
[np]

[chisato storage="B_seifuku_L AB_5_L"]
[playcv storage="chisato_chisato_00090_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_seifuku"]
【千圣】[r]「嗯啊……」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/10010.ogg"]

[quake time="500"]

[r]我急忙伸出双手，在千钧一发之际抱住了即将摔倒的她。
[np]

[character name="ryuichi"]
【龙一】[r]「没事吧……？」
[np]

[chisato storage="B_seifuku_L AB_6_L"]
[playcv storage="chisato_chisato_00090_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「啊、嗯……谢、谢谢……」
[np]
[FACEHIDE]

[r]确认绫濑平安无事后环顾四周……那只小猫已经不见踪影了。
[np]

[chisato storage="B_seifuku_L AB_9_L"]
[playcv storage="chisato_chisato_00090_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「呜啊……！？」
[np]
[FACEHIDE]

[r]与其说是扑向绫濑，不如说只是从围墙上跳下来而已。不过……
[np]

[chisato storage="C_seifuku_L CD_9_L"]
[playcv storage="chisato_chisato_00090_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_seifuku"]
【千圣】[r]「等、等一下，神原君……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯？啊——」
[np]

[r]因为太拼命所以没注意到……我、竟然用力按在了绫濑的胸口上……！！
[np]

[character name="ryuichi"]
【龙一】[r]「对、对不起！！！」
[np]

[r]像相斥的磁铁般猛地抽身后退，我向绫濑低头认错。
[np]

[chisato storage="B_seifuku_M AB_6_M"]
[playcv storage="chisato_chisato_00090_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「～……」
[np]
[FACEHIDE]

[r]这难道是……时隔许久又犯了吗！？
[np]

[r]最近明明都没再出过这种差错，还以为已经没问题了……
[np]

[r]该、该不会因为这件事……我留在伏木庄的事要亮起黄灯了……！```
[np]

[character name="ryuichi"]
【龙一】[r]「真的很抱歉！我、完全没有那种意思……！！」
[np]

[chisato storage="B_seifuku_M AB_9_M"]
[playcv storage="chisato_chisato_00090_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
【千圣】[r]「别、别在意……没、没事的！不用那样低头道歉啦……！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_1_M"]

[r]撇开这些私心杂念，现在最紧要的是为让绫濑感到难堪这件事诚心诚意地道歉。
[np]

[character name="ryuichi"]
【龙一】[r]「虽说是意外…但碰到是事实…那个…能不能让我补偿点什么？」
[np]

[chisato storage="C_seifuku_M CD_8_M"]
[playcv storage="chisato_chisato_00090_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「突然说要补偿…我一时也想不到…」
[np]
[FACEHIDE]

[r]绫濑将食指抵在唇下陷入沉思。
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_chisato_00090_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「啊…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「想到了吗！？」
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_chisato_00090_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「那个…这样的话…」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]于是绫濑向我提出了…
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


;//JUMP:chisato_00100
[jump storage="scenario/chisato/chisato_00100.ks"]
