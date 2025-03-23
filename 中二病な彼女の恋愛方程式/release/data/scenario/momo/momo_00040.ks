[SCENESTART file=momo_00040.ks]
;//momo_00040
;//BG:bg02_03(消灯)

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_04.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/2(木)
;//CH:竜一,pajyama

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]在深夜独自泡完澡后，我一边擦拭着湿漉漉的头发，一边回到牢笼中。
[np]

[r]结果……那个叫什么的来着……「白夜之月」？听说那个作战最终被判定为失败了。
[np]

[r]设定上是澪音前辈把整个午休时间都用来补觉恢复体力，然后对我们进行了反杀。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]几小时前还热闹非凡的客厅，此刻完全陷入黑暗与沉寂。
[np]

[r]虽然那个作战计划，是在晚饭后于此处展开的……
[np]

[r]当时明明有我在场，桃桃酱还是相当自然地犯起了中二病……
[np]

[r]回想起来，放学路上在爽史出现之前，我也一直配合着葵的节奏。
[np]

[r]这果然就像今早澪音前辈说的那样……
[np]

[r]可以理解为，她们对我的戒心正在逐渐解除……吗？
[np]

[r]当然，并不能百分百断定是这样。不过……
[np]

[r]或许真是这样，光是这么想着……嘴角就不自觉地放松下来。
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

[jump storage="scenario/momo/momo_00050.ks"]