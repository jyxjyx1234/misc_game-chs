[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00730.txt]
;//supica_00730
;//BG:bg13_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku

[fadeinbgm storage="bgm/BGM10.ogg" time="500"]
[supica storage="B2_sifuku_L AB_11_L"]
[playcv storage="supica_supica_00730_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_11_FACE_sifuku"]
【真珠星】[r]「……呼……呼……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]自那之后，我们正好在屋顶上眺望流星群，持续了一个小时。
[np]

[r]说来也奇妙，当我们离开屋顶穿过校舍，走到校门口再次仰望天空时……
[np]

[r]视线尽头的夜空已恢复了往日的平静。
[np]

[r]此刻抬头望着照亮归途的明月，已经完全感受不到流星群的气息……
[np]

[r]甚至让人怀疑屋顶上看到的那番光景，会不会只是一场幻梦。
[np]

[character name="ryuichi"]
【龙一】[r]「……睡得真沉啊」
[np]

[r]离开校园穿过住宅区时……不知不觉间，真珠星已经在我背上发出安稳的鼾声。
[np]

[r]老实说从河滩开始就一直背着她，手臂和腰腿都快到极限了……但作为男友的职责，这时候就算咬牙也要保持帅气形象吧。
[np]

[r]一边这样告诫自己，一边小心调整姿势避免惊醒熟睡的真珠星……
[np]

[character name="ryuichi"]
【龙一】[r]「……咦……？」
[np]

[r]从背后感受到的真珠星体温里，隐约传来某种微妙的异样感。
[np]

[r]或许只是时间久了身体发凉……但还是……
[np]

[character name="ryuichi"]
【龙一】[r]「……诶？」
[np]

[r]靠在我肩上的真珠星的小脸。
[np]

[r]将额头贴上去……传来的体温令人难以置信，反反复复确认了好几遍。
[np]

[character name="ryuichi"]
【龙一】[r]「……退烧了……？」
[np]

[r]错不了……比起体温正常的我，如果真珠星体温偏高应该更烫才对……
[np]

[r]可是相触的额头温度，却和我的没什么两样。
[np]

[r]但是为什么……？在河滩会合时，真珠星明明还病恹恹的。
[np]

[r]现在看完流星群踏上归途时……烧退了，睡相也安稳了……
[np]

[character name="ryuichi"]
【龙一】[r]「……难道说……」
[np]

[r]真珠星说的那个「宇宙力量能治好感冒」的鬼话……？
[np]

[r]还是说……我对着流星许的「希望真珠星早日康复」的愿望……立刻成真了？
[np]

[character name="ryuichi"]
【龙一】[r]「……哈哈」
[np]

[r]……或许是因为刚刚才在屋顶亲眼见证过奇迹……连自己都惊讶于此刻竟能如此平静地笑出来。
[np]

[r]真珠星为何会退烧……这种理由什么的，根本无关紧要吧。
[np]

[r]现在只要……为真珠星身体状况正在好转这件事感到高兴……不就好了么。
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

;//JUMP:supica_00740
[jump storage="scenario/supica/supica_00740.ks"]
