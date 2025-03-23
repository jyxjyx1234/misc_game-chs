[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00080.txt]
;//chisato_00080
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夜
;//日付:7/6(月)
;//CH:竜一,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[fadeinbgm storage="bgm/BGM05.ogg" time="500"]

[satomi storage="A_sifuku_M AB_2_M"]
[playcv storage="satomi_chisato_00080_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊——这种情形常有啦，总感觉自己输了一样，当抽到纸巾盒的最后一张时对吧——」
[np]
[FACEHIDE]

[r]……今天是周一，后天就是期末考第一天……
[np]

[r]姑且算是认真复习过的我，早早冲完澡准备睡觉……
[np]

[satomi storage="C_sifuku_M CD_2_M"]
[playcv storage="satomi_chisato_00080_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊哈哈哈哈！我也一样！完全和这个搞笑艺人同感！太懂了！」
[np]
[FACEHIDE]

[char_erase name="satomi"]
[r]都怪这个从刚才开始就对着电视自言自语的醉鬼，根本没法睡！
[np]

[r]我本来也算熬夜党，之前倒是不觉得有什么……
[np]

[r]妨碍备考学生调整作息的宿舍管理员算什么操作！？
[np]

[character name="ryuichi"]
【龙一】[r]「……算了，背点英语单词吧……」
[np]

[r]从书包里掏出自制单词卡，翻开第一张——
[np]

[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_chisato_00080_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「神原同学……」
[np]
[FACEHIDE]

[r]正要翻页时，被笼外的绫濑唤住了。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯，怎么了？」
[np]

[chisato storage="C_sifuku_M CD_9_M"]
[playcv storage="chisato_chisato_00080_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_sifuku"]
【千圣】[r]「那个……三分钟。三分钟后能来我房间吗……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[chisato storage="D_sifuku_M CD_1_M"]
[playcv storage="chisato_chisato_00080_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_sifuku"]
【千圣】[r]「那就这么说定了，我等你……」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00280.ogg"]

[char_erase name="chisato"]
[r]绫濑留下这句意味深长的话后便小跑着上了楼梯。
[np]

[r]三分钟……？不过先不说这个……现在时间也挺晚了吧？
[np]

[r]尽管如此还叫我这个男生去她房间……到、到底怎么回事？为什么？究竟是……？
[np]

[r]不知为何心跳得好厉害……！到底有什么在等着我啊……！？
[np]

[HIDESYSTEMMENU]
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[SYSTEMMENU]

;//暗転
[r]怀着这般期待，我掐准整整三分钟后来到绫濑房门前……
[np]

;//\SEノック音
[character name="ryuichi"]
【龙一】[r]「啊，绫濑……？」
[np]

;//ドア越し
;[chisato storage="A_sifuku_M A_1_M"]
[playcv storage="chisato_chisato_00080_004.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「啊、神原同学……进来吧」
[np]
[FACEHIDE]

[r]得到绫濑的应允后，我强压着紧张推开了那扇门——
[np]

[playse buf=5 storage="sound/00320.ogg"]

;//背景を千聖の部屋bg07_03に
;//千聖の衣装を中二衣装に

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]


[backlay]
[freeimage layer=1 page=back]
[image storage="bg07_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[r]踏入这个昨天才初次造访的，绫濑的房间——
[np]

[character name="ryuichi"]
【龙一】[r]「这……咦？」
[np]

[chisato storage="B_tokushu_M AB_9_M"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00080_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_9_FACE_tokushu"]
【千圣】[r]「快、快关门，快……！」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/00320.ogg"]

[r]在慌张的绫濑催促下，我反手关上了门。
[np]

[r]比起被叫来房间的原因，此刻我首先注意到的是——
[np]

[character name="ryuichi"]
【龙一】[r]「呃……你这身打扮是怎么回事……？」
[np]

[r]我注意到原本穿着便服的绫濑，此刻换上了昨天那套战斗服。
[np]

[chisato storage="C_tokushu_M CD2_1_M"]
[playcv storage="chisato_chisato_00080_006.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_tokushu"]
【千圣】[r]「其实呢，今天买回来的魔天漫画版最新卷读着读着…我突然灵光一现！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……灵光乍现？」
[np]

;//「プリズム・エンジェリオン」でお願いします。
[chisato storage="A_tokushu_L AB_3_L"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00080_007.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_tokushu"]
【千圣】[r]「对！——关于《光之圣天使》的新必杀技！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………………………」
[np]

[chisato storage="C_tokushu_L CD2_9_L"]
[playcv storage="chisato_chisato_00080_008.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_9_FACE_tokushu"]
【千圣】[r]「等…你、你倒是说点什么呀！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，不……这、这样啊，挺好的……」
[np]

[chisato storage="A_tokushu_M AB_3_M"]
[playcv storage="chisato_chisato_00080_009.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_tokushu"]
【千圣】[r]「其实呢，我就是想让你看看这个……然后听听你的感想什么的。」
[np]
[FACEHIDE]

[r]啊……原来如此，从便服换回那套战斗服……花了三分钟就是这个原因啊。
[np]

[chisato storage="A_tokushu_M AB_11_M"]
[playcv storage="chisato_chisato_00080_010.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「那我开始咯……」
[np]
[FACEHIDE]

[r]只见绫濑根本不等我回应，自顾自摆出了煞有其事的姿势……
[np]

[char_erase name="chisato"]




;//通常ＣＧ０１挿入
[HIDESYSTEMMENU]

[CG cgno=06 sabunno=01]


[SYSTEMMENU]

;[chisato storage="A_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00080_011.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「……凝聚光之碎片的这只手掌，承载着大家的希望与思念……！」
[np]
;[FACEHIDE]

[CG cgno=06 sabunno=05]
;[chisato storage="A_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00080_012.ogg" name="chisato"]
[character name="chisato"]
;[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「回应祈求和平的心愿吧！永恒之誓！！！」
[np]
;[FACEHIDE]

;//背景表示
[HIDESYSTEMMENU]

[CGHIDE]

[SYSTEMMENU]


[chisato storage="A_tokushu_M AB_1_M"]

[character name="ryuichi"]
【龙一】[r]「……………………」
[np]

[chisato storage="A_tokushu_M AB_11_M"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00080_013.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「……怎么样？」
[np]
[FACEHIDE]

[r]那个……首先我想问，为什么你能摆出这么得意的表情盯着我看。
[np]

[character name="ryuichi"]
【龙一】[r]「呃，这个嘛，嗯……挺好的不是吗……？」
[np]

[chisato storage="C_tokushu_M CD2_11_M"]
[playcv storage="chisato_chisato_00080_014.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_11_FACE_tokushu"]
【千圣】[r]「你这反应算什么嘛……就不能说点更贴心的话吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话说回来这到底是什么招式……？」
[np]

[chisato storage="B_tokushu_M AB_3_M"]
[playcv storage="chisato_chisato_00080_015.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_3_FACE_tokushu"]
【千圣】[r]「呵呵呵……永恒之誓是将人们的祈愿转化为力量，向敌人释放的招式」
[np]
[FACEHIDE]

[chisato storage="A_tokushu_M AB_11_M"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00080_016.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_tokushu"]
【千圣】[r]「汇聚的思念越是强烈……就越能给敌人造成巨大伤害！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那永恒之誓这个名称有什么含义？」
[np]

[chisato storage="C_tokushu_M CD2_10_M"]
[playcv storage="chisato_chisato_00080_017.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「呃……这、这个嘛……永、永恒就是永远的意思……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「誓约呢？」
[np]

[chisato storage="B_tokushu_M AB_6_M"]
[playcv storage="chisato_chisato_00080_018.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「…………………………」
[np]
[FACEHIDE]

[r]她移开视线，脸颊微微泛红的反应……不知为何竟觉得有些可爱。
[np]

[character name="ryuichi"]
【龙一】[r]「那个暂且不提……我可以问最在意的事吗？」
[np]

[chisato storage="C_tokushu_M CD2_8_M"]
[playcv storage="chisato_chisato_00080_019.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_tokushu"]
【千圣】[r]「哎……什、什么？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……为什么要特意展示给我看？」
[np]

[chisato storage="D_tokushu_M CD2_10_M"]
[playcv storage="chisato_chisato_00080_020.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_10_FACE_tokushu"]
【千圣】[r]「那、那是因为……没办法嘛……」
[np]
[FACEHIDE]

[chisato storage="B_tokushu_M AB_6_M"]
[playcv storage="chisato_chisato_00080_021.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「想到新招式的话，任谁都会想找人展示……但除了神原君之外，根本没有可以展示的人啊……」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD_5_M"]


[r]不过以绫濑的性格来说，就算是给我看应该也会觉得害羞才对……
[np]

[r]但她似乎完全不在意这一点……想到这里，连我自己都莫名有些开心。
[np]

[character name="ryuichi"]
【龙一】[r]「除了我之外，还有人知道绫濑的中二病吗？」
[np]

[chisato storage="C_tokushu_M CD2_1_M"]
[playcv storage="chisato_chisato_00080_022.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_tokushu"]
【千圣】[r]「…姑且也有在做魔天的ｃｏｓｐｌａｙ啦…所以会和通过作品认识的朋友聊聊相关话题…」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_3_M"]
[playcv storage="chisato_chisato_00080_023.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_3_FACE_tokushu"]
【千圣】[r]「但是……这份狂热到如此程度的秘密……只有神原君知道哦……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]每次被她这样特殊对待……就会觉得难为情。
[np]

[chisato storage="A_tokushu_M AB_6_M"]
[playcv storage="chisato_chisato_00080_024.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_tokushu"]
【千圣】[r]「不过刚才的反应好平淡呢……新招式不够帅气吗……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是的，只是我完全不懂这些而已……」
[np]

[chisato storage="C_tokushu_M CD2_5_M"]
[playcv storage="chisato_chisato_00080_025.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_tokushu"]
【千圣】[r]「就是说啊…给连魔字怎么写都不知道的人看的话……啊…」
[np]
[FACEHIDE]

[chisato storage="C_tokushu_M CD2_8_M"]

[character name="ryuichi"]
【龙一】[r]「怎么了？」
[np]

[chisato storage="B_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00080_026.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「有办法了！既然你不懂就让你懂不就好了嘛，很简单呀……！」
[np]
[FACEHIDE]

[r]方才还眉头紧蹙的绫濑眼中，渐渐亮起光芒。
[np]

[chisato storage="A_tokushu_M AB_2_M"]
[playcv storage="chisato_chisato_00080_027.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_tokushu"]
【千圣】[r]「正好我也想重温全套剧集很久了……现在正是时候呢」
[np]
[FACEHIDE]

[r]虽然看起来像是绫濑在自说自话地推进着计划……
[np]

[chisato storage="C_tokushu_M CD2_2_M"]
[playcv storage="chisato_chisato_00080_028.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_tokushu"]
【千圣】[r]「所以呢…神原君！等考试结束后，我们办魔天的放映会吧！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「放、放映会……？」
[np]

[chisato storage="D_tokushu_M CD2_1_M"]
[playcv storage="chisato_chisato_00080_029.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_1_FACE_tokushu"]
【千圣】[r]「嗯。全２４集大概要十二小时左右……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「十二小时不就半天吗！晚上开始看的话天亮都看不完！？」
[np]

[chisato storage="B_tokushu_M AB_2_M"]
[playcv storage="chisato_chisato_00080_030.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_2_FACE_tokushu"]
【千圣】[r]「反正你还年轻，熬个夜没什么大不了的吧？」
[np]
[FACEHIDE]

[r]这不像绫濑平时的作风……是对作品的热情让她变得这么强势吗……？
[np]

[chisato storage="A_tokushu_M AB_1_M"]
[playcv storage="chisato_chisato_00080_031.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_tokushu"]
【千圣】[r]「考试结束后的周五晚上如何？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……那就这么定吧」
[np]

[r]说到底，我参加放映会这件事仿佛早已成定局……
[np]

[r]就算现在提出异议，绫濑也不会改变想法吧……既然如此，除了点头别无选择。
[np]

[chisato storage="C_tokushu_M CD2_2_M"]
[char_jump name=chisato]

[playcv storage="chisato_chisato_00080_032.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_2_FACE_tokushu"]
【千圣】[r]「那就这么定啦……呵呵，真是令人期待哦！♪」
[np]
[FACEHIDE]

[char_erase name="chisato"]


[r]…究竟，我能不能好好享受绫濑深爱的魔天呢…
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


;//JUMP:chisato_00090
[jump storage="scenario/chisato/chisato_00090.ks"]

