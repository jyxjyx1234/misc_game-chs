[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00670.txt]
;//supica_00670
;//BG:bg02_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,pajyama
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[r]和真珠星定下那样的约定后，正好过了一周……
[np]

[r]我自己也一直期盼着迎来８月１２日的早晨。窗外是一片万里无云的晴空。
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_supica_00670_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「啊，早上好神原君」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，早上好。有什么需要帮忙的吗？」
[np]

[chisato storage="C_sifuku_M CD_3_M"]
[playcv storage="chisato_supica_00670_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「这个嘛……不过基本上已经结束了，剩下的也就是摆摆筷子了吧」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「了解」
[np]

[aoi storage="A_tokushu_M A_1_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]

[playcv storage="aoi_supica_00670_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「桃，这个盘子这样放可以吗？」
[np]
[FACEHIDE]

[playcv storage="momo_supica_00670_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「是的，没问题。谢谢您」
[np]
[FACEHIDE]

[char_erase name="momo aoi"]
[r]来到客厅一看，那里难得地聚集了大家的身影。
[np]

[mion storage="D_sifuku_M CD1_10_M" trans=false]
[chisato storage="A_sifuku_M AB_3_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00670_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「今天也是晴朗呢……不过，对于开着冷气宅在家里的我来说无关紧要啦」
[np]
[FACEHIDE]

[playcv storage="chisato_supica_00670_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_sifuku"]
【千圣】[r]「澪音学姐，偶尔不出去的话对健康不好哦……？」
[np]
[FACEHIDE]

[char_erase name="chisato mion"]

[r]望着天气预报的澪音学姐，绫濑向她提出了忠告。
[np]

[r]这样啊，是个大晴天呢……。
[np]

[aoi storage="B_tokushu_M B_1_M"]
[playcv storage="aoi_supica_00670_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_tokushu"]
【葵】[r]「嗯，怎么了龙一……？看你一脸笑眯眯的样子」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，没什么……呵呵」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_supica_00670_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「……？」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]虽然我之前因为担心最重要的天气问题，从三天前开始就坐立不安……不过现在看来应该没问题了。
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_supica_00670_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「神原君，真珠星还在睡吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯。我起床时她还裹在被子里」
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_supica_00670_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「这样啊……要是真珠星也醒了，今天就是难得全员到齐的日子呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那我去叫醒她吧？只要我去的话，肯定——」
[np]

[char_erase name="chisato"]

[supica storage="C1_pajyama_M CD2_5_M"]
[playcv storage="supica_supica_00670_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_pajyama"]
【真珠星】[r]「……早……上……好……」
[np]
[FACEHIDE]

[char_erase name="supica"]


[momo storage="C_sifuku_M C_2_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00670_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[r]真是说曹操曹操到啊……
[np]

[chisato storage="B_sifuku_M AB_2_M"]

[playcv storage="chisato_supica_00670_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「早上好真珠星。这样一来全员就到齐了呢」
[np]
[FACEHIDE]

[char_erase name="chisato momo"]
[r]考虑到圣水小姐不会出现在早餐席上这一伏木庄的常识，就座的绫濑露出了腼腆的笑容。
[np]

[supica storage="D_pajyama_M CD2_5_M"]
[playcv storage="supica_supica_00670_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_pajyama"]
[char_jump name=supica]
【真珠星】[r]「……咳咳……」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[char_erase name="supica"]

[aoi storage="C_tokushu_M CD_2_M" trans=false]
[chisato storage="C_sifuku_M CD_3_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00670_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_sifuku"]
【千圣】[r]「正好准备也做好了……那么，我们开动吧」
[np]
[FACEHIDE]

[aoi storage="C_tokushu_M CD_2_M"]
[playcv storage="aoi_supica_00670_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
[char_jump name=aoi]
【葵】[r]「我开动了！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]
[r]摆着白饭、味噌汤、煎蛋和烤鱼等经典早餐菜色的餐桌旁，真珠星缓缓落座。
[np]

[supica storage="A_pajyama_M AB2_5_M" trans=false]
[momo storage="A_sifuku_M AB_2_M" trans=false]
[char_trans]
[playcv storage="momo_supica_00670_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「真珠星酱要在煎蛋上浇酱油吗？」
[np]
[FACEHIDE]

[playcv storage="supica_supica_00670_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_pajyama"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_supica_00670_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「真珠星酱……？」
[np]
[FACEHIDE]

[supica storage="A_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00670_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「嗯……什么？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_supica_00670_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「啊，那个……关于煎蛋上要不要淋酱油……」
[np]
[FACEHIDE]

[supica storage="D_pajyama_M CD2_1_M"]
[playcv storage="supica_supica_00670_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「……龙一……帮我……滴几滴……」
[np]
[FACEHIDE]

[char_erase name="momo"]


[character name="ryuichi"]
【龙一】[r]「啊、啊……」
[np]

[r]从真珠星手里接过平盘，又接过桃酱递来的酱油，在煎蛋的蛋黄上滴了几滴。
[np]

[supica storage="D_pajyama_M CD2_3_M"]
[playcv storage="supica_supica_00670_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_pajyama"]
【真珠星】[r]「……谢谢……」
[np]
[FACEHIDE]

[r]接过调料后道谢的真珠星的脸……让我无法移开视线。
[np]

[r]和往常的真珠星相比，氛围似乎有所不同……但愿这只是我的错觉……
[np]

[supica storage="A_pajyama_M AB2_12_M"]
[playcv storage="supica_supica_00670_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_pajyama"]
【真珠星】[r]「……嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]看起来比平时更恍惚的样子……是因为刚睡醒吧……？
[np]

[chisato storage="C_sifuku_M CD_1_M"]
[playcv storage="chisato_supica_00670_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「神原君怎么了……？不吃吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊……抱歉」
[np]

[char_erase name="chisato"]

[r]被绫濑催促着喝了口味噌汤。
[np]

[r]之后虽然想像往常一样继续用餐……但坐在对面的真珠星的样子实在令人在意。
[np]

[supica storage="A_pajyama_M AB2_5_M"]
[playcv storage="supica_supica_00670_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_pajyama"]
[char_jump name=supica]
【真珠星】[r]「……咳……」
[np]
[FACEHIDE]

[supica storage="C2_pajyama_M CD2_1_M"]

[r]又来了……刚才那个，是咳嗽吧……？
[np]

[r]虽然觉得不可能……但真珠星……
[np]

[supica storage="B3_pajyama_M AB2_5_M"]
[playcv storage="supica_supica_00670_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_pajyama"]
【真珠星】[r]「……我吃好了……」
[np]
[FACEHIDE]

[char_erase name="supica"]


[momo storage="A_sifuku_L AB_7_L"]

[playcv storage="momo_supica_00670_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
[char_jump name=momo]
【桃】[r]「哎……这、这就吃完了？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_1_M"]
[supica storage="A_pajyama_M A_1_M"]
[playcv storage="supica_supica_00670_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「……困了……」
[np]
[FACEHIDE]

[char_erase name="supica"]


[momo storage="C_sifuku_M C_7_M"]
[playcv storage="momo_supica_00670_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「啊、真珠星酱……？」
[np]
[FACEHIDE]

[char_erase name="momo"]


[chisato storage="A_sifuku_M AB_4_M"]
[playcv storage="chisato_supica_00670_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_sifuku"]
【千圣】[r]「哎呀呀……」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[r]饭和味噌汤都剩下一大半，真珠星慢悠悠地走上楼梯。
[np]

[r]真珠星平时虽然吃得少，但剩下这么多分量还是头一次见。
[np]

[r]喂喂……开玩笑的吧？
[np]

[r]真珠星……难道说，你……
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

;//JUMP:supica_00680
[jump storage="scenario/supica/supica_00680.ks"]
