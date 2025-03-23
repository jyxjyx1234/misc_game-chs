[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00740.txt]
;//supica_00740
;//BG:bg04_01

;//TIME:昼
;//日付:8/13(木)
;//CH:竜一,pajyama
;//CH:葵,tokushu
;//CH:すぴか,pajyama
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[SYSTEMMENU]

;//暗転
[r]…………。
[np]

[r]…………………………。
[np]

[r]……嗯…………嗯嗯……。
[np]

[playcv storage="supica_supica_00740_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_pajyama"]
【真珠星】[r]「龙一……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「呜啊！？」
[np]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[r]这、这是什么重量……！？我的身体上有什么东西——
[np]

;//ＳＤＣＧ挿入
[CG cgno=101 sabunno=02]

[playcv storage="supica_supica_00740_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一……龙一、起床了……」
[np]

[character name="ryuichi"]
【龙一】[r]「原来是你这家伙！！」
[np]

[r]被突如其来的重压惊醒后，我看向被褥上方……
[np]

[CG cgno=101 sabunno=01]

[playcv storage="supica_supica_00740_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……早安，龙一」
[np]

[character name="ryuichi"]
【龙一】[r]「……啊，早安……」
[np]

[r]那里和往常一样……真珠星正骑坐在我身上。
[np]

[playcv storage="supica_supica_00740_004.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「龙一……已经中午了……」
[np]

[character name="ryuichi"]
【龙一】[r]「哎、真的假的……已经这个时间了……」
[np]

[r]听了真珠星的话看向时钟……确实已经过了十二点——
[np]

;//背景表示
[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_05.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[CGHIDE]

[character name="ryuichi"]
【龙一】[r]「真是的……真珠星！」
[np]

[supica storage="B4_pajyama_L AB2_8_L"]
[playcv storage="supica_supica_00740_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_8_FACE_pajyama"]
[char_jump name=supica]

【真珠星】[r]「呀……」
[np]
[FACEHIDE]

[r]我下意识猛地站起身来，但真珠星并未摔倒，而是保持着平衡重新在我的被褥上坐好。
[np]

[character name="ryuichi"]
【龙一】[r]「你、真的没事吗……？」
[np]

[supica storage="D_pajyama_L CD2_1_L"]
[playcv storage="supica_supica_00740_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_pajyama"]
【真珠星】[r]「……什么事？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「感冒啊，昨天明明看起来那么不舒服……」
[np]

[supica storage="B4_pajyama_L AB2_2_L"]
[playcv storage="supica_supica_00740_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_pajyama"]
【真珠星】[r]「嗯、没事……好了」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]真珠星若无其事说出这句话的模样……至少看起来并不像在硬撑。
[np]

[r]昨天回家的路上，虽然用额头相贴确认过真珠星的烧已经退了……
[np]

[r]难道真的……真的治好了吗？
[np]

[character name="ryuichi"]
【龙一】[r]「真珠星，可以稍微过来一下吗……？」
[np]

[supica storage="B4_pajyama_L AB2_12_L"]
[playcv storage="supica_supica_00740_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_12_FACE_pajyama"]
【真珠星】[r]「嗯……」
[np]
[FACEHIDE]

[r]我伸出手，真珠星自己撩起前发将额头凑了过来。
[np]

[character name="ryuichi"]
【龙一】[r]「……不烫……」
[np]

[r]触碰到的体温确实正常……我不由得如此低语。
[np]

[supica storage="B2_pajyama_L AB2_2_L"]
[playcv storage="supica_supica_00740_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_2_FACE_pajyama"]
【真珠星】[r]「龙一……真珠星要吃饭……肚子饿了……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊啊……」
[np]

[char_erase name="supica"]

[playse buf=5 storage="sound/00320.ogg"]

;//\SEドアが閉まる音
[r]留下困惑的我，真珠星精神十足地走出房间。
[np]

[r]昨晚没怎么深入思考……但仔细想想，这根本不可能……对吧？
[np]

[r]……为什么仅仅一晚就痊愈了……？
[np]

;//背景を寮のリビングbg02_01に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[supica storage="B2_pajyama_M AB2_1_M" trans=false]
[chisato storage="A_sifuku_M AB_3_M" trans=false]
[char_trans]

[playcv storage="supica_supica_00740_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「我开动了。」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_8_M"]
[playcv storage="chisato_supica_00740_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_sifuku"]
【千圣】[r]「好、好的……请用……」
[np]
[FACEHIDE]

[char_erase name="chisato supica"]
[r]或许正值午餐时间，起居室里聚集了所有人……
[np]

[mion storage="B_sifuku_M AB1_7_M" trans=false]
[momo storage="A_sifuku_M AB_7_M" trans=false]
[char_trans]

[playcv storage="mion_supica_00740_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_7_FACE_sifuku"]
【澪音】[r]「……真是令人惊讶」
[np]
[FACEHIDE]

[r]所有人都在目不转睛地盯着若无其事吃饭的真珠星。
[np]

;[momo storage="A_sifuku_M AB_7_M"]
[playcv storage="momo_supica_00740_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_sifuku"]
【桃】[r]「真、真珠星酱，已经没事了吗……？」
[np]
[FACEHIDE]

[char_erase name="momo mion"]


[supica storage="B4_pajyama_M AB2_1_M"]
[playcv storage="supica_supica_00740_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_pajyama"]
【真珠星】[r]「嗯，没事……一天就好了」
[np]
[FACEHIDE]

[char_erase name="supica"]

;//「ダークプリーステス」でお願いします
[aoi storage="D_tokushu_M CD_11_M" trans=false]
[satomi storage="C_sifuku_M CD_2_M" trans=false]
[char_trans]


[playcv storage="aoi_supica_00740_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_11_FACE_tokushu"]
【葵】[r]「这、这种治愈能力……甚至超越了堕天塞西圣职者的恢复速度……」
[np]
[FACEHIDE]

[playcv storage="satomi_supica_00740_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「看起来真的不要紧了呢。这个状态的话，应该也能去值班采购了吧？」
[np]
[FACEHIDE]

[char_erase name="satomi aoi"]
[chisato storage="A_sifuku_M AB_1_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00740_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「不过毕竟还在康复期，还是让我代替……」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_2_M"]
[playcv storage="momo_supica_00740_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]
【桃】[r]「啊，那我也——」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[supica storage="C2_pajyama_L CD_12_L"]
[playcv storage="supica_supica_00740_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_pajyama"]
【真珠星】[r]「没关系……真珠星去」
[np]
[FACEHIDE]

[r]真珠星一边脸颊上沾着饭粒，一边向两人如此宣告。
[np]

[supica storage="C2_pajyama_L CD_1_L"]

[character name="ryuichi"]
【龙一】[r]「喂、喂……真的没事吗……？」
[np]

[supica storage="C2_pajyama_L CD_3_L"]
[playcv storage="supica_supica_00740_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_3_FACE_pajyama"]
【真珠星】[r]「……龙一，担心……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「当然会担心啊……毕竟昨天看起来还那么痛苦……」
[np]

[supica storage="C2_pajyama_L CD_12_L"]
[playcv storage="supica_supica_00740_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_pajyama"]
[char_jump name=supica]

【真珠星】[r]「那……一起去」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……我一开始就是这么打算的」
[np]

[supica storage="A_pajyama_M AB_1_M"]


[r]说着这样的话，开玩笑似的微笑的真珠星……俨然就是平时的她……
[np]



[chisato storage="A_sifuku_M AB_1_M"]
[playcv storage="chisato_supica_00740_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「真、真的可以吗？真的不要紧……？」
[np]
[FACEHIDE]

[supica storage="D_pajyama_M CD2_12_M"]
[playcv storage="supica_supica_00740_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_12_FACE_pajyama"]
【真珠星】[r]「不要紧……布丁，买很多」
[np]
[FACEHIDE]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00740_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「不，那个……」
[np]
[FACEHIDE]

[char_erase name="chisato supica"]
[r]跟着苦笑的绫濑，围坐在餐桌旁的大家都笑了起来。
[np]

[r]今天的话……用我打工赚的钱，给她买多少布丁都行……或许也不错。
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

;//JUMP:supica_00750
[jump storage="scenario/supica/supica_00750.ks"]
