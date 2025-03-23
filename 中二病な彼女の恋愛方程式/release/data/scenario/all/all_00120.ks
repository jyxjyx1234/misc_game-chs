[SCENESTART file=all_00120.ks]
;//all_00120
;//BG:bg11_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//TIME:昼
;//日付:6/15(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:爽史,seifuku

;//\SEチャイム音
[wait time="500"]
[playse buf=5  storage="sound/00090.ogg"]
[wait time="1500"]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「哈……」
[np]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[r]下课了，或许是从紧张感中解放出来……不由得打了个哈欠。
[np]

[r]好了，放学了。该干点什么呢……
[np]

[character name="ryuichi"]
【龙一】[r]「我说爽史。你有参加社团活动吗？」
[np]

[sousi storage="A_seifuku_M A_1_M"]
[playcv storage="sousi_all_00120_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_seifuku"]
爽史[r]：“不，我是回家社的。在以学园为舞台的游戏和动画里，主人公的回家社率可是非常高的。”
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这、这样啊……那，一起回——」
[np]

[sousi storage="C_seifuku_M CD_3_M"]
[playcv storage="sousi_all_00120_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_3_FACE_seifuku"]
爽史[r]：“抱歉。今天得为月底的工口游戏日做准备，把堆积的游戏消化掉。告辞了。”
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……」
[np]

[char_erase name="sousi"]

[r]背着小小的书包，潇洒地离开了教室的爽史。
[np]

[r]什么月底啦，堆积游戏啦……虽然不太明白，但他真是个自律的家伙。
[np]

[r]茜也去参加社团活动了吧，班会一结束就冲出教室了……
[np]

[r]虽然一个人回去也没关系，不过要是能一起……哦。
[np]

[character name="ryuichi"]
【龙一】[r]「喂，绫濑。要不要一起回去？」
[np]

