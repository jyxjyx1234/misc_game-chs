[SCENESTART file=momo_00250.ks]
;//momo_00250
;//BG:bg02_03(消灯)

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:夜
;//日付:7/12(日)
;//CH:竜一,pajyama

[r]我走出浴室，擦干头发换上睡衣……
[np]

[character name="ryuichi"]
【龙一】[r]「……真的，到底怎么回事……」
[np]

[r]刚倒在自己的被褥上，满脑子就被问号填满了。
[np]

[r]这究竟是怎么回事？
[np]

[r]就这两天，桃酱对我的态度发生转变这件事……最切身感受到的莫过于我自己。
[np]

[r]最要命的是刚才在浴室发生的意外……
[np]

[r]虽说被可爱的女孩子帮忙搓背，纯粹是件值得开心的事……
[np]

[r]但说实话，桃酱突然做出那么大胆的举动……确实让我有一半是手足无措。
[np]

[r]难道是因为之前躲着我的事感到愧疚……所以用这种温柔的方式补偿吗？
[np]

[r]但就算是温柔也该有个限度吧……刚才那件事就是最好的例子。
[np]

[character name="ryuichi"]
【龙一】[r]「……可是啊……」
[np]

[r]对于桃酱这样的举动……其实我内心并不全然排斥。
[np]

[r]桃酱是个可爱的后辈，性格温柔厨艺又好，就像之前感受到的那样，完全是个理想的新娘人选……
[np]

[r]再加上她这个年纪就拥有如此犯规的魔鬼身材……该怎么说呢，实在是个无可挑剔的迷人女孩……
[np]

[character name="ryuichi"]
【龙一】[r]「……啊……」
[np]

[r]说起来今天在超市打工时……真珠星问起我喜欢的人，第一个浮现在脑海的确实是桃酱。
[np]

[r]结果现在想着桃酱的事……整个人都莫名躁动起来……
[np]

[r]不、不对……这一定是因为刚才发生了那种……赤裸相对的意外接触，毕竟这种状况实在是前所未有……
[np]

[r]……对吧？仅仅只是这样而已……应该是这样的……可是……
[np]

[character name="ryuichi"]
【龙一】[r]「……难道说，我……」
[np]

[r]我对于桃酱……究竟……
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

[jump storage="scenario/momo/momo_00260.ks"]