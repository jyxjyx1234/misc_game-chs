[SCENESTART file=aoi_00360.ks]
;//aoi_00360
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

;//TIME:昼
;//日付:7/15(木)
;//CH:竜一,seifuku
;//CH:爽史,seifuku

[character name="ryuichi"]
【龙一】[r]「……好」
[np]

[r]班会结束后的放学时分，教室里喧闹起来。
[np]

[r]为了消除和葵之间的尴尬关系，只能直接和她谈谈了！
[np]

[character name="ryuichi"]
【龙一】[r]「……咦？」
[np]

[r]虽然这么想着，打算在打工前的有限时间里找她谈谈……
[np]

[character name="ryuichi"]
【龙一】[r]「已经走了……！」
[np]

[sousi storage="A_seifuku_M A_6_M"]
[playcv storage="sousi_aoi_00360_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_6_FACE_seifuku"]
【爽史】[r]「龙一，怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？啊，不……我在想葵那家伙是不是已经回去了」
[np]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_aoi_00360_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「啊，确实不在了……今天她看起来身体不太舒服，可能想早点回去吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……要是那样的话，倒也好」
[np]

[char_erase name="sousi"]

[r]不过，不用着急……我和葵还住在同一个房间呢。
[np]

[r]在今天结束之前，有的是机会找她谈……对吧。
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

;//JUMP:aoi_00370
[jump storage="scenario/aoi/aoi_00370.ks"]