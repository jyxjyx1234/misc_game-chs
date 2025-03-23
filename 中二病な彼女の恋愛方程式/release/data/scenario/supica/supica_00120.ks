[SCENESTART file=supica_00120.ks]
;//supica_00120
;//BG:bg04_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/8(水)
;//CH:すぴか,pajyama

;//すぴか視点
[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00120_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「………………」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]龙一……神原、龙一……
[np]

[r]与身为地球观测者的真珠星……产生共鸣之人……。
[np]

[r]昨天……真珠星还帮我穿制服……千圣却不愿意这样做……。
[np]

[r]而且为了让真珠星不用走路，还背着我前行……
[np]

[r]今天也继续……帮我提行李，担任真珠星的贴身护卫……
[np]

[r]真珠星的事情……让你担心了……
[np]

[r]……嗯……。
[np]

[supica storage="C1_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00120_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……龙一……」
[np]
[FACEHIDE]

[char_erase name="supica"]

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

;//JUMP:supica_00130
[jump storage="scenario/supica/supica_00130.ks"]
