[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00720.txt]
;//supica_00720
;//BG:bg12_03
;//TIME:夜
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「呃……！哈啊！哈、哈啊、哈啊……！」
[np]

[r]背负着一个女生全力冲刺，还要冲上楼梯……
[np]

[r]在抵达目的地屋顶的瞬间，我拼命支撑住几乎要瘫软在地的双膝，同时深深吸了一口气让肺部充满空气。
[np]

[HIDESYSTEMMENU]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[CG cgno=23 sabunno=01]
[SYSTEMMENU]

[playcv storage="supica_supica_00720_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一……辛苦你了」
[np]

[character name="ryuichi"]
【龙一】[r]「哦、哦哦……！交给我吧……！那、赶上了吗……？」
[np]

[playcv storage="supica_supica_00720_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯，没问题……时间刚刚好……」
[np]

[r]掏出手机确认时间，指针正好划过十点整。
[np]

[playcv storage="supica_supica_00720_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一，累了吗……？真珠星，要下来吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「不用……就这样吧。稍微高点的话，真珠星也会更开心吧？」
[np]

[playcv storage="supica_supica_00720_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……」
[np]

[r]第一次约会去海边时……她也为了能更高些，闹着要骑在我肩头的往事突然浮现在脑海。
[np]

[r]于是我就这样背着真珠星继续前行……
[np]

;//通常ＣＧ０２、背景に流星のない差分があるようでしたらここで挿入

[character name="ryuichi"]
【龙一】[r]「这里……应该没问题吧……」
[np]

[r]在屋顶中央停下脚步，抬头望向夜空。
[np]

[character name="ryuichi"]
【龙一】[r]「接下来……只要等着就行了吧？」
[np]

[playcv storage="supica_supica_00720_005.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯，这样就够了……」
[np]

[r]在背上感受到真珠星点头的同时，我再次凝望夜空。
[np]

[r]无论是星辰的位置，还是皮肤感受到的温热夜风，都与上周来时别无二致。
[np]

[r]但云层比那时少了许多……晴朗夜空中闪烁的繁星，仿佛比往日更添几分璀璨。
[np]

[r]……好安静。
[np]

[r]与真珠星两人静静等待流星群降临……这仰观星象的时光，竟不可思议地令人心安。
[np]

[r]方才躁动的心跳声，此刻也渐渐平复下来……
[np]

[CG cgno=23 sabunno=01]

[r]此刻唯有从背后传来的，真珠星的体温——
[np]

[playcv storage="supica_supica_00720_006.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「啊……」
[np]

[character name="ryuichi"]
【龙一】[r]「看到了吗？」
[np]

[r]听到真珠星的声音，我也重新将意识投向夜空。于是——
[np]

;//通常ＣＧ０２、背景に最初から流星が表示されていたらここで挿入
[CG cgno=23 sabunno=02]


[character name="ryuichi"]
【龙一】[r]「啊——」
[np]

[r]在熟悉的夜空中，一道璀璨的光轨正不断延伸。
[np]

[r]本以为转瞬即逝的光痕，却在不同方位接二连三地开始流淌……
[np]

[character name="ryuichi"]
【龙一】[r]「……好厉害……」
[np]

[r]在我们头顶，无数光辉正竞相绽放。
[np]

[playcv storage="supica_supica_00720_007.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……啊……！」
[np]

[character name="ryuichi"]
【龙一】[r]「太厉害了真珠星……流星群原来能看得这么壮观吗……？我还以为会更不起眼——」
[np]

[CG cgno=23 sabunno=03]

[fadeinbgm storage="bgm/BGM15.ogg" time="500"]

[playcv storage="supica_supica_00720_008.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「不是的……这样的……真珠星也是第一次看到……」
[np]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[playcv storage="supica_supica_00720_009.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「如果是英仙座流星群的话……十分钟能看到几颗就算幸运了……所以……」
[np]

[playcv storage="supica_supica_00720_010.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「原本想着……只要看过几次……就到此为止的……可是……」
[np]

[r]这已经远远不是十分钟能看到几颗的程度了……
[np]

[r]此刻我们头顶正有数之不尽的流星群倾泻而下……
[np]

[playcv storage="supica_supica_00720_011.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……这样的景象……简直像是奇迹……」
[np]

[CG cgno=23 sabunno=04]


[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]当真珠星如此低语的瞬间……我感觉到温热的泪珠滴落在了肩头。
[np]

[playcv storage="supica_supica_00720_012.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一，好厉害……我们真珠星……现在……」
[np]

[r]两个人一起……将奇迹烙印在眼中……就是这么回事吧……
[np]

[CG cgno=23 sabunno=05]


[playcv storage="supica_supica_00720_013.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「好厉害……好厉害好厉害……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「喂喂，别兴奋过头掉下去了……？」
[np]

[r]真珠星在我背上欢欣雀跃，简直像个天真无邪的孩子。
[np]

[r]连那个真珠星都如此激动……说明眼前正在发生着超乎想象的奇迹吧。
[np]

[playcv storage="supica_supica_00720_014.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一……谢谢你……」
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[CG cgno=23 sabunno=06]


[playcv storage="supica_supica_00720_015.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……谢谢你愿意陪我一起来……」
[np]

[character name="ryuichi"]
【龙一】[r]「……不用客气」
[np]

[CG cgno=23 sabunno=07]

[r]在我背上哽咽着声音流泪的真珠星，此刻一定是在笑着的。
[np]

[r]即使不回头确认也能明白。不知为何，我就是如此确信。
[np]

[character name="ryuichi"]
【龙一】[r]「我才要……谢谢你啊，真珠星……让我看到这么美丽的光景……」
[np]



[CG cgno=23 sabunno=08]
[playcv storage="supica_supica_00720_016.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……真珠星什么都没做……只是……想和龙一……一起看看而已……」
[np]

[character name="ryuichi"]
【龙一】[r]「但……也许正是这份强烈的心意，才引发了这场奇迹吧」
[np]

[playcv storage="supica_supica_00720_017.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「哎……？」
[np]

[character name="ryuichi"]
【龙一】[r]「毕竟真珠星可是来自宇宙的观测者啊……」
[np]

[CG cgno=23 sabunno=09]


[playcv storage="supica_supica_00720_018.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……噗嗤……」
[np]

[r]流星雨……也就是人们常说的流星吗……。
[np]

[r]对了，许愿……常听人说这个方法呢。据说在流星消失前默念三次，愿望就能实现……
[np]

[r]既然有这么多流星划过，总有一个能听见我的心愿吧。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]希望真珠星的身体……哪怕能早一点好转也好……。
[np]


;//■回想シーンの戻し処理 該当のフラグ番号を入れる
[SCENEFLG no=22]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

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
[CGHIDE]
;//JUMP:supica_00730
[jump storage="scenario/supica/supica_00730.ks"]
