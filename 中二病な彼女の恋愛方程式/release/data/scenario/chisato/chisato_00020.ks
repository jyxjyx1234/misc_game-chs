[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00020.txt]
;//chisato_00020
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/5(日)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]


[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_chisato_00020_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「哦、今天是素面啊……已经完全是夏天了呢。那我要——」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[aoi storage="A_tokushu_L A_2_L"]
[playcv storage="aoi_chisato_00020_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「我开动了！」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]晚上８点。宿舍全员聚集在客厅，围坐在餐桌旁。
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_chisato_00020_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……吸溜……哧溜溜……」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_3_M"]
[playcv storage="momo_chisato_00020_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「啊、真珠星酱，汤汁要溅出来啦……」
[np]
[FACEHIDE]

[char_erase name="momo supica"]
[r]……汤汁要，溅出来了……。
[np]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_chisato_00020_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「汤汁溅出来什么的……这说法有点色情的意味呢」
[np]
[FACEHIDE]

[char_erase name="mion"]


[momo storage="A_sifuku_L AB_8_L"]
[playcv storage="momo_chisato_00020_002.ogg" name="momo"]
[character name="momo"]
[char_jump name=momo]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「咿呀呀呀！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[aoi storage="D_tokushu_L CD_4_L"]
[playcv storage="aoi_chisato_00020_002.ogg" name="aoi"]
[char_jump name=aoi]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_tokushu"]
【葵】[r]「喂魔女！不准欺负我的徒弟！！」
[np]
[FACEHIDE]

[char_erase name="aoi"]


[char_erase name="aoi"]
[r]……发现自己居然和澪音前辈想到同一层次的事情，心情既欣喜又悲伤。
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_chisato_00020_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……汤汁的……哪里，色情了……？」
[np]
[FACEHIDE]

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_chisato_00020_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「嗯呵呵……嘛、真珠星长大以后就会明白啦」
[np]
[FACEHIDE]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_chisato_00020_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……地球的文化……无法理解……」
[np]
[FACEHIDE]

[char_erase name="supica satomi"]


[char_erase name="supica"]
[r]在略显下流却热闹的用餐话题中，唯独一人……
[np]

[chisato storage="A_sifuku_M AB_9_M"]
[playcv storage="chisato_chisato_00020_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「……呃……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]绫濑从刚才开始就坐立不安地频频偷瞄我这边。
[np]

[r]肯定是白天那件事吧……该由我来打消绫濑的不安！
[np]

[character name="ryuichi"]
【龙一】[r]「绫濑，不用那么担心也没事的」
[np]

[chisato storage="C_sifuku_L CD_8_L"]
[playcv storage="chisato_chisato_00020_002.ogg" name="chisato"]
[character name="chisato"]
[char_jump name=chisato]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「哎……？担、担心？哪、哪有的事……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「被说比钻石还要守口如瓶的我，怎么可能轻易泄露出去？」
[np]

[chisato storage="A_sifuku_L AB_10_L"]
[playcv storage="chisato_chisato_00020_003.ogg" name="chisato"]
[character name="chisato"]
[char_jump name=chisato]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「啊——！！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]……等等……我到底在说什么？
[np]

[mion storage="C_sifuku_L CD1_2_L"]
[playcv storage="mion_chisato_00020_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「泄露……？泄露什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，不，那个……」
[np]

[r]我、我在干嘛啊……！说出那种话，不就等于承认有秘密了吗！！
[np]

[char_erase name="mion"]

[chisato storage="C_sifuku_L CD_4_L"]
[playcv storage="chisato_chisato_00020_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_sifuku"]
【千圣】[r]「呃……！！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]绫濑用从未见过的可怕表情瞪着我啊啊啊啊啊啊啊！！
[np]

[char_erase name="chisato"]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_chisato_00020_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「龙一，你出了好多汗呢……是因为房间太热吗？还是……因为心虚了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]糟了……偏偏被澪音学姐盯上了……！
[np]

[r]这个人超强的好奇心和洞察力可不是开玩笑的……要是现在说漏嘴的话——
[np]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_chisato_00020_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「从刚才的发言来看，龙一君掌握的是千圣的秘密吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这个嘛～……谁、谁知道呢……？」
[np]

[char_erase name="mion"]

[aoi storage="B_tokushu_L B_1_L"]
[playcv storage="aoi_chisato_00020_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_tokushu"]
【葵】[r]「龙一，声音都变调了哦……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[mion storage="A_sifuku_L AB1_3_L"]
[playcv storage="mion_chisato_00020_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「呵呵，真明显……所以，你在隐瞒什么？不告诉我吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哪、哪有隐瞒什么啊——」
[np]

[char_erase name="mion"]

[chisato storage="A_sifuku_M AB_10_M"]
[playcv storage="chisato_chisato_00020_005.ogg" name="chisato"]
[character name="chisato"]
[char_jump name=chisato]
[FACEVIEW storage="chisato_AB_10_FACE_sifuku"]
【千圣】[r]「并、并不是什么需要隐瞒的事情……！！」
[np]
[FACEHIDE]

[r]绫濑……！？
[np]

[chisato storage="C_sifuku_M CD_6_M"]
[playcv storage="chisato_chisato_00020_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_6_FACE_sifuku"]
【千圣】[r]「其、其实我……我……」
[np]
[FACEHIDE]

[r]突然站起身来，在众目睽睽之下……
[np]

[r]咦……要、要说了吗？真的要现在坦白吗！？
[np]

[r]要是这样的话，造成这种局面的我岂不是要背负无尽的罪恶感——
[np]

[chisato storage="B_sifuku_L AB_9_L"]
[playcv storage="chisato_chisato_00020_007.ogg" name="chisato"]
[character name="chisato"]
[char_jump name=chisato]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「我、我喜欢男同！！！！！」
[np]
[FACEHIDE]

[r]罪恶感……罪……恶…………感啊啊啊啊啊啊啊啊啊！？！？！？
[np]

[char_erase name="chisato"]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_chisato_00020_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「男、男同……？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_chisato_00020_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「也就是说，ＢＬ……？真没想到千圣还有这种爱好……」
[np]
[FACEHIDE]

[char_erase name="momo mion"]


[chisato storage="A_sifuku_L AB_11_L"]
[playcv storage="chisato_chisato_00020_008.ogg" name="chisato"]
[character name="chisato"]
[char_jump name=chisato]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
【千圣】[r]「而、而且我还是会想象身边男生那种关系的类型……龙一×爽史什么的简直超火热！！」
[np]
[FACEHIDE]

[char_erase name="mion"]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_chisato_00020_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「龙一君是攻啊……爽史君给人的印象还挺强势的……」
[np]
[FACEHIDE]

[char_erase name="mion"]


[chisato storage="A_sifuku_L AB_9_L"]
[playcv storage="chisato_chisato_00020_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_sifuku"]
【千圣】[r]「但、但是啊！其实他看起来那样，意外地有受气质的另一面呢……！！」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_L CD_11_L"]
[playcv storage="chisato_chisato_00020_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「不、不是说过要帮我保守这个秘密的吗！啊、啊哈、啊哈哈哈！！」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]别擅自把我和爽史扯到一起……
[np]

[r]作为引发这场骚动的始作俑者，我就算嘴巴裂开也说不出口这个真相……
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


;//JUMP:chisato_00020
[jump storage="scenario/chisato/chisato_00030.ks"]
