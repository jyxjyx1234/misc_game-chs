[SCENESTART file=all_00330.ks]
;//all_00330
;//BG:bg01_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM02.ogg" time="500"]

;//TIME:昼
;//日付:6/27(土)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:聖水,sifuku
;//CH:あかね,seifuku
;//CH:爽史,sifuku

[character name="ryuichi"]
【龙一】[r]「那么，我出发了！」
[np]

[satomi storage="A_sifuku_M AB_3_M"]
[playcv storage="satomi_all_00330_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_3_FACE_sifuku"]
【圣水】[r]「好——加油哦——」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_2_M"]
[playcv storage="aoi_all_00330_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_tokushu"]
【葵】[r]「可要好好完成任务啊……！」
[np]
[FACEHIDE]

[char_erase name="aoi satomi"]

[r]在圣水和葵的目送下，我走出宿舍的玄关。
[np]

[playcv storage="satomi_all_00330_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊对了，顺便买罐啤酒回来！已经喝光了啦——！」
[np]
[FACEHIDE]

;//背景を通学路bg13_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]我把最后那句话当作没听见，朝着站前走去。
[np]

[r]准确来说，是朝着站前的超市前进……对吧。
[np]

[r]没错，今天是我上岗首日……值得纪念的人生初次打工体验日！
[np]

[character name="ryuichi"]
【龙一】[r]「……要在那个怪人手下工作，不安感完全挥之不去……」
[np]

[r]但不管什么时候，初次经历总会伴随着不安吧。
[np]

[r]既然已经确定下来了，就只能这样说服自己好好干下去……！
[np]

;//背景をスーパーbg19に
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
[image storage="bg19_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

;//★＠
[playcv storage="shiB_all_00330_001.ogg" name="man"]
[character name="man"]
店长[r]「噢！你来了啊龙一！我等你好久了！！抱紧！！」
[np]

[character name="ryuichi"]
【龙一】[r]「唔哦！？」
[np]

[r]刚进店门，就被胡子浓密的店长来了个热情拥抱……放、放开我！完全一点都不高兴！！
[np]

;//★＠
[playcv storage="shiB_all_00330_002.ogg" name="man"]
[character name="man"]
店长[r]「那你赶紧把这件工作服换上！等等，我来帮你穿上！」
[np]

[character name="ryuichi"]
【龙一】[r]「等、等等！？」
[np]

;//★＠
[playcv storage="shiB_all_00330_003.ogg" name="man"]
[character name="man"]
店长[r]「这边这样摆，然后那样再这样搞……！嗯，挺合身的嘛！！」
[np]

[r]……明明只是站在原地，回过神来已经被套上了工作围裙。
[np]

;//★＠
[playcv storage="shiB_all_00330_004.ogg" name="man"]
[character name="man"]
店长[r]「有不懂的就问我和其他店员！那现在去把那边食品区的货品陈列好！！」
[np]

[character name="ryuichi"]
【龙一】[r]「啊、喂！？」
[np]

[r]和初次见面时一样，店长以光速消失在某个角落——
[np]

[r]等等等等！这也太随便了吧！！
[np]

[r]我可是今天才第一天打工的人啊！？连注意事项和确认流程都没有，来了就直接套围裙，喂这就完事了……！
[np]

[r]……不过对那个店长吐槽也是白费力气。人生有时需要学会放弃。
[np]

[character name="ryuichi"]
【龙一】[r]「那个……店长说要把那边的商品陈列好吧……」
[np]

[r]所谓陈列商品说白了就是摆上货架就行吧。这点小事我还是能搞定的。
[np]

[character name="ryuichi"]
【龙一】[r]「好、嘞……」
[np]

[r]打开推车上的纸箱，确认里面的商品。
[np]

[r]是方便面啊。行，赶紧把这些——
[np]

[playcv storage="akane_all_00330_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_sifuku"]
【茜】[r]「啊——！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……？」
[np]

[r]刚才的声音好像在哪里听——
[np]

[akane storage="C_sifuku_M CD_1_M" trans=false]
[sousi storage="A_sifuku_M A_1_M" trans=false]
[char_trans]
[playcv storage="akane_all_00330_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_sifuku"]
【茜】[r]「哎——呀呀呀呀？怎么看都是龙一君嘛！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、茜！？还有、爽史也……！」
[np]

[akane storage="A_sifuku_M AB_1_M"]
[playcv storage="akane_all_00330_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_sifuku"]
【茜】[r]「不用问也知道啦。在打工吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「算、算是……与其说是自己开始打工，不如说是被强行拉来的……」
[np]

[r]打工第一天，上班才三分钟就突然碰到熟人……
[np]

[sousi storage="C_sifuku_M CD_6_M"]
[playcv storage="sousi_all_00330_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_6_FACE_sifuku"]
【爽史】[r]「是被迫开始的……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……我说，茜和爽史都是土生土长的本地人吧？」
[np]

[akane storage="D_sifuku_M CD_3_M"]
[playcv storage="akane_all_00330_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_3_FACE_sifuku"]
【茜】[r]「没错啊！我和爽史都是在风见出生和长大的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那……你们认识这里的店长吗？」
[np]

[akane storage="A_sifuku_M AB_3_M"]
[playcv storage="akane_all_00330_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_sifuku"]
【茜】[r]「店长？啊，他在这一带还挺有名的吧？」
[np]
[FACEHIDE]

[sousi storage="A_sifuku_M A_1_M"]
[playcv storage="sousi_all_00330_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_1_FACE_sifuku"]
【爽史】[r]「是个非常胆大的人。流传着好些真假难辨的英勇事迹」
[np]
[FACEHIDE]

[sousi storage="B_sifuku_M B_10_M"]
[playcv storage="sousi_all_00330_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_sifuku"]
【爽史】[r]「比如说学生时代靠吃路边杂草充饥，徒步环游了世界各国什么的……」
[np]
[FACEHIDE]

[r]该不会是那时候吃了奇怪的草，把脑子搞坏了吧……
[np]

[akane storage="C_sifuku_M CD_7_M"]
[playcv storage="akane_all_00330_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_sifuku"]
【茜】[r]「不是说中途还赤手空拳打倒了非洲狮子吗？那是真的吗？」
[np]
[FACEHIDE]

[sousi storage="D_sifuku_M CD_1_M"]
[playcv storage="sousi_all_00330_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_sifuku"]
【爽史】[r]「据说属实。背上的伤疤就是证据。不过徒手潜水捕杀大白鲨的故事，就很可疑了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[akane storage="A_sifuku_M AB_2_M"]
[playcv storage="akane_all_00330_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_sifuku"]
【茜】[r]「不过说到底这些全都是传言罢了！实在好奇的话，直接去问本人如何？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「说、说的也是，等我有心情了再……嗯」
[np]

[akane storage="B_sifuku_M AB_1_M"]
[playcv storage="akane_all_00330_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_sifuku"]
【茜】[r]「那就加油吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦、哦……」
[np]

[char_erase name="akane sousi"]

[r]我强撑着无力的笑容目送两人离开店里。
[np]

[r]……现在换打工的地方还来得及吗……？
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

;//JUMP:all_00340
[jump storage="scenario/all/all_00340.ks"]