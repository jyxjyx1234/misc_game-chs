[SCENESTART file=aoi_00870.ks]
;//aoi_00870
;//BG:bg03_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_06.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

;//TIME:夕
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,tokushu

[r]——８月１２日，星期三，傍晚。
[np]

[aoi storage="C_sifukuB_M CD_3_M"]
[playcv storage="aoi_aoi_00870_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_sifukuB"]
【葵】[r]「呐龙一、下次约会去哪儿？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「约会啊……这个嘛……葵你有想去的地方吗？」
[np]

[aoi storage="A_sifukuB_M A_3_M"]
[playcv storage="aoi_aoi_00870_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_sifukuB"]
【葵】[r]「我……果然还是想去游乐园之类的……」
[np]
[FACEHIDE]

[r]在房间里放松闲聊的同时……不动声色地留意着时间。
[np]

[r]作战开始时间是晚饭前的１８点……若没有意外，很快就能「听到」动静了……
[np]

[aoi storage="C_sifukuB_M CD_1_M"]
[playcv storage="aoi_aoi_00870_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_sifukuB"]
【葵】[r]「差不多该吃晚饭了吧……？肚子有点饿了」
[np]
[FACEHIDE]

[r]正当葵说着要起身的瞬间——
[np]

;//ドア越し
[playcv storage="momo_aoi_00870_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]
[FACEHIDE]

[aoi storage="B_sifukuB_M B_8_M"]
[playcv storage="aoi_aoi_00870_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_sifukuB"]
[char_jump name=aoi]
【葵】[r]「！？」
[np]
[FACEHIDE]

[r]楼下传来撕裂平静空气的少女尖叫声。
[np]

[character name="ryuichi"]
【龙一】[r]「什、什么情况……？」
[np]

[r]我配合着葵佯装出吃惊的模样……但其实从一开始就知道发出这声惨叫的是谁。
[np]

[aoi storage="C_sifukuB_M CD_4_M"]
[playcv storage="aoi_aoi_00870_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_sifukuB"]
【葵】[r]「刚才那是桃的声音…！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「总之先去看看吧！」
[np]

[char_erase name="aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景を寮のリビングbg02_02に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]装出紧张的神情和葵一起走出房间后……
[np]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[momo storage="D_tokushu_M D_2_M"]
[playcv storage="momo_aoi_00870_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_tokushu"]
【桃】[r]「啊、葵……不对，师父！！」
[np]
[FACEHIDE]

[aoi storage="B_sifukuB_M B_8_M"]
[playcv storage="aoi_aoi_00870_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_sifukuB"]
【葵】[r]「……！」
[np]
[FACEHIDE]

[r]如同漫画情节般被麻绳五花大绑动弹不得的桃酱，和……
[np]

[char_erase name="aoi momo"]

;//「リベンジャー」でお願いします
[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_aoi_00870_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「呵呵……果然现身了啊，复仇者……！」
[np]
[FACEHIDE]

[r]紧攥着绳头站在她身旁的澪音学姐。
[np]

[char_erase name="mion"]

[aoi storage="D_sifukuB_M CD_9_M"]
[playcv storage="aoi_aoi_00870_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_sifukuB"]
【葵】[r]「你、你们这是在……」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_3_M"]
[playcv storage="momo_aoi_00870_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_tokushu"]
【桃】[r]「师父！您果然还活着！我一直相信您会来的……！」
[np]
[FACEHIDE]

[aoi storage="A_sifukuB_M A_5_M"]
[playcv storage="aoi_aoi_00870_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_sifukuB"]
【葵】[r]「不、不是的……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00870_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「果然那种程度的灭却魔法对你没用……这才配当我的好对手……」
[np]
[FACEHIDE]

[aoi storage="C_sifukuB_M CD_9_M"]
[playcv storage="aoi_aoi_00870_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_sifukuB"]
【葵】[r]「所、所以我才说——」
[np]
[FACEHIDE]

[r]要是往常她早就顺着这个气氛接茬了，现在这招对葵却不管用……有了！
[np]

[char_erase name="aoi momo mion"]

[character name="ryuichi"]
【龙一】[r]「复仇者……能听到吗，复仇者啊……」
[np]

[aoi storage="B_sifukuB_M B_8_M"]
[playcv storage="aoi_aoi_00870_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_8_FACE_sifukuB"]
【葵】[r]「呃……！？」
[np]
[FACEHIDE]

[r]不知道是惊讶于我突然加入对话，葵猛地睁大了眼睛。
[np]

[character name="ryuichi"]
【龙一】[r]「这恐怕是锁链束缚·Ｃｈａｉｎ　Ｂｉｎｄ……不仅是剥夺行动自由，连气力和精神力都会被吞噬的凶恶咒术……」
[np]

[aoi storage="A_sifukuB_M A_7_M"]
[playcv storage="aoi_aoi_00870_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_sifukuB"]
【葵】[r]「诶……龙、龙一……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这样下去堕天使圣职者可能会有生命危险……你打算怎么办，复仇者？」
[np]

[aoi storage="C_sifukuB_M CD_5_M"]
[playcv storage="aoi_aoi_00870_012.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_sifukuB"]
【葵】[r]「生、生命危险……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="D_tokushu_M D_2_M" trans=false]
[mion storage="A_sifuku_M AB1_2_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00870_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「差不多该出发了吧……」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_6_M"]
[playcv storage="momo_aoi_00870_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_tokushu"]
【桃】[r]「嗷呜！」
[np]
[FACEHIDE]

[r]被走向玄关的澪音前辈牵着麻绳，像宠物犬般亦步亦趋的桃酱。
[np]

[char_erase name="momo mion"]

[aoi storage="A_sifukuB_M A_8_M"]
[playcv storage="aoi_aoi_00870_013.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_sifukuB"]
【葵】[r]「等、等一下……你、你们两个要去哪……！？」
[np]
[FACEHIDE]

[playcv storage="mion_aoi_00870_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「毁灭的时辰将至……将此女献祭于禁忌之兽，解除封印，让世间堕入混沌……！」
[np]
[FACEHIDE]

[playcv storage="momo_aoi_00870_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_10_FACE_tokushu"]
【桃】[r]「怎、怎么这样……不要、我才不要当祭品啊啊啊啊啊！！！」
[np]
[FACEHIDE]

[aoi storage="A_sifukuB_M A_7_M"]
[playcv storage="aoi_aoi_00870_014.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_sifukuB"]
【葵】[r]「啊……！」
[np]
[FACEHIDE]

[r]澪音前辈连拖带拽地将瑟瑟发抖的桃酱掳走了。
[np]

[character name="ryuichi"]
【龙一】[r]「禁忌之兽……这下糟了复仇者……」
[np]

[aoi storage="C_sifukuB_M CD_7_M"]
[playcv storage="aoi_aoi_00870_015.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_sifukuB"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「若是让它重获自由……人间必将沦为炼狱……！」
[np]

[aoi storage="D_sifukuB_M CD_4_M"]
[playcv storage="aoi_aoi_00870_016.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_sifukuB"]
【葵】[r]「是、是这样吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「现在不是发呆的时候！必须立刻去营救——堕天使圣职者——」
[np]

[aoi storage="A_sifukuB_M A_5_M"]
[playcv storage="aoi_aoi_00870_017.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_sifukuB"]
【葵】[r]「可、可是……」
[np]
[FACEHIDE]

[r]没错……这一切都是为了让葵恢复原状，我精心策划的作战计划！
[np]

[r]通过和宿舍成员联手演一出大戏……让葵重新回忆起中二病时期的那份快乐！
[np]

[character name="ryuichi"]
【龙一】[r]「来吧——复仇者啊……！速速做出决断！」
[np]

[aoi storage="B_sifukuB_M B_5_M"]
[playcv storage="aoi_aoi_00870_018.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_5_FACE_sifukuB"]
【葵】[r]「龙、龙一，我……」
[np]
[FACEHIDE]

[playcv storage="chisato_aoi_00870_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「这个计划……我都听到了！」
[np]
[FACEHIDE]

[aoi storage="C_sifukuB_M CD_7_M"]
[playcv storage="aoi_aoi_00870_019.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_sifukuB"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「你、你该不会……难道是！？」
[np]

[char_erase name="aoi"]

;//千聖の中二ＣＧ、使えるようであれば
[CG cgno=06 sabunno=01]

[playcv storage="chisato_aoi_00870_002.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「为守护世间和平，自天界翩然降临的『第七使者』……」
[np]

;//「プリズムエンジェリオン」でお願いします
[playcv storage="chisato_aoi_00870_003.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「以璀璨魅力与魔力普照世间黑暗！——光之圣天使——降临！！」
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[aoi storage="A_sifukuB_M A_7_M" trans=false]
[chisato storage="A_tokushu_M AB_1_M" trans=false]
[char_trans]
[playcv storage="aoi_aoi_00870_020.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_sifukuB"]
【葵】[r]「……千圣……？」
[np]
[FACEHIDE]

[chisato storage="D_tokushu_M CD2_10_M"]
[playcv storage="chisato_aoi_00870_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「才、才不是！我是为了拯救你们危机才从天界降临的棱晶天使兽！」
[np]
[FACEHIDE]

[r]绫濑嘴上说是为了作战计划才勉强准备服装……但看起来玩得超投入啊……。
[np]

[chisato storage="A_tokushu_M AB_10_M"]
[playcv storage="chisato_aoi_00870_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_10_FACE_tokushu"]
【千圣】[r]「等、等一下！那边的你……莫非是翼神龙！？怎、怎么光看着不说话呀！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊，抱歉……！你愿意……将力量借给我们吗……？」
[np]

[chisato storage="C_tokushu_M CD2_1_M"]
[playcv storage="chisato_aoi_00870_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_tokushu"]
【千圣】[r]「我乃侍奉光之神的天使……按天界法则，本不该与统御黑暗之力的你们合作……」
[np]
[FACEHIDE]

[chisato storage="B_tokushu_M AB_11_M"]
[playcv storage="chisato_aoi_00870_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「但如今世界危在旦夕……！让我们携手拯救那位少女吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「感激不尽……来吧，剩下的就只有——复仇者——了！」
[np]

[aoi storage="C_sifukuB_M CD_7_M"]
[playcv storage="aoi_aoi_00870_021.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_sifukuB"]
【葵】[r]「哎……？」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_11_M"]
[playcv storage="chisato_aoi_00870_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「没时间了！快做好战斗准备！」
[np]
[FACEHIDE]

[char_erase name="aoi chisato"]

[aoi storage="B_sifukuB_L B_9_L"]
[playcv storage="aoi_aoi_00870_022.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_sifukuB"]
【葵】[r]「呜……啊、啊呜……呜呜……」
[np]
[FACEHIDE]

[r]没错，烦恼吧，尽情地烦恼吧……！
[np]

[r]你长久以来期盼的非日常……此刻就要在眼前展开了！
[np]

[aoi storage="A_sifukuB_L A_8_L"]
[playcv storage="aoi_aoi_00870_023.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_sifukuB"]
【葵】[r]「……！」
[np]
[FACEHIDE]

[r]正以为抱头苦恼的葵会以锐利眼神直视前方时……
[np]

[aoi storage="C_sifukuB_L CD_5_L"]
[playcv storage="aoi_aoi_00870_024.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_sifukuB"]
【葵】[r]「……就、就这一次……就仅此一次！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[r]她如此宣告后，快步跑上了楼梯。
[np]

[r]目送她离开后，我和绫濑相视一眼……
[np]

[chisato storage="C_tokushu_M CD2_2_M"]
[playcv storage="chisato_aoi_00870_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_tokushu"]
【千圣】[r]「……耶♪」
[np]
[FACEHIDE]

[r]初步成功让她提起干劲……我对着绫濑的胜利手势重重地点了点头。
[np]

[char_erase name="chisato"]

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

;//JUMP:aoi_00880
[jump storage="scenario/aoi/aoi_00880.ks"]