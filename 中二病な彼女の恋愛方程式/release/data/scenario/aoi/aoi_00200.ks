[SCENESTART file=aoi_00200.ks]
;//aoi_00200
;//BG:bg01_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/12(日)
;//CH:竜一,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「那我出发了！」
[np]

[satomi storage="A_sifuku_M AB_3_M"]
[playcv storage="satomi_aoi_00200_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「好嘞～要为了人家努力赚钱回来哦～♪」
[np]
[FACEHIDE]

[char_erase name="satomi"]

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]我心中默默反驳道「绝不是为了你」，随后朝车站方向走去。
[np]

[r]前几天终于结束了考试，这个双休日已经安排全天打工计划。
[np]

[r]为了尽情享受暑假，必须努力赚钱才行……！
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景をスーパーbg19に
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="700"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「大家早——」
[np]

[r]从正门进入超市，与收银台的阿姨们互相问候。
[np]

;//★＠
[playcv storage="obaa_aoi_00200_001.ogg" name="women"]
[character name="women"]
【大婶】[r]「哎呀，好久不见啊龙一。考试已经结束了吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「是的，所以今天会全力工作的！」
[np]

;//★＠
[playcv storage="obaa_aoi_00200_002.ogg" name="women"]
[character name="women"]
【大婶】[r]「哎呀真可靠♪　今天店长不在，搬货之类的体力活就拜托你啦」
[np]

[character name="ryuichi"]
【龙一】[r]「交给我吧……话说，店长不在吗？」
[np]

;//★＠
[playcv storage="obaa_aoi_00200_003.ogg" name="women"]
[character name="women"]
【大婶】[r]「据说是请了暑假去海外旅行啦」
[np]

[character name="ryuichi"]
【龙一】[r]「啊，原来是这样」
[np]

;//★＠
[playcv storage="obaa_aoi_00200_004.ogg" name="women"]
[character name="women"]
【大婶】[r]「虽然不记得目的地了，但他说要打倒鳄鱼，用鳄鱼皮做手提包送给太太当礼物什么的」
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]如今虽然不会为这种行径感到惊讶了…但这难道不会触犯法律吗……？
[np]

;//★＠
[playcv storage="obaa_aoi_00200_005.ogg" name="women"]
[character name="women"]
【大婶】[r]「总之就是这么回事，今天就拜托你啦龙一！」
[np]

[character name="ryuichi"]
【龙一】[r]「好的，请多指教……！」
[np]

[r]好，今天也要努力工作！
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

;//JUMP:aoi_00210
[jump storage="scenario/aoi/aoi_00210.ks"]