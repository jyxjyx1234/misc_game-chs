[SCENESTART file=aoi_00040.ks]
;//aoi_00040
;//BG:bg03_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/6(月)
;//CH:葵,pajyama

[aoi storage="A_pajyama_M A_5_M"]
[playcv storage="aoi_aoi_00040_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_pajyama"]
【葵】[r]「呼……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]洗完澡换上睡衣回到房间。
[np]

[r]结果之后到晚饭时间为止，还是被迫复习考试内容……
[np]

[r]虽然心里明白这是必须做的事……倒也没什么不好……
[np]

[aoi storage="B_pajyama_M B_9_M"]
[playcv storage="aoi_aoi_00040_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_pajyama"]
[char_jump name=aoi]
【葵】[r]「唔……」
[np]
[FACEHIDE]

[r]回顾今天一整天……又想起了早上澪音说的话。
[np]

[r]说我和龙一私奔什么的……这、这到底要怎么理解才会得出这种结论啊……！
[np]

[r]所谓私奔，也就是说那个……
[np]

[aoi storage="C_pajyama_M CD_5_M"]
[playcv storage="aoi_aoi_00040_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_pajyama"]
【葵】[r]「不、不行不行……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]越想越觉得脸颊发烫，把脸埋进枕头里。
[np]

[r]脸、脸发烫是因为刚洗完澡……才不是觉得害羞什么的……
[np]

[aoi storage="A_pajyama_M A_5_M"]
[playcv storage="aoi_aoi_00040_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_pajyama"]
【葵】[r]「……可是……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]如果…假设…
[np]

[r]假如龙一真的是我所想象的那种人…假如他真的如我所料…
[np]

[r]那也就是说…龙一对我来说…对我来说的…
[np]

[aoi storage="B_pajyama_M B_8_M"]
[playcv storage="aoi_aoi_00040_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_pajyama"]
【葵】[r]「…！我、我要睡了！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

;//消灯差分
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_04.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]关掉灯，用被子从头到脚裹住自己。
[np]

[r]考、考试前想这些多余的事可不好…！晚安！
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

;//JUMP:aoi_00020
[jump storage="scenario/aoi/aoi_00050.ks"]