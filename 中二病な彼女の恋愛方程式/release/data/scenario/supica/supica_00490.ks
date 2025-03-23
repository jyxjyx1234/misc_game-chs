[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00490.txt]
;//supica_00490
;//BG:bg15_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:昼
;//日付:7/25(土)
;//CH:竜一,sifuku
;//CH:すぴか,tokushu
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[r]于是，我们就这样突然决定约会……
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……该怎么办呢」
[np]

[r]虽然完全没定下任何计划，总之还是先来到了车站前。
[np]

[supica storage="D_tokushu_M CD_5_M"]
[playcv storage="supica_supica_00490_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_tokushu"]
【真珠星】[r]「……好热……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「穿成那样的话，也难怪会热吧……」
[np]

[r]那身衣服比平时的要厚实许多，颜色又是全黑……不仅吸引了路人的目光，还聚集了太阳的热量。
[np]

[r]再加上今天这酷暑天气……真珠星会这样抱怨也是情有可原。
[np]

[supica storage="B2_tokushu_M AB_12_M"]
[playcv storage="supica_supica_00490_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_tokushu"]
【真珠星】[r]「但是……龙一夸我可爱了……所以我要努力……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……真珠星……」
[np]

[r]听到真珠星这番话，我不由得露出了笑容。
[np]

[character name="ryuichi"]
【龙一】[r]「……你的心意我很高兴，但别太勉强自己了？」
[np]

[supica storage="C1_tokushu_M CD_3_M"]
[playcv storage="supica_supica_00490_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_tokushu"]
【真珠星】[r]「……知道了」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]那么……和真珠星的第二次约会，该选什么地方呢……
[np]

[r]要充满约会氛围，最好是有空调的凉爽地方……
[np]

[r]这样的话……就是那里吗？
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
;//JUMP:supica_00500
[jump storage="scenario/supica/supica_00500.ks"]
