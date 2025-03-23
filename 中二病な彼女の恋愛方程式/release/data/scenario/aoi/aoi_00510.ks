[SCENESTART file=aoi_00510.ks]
;//aoi_00510
;//BG:bg03_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg03_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/17(金)
;//CH:竜一,pajyama
;//CH:葵,pajyama

[aoi storage="C_pajyama_M CD_7_M"]
[playcv storage="aoi_aoi_00510_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_pajyama"]
【葵】[r]「啊……」
[np]
[FACEHIDE]

[r]结束初次的行为后，冲完澡回到房间。
[np]

[char_erase name="aoi"]

[r]一和我对上视线，葵就轻轻漏出声音垂下目光。
[np]

[r]这也难怪……毕竟直到刚才，还在这房间里做了那种事……
[np]

[r]我明白她害羞的心情，但被这么对待连我自己都感到难为情……
[np]

[character name="ryuichi"]
【龙一】[r]「该……睡了吧？」
[np]

[aoi storage="A_pajyama_M A_3_M"]
[playcv storage="aoi_aoi_00510_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_3_FACE_pajyama"]
【葵】[r]「是、是啊……就这么办吧」
[np]
[FACEHIDE]

[r]但愿到了明早这种尴尬的气氛能缓和些……
[np]

[r]一边这么想着，一边铺好被褥准备就寝——
[np]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00510_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「啊……龙、龙一」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯？」
[np]

[aoi storage="A_pajyama_M A_9_M"]
[playcv storage="aoi_aoi_00510_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_pajyama"]
【葵】[r]「那个……呃、那个……」
[np]
[FACEHIDE]

[r]葵局促不安地搓着手，欲言又止。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[aoi storage="C_pajyama_M CD_5_M"]
[playcv storage="aoi_aoi_00510_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_5_FACE_pajyama"]
【葵】[r]「那个……睡、睡在那里……会不会有点挤？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶？啊……不过也没到不能忍受的程度啦」
[np]

[aoi storage="D_pajyama_M CD_9_M"]
[playcv storage="aoi_aoi_00510_006.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_pajyama"]
【葵】[r]「可、可是……勉强自己会伤身体的……」
[np]
[FACEHIDE]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00510_007.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「所、所以……这、这是个提议……」
[np]
[FACEHIDE]

[aoi storage="A_pajyama_M A_9_M"]
[playcv storage="aoi_aoi_00510_008.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_pajyama"]
【葵】[r]「和、和我……同睡一张床……不、不行吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……」
[np]

[aoi storage="D_pajyama_M CD_9_M"]
[playcv storage="aoi_aoi_00510_009.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_9_FACE_pajyama"]
【葵】[r]「我、我和龙一已经……是、是缔结了血之契约的关系」
[np]
[FACEHIDE]

[aoi storage="C_pajyama_M CD_8_M"]
[playcv storage="aoi_aoi_00510_010.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_8_FACE_pajyama"]
【葵】[r]「所以……同、同盖一床被子睡觉什么的……应、应该没什么大不了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……真的可以吗？」
[np]

[aoi storage="A_pajyama_M A_9_M"]
[playcv storage="aoi_aoi_00510_011.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_pajyama"]
【葵】[r]「这、这有什么！我们不就是这种关系吗……！」
[np]
[FACEHIDE]

[r]……没想到葵会主动提出这样的建议，完全出乎我的意料。
[np]

[character name="ryuichi"]
【龙一】[r]「那我就恭敬不如从命了……」
[np]

[char_erase name="aoi"]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]
[SYSTEMMENU]

;//通常ＣＧ０２挿入
[CG cgno=08 sabunno=03]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[r]关掉房间的灯，和葵面对面躺下。
[np]

