[SCENESTART file=aoi_00450.ks]
;//aoi_00450
;//BG:bg03_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/17(金)
;//CH:竜一,pajyama
;//CH:葵,pajyama
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[character name="ryuichi"]
【龙一】[r]「呜、呜……嗯……」
[np]

[r]一边揉着惺忪的睡眼，一边慢慢撑起身体。
[np]

[character name="ryuichi"]
【龙一】[r]「早上了啊……嘶，好痛……！」
[np]

[r]昨天被葵揍的地方还隐隐作痛……
[np]

[aoi storage="C_pajyama_M CD_5_M"]
[playcv storage="aoi_aoi_00450_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_pajyama"]
【葵】[r]「哦、醒了吗，龙一……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……啊，早啊葵」
[np]

[r]和坐在床上的葵互道早安。
[np]

[character name="ryuichi"]
【龙一】[r]「总觉得……还是有点难为情啊」
[np]

[aoi storage="A_pajyama_M A_9_M"]
[playcv storage="aoi_aoi_00450_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_pajyama"]
【葵】[r]「……是啊」
[np]
[FACEHIDE]

[r]……咦？　怎么好像从回答中感受到一丝微妙的刺……
[np]

[character name="ryuichi"]
【龙一】[r]「难道还在为昨天的事生气？」
[np]

[aoi storage="C_pajyama_M CD_9_M"]
[playcv storage="aoi_aoi_00450_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_pajyama"]
【葵】[r]「才、才没有生气……！」
[np]
[FACEHIDE]

[r]虽然嘴上这么说，但脸颊却鼓得老高……
[np]

[character name="ryuichi"]
【龙一】[r]「对、对不起啦……！　我都这样了，就原谅我吧！」
[np]

[aoi storage="A_pajyama_M A_5_M"]
[playcv storage="aoi_aoi_00450_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_pajyama"]
【葵】[r]「所、所以说，我没生气啦……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道了，下次让你看我在做的样子！这样就算扯平了！」
[np]

[aoi storage="B_pajyama_M B_7_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00450_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_pajyama"]
【葵】[r]「你、你你你！？　你、你在说什么啊！　我才不想看那种东西呢！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那我到底该怎么做……」
[np]

[aoi storage="D_pajyama_M CD_9_M"]
[playcv storage="aoi_aoi_00450_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_pajyama"]
【葵】[r]「都、都说了没生气……！　只是那个……还有点难为情而已……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「总之真的对不起……！」
[np]

[aoi storage="A_pajyama_M A_5_M"]
[playcv storage="aoi_aoi_00450_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_pajyama"]
[char_jump name=aoi]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]看来暂时还得小心对待她……才行啊。
[np]

[char_erase name="aoi"]

;//背景を寮のリビングbg02_01に
;//葵の衣装を制服に
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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

[r]各自换上制服后，在客厅与大家共进早餐。
[np]

[character name="ryuichi"]
【龙一】[r]「终于到了今天的结业式……也就是说，今天开始就是暑假啦……！」
[np]

[momo storage="A_seifuku_M AB_3_M"]
[playcv storage="momo_aoi_00450_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「呵呵，确实是呢」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]虽然各科老师早已布置了假期作业，但现在满脑子都是暑假开始的喜悦。
[np]

[r]本以为只是打工度日的暑假……没想到我这样的人也会有女朋友——
[np]

[mion storage="C_seifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00450_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_seifuku"]
【澪音】[r]「我吃好了……那先走一步」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00450_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「咦，不一起走吗？」
[np]
[FACEHIDE]

[mion storage="A_seifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00450_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_seifuku"]
【澪音】[r]「今天有点急事。而且……」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_8_M"]
[playcv storage="chisato_aoi_00450_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_seifuku"]
【千圣】[r]「……？啊」
[np]
[FACEHIDE]

[r]嗯？什么情况……？
[np]

[char_erase name="chisato mion"]

[momo storage="A_seifuku_M AB_7_M"]
[char_jump name=momo]

[playcv storage="momo_aoi_00450_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「！」
[np]
[FACEHIDE]

[r]接收到澪音学姐的眼神暗示后，桃酱和绫濑突然加快了用餐速度……
[np]

[momo storage="B_seifuku_M AB_8_M"]
[playcv storage="momo_aoi_00450_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「我、我也吃好了！先告辞啦！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[character name="ryuichi"]
【龙一】[r]「哎？连桃酱也要走？」
[np]

;//[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_aoi_00450_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「碗盘等我回来再洗。好了，该走了真珠星！」
[np]
[FACEHIDE]

[supica storage="D_seifuku_M CD_1_M"]
[playcv storage="supica_aoi_00450_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「诶？啊……」
[np]
[FACEHIDE]

[char_erase name="supica"]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00450_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「呵呵……就是这么回事，请两位慢慢享受」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]露出意味深长笑容的澪音学姐，和慌忙把面包塞进嘴里的桃酱……
[np]

[r]而绫濑不容分说地拉起真珠星的手走出玄关。
[np]

[r]最后留下的，只剩我和葵两个人……
[np]

[aoi storage="A_seifuku_M A_4_M"]
[playcv storage="aoi_aoi_00450_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_seifuku"]
【葵】[r]「大家为什么都这么慌张呢……？明明时间还很充裕啊」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00450_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「莫非是要在路上给我设陷阱……！？不妙啊龙一！魔女用操控系的咒语把大家给——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，我觉得……他们是在体贴我们」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00450_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「哎……体贴……？对谁？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就是说……给刚交往的我们独处空间」
[np]

[aoi storage="A_seifuku_M A_8_M"]
[playcv storage="aoi_aoi_00450_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「……！！」
[np]
[FACEHIDE]

[r]说到这个份上，葵似乎终于察觉到了。
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00450_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「哪、哪有……其实上学路上和大家一起走也完全没关系……」
[np]
[FACEHIDE]

[r]确实如葵所说。连我也觉得没必要做到这种程度……
[np]

[r]不过能被大家用这样的目光看待……该怎么说呢，果然还是有点开心又难为情。
[np]

[character name="ryuichi"]
【龙一】[r]「既然如此，我们就领受大家的好意……两人一起上学去吧」
[np]

[aoi storage="A_seifuku_M A_9_M"]
[playcv storage="aoi_aoi_00450_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_seifuku"]
【葵】[r]「……说、说得也是」
[np]
[FACEHIDE]

[char_erase name="aoi"]

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

;//JUMP:aoi_00460
[jump storage="scenario/aoi/aoi_00460.ks"]