[SCENESTART file=supica_00100.ks]
;//supica_00100
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/8(水)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku


[character name="ryuichi"]
【龙一】[r]「好……！」
[np]

[r]洗完晚饭的碗筷，用厨房的毛巾擦干手之后……
[np]

[r]从名为自己房间的牢笼里取出一整套学习用具，再次坐到了餐桌前。
[np]

[r]期末测验也只剩下两天……只要再坚持两天，之后等待着的就是暑假了。
[np]

[r]至少得避免因为不及格而参加补习班……所以，加油吧我！
[np]

[character name="ryuichi"]
【龙一】[r]「好了，首先……」
[np]

[supica storage="C1_sifuku_S CD_1_S"]

[r]翻开课本，从笔袋里拿出自动铅笔和橡皮……嗯？
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星……？」
[np]

[r]映入眼帘的，是真珠星走向玄关的身影。
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_supica_00100_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……干嘛？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这个时间……莫非又要去天体观测吗？」
[np]

[r]于是真珠星理所当然地点了点头。明明考试在即还这么游刃有余……。
[np]

[character name="ryuichi"]
【龙一】[r]「这样啊……真珠星好歹也是个女孩子，走夜路要小心点啊」
[np]

[r]差点要在「女孩子」前面加上「好歹算是」，慌忙把话咽了回去。
[np]

[r]就算脑袋里装着令人遗憾的东西，单看外表也完全是个美少女……真是的。
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00100_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「无妨……真珠星有星辰庇佑」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就好……」
[np]

[char_erase name="supica"]

[r]不对，一点都不好吧。在脑海中立刻吐槽道。
[np]

[r]要是真珠星真的遇到麻烦时，那个所谓的星辰庇佑可没法保证能派上用场。
[np]

[r]话虽如此，我也要复习考试……不对，这种时候让女孩子独自出门果然还是太危险了……
[np]

[supica storage="A_sifuku_M AB_1_M"]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]就算没有这层原因，真珠星本身就够让人提心吊胆的……或者说需要时刻盯着……
[np]

[r]可恶啊，这种状态怎么可能集中精神复习……
[np]

[character name="ryuichi"]
【龙一】[r]「等一下真珠星，我也一起去」
[np]

[r]放下刚握在手中的笔，我从座位上起身。
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00100_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……龙一也要？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……那个…突然想看星星了」
[np]

[r]当然，我始终没有说出真正的动机。
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00100_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……是么。那便随我来吧」
[np]
[FACEHIDE]

[r]获得真珠星许可的我，跟在她身后离开了宿舍。
[np]

[char_erase name="supica"]

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

;//JUMP:supica_00110
[jump storage="scenario/supica/supica_00110.ks"]
