[SCENESTART file=supica_00460.ks]
;//supica_00460
;//BG:bg04_03
;//TIME:夜
;//日付:7/21(火)
;//CH:竜一,pajyama
;//CH:すぴか,pajyama

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]刚回家就冲了个热水澡，让发冷的身体暖和起来回到房间。
[np]

[r]最近要清洗的不只是自己还有另一人份的身子，回过神来已是凌晨时分。
[np]

[supica storage="D_pajyama_M CD2_1_M"]
[playcv storage="supica_supica_00460_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「龙一……要睡了么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真珠星……听好了？那种事情，别在人前随便提起……」
[np]

[supica storage="C1_pajyama_M CD2_1_M"]
[playcv storage="supica_supica_00460_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「那种事情……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是和我亲热的那种话。就算真珠星你不在意，被迫听到的人也会觉得难为情啊」
[np]

[r]……虽然澪音前辈大概会兴致勃勃地追问细节。
[np]

[supica storage="B1_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00460_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「……知道了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好，真乖」
[np]

[supica storage="A_pajyama_L AB2_2_L"]

[r]我轻抚她的头发，真珠星眯起眼睛腼腆地笑了。
[np]

[character name="ryuichi"]
【龙一】[r]「话说回来，第一次约会感觉怎么样？」
[np]

[supica storage="B1_pajyama_L AB2_3_L"]
[playcv storage="supica_supica_00460_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_pajyama"]
【真珠星】[r]「呃……还算……挺开心的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「还算啊」
[np]

[supica storage="D_pajyama_L CD2_3_L"]
[playcv storage="supica_supica_00460_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_pajyama"]
【真珠星】[r]「海星很可爱，海边的星空格外美丽……」
[np]
[FACEHIDE]

[supica storage="C1_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00460_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「还有……约会结束时必须亲热……真珠星记住了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？不、那个……」
[np]

[supica storage="B1_pajyama_L AB2_1_L"]
[playcv storage="supica_supica_00460_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「……不对吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「也不是……不过确实，约会后两人情绪高涨的情况倒是常有……」
[np]

[supica storage="B1_pajyama_L AB2_3_L"]
[playcv storage="supica_supica_00460_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_pajyama"]
【真珠星】[r]「……那就是没错……约会结束时要做亲热的事……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「只是这种概率比较高……又不是必须遵守的规矩……」
[np]

[supica storage="C1_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00460_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「晚安……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[character name="ryuichi"]
【龙一】[r]「啊、喂！？真珠星！？」
[np]

[r]她突然丢下这句话，真珠星便钻进了我的被窝里。
[np]

[r]嗯……今天一整天在海边玩耍，最后还做了些消耗体力的事，可能确实是累了吧……
[np]

[r]……总感觉，好像又莫名其妙地学会了一个奇怪的常识啊……
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

;//JUMP:supica_00470
[jump storage="scenario/supica/supica_00470.ks"]
