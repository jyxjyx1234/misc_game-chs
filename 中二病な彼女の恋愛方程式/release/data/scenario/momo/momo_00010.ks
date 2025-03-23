[SCENESTART file=momo_00010.ks]
;//momo_00010
;//BG:bg02_01

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM01.ogg" time="500"]

;//TIME:昼
;//日付:7/2(木)
;//CH:竜一,seifuku
;//CH:もも,seifuku

[character name="ryuichi"]
【龙一】[r]「好嘞……」
[np]

[r]第二天早上。换上校服，把课本和文具盒一股脑塞进书包。
[np]

[r]这样上学的准备就完成了……接下来嘛，先确认下睡翘的头发有没有压平吧。
[np]

[r]等收拾妥当后，我也要和葵她们一起准备早饭——
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]站在盥洗室前，我的手突然僵住了。
[np]

[r]昨天也是，我……因为不小心打开这里，害得桃酱难为情了。
[np]

[r]虽然这个时间段应该没问题……不过到了这个季节，可能有女生会因为睡觉出汗想要冲个凉
[np]

[r]这类小心思呢。还是提高警惕为妙！
[np]

;//\SEノック音
[playse buf=5 storage="sound/00690.ogg"]
[wait time="500"]

[r]……所以嘛。
[np]

;//ドア越し
;[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_momo_00010_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「嗯？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]听到门后传来桃酱的声音，不由得心头一跳。
[np]

[r]停停停……！别再回想昨天的事了！！大清早的容易胡思乱想啊！！
[np]

[character name="ryuichi"]
【龙一】[r]「啊……桃、桃酱？我进来没关系吗？」
[np]

;[momo storage="A_seifuku_M A_1_M"]
[playcv storage="momo_momo_00010_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_seifuku"]
【桃】[r]「嗯……可以的」
[np]
[FACEHIDE]

[r]确认完她的回答后，我轻轻推开门。
[np]

;//背景を洗面所bg08に
[backlay]
[freeimage layer=1 page=back]
[image storage="bg08_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_momo_00010_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「早上好，神原先辈」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「早上好，桃酱」
[np]

[r]她刚好梳完头发，正在镜前检查发型，闻声转头望来。
[np]

[r]冷静点，保持平常心……把昨天的事忘掉，当作没发生过。
[np]

[momo storage="A_seifuku_M AB_1_M"]
[playcv storage="momo_momo_00010_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_seifuku"]
【桃】[r]「前辈也是来整理仪容的吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊，嗯……算是吧，不过我也就是看看睡翘的头发压平没……」
[np]

[r]桃酱把位置让开后，我也站到镜子前。
[np]

[character name="ryuichi"]
【龙一】[r]「嗯，应该没问题了」
[np]

[momo storage="B_seifuku_M AB_3_M"]
[playcv storage="momo_momo_00010_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_3_FACE_seifuku"]
【桃】[r]「……噗嗤」
[np]
[FACEHIDE]

[r]我在镜前摆出飒爽造型时，桃酱看着我笑出了声。
[np]

[momo storage="C_seifuku_M C_1_M"]
[playcv storage="momo_momo_00010_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_1_FACE_seifuku"]
【桃】[r]「前辈，后脑勺的头发有点翘起来了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「欸……？」
[np]

[r]按照她的提醒摸了摸后脑勺……果然，发梢正精神抖擞地倒竖着。
[np]

[character name="ryuichi"]
【龙一】[r]「谢、谢谢桃酱。好险，我自己绝对发现不了……」
[np]

[momo storage="A_seifuku_M AB_2_M"]
[playcv storage="momo_momo_00010_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「不用客气的」
[np]
[FACEHIDE]

[char_erase name="momo"]
[r]我先把双手沾湿，然后像安抚小动物般按压着那撮顽固的翘发。
[np]

[r]在我身旁梳理着柔顺长发的桃酱身上……隐约飘来类似洗发水的清香。
[np]

[character name="ryuichi"]
【龙一】[r]（……真好闻啊……）
[np]

[r]虽然这个比喻可能不太恰当，但她身上确实飘散着少女特有的馨香。
[np]

[r]一大早就让人心绪不宁的……这应该算是同居生活特有的感觉吧。
[np]

[character name="ryuichi"]
【龙一】[r]「呃……」
[np]

[r]一旦意识到这些事、还有昨天发生的种种……整个人就莫名其妙地紧张起来。
[np]

[momo storage="C_seifuku_M C_8_M"]
[playcv storage="momo_momo_00010_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_seifuku"]
[char_jump name=momo]
【桃】[r]「嗯……」
[np]
[FACEHIDE]

[r]忽然隔着镜子四目相对……桃酱不自然地避开了我的视线。
[np]

[r]果然桃酱也在意昨天的事吗……这样的话，我还是赶紧——
[np]

[momo storage="D_seifuku_M D_4_M"]
[playcv storage="momo_momo_00010_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_4_FACE_seifuku"]
【桃】[r]「那、那个……前辈……」
[np]
[FACEHIDE]

[r]随便理了理睡乱的头发，正要离开盥洗室时却被叫住了。
[np]

[momo storage="B_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00010_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「关于……昨天的事……」
[np]
[FACEHIDE]

[r]——果然还是要提这个吗……！
[np]

[momo storage="A_seifuku_M AB_5_M"]
[playcv storage="momo_momo_00010_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_seifuku"]
【桃】[r]「那个真的……只是意外……所以请、请不要放在心上好吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎……」
[np]

[momo storage="C_seifuku_M C_2_M"]
[playcv storage="momo_momo_00010_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_seifuku"]
【桃】[r]「那我先告辞了」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]桃酱从我身边擦肩而过，先行离开了盥洗室。
[np]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]不要放在心上吗……。
[np]

[r]当桃酱从我身旁经过时……
[np]

[r]少女轻柔的芬芳仍隐约萦绕在空气中。
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

;//JUMP:mion_00020
[jump storage="scenario/momo/momo_00020.ks"]