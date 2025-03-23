[SCENESTART file=aoi_00330.ks]
;//aoi_00330
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:7/15(水)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:澪音,seifuku
;//CH:千聖,seifuku

[character name="ryuichi"]
【龙一】[r]「……早上好」
[np]

[chisato storage="B_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00330_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「啊、早……等等、你那表情怎么回事……」
[np]
[FACEHIDE]

[r]第二天早上。绫濑看到我出现在餐桌旁，开口第一句话就那样说道。
[np]

[character name="ryuichi"]
【龙一】[r]「啊……稍微有点、睡眠不足」
[np]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00330_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「是、是吗……？不过、只是有点……就能变成这样，我倒是没想到……」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]洗脸时照镜子，自己都觉得这黑眼圈太夸张了……
[np]

[r]这也没办法吧……！两个人在同一间屋子里，发生了那种事之后……
[np]

[r]这种情况下还能呼呼大睡的神经大条家伙，这世上怎么可能存在啊！
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_aoi_00330_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「啊、早上好真珠星酱」
[np]
[FACEHIDE]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_aoi_00330_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「嗯、早上好……」
[np]
[FACEHIDE]

[char_erase name="supica momo"]

[aoi storage="C_seifuku_M CD_8_M"]
[r]穿过正在打招呼的两人身边，用余光瞥见正在摆放餐具的葵。
[np]

[r]顺带一提，从在房间起床到来到这里，我和葵连像样的对话都没说过一句。
[np]

;//[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_aoi_00330_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「神原君、要在吐司上涂人造黄油吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……麻烦你了」
[np]

;//[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_aoi_00330_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_seifuku"]
【千圣】[r]「了解。葵呢？」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_9_M"]
[playcv storage="aoi_aoi_00330_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_seifuku"]
【葵】[r]「……」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_aoi_00330_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「葵？」
[np]
[FACEHIDE]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00330_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「啊……什、什么？」
[np]
[FACEHIDE]

;//[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_aoi_00330_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「千圣小姐在问、吐司的人造黄油要怎么处理……」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_8_M"]
[playcv storage="aoi_aoi_00330_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_seifuku"]
【葵】[r]「啊、啊啊……嗯、麻烦你了」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00330_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「不光是神原君、连葵都睡迷糊了吗……？」
[np]
[FACEHIDE]

;//[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_aoi_00330_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_seifuku"]
【桃】[r]「难、难不成、昨天两个人玩到很晚之类的……？」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_aoi_00330_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「……！」
[np]
[FACEHIDE]

[r]只是被问到昨天的事、我和葵都不由得冒出冷汗。
[np]

[char_erase name="aoi chisato"]

[character name="ryuichi"]
【龙一】[r]「不……不是那样的……」
[np]

[mion storage="C_seifuku_M CD1_4_M"]
[playcv storage="mion_aoi_00330_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[r]呜……前、前辈的视线……
[np]

[character name="ryuichi"]
【龙一】[r]「有、有什么问题吗……？」
[np]

[mion storage="A_seifuku_M AB1_5_M"]
[playcv storage="mion_aoi_00330_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_seifuku"]
【澪音】[r]「这话应该由我来说才对吧。你们俩该不会是吵架了？」
[np]
[FACEHIDE]

;//[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00330_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「诶……！？」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_5_M"]
[playcv storage="mion_aoi_00330_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_seifuku"]
【澪音】[r]「之前看你们关系变得挺融洽，我还觉得挺有意思的……」
[np]
[FACEHIDE]

[mion storage="C_seifuku_M CD1_4_M"]
[playcv storage="mion_aoi_00330_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「这两三天总觉得相处得有点生硬……发生什么事了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「是、是吗？倒也没什么特别的事……」
[np]

[r]昨天看到葵做那种事……打死我也说不出口啊！
[np]

[mion storage="B_seifuku_M AB1_2_M"]
[playcv storage="mion_aoi_00330_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_seifuku"]
【澪音】[r]「该不会是同住一屋发生了什么不该发生的事吧？」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_8_M"]
[playcv storage="momo_aoi_00330_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「不、不该发生的事……！？」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00330_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「是啊。男女共处一室的话，能做的事情不就那么几种吗？」
[np]
[FACEHIDE]

[momo storage="D_seifuku_M D_10_M"]
[playcv storage="momo_aoi_00330_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_seifuku"]
【桃】[r]「那、那那那、那就是说，那、那个……！～～～！！！」
[np]
[FACEHIDE]

;//[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_aoi_00330_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「桃、桃桃……？你还好吗？」
[np]
[FACEHIDE]

[char_erase name="momo mion"]

[character name="ryuichi"]
【龙一】[r]「你、你们好像误会了什么！我和葵才不是那种关系！对吧，葵！？」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00330_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「呜……！？啊、那个……嗯、不是的……」
[np]
[FACEHIDE]

[r]你这种意味深长的否认方式算什么啊！这样反而更让人怀疑好吧……！
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_aoi_00330_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]话说你每次一看到我的脸就脸红……
[np]

[r]你做出这种反应的话，连我都会跟着害羞起来啊……！
[np]

[char_erase name="aoi"]

[mion storage="C_seifuku_M CD1_4_M" trans=false]
[chisato storage="C_seifuku_M CD_5_M" trans=false]
[momo storage="C_seifuku_M C_7_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00330_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_seifuku"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_4_M"]
[playcv storage="chisato_aoi_00330_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_4_FACE_seifuku"]
【千圣】[r]「……该怎么说呢，这个情况……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_8_M"]
[playcv storage="momo_aoi_00330_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_seifuku"]
【桃】[r]「该、该不会真的……已经……」
[np]
[FACEHIDE]

[mion storage="D_seifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00330_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_seifuku"]
【澪音】[r]「说不定……是真的呢」
[np]
[FACEHIDE]

[char_erase name="mion momo chisato"]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_aoi_00330_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「大家……发生什么事了吗……？」
[np]
[FACEHIDE]

[char_erase name="supica"]

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

;//JUMP:aoi_00340
[jump storage="scenario/aoi/aoi_00340.ks"]