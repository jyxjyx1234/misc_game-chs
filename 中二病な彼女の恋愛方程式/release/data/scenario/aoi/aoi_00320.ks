[SCENESTART file=aoi_00320.ks]
;//aoi_00320
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:夜
;//日付:7/14(火)
;//CH:竜一,pajyama
;//CH:葵,pajyama

[character name="ryuichi"]
【龙一】[r]「唉……真是的」
[np]

[r]也许是因为前几天意识到那件事的缘故……
[np]

[r]现在的我，来到这个房间和葵独处时，竟然会产生一种抗拒感。
[np]

[r]当然，这并不是因为讨厌和她待在一起……
[np]

[r]而是因为两人独处时，总觉得气氛难以维持下去。
[np]

[character name="ryuichi"]
【龙一】[r]「真是的……现在还在意这种事情有什么用！」
[np]

[r]我根本没必要配合葵的步调。葵是葵，我是我——
[np]

;//\SEドアを開く音
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[playse buf=5  storage="sound/00320.ogg"]
[wait time="1000"]
[fadeoutbgm time="1000"]

;//背景を葵の部屋bg03_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[aoi storage="A_pajyama_M A_7_M"]
[playcv storage="aoi_aoi_00320_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_pajyama"]
[char_jump name=aoi]
【葵】[r]「啊！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]刚才，从睡衣的缝隙中——
[np]

[aoi storage="B_pajyama_M B_8_M"]
[playcv storage="aoi_aoi_00320_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_pajyama"]
【葵】[r]「龙、龙一……！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起！我忘记敲门了……！」
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00320_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「那…你、你看到了…吗…？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「没、没有…正好葵你刚换完衣服，奇怪的东西什么的绝对没看到…」
[np]

[aoi storage="D_pajyama_M CD_9_M"]
[playcv storage="aoi_aoi_00320_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_pajyama"]
【葵】[r]「奇、奇怪的东西算什么意思…太失礼了…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……抱歉」
[np]

[r]虽然这种对话稍有不慎就可能演变成剑拔弩张的气氛……但即便如此，对我来说能对话反而更轻松。
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00320_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[r]总比让葵立刻进入沉默模式，变成这种尴尬的沉默空气要好得多。
[np]

[aoi storage="A_pajyama_M A_9_M"]
[playcv storage="aoi_aoi_00320_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_pajyama"]
【葵】[r]「好、好了…差不多该睡了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊，是啊」
[np]

[char_erase name="aoi"]

;//背景消灯
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]葵关掉电灯，房间瞬间陷入漆黑。
[np]

[r]虽然各自钻进被窝躺下了…说真的，完全没有睡意。
[np]

[r]而且最后也没找到机会问葵邀请我来她房间的真正原因…
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00320_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]在这种氛围下，我也没法主动开启那个话题……
[np]

[r]没办法……在睡意袭来前，还是闭目养神吧。
[np]

[r]…………。
[np]

[r]……。
[np]

;//時間経過
;//暗転
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="anten.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]…………。
[np]

