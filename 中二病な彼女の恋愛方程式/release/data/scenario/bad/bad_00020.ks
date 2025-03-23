[SCENESTART file=bad_00020.txt]
;//bad_00020
;//BG:bg02_01

;//TIME:昼
;//日付:8/1(土)
;//CH:竜一,sifuku
;//CH:聖水,sifuku

;//ＨＣＧ０１挿入
[SYSTEMMENU]
[CG cgno=84 sabunno=01]

[playcv storage="satomi_bad_00020_001.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、啊、啊啊……！哈啊、嗯、嗯嗯嗯……！！！」
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「！！！！！？？？？」
[np]

[r]不、等等、这个……！等等等等等等！不行不行！各种意义上都不行！！
[np]

[r]总、总之先冷静下来我！！来，深呼吸！
[np]

[character name="ryuichi"]
【龙一】[r]「嘶——……哈啊——……嘶——……哈啊——……！」
[np]

[r]现、现在我看到的，确切看到的……毫无疑问是圣水小姐的……
[np]

[r]那、那个……自慰，这种行为……！
[np]

;//ドア越し
[playcv storage="satomi_bad_00020_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_8_FACE_sifuku"]
【圣水】[r]「哈啊……啊、嗯、嗯嗯……！哈啊、啊啊……嗯、嗯啊啊啊……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]圣水小姐！因为门没关紧，声音都漏出来了啊！！
[np]

[r]做这种事情的时候，要好好关门啊！记得上锁啊……！
[np]

[r]怎、怎么办啊我……！？总之当作没看见从记忆里删除比较好吗……？
[np]

[r]……但是……
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]刚才惊鸿一瞥看到的…圣水小姐激烈自慰的模样……
[np]

[r]再加上此刻仍在不断传来的喘息声……
[np]

[r]听着那些声音……我的胯下之物在激烈地自我主张……！
[np]

[character name="ryuichi"]
【龙一】[r]（怎么办、我该怎么办……！）
[np]

[r]说实话、好想再次确认刚才看到的画面……烙印在视网膜上、作为今晚的配菜……！
[np]

[r]可是、要是偷看的事暴露了……
[np]

[r]最坏情况下、好不容易获得的宿舍居住权可能被剥夺、甚至被赶出去……这种可能性也不是完全没有吧……
[np]

[r]……怎么办……？是冒着风险遵从欲望、还是选择自保……！是放手一搏还是按兵不动！
[np]

;//選択肢
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=放手一搏……！ jump target="*select1"]
	[select_button text=不、不行吧！ jump target="*select2"]
[select_end]

;//勝負に出る！　を選んだ場合
*select1
[eval exp="f.SelectFlg=0"]
[eval exp="f.SelectBad00020_0=0"]
[jump target="*selectA"]
*selectA

[r]从刚才的情况判断，圣水小姐相当投入……所以应该不会轻易察觉！
[np]

[r]所以没问题、绝对没问题……！
[np]

[r]像念咒般反复自我暗示后，我再次将脸贴近门缝——
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

