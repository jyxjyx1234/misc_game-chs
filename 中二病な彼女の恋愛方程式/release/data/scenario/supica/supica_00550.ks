[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00550.txt]
;//supica_00550
;//BG:bg04_03(消灯)
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/25(土)
;//CH:すぴか,pajyama
;//CH:澪音,sifuku
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]


;//すぴか視点
[supica storage="D_pajyama_M CD2_1_M"]
[playcv storage="supica_supica_00550_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「嗯……嗯嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]……小便……厕所……。
[np]

;//背景を寮のリビングbg02_03に
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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[r]……咦？灯亮着……有谁，还醒着……？
[np]

[mion storage="C_sifuku_M CD1_3_M" trans=false]
[supica storage="C2_pajyama_M CD2_1_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00550_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「哎呀……？」
[np]
[FACEHIDE]

[playcv storage="supica_supica_00550_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「……澪音……？」
[np]
[FACEHIDE]

[char_erase name="supica mion"]
[r]在看电视……？
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_supica_00550_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「抱歉呀，吵醒你了么……」
[np]
[FACEHIDE]

[supica storage="A_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00550_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「没有……真珠星是起床上厕所……」
[np]
[FACEHIDE]

[r]楼梯……慢慢走下来……
[np]

[supica storage="D_pajyama_M CD2_6_M"]
[playcv storage="supica_supica_00550_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_pajyama"]
【真珠星】[r]「澪音……还醒着……？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_supica_00550_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「是啊。为了看本季最推荐的深夜动画，才到客厅来的」
[np]
[FACEHIDE]

[r]动画……。
[np]

[mion storage="D_sifuku_M CD1_4_M"]
[playcv storage="mion_supica_00550_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「虽然在房间用电脑看也不是不行……但这边屏幕更大画质更好，实在忍不住呢」
[np]
[FACEHIDE]

[supica storage="B3_pajyama_M AB2_12_M"]
[playcv storage="supica_supica_00550_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_pajyama"]
【真珠星】[r]「这就是……澪音喜欢的动画……？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_supica_00550_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「嗯，没错。角色们毫不留情地死去，每周都期待谁能活下来的感觉最棒了」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_9_M"]
[playcv storage="mion_supica_00550_013.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「……说着说着正好到了……这个，是我最喜欢的角色」
[np]
[FACEHIDE]

[supica storage="D_pajyama_M CD2_3_M"]
[playcv storage="supica_supica_00550_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_pajyama"]
【真珠星】[r]「最喜欢的……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_supica_00550_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「这种坏女人气质太戳人了。若隐若现的服装既性感，连我们女生看了都心动……」
[np]
[FACEHIDE]

[supica storage="A_pajyama_M AB2_8_M"]
[playcv storage="supica_supica_00550_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_pajyama"]
【真珠星】[r]「……胸部好大……」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_supica_00550_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「是呀……这种尺寸的话，应该可以夹个痛快吧」
[np]
[FACEHIDE]

[supica storage="B3_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00550_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「……夹住？」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_9_M"]
[playcv storage="mion_supica_00550_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_9_FACE_sifuku"]
【澪音】[r]「呵呵……真珠星的尺寸可能有点勉强……不过也会有男人就喜欢这种青涩感吧」
[np]
[FACEHIDE]

[supica storage="C3_pajyama_M CD2_6_M"]
[playcv storage="supica_supica_00550_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_pajyama"]
【真珠星】[r]「……在说什么……？」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_supica_00550_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「听好了真珠星……对男人来说，女人从头顶到脚尖的每个部位，都可能成为他们的兴奋点」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_supica_00550_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「比如说……要是用这胸前的沟壑夹住男人的那个东西，他们肯定会很高兴吧……」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_supica_00550_011.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「不过真珠星还小……换个角度进攻说不定更有效呢」
[np]
[FACEHIDE]

[supica storage="D_pajyama_M CD2_11_M"]
[playcv storage="supica_supica_00550_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_pajyama"]
【真珠星】[r]「……真珠星要去厕所……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_supica_00550_012.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「啊对哦，不好意思」
[np]
[FACEHIDE]

[char_erase name="mion supica"]


;//背景を洗面所bg08に
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

[fadeoutbgm time="1000"]


[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[supica storage="D_pajyama_M CD2_10_M"]
[playcv storage="supica_supica_00550_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_pajyama"]
【真珠星】[r]「……嗯～……？」
[np]
[FACEHIDE]

[supica storage="D_pajyama_M CD2_12_M"]

[r]……夹住？在这里……？
[np]

[r]真珠星虽然一马平川……但是……龙一君会喜欢……？
[np]

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
;//JUMP:supica_00560
[jump storage="scenario/supica/supica_00560.ks"]
