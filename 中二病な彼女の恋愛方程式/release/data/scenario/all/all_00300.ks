[SCENESTART file=all_00300.ks]
;//all_00300
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:6/25(木)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[character name="ryuichi"]
【龙一】[r]「……就这样，结果定了去超市打工。」
[np]

[r]在吃晚饭时，我把打工定下来的经过告诉了大家。
[np]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00300_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「说起来，之前有听说过传闻呢……那家店的店长是个相当奇怪的人」
[np]
[FACEHIDE]

[r]奇怪的人，简称怪人……到现在我还不敢相信店长会是那样的人。
[np]

[momo storage="B_sifuku_M AB_7_M"]
[playcv storage="momo_all_00300_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「这样一来，以后去购物的话，说不定会偶然遇到正在打工的神原先辈呢……」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_all_00300_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「啊，这么说来……感觉有点不好意思呢」
[np]
[FACEHIDE]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00300_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「会吗？我倒是在想要积极地过去捉弄他呢」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「别，购物就算了，捉弄还请高抬贵手」
[np]

[char_erase name="mion chisato momo"]

[r]毕竟澪音学姐是真的会这么做，让人害怕啊……。
[np]

[r]就这样，吃完晚饭过了一会儿……
[np]

;//時間経過
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
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_all_00300_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「龙一君，现在方便吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「？什么事？」
[np]

[r]正在客厅休息时，澪音学姐突然叫住了我。
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00300_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「能来我房间吗？有件事想拜托你」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「想拜托的事……？」
[np]

[char_erase name="mion"]

[r]澪音学姐要找我……？
[np]

[r]因为之前那件事，虽然心里有点戒备……不过应该没问题吧。
[np]

;//背景を澪音の部屋bg06_03に
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
[image storage="bg06_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「打扰了……」
[np]

[r]跟着澪音学姐走进了房间。
[np]

[r]和上次看到时一样……房间还是漆黑一片啊。
[np]

[character name="ryuichi"]
【龙一】[r]「那个，您说的要拜托的事是……」
[np]

[mion storage="B_sifuku_M AB1_5_M"]
[playcv storage="mion_all_00300_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_sifuku"]
【澪音】[r]「其实最近肩膀酸痛得厉害…大概是电脑用太久了」
[np]
[FACEHIDE]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00300_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「所以能帮我做个以肩部为主的按摩吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「按、按摩……要我吗？」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00300_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「不行吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、也不是不行……但为什么找我呢？」
[np]

[mion storage="C_sifuku_M CD1_3_M"]
[playcv storage="mion_all_00300_008.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_sifuku"]
【澪音】[r]「男生力气比女生大，按摩起来更容易缓解僵硬吧？」
[np]
[FACEHIDE]

[r]听起来有理……真的是这样吗？
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00300_009.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「当然不勉强你，拒绝也没关系的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「被这么一说反而不好拒绝了……」
[np]

[if exp="0"]
;シーンジャンプ時のみ突入
*SCJump

	[backlay]
	[freeimage layer=1 page=back]
	[image storage="bg06_03.png" left=0 top=0 layer=0 page=back visible=true]
	[trans method=crossfade time=1000]
	[wt]

	[SYSTEMMENU]
	[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[endif]


[r]该怎么办呢
[np]

;//選択肢の作成
[select_start ]
[select_opt bgtop=230 bareaheight=150]
	[select_button text=好，开始吧！ jump target="*select1"]
	[select_button text=我拒绝！ jump target="*select2"]
[select_end]

*select1
[SetSJumpFlg storage="scenario/all/all_00300.ks" target="*SCJump" Runflg="1"]
[SetSJumpTarget storage="scenario/all/all_00310.ks" target="*SCJump" Runflg="0"]

[eval exp="f.SelectFlg=0"]
[eval exp="f.Select00300_0=0"]
[eval exp="f.love_mion=f.love_mion+1"]
[jump target="*selectA"]

;//よし、やりましょう！、を選んだ場合
*selectA
[character name="ryuichi"]
【龙一】[r]「好，我来吧！」
[np]

[r]总不能一直怀疑前辈，要相信同宿舍的伙伴啊！
[np]

[mion storage="C_sifuku_M CD1_2_M"]
[playcv storage="mion_all_00300_010.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_2_FACE_sifuku"]
【澪音】[r]「谢谢。那就拜托了」
[np]
[FACEHIDE]

[char_erase name="mion"]

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

;//ＣＧ挿入
[CG cgno=52 sabunno=01]
[SYSTEMMENU]

[r]站到坐在椅子上的澪音前辈身后，将双手放在她的双肩上。
[np]

[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[playcv storage="mion_all_00300_011.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯……嗯嗯……」
[np]

[r]然后温柔地施加力道开始按摩。
[np]

[character name="ryuichi"]
【龙一】[r]「虽说要按摩，但我完全不懂这些门道……总之先按肩膀可以吗？」
[np]

[playcv storage="mion_all_00300_012.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯，这样就可以了。谢谢你……嗯……啊……」
[np]

[r]指尖发力揉按着澪音前辈的肩膀。
[np]

[character name="ryuichi"]
【龙一】[r]「确实僵硬得厉害呢……」
[np]

[playcv storage="mion_all_00300_013.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「毕竟我几乎每天都在用电脑……嗯、哈啊……」
[np]

[playcv storage="mion_all_00300_014.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「比其他人更……嗯、嗯嗯……肩膀承受的负担……啊、嗯嗯……」
[np]

[r]澪音前辈的桌面上摆放着性能不错的电脑。四周还放置着各种精密仪器……
[np]

[r]虽不懂这些专业设备，但光是坐在这里就能感受到这是无所不能的环境。
[np]

[CG cgno=52 sabunno=02]

[playcv storage="mion_all_00300_015.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯、嗯嗯……啊、对、就是那里……很好……」
[np]

[character name="ryuichi"]
【龙一】[r]「是这里吗？」
[np]

[CG cgno=52 sabunno=03]

[playcv storage="mion_all_00300_016.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「对、就是那里……可以了、嗯、嗯啊……哈啊……」
[np]

[r]……嗯？
[np]

[playcv storage="mion_all_00300_017.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「再用力些……用力点、龙一、你……啊啊……！」
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[playcv storage="mion_all_00300_018.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「对、就是这样……尽管再用力些……再用力也没关系……」
[np]

[playcv storage="mion_all_00300_019.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「把我……把我的身体、尽情蹂躏吧！！」
[np]

[fadeoutbgm time="1000"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM14.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「等等等等等等一下！！！」
[np]

[mion storage="A_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00300_020.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「哎呀、怎么了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「太奇怪了吧！这根本不是被按摩肩膀该发出的声音、说的话也不对劲！」
[np]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00300_021.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「有吗……？我觉得被男人的手指引导向快感的女人、做出这种反应很合理呀？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「快停止这种危险发言！！」
[np]

[mion storage="B_sifuku_M AB1_3_M"]
[playcv storage="mion_all_00300_022.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「而且龙一君技术太好了……我都舒服得不行了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「所以都说了不要用这种说法啊！」
[np]

[mion storage="C_sifuku_M CD1_5_M"]
[playcv storage="mion_all_00300_023.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「话说回来，已经要结束了吗……？我还想再多享受一会儿呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……啊啊真是的，好啦好啦我知道了……！」
[np]

[char_erase name="mion"]
[fadeoutbgm time="1000"]

;//ＣＧ挿入
[r]再次站到前辈身后，将双手放在她双肩上。
[np]

;//ＣＧ挿入
[CG cgno=52 sabunno=03]

[fadeinbgm storage="bgm/BGM09.ogg" time="500"]

[playcv storage="mion_all_00300_024.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯……嗯嗯……」
[np]

[r]虽然早就这么觉得了……我根本就是澪音前辈的称心玩偶吧。
[np]

[r]不过……要问我讨不讨厌这样，倒也没那么讨厌就是了。
[np]

[playcv storage="mion_all_00300_025.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯、啊……对、就是那里龙一君……啊、好棒、好舒服……」
[np]

[character name="ryuichi"]
【龙一】[r]「是是，这里对吧……」
[np]

[playcv storage="mion_all_00300_026.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯、没错……那里再、再用力些……啊、啊啊、哈啊……！」
[np]

[playcv storage="mion_all_00300_027.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呀啊啊……！啊、这、这么激烈的话……会受不了的呀……」
[np]

[character name="ryuichi"]
【龙一】[r]「到底是哪样啊……！」
[np]

[CG cgno=52 sabunno=04]

[playcv storage="mion_all_00300_028.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「唔……啊、嗯、嗯……哈啊、啊、哈啊……嗯、啊……」
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[playcv storage="mion_all_00300_029.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「可以哦……龙一君的手指、在我的、身体上……啊、哈啊……」
[np]

[r]刚才还只觉得别扭，条件反射地吐槽了……
[np]

[playcv storage="mion_all_00300_030.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「我的、僵硬部位被刺激着……感觉、好舒服……！」
[np]

[r]澪音前辈的喘息声，重新听来异常性感……！
[np]

[CG cgno=52 sabunno=02]

[playcv storage="mion_all_00300_031.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「呀呜嗯！」
[np]

[character name="ryuichi"]
【龙一】[r]「！？」
[np]

[r]澪音前辈的身体突然抽动，连我也跟着产生反应。
[np]

[r]这、这只是揉肩对吧……？只是普通的揉肩而已，为什么我会兴奋起来……！？
[np]

[CG cgno=52 sabunno=03]

[playcv storage="mion_all_00300_032.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯、唔……哈、哈啊……啊、好厉害……」
[np]

[playcv storage="mion_all_00300_033.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「龙一君有力的手指技巧……啊啊、嗯、哈啊……！」
[np]

[playcv storage="mion_all_00300_034.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「已经、不行了……声音、控制不住……啊、哈啊、嗯、嗯啊啊啊！」
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]不、不妙……！明明只是听着声音而已……！
[np]

[r]我的小兄弟已经硬得发烫了！
[np]

[character name="ryuichi"]
【龙一】[r]「那、那个澪音前辈，差不多该……！」
[np]

[CG cgno=52 sabunno=01]

[playcv storage="mion_all_00300_035.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「嗯……要结束了吗……？」
[np]

[character name="ryuichi"]
【龙一】[r]「差、差不多可以了吧！肌肉僵硬也缓解很多了……！」
[np]

[playcv storage="mion_all_00300_036.ogg" name="mion"]
[character name="mion"]
【澪音】[r]「是啊……呵呵，今天就到此为止吧……」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=51]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//背景表示
[r]得到澪音前辈允许后，慌忙退开距离。
[np]

[r]不行不行……！要是现在被看到下半身，绝对会被当成笑柄的……！
[np]

[mion storage="B_sifuku_M AB1_2_M"]
[playcv storage="mion_all_00300_037.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_2_FACE_sifuku"]
【澪音】[r]「真的非常舒服……下次还要拜托龙一君——」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「失、失礼了啊啊啊！！」
[np]

[char_erase name="mion"]

;//背景を寮のリビングbg02_03に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]我几乎是逃出澪音前辈的房间，把自己关进牢笼般的宿舍。
[np]

[character name="ryuichi"]
【龙一】[r]「唔……！」
[np]

[r]简、简直就是宿舍魔女……说是魔性之女也不为过……！
[np]

[r]听着那种性感的声音，下半身已经完全兴奋起来了……！这责任你负得起吗！
[np]

[r]这副样子绝对不能被人看到……总之冷静、给我冷静下来！
[np]

[r]等大家都睡着之后，我会好好安抚你的……！所以现在——
[np]

[character name="ryuichi"]
【龙一】[r]「呃……！」
[np]

[r]听到背后传来的响动，慌忙转身时……
[np]

[supica storage="A_sifuku_M AB_1_M"]
[playcv storage="supica_all_00300_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……」
[np]
[FACEHIDE]

[r]不知去了哪里的真珠星正站在玄关处。
[np]

[character name="ryuichi"]
【龙一】[r]「欢、欢迎回来真珠星……刚才出门了吗？」
[np]

[supica storage="C1_sifuku_M CD_1_M"]
[playcv storage="supica_all_00300_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……川原……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「川原……？又，为什么这种时候……」
[np]

[supica storage="B4_sifuku_M AB_4_M"]
[playcv storage="supica_all_00300_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「……咕咕咕……」
[np]
[FACEHIDE]

[r]咦……怎么好像不太高兴？
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，怎么了……？」
[np]

[supica storage="D_sifuku_M CD_4_M"]
[playcv storage="supica_all_00300_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……毁灭……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「诶……」
[np]

[supica storage="A_sifuku_M AB_4_M"]
[playcv storage="supica_all_00300_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_4_FACE_sifuku"]
【真珠星】[r]「区区下等生物……竟敢碰真珠星的血……不可饶恕……绝对要毁灭……」
[np]
[FACEHIDE]

[char_erase name=supica to=left time=800 fade=true]

[r]真珠星恨恨地嘟囔着，转身回到了自己房间。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]虽然说了些很危险的话……到底在说什么事情？
[np]

;//JUMP:all_00320

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

[jump storage="scenario/all/all_00320.ks"]

;//ここまで

;//お断りします！、を選んだ場合
*select2
[SetSJumpFlg storage="scenario/all/all_00300.ks" target="*SCJump" Runflg="0"]
[SetSJumpTarget storage="scenario/all/all_00310.ks" target="*SCJump" Runflg="1"]

[eval exp="f.SelectFlg=1"]
[eval exp="f.Select00300_0=1"]
[jump target="*selectB"]

*selectB
[character name="ryuichi"]
【龙一】[r]「我拒绝！」
[np]

[mion storage="C_sifuku_M CD1_7_M"]
[playcv storage="mion_all_00300_038.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_sifuku"]
【澪音】[r]「哎呀，为什么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、那个……因为有种非常不好的预感」
[np]

[mion storage="D_sifuku_M CD1_10_M"]
[playcv storage="mion_all_00300_039.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「这样啊……总觉得我好像被警惕了呢……哧哧……」
[np]
[FACEHIDE]

[r]既然有自知之明的话，希望你能稍微普通一点地相处……
[np]

[character name="ryuichi"]
【龙一】[r]「就、就是这样，先告辞了……！」
[np]

[char_erase name="mion"]

[jump target="*selectEnd"]

*selectEnd

[HIDESYSTEMMENU]

;//JUMP:all_00310
[jump storage="scenario/all/all_00310.ks"]