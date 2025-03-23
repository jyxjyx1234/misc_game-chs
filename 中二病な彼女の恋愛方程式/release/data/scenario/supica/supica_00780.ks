[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00780.txt]
;//supica_00780
;//BG:なし

;//TIME:昼
;//日付:8/30(日)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku

;//空背景

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=500]
[wt]

[SYSTEMMENU]

[r]……然后我们全力玩转了剩下两周左右的暑假。
[np]

[r]早早完成作业，尽量控制打工时间，优先保证和真珠星相处的每一刻。
[np]

[r]真珠星依然如故，不论做什么、去哪里都紧紧跟着我……
[np]

[r]宿舍的伙伴们都笑说，我才是宇宙真正的统治者。
[np]

[r]然后，就在今天……
[np]

;//通常ＣＧ０３挿入
[HIDESYSTEMMENU]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

[CG cgno=24 sabunno=01]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[playcv storage="supica_supica_00780_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「哇……♪」
[np]

[r]８月３０日周日，暑假所剩无几之时……
[np]

[r]我和真珠星乘电车来到市内的天文馆。
[np]

[r]说到天文馆，通常想象中都是坐在座位上静静观赏……
[np]

[r]但这里可以自由漫步，享受流光溢彩的幻境空间。
[np]

[playcv storage="supica_supica_00780_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一快看，是斯皮卡……！」
[np]

[character name="ryuichi"]
【龙一】[r]「哎？真珠星……？怎、怎么了？」
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「不是真珠星，是斯皮卡……那里，处女座的，这个……」
[np]

[r]啊……最开始还以为真珠星是在说她自己……原来是说星星啊。
[np]

[character name="ryuichi"]
【龙一】[r]「这个吗？」
[np]

[CG cgno=24 sabunno=01]

[playcv storage="supica_supica_00780_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……那个……」
[np]

[r]当我指向那颗疑似目标的星星时，真珠星用力地点了点头。
[np]

[character name="ryuichi"]
【龙一】[r]「嘿～这就是斯皮卡啊……」
[np]

[r]边说着边走近展品，浏览起旁边设置的说明文字。
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_005.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「别称真珠星……处女座中最明亮的恒星……青白色的光芒是其特征……」
[np]

[r]在我阅读之前，真珠星已经把说明文字的内容全部抢先念了出来。
[np]

[character name="ryuichi"]
【龙一】[r]「原来如此，和真珠星同名的星星……难道是你父母喜欢的星星吗？」
[np]

[CG cgno=24 sabunno=02]

[playcv storage="supica_supica_00780_006.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「这个……没听说过……不过可能……是吧……」
[np]

[r]之前听真珠星说过，她父母从事宇宙开发相关的工作……如果不是因为这个，也不会给孩子取真珠星这样的名字吧。
[np]

[CG cgno=24 sabunno=01]

[playcv storage="supica_supica_00780_007.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「下次我去问问……比起这个，龙一……龙一你也、去找一颗属于自己的星星吧……」
[np]

[character name="ryuichi"]
【龙一】[r]「诶，我自己的星星？」
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_008.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……属于自己的、中意之星……这样的话，仰望星空时……也会多一分乐趣」
[np]

[character name="ryuichi"]
【龙一】[r]「话是这么说……可我完全不懂天文知识啊……」
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_009.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「没事的……真珠星会教你的……」
[np]

[character name="ryuichi"]
【龙一】[r]「哦，那可太可靠了」
[np]

[r]虽然和真珠星相处久了，确实记住了些著名星辰的名称……
[np]

[r]但更重要的……终究还是自己能否对这些产生兴趣吧。
[np]

[r]不过要说兴趣所在，比起星辰……
[np]

[CG cgno=24 sabunno=02]

[playcv storage="supica_supica_00780_010.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一、生日……什么时候？」
[np]

[character name="ryuichi"]
【龙一】[r]「我？五月二十一日」
[np]

[playcv storage="supica_supica_00780_011.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「二十一日……那正好是双子座……北河三……北河二……井宿三……」
[np]

[r]星……星……星姐……
[np]

[character name="ryuichi"]
【龙一】[r]「梅干……阴干……赎罪……」
[np]

[CG cgno=24 sabunno=03]

[playcv storage="supica_supica_00780_012.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……毁灭？」
[np]

[character name="ryuichi"]
【龙一】[r]「……我错了」
[np]

[r]我自己也清楚说这些很无聊，但被用疑问句吐槽更让我想死……
[np]

[playcv storage="supica_supica_00780_013.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一，认真想想……」
[np]

[character name="ryuichi"]
【龙一】[r]「就算你叫我认真……比起看星星，我更喜欢看着真珠星，或者说……」
[np]

[CG cgno=24 sabunno=02]

[playcv storage="supica_supica_00780_014.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……斯皮卡？那刚才的地方……」
[np]

[character name="ryuichi"]
【龙一】[r]「不是那个……是真珠星，星乃真珠星」
[np]

[CG cgno=24 sabunno=01]

[playcv storage="supica_supica_00780_015.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……真珠星……？」
[np]

[r]虽然同名容易混淆，但真珠星指了指自己，于是我点了点头。
[np]

[playcv storage="supica_supica_00780_016.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一，喜欢……看着真珠星吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「这个嘛……应该没有人会讨厌看自己喜欢的人吧……」
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_017.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「这样啊……龙一……喜欢真珠星……」
[np]

[r]像是要确认自己心意般……真珠星轻声呢喃道。
[np]

[CG cgno=24 sabunno=01]

[playcv storage="supica_supica_00780_018.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一……喜欢真珠星……」
[np]

[character name="ryuichi"]
【龙一】[r]「别、别一直重复说啊……」
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_019.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一喜欢真珠星……龙一喜欢真珠星……♪」
[np]

[character name="ryuichi"]
【龙一】[r]「喂、喂喂……」
[np]

[r]真珠星一边摇晃着紧抓不放的手臂，一边开心地说道。
[np]

[r]然后……
[np]

[CG cgno=24 sabunno=01]

[playcv storage="supica_supica_00780_020.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「真珠星也……最喜欢龙一了……♪」
[np]

[r]重新扑进我怀里的真珠星，带着灿烂的笑容对我说道。
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_021.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……紧——……♪」
[np]

[character name="ryuichi"]
【龙一】[r]「真、真珠星……」
[np]

[r]虽然现在周围没有人……但被这么大胆地贴上来，还是有点不好意思。
[np]

[r]不过……
[np]

[playcv storage="supica_supica_00780_022.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……呵呵……♪」
[np]

[r]可是……看到这个比闪耀的一等星还要耀眼的笑容……我感受到的难为情瞬间烟消云散。
[np]

[character name="ryuichi"]
【龙一】[r]「喜欢的星星啊……那我也努力找找看吧」
[np]

[CG cgno=24 sabunno=02]

[playcv storage="supica_supica_00780_023.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「真的……？」
[np]

[character name="ryuichi"]
【龙一】[r]「嗯。反正今后还要和真珠星一起看星空……到时候慢慢找就好了」
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_024.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……龙一也要找……和真珠星一起找……」
[np]

[character name="ryuichi"]
【龙一】[r]「要帮我吗？」
[np]

[CG cgno=24 sabunno=01]

[playcv storage="supica_supica_00780_025.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「当然要帮！」
[np]

[r]爽快答应我的请求后，真珠星重新紧紧抱住了我的手臂。
[np]

[playcv storage="supica_supica_00780_026.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「真珠星、和龙一在一起……」
[np]

[r]是啊。不用着急，迟早一定能找到的。
[np]

[r]毕竟，我和真珠星，今后也——
[np]

[CG cgno=24 sabunno=04]

[playcv storage="supica_supica_00780_027.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「今后也要，永远永远……在一起♪」
[np]

;//■回想シーンの戻し処理 該当のフラグ番号を入れる
[SCENEFLG no=23]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="fin_supica.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[waitclick]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=3000]
[wt]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[wait time="2000"]

[jump storage="title.ks"]