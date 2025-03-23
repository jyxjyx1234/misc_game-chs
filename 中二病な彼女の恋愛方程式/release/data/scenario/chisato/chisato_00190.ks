[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00190.txt]
;//chisato_00190
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/11(土)
;//CH:竜一,pajyama
;//CH:千聖,pajyama

[fadeinbgm storage="bgm/BGM10.ogg" time="500"]

[chisato storage="D_pajyama_M CD2_3_M"]
[playcv storage="chisato_chisato_00190_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_pajyama"]
【千圣】[r]「那，晚安」
[np]
[FACEHIDE]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「啊，晚安」
[np]

[r]与刚洗完澡的绫濑互道晚安后，我装作若无其事地注视着她走上楼梯的身影。
[np]

;//\SEドアが閉まる音
[r]然后，在门关上的那一刻……我将视线投向手中的手机。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]时间已接近午夜时分。
[np]

[r]都怪昨晚熬夜那么晚，到了这个时间还毫无睡意，真是麻烦……
[np]

[r]……不过，或许正好适合用来东想西想。
[np]

[character name="ryuichi"]
【龙一】[r]「……在意的人……」
[np]

[r]虽然用了这种含糊的说法……但说到底，就是喜欢的人吧。
[np]

[r]最近……真的是最近才开始的，偶尔会在不经意间想起那个孩子的面容……
[np]

[r]不过或许……共享着那个秘密这件事，才是最主要的原因吧……
[np]

[r]光是这点……不可能让我如此心绪不宁吧……
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]已经毫无疑问了。我心中深藏的这份感情，无疑就是对对方的恋慕之情……
[np]

[r]……而一旦清楚地认识到这点……从明天开始，能否像往常一样相处……还真是个重要的问题啊。
[np]

[character name="ryuichi"]
【龙一】[r]「……睡吧」
[np]

[r]基本上我不擅长认真思考问题，所以这种脑内会议持续不了几分钟。
[np]

[r]虽然依旧没有睡意，但躺下的话或许能稍微……
[np]

;//消灯
[r]一边这么想着，我关掉了已空无一人的客厅的灯……躺进被窝闭上了眼睛。
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


;//JUMP:chisato_00200
[jump storage="scenario/chisato/chisato_00200.ks"]

