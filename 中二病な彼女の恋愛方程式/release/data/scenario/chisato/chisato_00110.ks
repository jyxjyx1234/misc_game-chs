[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00110.txt]
;//chisato_00110
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/8(水)
;//CH:竜一,sifuku
;//CH:千聖,pajyama
;//CH:聖水,sifuku

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]


[satomi storage="A_sifuku_M AB_9_M"]
[playcv storage="satomi_chisato_00110_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_9_FACE_sifuku"]
【圣水】[r]「喂～龙一～！你竟敢不喝我的酒吗？！哦～！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就算是圣水的酒我也喝不下！」
[np]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_chisato_00110_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「这家伙没救啦！！换人！换人！改变世界！啊哈哈哈哈哈哈！！」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]我应付完那个扬言要改变世界的醉鬼，洗好了晚饭的碗碟。
[np]

[r]最近开始主动承包洗碗工作……这种微不足道的表现，也能稍微改善现状吗？
[np]

[character name="ryuichi"]
【龙一】[r]「好了……」
[np]

[r]用毛巾擦干湿漉漉的手，准备去卫生间而走向盥洗室……
[np]

[character name="ryuichi"]
【龙一】[r]「……呼，好险好险」
[np]

[r]在盥洗室前稍作停顿，做了个小小的深呼吸。
[np]

[r]前方正是伏木庄事故率最高的魔性空间……
[np]

[r]刚入住时还幻想能遇到幸运色狼事件，现在只觉得太天真了。
[np]

[r]这种事故啊，不论主动还是被动的一方，事后精神状态都会变得超糟糕的……！
[np]

[character name="ryuichi"]
【龙一】[r]「所以啊」
[np]

[playse buf=5 storage="sound/00700.ogg"]

;//\SEノック音
[r]在脑海中做完漫长的心理建设后，我敲响了门。
[np]

;//ドア越し
;[chisato storage="C_pajyama_M CD2_3_M"]
[playcv storage="chisato_chisato_00110_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_pajyama"]
【千圣】[r]「嗯——？」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[r]好险……幸亏及时停住了。
[np]

[character name="ryuichi"]
【龙一】[r]「是绫濑吗？」
[np]

;//ドア越し
;[chisato storage="C_pajyama_M CD2_1_M"]
[playcv storage="chisato_chisato_00110_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_pajyama"]
【千圣】[r]「神原同学？怎么了？」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「那个…我想用下卫生间……现在不太方便吗？」
[np]

;//ドア越し
;[chisato storage="A_pajyama_M AB_3_M"]
[playcv storage="chisato_chisato_00110_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_pajyama"]
【千圣】[r]「没关系哦。我已经洗完澡换好衣服了」
[np]
[FACEHIDE]

;[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「那就好。那我…」
[np]

[playse buf=5 storage="sound/00290.ogg"]

;//背景を洗面所bg08に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[r]得到绫濑的许可后，我推开门…
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]刹那间…刚出浴的绫濑身上散发出的、某种难以言喻的香气钻进了鼻腔。
[np]

[chisato storage="D_pajyama_M CD2_3_M"]
[playcv storage="chisato_chisato_00110_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_pajyama"]
【千圣】[r]「真遗憾呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什、什么遗憾……我根本没那种想法……」
[np]

[r]虽然多半是绫濑在开玩笑……
[np]

[r]不知为何，此刻的我……竟不敢直视那样的绫濑。
[np]

[chisato storage="D_pajyama_M CD2_1_M"]
[playcv storage="chisato_chisato_00110_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_pajyama"]
【千圣】[r]「来，得吹干头发」
[np]
[FACEHIDE]

[r]穿着睡衣的绫濑用吹风机吹着潮湿的长发。
[np]

[r]或许是暖风带来的，绫濑洗发水的香气再次飘入我的鼻腔……
[np]

[r]……这种情况，是同居特有的体验……对吧。
[np]

[r]居然能闻到刚洗完澡的女孩子的体香……等等，感觉我好像变态啊！
[np]

[character name="ryuichi"]
【龙一】[r]（冷、冷静点啊我！有什么好慌乱的！）
[np]

[r]明明只是碰巧和刚洗完澡的绫濑在盥洗室遇见而已……可是为什么，会这么……
[np]

[chisato storage="D_pajyama_M CD2_9_M"]
[playcv storage="chisato_chisato_00110_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_pajyama"]
【千圣】[r]「……神、神原同学……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……怎、怎么了？」
[np]

[r]停下吹风机的绫濑直勾勾地盯着我的脸。
[np]

[chisato storage="C_pajyama_M CD2_3_M"]
[playcv storage="chisato_chisato_00110_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_pajyama"]
【千圣】[r]「没有……你不是要上厕所吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「咦？啊、啊啊……对、对啊」
[np]

[chisato storage="B_pajyama_M AB_3_M"]
[playcv storage="chisato_chisato_00110_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_pajyama"]
【千圣】[r]「总觉得你好像有点发呆……发生什么事了吗？」
[np]
[FACEHIDE]

[r]被绫濑这么一说，原本逐渐平复的动摇似乎又要涌现……
[np]

[character name="ryuichi"]
【龙一】[r]「没……没什么特别的」
[np]

[chisato storage="A_pajyama_M AB_3_M"]
[playcv storage="chisato_chisato_00110_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_pajyama"]
【千圣】[r]「……是么」
[np]
[FACEHIDE]

[r]虽然带着些许疑惑的神情，绫濑还是再次用吹风机开始吹干头发。
[np]

[char_erase name="chisato"]


[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]那张侧脸看起来脸颊微微泛红……是因为刚洗完澡吧。
[np]

[r]这么想着，我走进厕所……
[np]

[playse buf=5 storage="sound/00320.ogg"]

;//暗転
[character name="ryuichi"]
【龙一】[r]「呃…」
[np]

[r]我一边强压着躁动不安的心跳，一边默念着冷静下来……解决完生理需求。
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


;//JUMP:chisato_00120
[jump storage="scenario/chisato/chisato_00120.ks"]
