[SCENESTART file=bad_00030.txt]
;//bad_00030
;//BG:bg02_01


;//TIME:昼
;//日付:8/1(土)
;//CH:竜一,sifuku
;//CH:聖水,sifuku

[r]不行不行不行！
[np]

[r]说到底，就算不考虑被赶出宿舍的问题，偷窥也是不对的……！
[np]

[character name="ryuichi"]
【龙一】[r]「好、好吧……！没有屈服于一时的欲望，表现得很好……！我真棒！」
[np]

[r]或许是因为陷入了极度紧张的状态，脚步自然变得踉踉跄跄，就这么回到了桌边。
[np]

[r]虽然也考虑过敲门让圣水小姐察觉的策略……但她现在这么投入的话，总觉得有点过意不去。
[np]

[r]拜托她整理房间这件事……还是下次再说吧……
[np]

;//小声
;//ドア越し
[playcv storage="satomi_bad_00030_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_8_FACE_sifuku"]
【圣水】[r]「呜、呜哇……！嗯、嗯啊、哈啊……！啊、啊啊……！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]……因为门开着，细微的声音断断续续传进来。这精神状态绝对会出问题吧。
[np]

[r]好、好的。不如边听音乐边写暑假作业吧！这主意太天才了！
[np]

[character name="ryuichi"]
【龙一】[r]「呃……先做哪科好呢……」
[np]

[r]按现在这个状态，比起需要动脑的科目，操作性强的作业应该更容易集中……比如地理之类的……
[np]

[character name="ryuichi"]
【龙一】[r]「……咦……？」
[np]

[r]习题卷在，课本也在……但文科类作业必备的资料册却不见踪影。
[np]

[character name="ryuichi"]
【龙一】[r]「喂喂，开玩笑吧……？」
[np]

[r]在书桌囚笼里翻遍书包，把物品挨个检查……遗憾的是一无所获。
[np]

[character name="ryuichi"]
【龙一】[r]「……难道落在学校了……？」
[np]

[r]靠……去拿也太麻烦了吧……但葵和桃酱都出门了，绫濑又在打工……
[np]

[r]前辈和真珠星是不同年级的啊……只能自己去拿了吧……
[np]

[character name="ryuichi"]
【龙一】[r]「唉……」
[np]

[r]咒骂着让过去的自己在这鬼天气里必须外出的罪孽，我换上校服走出了玄关。
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

;//JUMP:bad_00040
[jump storage="scenario/bad/bad_00040.ks"]
