[SCENESTART file=aoi_00850.ks]
;//aoi_00850
;//BG:bg14_02
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

;//TIME:夕
;//日付:8/11(火)
;//CH:竜一,sifuku

[character name="ryuichi"]
【龙一】[r]「……这实在说不过去吧」
[np]

[r]打工结束后的傍晚，我顺路来到河滩，凝望着被暮色渐渐染红的风景。
[np]

[r]现在的葵在欺骗自己，这是任谁都看得出来的事实。
[np]

[r]毕竟都宣布要毕业了，也没法轻易收回这句话……她是不是在为此烦恼呢？
[np]

[character name="ryuichi"]
【龙一】[r]「……好」
[np]

[r]今天打工时我一直在思考，究竟要怎么做才能让葵坦然面对自己的真心。
[np]

[r]为了让葵变回那个从心底以中二病为荣、享受其中乐趣的自己……
[np]

[r]我在脑海中勾勒出了一个宏大的计划。
[np]

[r]但仅凭我一人之力绝不可能实现。要让这个计划成功，需要大家的协助。
[np]

[character name="ryuichi"]
【龙一】[r]「所以……」
[np]

[r]我掏出手机，给宿舍里除葵之外的所有人发送了写有作战内容的邮件。
[np]

[character name="ryuichi"]
【龙一】[r]「……搞定！」
[np]

[r]我盯着显示发送完毕的屏幕看了许久……随后离开了河滩。
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

;//JUMP:aoi_00860
[jump storage="scenario/aoi/aoi_00860.ks"]