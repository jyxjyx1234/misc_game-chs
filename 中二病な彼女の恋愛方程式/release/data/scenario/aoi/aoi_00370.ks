[SCENESTART file=aoi_00370.ks]
;//aoi_00370
;//BG:bg02_03

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
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/15(水)
;//CH:竜一,sifuku
;//CH:澪音,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「我吃饱了，谢谢款待」
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_aoi_00370_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「好啦好啦，招待不周啦。不过话说回来，这些可不是我做的哦」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]从打工处回来后，吃完了事先准备好的晚饭。
[np]

[r]确实，做饭的可能是绫濑或桃酱吧……不过帮忙盛汤、加热配菜的是圣水。
[np]

[r]那么……
[np]

[r]边洗自己用过的餐具，边思考接下来的事。
[np]

[r]回到葵的房间，先独处片刻……然后由我主动开口。
[np]

[r]「最近总觉得我们之间有点生疏……应该没有这回事吧？」
[np]

[r]不行，这样葵肯定会附和着结束话题！应该更积极地提出疑问……
[np]

[r]不对，这种把答案抛给葵的提问方式有问题！这种时候才更需要身为男人的我……
[np]

[r]……就在这般胡思乱想中洗完餐具，我走上楼梯回到房间。
[np]

;//\SEノック音
[wait time="1000"]
[playse buf=5 storage="sound/00690.ogg"]
[wait time="1500"]

[character name="ryuichi"]
【龙一】[r]「……葵？」
[np]

[r]因为最近刚犯了错，所以吸取教训好好敲门。
[np]

[r]可是等了好一会儿也没反应。
[np]

;//\SEノック音
[wait time="1000"]
[playse buf=5 storage="sound/00690.ogg"]
[wait time="1500"]

[character name="ryuichi"]
【龙一】[r]「葵……不在吗？」
[np]

[r]考虑到她可能没听见，又稍微用力敲了敲门……但还是没有回应。
[np]

[r]也就是说，不在房间里……？那进去应该没关系吧……？
[np]

;//背景を葵の部屋bg03_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「……嗯，看来没问题」
[np]

[r]紧张地推开门，房间里一片漆黑。
[np]

[r]床上也没有动静，看来是外出了……总觉得有点扫兴呢。
[np]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[mion storage="A_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00370_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「哎呀龙一君，已经回来了呀」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、我回来了，澪音前辈」
[np]

[r]就在我回来的同时，澪音前辈也从房间里出来了。
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00370_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「已经吃过饭了吗？洗澡了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「晚饭刚刚才吃过。澡还没洗……啊对了前辈，你知道葵在哪里吗？」
[np]

[mion storage="B_sifuku_M AB1_7_M"]
[playcv storage="mion_aoi_00370_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「葵？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是的。我刚才去房间看过，好像不在……」
[np]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_aoi_00370_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「葵的话，回来之后好像一直待在桃的房间里呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「去桃酱的房间……？」
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00370_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「要是有急事的话，我可以动用魔女之力把门撬开……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不用！真的不用！不是什么急事！」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_aoi_00370_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「这样啊……话说龙一君，现在有空吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「时间吗……？嗯，我有空的」
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00370_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那要不要和我稍微散个步？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……散步？和澪音前辈一起……？」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_aoi_00370_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「是啊。难道对陪我这件事不满意吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、虽然没那种不满的意思……」
[np]

[mion storage="D_sifuku_M CD1_2_M"]
[playcv storage="mion_aoi_00370_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「那就这么定了，走吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、等一下……」
[np]

[char_erase name="mion"]

[r]这种时间散步……难道也是魔女的习惯吗？
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

;//JUMP:aoi_00380
[jump storage="scenario/aoi/aoi_00380.ks"]