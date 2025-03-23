[SCENESTART file=all_00110.ks]
;//all_00110
;//BG:bg10_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

;//TIME:昼
;//日付:6/15(月)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku

[character name="ryuichi"]
【龙一】[r]「……搞砸了」
[np]

[r]转学到苍心学园后迎来的第一个午休。
[np]

[r]当然没带便当来，本想着先去买个面包应付一下……
[np]

[r]这所学校的福利社，可没宽容到能允许这般天真的想法。
[np]

[r]结果我只抢到一个菠萝包，当午饭根本不够吃。
[np]

;//背景を教室bg11_01に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]算了，今天就吃这个——
[np]

[aoi storage="D_seifuku_S CD_2_S"]
[playcv storage="aoi_all_00110_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_2_FACE_seifuku"]
【葵】[r]「发现！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊……？」
[np]

[char_erase name="aoi"]

[aoi storage="D_seifuku_M CD_2_M" trans=false]
[akane storage="A_seifuku_M AB_7_M" trans=false]
[char_trans]
[playcv storage="akane_all_00110_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「哇，漆黑雷达好厉害！真的找到了！」
[np]
[FACEHIDE]

[aoi storage="A_seifuku_M A_2_M"]
[playcv storage="aoi_all_00110_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_2_FACE_seifuku"]
【葵】[r]「哼……凭我的能力，这是理所当然……」
[np]
[FACEHIDE]

[r]不知为何葵坐在我的座位上……周围还围着绫濑、茜和爽史。
[np]

[chisato storage="A_seifuku_M A_1_M"]
[playcv storage="chisato_all_00110_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「太慢了神原同学。大家都在等你……去哪了？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「什么哪里…我就是去小卖部…哎？你们一直在等我吗？」
[np]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_all_00110_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「这可是专门为刚转学过来分不清东南西北的龙一同学举办的友好共餐会呀！来，我们走吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、等一下！？」
[np]

[char_erase name="akane aoi chisato"]

[r]被茜的气势所带动，我被她牵着手离开教室…
[np]

;//背景をbg12_01に
[wait time="500"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[backlay]
[freeimage layer=1 page=back]
[image storage="bg12_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="500"]

[character name="ryuichi"]
【龙一】[r]「这里是…」
[np]

[r]视野中铺展开蓝天与城市街景，我们来到了学校天台。
[np]

[chisato storage="C_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00110_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「快吃吧。午休时间也不多了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等一下。难道说…大家一直在等我吗？」
[np]

[aoi storage="C_seifuku_M CD_1_M"]
[playcv storage="aoi_all_00110_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_seifuku"]
【葵】[r]「没错。我们不会抛弃同伴」
[np]
[FACEHIDE]

[chisato storage="B_seifuku_M AB_3_M"]
[playcv storage="chisato_all_00110_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_seifuku"]
【千圣】[r]「我都说了不用在意这些，可是茜她…」
[np]
[FACEHIDE]

[r]感受到千圣的目光，茜露出了灿烂的笑容。
[np]

[akane storage="C_seifuku_M CD_1_M"]
[playcv storage="akane_all_00110_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_1_FACE_seifuku"]
【茜】[r]「一个人吃午饭的话，不是会变得不怎么美味吗？」
[np]
[FACEHIDE]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_all_00110_004.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「所以我在想，要是你愿意的话要不要和我们这群好朋友一起吃饭呀」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦……谢谢，茜！」
[np]

[akane storage="D_seifuku_M CD_10_M"]
[playcv storage="akane_all_00110_005.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「不用客气！那我就不客气开动啦！」
[np]
[FACEHIDE]

[r]托茜过于贴心的关怀所赐，开学第一天就避免了独自吃午饭的窘境。
[np]

[r]在心底默默向茜道谢无数次后，低头咬住菠萝包。
[np]

[character name="ryuichi"]
【龙一】[r]「好朋友团体的话，你们一直都是这些人一起吃饭吗？」
[np]

[akane storage="A_seifuku_M AB_1_M"]
[playcv storage="akane_all_00110_006.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]
【茜】[r]「差不多吧！其他像是集体活动的时候也基本都在一起！对吧？」
[np]
[FACEHIDE]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00110_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「是啊。我们四个人从高一开始就一直同班」
[np]
[FACEHIDE]

[char_erase name="chisato aoi akane"]

[sousi storage="D_seifuku_M CD_1_M"]
[playcv storage="sousi_all_00110_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「不管是绫濑还是小日向，都是茜主动搭话……回过神来大家就这么熟络了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「原来如此……」
[np]

[char_erase name="sousi"]

[chisato storage="A_seifuku_M A_1_M" trans=false]
[akane storage="C_seifuku_M CD_7_M" trans=false]
[char_trans]
[playcv storage="akane_all_00110_007.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_7_FACE_seifuku"]
【茜】[r]「对了对了，刚才听小千说！你们住在同一个宿舍楼？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、嗯……算是吧」
[np]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_all_00110_008.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「可我记得那里原本是女生宿舍吧？没关系的吗？」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_5_M"]
[playcv storage="chisato_all_00110_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_seifuku"]
【千圣】[r]「原本是的，不过今年四月改成了混合宿舍……」
[np]
[FACEHIDE]

[char_erase name="chisato akane"]

[sousi storage="B_seifuku_M B_3_M"]
[playcv storage="sousi_all_00110_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「女生宿舍变混合宿舍……这展开真有成人游戏的味道啊」
[np]
[FACEHIDE]

[char_erase name="sousi"]

[chisato storage="B_seifuku_M AB_11_M" trans=false]
[akane storage="A_seifuku_M AB_1_M" trans=false]
[char_trans]
[playcv storage="chisato_all_00110_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_seifuku"]
【千圣】[r]「别用那种说法」
[np]
[FACEHIDE]

[r]爽史会在意这种地方啊……。
[np]

[chisato storage="D_seifuku_M CD_4_M"]
[playcv storage="chisato_all_00110_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_4_FACE_seifuku"]
【千圣】[r]「所以神原同学作为第一个入住的男生……结果昨天就出事了对吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、绫濑……！」
[np]

[akane storage="A_seifuku_M AB_7_M"]
[playcv storage="akane_all_00110_009.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_7_FACE_seifuku"]
【茜】[r]「出事！？难道龙一你刚来就闯祸了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、算不上闯祸，那完全是个意外！又不是故意的……！」
[np]

[akane storage="C_seifuku_M CD_10_M"]
[playcv storage="akane_all_00110_010.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「做了……！？做了什么！？真做了！？」
[np]
[FACEHIDE]

[char_erase name="akane chisato"]

[sousi storage="D_seifuku_M CD_3_M"]
[playcv storage="sousi_all_00110_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_3_FACE_seifuku"]
【爽史】[r]「你是指获得了事件ＣＧ？是普通ＣＧ？还是说……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你这话根本听不懂！所以，那件事是……！」
[np]

[char_erase name="sousi"]

[chisato storage="B_seifuku_M AB_2_M"]
[playcv storage="chisato_all_00110_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_seifuku"]
【千圣】[r]「噗……呵呵……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……？」
[np]

[r]不知为何，绫濑拿着筷子吃吃地笑着。
[np]

[chisato storage="D_seifuku_M CD_1_M"]
[playcv storage="chisato_all_00110_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_seifuku"]
【千圣】[r]「啊，抱歉抱歉……可能确实有点纠缠不休了吧」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你是指……？」
[np]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_all_00110_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「昨天的事。桃虽然有点可怜，但洗漱间的那件事算是意外事故吧……」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_all_00110_011.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「神原同学刚入住还不了解浴室的规矩……可能我昨天说得有些过分了……」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_3_M"]
[playcv storage="chisato_all_00110_012.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_seifuku"]
【千圣】[r]「就是……昨晚躺进被窝时，不知怎么的就想到这些了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「绫濑……」
[np]

[chisato storage="B_seifuku_M AB_6_M"]
[playcv storage="chisato_all_00110_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_seifuku"]
【千圣】[r]「所以……对不起啊，神原同学」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不用！该道歉的是我……！应该说，谢谢你绫濑！那个……」
[np]

[akane storage="A_seifuku_M AB_3_M"]
[playcv storage="akane_all_00110_011.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_3_FACE_seifuku"]
【茜】[r]「哎呀呀……」
[np]
[FACEHIDE]

[sousi storage="B_seifuku_M B_3_M"]
[playcv storage="sousi_all_00110_004.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「嗯，这是……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「怎、怎么了……？」
[np]

[r]听着我和绫濑对话的两人，投来了意味深长的目光。
[np]

[akane storage="D_seifuku_M CD_10_M"]
[playcv storage="akane_all_00110_012.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_10_FACE_seifuku"]
【茜】[r]「才两天就俘获了小千的心……真有你的啊龙一！」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_9_M"]
[playcv storage="chisato_all_00110_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_seifuku"]
[char_jump name=chisato]
【千圣】[r]「你……！？　茜、茜！？」
[np]
[FACEHIDE]

[sousi storage="D_seifuku_M CD_3_M"]
[playcv storage="sousi_all_00110_005.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_3_FACE_seifuku"]
【爽史】[r]「你这反应速度……龙一，你才配当黄油男主」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这种说法太恶心了！！」
[np]

[chisato storage="D_seifuku_M CD_10_M"]
[playcv storage="chisato_all_00110_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_seifuku"]
【千圣】[r]「比起这个，再不快点吃就要迟到了……快抓紧时间！」
[np]
[FACEHIDE]

[char_erase name="chisato akane sousi"]

[r]之后我们（虽然我只是塞了个菠萝包）匆忙吃完午饭回到了教室。
[np]

[r]绫濑能够宽容地接纳昨天的事……说实话，我真的很开心。
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

;;//JUMP:all_00120
[jump storage="scenario/all/all_00120.ks"]