[chisato storage="A_seifuku_M AB_8_M"]
[playcv storage="chisato_all_00120_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「诶……？啊、抱歉……我刚好要去站前商店买点东西」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样啊……葵呢？」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00120_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「我要直接回宿舍」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那要不要两个人一起走？」
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_all_00120_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「……好吧，放马过来！」
[np]
[FACEHIDE]

[r]不过她那副要干架的架势……实在让人有点难应付啊。
[np]

[char_erase name="aoi chisato"]

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

[backlay]
[freeimage layer=1 page=back]
[image storage="bg09_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//背景を校庭bg09_01に
[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00120_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「那我先告辞了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯，晚点见」
[np]

[char_erase name=chisato to=right time=800 fade=true]

[r]随后在校门口与绫濑道别……
[np]

;//背景を通学路bg13_01に

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[r]与葵两人并肩踏上归途。
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00120_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「…………」
[np]
[FACEHIDE]

[r]虽然想着一个人回去不如……但实在难以把握距离感啊。
[np]

[r]不不不，这时候消极退缩怎么行！这种时候才更应该积极展开对话——
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_all_00120_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「能听见吗，翼神龙……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00120_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「……怎么了？翼神龙……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎呀——今天天气真不错啊……」
[np]

[aoi storage="C_seifuku_M CD_9_M"]
[playcv storage="aoi_all_00120_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_seifuku"]
【葵】[r]「你应该听得到吧，翼神龙……周围没有普通市民，无需警戒」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……我说啊，有个问题」
[np]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00120_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「怎么了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个，『翼神龙』……是指谁？或者说是啥东西？」
[np]

[r]面对我的提问，葵忽地朝这边竖起食指。
[np]

[aoi storage="B_seifuku_M B_2_M"]
[playcv storage="aoi_all_00120_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_2_FACE_seifuku"]
【葵】[r]「经我召唤术降临现世的暗之使徒……正是你的别称」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……难道说，你是取了『神原龙一』里的『神』和『龙』，在说什么翼神龙之类的吧？」
[np]

[aoi storage="C_seifuku_M CD_10_M"]
[playcv storage="aoi_all_00120_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_10_FACE_seifuku"]
【葵】[r]「………………」
[np]
[FACEHIDE]

[r]别过眼去说明我说中了吧！
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_all_00120_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「这、这种事情无关紧要……！翼神龙，你可愿与我共同讨伐那个魔女！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「魔女？啊啊……」
[np]

[r]是说澪音学姐吗……你居然要讨伐住在同个宿舍的学姐啊。
[np]

[r]不过说起来，在葵的认知里那个人是凶恶魔女的「设定」对吧……
[np]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[SYSTEMMENU]
	[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[endif]


[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00120_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「可愿与我缔结盟约……？」
[np]
[FACEHIDE]

[r]这么快就犯中二病了啊……这下可难办了。
[np]

;//選択肢
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=试着配合她一下吧 jump target="*select1"]
	[select_button text=不，我是普通人类 jump target="*select2"]
[select_end]

*select1
[SetSJumpFlg storage="scenario/all/all_00120.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00150.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00120_0=0"]
[jump target="*selectA"]

*select2
[SetSJumpFlg storage="scenario/all/all_00120.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00150.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00120_0=1"]
[jump target="*selectB"]

;//ちょっと乗ってみるか、を選んだ場合
*selectA

[r]试着配合她一下吧。好……
[np]

[character name="ryuichi"]
【龙一】[r]「……啊，好吧……我帮你。」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00120_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「！」
[np]
[FACEHIDE]

[r]我刻意压低嗓音，试图展现出符合翼神龙之名的威严。
[np]

[r]谁知……身旁葵的双眸竟开始闪闪发亮！
[np]

[aoi storage="C_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00120_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「果然……果然我的眼光没错！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00120_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「翼神龙，我需要你的力量！只要有你在，击败那个魔女便不再是遥不可及的梦想！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃、那个……这个……」
[np]

[r]这气氛简直像是开个玩笑敷衍她，结果现在连解释的余地都没有了……
[np]

;//ここまで
[jump target="*selectEnd"]

;//いや、俺は普通の人間だ、を選んだ場合
*selectB

[r]不，我只是个普通人。既非暗影使者，亦非翼神龙。
[np]

[character name="ryuichi"]
【龙一】[r]「好了，快走吧」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00120_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「啊、喂等等……！」
[np]
[FACEHIDE]

;//ここまで
[jump target="*selectEnd"]

;//合流地点
*selectEnd

[r]——就在这时。
[np]

[char_erase name="aoi"]

[wait time="500"]
[playse buf=5  storage="sound/50120.ogg"]
[wait time="1500"]

[character name="ryuichi"]
[quake time="500"]
【龙一】[r]「呜哇…」
[np]

[r]一阵强风突然刮过，我不由得闭上了眼睛。
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00120_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
【葵】[r]「啊…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「葵，你没事吧？眼睛没进沙子什么的——」
[np]

[aoi storage="C_seifuku_M CD_7_M"]
[playcv storage="aoi_all_00120_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「伤疤…」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎…？」
[np]

[aoi storage="A_seifuku_M A_7_M"]
[playcv storage="aoi_all_00120_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_seifuku"]
【葵】[r]「你、你额头上……有伤疤吗！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶…？啊、啊啊…」
[np]

[r]葵突然露出极为严肃的表情，死死盯着我的额头。
[np]

[char_erase name="aoi"]

[character name="ryuichi"]
【龙一】[r]「你说这个…？」
[np]

[aoi storage="B_seifuku_L B_7_L"]
[playcv storage="aoi_all_00120_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「！！！」
[np]
[FACEHIDE]

[r]我轻轻撩起额发展示伤疤，葵露出如遭雷击般的表情。
[np]

[character name="ryuichi"]
【龙一】[r]「这伤疤挺显眼的……你之前都没注意到吗？」
[np]

[aoi storage="C_seifuku_L CD_5_L"]
[playcv storage="aoi_all_00120_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_seifuku"]
【葵】[r]「完、完全没注意到……因为一直盯着别人的脸看，很不礼貌……」
[np]
[FACEHIDE]

[r]看来你还是有这种常识的嘛……稍微放心了点。
[np]

[aoi storage="A_seifuku_L A_2_L"]
[playcv storage="aoi_all_00120_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「额头上，有伤疤……厉害，好厉害好厉害！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃，什么……？」
[np]

[aoi storage="D_seifuku_L CD_2_L"]
[playcv storage="aoi_all_00120_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「跟、跟我来！！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哇！？」
[np]

[r]等、等等，葵……！？
[np]

[char_erase name=aoi to=right time=800 fade=true]

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

;;//JUMP:all_00130
[jump storage="scenario/all/all_00130.ks"]
