[SCENESTART file=momo_00420.ks]
;//momo_00420
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
[fadeinbgm storage="sound/BGM03.ogg" time=1000]

;//TIME:夜
;//日付:7/16(木)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[satomi storage="D_sifuku_M CD_2_M" trans=false]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="satomi_momo_00420_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「嗯、嗯……嗯——，好吃！果然千圣的蛋包饭配啤酒最棒了！」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_11_M"]
[playcv storage="chisato_momo_00420_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_sifuku"]
【千圣】[r]「圣水小姐，你只是想找借口说这句话吧」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[r]……就算是我，也不是没有过妄想，更不是没期待过那种事。
[np]

[r]第一次见面时就看到那么诱人的隆起部位……作为男人当然会忍不住产生各种妄想吧。
[np]

[playcv storage="aoi_momo_00420_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「龙一，把那边的麦茶递给我」
[np]
[FACEHIDE]

[r]不过，我一直觉得桃酱绝对是不擅长那种事的类型……
[np]

[r]至少我暗自决定过，绝对不主动提起这种话题。
[np]

[playcv storage="aoi_momo_00420_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「喂，龙一……？那边的麦茶……龙一？」
[np]
[FACEHIDE]

[r]但是没想到桃酱居然会主动……用那种方式，对我说出那种话……
[np]

[r]原来桃酱实际上意外地主动——
[np]

[playcv storage="aoi_momo_00420_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「龙一——————！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time=500]
【龙一】[r]「哇啊啊啊！？干、干什么突然这样！！别吓人啊！！」
[np]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_momo_00420_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「突然什么，这已经是第三次叫你了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[r]坐在旁边的葵噘起嘴唇说道。
[np]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_momo_00420_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「刚才明明让你递那边的麦茶，为什么无视我啊！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……对、对不起，我没听见……」
[np]

;//「マスター」でお願いします
[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_momo_00420_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「咕……就因为我这个「契约者」换成了桃，连前主人的命令都懒得听了吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是这样的……」
[np]

[char_erase name="aoi"]

[mion storage="B_sifuku_M AB1_3_M" trans=false]
[satomi storage="A_sifuku_M A_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00420_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「这也没办法呀葵。龙一现在满脑子都是桃的事呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜……」
[np]

[satomi storage="B_sifuku_M AB_2_M"]
[playcv storage="satomi_momo_00420_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊哈哈，这也是当然的吧。毕竟前天？你们才刚开始交往嘛！」
[np]
[FACEHIDE]

[r]无论是比喻还是什么，现在满脑子都是和桃酱未来的事情……差点因为前辈的话动摇了。
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_momo_00420_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「所以你们两个……已经亲热过了吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
[quake time=500]
【龙一】[r]「噗——————————————————！！！！！」
[np]

[char_erase name="mion satomi"]

[supica storage="A_sifuku_M AB_5_M"]
[playcv storage="supica_momo_00420_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_sifuku"]
【真珠星】[r]「呃…………」
[np]
[FACEHIDE]

[r]啊……我、我喷出来的麦茶溅到真珠星身上了……
[np]

[supica storage="B3_sifuku_M AB_4_M"]
[playcv storage="supica_momo_00420_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……愚蠢的人类啊…你是想向宇宙观测者挑起战争吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「对、对不起真珠星！是我不对！但刚才真的是意外！我不是故意的……！」
[np]

[supica storage="C1_sifuku_M CD_5_M"]
[playcv storage="supica_momo_00420_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_5_FACE_sifuku"]
【真珠星】[r]「消灭……以主之名…将龙一这个个体彻底消灭……！」
[np]
[FACEHIDE]

[momo storage="A_sifuku_M AB_8_M"]
[playcv storage="momo_momo_00420_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]
【桃】[r]「冷、冷静点真珠星酱！前辈也说了不是故意的……待会儿洗澡时会帮你好好洗干净的，好吗？」
[np]
[FACEHIDE]

[supica storage="B1_sifuku_M AB_4_M"]
[playcv storage="supica_momo_00420_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……看在桃的面子上，暂且饶过你……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「谢、谢谢您！实在太感谢了！！」
[np]

[char_erase name="supica momo"]

[r]这次确实百分之百是我的错……只能跪地求饶了。
[np]

[mion storage="A_sifuku_M AB1_2_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="mion_momo_00420_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「那么把话题转回来，你们两个已经——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你以为是谁害得我把麦茶喷出来的啊！！！」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_momo_00420_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「哎呀，那不是你自己的责任吗？所以到底怎么样了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这怎么说呢……我们才交往第二天啊？怎、怎么可能做那种事啊……！」
[np]

[momo storage="C_sifuku_M C_10_M"]
[playcv storage="momo_momo_00420_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_sifuku"]
【桃】[r]「就、就是啊……再、再怎么想也太早了点吧……！」
[np]
[FACEHIDE]

[r]桃酱！那里是不可以咬的地方啊！！
[np]

[chisato storage="B_sifuku_M AB_5_M"]
[playcv storage="chisato_momo_00420_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「话说前辈，吃饭的时候问这种事情也……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_momo_00420_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「哎呀，抱歉啦……因为有点在意，就不小心……」
[np]
[FACEHIDE]
[r]嘴上说着反省的话，脸上却挂着狡黠的笑容，完全看不出悔意。
[np]

[r]虽然觉得应该不至于……但该不会是察觉到我们俩之间的气氛，才故意抛出这么直白的问题……
[np]

[r]……越想越觉得可怕，还是别继续深究了。就这么办吧。
[np]

[char_erase name="mion chisato momo"]

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

[jump storage="scenario/momo/momo_00430.ks"]