[playcv storage="aoi_aoi_00510_012.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……！！」
[np]

[r]这、这比想象中还要近的距离……和做爱时不同意义上的紧张感……
[np]

[playcv storage="aoi_aoi_00510_013.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呃、呜……嗯……」
[np]

[character name="ryuichi"]
【龙一】[r]「怎么了……？」
[np]

[CG cgno=08 sabunno=01]

[playcv storage="aoi_aoi_00510_014.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊、不是……那个……」
[np]

[playcv storage="aoi_aoi_00510_015.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……比、比想象的，还要……龙一的脸实在太近了……心、心跳得好快……」
[np]

[character name="ryuichi"]
【龙一】[r]「……噗」
[np]

[playcv storage="aoi_aoi_00510_016.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哈啊！？」
[np]

[character name="ryuichi"]
【龙一】[r]「噗、呵呵……哈哈哈」
[np]

[CG cgno=08 sabunno=03]

[playcv storage="aoi_aoi_00510_017.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「你、你笑什么啊龙一！」
[np]

[character name="ryuichi"]
【龙一】[r]「没有……我刚才也和你想着同样的事……不知怎么就觉得好滑稽」
[np]

[playcv storage="aoi_aoi_00510_018.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「同、同样的事……？」
[np]

[character name="ryuichi"]
【龙一】[r]「和葵靠得这么近，心跳得厉害啊……没想到你和我有同样的感受」
[np]

[playcv storage="aoi_aoi_00510_019.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……」
[np]

[character name="ryuichi"]
【龙一】[r]「再这样下去，怕是心跳得根本睡不着吧……」
[np]

[CG cgno=08 sabunno=04]

[playcv storage="aoi_aoi_00510_020.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「确实……是这样呢……」
[np]

[playcv storage="aoi_aoi_00510_021.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「那、那要不要聊点什么……」
[np]

[character name="ryuichi"]
【龙一】[r]「聊天啊……」
[np]

[CG cgno=08 sabunno=05]

[playcv storage="aoi_aoi_00510_022.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「对了！是时候把为何会觉醒黑暗力量的原因告诉龙一了——」
[np]

[character name="ryuichi"]
【龙一】[r]「不，没兴趣」
[np]

[CG cgno=08 sabunno=03]

[playcv storage="aoi_aoi_00510_023.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「太过分了！！你这话伤透了我的少女心啊龙一！我要求用治愈魔法补偿！」
[np]

[character name="ryuichi"]
【龙一】[r]「那不该是桃酱的职责吗？」
[np]

[playcv storage="aoi_aoi_00510_024.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呜……确、确实……那、那只能忍着伤痛到明天早上了……」
[np]

[character name="ryuichi"]
【龙一】[r]「……不过先说好，不知道这个能不能代替治愈魔法……」
[np]

[r]龙一为了掩饰害羞说了这句开场白后，将手伸向葵的头顶……
[np]

[playcv storage="aoi_aoi_00510_025.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「呜诶……！啊、啊呜……」
[np]

[r]当龙一温柔地抚摸她的头发时，即使在月光下也能明显看到葵的脸变得通红。
[np]

[character name="ryuichi"]
【龙一】[r]「怎么样，稍微恢复些了吗……？」
[np]

[CG cgno=08 sabunno=01]

[playcv storage="aoi_aoi_00510_026.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「哪……哪会、恢复、啊……就、算是吧……」
[np]

[playcv storage="aoi_aoi_00510_027.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「嗯……说不定、稍微、好点了……」
[np]

[character name="ryuichi"]
【龙一】[r]「是吗，那就好」
[np]

[r]龙一缩回抚摸葵头顶的手，再次与葵四目相对。
[np]

[playcv storage="aoi_aoi_00510_028.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「……什么嘛……龙一明明也会用魔法啊」
[np]

[character name="ryuichi"]
【龙一】[r]「啊……？」
[np]

[playcv storage="aoi_aoi_00510_029.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「说是治愈魔法也好、什么也罢……就像刚才那样，通过直接触碰头部……那个……」
[np]

[playcv storage="aoi_aoi_00510_030.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「能、能让我的精神状态、稳定下来之类的……该怎么说呢、就是……」
[np]

[character name="ryuichi"]
【龙一】[r]「哦、原来是这么回事……」
[np]

[CG cgno=08 sabunno=03]

[playcv storage="aoi_aoi_00510_031.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「但、但是……这个魔法好像只对我一个人有效……！」
[np]

[character name="ryuichi"]
【龙一】[r]「哎……你怎么知道的？」
[np]

[playcv storage="aoi_aoi_00510_032.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「要、要你管……！所以、最好不要对其他对象使用……」
[np]

[r]……啊、原来如此。
[np]

[playcv storage="aoi_aoi_00510_033.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「听、听好了龙一、只准对我用哦……？不管是桃还是真珠星都不行、千万不能对魔女使用知道吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「呵呵……知道啦」
[np]

[playcv storage="aoi_aoi_00510_034.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「啊……」
[np]

[r]再次伸手温柔抚摸葵的头发。
[np]

[character name="ryuichi"]
【龙一】[r]「这个辅助魔法不会对葵以外的人使用。只对葵有效的特殊魔法……就这么回事」
[np]

[CG cgno=08 sabunno=05]

[playcv storage="aoi_aoi_00510_035.ogg" name="aoi"]
[character name="aoi"]
【葵】[r]「既、既然你明白……就好……呵呵……嘻嘻……」
[np]

[r]对我的承诺露出满意笑容的葵。
[np]

[r]在这样的交谈中，我们不知不觉便沉入了梦乡。
[np]

;//■回想シーンの戻し処理
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[SCENEFLG no="7"]


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
[CGHIDE]

[wait time="1000"]

;//JUMP:aoi_00520
[jump storage="scenario/aoi/aoi_00520.ks"]