[SCENESTART file=aoi_00420.ks]
;//aoi_00420
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:7/16(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku

;//★＠女子Ａ
[playcv storage="gira_aoi_00420_001.ogg" name="women"]
[character name="women"]
【女子】[r]「起立，敬礼」
[np]

[r]随着值日生的口令低头行礼，迎来期盼已久的放学时光。
[np]

[r]我把早已收拾好课本的书包拎在手上，不动声色地看向葵那边。
[np]

[aoi storage="C_seifuku_S CD_8_S"]
[playcv storage="aoi_aoi_00420_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]虽然只是猜测…但此刻她应该和我想着同样的事情。
[np]
[char_erase name="aoi"]

;//背景を廊下bg10_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]这么想着的我快步走向走廊时…
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00420_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「龙一……」
[np]
[FACEHIDE]

[r]仿佛约好般，刚走出教室的葵朝我小跑过来。
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00420_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「快点走吧，不然可能会被大家说闲话……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是啊」
[np]

[char_erase name="aoi"]

[r]我点头赞同葵的提议，两人快步离开了现场。
[np]

;//暗転
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

[r]……本来还好好的……。
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]来到行人稀少的教师办公室前，我突然意识到一个致命的失误。
[np]

[r]虽然下定决心要告白是很好……但完全没有考虑要在哪里进行……！
[np]

[aoi storage="C_seifuku_L CD_7_L"]
[playcv storage="aoi_aoi_00420_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……抱歉啊葵……其实我要说的事，不太想让别人听到该怎么说呢……」
[np]

[character name="ryuichi"]
【龙一】[r]「如果可以的话，希望能找个只有我们两个人的地方」
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00420_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「……嗯，我也在考虑同样的事」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过真要找这种地方的话……」
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00420_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「那来这边！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//背景を校庭bg09_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]跟着葵从鞋柜走向操场。
[np]

[r]原来如此，教学楼后面啊……！虽然是老地方但确实不太可能有其他人——
[np]

;//★＠女子Ｃ
[playcv storage="girc_aoi_00420_001.ogg" name="women"]
[character name="women"]
【女子】[r]「那么现在开始进行美化委员会例行的暑假前拔草活动。大家都准备好了吗？」
[np]

;//★＠男子Ａ
[playcv storage="mena_aoi_00420_001.ogg" name="man"]
[character name="man"]
【男生】[r]「好嘞——」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[char_jump name=aoi]
[playcv storage="aoi_aoi_00420_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「怎……！？」
[np]
[FACEHIDE]

[r]……转过教学楼拐角处，在那片阴凉地界……偏偏今天美化委员会正热火朝天地开展着除草活动。
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00420_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「怎、怎么会……不该是这样的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊对了……那，那里怎么样？」
[np]

[char_erase name="aoi"]

;//背景を廊下bg10_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]再次换回室内鞋，跟着葵一起登上楼梯。
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00420_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「龙一，难道说……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，那里的话肯定……！」
[np]

[char_erase name="aoi"]

[r]午休时就算有人，放学后也不会有人去那种地方吧。所以……
[np]

;//背景を屋上bg12_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]……虽然这么想着过来了，但……
[np]

;//★＠女子Ｄ
[playcv storage="gird_aoi_00420_001.ogg" name="women"]
[character name="women"]
【女子】[r]「好啦，接下来去分部练习咯——」
[np]

;//★＠女子Ｅ
[playcv storage="gire_aoi_00420_001.ogg" name="women"]
[character name="women"]
【女子】[r]「好——！」
[np]

[r]为什么偏偏今天吹奏乐部要占用这里啊……占用了啊啊啊啊啊啊啊！！！！！
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00420_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「已经……无计可施了吗」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「咕……」
[np]

[char_erase name="aoi"]

;//背景を廊下bg10_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]冷静、冷静啊我……先冷静下来让头脑降温。
[np]

[r]又是教学楼后面又是屋顶的，不是非要去那些特别的地方不可……对了，普通教室不就有吗……！
[np]

[character name="ryuichi"]
【龙一】[r]「好、好吧……果然还是选教室吧！」
[np]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00420_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「哎？啊、嗯……」
[np]
[FACEHIDE]

[r]再怎么也不可能所有教室都有人留下……这种事绝对不可能吧！至少会有一间空教室才对啊！
[np]

[char_erase name="aoi"]

;//時間経過
;//暗転
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[r]……然而我的希望被残酷地击碎……
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「为什么啊啊啊啊啊啊啊！！！」
[np]

[r]为什么偏偏今天连一个能两人独处的地方都找不到啊啊啊啊啊！！！！！
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00420_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「龙、龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等着瞧吧葵……！我绝对会找到能让我们两人独处的地方……！」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00420_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「龙一……那个、我在想……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00420_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「不一定非要在学校里找……像河滩啊、我的房间之类的也可以吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………啊」
[np]

[r]说起来……确实啊。根本没必要执着于非要在学校告白……
[np]

[aoi storage="A_seifuku_M A_3_M"]
[playcv storage="aoi_aoi_00420_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_seifuku"]
【葵】[r]「……噗嗤、呵呵……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、葵……？」
[np]

[aoi storage="C_seifuku_M CD_2_M"]
[playcv storage="aoi_aoi_00420_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「对、对不起……但是看到龙一这么拼命的样子……总觉得、有点好笑……呵呵」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、那还不是因为葵你也一样在意吗？」
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_aoi_00420_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「但龙一明显要紧张得多呀」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、这个……」
[np]

[r]话说到一半……看着葵那毫无阴霾的笑容，不知为何有种得救了的感觉。
[np]

[r]既然决定了要告白，原本紧张的心情……似乎稍微缓解了一些。
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_aoi_00420_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「谢谢你，龙一……托你的福，我放松些了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么啦……难道说，你也在紧张吗？」
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00420_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「因为……龙一你说有重要的事要说……我怎么可能不紧张……」
[np]
[FACEHIDE]

[r]葵带着羞赧的神情，依然微红着脸稍稍别过头去。
[np]

[r]我掩饰着被那个表情撩动的心跳，掏出手机查看。
[np]

[character name="ryuichi"]
【龙一】[r]「已经这个时间了啊……」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00420_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「龙一，打算怎么办……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「葵说得对，在河岸也好在宿舍也好……但最后再去天台看一眼可以吗？」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00420_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「嗯，没问题」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢了。好，出发吧！」
[np]

[char_erase name="aoi"]

[r]经历了这么多波折的寻找，说什么也非要在学校里……这大概就是种微不足道的坚持吧。
[np]

;//背景を屋上bg12_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]于是我们抵达的屋顶……
[np]

[character name="ryuichi"]
【龙一】[r]「哇……！」
[np]

[r]吹奏乐部似乎已经结束练习，此刻除了我们空无一人。
[np]

[aoi storage="A_seifuku_M A_3_M"]
[playcv storage="aoi_aoi_00420_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_seifuku"]
【葵】[r]「呼呼……太好了呢龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哈哈，这都是我平时积德行善的福报吧！」
[np]

[aoi storage="C_seifuku_M CD_4_M"]
[playcv storage="aoi_aoi_00420_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_seifuku"]
【葵】[r]「少得寸进尺了你……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]我们来到被晚霞浸染的屋顶，既不为说笑打趣，亦非观赏风景。
[np]

[r]是为了彼此……来诉说重要之事的。
[np]

[r]即便没有明说，两人缩短的距离与酝酿的氛围，已然将此地塑造成适合告白的场景。
[np]

[character name="ryuichi"]
【龙一】[r]「……呐，葵——」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00420_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「龙一」
[np]
[FACEHIDE]

[r]当我仰首唤出她名字的刹那……葵也正呼唤着我的名字。
[np]

[character name="ryuichi"]
【龙一】[r]「……怎么了？」
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00420_025.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「那个……能不能……让我先说……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……好」
[np]

[r]凝视着葵按在胸口的右手，正被自己紧紧攥住。
[np]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00420_026.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「我、我对……龙一……想说的事……只有一件……」
[np]
[FACEHIDE]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[r]少女的脸庞比天边的夕阳还要红，却仍努力编织着话语。
[np]

[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00420_027.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「就、就是……我、我……我……」
[np]
[FACEHIDE]

[r]全神贯注地倾听着她的诉说，生怕漏掉一字一句。
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00420_028.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「我……龙、龙一……龙一……的事……」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[char_jump name=aoi]
[playcv storage="aoi_aoi_00420_029.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「龙、龙一和我……！！是前世结下因缘的命运同胞！！」
[np]
[FACEHIDE]

[r]……哈？
[np]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_aoi_00420_030.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「所、所以……当、当我们……待在一起时……黑、黑暗力量就会增强……」
[np]
[FACEHIDE]

[r]……别吐槽。这种场合不需要笑场。
[np]

[r]葵现在正拼命要把自己的心意传达给我。所以此刻……
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_aoi_00420_031.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「那股力量在我体内不断膨胀……于是……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00420_032.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「回过神来时就会心跳加速……满脑子都是龙一的事……」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00420_033.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「所以我想……我大概……不，肯定是……绝对、绝对——」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00420_034.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「是喜欢上龙一了！！！」
[np]
[FACEHIDE]

[r]——明明早该明白的，胸腔深处却咚咚作响。
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00420_035.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「我对龙一……！从很久很久以前就喜欢了！龙一也许不记得了……」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00420_036.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「但对我来说……龙一是我年幼时第一个喜欢上的初恋对象！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「——哎……？」
[np]

[r]年幼时，喜欢过……？
[np]

[r]这句出乎意料的话语，让时间仿佛在瞬间静止。
[np]

[character name="ryuichi"]
【龙一】[r]「等等……你是说……难道……」
[np]

[aoi storage="C_seifuku_L CD_9_L"]
[playcv storage="aoi_aoi_00420_037.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「这就是……最好的证明……！」
[np]
[FACEHIDE]

[r]突然靠近的葵在咫尺之遥停下脚步，伸手抚上我的脸庞——
[np]

[aoi storage="D_seifuku_L CD_9_L"]
[playcv storage="aoi_aoi_00420_038.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「你额头上的这道伤疤……就是证明我初恋存在的证据……！」
[np]
[FACEHIDE]

[r]她轻触着额头的疤痕含泪告白。
[np]

[r]这句话让所有难以理解的现象瞬间串联成完整的线索。
[np]

[aoi storage="C_seifuku_L CD_5_L"]
[playcv storage="aoi_aoi_00420_039.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「龙一第一次来到伏木庄那天……我看着你的脸……总觉得似曾相识」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_040.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「但毕竟岁月流逝太久……我不断说服自己只是长相相似的不同人」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_5_L"]
[playcv storage="aoi_aoi_00420_041.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「可是某天放学路上……看到龙一额头上的伤时……我心中就萌生了那样的念头……！」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_L CD_1_L"]
[playcv storage="aoi_aoi_00420_042.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「这个人……可能就是小时候保护过我的……我的初恋……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「葵……」
[np]

[r]……难道笔记本里写的「额头带伤的～」是指……
[np]

[aoi storage="C_seifuku_L CD_5_L"]
[playcv storage="aoi_aoi_00420_043.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「从开始这么想之后……这份喜欢的心情就越来越强烈……」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_L A_1_L"]
[playcv storage="aoi_aoi_00420_044.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「在河滩保护我不被野狗袭击的时候……果然……没有错……我确信了」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_1_L"]
[playcv storage="aoi_aoi_00420_045.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「会向龙一提出同住一个房间的请求……也是因为一直惦记着这件事……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_046.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「那个时候……我就已经喜欢上龙一了……！因为、因为……！」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_9_L"]
[playcv storage="aoi_aoi_00420_047.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「这可是和第一次喜欢的人……重新相遇了啊！！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]将扑进怀里的葵紧紧抱住。
[np]

[aoi storage="D_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_048.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「龙一……！我喜欢你、最喜欢你了！！」
[np]
[FACEHIDE]

[r]葵眼含泪光声音颤抖，依然向我倾诉着爱意。
[np]

[r]这样的葵，纯粹得惹人怜爱。
[np]

[character name="ryuichi"]
【龙一】[r]「葵……我也喜欢你」
[np]

[aoi storage="A_seifuku_L A_8_L"]
[playcv storage="aoi_aoi_00420_049.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]怀中的葵因我这句话产生了细微反应。
[np]

[character name="ryuichi"]
【龙一】[r]「……其实我原本打算先开口说的」
[np]

[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_050.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「先……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……今天说有事情要谈……就是为了向葵传达我的心意……」
[np]

[character name="ryuichi"]
【龙一】[r]「不过……最后还是被葵你抢先一步了呢」
[np]

[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_051.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「这、这是当然的……因为……」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_L CD_6_L"]
[playcv storage="aoi_aoi_00420_052.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_6_FACE_seifuku"]
【葵】[r]「先喜欢上对方的……毫无疑问……明明是我才对……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……或许吧」
[np]

[r]若真是如此，这个顺序也是必然的。但还是要重新亲口告诉你。
[np]

[character name="ryuichi"]
【龙一】[r]「葵……我也喜欢你。非常喜欢……！」
[np]

[aoi storage="A_seifuku_L A_8_L"]
[playcv storage="aoi_aoi_00420_053.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「……！！」
[np]
[FACEHIDE]

[r]葵依然紧紧抱着我的身体，仰起脸时双眸已盈满水光。
[np]

[r]面对葵那小小的嘴唇——
[np]

[aoi storage="A_seifuku_L A_10_L"]
[playcv storage="aoi_aoi_00420_054.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_10_FACE_seifuku"]
【葵】[r]「嗯……啾……」
[np]
[FACEHIDE]

[r]作为爱的证明，我倾注了全部心意吻了上去。
[np]

[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_055.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「唔……啊、哈啊……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……这是初吻……对吧？」
[np]

[aoi storage="A_seifuku_L A_9_L"]
[playcv storage="aoi_aoi_00420_056.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「嗯……是……间接接吻、不算数的……」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_L CD_9_L"]
[playcv storage="aoi_aoi_00420_057.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「我的初吻……确确实实是给龙一了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……我确实接收到了」
[np]

[aoi storage="D_seifuku_L CD_10_L"]
[playcv storage="aoi_aoi_00420_058.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「要、要是敢不珍惜……我、我可是会用黑暗力量把你消灭掉的……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，我会珍惜的」
[np]

[aoi storage="A_seifuku_L A_8_L"]
[playcv storage="aoi_aoi_00420_059.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[r]伴随着回应，我再次将葵的身体拥入怀中。
[np]

[aoi storage="C_seifuku_L CD_8_L"]
[playcv storage="aoi_aoi_00420_060.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「……龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[aoi storage="D_seifuku_L CD_2_L"]
[playcv storage="aoi_aoi_00420_061.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「……最喜欢你了……♪」
[np]
[FACEHIDE]

[r]我们就这样一直……直到彼此的心情平复下来，始终紧紧相拥着。
[np]

[char_erase name="aoi"]

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

;//JUMP:aoi_00430
[jump storage="scenario/aoi/aoi_00430.ks"]