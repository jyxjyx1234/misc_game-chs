[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\06_千聖ルート\chisato_00700.txt]
;//chisato_00700
;//BG:bg15_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

;//■シーン回想が開始される箇所に上記タグをいれる
[if exp="tf.SceneMode_RunFlg"]
*SceneLoad
[backlay]
[freeimage layer=10 page=back]
[trans method=crossfade time=300]
[wt]
[endif]

;//TIME:昼
;//日付:9/20(日)
;//CH:竜一,sifuku
;//CH:千聖,tokushu

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]
[SYSTEMMENU]

;//空背景
[r]……尚存暑意的九月中旬。
[np]

[r]新学期伊始，我们甚至来不及留恋暑假，就为迎接下月初的运动会而忙碌奔波。
[np]

[r]然而在这之中——有个人比谁都更加忙碌。
[np]

;//通常ＣＧ０４挿入
[CG cgno=06 sabunno=06]
[SYSTEMMENU]

[playcv storage="chisato_chisato_00700_001.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「还请多多关照——！」
[np]

[r]正是那位在比赛中戏剧性夺冠，斩获宣传大使头衔的千圣。
[np]

;//★＠
[playcv storage="girl_chisato_00700_001.ogg" name="women"]
[character name="women"]
【女子】[r]「那、那个，我那天在会场看到了！真的超级可爱！我会支持你的！」
[np]

[CG cgno=06 sabunno=08]

[playcv storage="chisato_chisato_00700_002.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「哇，谢谢！今后也请继续支持我哦！」
[np]

[r]如今的千圣平日要兼顾学业、打工和运动会训练，周末则投身宣传活动——
[np]

[r]毫不夸张地说，她的日程紧凑得让人怀疑是艺人行程。
[np]

;//★＠
[playcv storage="jyoshiK_chisato_00700_001.ogg" name="women"]
[character name="women"]
【女子】[r]「啊，这不是那位吗？请问可以合影吗？」
[np]

[CG cgno=06 sabunno=09]

[playcv storage="chisato_chisato_00700_003.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「请便♪」
[np]

;//★＠
[playcv storage="jyoshiL_chisato_00700_001.ogg" name="women"]
[character name="women"]
【女子】[r]「好可爱…我也拍一张吧…那个，这边也…」
[np]


[CG cgno=06 sabunno=06]

[playcv storage="chisato_chisato_00700_004.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「好的。这样感觉可以吗？」
[np]

[r]服装固然亮眼，但或许是因为美少女的容姿太过引人注目，路人们纷纷举起手机将千圣收入镜头。
[np]

[r]眺望着这般光景的我，此刻也以男友兼经纪人的身份，既要掌握千圣的行程安排又要支援她的活动……
[np]

[character name="ryuichi"]
【龙一】[r]「哟，辛苦了」
[np]

[CG cgno=06 sabunno=07]

[playcv storage="chisato_chisato_00700_005.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「啊，龙一……！」
[np]

[r]趁着人潮暂歇的时机向千圣搭话。
[np]

[character name="ryuichi"]
【龙一】[r]「负责人说稍微休息下吧。口渴吗？」
[np]

[playcv storage="chisato_chisato_00700_006.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「嗯，没关系。谢谢……嘿嘿♪」
[np]

[r]即使在休息时被手机镜头对准也会立刻展露笑容……看来已经相当熟练了。
[np]

[CG cgno=06 sabunno=08]

[playcv storage="chisato_chisato_00700_007.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「啊，说起来今天轮到我做晚饭吧？回家前得顺道去趟超市」
[np]

[character name="ryuichi"]
【龙一】[r]「那样的话，桃酱说可以代替接手哦」
[np]

[CG cgno=06 sabunno=07]


[playcv storage="chisato_chisato_00700_008.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「哎，又……？不过这样实在不好意思……今天还是我来做。记得帮我转告桃」
[np]

[character name="ryuichi"]
【龙一】[r]「没关系倒是没关系……但你可别太勉强自己啊？」
[np]

[CG cgno=06 sabunno=09]

;//「プリズムエンジェリオン」でお願いします
[playcv storage="chisato_chisato_00700_009.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「不要紧。作为光之圣天使，这种程度可不会叫苦哦」
[np]

[r]千圣在比赛当天、甚至直到现在仍在扮演的——光之圣天使——。
[np]

[r]据说这竟然是原作者和动画导演的意向，决定让她在第二季动画中以原创角色身份登场。
[np]

[r]在自己最爱的作品中，让自己现身于那个世界……当听到这个汇报时千圣欢呼雀跃的样子，至今记忆犹新。
[np]

[character name="ryuichi"]
【龙一】[r]「不过你也真是够拼的……身体没问题吗？」
[np]

[CG cgno=06 sabunno=08]

[playcv storage="chisato_chisato_00700_010.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「嗯，没事。我自己觉得应该没有勉强」
[np]

[character name="ryuichi"]
【龙一】[r]「但这么高强度的行程都能撑过来……真是了不起啊，真的」
[np]

[playcv storage="chisato_chisato_00700_011.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「……毕竟，这样的时光只有现在啊」
[np]

[r]千圣微微抬起视线，湛蓝晴空映入她的眼眸。
[np]

[CG cgno=06 sabunno=07]

[playcv storage="chisato_chisato_00700_012.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「能穿上这样的衣服、做这种事的机会……这辈子就只有现在了」
[np]

[playcv storage="chisato_chisato_00700_013.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「所以我想竭尽全力……拼尽全力地去努力」
[np]

[character name="ryuichi"]
【龙一】[r]「原来如此」
[np]

[playcv storage="chisato_chisato_00700_014.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「一旦这么想，疲惫什么的就全都烟消云散了」
[np]

[r]千圣那毫无迷茫的笑容……光是看着就让人心头自然温暖起来。
[np]

[CG cgno=06 sabunno=09]

[playcv storage="chisato_chisato_00700_015.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「所以……再稍微忍耐一下好吗？」
[np]

[char_erase name="chisato"]
[character name="ryuichi"]
【龙一】[r]「啊、忍耐什么？」
[np]

[CG cgno=06 sabunno=07]

[playcv storage="chisato_chisato_00700_016.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「这次宣传活动结束后，我的使命也就完成了……直到我变回普通的女孩子为止」
[np]

[r]哎……
[np]

[character name="ryuichi"]
【龙一】[r]「普通的女孩子……？你是说……」
[np]

[CG cgno=06 sabunno=07]

[playcv storage="chisato_chisato_00700_017.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「……我觉得在各方面，现在或许正是最合适的时机」
[np]

[r]千圣保持着微笑，却带着几分认真的神情……轻声编织着话语。
[np]

[playcv storage="chisato_chisato_00700_018.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「像做梦般被选中担任这个角色，如今每天都过得很快乐……简直就像被施了魔法一样……」
[np]

[playcv storage="chisato_chisato_00700_019.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「所以等到这一切结束后……我大概就会像魔法解除后变回普通的女孩子……这样的预感」
[np]

[char_erase name="chisato"]
[r]也就是说……千圣你打算摆脱中二病……
[np]

[CG cgno=06 sabunno=08]

[playcv storage="chisato_chisato_00700_020.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「……其实所谓中二病……当自己意识到的时候，说不定就已经痊愈了」
[np]

[character name="ryuichi"]
【龙一】[r]「哎……？」
[np]

[playcv storage="chisato_chisato_00700_021.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「我认为中二病……应该是那些发自内心相信神秘力量存在……并且毫不怀疑地生活着的人们」
[np]

[playcv storage="chisato_chisato_00700_022.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「所以像我这样刻意区分使用时……就已经只是单纯的演技了……」
[np]

[CG cgno=06 sabunno=07]


[playcv storage="chisato_chisato_00700_023.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「啊呀，不小心说了正经话。要是被知道魔法少女说这种话，形象会受损吧？」
[np]

[character name="ryuichi"]
【龙一】[r]「不，我觉得没问题」
[np]

[r]……这样啊，变回普通女孩子吗……
[np]

[r]既开心又难过的矛盾心情才是最真实的感受……不过既然是千圣的决定
[np]

[CG cgno=06 sabunno=06]

[playcv storage="chisato_chisato_00700_024.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「所以请再等等吧。等到我的魔法解除为止」
[np]

[character name="ryuichi"]
【龙一】[r]「半年对吧？不过听说根据情况可能会延期」
[np]

[CG cgno=06 sabunno=07]

[playcv storage="chisato_chisato_00700_025.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「是呀……和我相处的时间变少，果然会寂寞吗？」
[np]

[character name="ryuichi"]
【龙一】[r]「要说不会寂寞……那肯定是骗人的」
[np]


[CG cgno=06 sabunno=09]

;//「プリズムエンジェリオン」でお願いします
[playcv storage="chisato_chisato_00700_026.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「呵呵……那么现在就让本圣天使——光之圣天使……给龙一施加一道绝不会寂寞的强效魔法咒语吧」
[np]

[r]千圣半开玩笑地说着，朝我这边迈近了一步。
[np]

[character name="ryuichi"]
【龙一】[r]「呵，那可真是让人期待」
[np]


[CG cgno=06 sabunno=06]

[playcv storage="chisato_chisato_00700_027.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「嘿嘿。那我要开始咯」
[np]

[r]千圣与我面对面……兴致勃勃地伸出手来。
[np]

[CG cgno=06 sabunno=07]

[playcv storage="chisato_chisato_00700_028.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「愿自天而降的我……与我深爱的命运之人……共同祈愿这份幸福……」
[np]

[char_erase name="chisato"]
[r]此刻无比快乐的感受满溢心头。她带着这样真挚的心意扬起满面笑容——
[np]

[CG cgno=06 sabunno=06]

[playcv storage="chisato_chisato_00700_029.ogg" name="chisato"]
[character name="chisato"]
【千圣】[r]「愿我们的未来……永驻光明祝福……！」
[np]

;//■回想シーンの戻し処理
[SCENEFLG no=5]
[if exp="tf.SceneMode_RunFlg"]
[return]
[endif]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="fin_chisato.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[waitclick]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg_white.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=3000]
[wt]

[wait time="2000"]

[jump storage="title.ks"]