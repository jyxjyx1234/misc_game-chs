[SCENESTART file=all_00130.ks]
;//all_00130
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//TIME:昼
;//日付:6/15(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku

[aoi storage="C_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00130_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「我回来啦！」
[np]
[FACEHIDE]

[r]被兴奋的葵拉着手，就这样回到了宿舍。
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00130_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「快点，这边这边！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、喂等等，鞋子还没脱……！」
[np]

[char_erase name=aoi to=right time=800 fade=true]

[r]被葵催促着脱掉鞋子，跟着她走上楼梯。
[np]

[r]等等，喂喂，难道就这样……
[np]

[character name="ryuichi"]
【龙一】[r]「慢、慢着慢着！这里可是葵的房间啊……！」
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_all_00130_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「嗯，进来吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「进、进去可以吗！？真的没问题吗！？」
[np]

[r]好歹是女孩子的房间，这样真的没问题吗……？
[np]

[r]要是被人看到我这个大男人进房间，会被当作问题行为什么的，那种事情——
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00130_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「快进来快进来！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、喂……！」
[np]

[char_erase name=aoi to=right time=800 fade=true]

[r]被打开门的葵拉着进了里面——
[np]

;//背景を葵の部屋bg03_01に
[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[SYSTEMMENU]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「呃……！？」
[np]

[r]这、这是什么房间……
[np]

[r]因为要进女孩子的房间，我在各种意义上都心跳加速……
[np]

[r]这室内装修和我构想的『女生房间』相差太远……！
[np]

[aoi storage="C_seifuku_S CD_7_S"]
[playcv storage="aoi_all_00130_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_seifuku"]
【葵】[r]「呃、我记得那个……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]毫不知晓我此时心情、正在寻找着什么的葵。
[np]

[r]到底怎么回事……？看到我的伤口后，她就突然变得异常兴奋……
[np]

[r]说话方式也不像平时那样端着架子……变得像普通女孩子了。说起来。
[np]

[aoi storage="A_seifuku_S A_2_S"]
[playcv storage="aoi_all_00130_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「找到了！！」
[np]
[FACEHIDE]

[r]这样的葵从桌子抽屉深处取出的东西是……
[np]

[char_erase name="aoi"]

[r]虽然封面确实用马克笔写着《禁断魔导书》……但怎么看都是大学笔记本啊这个。
[np]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00130_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「快读这里！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？为什么？」
[np]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00130_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「少废话！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「好好好，我知道了……」
[np]

[char_erase name="aoi"]

[r]在情绪高涨的葵催促下，我按照她说的开始阅读笔记。
[np]

[character name="ryuichi"]
【龙一】[r]「那个……上面说什么？『额上带伤的同胞终将现身于我面前』……」
[np]

[r]…………
[np]

[character name="ryuichi"]
【龙一】[r]「……额上带伤的同胞……终将……现身于我面前……」
[np]

[r]由于发展过于出乎意料，我不由自主地又读了一遍。
[np]

[character name="ryuichi"]
【龙一】[r]「……那个，这个『额上带伤的同胞』指的是……」
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_all_00130_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「没错！就是你，翼神龙！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是，这到底是什么啊！！」
[np]

[aoi storage="B_seifuku_M B_7_M"]
[playcv storage="aoi_all_00130_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_7_FACE_seifuku"]
[char_jump name=aoi]
【葵】[r]「啊啊！其、其他页面不用看！！」
[np]
[FACEHIDE]

[r]被满脸通红的葵全力没收了。
[np]

[aoi storage="C_seifuku_M CD_8_M"]
[playcv storage="aoi_all_00130_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_seifuku"]
【葵】[r]「这、这是那个……所谓的禁断魔导书……」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00130_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「是我当年和黑暗组织战斗时，作为战利品获得的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个大学笔记本？」
[np]

[aoi storage="A_seifuku_M A_4_M"]
[playcv storage="aoi_all_00130_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_seifuku"]
【葵】[r]「不是大学笔记本！是禁断魔导书！」
[np]
[FACEHIDE]

[aoi storage="B_seifuku_M B_1_M"]
[playcv storage="aoi_all_00130_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_1_FACE_seifuku"]
【葵】[r]「这本据传能预言未来的典籍上确实记载着」
[np]
[FACEHIDE]

[aoi storage="D_seifuku_M CD_2_M"]
[playcv storage="aoi_all_00130_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「额上带伤的同胞终将现身……而如今确实……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你是说，我出现在葵面前……是这个意思？」
[np]

[r]面对我的追问，葵带着充满热情的表情连连点头。
[np]

[character name="ryuichi"]
【龙一】[r]「可我只是个堂堂正正叫做神原龙一的人类……」
[np]

[aoi storage="B_seifuku_M B_5_M"]
[playcv storage="aoi_all_00130_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_seifuku"]
【葵】[r]「唔……看来是中了魔女的诅咒失去部分记忆了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别随便给人安个失忆设定啊」
[np]

[aoi storage="C_seifuku_M CD_3_M"]
[playcv storage="aoi_all_00130_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_seifuku"]
【葵】[r]「放心吧翼神龙……不，平时应该称呼你龙一」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_1_M"]
[playcv storage="aoi_all_00130_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_seifuku"]
【葵】[r]「倒不如说失忆状态反而大大降低了被机关盯上的可能性……未尝不好」
[np]
[FACEHIDE]

[r]机关，到底是什么啊……
[np]

[aoi storage="D_seifuku_M CD_1_M"]
[playcv storage="aoi_all_00130_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「好，从今天起就由我来担任你的贴身护卫！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个，可是……」
[np]

[aoi storage="A_seifuku_L A_2_L"]
[playcv storage="aoi_all_00130_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「请多指教了，龙一！」
[np]
[FACEHIDE]

[r]葵用双手紧紧握住了我的手。
[np]

[r]她的眼眸宛如阳光映照的河面般波光粼粼……
[np]

[r]身为「翼神龙」的我，看到这一幕竟一时语塞……
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

;;//JUMP:all_001140
[jump storage="scenario/all/all_00140.ks"]
