[SCENESTART file=momo_00240.ks]
;//momo_00240
;//BG:bg08

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:夜
;//日付:7/12(日)
;//CH:主人公,sifuku
;//CH:もも,pajyama

[character name="ryuichi"]
【龙一】[r]「……好，没问题吧」
[np]

[r]晚饭后帮忙洗碗，或是和圣水一起看电视消磨时间之后…
[np]

[r]确认大家都回房后，享受男生专属的独浴时光。
[np]

[r]入住首日被睡迷糊的真珠星突袭过…但只要不搞错入浴时间，这里就不会发生意外。
[np]

;//暗転
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]从这个角度说，伏木庄最让我安心的空间或许就是这里了。
[np]

[r]边这么想着边冲洗掉洗发水的泡沫。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯～嗯～嗯～嗯嗯～哼哼～♪」
[np]
[fadeoutbgm time="1000"]
[r]哼着小曲坐在椅子上，准备开始冲洗身体——
[np]

;//\SE風呂場の扉が開く音
[playse buf=5 storage="sound/00290.ogg"]
[wait time="500"]

[playse buf=5 storage="sound/00320.ogg"]
[wait time="500"]

[playcv storage="momo_momo_00240_001.ogg" name="momo"]
[character name="momo"]
【桃】[r]「打…打扰了！！」
[np]

[r]哎…？
[np]

[playcv storage="momo_momo_00240_002.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前、前辈…我我我来帮您搓背了！！」
[np]

[r]这、这个声音是桃酱…？诶？桃酱！？
[np]

[playcv storage="momo_momo_00240_003.ogg" name="momo"]
[character name="momo"]
【桃】[r]「这、这样…这样…」
[np]

[character name="ryuichi"]
【龙一】[r]「等、等一下桃酱…诶？诶？」
[np]

[r]面对突发状况正不知所措的我，刚要转身的瞬间——
[np]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]
[SYSTEMMENU]

