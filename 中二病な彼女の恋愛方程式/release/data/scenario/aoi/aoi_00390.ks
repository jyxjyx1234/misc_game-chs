[SCENESTART file=aoi_00390.ks]
;//aoi_00390
;//BG:bg03_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/15(水)
;//CH:竜一,sifuku
;//CH:葵,pajyama

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[r]与澪音前辈散步结束后，我坚定了告白的决心回到宿舍……
[np]

[r]经过数次敲门后试着打开房门……室内依然和方才一样漆黑一片。
[np]

[r]不过仔细看被子有些隆起……原来如此，葵已经睡了啊。
[np]

[character name="ryuichi"]
【龙一】[r]「……那就明天吧」
[np]

[r]这份心意要传达出去的话，自然是越早越好。
[np]

[r]这么想着的我重新坚定决心……做好沐浴准备后离开了房间。
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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//葵視点
[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00390_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[r]龙一他……是去洗澡了吗……
[np]

[r]从学院回来后，和桃制定了周密的计划……反复练习了很多很多次。
[np]

[r]已经没问题了……明天一定要告诉龙一。
[np]

[r]我的……我的这份心意……
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

;//JUMP:aoi_00400
[jump storage="scenario/aoi/aoi_00400.ks"]