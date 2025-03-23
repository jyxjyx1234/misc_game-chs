[SCENESTART file=mion_00780.ks]
;//mion_00780
;//BG:サイン会場

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//TIME:昼
;//日付:なし
;//CH:竜一,スーツ
;//CH:澪音,ドレス

;//暗転
[SYSTEMMENU]

[r]……自那之后，又过了数年……。
[np]

;//通常ＣＧ挿入
[CG cgno=65 sabunno=01]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[playcv storage="mion_mion_00780_001.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「听话吗？要当个乖孩子哦？」
[np]

;//★＠
;//子供の名前は「真音/まおん」でお願いします
[playcv storage="maon_mion_00780_001.ogg" name="women"]
[character name="women"]
【真音】[r]「好——！」
[np]

[r]充满清新感的宽敞会场，两侧装点着缤纷的鲜花。
[np]

[r]端坐在会场中央席位上的……正是今日的主角黑峰澪音，她正将爱女搂在怀中。
[np]

[playcv storage="mion_mion_00780_002.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「真的不用去厕所吗？不用爸爸陪着去也没关系？」
[np]

;//★＠
[playcv storage="maon_mion_00780_002.ogg" name="women"]
[character name="women"]
【真音】[r]「没关系！」
[np]

[r]两年前成为我妻子的澪音，在学生时代暑假期间投稿的小说……
[np]

[r]那部作品斩获大奖殊荣，次年澪音便正式以轻小说作家的身份出道。
[np]

[r]此后她以惊人的速度崭露头角，不仅创作轻小说，还涉足推理文学领域并斩获奖项，展现出如日中天的发展势头。
[np]

[r]如今她既是孩子的母亲，又是活跃在创作前沿的话题女王级美女作家，媒体争相邀约采访。
[np]

[r]而曾发誓要陪伴支持澪音的我，既是她的丈夫，也是她的经纪人，同时以家庭主夫的身份支持着她的创作事业。
[np]

[r]今天要在市中心的书店举办新书发售纪念签售会，不过……
[np]

[CG cgno=65 sabunno=02]

[playcv storage="mion_mion_00780_003.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「龙一，时间安排怎么样了？」
[np]

[character name="ryuichi"]
【龙一】[r]「刚接到联络，总编辑坐的出租车遇到堵车，估计还要再等十五分钟」
[np]

[playcv storage="mion_mion_00780_004.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「这样啊……倒是个不错的素材。等下酒会上可以好好调侃他呢。嗤嗤……」
[np]

[character name="ryuichi"]
【龙一】[r]「这个我倒不反对，不过你可别喝太多啊？」
[np]

[playcv storage="mion_mion_00780_005.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「知道啦。明天不是约好要三个人去游乐园吗？」
[np]

;//★＠
[playcv storage="maon_mion_00780_003.ogg" name="women"]
[character name="women"]
【真音】[r]「嗯！约好了！！」
[np]

[r]被女儿的笑容感染，澪音的面部线条也柔和起来。
[np]

[character name="ryuichi"]
【龙一】[r]「风见水世界乐园……难得的机会，要不要顺道去伏木庄打个招呼？」
[np]

[CG cgno=65 sabunno=03]

[playcv storage="mion_mion_00780_006.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「哎呀，我本来就是这么打算的呀？圣水小姐也在那里吧」
[np]
[FACEHIDE]

[r]伏木庄至今仍作为苍心学园的学生宿舍正常运作。
[np]

[r]和当年那些伙伴们也保持着定期联系……我们还约好最近要久违地聚一次。
[np]

[character name="ryuichi"]
【龙一】[r]「那时候真是做梦都没想到啊……澪音居然能变得这么有名」
[np]

[playcv storage="mion_mion_00780_007.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「哎呀，你当时没相信我吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「不是那个意思。只是没想到会出名到能上电视的程度」
[np]

[CG cgno=65 sabunno=01]

[playcv storage="mion_mion_00780_008.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「这倒也是……不过以我这副美貌，世人当然不会视而不见吧」
[np]

[character name="ryuichi"]
【龙一】[r]「最近工作接二连三的……身体还吃得消吗？」
[np]

[playcv storage="mion_mion_00780_009.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「没问题。只要有你和这孩子在我身边，我就能一直坚持下去」
[np]

[character name="ryuichi"]
【龙一】[r]「那就好……但千万别逞强啊？」
[np]

[CG cgno=65 sabunno=04]

[playcv storage="mion_mion_00780_010.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯。谢谢你龙一……真的，谢谢你」
[np]

[character name="ryuichi"]
【龙一】[r]「突、突然这么正经干嘛……」
[np]

[playcv storage="mion_mion_00780_011.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「我可是一直都很感谢龙一的哦？因为我能走到今天，都是龙一始终在身边支持着我呀」
[np]

[character name="ryuichi"]
【龙一】[r]「澪音……」
[np]

[CG cgno=65 sabunno=02]

[playcv storage="mion_mion_00780_012.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「而现在……给我动力的，是你的爱意和这孩子的笑容……」
[np]

;//★＠
[playcv storage="maon_mion_00780_004.ogg" name="women"]
[character name="women"]
【真音】[r]「嘿嘿……♪」
[np]

[r]真音被澪音温柔地抚摸着头顶，眯着眼睛羞涩地微笑。
[np]

[CG cgno=65 sabunno=01]

[playcv storage="mion_mion_00780_013.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「龙一……今后也要永远陪在我身边，继续支持我哦？」
[np]

[character name="ryuichi"]
【龙一】[r]「……那当然！」
[np]

[playcv storage="mion_mion_00780_014.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「……呵呵♪」
[np]

[r]澪音说出了感谢的话语，感谢对方一直以来的支持。
[np]

[r]看着澪音这样的笑容，我再次深切体会到自己也被她支撑着。
[np]

[r]就这样，我们彼此携手相伴……
[np]

[r]今后永远……都要和所爱的人，以及心爱的女儿一起——
[np]

[CG cgno=65 sabunno=04]

[playcv storage="mion_mion_00780_015.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「我爱你，亲爱的……♪」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no="64"]
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
[image storage="fin_mion.png" left=0 top=0 layer=0 page=back visible=true]
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