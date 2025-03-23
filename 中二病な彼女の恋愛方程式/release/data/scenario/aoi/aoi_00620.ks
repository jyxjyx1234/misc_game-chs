[SCENESTART file=aoi_00620.ks]
;//aoi_00620
;//BG:bg01_01

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
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//TIME:昼
;//日付:7/23(木)
;//CH:竜一,seifuku
;//CH:葵,seifuku

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00620_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「快走吧龙一！从早上开始右眼就一直疼……呜，有种不祥的预感……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别立这种不吉利的ｆｌａｇ」
[np]

[char_erase name="aoi"]

[r]第二天，吃完早饭的我们换上制服，离开了宿舍。
[np]

[r]别跑那么快，当心摔倒……？不过，可能我有点担心过头了吧。
[np]

;//背景を校庭bg09_01に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00620_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「越是靠近就越能感受到不祥的气场……难道说，是那家伙……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]跟着加快脚步的葵，穿过早已熟悉的校门。
[np]

[r]看着运动社团在操场晨练的身影，我们逐渐靠近校舍角落……
[np]

;//★＠
[playcv storage="kone_aoi_00620_001.ogg" name="women"]
[character name="women"]
【小猫】[r]「喵呜～……」
[np]

[r]可爱的黑猫和往常一样蜷缩在纸箱里。
[np]

[character name="ryuichi"]
【龙一】[r]「这不什么事都没有吗」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00620_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「你在说什么啊龙一，难道感受不到这股气场吗……！」
[np]
[FACEHIDE]

[r]面对正在用前爪挠头的小猫，葵却莫名露出了戒备的神情。
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00620_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「比起之前所见，力量增强了这么多……究竟是谁让小黑变成这样的……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊咧，这家伙的名字不是叫『忘恩负义』吗」
[np]

[aoi storage="D_tokushu_L CD_9_L"]
[playcv storage="aoi_aoi_00620_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_tokushu"]
【葵】[r]「……那个名字早就被舍弃了！」
[np]
[FACEHIDE]

[r]葵将头扭向完全无关的方向，斩钉截铁地宣告。
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00620_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「不过这份强大的黑暗力量……才配得上成为我的使魔……！」
[np]
[FACEHIDE]

[r]葵露出诡异的笑容，在小猫面前蹲下身来。
[np]

[aoi storage="D_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00620_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「来吧，今天一定要缔结契约就——呀啊！？[quake time="500"]」
[np]
[FACEHIDE]

[r]虽说事不过三……
[np]

[r]在小猫似乎也摸准了时机的瞬间，又跃上了葵的膝盖。
[np]

;//★＠
[playcv storage="kone_aoi_00620_002.ogg" name="women"]
[character name="women"]
【小猫】[r]「喵呜～……♪」
[np]

[aoi storage="A_seifuku_M A_8_M"]
[char_jump name=aoi]

[playcv storage="aoi_aoi_00620_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_seifuku"]
【葵】[r]「冷、冷静，别慌张……！现在还不需要肢体接触……呀、啊、哇！？」
[np]
[FACEHIDE]

[r]被小猫蹭着脸颊撒娇舔舐而手足无措的葵……依然是一副温馨可爱的光景。
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_aoi_00620_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「唔……果然和以前完全不一样了……变强了啊，小黑……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「确实……听你这么一说，好像也长大了一点」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_aoi_00620_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「这说明黑暗力量正在增强……再这样下去……啊！？」
[np]
[FACEHIDE]

[r]或许是玩腻了和葵的游戏，小猫轻盈地跃过围墙不知去向。
[np]

[aoi storage="C_seifuku_M CD_5_M"]
[playcv storage="aoi_aoi_00620_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「呜，今天又失败了吗……」
[np]
[FACEHIDE]

[r]看这情形，总觉得永远都不会有成功的那天啊……
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00620_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「不过看样子成长得很顺利……太好了……」
[np]
[FACEHIDE]

[r]……刚才那句话，似乎只是作为普通女孩子的葵不经意间脱口而出的。
[np]

[r]望着她温柔微笑的侧脸，不知为何会产生这样的感觉。
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_aoi_00620_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「好了，这样一来目的也算是达成了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「就这样直接回去也太没意思了吧」
[np]

[r]毕竟我们特地换上制服来学园……
[np]

[character name="ryuichi"]
【龙一】[r]「对了葵，要不要进去逛逛？」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_aoi_00620_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「哎、进去……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「暑假的校园可不是能常来的地方。说是散步好像不太对劲，探险？」
[np]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_aoi_00620_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「探险……！」
[np]
[FACEHIDE]

[r]这句话似乎戳中了葵的心窝，她的眼眸开始闪闪发亮。
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_aoi_00620_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「原来如此，你是预见到第三机关可能入侵学园，想要阻止他们吧……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，就当是这样吧」
[np]

[aoi storage="C_seifuku_M CD_2_M"]
[playcv storage="aoi_aoi_00620_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「好，出发！赶紧跟上龙一！」
[np]
[FACEHIDE]

[r]只要葵愿意积极投入，理由什么的根本无关紧要。
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

;//JUMP:aoi_00630
[jump storage="scenario/aoi/aoi_00630.ks"]