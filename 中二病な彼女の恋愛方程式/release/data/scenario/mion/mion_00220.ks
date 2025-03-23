[SCENESTART file=mion_00220.ks]
;//mion_00220
;//BG:bg08_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM07.ogg" time=1000]

;//TIME:夜
;//日付:7/11(土)
;//CH:竜一,sifuku
;//CH:澪音,sifuku

[character name="ryuichi"]
【龙一】[r]「……好！」
[np]

[r]走出浴室后，我盯着镜子拍了拍自己的脸颊。
[np]

[r]听好了？我打工回来的时候，在房间里什么都没看见。
[np]

[r]和澪音前辈正常打了招呼，大家一起吃晚饭，像往常一样洗完澡到现在……仅此而已！
[np]

;//背景を寮のリビングbg02_03に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]离开盥洗室，从冰箱取出刚买的汽水。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……嗯、嗯……噗哈——！」
[np]

[r]碳酸在喉咙炸开的刺激感，让残留余热的身体逐渐冷却的这种感觉很舒服。
[np]

[character name="ryuichi"]
【龙一】[r]「那么……」
[np]

[r]拿着汽水，我再次爬上楼梯……重新站在房门前。
[np]

;//\SEノック音
[playse buf=5 storage="sound/00690.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「前辈……？」
[np]

[r]像刚才一样轻轻敲门后……
[np]

;//ドア越し
[playcv storage="mion_mion_00220_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「请进」
[np]
[FACEHIDE]

[r]是澪音前辈一如往常沉稳平静的回应声。
[np]

[r]即便如此还是保持警惕…一边确认屋内状况一边缓缓推开门——
[np]

;//背景を澪音の部屋bg06_03に

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]…太好了，这次应该没问题了。
[np]

[character name="ryuichi"]
【龙一】[r]「我刚洗完澡了」
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00220_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「是么」
[np]
[FACEHIDE]

[r]正对着电脑的前辈给了我一个冷淡的回应。
[np]

[r]倒也不是不高兴，大概只是全神贯注在电脑上吧。
[np]

[char_erase name="mion"]

[character name="ryuichi"]
【龙一】[r]「咕嘟…咕噜…哈——」
[np]

[r]我在自己的座位上坐下，仰头灌下汽水。
[np]

[r]碳酸在口腔迸裂的声响过后，传来前辈高速敲击键盘的哒哒声。
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]虽然知道前辈对着电脑肯定是在忙正事…但这种沉默的氛围总让人坐立不安。
[np]

[r]是不是应该主动搭话比较好呢？还是说——
[np]

[mion storage="B_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00220_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「龙一」
[np]
[FACEHIDE]

[r]正当我寻找话题契机而环视房间时，视线却不自觉被前辈吸引。
[np]

[r]坐在椅子上转过身子面对我的前辈，正翘着腿俯视着我。
[np]

[mion storage="A_sifuku_M AB1_4_M"]
[playcv storage="mion_mion_00220_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「你……刚才违抗了我的命令呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎？啊……」
[np]

[r]对、对了，虽然她说过不准出房间，但那时候情况紧急……
[np]

[mion storage="C_sifuku_M CD1_5_M"]
[playcv storage="mion_mion_00220_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「……嘛，那倒也不是什么大事……算了……」
[np]
[FACEHIDE]

[r]原本直射向我的目光稍稍偏移了些许。
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00220_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「……呐，龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是……什么事？」
[np]

[mion storage="A_sifuku_M AB1_8_M"]
[playcv storage="mion_mion_00220_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「……你，是不是喜欢我？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊——！！」
[np]

[char_erase name="mion"]

[r]手中的汽水瓶险些滑落。
[np]

[r]这次轮到我……反而无法直视学姐的眼睛了。
[np]

[r]前辈抛出的那个疑问，开始在脑海中不断盘旋——
[np]

[r]为什么…为何突然问我这个？而且还是前辈亲自开口——
[np]

[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_mion_00220_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「答案呢？」
[np]
[FACEHIDE]

[r]步步紧逼的前辈也始终躲避着我的视线…这副模样完全不像平日里的学姐。
[np]

[character name="ryuichi"]
【龙一】[r]「那个……」
[np]

[char_erase name="mion"]

[r]明明刚用汽水润过的喉咙，此刻却莫名干渴难耐。
[np]

[r]该怎样回答？是该坦承心意，说出“我喜欢你”吗？
[np]

[r]我的心意已近乎确定。对前辈抱有好感这件事，可以说是不容置疑的事实。
[np]

[r]怎么办，该怎么办才好……？干脆趁现在表白吗？
[np]

[r]我…我喜欢澪音学姐…我爱你——
[np]

[mion storage="B_sifuku_M AB1_6_M"]
[playcv storage="mion_mion_00220_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_6_FACE_sifuku"]
【澪音】[r]「…对、对不起」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃——」
[np]

[r]被拒绝了——不对。因为我还没正式告白啊…！
[np]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00220_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「我真是的…问了奇怪的问题呢…请、请把刚才的忘掉吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶…」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00220_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「这个话题到此为止。再提起就处刑哦。明白吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好、好的…」
[np]

;//小声
[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00220_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「原、原来如此…这就是所谓的暧昧氛围啊…值得参考…」
[np]
[FACEHIDE]

[r]澪音学姐边自言自语边在备忘录上输入着什么。
[np]

[char_erase name="mion"]

[r]…难道说刚才那些也是为了小说取材…之类的吗？
[np]

[character name="ryuichi"]
【龙一】[r]「…这样啊…」
[np]

[r]在产生这种念头的瞬间……连我自己都惊讶于心情竟会如此低落。
[np]

[r]……果然没错啊。既然心情因此低落，那我……
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

[jump storage="scenario/mion/mion_00230.ks"]