;//ＨＣＧ０１挿入
[CG cgno=84 sabunno=01]
[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[playcv storage="satomi_bad_00020_003.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯嗯……！啊、哈啊、啊啊……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]将圣水小姐的淫靡之举尽收眼底。
[np]

[playcv storage="satomi_bad_00020_004.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈、啊啊……！嗯、嗯嗯……果然、这个……！好舒服、好舒服……！」
[np]

[r]圣、圣水小姐……那个、是振动棒对吧……？
[np]

[r]圣水小姐的私处正贪婪吞吐着那般粗大的物件……呜哇、太色了……！！
[np]

[CG cgno=84 sabunno=02]

[playcv storage="satomi_bad_00020_005.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯啊、啊、啊啊啊……！！这个、顶到、最深处了……！嗯、嗯嗯嗯……！！」
[np]

[playcv storage="satomi_bad_00020_006.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「蜜穴的、最深之处、被顶到了……！啊啊、好棒、比之前的、更棒……！！」
[np]

[r]之、之前的、难道说……也就是说、这不是她第一次……
[np]

[r]定期就会、做这种事……难、难道一直都是自己一个人在做……？
[np]

[CG cgno=84 sabunno=01]

[playcv storage="satomi_bad_00020_007.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、呜……！哈、啊、啊啊……！乳、乳头都勃起了……！」
[np]

[playcv storage="satomi_bad_00020_008.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「硬邦邦地、直挺挺地立着……！这边也、好舒服啊……！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]之前隔着衣服才能看到的圣水小姐的胸脯……此刻正完全暴露着……
[np]

[CG cgno=84 sabunno=02]

[playcv storage="satomi_bad_00020_009.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「呀啊、啊、啊啊……！嗯、哈啊、嗯啊啊……！啊、啊啊、嗯、嗯嗯……！！」
[np]

[r]果然、好大……！绝对是这座伏木庄里最大的……！
[np]

[playcv storage="satomi_bad_00020_010.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯嗯……！就是这个、就是这个感觉……！一边玩弄乳头一边……啊、啊啊……！」
[np]

[playcv storage="satomi_bad_00020_011.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「用振动棒把小穴里搅得乱七八糟……！搅得乱七八糟的感觉最棒了！！！」
[np]

[r]用自己的手激烈抽插着振动棒……在这个距离都能听见咕啾咕啾的水声……
[np]

[r]爱液不断涌出……不仅是柔软的大腿和臀部，连床单都变得湿漉漉的……！
[np]

[playcv storage="satomi_bad_00020_012.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「咿呀啊啊啊！！呜、嗯啊、啊啊……！！哈啊、好、好舒服……！」
[np]

[r]被这么激烈地……揉到胸部都变形了……还用指尖挑逗乳头……
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]啊啊……已经、无法忍耐了……我也要自己……！
[np]

[CG cgno=84 sabunno=03]

[playcv storage="satomi_bad_00020_013.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊啊！小穴！小穴好舒服啊！！摩擦着！里面！在里面摩擦啊！！」
[np]

[character name="ryuichi"]
【龙一】[r]「唔……！」
[np]

[r]回过神时，我已用右手攥紧勃起的肉棒……
[np]

[playcv storage="satomi_bad_00020_014.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「咿呜呜……！哇、啊、哈啊……！嗯、嗯嗯！咿呀啊……！啊、啊啊……！！」
[np]

[r]连偷窥的背德感都化作了兴奋，开始用圣水小姐自慰的现场当作素材撸动。
[np]

[playcv storage="satomi_bad_00020_015.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊……哈啊……嗯、嗯嗯……！哈、哈啊……哈、哈啊……」
[np]

[r]等等、那个……？
[np]

[playcv storage="satomi_bad_00020_016.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈啊……哈、嗯、哈……哈啊……」
[np]

[r]怎么、圣水小姐的动作渐渐变慢……难、难道已经结束了！？
[np]

[r]怎么会！明明正到兴头上呢！！（我）
[np]

[CG cgno=84 sabunno=01]

[playcv storage="satomi_bad_00020_017.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「果然……光是这样还不够……嗯、嗯嗯……」
[np]

[r]嗯……？
[np]

[playcv storage="satomi_bad_00020_018.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「不够满足呢……嗯、嗯啊……啊……」
[np]

[r]这么说着，圣水小姐将手中的振动棒缓缓推进深处——
[np]

[CG cgno=84 sabunno=02]

[playcv storage="satomi_bad_00020_019.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯噫啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「！！？」
[np]

[r]难、难道打开开关了吗……！？
[np]

[CG cgno=84 sabunno=03]

[playcv storage="satomi_bad_00020_020.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯哈啊啊啊啊啊啊啊！！？　啊、啊啊啊啊啊！！　这、这个！太、太强了啊啊啊啊啊啊啊！！！」
[np]

[playcv storage="satomi_bad_00020_021.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊啊啊！不行、不行啊啊啊！！！这、这种东西！马上要去了！真的要去啦啊啊啊啊啊！！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]那剧烈的喘息声甚至被振动声所掩盖……强烈的震动让爱液不断飞溅到周围……！
[np]

[playcv storage="satomi_bad_00020_022.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「咿呀啊啊啊啊啊啊啊！！要去了！！要去了！！！要去了啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[r]圣水小姐失控的样子也、也太夸张了……！！
[np]

[playcv storage="satomi_bad_00020_023.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「呀啊啊啊！啊、嗯、嗯啊啊啊啊啊啊啊！！！哈啊、啊、啊——————！！」
[np]

[playcv storage="satomi_bad_00020_024.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「这个啊啊啊！真的不行了啊啊啊！！要去了！要去了啊啊啊！！要——」
[np]

[playcv storage="satomi_bad_00020_025.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「要去了啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="flash_1.png" left=0 top=0 layer=9 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[wait time="700"]

[CG cgno=84 sabunno=04]

[backlay]
[freeimage layer=1 page=back]
[image storage="flash_1.png" left=0 top=0 layer=9 page=back visible=false]
[trans method=crossfade time=500]
[wt]

[wait time="500"]
[SYSTEMMENU]

[r]伴随着这声高亢的尖叫，爱液噗嗤一声喷涌而出……
[np]

[CG cgno=84 sabunno=05]

[playcv storage="satomi_bad_00020_026.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯啊、啊、啊啊啊！！呜、嗯嗯……！呼啊……！嗯、哈啊……啊啊、啊……！」
[np]

[r]圣水小姐脚趾紧绷着剧烈后仰，腰部悬空着达到了高潮。
[np]

[playcv storage="satomi_bad_00020_027.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈……哈啊……哈啊……嗯、嗯啊……哈啊……哈……」
[np]

[r]宛如电流通过般，那双大腿阵阵抽搐颤抖着……
[np]

[CG cgno=84 sabunno=06]

[playcv storage="satomi_bad_00020_028.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯啊啊……！」
[np]

[r]完成使命的振动棒持续震动着，从圣水小姐的阴道内滑落出来。
[np]

[playcv storage="satomi_bad_00020_029.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯啊……哈啊……哈、哈啊……呼啊……哈啊……」
[np]

[r]充满整个房间的浓郁女性体香……此刻正不断飘向我的位置……
[np]

[character name="ryuichi"]
【龙一】[r]（我也要射了啊！！）
[np]

[r]说实话现在只要再撸一下就能发射了，但总不能在这种地方射出来吧……！
[np]

[r]开始打手枪时根本没空想那些……现在才意识到这点，神原龙一你何等愚蠢！
[np]

[r]怎、怎么办我啊，总之先用手掌接住……啊糟、要射了——
[np]

;//\SE物音
[playse buf=5 storage="sound/00130.ogg"]
[quake time="500"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「哇啊！？」
[np]

[CG cgno=84 sabunno=07]

[playcv storage="satomi_bad_00020_030.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「诶……？」
[np]

[r]！！！！！
[np]

[playcv storage="satomi_bad_00020_031.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯……咦，龙一君……？」
[np]

[r]完蛋了啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！
[np]

[r]正当我摆好架势准备全力射精时，突然失去平衡撞上了门板……！！
[np]

[playcv storage="satomi_bad_00020_032.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哎……我、我是不是忘记锁门了……？哈啊……哈……」
[np]

[playcv storage="satomi_bad_00020_033.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「我说，龙一君……呵呵，手里紧紧握着什么呀～……？」
[np]

[character name="ryuichi"]
【龙一】[r]「呃！那、那个……这是……！！」
[np]

[CG cgno=84 sabunno=08]

[playcv storage="satomi_bad_00020_034.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「难道说……你和我一样……？龙一君也在自慰吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「不、不是的……」
[np]

[r]这种说话方式……偷看时还没察觉，圣水小姐醉得相当厉害……？
[np]

[playcv storage="satomi_bad_00020_035.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯呵呵～……难不成把我当作施法素材了～？」
[np]

[character name="ryuichi"]
【龙一】[r]「那、那是……」
[np]

[playcv storage="satomi_bad_00020_036.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊，那这样好了～我突然想到个好主意！」
[np]

[character name="ryuichi"]
【龙一】[r]「好、好主意……？」
[np]

[r]圣水小姐说的好主意，通常都是些天马行空的——
[np]

[playcv storage="satomi_bad_00020_037.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「比起各自自慰……一起做Ｈ的事不是更好吗？」
[np]

[r]看吧，果然不按常理出牌……咦？
[np]

[character name="ryuichi"]
【龙一】[r]「哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎哎！！！？？」
[np]

[playcv storage="satomi_bad_00020_038.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「这样的话，呃……那个……不是一举两得吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「不不不！！这根本不是一石还是二鸟的问题……！！」
[np]

[playcv storage="satomi_bad_00020_039.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「好啦好啦，别磨磨蹭蹭的……嘿咻！」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=82]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//暗転
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「呜哇！？」
[np]

[r]被靠近的圣水小姐拉住手，我被她推倒在床上——
[np]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad2
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[SYSTEMMENU]
[CG cgno=85 sabunno=01]
[fadeinbgm storage="bgm/BGM10.ogg" time="500"]

;//ＨＣＧ０２挿入
[playcv storage="satomi_bad_00020_040.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、呼呼……好嘞……」
[np]

[character name="ryuichi"]
【龙一】[r]「呃！？」
[np]

[r]被、被圣水小姐的乳沟……夹住了……！？
[np]

[playcv storage="satomi_bad_00020_041.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哦～这就是龙一君的小鸡鸡啊……嘿～……」
[np]

[character name="ryuichi"]
【龙一】[r]「别、别这样盯着看啊！」
[np]

[playcv storage="satomi_bad_00020_042.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「有什么不好嘛～又不会少块肉……被盯着看也不会缩回去对吧～？」
[np]

[r]不、不仅没缩……被这么贴近脸的话……！
[np]

[CG cgno=85 sabunno=02]

[playcv storage="satomi_bad_00020_043.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、还在变大呢……一鼓一鼓地胀起来，嘿～……说不定有点可爱呢♪」
[np]

[r]圣、圣水小姐的吐息……正对着龟头……
[np]

[playcv storage="satomi_bad_00020_044.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「好啦好啦……那就立刻开始吧～♪」
[np]

[character name="ryuichi"]
【龙一】[r]「呜啊啊！？」
[np]

[r]圣水小姐的胸部……正压迫着被夹在乳沟里的我的东西……！
[np]

[CG cgno=85 sabunno=03]

[playcv storage="satomi_bad_00020_045.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「那个……就是所谓的乳交吧？嗯、嗯嗯……嗯、嗯呼……」
[np]

[playcv storage="satomi_bad_00020_046.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「这样的话……嗯、嗯嗯……只要从两边夹住就可以了吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「这、这种事问我……啊、啊啊……！」
[np]

[CG cgno=85 sabunno=04]

[playcv storage="satomi_bad_00020_047.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊～不过小鸡鸡在抽动呢～应该没错吧，啊哈哈哈♪」
[np]

[r]靠近之后终于确信了，这个人完全喝醉了啊！
[np]

[r]真、真的可以吗？这种借着酒劲胡来的事情……
[np]

[CG cgno=85 sabunno=05]

[playcv storage="satomi_bad_00020_048.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈～肉棒原来是这种味道呀……嗅嗅……哼哼……嘻嘻，好奇怪的味道～♪」
[np]

[character name="ryuichi"]
【龙一】[r]「别、请不要闻啊！」
[np]

[playcv storage="satomi_bad_00020_049.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「有什么关系嘛～人家还是第一次见到真正的肉棒呢～」
[np]

[r]哎……？
[np]

[playcv storage="satomi_bad_00020_050.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯嗯～不过这个味道说不定会上瘾呢……哈啊～嗯、嗯嗯……」
[np]

[r]现在才说是第一次……不可能吧……？
[np]

[CG cgno=85 sabunno=04]

[playcv storage="satomi_bad_00020_051.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哎呀……？尖端流出了透明的东西……？这是什么，胶水吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「怎么可能是那种东西！这、这是……呜啊……！」
[np]

[playcv storage="satomi_bad_00020_052.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊～在ＡＶ里见过的对吧，那个叫什么来着～对了，忍耐汁！」
[np]

[character name="ryuichi"]
【龙一】[r]「对、对……就是那个……呜、咕……」
[np]

[CG cgno=85 sabunno=03]

[playcv storage="satomi_bad_00020_053.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「既然这个都流出来了……是不是说明龙一君快要射精了呀～……？」
[np]

[r]圣水小姐边说着边用上目线投来欣喜的目光。
[np]

[CG cgno=85 sabunno=01]

[playcv storage="satomi_bad_00020_054.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「这样啊这样啊，那说明我的乳交技术没错嘛，嗯呵呵呵呵～……」
[np]

[playcv storage="satomi_bad_00020_055.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「那接下来……我要更激烈地动起来咯？」
[np]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[CG cgno=85 sabunno=02]

[playcv storage="satomi_bad_00020_056.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈哈哈哈！对、对对对就是那样！」
[np]

[r]圣水小姐的香汗与我的忍耐汁……
[np]

[r]这些混合而成的粘滑乳沟正激烈摩擦着我的阳具……！
[np]

[CG cgno=85 sabunno=03]

[playcv storage="satomi_bad_00020_057.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、这样好像更容易操作呢……呐，龙一君也很舒服吧～……？」
[np]

[character name="ryuichi"]
【龙一】[r]「这、这是……」
[np]

[playcv storage="satomi_bad_00020_058.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「像涂了润滑液似的这么滑溜……嗯、嗯嗯……看招、看招看招呀……♪」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……！」
[np]

[r]包裹着肉棒的柔软乳沟弹性，与龟头上拂过的圣水小姐的吐息……！
[np]

[CG cgno=85 sabunno=05]

[playcv storage="satomi_bad_00020_059.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈、慢慢渗出来了呢……忍耐汁这种东西越是压抑就越会溢出来呢……♪」
[np]

[r]最重要的是和圣水小姐这样稀里糊涂发生关系的背德感，让脊背都酥酥麻麻的……！
[np]

[playcv storage="satomi_bad_00020_060.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「好厉害呀、抽搐得越来越剧烈了呢……鸡鸡的气味也变得更浓烈了哦……」
[np]

[CG cgno=85 sabunno=03]

[playcv storage="satomi_bad_00020_061.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「呐、什么时候要射精？就是那个吧？会噗咻噗咻地、很有气势地发射精子对吧……？」
[np]

[character name="ryuichi"]
【龙一】[r]「不、不是的……那个……」
[np]

[playcv storage="satomi_bad_00020_062.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「快点快点、让我看看嘛……可以尽情射出来哦……不用客气全都射给我也没关系呀……！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]真、真的可以吗？真的可以就这样到达高潮吗……！？
[np]

[CG cgno=85 sabunno=05]

[playcv storage="satomi_bad_00020_063.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯嗯……！嗯啊、哈啊……嗯、哈啊……！啊、哈啊、嗯嗯嗯……！」
[np]

[r]不行了……！射精感已经逼近极限，根本没空烦恼那种事了！
[np]

[playcv storage="satomi_bad_00020_064.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「射精吧、射精吧……把积攒在这里的精液从鸡鸡里噗咻噗咻地……看、要射了吧？快射出来呀……」
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇！？」
[np]

[r]等、等等、摸蛋蛋这种事……！
[np]

[CG cgno=85 sabunno=03]

[playcv storage="satomi_bad_00020_065.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「勃起的肉棒一抽一抽的……已经到极限了吧～？来吧、可以高潮了哦……♪」
[np]

[playcv storage="satomi_bad_00020_066.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「别客气、在姐姐的胸脯里……舒服地噗咻噗咻发射吧？好不好……？」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……呜啊啊啊啊——！！！」
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="flash_1.png" left=0 top=0 layer=9 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[wait time="700"]

[CG cgno=85 sabunno=08]

[backlay]
[freeimage layer=1 page=back]
[image storage="flash_1.png" left=0 top=0 layer=9 page=back visible=false]
[trans method=crossfade time=500]
[wt]

[wait time="500"]
[SYSTEMMENU]

[playcv storage="satomi_bad_00020_067.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「呀啊！？」
[np]

[r]——瞬间、下半身仿佛有电流窜过般的快感……
[np]

[CG cgno=85 sabunno=07]

[playcv storage="satomi_bad_00020_068.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、啊啊……！啊哈、出来了出来了……♪」
[np]

[r]回过神来时、我仍在圣水小姐的乳沟里保持着夹紧状态、尽情地射精了。
[np]

[playcv storage="satomi_bad_00020_069.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哇啊、啊……势头好猛……居然能喷出这么多……」
[np]

[playcv storage="satomi_bad_00020_070.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「在我的胸脯上不断飞溅……嗯、和肉棒一样滚烫呢……」
[np]

[r]圣水小姐出神地凝视着在乳沟里搏动的我的阳具。
[np]

[CG cgno=85 sabunno=07]

[playcv storage="satomi_bad_00020_071.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「欸、这么黏糊糊的……哈啊……这就是精液的味道……嗯……咻咻……」
[np]

[character name="ryuichi"]
【龙一】[r]「等……！」
[np]

[playcv storage="satomi_bad_00020_072.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「真的呢，这味道有点像生鱿鱼……或者栗子花之类的……？嗯呵呵～」
[np]

[r]圣水小姐用手指蘸取飞溅在胸口和脸上的精液……饶有兴致地嗅闻着那股气味。
[np]

[r]话说刚才的反应……虽然有点在意……
[np]

[r]圣水小姐该不会……不，应该不可能……
[np]

[CG cgno=85 sabunno=06]

[playcv storage="satomi_bad_00020_073.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊～……这就是所谓年轻人果然还是精力旺盛呢……看来确实如此啊……」
[np]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[CG cgno=85 sabunno=07]

[playcv storage="satomi_bad_00020_074.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「明明都射过一次了，龙一君的肉棒还是硬邦邦的呢……嗯呵呵……♪」
[np]

[playcv storage="satomi_bad_00020_075.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「所以说啊……应该还能继续吧……？」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]怎、怎么会……用这种自己也发情的表情说这种话……！
[np]

[playcv storage="satomi_bad_00020_076.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈……♪　看，现在肉棒也回应了呢？好像在说『还想和姐姐做更多舒服的事～』呢」
[np]

[playcv storage="satomi_bad_00020_077.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「所以嘛……嘿咻……！」
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[character name="ryuichi"]
【龙一】[r]「啊、等——」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=83]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad3
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[SYSTEMMENU]
[CG cgno=86 sabunno=02]
[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

;//ＨＣＧ０３挿入
[playcv storage="satomi_bad_00020_078.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯呵呵～……嘿咻……♪」
[np]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[CG cgno=86 sabunno=01]

[playcv storage="satomi_bad_00020_079.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、刚才心里喊我阿姨了吧～？因为说了『嘿咻』之类的词，就觉得我是老太婆了吧……？」
[np]

[character name="ryuichi"]
【龙一】[r]「才、才没有啊！」
[np]

[r]现在根本没空在意这种事！！
[np]

[playcv storage="satomi_bad_00020_080.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「真的吗～……？我看起来勉强还算二十多岁哦～？」
[np]

[r]说是勉强……不过圣水姐这长相就算说是二十出头也完全没问题……
[np]

[r]抛开内在不谈既年轻又漂亮……平时那懒散样暂且不提的话，简直——
[np]

[playcv storage="satomi_bad_00020_081.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯啊……！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[CG cgno=86 sabunno=02]

[playcv storage="satomi_bad_00020_082.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈、蹭到了呢……这个叫什么来着？素股吗？嗯、嗯嗯……哈啊……啊……♪」
[np]

[r]圣、圣水的蜜缝正紧紧吸附着我勃起的青筋……！
[np]

[playcv storage="satomi_bad_00020_083.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、啊啊……♪这样、好像还挺舒服的……嗯、嗯嗯……哈啊、哈啊……」
[np]

[playcv storage="satomi_bad_00020_084.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「只要像这样轻轻摆动腰肢……龙一君的肉棒就会摩擦着蜜缝……嗯、啊啊……♪」
[np]

[r]我的精液和圣水的爱液交融在一起……伴随着床铺的吱呀声，黏腻的水声此起彼伏……
[np]

[CG cgno=86 sabunno=01]

[playcv storage="satomi_bad_00020_085.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、哈、哈啊……但是果然忍不住了……」
[np]

[playcv storage="satomi_bad_00020_086.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「只是这样的话、小穴深处会发痒的……所以……嗯、嗯嗯……！」
[np]

[character name="ryuichi"]
【龙一】[r]「呜啊……！」
[np]

[r]圣水轻轻抬起腰肢，用手扶住我的阳具……
[np]

[playcv storage="satomi_bad_00020_087.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、哈啊……啊啊……♪」
[np]

[r]将我竖直挺立的龟头与她的蜜缝轻轻相触。
[np]

[CG cgno=86 sabunno=02]

[playcv storage="satomi_bad_00020_088.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈……哈啊……呐、龙一君现在……还是处男吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「呃……是、是的……」
[np]

[playcv storage="satomi_bad_00020_089.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「这样啊……那你的第一次对象就要变成我了呢……嗯呵呵……」
[np]

[playcv storage="satomi_bad_00020_090.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「……即使这样……也没关系吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「唔……」
[np]

[r]圣水现在毫无疑问已经喝醉了……作为这一个月来共同生活的同居者，我可以断言。
[np]

[r]但刚才那一瞬间……她露出了担心我的真实表情……
[np]

[character name="ryuichi"]
【龙一】[r]「……没关系！」
[np]

[playcv storage="satomi_bad_00020_091.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯……呵呵～谢谢你……♪」
[np]

[r]听到我的回答后，圣水露出狡黠的笑容。
[np]

[r]我现在渴望与圣水发生关系到了难以自持的地步……更重要的是，如果这时候拒绝，绝对会伤害到圣水。
[np]

[r]要告别处男之身，这两个理由已经足够……！！
[np]

[playcv storage="satomi_bad_00020_092.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「那么……嗯、嗯嗯……！」
[np]

[r]跨坐在我下半身的圣水缓缓沉下腰肢——
[np]

[CG cgno=86 sabunno=04]

[playcv storage="satomi_bad_00020_093.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈、啊啊……嗯、嗯嗯！啊、啊啊、啊啊啊啊啊啊啊啊啊！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]圣、圣水的身体里，插进了我的……！
[np]

[playcv storage="satomi_bad_00020_094.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯嗯……！哈啊、啊啊……！这、这就是真正的肉棒……嗯、嗯嗯……！」
[np]

[playcv storage="satomi_bad_00020_095.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「果然和跳蛋完全不一样……能感受到你的体温传过来……！」
[np]

[r]圣水的阴道壁紧紧缠绕着肉棒……那份触感、压迫感和温度……
[np]

[r]所有的一切都比自慰要舒服千百倍……！
[np]

[CG cgno=86 sabunno=03]

[playcv storage="satomi_bad_00020_096.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、哈啊、嗯、嗯啊啊……！就、就这样……！啊、哈啊、嗯、嗯嗯……！」
[np]

[playcv storage="satomi_bad_00020_097.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯、嗯嗯嗯嗯嗯嗯……！」
[np]

[character name="ryuichi"]
【龙一】[r]「呜啊……！」
[np]

[CG cgno=86 sabunno=04]

[playcv storage="satomi_bad_00020_098.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊……哈啊、哈啊……嗯、嗯啊……呵呵，龙一君的肉棒全都插进来了呢……♪」
[np]

[r]当完全连根没入的瞬间，圣水脸上泛起妩媚的羞笑。
[np]

[playcv storage="satomi_bad_00020_099.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊啊……这就是、真正的……男孩子的、肉棒……哈啊、嗯、嗯啊……」
[np]

[playcv storage="satomi_bad_00020_100.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯嗯……呐、龙一……」
[np]

[character name="ryuichi"]
【龙一】[r]「什、什么事……？」
[np]

[r]在彼此性器仍紧密贴合的状态下，圣水将脸庞凑近我。
[np]

[CG cgno=86 sabunno=03]

[playcv storage="satomi_bad_00020_101.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「龙一啊……你可是把第一次献给我了呢……？」
[np]

[character name="ryuichi"]
【龙一】[r]「是、是这样没错……」
[np]

[r]虽说奉献第一次这种说法，通常应该是指女孩子对男孩子吧……
[np]

[playcv storage="satomi_bad_00020_102.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「所以呀、特别告诉你个秘密……其实人家……这也是、第一次哦……」
[np]

[character name="ryuichi"]
【龙一】[r]「诶……！？」
[np]

[playcv storage="satomi_bad_00020_103.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「现在插在我小穴里的、龙一的这个……这可是第一次进来的肉棒呀……」
[np]

[character name="ryuichi"]
【龙一】[r]「可、可是……」
[np]

[playcv storage="satomi_bad_00020_104.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「是血对吧？刚才你也看到了……人家因为身体娇小所以超喜欢自慰……」
[np]

[playcv storage="satomi_bad_00020_105.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「大概是几岁的时候来着……？第一次用跳蛋的时候，把处女膜弄破了呀」
[np]

[character name="ryuichi"]
【龙一】[r]「什……！？」
[np]

[playcv storage="satomi_bad_00020_106.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「那时候有点后悔啦，不过舒服的话就算了～」
[np]

[r]这也太随便了！！不过倒是很有圣水的风格！
[np]

[playcv storage="satomi_bad_00020_107.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「而且呀～我听说第一次会喊疼的女生很麻烦嘛」
[np]

[playcv storage="satomi_bad_00020_108.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「结果就一直没找到对象到这个年纪……今天也是寂寞地一个人自慰来着」
[np]

[r]既没有强装镇定，也没有自怨自艾……圣水说着露出了柔和的羞涩笑容。
[np]

[playcv storage="satomi_bad_00020_109.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「……哎呀，被吓到了？这个年纪还没有经验果然很奇怪吧……？」
[np]

[character name="ryuichi"]
【龙一】[r]「没、没有的事！」
[np]

[r]倒不如说，该怎么说呢……虽然我自己也不清楚原因，但总觉得有点开心……
[np]

[playcv storage="satomi_bad_00020_110.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「或者说呀……没能体验捅破我处女膜的感觉，是不是有点遗憾呢……？」
[np]

[character name="ryuichi"]
【龙一】[r]「那、那也不是这个意思……！我、我只是觉得……圣水小姐应该经验很丰富……」
[np]

[playcv storage="satomi_bad_00020_111.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「怎么可能啦～！像我这种每天喝酒躺平的人，怎么可能有对象嘛～♪」
[np]

[r]啊……原来她自己也有自觉啊。
[np]

[playcv storage="satomi_bad_00020_112.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「父母也整天催婚催得烦死了……不过我现在的生活挺满足的，感觉恋爱结婚什么的麻烦得要命……」
[np]

[playcv storage="satomi_bad_00020_113.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「要不龙一君，干脆和我结婚算了～？」
[np]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[playcv storage="satomi_bad_00020_114.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「开～玩笑的啦！啊……不过说真的……」
[np]

[playcv storage="satomi_bad_00020_115.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「我们现在这样……多少有点在做坏事的感觉吧？」
[np]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[playcv storage="satomi_bad_00020_116.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「毕竟我是学生宿舍的管理员……现在却在帮男学生自慰……？这种背德感……不觉得心跳加速吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[playcv storage="satomi_bad_00020_117.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「不过我也是第一次……这种情况到底该说是自慰还是什么呀？」
[np]

[r]被圣水小姐再次这么一说……背德感开始在下半身打转……
[np]

[r]是、是啊……我现在明明是个学生却和宿舍管理员……
[np]

[r]正在和年长的性感大姐姐做色色的事情！
[np]

[CG cgno=86 sabunno=04]

[playcv storage="satomi_bad_00020_118.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯嗯……？」
[np]

[r]这么想着，胯间突然发烫——！！
[np]

[playcv storage="satomi_bad_00020_119.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「呀啊啊！？啊、啊啊、嗯、嗯嗯！哈啊、啊、啊啊……！嗯、嗯嗯！？龙、龙一君！」
[np]

[r]腰已经控制不住地摆动起来了……！
[np]

[CG cgno=86 sabunno=03]

[playcv storage="satomi_bad_00020_120.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈♪　突然就兴奋起来了呢、啊、啊啊……！怎么啦？因为说话太久憋不住了吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「是、是的……！我已经……！」
[np]

[playcv storage="satomi_bad_00020_121.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、唔嗯……我也、有同样的感觉呀……小穴一抽一抽的……啊、啊啊……！」
[np]

[playcv storage="satomi_bad_00020_122.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「想要肉棒、狠狠搅动什么的……一直、都在想啊……！嗯、嗯嗯！嗯啊……！」
[np]

[r]每次我向上顶弄时，眼前圣水小姐的巨乳就会跟着跳动……
[np]

[CG cgno=86 sabunno=05]

[playcv storage="satomi_bad_00020_123.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、啊啊……！嗯、哈啊、嗯嗯……！嗯啊、啊、啊啊啊……！」
[np]

[r]飞溅的汗珠和闭目沉醉在快感中的圣水的娇喘声……让人受不了！！
[np]

[playcv storage="satomi_bad_00020_124.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯嗯……！哈、啊啊……既然这样、我也……嗯、嗯唔……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇！？」
[np]

[CG cgno=86 sabunno=06]

[playcv storage="satomi_bad_00020_125.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、哈啊啊啊！！嗯啊、啊、啊啊啊啊！！哈、哈啊啊！！」
[np]

[r]圣、圣水竟然自己扭动起腰肢……！！
[np]

[CG cgno=86 sabunno=03]

[playcv storage="satomi_bad_00020_126.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊哈♪　这样好舒服……！啊、啊啊！真实的肉棒在小穴里抽插的触感简直太棒了！！」
[np]

[playcv storage="satomi_bad_00020_127.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、啊啊！里面、摩擦得好激烈……！！比按摩棒还要、还要舒服得多！！好舒服啊！！」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……！！」
[np]

[r]这样下去、要糟了……！！
[np]

[playcv storage="satomi_bad_00020_128.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「龙一君的肉棒、在我里面不停跳动呢……！哈啊、嗯、嗯嗯……！！啊、啊啊！呜哇啊！！」
[np]

[r]明明刚才已经射过一次了……！现在下半身又涌起了第二次射精的冲动……！
[np]

[playcv storage="satomi_bad_00020_129.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「全部、都传达到小穴里了啦！！真实的肉棒触感！小穴全都感受到了啊！！」
[np]

[character name="ryuichi"]
【龙一】[r]「圣、圣水小姐……！！我、已经不行了……！」
[np]

[CG cgno=86 sabunno=05]

[playcv storage="satomi_bad_00020_130.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯嗯！好、我也、我也快要去了……！呐、射在里面吧？在小穴里射出来吧……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「！！」
[np]

[r]阴道内的压迫感仿佛要榨取临近高潮的肉棒……！！
[np]

[CG cgno=86 sabunno=06]

[playcv storage="satomi_bad_00020_131.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「全部、都可以射出来哦！内射也没关系的啊！啊、啊啊！嗯、嗯嗯！嗯啊啊啊！！」
[np]

[playcv storage="satomi_bad_00020_132.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「所以啊！在小穴里高潮吧！！完全勃起的肉棒！在小穴里达到顶点吧！！」
[np]

[character name="ryuichi"]
【龙一】[r]「——！！！」
[np]

[playcv storage="satomi_bad_00020_133.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！！！」
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="flash_1.png" left=0 top=0 layer=9 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[wait time="700"]

[CG cgno=86 sabunno=08]

[backlay]
[freeimage layer=1 page=back]
[image storage="flash_1.png" left=0 top=0 layer=9 page=back visible=false]
[trans method=crossfade time=500]
[wt]

[wait time="500"]
[SYSTEMMENU]

[r]——全身颤抖着，翻涌的射精感瞬间窜遍肉棒……
[np]

[playcv storage="satomi_bad_00020_134.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、啊啊啊啊……！！嗯、嗯嗯！嗯啊、哈啊……啊啊……！！」
[np]

[r]回过神时，我已在圣水小姐震颤着全身、浮现恍惚表情的阴道里完成了第二次射精。
[np]

[CG cgno=86 sabunno=07]

[playcv storage="satomi_bad_00020_135.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「啊、啊啊…！嗯、来了…射了好多、射了好多啊啊啊……！！」
[np]

[playcv storage="satomi_bad_00020_136.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「龙一君的…精液…滚烫的液体…把小穴…填得满满的…嗯、嗯嗯……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「呜、啊……！」
[np]

[r]明明已经是第二次了…怎么还会有这么多…！
[np]

[playcv storage="satomi_bad_00020_137.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈啊…嗯、嗯啊…！啊、哈啊…嗯啊啊…！哈、哈啊…哈…」
[np]

[r]被几乎令人意识远去的快感所包围，等到回过神来时射精已经结束……
[np]

[CG cgno=86 sabunno=09]

[playcv storage="satomi_bad_00020_138.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「哈、哈啊…嗯、哈啊…哈…哈啊……♪」
[np]

[r]圣水小姐挺立的乳头上挂着汗珠，正用迷离的神情凝视着我。
[np]

[playcv storage="satomi_bad_00020_139.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯、嗯嗯…哈啊…哈啊…嗯～…」
[np]

[playcv storage="satomi_bad_00020_140.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「龙一君…舒服吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「是、是的…我简直一塌糊涂……」
[np]

[playcv storage="satomi_bad_00020_141.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯…呵呵呵～…那就好…龙一君的第一次…能让你舒服真是太好了……」
[np]

[playcv storage="satomi_bad_00020_142.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「我也已经……超级舒服……嗯……哈……」
[np]

[character name="ryuichi"]
【龙一】[r]「圣、圣水小姐……？」
[np]

[playcv storage="satomi_bad_00020_143.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「不知怎么的……已经……脑袋晕乎乎的……哈啊……」
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

;//暗転
[character name="ryuichi"]
[quake time="500"]
【龙一】[r]「嗯唔唔唔！？」
[np]

[r]圣、圣水小姐突然倒在我身上……胸、胸部完全盖住了我的脸！
[np]

[character name="ryuichi"]
【龙一】[r]「唔！嗯、唔！？唔、唔——！？」
[np]

[playcv storage="satomi_bad_00020_144.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯…………哈～…………胸……呼……」
[np]

[r]等、等一下……刚才的鼾声！？不会吧！？这人要睡觉了吗！？
[np]

[playcv storage="satomi_bad_00020_145.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「呼啊……嘶……嗯嗯……哈……」
[np]

[r]不不不！这种气氛下睡觉太奇怪了吧！？喂！喂——————！！！
[np]

[playcv storage="satomi_bad_00020_146.ogg" name="satomi"]
[character name="satomi"]
【圣水】[r]「嗯……呵呵～……龙一君……♪」
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]现在哪有空因为被梦话叫到名字而害羞啊！！
[np]

[r]再这样下去要窒息了……！拜、拜托了、谁来……！　
[np]

[r]谁来！救救我啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！
[np]

[r]…………。
[np]

[r]……。
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=84]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

;//ここで終了。タイトルへ？
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[jump storage="title.ks"]

;//いやダメだろ！　を選んだ場合は、そのままbad00030へ
*select2
[eval exp="f.SelectFlg=0"]
[eval exp="f.SelectBad00020_0=1"]
[jump target="*selectB"]
*selectB


;//JUMP:bad_00030
[jump storage="scenario/bad/bad_00030.ks"]
