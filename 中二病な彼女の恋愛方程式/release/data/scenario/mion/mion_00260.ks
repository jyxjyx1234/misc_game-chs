[SCENESTART file=mion_00260.ks]
;//mion_00260
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:昼
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:澪音,sifuku
;//CH:聖水,sifuku

[satomi storage="C_sifuku_M CD_3_M"]
[playcv storage="satomi_mion_00260_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_3_FACE_sifuku"]
【圣水】[r]「哦哦哦哦！这个好厉害！说是两分钟就能冰镇啤酒的窍门！！」
[np]
[FACEHIDE]

[r]综艺节目里出现了自己喜欢的冷知识，圣水小姐正目不转睛地盯着屏幕。
[np]

[char_erase name="satomi"]

[r]和兴致勃勃的圣水小姐形成鲜明对比，我从早上开始就情绪低迷。
[np]

[r]既没有干劲做任何事……但要在房间里和前辈独处又太尴尬了。
[np]

[r]偏偏这种日子不用打工……没办法。出去散个步吧。
[np]

[character name="ryuichi"]
【龙一】[r]「我出去一下」
[np]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_mion_00260_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊那顺便买啤酒回来！要常温的！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「让学生买酒，您作为学生宿舍管理员这样合适吗……」
[np]

[satomi storage="A_sifuku_M AB_10_M"]
[playcv storage="satomi_mion_00260_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「不要在意细节啦！给，不用找零！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、真的假的……就给２５０日元啊！这种时候应该给千元钞才对吧！」
[np]

[char_erase name="satomi"]

[r]虽然嘴上抱怨着，我还是穿好了鞋……
[np]

;//背景を寮の外bg01_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[character name="ryuichi"]
【龙一】[r]「好热……」
[np]

[r]刚踏出玄关的瞬间，惊人的热浪扑面而来，我不由得皱起了脸。
[np]

[r]毕竟是自己决定要出门的，倒没有打退堂鼓的意思……不过……还是有点后悔了。
[np]

[r]那么，先去车站那边——
[np]

[playcv storage="mion_mion_00260_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「等一下」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…啊？」
[np]

[r]身后传来呼唤我的声音。绝对不可能听错，这是……
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]转身看到站在那里的澪音学姐时，汗珠顺着脸颊滑落下来。
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00260_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「你要去哪？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「去哪…就是散个步。顺便帮圣水姐买点东西……」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00260_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「是么。那正好，来帮我跑个腿吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_mion_00260_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「快点，跟我来」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、等……！？」
[np]

[char_erase name="mion"]

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

;//背景を駅前bg15_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="sound/BGM08.ogg" time=1000]

[mion storage="C_sifuku_M CD1_1_M"]
[r]光是看着就让人冒汗的漆黑衣装。
[np]

[r]学姐飒爽前行时随风飘动的衣摆，让我不由自主跟了上去……
[np]

[char_erase name="mion"]

;//背景をゲームセンターbg20に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg20_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「……街机厅？」
[np]

[r]来到这个意料之外的地方，我下意识脱口而出。
[np]

[r]随后学姐理所当然地绕过入口处的抓娃娃机区域……
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00260_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「就是这台」
[np]
[FACEHIDE]

[r]径直走向摆满麻将和模拟游戏的角落，在问答游戏机前坐了下来。
[np]

[character name="ryuichi"]
【龙一】[r]「原来如此，是玛吉瓦卡啊」
[np]

[mion storage="D_sifuku_M CD1_3_M"]
[playcv storage="mion_mion_00260_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「哦？你知道这个？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「街机厅嘛，我也算常客了」
[np]

[r]《这题真的搞不懂》，简称玛吉瓦卡。大概是街机厅里最热门的问答游戏了吧？
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00260_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「我负责玩这个，龙一你就在旁边看着」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……啊？」
[np]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_mion_00260_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「一个人玩太无聊了，所以叫你来当个陪客。仅此而已」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]要是没发生今早的事，可能也不会多想……但现在感觉有点微妙啊
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_mion_00260_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「好了……」
[np]
[FACEHIDE]

[r]学姐刷完卡后，游戏数据读取完毕
[np]

[r]输入密码跳过开场动画后……
[np]

[character name="ryuichi"]
【龙一】[r]「呜哇……」
[np]

[r]喂喂……究极王者不是仅次于顶级的段位吗……！？
[np]

[r]听说这可是泡在街机厅的废人们才能达到的境界……
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_mion_00260_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「哼哼……」
[np]
[FACEHIDE]

[r]面对难掩震惊的我，澪音前辈得意地笑了。
[np]

[r]然后……
[np]

[r]—地球上存在—
[np]

[mion storage="B_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00260_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「呵！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/20350.ogg"]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「太快了吧！？」
[np]

[r]看到第一道判断题的题干「地球上存在」就秒选○……居然还答对了！
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_mion_00260_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「这道题我都快看吐了……连陷阱选项都没有的基础题」
[np]
[FACEHIDE]

[r]前辈摆出一副理所当然的模样，继续势如破竹地解答着题目。
[np]

[r]我能看懂的问题，用一只手都数得过来……
[np]

[mion storage="C_sifuku_M CD1_9_M"]
[playcv storage="mion_mion_00260_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「真是……白天的对手就只有这种水平吗，毫无挑战性」
[np]
[FACEHIDE]

[r]通过网络筛选淘汰全国玩家，最终留下四名顶尖选手进行决战。
[np]

[r]看预选赛的情况，前辈夺冠应该十拿九稳了。
[np]

[r]不过……为什么突然把我带来游戏厅啊……？总不会是为了炫耀这个才……
[np]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_mion_00260_014.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……啊咧，怎么了？」
[np]

[r]注意到前辈原本流畅操作的手指突然停滞。难道遇到超纲难题了……？
[np]

[r]「击球员击出的球在界内区弹跳后进入观众席时，将记作○○○○○○二垒安打」
[np]

[r]哦，棒球题啊……这种程度我也能看懂。
[np]

[character name="ryuichi"]
【龙一】[r]「能让我试试吗？」
[np]

[mion storage="D_sifuku_M CD1_7_M"]
[playcv storage="mion_mion_00260_015.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「哎？啊……」
[np]
[FACEHIDE]

[r]在屏幕上显示的键盘输入「自动进二垒」后按下确定键。
[np]

[playse buf=5 storage="sound/20350.ogg"]
[wait time="500"]

[r]虽然比其他玩家慢了很多，但勉强获得了正确积分。
[np]

[character name="ryuichi"]
【龙一】[r]「前辈，刚才那道题您没看懂吗？」
[np]

[mion storage="C_sifuku_M CD1_8_M"]
[playcv storage="mion_mion_00260_016.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_sifuku"]
【澪音】[r]「呜……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「您之前明明保持着近乎完美的成绩……不过……难道您其实不擅长体育相关的题目……？」
[np]

[mion storage="B_sifuku_M AB1_4_M"]
[playcv storage="mion_mion_00260_017.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_4_FACE_sifuku"]
【澪音】[r]「咕……咕努努努……」
[np]
[FACEHIDE]

[r]或许是因为早上的事，我的措辞里带了些许挑衅的意味。
[np]

[r]这么想着看向澪音前辈时，发现她正抿着嘴角的ヘ字型唇线，将视线转回屏幕。
[np]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_mion_00260_018.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「差不多该认真起来了吧……可以吗？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_L AB1_3_L"]
[character name="ryuichi"]
【龙一】[r]「哇……！」
[np]

[r]澪音前辈试图往椅子中间挪动，导致我们的身体紧贴在一起。
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]等等、这……！胸、胸正紧紧贴着啊……！？
[np]

[character name="ryuichi"]
【龙一】[r]「前、前辈……！？」
[np]

[mion storage="B_sifuku_L AB1_1_L"]
[playcv storage="mion_mion_00260_019.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「安静点。我要集中精神」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那、我还是站起来吧……」
[np]

[mion storage="D_sifuku_L CD1_3_L"]
[playcv storage="mion_mion_00260_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「坐下」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么！？」
[np]

[r]虽然我这样回应，但此刻的前辈并没有回答。
[np]

[r]怎么看都像是故意逞强的语气……啊好吧，我知道了！
[np]

[r]既然你都这样了，我也要充分感受这柔软的隆起……
[np]

[mion storage="A_sifuku_L AB1_1_L"]
[playcv storage="mion_mion_00260_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「呃、这是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等……」
[np]

[r]这个人明显是故意贴过来的……！不管怎么说，只是坐在旁边的话这也太不自然了……！
[np]

[r]被、被这么露骨地顶着的话，股间都要发烫了……！
[np]

[mion storage="D_sifuku_L CD1_7_L"]
[playcv storage="mion_mion_00260_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「啊……」
[np]
[FACEHIDE]

[r]从这细微的悲鸣……来判断，可能是选错了选项。
[np]

[playse buf=5 storage="sound/20060.ogg"]
[wait time="500"]

[r]你看吧，谁让你老想着挑逗我……
[np]

[mion storage="C_sifuku_L CD1_9_L"]
[playcv storage="mion_mion_00260_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「唔……都、都怪龙一害我弄错了……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我！？我做什么了啊！」
[np]

[r]前辈没有回答我的问题，而是拼命解答剩下的题目。
[np]

[r]虽然她的侧脸看起来微微泛红……难道是在害羞吗……
[np]

[r]昨天也是，明明自己主动展示换衣，却又显得害羞……而此刻也——
[np]

[mion storage="B_sifuku_L AB1_8_L"]
[playcv storage="mion_mion_00260_024.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_sifuku"]
【澪音】[r]「……」
[np]
[FACEHIDE]

[r]前辈紧咬嘴唇，不甘心地瞪着屏幕。这时，画面上显示着……
[np]

[r]四人中排名第三的败北字样。
[np]

[mion storage="A_sifuku_M AB1_9_M"]
[playcv storage="mion_mion_00260_025.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「……再来一局」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？等、等一下……」
[np]

[char_erase name="mion"]

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

[jump storage="scenario/mion/mion_00270.ks"]