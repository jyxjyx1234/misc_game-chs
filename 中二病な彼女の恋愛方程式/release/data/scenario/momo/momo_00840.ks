[SCENESTART file=momo_00840.ks]
;//momo_00840
;//BG:病室

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]

;//TIME:昼
;//日付:なし
;//CH:竜一,sifuku
;//CH:もも,pajyama

;//暗転
[r]我入住伏木庄，和桃结为连理已经过去了几年的岁月。
[np]

[r]从学院毕业后，我们在住惯了的风见市租了间小公寓，开始新婚生活。
[np]

[r]我毕业时受到超市店长热情邀请，顺水推舟就留在那里工作……
[np]

[r]桃也以兼职身份在同一家超市工作。
[np]

[r]至于最重要的造人计划方面……
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
[CG cgno=39 sabunno=01]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「桃……！」
[np]

;//★＠ももと竜一の長女です
[playcv storage="momoka_momo_00840_001.ogg" name="women"]
[character name="women"]
【桃香】[r]「啊，妈妈！」
[np]

[r]快步跑到刚结束分娩，正在病床上支起身子的桃身边。
[np]

[CG cgno=39 sabunno=04]

[playcv storage="momo_momo_00840_001.ogg" name="momo"]
[character name="momo"]
【桃】[r]「真是的……你不用那么慌张也没关系的啦」
[np]

[r]大概我的表情太过凝重，桃露出了带着无奈的微笑。
[np]

[playcv storage="momo_momo_00840_002.ogg" name="momo"]
[character name="momo"]
【桃】[r]「而且，突然这么大声的话……会吓到这个孩子哦……？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊……真是抱歉」
[np]

[r]被桃抱在臂弯里的，是个如玉石般圆润娇小的婴儿。
[np]

[r]作为男孩来说体重稍轻的这个孩子，似乎出生时让桃费了不少劲。
[np]

[character name="ryuichi"]
【龙一】[r]「比桃香那时花的时间更长，所以有点担心……」
[np]

[CG cgno=39 sabunno=02]

[playcv storage="momo_momo_00840_003.ogg" name="momo"]
[character name="momo"]
【桃】[r]「是啊……不过说不定会因此长得更活泼健康呢」
[np]

[r]桃凝视着尚未睁眼的皱巴巴小脸，语气里充满期待地说道。
[np]

[CG cgno=39 sabunno=03]

[playcv storage="momo_momo_00840_004.ogg" name="momo"]
[character name="momo"]
【桃】[r]「快看，鼻子的形状和你一模一样……」
[np]

[character name="ryuichi"]
【龙一】[r]「是吗？要我说的话，倒是更像桃你……」
[np]

[CG cgno=39 sabunno=02]

[playcv storage="momo_momo_00840_005.ogg" name="momo"]
[character name="momo"]
【桃】[r]「要是桃香的鼻子，应该像我吧……啊不过桃香的话，眼睛部分像爸爸对吧？」
[np]

;//★＠
[playcv storage="momoka_momo_00840_002.ogg" name="women"]
[character name="women"]
【桃香】[r]「桃香…像爸爸吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「喂，别摆出那么嫌弃的表情」
[np]

;//★＠
[playcv storage="momoka_momo_00840_003.ogg" name="women"]
[character name="women"]
【桃香】[r]「可是…桃香是女孩子嘛……想和妈妈一样…长成可爱的脸蛋……」
[np]

[character name="ryuichi"]
【龙一】[r]「没问题的。桃香可是好好继承了爸爸妈妈的爱才出生的孩子啊……」
[np]

;//★＠
[playcv storage="momoka_momo_00840_004.ogg" name="women"]
[character name="women"]
【桃香】[r]「爱……？」
[np]

[playcv storage="momo_momo_00840_006.ogg" name="momo"]
[character name="momo"]
【桃】[r]「就是说爸爸妈妈最喜欢桃香的心意呀。所以是凝聚了我们所有优点的孩子哦」
[np]

[r]桃伸出一只手，温柔地抚摸着桃香的头。
[np]

[CG cgno=39 sabunno=04]

[playcv storage="momo_momo_00840_007.ogg" name="momo"]
[character name="momo"]
【桃】[r]「桃香也当上姐姐了呢……呵呵……」
[np]

[r]听到桃这句话，今年满三岁的长女眯起眼睛开心地笑了。
[np]

[character name="ryuichi"]
【龙一】[r]「话说回来，名字到底怎么定？」
[np]

