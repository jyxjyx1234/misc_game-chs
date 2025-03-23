[SCENESTART file=supica_00240.ks]
;//supica_00240
;//BG:bg04_01

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/11(土)
;//CH:ryuichi,pajyama
;//CH:すぴか,pajyama

;//暗転
;//ＳＤＣＧを挿入するまで、表記は「？？？」で
[playcv storage="supica_supica_00240_001.ogg" name="supica"]
[character name="supica"]
【？？？】[r]「啊……龙……一……」
[np]

[character name="ryuichi"]
【龙一】[r]「唔、嗯～……」
[np]

[r]嗯……？怎、怎么回事……？身体好像好沉……
[np]

[r]说是沉……倒像是被什么东西压着……？该不会是鬼压床吧？
[np]

[playcv storage="supica_supica_00240_002.ogg" name="supica"]
[character name="supica"]
【？？？】[r]「……起……来……」
[np]

[r]而且不只是被压着……好像还在动……还在说话对吧……？
[np]

[r]也就是说是人……总之先确认下现在的状况——
[np]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]
[CG cgno=101 sabunno=02]

;//ＳＤＣＧ挿入
[playcv storage="supica_supica_00240_003.ogg" name="supica"]
[character name="supica"]
[char_jump name=supica]
【真珠星】[r]「龙一……龙一」
[np]

[r]不……行……哎？
[np]

