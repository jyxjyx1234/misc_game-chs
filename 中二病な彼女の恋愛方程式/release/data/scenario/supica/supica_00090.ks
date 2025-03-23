[SCENESTART file=supica_00090.ks]
;//supica_00090
;//BG:bg02_03
[HIDESYSTEMMENU]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/8(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]然后……
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[SYSTEMMENU]

[satomi storage="A_sifuku_M AB_1_M"]
[playcv storage="satomi_supica_00090_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「快吃吧吃吧！我要开动啦！」
[np]
[FACEHIDE]

;//合わせ
;//合わせ未処理、最後に処理
[char_erase name="satomi"]

[aoi storage="C_tokushu_M CD_2_M" relx= -100 trans=false]
[momo storage="A_sifuku_M AB_1_M" relx= 0 trans=false]
[mion storage="D_sifuku_M CD1_1_M" relx= 100 trans=false]
[char_trans]

[playcv storage="mix_supica_001.ogg" name="women"]
[character name="women"]
【葵・桃・澪音】[r]「我开动了！」
[np]
[FACEHIDE]

;//合わせ
;[momo storage="A_sifuku_M A_1_M"]
;[character name="momo"]
;[FACEVIEW storage="momo_AB_1_FACE"]
;【もも】[r]「いただきます」
;[np]
;[FACEHIDE]

;//合わせ
;[character name="mion"]
;[FACEVIEW storage="mion_AB_1_FACE"]
;【澪音】[r]「いただきます」
;[np]
;[FACEHIDE]

[char_erase name="mion momo aoi"]

[r]和真珠星一起去买的食材，此刻已化作美味佳肴摆满餐桌。
[np]

[chisato storage="C_sifuku_M CD_1_M" relx= -100 trans=false]
[momo storage="A_sifuku_M AB_3_M" relx= 0 trans=false]
[satomi storage="A_sifuku_M AB_2_M" relx= 100 trans=false]
[char_trans]

[playcv storage="satomi_supica_00090_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「嗯嗯！？这个浓稠勾芡的炒蔬菜，配啤酒正好喝呢！」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_2_M"]
[playcv storage="chisato_supica_00090_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_sifuku"]
【千圣】[r]「谢谢夸奖。虽然本来不是当下酒菜做的」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_2_M"]
[playcv storage="momo_supica_00090_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「但是这个真的很好吃！芡汁裹着米饭特别下饭」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_supica_00090_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「真的？第一次做这个菜，听你这么说真高兴」
[np]
[FACEHIDE]

[char_erase name="momo satomi chisato"]

[aoi storage="D_tokushu_L CD_2_L"]
[playcv storage="aoi_supica_00090_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_tokushu"]
【葵】[r]「再来一碗！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「吃得好快！」
[np]

[playcv storage="chisato_supica_00090_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「知道啦。给我吧」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]绫濑接过葵的饭碗，转身走向厨房……
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00090_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……龙一，这个给你」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦哦，谢啦……喂」
[np]

[supica storage="C1_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00090_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不小心就道谢了……说什么给我，这不全是青椒吗！我才不要！」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00090_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……龙一，讨厌青椒？挑食可不好」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这句话原封不动还给你！」
[np]

[r]端着分给自己的那盘炒蔬菜，我与试图将青椒强塞过来的真珠星展开攻防。
[np]

[char_erase name="supica"]

[momo storage="A_sifuku_M AB_7_M" trans=false]
[mion storage="C_sifuku_M CD1_3_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00090_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「真珠星酱……」
[np]
[FACEHIDE]

[playcv storage="mion_supica_00090_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「嘿……」
[np]
[FACEHIDE]

[r]嗯……？
[np]

[char_erase name="mion momo"]

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[supica storage="C1_sifuku_M CD_1_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00090_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「哎呀……？真珠星要让神原君吃吗？」
[np]
[FACEHIDE]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00090_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……分给他也不是不行」
[np]
[FACEHIDE]

[char_erase name="supica chisato"]

[r]怎么了？连桃酱和前辈……甚至连添完饭回来的绫濑都露出了意外的表情。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？真珠星把自己不擅长的东西强加给别人，别以为这有什么稀奇的……」
[np]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_supica_00090_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「但真珠星会这么对待的，只有被她认可为相当亲密的人哦」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……那也就是说……」
[np]

[char_erase name="mion"]

[momo storage="B_sifuku_M AB_3_M"]
[playcv storage="momo_supica_00090_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_sifuku"]
【桃】[r]「或许可以理解为……真珠星酱已经接纳前辈成为宿舍的一员了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真的假的！？」
[np]

[char_erase name="momo"]

[supica storage="C1_sifuku_L CD_11_L"]
[playcv storage="supica_supica_00090_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「……我可没说过那种话」
[np]
[FACEHIDE]

[supica storage="C1_sifuku_L CD_1_L"]

[r]虽然她粗声粗气地这么说，但既然大家都这么认为应该没错吧。
[np]

[character name="ryuichi"]
【龙一】[r]「什么嘛，原来是这样……真拿你没办法，青椒这种程度的东西，吃多少都没问题！」
[np]

[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00090_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……那，给你」
[np]
[FACEHIDE]

[char_erase name="supica"]

[r]看着真珠星把青椒拨进我的盘子，我强忍着快要笑出来的表情。
[np]

[chisato storage="A_sifuku_M AB_5_M"]
[playcv storage="chisato_supica_00090_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_5_FACE_sifuku"]
【千圣】[r]「不过，别太惯着他哦……？就像猫一样，一旦惯着了就会记住那种感觉……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「知道了啦，就今天一次下不为例」
[np]

[char_erase name="chisato"]

[r]不过，连原本以为最难以攻克的真珠星都敞开了心扉……果然还是很开心啊！
[np]

[r]这样一来，可以说离成功留在伏木庄已经迈进了一大步！
[np]

[momo storage="B_sifuku_M AB_7_M" trans=false]
[supica storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00090_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「啊……真、真珠星酱，那个……」
[np]
[FACEHIDE]

[char_erase name="momo supica"]

[r]最近也没惹出什么大乱子……和初次见面时关系最僵的桃酱也能比较正常地交流了……
[np]

[r]哼哼哼……有戏！我肯定能行！
[np]

[aoi storage="A_tokushu_M A_6_M"]
[playcv storage="aoi_supica_00090_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_6_FACE_tokushu"]
【葵】[r]「……龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，怎么了？」
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_supica_00090_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「你的……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]顺着葵指的方向看向自己的炒蔬菜。
[np]

[r]因为真珠星拨过来的分量，青椒的绿色明显增加了……等等？
[np]

[character name="ryuichi"]
【龙一】[r]「咦，肉……不见了？」
[np]

[r]刚才明明还适当放着的猪肉，此刻却离奇消失了。
[np]

[r]我狐疑地看向真珠星的盘子——
[np]

[supica storage="A_sifuku_L AB_1_L"]

[character name="ryuichi"]
【龙一】[r]「喂！你刚才把肉拿走了吧！？」
[np]

[supica storage="D_sifuku_L CD_11_L"]
[playcv storage="supica_supica_00090_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_11_FACE_sifuku"]
【真珠星】[r]「……原本就有的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「少骗人！你这盘子里大半都是肉啊！」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00090_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……只是青椒变少了，视觉误差」
[np]
[FACEHIDE]

[playcv storage="chisato_supica_00090_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「好、好啦。炒蔬菜还可以再添的……」
[np]
[FACEHIDE]


[r]用猪肉替代青椒，这交换比例也太离谱了吧……！
[np]

[r]虽然很想这么说……
[np]

[supica storage="A_sifuku_L AB_1_L"]

[character name="ryuichi"]
【龙一】[r]「真是的，拿你没办法……」
[np]

[r]不过想到这也是因为关系变好才会有的举动……就莫名地原谅了她，真是不可思议。
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

;//JUMP:supica_00100
[jump storage="scenario/supica/supica_00100.ks"]
