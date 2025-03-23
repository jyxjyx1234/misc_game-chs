[SCENESTART file=all_00070.ks]
;//all_00070
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:夜
;//日付:6/14(日)
;//CH:竜一,sifuku
;//CH:すぴか,裸
;//※このシーンから、背景に大型犬用のケージ差分をお願いします。

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「……大概明白了」
[np]

[r]在关掉电灯的客厅里，手机的照明显得格外刺眼。
[np]

[r]刚刚被提到的中二病和邪气眼之类的词汇，我试着上网查了查……
[np]

[r]简单来说，就是深信自己拥有特殊力量而玩角色扮演的人……这样理解应该没错吧。
[np]

[character name="ryuichi"]
【龙一】[r]「唉……」
[np]

[r]把手机塞回口袋时，不由自主地叹了口气。
[np]

[r]原本因为要开始宿舍新生活还挺兴奋的……结果刚来就遇到这么波澜万丈的事。
[np]

[r]虽然住在宿舍的女孩子们都挺可爱的……
[np]

[r]不过她们的内在嘛……该怎么说，呃……
[np]

[character name="ryuichi"]
【龙一】[r]「一个星期，吗……」
[np]

[r]望着环绕自己的精致牢笼，不经意间漏出这样的低语。
[np]

[r]接下来这周要怎么度过，将决定我未来的生活走向。
[np]

[r]不是说如果投票反对同居的人数占多数，就得搬去其他宿舍么……
[np]

[r]正常情况下不可能有这种规矩，但当时的氛围和那个管理员的做派，搞不好真会这么做。
[np]

[r]为了避免这种结果，必须要做个清廉正直的清爽好青年……对！
[np]

[character name="ryuichi"]
【龙一】[r]「去泡个澡吧！」
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//背景を洗面所bg08に
[r]时间已过午夜零点。这个时段应该不会撞见任何人。
[np]

[r]今天一整天在各种意义上都出了不少汗……冲个凉清爽一下吧！
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

;//時間経過
;//暗転
[character name="ryuichi"]
【龙一】[r]「哈……」
[np]

[r]洗完身子后闭着眼睛使劲搓洗头发。
[np]

[r]这个浴室当然女生也在用。也就是说不久前还有光着身子的人在这里……
[np]

[r]只是稍微想象下这种色色的事情，应该没问题吧！没关系的吧！
[np]

[wait time="250"]
[playse buf=5  storage="sound/00310.ogg"]
[wait time="1000"]

;//\SE風呂場のドアが開く音
[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[r]刚才……是不是有开门声？
[np]

[r]被淋浴的水声掩盖着，虽然听不真切……但背后确实传来了类似的声音——
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]不，不是错觉……明显能感觉到有什么东西就在身旁徘徊的气息。
[np]

[r]该、该不会是……那个吧？毕竟是老宿舍楼，总会有些灵异现象什么的……
[np]

[r]比如这栋宿舍还住着其他非人之类的传闻——
[np]

[character name="ryuichi"]
【龙一】[r]「呃！」
[np]

[r]那气息仿佛瞬间移动到了眼前，惊得我倒抽一口凉气。
[np]

[r]偏偏在我闭着眼睛洗头的时候……！难道对方就是看准这个时机！？
[np]

[r]总、总之得先确认状况……！这浴室里到底发生了什么！
[np]

[stopse buf=0]
[stopse buf=1]
[fadeoutbgm time="1000"]

[r]我慌忙冲掉头上的泡沫，抹开脸上水珠就要睁——
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

