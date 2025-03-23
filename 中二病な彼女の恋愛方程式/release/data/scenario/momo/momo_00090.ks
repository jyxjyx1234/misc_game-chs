[SCENESTART file=momo_00090.ks]
;//momo_00090
;//BG:bg01_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg01_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
;//TIME:昼
;//日付:7/5(日)
;//CH:竜一,tokushu
;//CH:もも,tokushu

[r]在超市买了饮料，半路上和茜分别……
[np]

[character name="ryuichi"]
【龙一】[r]「呼……」
[np]

[r]回到宿舍门口的时候，五百毫升的碳酸饮料已经喝光了。
[np]

[r]虽说因为无聊没多想就出来散步了，但这种季节果然还是吃不消啊。
[np]

;//\SEドアを開く音
[playse buf=5 storage="sound/00320.ogg"]
[wait time="500"]

[r]快些回到开着冷气的宿舍里——
[np]

;//ＳＤＣＧ挿入
[CG cgno=102 sabunno=01]
[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[playcv storage="momo_momo_00090_001.ogg" name="momo"]
[character name="momo"]
【桃】[r]「月光照耀下、缠绕荆棘的蔷薇啊……请回应我的愿望啊啊啊啊啊啊！！」
[np]

[r]……嗯？
[np]

[CG cgno=102 sabunno=02]

[playcv storage="momo_momo_00090_002.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊啊师父！请等一下，我现在就施展辅助魔法……！」
[np]

[CG cgno=102 sabunno=01]

[playcv storage="momo_momo_00090_003.ogg" name="momo"]
[character name="momo"]
【桃】[r]「……潜藏于我体内、被诅咒的荆棘之刺啊……！凭借这枚绶印，将你解放！」
[np]

;//「ブラックローズブレス」でお願いします
[playcv storage="momo_momo_00090_004.ogg" name="momo"]
[character name="momo"]
【桃】[r]「——黑蔷薇的加护——！！」
[np]

[r]桃酱用清晰的口吻这么喊着，举起手中类似法杖的东西。
[np]

;//「ヘルフレイム」でお願いします
[playcv storage="momo_momo_00090_005.ogg" name="momo"]
[character name="momo"]
【桃】[r]「就是现在师父！快用您擅长的——地狱火炎弹——吧！」
[np]

[r]环顾四周，师父葵的身影也不见踪影……
[np]

;//「ファントムミラージュ」でお願いします。
[playcv storage="momo_momo_00090_006.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呀——！不愧是师父！竟然能打破那个魔女擅长的——幻惑蜃楼——！！」
[np]

[r]既是魔女又是反派的澪音学姐，自然也不在这里。
[np]

[r]那里只有欢快地蹦蹦跳跳、独自嬉闹的桃酱一个人……
[np]

[playcv storage="momo_momo_00090_007.ogg" name="momo"]
[character name="momo"]
【桃】[r]「啊、师父！危险！！」
[np]

[r]必须赶紧处理……不，就算不赶紧处理，这糟糕的现场已经被我目击到了吧。
[np]

[playcv storage="momo_momo_00090_008.ogg" name="momo"]
[character name="momo"]
【桃】[r]「没、没关系的……！请不要管我……那个，魔女……请将我们憎恨的敌人彻底消灭……！」
[np]

[playcv storage="momo_momo_00090_009.ogg" name="momo"]
[character name="momo"]
【桃】[r]「怎、怎么会这样师父……可是，这样的话……现在正是大好时机啊……」
[np]

[r]既然如此，我现在该采取的行动只有一个……！
[np]

[r]立刻抹去脑海中目睹的所有记忆，装作什么都没发现再次出门——
[np]

[playcv storage="momo_momo_00090_010.ogg" name="momo"]
[character name="momo"]
【桃】[r]「明明、这样才对…………………………哎？」
[np]

[r]——啊。
[np]

[stopbgm]

[playcv storage="momo_momo_00090_011.ogg" name="momo"]
[character name="momo"]
【桃】[r]「………………………………」
[np]

[r]和桃酱四目相对……两人的时间仿佛就此凝固。
[np]

[r]紧握着法杖的桃酱就像被按下了暂停键似的，刚以为她静止不动了……
[np]

[fadeinbgm storage="bgm/BGM14.ogg" time="500"]
[CG cgno=102 sabunno=02]

[playcv storage="momo_momo_00090_012.ogg" name="momo"]
[character name="momo"]
[quake time="500"]
【桃】[r]「咿呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀呀！！！！！？？？？？」
[np]

[r]方才还洋溢着欢愉的面容骤然变色，她陷入了我见过数次的恐慌状态。
[np]

[playcv storage="momo_momo_00090_013.ogg" name="momo"]
[character name="momo"]
【桃】[r]「前、前前前辈为什么在这里啊啊啊啊啊～～～～！？」
[np]

[character name="ryuichi"]
【龙一】[r]「呃、那个……我刚刚散步回来……」
[np]

[playcv storage="momo_momo_00090_014.ogg" name="momo"]
[character name="momo"]
【桃】[r]「这这这……！我完全没察觉到啊！？怎么会这样！？」
[np]

[r]就算你问我这个……
[np]

[playcv storage="momo_momo_00090_015.ogg" name="momo"]
[character name="momo"]
【桃】[r]「难、难道说……全都……看见了……？」
[np]

[character name="ryuichi"]
【龙一】[r]「不、虽然不完全是……那个，就是从桃酱使用辅助魔法的时候开始……」
[np]

;//[momo storage="A_tokushu_M AB_8_M"]
;//[playcv storage="momo_momo_00090_016.ogg" name="momo"]
;//[character name="momo"]
;//[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
;//【もも】[r]「……あ、あわっ……あわわわわっ……」
;//[np]
;//[FACEHIDE]

[r]或许是压抑不住动摇，眼看着桃酱的眼眶渐渐泛起泪光……
[np]

[CG cgno=102 sabunno=03]

[playcv storage="momo_momo_00090_017.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呜哇啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！」
[np]

[character name="ryuichi"]
【龙一】[r]「桃——！？」
[np]

[r]哭出来了！？
[np]

[playcv storage="momo_momo_00090_018.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呜、呜哇、呜诶诶诶诶诶诶诶诶诶！」
[np]

[character name="ryuichi"]
【龙一】[r]「等……！　桃、桃酱，冷静点，冷静点啊……！」
[np]

[playcv storage="momo_momo_00090_019.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呜呜、抽泣、打嗝……！呜诶诶……呜、呜——————……！！！」
[np]

[r]桃酱哭得满脸泪痕，像孩子般放声大哭。
[np]

[r]要是这时候有人回来撞见这个场面……感觉会很不妙！
[np]

[playcv storage="momo_momo_00090_020.ogg" name="momo"]
[character name="momo"]
【桃】[r]「呜、呜呜……呜诶、呜诶诶诶……！！」
[np]

[character name="ryuichi"]
【龙一】[r]「桃、桃酱！没事的，不会有事的……！放心吧，没什么可怕的……！对吧！？」
[np]

[playcv storage="momo_momo_00090_021.ogg" name="momo"]
[character name="momo"]
【桃】[r]「抽泣、打嗝……呜～……」
[np]

[fadeoutbgm time=1000]

[r]……之后我也只是拼命安抚着情绪激动的桃酱……
[np]

[char_erase name="momo"]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM03.ogg" time="500"]

[momo storage="C_tokushu_M C_5_M"]
[playcv storage="momo_momo_00090_022.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「对、对不起……」
[np]
[FACEHIDE]

[r]等到她稍微平静下来停止哭泣时，桃酱突然向我低头认错。
[np]

[momo storage="B_tokushu_M AB_8_M"]
[playcv storage="momo_momo_00090_023.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「我、我一时失控……让您看到许多丢人的地方……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、不是的……该道歉的是我……」
[np]

[momo storage="A_tokushu_M AB_5_M"]
[playcv storage="momo_momo_00090_024.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_tokushu"]
【桃】[r]「神原先辈没有错……错在迟钝的我……」
[np]
[FACEHIDE]

[r]今天大家都外出了，宿舍里只剩下一人……
[np]

[r]似乎是桃酱判断时机成熟玩得正嗨时，不凑巧被我撞了个正着。
[np]

[r]如果是葵的话就不会有问题了……
[np]

[momo storage="C_tokushu_M C_8_M"]
[playcv storage="momo_momo_00090_025.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_tokushu"]
【桃】[r]「……呜呜……」
[np]
[FACEHIDE]

[r]……虽然停止了哭泣，但她的眼睛依然红肿……更重要的是，任谁都看得出她情绪低落。
[np]

[r]这当然也有我的责任……既然如此。
[np]

【龙一】[r]「那个……桃酱刚才念的咒语之类的……」
[np]

[momo storage="D_tokushu_M D_6_M"]
[playcv storage="momo_momo_00090_026.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_6_FACE_tokushu"]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[r]正所谓不入虎穴焉得虎子。我毫不畏惧地继续对话。
[np]

[character name="ryuichi"]
【龙一】[r]「果然那个……呃、叫什么来着……之前说过的……啊、布莱梅亚？」
[np]

[momo storage="A_tokushu_M AB_3_M"]
[playcv storage="momo_momo_00090_027.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_tokushu"]
【桃】[r]「！」
[np]
[FACEHIDE]

[r]很好……！
[np]

[r]看到听到这个单词的瞬间桃酱眼神骤变……我在心里摆出胜利姿势。
[np]

[character name="ryuichi"]
【龙一】[r]「是受到布莱梅亚影响，自己构思出来的吗？」
[np]

[momo storage="B_tokushu_M AB_2_M"]
[playcv storage="momo_momo_00090_028.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_tokushu"]
【桃】[r]「是、是的……！《黑色梦魇～无垢漆黑的十字架～》是我和葵小姐都特别喜欢的作品！！」
[np]
[FACEHIDE]

[r]想起之前帮她抓娃娃机奖品时她热情解说的样子，试着提起这个话题……看来押对宝了。
[np]

[momo storage="C_tokushu_M C_1_M"]
[playcv storage="momo_momo_00090_029.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_tokushu"]
【桃】[r]「我特别喜欢里面登场的师父角色……啊、顺带一提葵小姐喜欢的是主人公……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「也就是说和你们两人的关系正好相反呢」
[np]

[momo storage="D_tokushu_M D_2_M"]
[playcv storage="momo_momo_00090_030.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_tokushu"]
【桃】[r]「是的……♪　而且那位师父的魔法都结合了花朵元素，全是些既美丽又残酷、令人联想到生命盛衰的绝妙招式……！」
[np]
[FACEHIDE]

[momo storage="B_tokushu_M AB_3_M"]
[playcv storage="momo_momo_00090_031.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_tokushu"]
【桃】[r]「我、一直很向往……所以才会以蔷薇为灵感设计咒文之类的……」
[np]
[FACEHIDE]

[r]带着些许羞涩……但桃酱还是面带笑容这样告诉我了。
[np]

[momo storage="A_tokushu_M AB_5_M"]
[playcv storage="momo_momo_00090_032.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_tokushu"]
【桃】[r]「那、那个对不起……这、这种话题很无聊吧……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不，倒不是说有趣无趣……我只是觉得现在这样……」
[np]

[r]啊，真是急死人了……
[np]

[character name="ryuichi"]
【龙一】[r]「桃酱愿意将自己内心的热情……或者说平时羞于启齿的部分倾诉出来，让我感到很高兴」
[np]

[momo storage="C_tokushu_M C_7_M"]
[playcv storage="momo_momo_00090_033.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_tokushu"]
【桃】[r]「哎……」
[np]
[FACEHIDE]

[r]因为没能组织好语言，不知道自己的心意是否传达到了。
[np]

[r]可是，桃酱听了我的这番话后……
[np]

[momo storage="B_tokushu_M AB_3_M"]
[playcv storage="momo_momo_00090_034.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_tokushu"]
【桃】[r]「这、这样啊……那就好……」
[np]
[FACEHIDE]

[r]她带着羞涩的笑容……缓缓低下头说出这句话时，脸上泛着红晕。
[np]

[char_erase name="momo"]

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

[jump storage="scenario/momo/momo_00100.ks"]