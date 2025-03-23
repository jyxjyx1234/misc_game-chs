[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00700.txt]
;//supica_00700
;//BG:bg04_03(消灯)


;//TIME:夜
;//日付:8/12(水)
;//CH:竜一,pajyama
;//CH:すぴか,sifuku

[SYSTEMMENU]

;//暗転
[r]……然后正如和真珠星说好的，我比平时更早躺上了床。
[np]

[r]本以为吃完晚饭后会在房间窗前看流星……
[np]

[r]等我回来时房间已经漆黑一片，听着真珠星均匀的呼吸声，我也决定直接睡觉。
[np]

;//背景表示
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「………………」
[np]

[playse buf=5 storage="sound/30340.ogg"]

;//\SEスマホバイブ音
[character name="ryuichi"]
【龙一】[r]「……嗯……」
[np]

;//\SEスマホバイブ音
[r]嗯……什么声音……手机……？
[np]

[playse buf=5 storage="sound/30340.ogg"]

;//\SEスマホバイブ音
[character name="ryuichi"]
【龙一】[r]「谁啊……这种时候……」
[np]

;//\SEスマホバイブ音
[r]是电话吧……虽然觉得不可能，难道是紧急事件……？
[np]

[character name="ryuichi"]
【龙一】[r]「喂……」
[np]

[r]要是打错了，我非骂死他不可。
[np]

[r]把这种不悦的情绪揉进声音里，等待着对方的反应——
[np]

;//このシーン、すぴかは全て電話越しで
;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……龙一……？」
[np]
[FACEHIDE]

[fadeinbgm storage="bgm/BGM13.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「呃——」
[np]

[r]真珠星……？　哎，为什么……
[np]

;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「……龙一，听得见吗……？」
[np]
[FACEHIDE]

[r]从手机里传来的微弱声音，无疑正是真珠星的。
[np]

[r]我慌忙确认床铺上方……
[np]

[character name="ryuichi"]
【龙一】[r]「怎……！」
[np]

[r]发现那里空无一人的瞬间，在困惑与焦躁中彻底清醒过来。
[np]

[character name="ryuichi"]
【龙一】[r]「真、真珠星……！？　你现在在哪儿……！？」
[np]

;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……你觉得呢？」
[np]
[FACEHIDE]

;[char_erase name="supica"]
[character name="ryuichi"]
【龙一】[r]「呃……！！」
[np]

[r]冷静点，别慌……！　稍微想想就能明白。真珠星的目的应该是……
[np]

[character name="ryuichi"]
【龙一】[r]「屋顶……吗？」
[np]

;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_sifuku"]
【真珠星】[r]「……可惜……不过……猜错了……」
[np]
[FACEHIDE]

;[char_erase name="supica"]
[character name="ryuichi"]
【龙一】[r]「哎、那……」
[np]

;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_sifuku"]
【真珠星】[r]「现在正往屋顶方向……在河滩休息……」
[np]
[FACEHIDE]

;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_sifuku"]
【真珠星】[r]「龙一也快点来……？不然流星雨要结束了……」
[np]
[FACEHIDE]

;[char_erase name="supica"]
[character name="ryuichi"]
【龙一】[r]「喂、喂……」
[np]

;[supica storage="A_sifuku_M A_1_M"]
[playcv storage="supica_supica_00700_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_2_FACE_sifuku"]
【真珠星】[r]「那么……我等你……哦……」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/BtSel.ogg"]

[char_erase name="supica"]
[r]真珠星挂断电话的瞬间……
[np]

;//背景を寮のリビングbg02_03(消灯)に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_04.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]


[character name="ryuichi"]
【龙一】[r]「……！！」
[np]

[r]我扯下睡衣换上便服冲出房间。
[np]

[r]毕竟没想到会发展成这样……没想到真珠星居然做到这个地步……
[np]

[r]那时候装作接受我的想法……其实心里根本没有放弃吗……？
[np]

[character name="ryuichi"]
【龙一】[r]「河滩……等着我，真珠星……！」
[np]

;//背景を空(夜)に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[r]匆匆忙忙套上鞋子冲出宿舍大门……
[np]

[r]我朝着真珠星等待的方向全速奔去。
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

;//JUMP:supica_00710
[jump storage="scenario/supica/supica_00710.ks"]
