[SCENESTART file=aoi_00160.ks]
;//aoi_00160
;//BG:bg03_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/9(木)
;//CH:葵,pajyama

[aoi storage="C_pajyama_M CD_1_M"]
[playcv storage="aoi_aoi_00160_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_pajyama"]
【葵】[r]「咚……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[wait time="500"]
[playse buf=5 storage="sound/10010.ogg"]
[quake time="500"]
[wait time="500"]

[r]从浴室回到房间后，猛地倒在了床上。
[np]

[r]哈啊……没想到吃饭时喝了麦茶……居然会做出那种事……
[np]

[aoi storage="B_pajyama_M B_10_M"]
[playcv storage="aoi_aoi_00160_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_10_FACE_pajyama"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]当时的我……听到圣水说的「间接接吻」这个词……
[np]

[r]然后想起今天回家路上……和龙一发生的那件事……结果突然就害羞得不行……
[np]

[aoi storage="A_pajyama_M A_9_M"]
[playcv storage="aoi_aoi_00160_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_pajyama"]
【葵】[r]「……呜呜……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]不知为何，最近一直都是这种感觉……仿佛在浓雾中徘徊一般……
[np]

[r]到底是从什么时候开始这样的……难道说都是因为间接接吻吗……？
[np]

[r]现在也很奇怪……只要想到龙一的事……
[np]

[r]身体就变得燥热……胸口开始怦怦直跳……
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00160_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「这是……昨天桃说的……」
[np]
[FACEHIDE]

[r]难道说……这就是恋爱……？我对于龙一……
[np]

[aoi storage="C_pajyama_M CD_9_M"]
[playcv storage="aoi_aoi_00160_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_pajyama"]
【葵】[r]「这种事情……怎么说得出口……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]我究竟是纯粹地将龙一当作异性来在意……
[np]

[r]还是因为怀疑当年那个回忆中的男孩可能就是龙一，所以才会这么在意……
[np]

[r]呜……明明是自己的事情自己却搞不明白……这到底是怎么回事啊……
[np]

[character name="ryuichi"]
【龙一】[r]「……干脆直接去问本人试试看……」
[np]

[r]对……去问问龙一还记不记得以前的事……
[np]

[r]可是，如果发现不是同个人的话……到时候该怎么办……？
[np]

[aoi storage="A_pajyama_M A_10_M"]
[playcv storage="aoi_aoi_00160_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_10_FACE_pajyama"]
【葵】[r]「嗯～……」
[np]
[FACEHIDE]

[r]现在才开始烦恼有什么用！
[np]

[r]不管怎样，为了消除这种朦胧不清的感觉，这是最直接的办法！
[np]

[r]啊、明天……直接去问问龙一吧……！
[np]

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

;//JUMP:aoi_00170
[jump storage="scenario/aoi/aoi_00170.ks"]