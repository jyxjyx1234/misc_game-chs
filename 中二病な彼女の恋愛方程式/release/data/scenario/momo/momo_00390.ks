[SCENESTART file=momo_00390.ks]
;//momo_00390
;//BG:bg01_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg" time=1000]

;//TIME:夜
;//日付:7/15(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:もも,tokushu

[character name="ryuichi"]
【龙一】[r]「……呼」
[np]

[r]和桃酱两人回到宿舍后，大家吃完晚饭的我……
[np]

[r]突然很想吃冰淇淋，就信步去了便利店。
[np]

[r]本来想在开着冷气的宿舍里吃的……结果发现回程路上就开始融化，赶紧狼吞虎咽吃完了。
[np]

[r]已经是这个季节了啊……对啊，暑假也近在眼前了。
[np]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[character name="ryuichi"]
【龙一】[r]「我回来了——」
[np]
[r]一边擦拭微微渗出的汗水，一边推开玄关门——
[np]

[momo storage="D_tokushu_M D_9_M" trans=false]
[aoi storage="C_tokushu_M CD_5_M" trans=false]
[char_trans]
[playcv storage="momo_momo_00390_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「求您了，师父……！」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_9_M"]
[playcv storage="aoi_momo_00390_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_tokushu"]
【葵】[r]「可…可是……」
[np]
[FACEHIDE]

[r]……嗯？
[np]

[momo storage="B_tokushu_M AB_5_M"]
[playcv storage="momo_momo_00390_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_tokushu"]
【桃】[r]「虽然我确实还不够成熟……但是即便如此……啊」
[np]
[FACEHIDE]

[r]穿着那件标志性衣服的桃酱跪在葵面前……正低头恳求着什么时，似乎察觉到了我回家的动静。
[np]

[momo storage="C_tokushu_M C_9_M"]
[playcv storage="momo_momo_00390_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「求…求您了师父！请让我也和翼神龙缔结盟约吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_momo_00390_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
[char_jump name="aoi"]
【葵】[r]「啊……你、你是侦察归来了吗翼神龙……！」
[np]
[FACEHIDE]

[r]如果去便利店买冰淇淋也算侦察的话，那就算是吧。
[np]

[aoi storage="C_tokushu_M CD_5_M"]
[playcv storage="aoi_momo_00390_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_tokushu"]
【葵】[r]「其实是这样的……现在我和自己的弟子正在商量……」
[np]
[FACEHIDE]

;//「ダークプリーステス」でお願いします
[aoi storage="D_tokushu_M CD_8_M"]
[playcv storage="aoi_momo_00390_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_tokushu"]
【葵】[r]「这位堕天塞西圣职者说想和你……和翼神龙缔结鲜血盟约……」
[np]
[FACEHIDE]

[momo storage="B_tokushu_M AB_5_M"]
[playcv storage="momo_momo_00390_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_tokushu"]
【桃】[r]「唔……」
[np]
[FACEHIDE]

[r]是因为今天购物前我向她坦白了心声吗……
[np]

[r]换作以往绝对会动摇的场面下，桃酱此刻却毫不怯场地露出了坚毅的神情。
[np]

[r]……仔细看的话，还是残留着些许害羞的绯红。
[np]

[momo storage="C_tokushu_M C_5_M"]
[playcv storage="momo_momo_00390_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「虽然确实是师父先和翼神龙缔结了鲜血盟约……」
[np]
[FACEHIDE]

[momo storage="D_tokushu_M D_9_M"]
[playcv storage="momo_momo_00390_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「但如今……我与翼神龙已经通过心灵交融结下了永恒的羁绊！」
[np]
[FACEHIDE]

[aoi storage="A_tokushu_M A_5_M"]
[playcv storage="aoi_momo_00390_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_tokushu"]
【葵】[r]「呜……」
[np]
[FACEHIDE]

[r]哎……这是说……
[np]

[momo storage="A_tokushu_M AB_6_M"]
[playcv storage="momo_momo_00390_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_6_FACE_tokushu"]
【桃】[r]「所以求您了师父！请、请务必也赐予我召唤翼神龙的权利！」
[np]
[FACEHIDE]
[character name="ryuichi"]
【龙一】[r]「……原来如此」
[np]

[char_erase name="aoi momo"]

[aoi storage="C_tokushu_M CD_7_M"]
[playcv storage="aoi_momo_00390_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_tokushu"]
【葵】[r]「翼、翼神龙……」
[np]
[FACEHIDE]

[r]仅凭声音就瞬间辨认出我是翼神龙的葵。
[np]

[character name="ryuichi"]
【龙一】[r]「……如何？复仇者啊……何不在此赐予她力量……」
[np]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_momo_00390_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「可、可是……召唤你需要耗费大量气力与暗黑能量……桃的身体能否承受……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这亦是磨砺弟子的试炼……不觉得正合适么？」
[np]

[aoi storage="A_tokushu_M A_1_M"]
[playcv storage="aoi_momo_00390_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_1_FACE_tokushu"]
【葵】[r]「……说的……也是……既然你都这么说了……好吧」
[np]
[FACEHIDE]

[r]接着葵走近依然跪在原地的桃酱身边……
[np]

[aoi storage="D_tokushu_M CD_3_M"]
[playcv storage="aoi_momo_00390_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「桃啊，将此物授予你」
[np]
[FACEHIDE]
[r]将某件用细链子串着的黑石递了过去。
[np]

[momo storage="B_tokushu_M AB_7_M"]
[playcv storage="momo_momo_00390_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_tokushu"]
【桃】[r]「这、这是……」
[np]
[FACEHIDE]

[aoi storage="B_tokushu_M B_4_M"]
[playcv storage="aoi_momo_00390_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_4_FACE_tokushu"]
【葵】[r]「这是经过三天三夜浸染翼神龙之血的受诅咒黑曜石……」
[np]
[FACEHIDE]

[r]看起来不就是块普通石头吗。
[np]

[aoi storage="C_tokushu_M CD_3_M"]
[playcv storage="aoi_momo_00390_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_3_FACE_tokushu"]
【葵】[r]「只要紧握此石，怀着强烈意志默念……它定会回应你的期许」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_2_M"]
[playcv storage="momo_momo_00390_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「师、师父……万分感谢！！」
[np]
[FACEHIDE]

[r]……呃，也就是说……
[np]

[char_erase name="momo aoi"]

[r]召唤我的权利从葵转交给桃酱……这样理解没错吧？
[np]

[character name="ryuichi"]
【龙一】[r]（……即便如此……）
[np]

[r]说到底，可能仅限于中二病发作期间……
[np]

[r]但刚才桃酱恳求葵时那寸步不让的姿态……
[np]

[r]总觉得看起来好像成长了些许……是我的错觉吗
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

[jump storage="scenario/momo/momo_00400.ks"]