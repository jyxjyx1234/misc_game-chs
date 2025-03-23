[SCENESTART file=bad_00010.txt]
;//bad_00010
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

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
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:8/1(土)
;//CH:竜一,sifuku
;//CH:聖水,sifuku

[r]……８月１日，星期六。
[np]

[r]考试结束，结业典礼也落幕了……
[np]

[r]虽然经历了不少波折，但我最终还是被允许留在伏木庄，和大家一起迎来了暑假。
[np]

[r]说是这么说……！
[np]

[character name="ryuichi"]
【龙一】[r]「今天一定要说出来……一定要说出来啊！！」
[np]

[r]当初入住时，说好暑假前就会修好的房间，到现在连半点要施工的迹象都没有……
[np]

[r]今天也和往常一样，我在那个牢笼中理所当然地醒来了。
[np]

[r]但是，已经忍到极限了……！既然都八月了，今天必须跟那个懒散管理员说清楚！
[np]

[r]下定决心的我，走向门前——
[np]

;//ドア越し
;//小声
[playcv storage="satomi_bad_00010_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_8_FACE_sifuku"]
【圣水】[r]「嗯……嗯……」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[r]怎么回事？刚才好像听见圣水小姐在房里的声音……
[np]

;//ドア越し
;//小声
[playcv storage="satomi_bad_00010_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
【圣水】[r]「啊……啊……嗯、嗯……」
[np]
[FACEHIDE]


[r]而且听起来像是呻吟声……呃，不要紧吧？
[np]

[r]仔细一看房门虚掩着……虽然很抱歉，但请允许我观察下里面的状况——
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

;//JUMP:bad_00020
[jump storage="scenario/bad/bad_00020.ks"]