[playcv storage="aoi_aoi_00320_008.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……っ……」
[np]
[FACEHIDE]

[r]…………。
[np]

[playcv storage="aoi_aoi_00320_009.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「あっ……ん……」
[np]
[FACEHIDE]

[r]……ん？
[np]

[playcv storage="aoi_aoi_00320_010.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「ん…………ふぁ……」
[np]
[FACEHIDE]

[r]声音……？是葵吗……？
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]迷迷糊糊睁开眼……这才发现自己不知何时竟睡着了。
[np]

[r]虽然看不见时间……但从氛围来看现在无疑是深夜时分。
[np]

[r]糟了，居然醒过来了……话说刚才葵的声音——
[np]

;//ＨＣＧ１挿入
[CG cgno=11 sabunno=03]
[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[playcv storage="aoi_aoi_00320_011.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯……啊、哈……」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]当这幅景象映入眼帘的瞬间——我慌忙把惊叫咽了回去。
[np]

[r]等、等等……这、这是……？
[np]

[playcv storage="aoi_aoi_00320_012.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯……哈啊、哈……嗯啊……」
[np]

[r]葵……你……！
[np]

[playcv storage="aoi_aoi_00320_013.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呜……哈啊、哈……嗯、嗯嗯……」
[np]

[r]月光下葵的举动让我难以置信地揉了揉眼睛。
[np]

[r]这应该就是……那个吧？自己抚慰自己，所谓的自慰……
[np]

[CG cgno=11 sabunno=02]

[playcv storage="aoi_aoi_00320_014.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……哈……嗯、嗯啊……」
[np]

[r]葵拼命压抑着声响，生怕把我吵醒。
[np]

[r]虽然隔着睡衣，但伸向胸口与股间的手指仍在刺激着葵的敏感部位……
[np]

[playcv storage="aoi_aoi_00320_015.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呜、啊……又、又这样……明明不可以的……」
[np]

[playcv storage="aoi_aoi_00320_016.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「明、明明龙一就在身边……我却……我……」
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]说又……难道不是第一次了……？
[np]

[r]对、对啊……葵也到了这个年纪……所以没什么……
[np]

[playcv storage="aoi_aoi_00320_017.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「又、又在做不该做的事……明明知道不可以的……」
[np]

[playcv storage="aoi_aoi_00320_018.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「太、太舒服了……手指停不下来啊……」
[np]

[r]心怀罪恶感却仍屈服于快感的葵……
[np]

[r]这么近在咫尺地看着她的模样……连我也……！
[np]

[CG cgno=11 sabunno=03]

[playcv storage="aoi_aoi_00320_019.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……！　啊、哈……」
[np]

[r]为了不被葵察觉，悄悄将右手探入她的内衣之中……
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]握住了自己早已发烫硬挺的部位。
[np]

[playcv storage="aoi_aoi_00320_020.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哈……哈、哈……」
[np]

[r]一边感受着葵的吐息拂过耳畔，一边开始缓缓移动右手，尽量不让她察觉。
[np]

[playcv storage="aoi_aoi_00320_021.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、嗯嗯……嗯啊、呜啊……哈、哈……」
[np]

[r]看着葵用纤细的手指忘我地刺激自己身体的场景……
[np]

[r]而且，居然能感受到如此程度的性兴奋……。
[np]

[playcv storage="aoi_aoi_00320_022.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哈、哈……哈……嗯、啊……」
[np]

[r]等等，怎么……手的动作逐渐减弱……难、难道已经要结束了……？
[np]

[r]不、不过，如果真是那样的话，倒也没关系……
[np]

;//胸露出差分
[CG cgno=11 sabunno=05]

[playcv storage="aoi_aoi_00320_023.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……！」
[np]

[character name="ryuichi"]
【龙一】[r]「！」
[np]

[r]竭力不发出声响，缓慢而谨慎地……通过将葵的睡衣褪至腰间……
[np]

[r]显露出那娇小的胸脯与可爱的内衣。
[np]

[playcv storage="aoi_aoi_00320_024.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哈、哈啊……哈……」
[np]

[r]就在我躺卧的身旁，她袒露着胸脯，内裤完全暴露的模样……
[np]

[r]仅凭这一点，葵那难以掩饰的紧张与兴奋已从她的表情中清晰可见。
[np]

[r]甚至仿佛能听见葵心脏剧烈跳动的声音……
[np]

[CG cgno=11 sabunno=04]

[playcv storage="aoi_aoi_00320_025.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呀……！」
[np]

[r]当直接掐住乳尖的瞬间，葵的身体猛地颤抖了一下。
[np]

[r]昨日因意外触碰到的葵的胸脯……
[np]

[r]此刻……正在月光映照下，近在咫尺……！
[np]

[playcv storage="aoi_aoi_00320_026.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「为、为什么……我、要这个样子……这副、模样……」
[np]

[playcv storage="aoi_aoi_00320_027.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「直接触碰什么的……明明之前、一次都没有过……」
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]也就是说……之前一直都是隔着睡衣的？
[np]

[playcv storage="aoi_aoi_00320_028.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、哈啊……！」
[np]

[r]用食指和拇指捏起自己小巧的乳头……葵漏出甜美的呻吟。
[np]

[playcv storage="aoi_aoi_00320_029.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呀、呀啊……这、这样的声音、要被听到了……龙一、会醒来的……」
[np]

[r]……要是被发现早就清醒的事实，绝对会引发大麻烦吧。
[np]

[r]但是根本停不下来……但在目睹葵自慰的情景后，右手的自制力完全失控……！
[np]

[CG cgno=11 sabunno=06]

[playcv storage="aoi_aoi_00320_030.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呼、啊、啊啊……这样、好舒服……直接、搓揉着……」
[np]

[playcv storage="aoi_aoi_00320_031.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「乳头被……玩弄的感觉、好棒……身体、变得好热……」
[np]

[r]即便只有月光照明，也能清楚看到葵涨红的脸颊。
[np]

[r]而且肌肤上渗出的薄汗……光是看着就能感受到她全身发烫。
[np]

[playcv storage="aoi_aoi_00320_032.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呀、啊啊……不行……内、内裤……要、要湿透了……」
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]听到这句话，将半睁的视线转向葵的下腹部……
[np]

[CG cgno=11 sabunno=07]

[r]果然，那里……在葵手指触碰的位置，明显浮现出一小块湿润的痕迹。
[np]

[playcv storage="aoi_aoi_00320_033.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「这样会弄脏的……得快点解决才行……」
[np]

[r]呃！？
[np]

;//パンツ脱ぎ差分
[CG cgno=11 sabunno=11]

[playcv storage="aoi_aoi_00320_034.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、嗯嗯……」
[np]

[r]……！！！
[np]

[playcv storage="aoi_aoi_00320_035.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……啊啊……」
[np]

[r]葵的手交叠着，虽然看不清楚……
[np]

[r]那、那个……那就是女孩子的……！！
[np]

[playcv storage="aoi_aoi_00320_036.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「我、我这是……为什么……明明龙一就在旁边……还这副模样……」
[np]

[playcv storage="aoi_aoi_00320_037.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「明明有可能会被龙一看到……可心里却扑通扑通跳个不停……」
[np]

[playcv storage="aoi_aoi_00320_038.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「甚至……甚至还想做更下流的事……满脑子都是这种念头……！」
[np]

[r]啊、葵……。
[np]

[CG cgno=11 sabunno=12]

[playcv storage="aoi_aoi_00320_039.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、哈啊啊啊！！」
[np]

[r]当一手指尖揉捏着乳头……另一手指深深陷入湿润花唇的瞬间，葵发出了一声高亢的呻吟。
[np]

[r]糟、糟糕——！
[np]

[CG cgno=11 sabunno=11]

[playcv storage="aoi_aoi_00320_040.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……」
[np]

[r]她自己也意识到声音太大了吧……以为我可能醒了，正朝这边张望。
[np]

[r]将眼皮撑开细缝观察葵的表情……好险，看来总算是没被发现。
[np]

[CG cgno=11 sabunno=12]

[playcv storage="aoi_aoi_00320_041.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、嗯嗯……哈、啊啊……这、这个、好厉害……」
[np]

[playcv storage="aoi_aoi_00320_042.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「直接触碰的话……我、我的身体……会变得好奇怪……！」
[np]

[r]渐渐…渐渐变得激烈的，是葵自我抚慰的手指动作。
[np]

[playcv storage="aoi_aoi_00320_043.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、哈啊…！啊、哈、哈啊…！」
[np]

[r]最初只是轻触胸部的掌心，此刻已激烈到改变乳房的形状…
[np]

[playcv storage="aoi_aoi_00320_044.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「咿呜！」
[np]

[r]指尖用力挤压着那粒挺立的乳尖。
[np]

[r]股间游移的手掌也驱使指尖激烈地上下动作…
[np]

[CG cgno=11 sabunno=13]

[playcv storage="aoi_aoi_00320_045.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊、啊啊…啊、哈啊、嗯、嗯嗯…！」
[np]

[r]不知不觉间已发出噗啾噗啾的淫靡水声。
[np]

[playcv storage="aoi_aoi_00320_046.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯、啊啊…哈、啊啊…已、已经停不下来了…」
[np]

[playcv storage="aoi_aoi_00320_047.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「手指、这么激烈…那里都、发出羞耻的声音…嗯、哈啊…！」
[np]

[character name="ryuichi"]
【龙一】[r]「…！！」
[np]

[r]面对如此淫靡的光景，我的性器已在掌心膨胀到无法完全包裹的程度。
[np]

[r]明明已经硬成这样……恨不得能忘我地撸动……！
[np]

[playcv storage="aoi_aoi_00320_048.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哈、哈啊……！嗯、啊、哈啊……呀啊！」
[np]

[r]说什么只能轻轻抚摸……这也太折磨人了！
[np]

[CG cgno=11 sabunno=12]

[playcv storage="aoi_aoi_00320_049.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……不、不行……好像、好像要变得不对劲了……！」
[np]

[playcv storage="aoi_aoi_00320_050.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「会、会变得奇怪……！再继续的话、啊、啊啊……！」
[np]

[r]葵的腰肢微微抬起，娇小的身躯开始微微抽搐。
[np]

[r]难道说……快高潮了？
[np]

[playcv storage="aoi_aoi_00320_051.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊、啊啊……不行了、要、要不行了……！快停下、快停下……啊、啊啊……！」
[np]

[playcv storage="aoi_aoi_00320_052.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「再这么激烈的话……会被发现的、真的会被发现的啊……！！」
[np]

[playcv storage="aoi_aoi_00320_053.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊、呀、呀啊……！停下、快停下……！嗯、唔、呜……」
[np]

[playcv storage="aoi_aoi_00320_054.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……！！！」
[np]

[r]葵蜷缩成一团，紧紧闭上双眼。
[np]

[r]高潮了吗……？可是看起来完全不像啊……
[np]

[CG cgno=11 sabunno=11]

[playcv storage="aoi_aoi_00320_055.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……呜、一……」
[np]

[character name="ryuichi"]
【龙一】[r]「——」
[np]

[r]当名字被呼唤的瞬间，我产生了被发现的错觉，心脏仿佛被冻结的感觉笼罩全身。
[np]

[r]然而仔细看去，葵的视线并没有聚焦在我身上，而是恍惚地望着虚空——
[np]

[playcv storage="aoi_aoi_00320_056.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「龙一……我怎么会变成这样……」
[np]

[playcv storage="aoi_aoi_00320_057.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「这份心意……一直……一直，都这么痛苦……究竟该怎么办……」
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[playcv storage="aoi_aoi_00320_058.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「只要想到龙一……身体就会发烫……变得好奇怪……」
[np]

[playcv storage="aoi_aoi_00320_059.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「总是……一个人做这么下流的事……都怪你……龙一……」
[np]

[CG cgno=11 sabunno=12]

[playcv storage="aoi_aoi_00320_060.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「全部……全都是你的错……嗯、嗯啊……啊、哈啊……！！」
[np]

[playcv storage="aoi_aoi_00320_061.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊啊……！啊、嗯、哈啊！呀、啊、啊啊啊啊啊——」
[np]

[playcv storage="aoi_aoi_00320_062.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯嗯嗯嗯嗯嗯嗯！！！」
[np]

[r]全身痉挛地咬着嘴唇，似乎达到高潮的葵。
[np]

[CG cgno=11 sabunno=13]

[playcv storage="aoi_aoi_00320_063.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哈……哈啊……哈……哈……」
[np]

[r]她一边吐出紊乱的喘息，只是茫然凝视着虚空。
[np]

[r]……将这一切尽收眼底的我——
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[character name="ryuichi"]
【龙一】[r]「……嗯、嗯嗯……」
[np]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[playcv storage="aoi_aoi_00320_064.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_pajyama"]
【葵】[r]「！？」
[np]
[FACEHIDE]

[r]故意动了动身子，确认葵用毛巾被遮掩住身体后……
[np]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]假装起床上厕所……来到了洗手间。
[np]

[character name="ryuichi"]
【龙一】[r]「……真的假的」
[np]

[r]没想到会以这种方式……以这样的形式，察觉到葵的心意……
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]从明天开始，该用什么表情面对葵呢……？
[np]

[r]更重要的是，在知晓葵心意的此刻……难道不应该重新考虑吗？
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]从正面直勾勾地凝视着镜中映出的自己脸庞。
[np]

[r]喂……对吧？
[np]

[r]你啊……到底对葵是怎么想的……？
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

;//JUMP:aoi_00330
[jump storage="scenario/aoi/aoi_00330.ks"]