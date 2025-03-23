[SCENESTART file=supica_00200.ks]
;//supica_00200
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM07.ogg" time="500"]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/10(金)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[satomi storage="B_sifuku_L AB_2_L"]
[playcv storage="satomi_supica_00200_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「哦，今天好丰盛啊！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[chisato storage="D_sifuku_M CD_2_M"]
[playcv storage="chisato_supica_00200_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_sifuku"]
【千圣】[r]「因为考试结束了，想用慰劳大家来打起精神」
[np]
[FACEHIDE]

[char_erase name="chisato"]

[r]宿舍的大家聚在一起的晚餐时间。
[np]

[r]正如绫濑所说，以炸鸡为主，还有土豆沙拉、炖菜和味噌汤等等，盘子数量比平时多了一些。
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_supica_00200_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「那大家都到齐了，开吃吧！我开动啦！啊呜，咕……嗯～……！」
[np]
[FACEHIDE]

[r]将堆得像小山一样的炸鸡顶部的其中一块送入口中……圣水用啤酒将其冲下。
[np]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_supica_00200_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]

[char_jump name=satomi]

【圣水】[r]「噗哈——！好吃！来，大家快吃吧！！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]前天买的那四块鸡腿肉，可能就是为了这个时候准备的吧。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯……嗯……！」
[np]

[r]一边想着这些，我也把炸鸡和饭一起扒进嘴里。
[np]

[r]绫濑和桃酱都很会做饭啊……炸鸡这种东西，可不是那么容易就能做得这么美味的。
[np]

[aoi storage="C_tokushu_M CD_10_M" trans=false]
[mion storage="C_sifuku_M CD1_1_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00200_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「葵，今天没什么精神呢？怎么了……？」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_9_M"]
[playcv storage="aoi_supica_00200_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_tokushu"]
【葵】[r]「别明知故问！嗯唔、嗯嗯……！」
[np]
[FACEHIDE]

[r]葵带着几分自暴自弃的气势，接二连三将炸鸡塞入口中。
[np]

[char_erase name="aoi mion"]

[r]看着葵这副模样，总觉得比之前的状态要好些了……但结果究竟会如何——
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00200_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]

[char_jump name=supica]

【真珠星】[r]「……龙一、龙一」
[np]
[FACEHIDE]

[r]我刚要伸手去夹炸鸡，就被真珠星的小手用力拽住。
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00200_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……想吃炸鸡」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「炸鸡？想吃就吃啊」
[np]

[supica storage="C1_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00200_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……要龙一喂真珠星吃……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是，这个……」
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00200_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「真珠星……够不着」
[np]
[FACEHIDE]

[r]确实，以她的位置就算站起来也只能勉强够到……
[np]

[character name="ryuichi"]
【龙一】[r]「那我帮你夹到盘子里……这样就能自己吃了吧？」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00200_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……这样要多费一道手续……龙一直接夹炸鸡喂真珠星吃效率更高……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你倒是轻松了，可我还怎么好好吃饭……！」
[np]

[char_erase name="supica"]

[r]果然和绫濑说的一模一样……就像猫一样，一旦宠过头就会得寸进尺……
[np]

[satomi storage="C_sifuku_M CD_1_M" trans=false]
[momo storage="A_sifuku_M AB_1_M" trans=false]
[char_trans]

[playcv storage="satomi_supica_00200_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「哎呀，真珠星能找到这么体贴的人真是太好了呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……？」
[np]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_supica_00200_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「就是啊！前辈和真珠星酱真的很般配呢……♪」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等一下，你们两个……？」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_supica_00200_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「连生活起居都能无微不至照顾的全能型仆人……真令人羡慕」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「前辈！？」
[np]

[char_erase name="mion momo satomi"]

[r]自从允许同居那时起，我就隐约有所察觉……
[np]

[r]总感觉大家是不是已经默认我和真珠星是那种关系了？对吧？
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00200_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一……啊——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「都说了不会了！」
[np]

[char_erase name="supica"]

[r]一开始，我还单纯地为与真珠星变得亲近而感到开心……
[np]

[r]但发展成这样，就有点让人头疼了啊……
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

;//JUMP:supica_00210
[jump storage="scenario/supica/supica_00210.ks"]
