[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00120.txt]
;//chisato_00120
;//BG:bg07_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg07_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/8(水)
;//CH:千聖,pajyama

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//千聖視点
[chisato storage="A_pajyama_M AB_4_M"]
[playcv storage="chisato_chisato_00120_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_pajyama"]
【千圣】[r]「呃…」
[np]
[FACEHIDE]

[r]躺倒在床上时，刚吹干的发丝在床铺上四散开来。
[np]

[r]…总觉得，好像有点累呢…
[np]

[r]虽然考试第一天结束后又去购物了也有关系，不过…
[np]

[chisato storage="C_pajyama_M CD2_5_M"]
[playcv storage="chisato_chisato_00120_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_pajyama"]
【千圣】[r]「…………」
[np]
[FACEHIDE]

[r]最主要的原因…应该是我现在瞒着宿舍大家的那件事吧。
[np]

[r]虽然阴差阳错被神原君发现了…
[np]

[r]但要是通过神原君…再传到其他人那里的话…
[np]

[r]大概是因为一直提防着这个，心灵得不到片刻安宁吧…
[np]

[chisato storage="D_pajyama_M CD2_9_M"]
[playcv storage="chisato_chisato_00120_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_pajyama"]
【千圣】[r]「…神原君吗…」
[np]
[FACEHIDE]

[r]虽然说了要监视这种话…但现实考虑的话，全天候盯梢根本不现实。
[np]

[r]毕竟这就意味着要二十四小时都待在一起…
[np]

[r]简直就是要从早到晚…学习时也好吃饭时也罢，就连睡觉也要待在一起……
[np]

[chisato storage="B_pajyama_M AB_10_M"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00120_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_pajyama"]
【千圣】[r]「这、这绝对不行不行不行！」
[np]
[FACEHIDE]

[r]睡、睡觉也要在一起，我到底在想些什么呀……！
[np]

[r]而且不知怎的，还莫名其妙地心跳加速……不、不过这并不是那种意义上的心跳加速……！
[np]

[r]我和神原君……终究只是共享秘密的关系而已……
[np]

[r]终究只是这样的关系……嗯，没错……没什么，真的没什么……。
[np]

[char_erase name="chisato"]


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


;//JUMP:chisato_00130
[jump storage="scenario/chisato/chisato_00130.ks"]