[playcv storage="supica_supica_00240_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一……快点起床」
[np]

[r]怎……真、真珠星！？
[np]

[r]为什么跨坐在我身上……不过你挺轻的倒还好……重点不是这个啦！
[np]

[character name="ryuichi"]
【龙一】[r]「你、你在干什么啊……！？」
[np]

[CG cgno=101 sabunno=01]

[playcv storage="supica_supica_00240_005.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……龙一、起床」
[np]

[character name="ryuichi"]
【龙一】[r]「叫、叫人起床也……今天可是周六啊……？」
[np]

[playcv storage="supica_supica_00240_006.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……周六」
[np]

[r]为什么突然说英文？
[np]

[character name="ryuichi"]
【龙一】[r]「既然这样学园也没课……所以呢，是有什么事情吗……？」
[np]

[playcv storage="supica_supica_00240_007.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……没有」
[np]

[character name="ryuichi"]
【龙一】[r]「……那、那也没必要起床吧……」
[np]

[r]对着连连摇头的真珠星，我有气无力地吐槽道。
[np]

[character name="ryuichi"]
【龙一】[r]「考试复习折腾得够呛了……再让我多睡会儿……」
[np]

[char_erase name="supica"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="anten.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

;//[supica storage="C3_pajyama_L CD2_10_L"]
[playcv storage="supica_supica_00240_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_pajyama"]
;//[char_jump name=supica]
;//[char_jump name=supica]
【真珠星】[r]「……龙一、起床」
[np]
[FACEHIDE]

[quake time="500"]
[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「等、等等……别、别乱蹦啊！」
[np]

[r]那里、刚好是敏感的部位……！
[np]

;//[supica storage="A_pajyama_L AB2_4_L"]
[playcv storage="supica_supica_00240_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_pajyama"]
【真珠星】[r]「龙一起床之前……一直、这样」
[np]
[FACEHIDE]

;//[backlay]
;//[freeimage layer=1 page=back]
;//[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
;//[trans method=crossfade time=1000]
;//[wt]

[CG cgno=101 sabunno=01]

[character name="ryuichi"]
【龙一】[r]「……至少、说明一下理由不行吗？」
[np]

;//[supica storage="D_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00240_010.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「……什么？」
[np]
;//[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「为什么、要叫醒我啊」
[np]

[CG cgno=101 sabunno=03]

;//[supica storage="C1_pajyama_L CD2_5_L"]
[playcv storage="supica_supica_00240_011.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_CD_5_FACE_pajyama"]
【真珠星】[r]「……真珠星、无聊……」
[np]
;//[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「………………………………」
[np]

[CG cgno=101 sabunno=01]

;//[supica storage="B1_pajyama_L AB2_3_L"]
[playcv storage="supica_supica_00240_012.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_AB_3_FACE_pajyama"]
【真珠星】[r]「所以、叫醒龙一……」
[np]
;//[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……我、很困。所以再睡会儿。晚安」
[np]

[CG cgno=101 sabunno=02]

;//[supica storage="D_pajyama_L CD2_11_L"]
[playcv storage="supica_supica_00240_013.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_CD_11_FACE_pajyama"]
【真珠星】[r]「……唔……」
[np]
;//[FACEHIDE]

[char_erase name="supica"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
[image storage="anten.png" left=0 top=0 layer=1 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[r]把被子拉到头顶、我摆出坚决抵抗的架势。
[np]

;//[supica storage="A_pajyama_M A_1_M"]
[playcv storage="supica_supica_00240_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_pajyama"]
【真珠星】[r]「噗……龙一、起床……」
[np]
[FACEHIDE]

[r]而鼓着腮帮子的真珠星，就这样在我身上轻轻摇晃着……
[np]

[r]……除、除了股间传来的震动之外没什么大问题。只要咬牙忍住就好了……！
[np]

;//[supica storage="A_pajyama_M A_1_M"]
[playcv storage="supica_supica_00240_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_pajyama"]
【真珠星】[r]「……那龙一……和真珠星一起睡……」
[np]
[FACEHIDE]

;//[backlay]
;//[freeimage layer=1 page=back]
;//[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
;//[trans method=crossfade time=1000]
;//[wt]

[CG cgno=101 sabunno=01]

[character name="ryuichi"]
【龙一】[r]「诶……？」
[np]

;//[supica storage="D_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00240_016.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「在真珠星的床上……和真珠星一起睡回笼觉……这样的话就可以」
[np]
;//[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「一、一起睡……那、那肯定不行啊！」
[np]

[r]这又符合昨天胡思乱想过的「恋人之间该做的事」范畴……！
[np]

[CG cgno=101 sabunno=02]

;//[supica storage="A_pajyama_L AB2_4_L"]
[playcv storage="supica_supica_00240_017.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_AB_4_FACE_pajyama"]
;//[char_jump name=supica]
[quake time="500"]
【真珠星】[r]「……那就继续。蹦……蹦蹦」
[np]
;//[FACEHIDE]

[char_jump name=supica]
[quake time="500"]

[character name="ryuichi"]
【龙一】[r]「唔、唔呃……！」
[np]

;//[supica storage="C3_pajyama_L CD2_10_L"]
[playcv storage="supica_supica_00240_018.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_CD_10_FACE_pajyama"]
;//[char_jump name=supica]
[quake time="500"]
【真珠星】[r]「蹦蹦蹦……蹦」
[np]
;//[FACEHIDE]

;//[char_jump name=supica]
[quake time="500"]

[r]真珠星莫名发出兔子般的拟声词，在我身上轻快地蹦跳着。
[np]

;//[supica storage="A_pajyama_L AB2_4_L"]
[playcv storage="supica_supica_00240_019.ogg" name="supica"]
[character name="supica"]
;//[FACEVIEW storage="supica_AB_4_FACE_pajyama"]
[char_jump name=supica]
[quake time="500"]
【真珠星】[r]「龙一起床啦……不然的话，人家就一直这样蹦下去……」
[np]
;//[FACEHIDE]

;//[char_jump name=supica]
[quake time="500"]

[r]这什么鬼称呼方式！
[np]

;//背景表示
[character name="ryuichi"]
【龙一】[r]「啊真是的……知道了、知道了啦！我起来还不行吗！！」
[np]

[char_erase name="supica"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[r]意识到继续抵抗也是徒劳的我，只得含泪掀开被子爬了起来。
[np]

[supica storage="B1_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00240_020.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「……早啊，龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……早啊」
[np]

[r]原本想着既然同住一个屋檐下，叫真珠星起床本是我的职责……
[np]

[r]可万万没想到，竟会有被真珠星叫醒的一天……。
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

;//JUMP:supica_00250
[jump storage="scenario/supica/supica_00250.ks"]