;//通常ＣＧ挿入
[CG cgno=38 sabunno=01]
[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[playcv storage="momo_momo_00240_004.ogg" name="momo"]
[character name="momo"]
【桃】[r]「失、失礼了！！」
[np]

[character name="ryuichi"]
【龙一】[r]「唔！！！？？」
[np]

[r]桃、桃酱那柔软的触感…布满了整个后背！！
[np]

[playcv storage="momo_momo_00240_005.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呜、呜呜呜～！！」
[np]

[r]等、等等！而且这个温度还有弹性…
[np]

[r]难、难道说…桃酱也没穿衣服吗！？
[np]

[playcv storage="momo_momo_00240_006.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前前前前辈…！有、有没有痒的地方！？」
[np]

[character name="ryuichi"]
【龙一】[r]「诶？啊、啊…！没、没事，没事…现在不是说这个的时候！」
[np]

[r]不会有错……紧贴在我背上的两团柔软物体……
[np]

[r]顶端那圆润凸起的触感正直接接触着肌肤…啊、碰到了……！
[np]

[playcv storage="momo_momo_00240_007.ogg" name="momo"]
[character name="momo"]
【桃】[r]「那、那、那么……我、我马上为您清洗！！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]从背后紧抱着我的桃酱，她手中握着的海绵……
[np]

[CG cgno=38 sabunno=05]

[playcv storage="momo_momo_00240_008.ogg" name="momo"]
[character name="momo"]
【桃】[r]「……嗯、嗯嗯……」
[np]

[r]战战兢兢地用温柔手法擦拭着我的胸膛。
[np]

[r]这、这样…与其说是在清洗，更像是被抚摸般令人浑身发痒……！
[np]

[playcv storage="momo_momo_00240_009.ogg" name="momo"]
[character name="momo"]
【桃】[r]「嗯嗯……嗯呀、嗯呀……」
[np]

[r]而且每当桃酱身体晃动时，后背都会传来弹力的压迫感……
[np]

[r]这、这样下去的话，我的下半身会燥热起来的啊啊啊啊啊！！！
[np]

[character name="ryuichi"]
【龙一】[r]「话说回来，桃酱！！为、为什么要做这种事……！？」
[np]

[CG cgno=38 sabunno=02]

[playcv storage="momo_momo_00240_010.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊……！？　那、那个、这是、那个……」
[np]

[playcv storage="momo_momo_00240_011.ogg" name="momo"]
[character name="momo"]
【桃】[r]「因、因为一直受前辈关照……那、那个、就是呢！　所以说……！」
[np]

[playcv storage="momo_momo_00240_012.ogg" name="momo"]
[character name="momo"]
【桃】[r]「这、这算是报恩……就、就是这样的感觉……！」
[np]

[r]报恩……我、我不记得做过值得做到这种程度的事啊……
[np]

[playcv storage="momo_momo_00240_013.ogg" name="momo"]
[character name="momo"]
【桃】[r]「那、那个……这样子可以吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊……嗯，可以的……」
[np]

[playcv storage="momo_momo_00240_014.ogg" name="momo"]
[character name="momo"]
【桃】[r]「这、这样啊……那我继续了……」
[np]

[r]从我的腋下伸出的桃酱双手，继续上下动作起来。
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]等、等等……！
[np]

[playcv storage="momo_momo_00240_015.ogg" name="momo"]
[character name="momo"]
【桃】[r]「嗯……嗯嗯……」
[np]

[r]桃酱难道没意识到吗……！？再、再这样往下移动的话，那双小手就要触碰到我的秘密花园了！！
[np]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱！前面已经够了，真的不用再继续了！！」
[np]

[CG cgno=38 sabunno=03]

[playcv storage="momo_momo_00240_016.ogg" name="momo"]
[character name="momo"]
【桃】[r]「诶……？」
[np]

[character name="ryuichi"]
【龙一】[r]「所以接下来能不能帮我洗背……背部啊！」
[np]

[r]如果是背部的话，各种意义上都比现在轻松得多！
[np]

[r]而且要洗背部的话自然能避免身体过度接触……这样就能隔绝这种不断刺激我世俗欲望的触感……
[np]

[playcv storage="momo_momo_00240_017.ogg" name="momo"]
[character name="momo"]
【桃】[r]「那、那个……背部……」
[np]

[playcv storage="momo_momo_00240_018.ogg" name="momo"]
[character name="momo"]
【桃】[r]「我、我以为……现在就是在洗背部呀……」
[np]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[playcv storage="momo_momo_00240_019.ogg" name="momo"]
[character name="momo"]
【桃】[r]「所、所以这个……刚才一直用海绵……然后背部的话……那个……」
[np]

;//小声
[playcv storage="momo_momo_00240_020.ogg" name="momo"]
[character name="momo"]
【桃】[r]「其、其实是用……我、我的……胸……」
[np]

[character name="ryuichi"]
【龙一】[r]「…………你刚刚说什么……？」
[np]

[CG cgno=38 sabunno=04]

[playcv storage="momo_momo_00240_021.ogg" name="momo"]
[character name="momo"]
【桃】[r]「就、就是说啊……！前辈的背部……是、是用我的这个胸部……在帮您清洗呀……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「呃！！？？」
[np]

[r]桃、桃酱，妳这个……！
[np]

[playcv storage="momo_momo_00240_022.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊、啊啊……果、果然不行对吧！？这种，这种根本算不上正经的搓澡嘛！？」
[np]

[character name="ryuichi"]
【龙一】[r]「不、不是……问题关键根本不在这里啊……！」
[np]

[playcv storage="momo_momo_00240_023.ogg" name="momo"]
[character name="momo"]
【桃】[r]「对、对不起！我、我会等长大些再重新努力的呜呜呜呜呜呜呜！！！！」
[np]

;//暗転
[char_erase name="momo"]
[CGHIDE]

[character name="ryuichi"]
【龙一】[r]「桃酱────────！！？」
[np]

[r]桃酱草草冲洗掉身上的泡沫后，便冲出了浴室……
[np]

[r]被独自留下的我……本想借着背上残留的触感，好好安抚早已昂首挺胸的兄弟……
[np]

[character name="ryuichi"]
【龙一】[r]「冷静……给我冷静下来……！」
[np]

[r]像苦行僧般反复默念咒语，总算是把欲望压制下去了。
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=37]
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

[jump storage="scenario/momo/momo_00250.ks"]