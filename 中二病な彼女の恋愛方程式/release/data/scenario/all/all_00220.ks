[SCENESTART file=all_00220.ks]
;//all_00220
;//BG:bg14_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg14_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]
[SYSTEMMENU]

;//TIME:夕
;//日付:6/21(日)
;//CH:竜一,sifuku

[character name="ryuichi"]
【龙一】[r]「……呼」
[np]

[r]自从我来到风见市，到今天正好满一周了。
[np]

[r]和上周初次抵达宿舍时一样，我正发着呆眺望被落日余晖染红的河滩景色。
[np]

[r]说长不长说短不短的一周…今天就要决定所有事情了吗？
[np]

[r]虽然用「所有」这种说法可能有点夸张…
[np]

[r]但至少…关于今后还能不能继续住在那个宿舍，今天就会做出最终决定了。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]明知道该怎么样就怎么样，但还是静不下心来…
[np]

[r]如果真的要被赶出去的话…我的下一个住处已经找好了吗？
[np]

[r]虽然越想越不安…但事到如今也做不了什么了。
[np]

[character name="ryuichi"]
【龙一】[r]「……好，回去吧！」
[np]

[r]只能用船到桥头自然直的精神来接受结果了！
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

;;//JUMP:all_00230
[jump storage="scenario/all/all_00230.ks"]