[CG cgno=39 sabunno=01]

[playcv storage="momo_momo_00840_008.ogg" name="momo"]
[character name="momo"]
【桃】[r]「虽然爸爸和奶奶也给取过名字……不过反正要取的话还是想自己决定……」
[np]

[character name="ryuichi"]
【龙一】[r]「那果然还是叫桃太郎吧」
[np]

[playcv storage="momo_momo_00840_009.ogg" name="momo"]
[character name="momo"]
【桃】[r]「都说了那个绝对不行啦」
[np]

;//★＠
[playcv storage="momoka_momo_00840_005.ogg" name="women"]
[character name="women"]
【桃香】[r]「桃香也要吃吉备团子！」
[np]

[r]正当我们开着玩笑时桃香突然插话进来，惹得我俩相视而笑。
[np]

[CG cgno=39 sabunno=02]

[playcv storage="momo_momo_00840_010.ogg" name="momo"]
[character name="momo"]
【桃】[r]「这是第二个孩子……离约定的人数还差三个呢」
[np]

[character name="ryuichi"]
【龙一】[r]「这才完成五分之二啊……既要育儿又要工作，看来得加倍努力了」
[np]

[CG cgno=39 sabunno=04]

[playcv storage="momo_momo_00840_011.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呵呵……孩子爸要加油哦」
[np]

[r]就在这样交谈时……我忽然回想起当年还住在伏木庄时的往事。
[np]

[r]那时候，桃第一次说可能怀孕了……应该还是我们刚交往没多久的时候吧。
[np]

[CG cgno=39 sabunno=03]

[playcv storage="momo_momo_00840_012.ogg" name="momo"]
[character name="momo"]
【桃】[r]「……怎么了吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊，没什么……就是觉得桃现在越来越有妈妈的样子了」
[np]

[playcv storage="momo_momo_00840_013.ogg" name="momo"]
[character name="momo"]
【桃】[r]「是、是吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「从开始交往到现在都过去这么多年了……不过也是理所当然的」
[np]

[playcv storage="momo_momo_00840_014.ogg" name="momo"]
[character name="momo"]
【桃】[r]「……要这么说的话，前辈你……也完全变成爸爸的样子了哦……？」
[np]

[r]或许是想起当时的场景，桃……桃酱用前辈称呼我，露出甜甜的笑容。
[np]

[playcv storage="momo_momo_00840_015.ogg" name="momo"]
[character name="momo"]
【桃】[r]「从那时起就一直和前辈在一起……我从小就憧憬的梦想……正一个一个逐渐实现……」
[np]

[CG cgno=39 sabunno=01]

[playcv storage="momo_momo_00840_016.ogg" name="momo"]
[character name="momo"]
【桃】[r]「现在又能怀上第二个孩子……呵呵……」
[np]

[r]看着桃香，看着刚出生的婴儿……最后看向我的桃酱，温柔地羞涩一笑。
[np]

[CG cgno=39 sabunno=03]

[playcv storage="momo_momo_00840_017.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前辈……我现在真的好幸福……真的非常感谢你」
[np]

[character name="ryuichi"]
【龙一】[r]「怎、怎么突然说这个……」
[np]

[playcv storage="momo_momo_00840_018.ogg" name="momo"]
[character name="momo"]
【桃】[r]「不知为什么突然就想道谢……很奇怪吗？嘿嘿……」
[np]

[character name="ryuichi"]
【龙一】[r]「……不。我才是要谢谢你……桃酱」
[np]

[r]正因为和我在一起，桃酱的幸福和梦想才能一个个实现。
[np]

[r]而我也能从中感受到幸福。世上还有比这更令人喜悦的事吗？
[np]

[character name="ryuichi"]
【龙一】[r]「不过我们的约定才完成一半……还要再添三个家人才行」
[np]

[CG cgno=39 sabunno=03]

[playcv storage="momo_momo_00840_019.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呵呵，说的是呢……」
[np]

[r]凝视着怀中这第四个家人后，我将视线移向桃酱的脸庞。
[np]

[r]就像那天在心中立下的誓言。
[np]

[r]这份洋溢着幸福的笑容，今后也要永远——
[np]

[CG cgno=39 sabunno=04]

[playcv storage="momo_momo_00840_020.ogg" name="momo"]
[character name="momo"]
【桃】[r]「今后也请多多关照哦……♪」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=38]
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
[image storage="fin_momo.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[waitclick]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=3000]
[wt]

[wait time="2000"]

[jump storage="title.ks"]