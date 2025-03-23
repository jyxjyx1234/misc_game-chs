[SCENESTART file=mion_00570.ks]
;//mion_00570
;//BG:bg13_02

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM06.ogg" time=1000]

;//TIME:夕
;//日付:7/25(土)
;//CH:竜一,sifuku
;//CH:澪音,tokushu

[r]……前方延伸着两人的身影，傍晚的归途。
[np]

[r]怀着尴尬与满足交织的心情，和前辈并肩而行。
[np]

[character name="ryuichi"]
【龙一】[r]「暂时……还是别靠近那家泳装店了吧……」
[np]

[mion storage="D_tokushu_M CD2_4_M"]
[playcv storage="mion_mion_00570_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_tokushu"]
【澪音】[r]「……无所谓。反正再也不会去了……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]最后的尖叫……绝对被听到了吧……
[np]

[r]虽然彻底销毁证据后，趁着间隙悄悄溜出试衣间……但可能也被看到了。
[np]

[r]顺带一提，那件微型比基尼被弄脏了，判断果然还是应该买下来。
[np]

[r]当然是从我的打工费里支付的……但想到今后还能继续使用就觉得超值！
[np]

[character name="ryuichi"]
【龙一】[r]「不过被拉进试衣间时真是吓到了……居然做这么大胆的事……」
[np]

[mion storage="B_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00570_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「……那是给龙一的惩罚……谁让你总是捉弄我」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎，惩罚……？」
[np]

[mion storage="A_tokushu_M AB2_5_M"]
[playcv storage="mion_mion_00570_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_tokushu"]
【澪音】[r]「没错……让我穿这种衣服，还在千圣面前展览……甚至还要试泳装……」
[np]
[FACEHIDE]

[mion storage="C_tokushu_M CD2_4_M"]
[playcv storage="mion_mion_00570_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_tokushu"]
【澪音】[r]「谁让你得意忘形的样子太过火，才想教训一下的！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不过结果反倒像是奖励呢……」
[np]

[mion storage="B_tokushu_M AB2_8_M"]
[playcv storage="mion_mion_00570_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_8_FACE_tokushu"]
【澪音】[r]「吵、吵死了！那只是…我、我的计算失误啦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「这种计算失误的话，我可是热烈欢迎！」
[np]

[mion storage="C_tokushu_M CD2_8_M"]
[playcv storage="mion_mion_00570_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_8_FACE_tokushu"]
【澪音】[r]「给、给我闭嘴！啊啊真是的……！」
[np]
[FACEHIDE]

[r]不过毕竟给店家添麻烦了…以后还是收敛点吧。
[np]

[char_erase name="mion"]

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

[jump storage="scenario/mion/mion_00580.ks"]