;//ＣＧ挿入
[CG cgno="21" sabunno="01"]
[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「…………啊？」
[np]

[r]……视野恢复的瞬间，映入眼帘的是小女孩光洁的后背。
[np]

;//以下、すぴかの名前表記は「？？？」でお願いします
[playcv storage="supica_all_00070_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[r]这、这是什么情况……不是幽灵吧？座敷童子？不对明显是人类啊！
[np]

[character name="ryuichi"]
【龙一】[r]「哈……！？」
[np]

[r]难道是在考验我！？
[np]

[r]难道其实大家都在暗中观察这个状况，测试我「面对突然出现的裸体少女能否保持克制」！？
[np]

[r]呵，我才不会上当……！毕竟我刚才才下定决心要做个清心寡欲的——
[np]

[playcv storage="supica_all_00070_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……搓头」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……！什、什么……？」
[np]

[playcv storage="supica_all_00070_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「搓头……用力搓……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？搓、搓头……？」
[np]

[r]身形有些摇晃的少女用慵懒的声音——但确实说出了这句话。
[np]

[CG cgno="21" sabunno="02"]

[playcv storage="supica_all_00070_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「快点……搓搓……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这「使劲搓」是要我洗头的意思吗……？」
[np]

[playcv storage="supica_all_00070_005.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……」
[np]
[FACEHIDE]

[r]她轻轻点了点头。若说是陷阱，也未免太精巧了……
[np]

[playcv storage="supica_all_00070_006.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「好困…快点弄完…不然就灭杀……」
[np]
[FACEHIDE]

[r]总觉得她的声音越来越不高兴了……
[np]

[r]话说灭杀是指哪里？难道是这个宿舍？果然是座敷童子…！？
[np]

[playcv storage="supica_all_00070_007.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「………………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知、知道了知道了！这就洗！马上为您效劳！」
[np]

[r]镜中映出的那张脸显然已极度不悦，只能毕恭毕敬地拿起洗发水
[np]

[r]妈的，这到底怎么回事……！虽在心中暗骂……
[np]

[CG cgno="21" sabunno="03"]

[playcv storage="supica_all_00070_008.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[r]按照她的要求，开始用力搓洗那头秀发
[np]

[playcv storage="supica_all_00070_009.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……嗯嗯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「客人，有没有哪里痒啊？」
[np]

[playcv storage="supica_all_00070_010.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「耳朵、上面……对、就是那里……」
[np]
[FACEHIDE]

[r]本是随口开个玩笑，她却当真了。还是说真的痒？
[np]

[CG cgno="21" sabunno="04"]

[playcv storage="supica_all_00070_011.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯嗯……好舒服……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那就好……来，冲水啦」
[np]

[playcv storage="supica_all_00070_012.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]为避免洗发水入眼，一手护住她的额头冲洗泡沫。
[np]

[playcv storage="supica_all_00070_013.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯——」
[np]
[FACEHIDE]

[r]她像小狗般瑟瑟发抖地晃了晃脑袋，周围溅起一片水花。
[np]

[CG cgno="21" sabunno="05"]

;//以下、すぴかの名前表記を通常に
[playcv storage="supica_all_00070_014.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……接下来、后背……给真珠星的后背、用力搓……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好嘞……哎、真珠星？」
[np]

[r]刚才确实这么说了……也就是说……
[np]

[r]这孩子就是晚餐时不在的最后一人……！？
[np]

[r]不过冷静想想确实如此……不可能是座敷童，而且她现在也来用宿舍的浴室了
[np]

[playcv storage="supica_all_00070_015.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「后背……快点……」
[np]
[FACEHIDE]

[r]啊……！也就是说，我果然在被试探吗！？
[np]

[r]他们故意派这个叫真珠星的女孩过来，在隔壁房间通过监控观察我的反应——
[np]

[playcv storage="supica_all_00070_016.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……消灭……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好好好！现在就洗！我这就给您洗！」
[np]

[r]我拿起沾满沐浴露的海绵，慢慢抚过她的后背
[np]

[CG cgno="21" sabunno="06"]

[playcv storage="supica_all_00070_017.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯、嗯嗯……」
[np]
[FACEHIDE]

[r]我到底为什么在给这个……真珠星洗头、搓背啊……
[np]

[playcv storage="supica_all_00070_018.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……对、就是那里……嗯、啊……」
[np]
[FACEHIDE]

[r]本以为这个时间大家都睡了……真是失算了。
[np]

[playcv storage="supica_all_00070_019.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……啊、嗯……嗯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[playcv storage="supica_all_00070_020.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯啊……啊……哈……」
[np]
[FACEHIDE]

[r]洗头发的时候倒还好……怎么现在开始发出奇怪的声音了？
[np]

[r]话说回来，给赤裸的女孩子擦背这种行为实在……不，应该说是相当危险的行为吧！
[np]

[character name="ryuichi"]
【龙一】[r]「要、要冲水了哦？」
[np]

[playcv storage="supica_all_00070_021.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[r]用花洒冲洗着她纤细的后背。
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]随着泡沫褪去显露的肌肤如同人偶般精致……凝视太久的话，仿佛会被吸进去似的……
[np]

[r]等等，不行不行不行！要是现在做出什么奇怪举动，根本不用等一周后的判决，绝对会被当场退学！
[np]

[character name="ryuichi"]
【龙一】[r]「总、总算洗完了……！」
[np]

[CG cgno="21" sabunno="01"]

[playcv storage="supica_all_00070_022.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「！」
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
[wait time="500"]

[CGHIDE]
[SYSTEMMENU]

;//暗転
[r]真珠星丝毫没有遮掩身体就站起身，我慌忙闭上眼睛。
[np]

[stopse buf=0]
[stopse buf=1]
[fadeoutbgm time="1000"]

[wait time="250"]
[playse buf=5  storage="sound/00310.ogg"]
[wait time="1000"]

;//\SE風呂のドアが閉まる音
[r]紧接着传来真珠星的动静逐渐远去的声音，一步、两步……最后听见浴室门关闭的声响。
[np]

[character name="ryuichi"]
【龙一】[r]「哈——……！」
[np]

[r]确认她离开后，我将憋在胸腔里的气息重重地吐了出来。
[np]

[r]这、这算什么事啊……明明刚下定决心要注意言行，偏偏就在这个节骨眼上……
[np]

[r]某种意义上说，这可比撞见幽灵什么的更让人心跳骤停啊……！
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=20]
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

;;//JUMP:all_00080
[jump storage="scenario/all/all_00080.ks"]
