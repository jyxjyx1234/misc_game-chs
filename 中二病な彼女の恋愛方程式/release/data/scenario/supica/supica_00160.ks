[SCENESTART file=supica_00160.ks]
;//supica_00160
;//BG:bg04_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,pajyama
;//CH:すぴか,pajyama

[character name="ryuichi"]
【龙一】[r]「……嗯……」
[np]

[r]阳光从窗户照射进来，我被迫无奈地起床了。
[np]

[r]昨晚真珠星说的那句话……她说她其实想那样……至今还在我脑海里挥之不去……
[np]

[r]老实说，明明是考试的最后一天，状态却糟糕透顶。
[np]

[r]再加上讨论是否同居和搬运行李的事，连学习的时间都没挤出来……
[np]

[r]看来暑假要做好补课的觉悟了……
[np]

[character name="ryuichi"]
【龙一】[r]「喂——真珠星，快起来，起来啦——」
[np]

[playcv storage="supica_supica_00160_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯……唔嗯……」
[np]
[FACEHIDE]

[r]我轻轻摇晃着大福般蓬松的毛毯隆起，同时呼唤真珠星。
[np]

[r]既然同居生活已经开始了，早上叫醒她自然成了我的职责……
[np]

[character name="ryuichi"]
【龙一】[r]「再不快点起来就要迟到……」
[np]

[playcv storage="supica_supica_00160_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……哈啊……」
[np]
[FACEHIDE]

[r]等等，我现在什么都没想就打算叫醒她……
[np]

[r]要是这次又像之前那样只穿内裤睡觉的话——
[np]

[playcv storage="supica_supica_00160_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「嗯～～……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「！！」
[np]

[r]眼前的被团刚有动静，我就下意识绷紧身体进入戒备状态……
[np]

[supica storage="D_pajyama_M CD2_4_M"]
[playcv storage="supica_supica_00160_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「早……安……龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「早、早安」
[np]

[r]太好了……今天似乎好好穿着睡衣呢。
[np]

[character name="ryuichi"]
【龙一】[r]「那我去洗脸了……真珠星你也换上制服，准备去学园——」
[np]

[supica storage="B1_pajyama_L AB2_1_L"]
[playcv storage="supica_supica_00160_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「帮我穿……制服」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「………………」
[np]

[r]正要去洗脸的我，被真珠星的手拽住了衣角，不停地拉扯。
[np]

[supica storage="D_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00160_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「龙一……制服……」
[np]
[FACEHIDE]

[r]那只手虽然如孩童般娇小，却传递出我不答应要求就绝不松手的强烈意志……
[np]

[character name="ryuichi"]
【龙一】[r]「……好好好」
[np]

[char_erase name="supica"]

[r]结果在帮忙换衣服的过程中，终究还是看到了真珠星的裸体。
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

;//JUMP:supica_00170
[jump storage="scenario/supica/supica_00170.ks"]
