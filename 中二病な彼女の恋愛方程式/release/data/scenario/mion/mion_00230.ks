[SCENESTART file=mion_00230.ks]
;//mion_00230
;//BG:bg06_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg06_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="sound/BGM12.ogg"]

;//TIME:夜
;//日付:7/11(土)
;//CH:竜一,pajyama
;//CH:澪音,pajyama

[mion storage="D_pajyama_M CD1_1_M"]
[playcv storage="mion_mion_00230_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_pajyama"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[r]时间已过午夜一点。
[np]

[r]平时这个时间还在活动的我，此刻却躺在漆黑房间的床铺上。
[np]

[mion storage="C_pajyama_M CD1_3_M"]
[playcv storage="mion_mion_00230_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_3_FACE_pajyama"]
【澪音】[r]「……龙一？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嗯……呼……咕啊……」
[np]

[r]睡着了吗……也是，理所当然的。
[np]

[mion storage="A_pajyama_M AB1_1_M"]
[playcv storage="mion_mion_00230_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_pajyama"]
【澪音】[r]「…………」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]朝着难以估测距离的天花板，伸出的手掌抓向虚空。
[np]

[r]……我到底是怎么了
[np]

[r]让龙一作为仆人住进这个房间……本应是为了当作玩具取乐。
[np]

[r]通过捉弄这个看似对女性毫无抵抗的男孩排遣无聊，用趣事点缀日常……本该如此……
[np]

[mion storage="D_pajyama_M CD1_7_M"]
[playcv storage="mion_mion_00230_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_7_FACE_pajyama"]
【澪音】[r]「呃……」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]最近……和龙一相处时，我总会产生某种难以名状的情绪。
[np]

[r]……说是难以名状，具体来说就是胸口会莫名悸动……
[np]

[r]这种情绪的根源，肯定源自今天葵说的那句话……
[np]

[r]就是那句「龙一其实很重视你」的言论。
[np]

[r]不过……这份萦绕在胸口的烦闷感，或许在更早之前就存在了。只是我装作视而不见罢了……
[np]

[r]捡橡皮时指尖相触的瞬间……偷瞄龙一侧脸发现他为间接接吻慌张的模样……
[np]

[r]刚才也是……明明是想戏弄龙一才在更衣时让他进房间……
[np]

[r]意识到被他看见内衣打扮的瞬间，身体突然发烫……再也无法保持平日的从容。
[np]

[mion storage="B_pajyama_M AB1_5_M"]
[playcv storage="mion_mion_00230_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_5_FACE_pajyama"]
【澪音】[r]「……到底怎么回事啊……」
[np]
[FACEHIDE]

[r]这种事情……这怎么可以……开什么玩笑？我竟然对龙一……
[np]

[mion storage="D_pajyama_M CD1_6_M"]
[playcv storage="mion_mion_00230_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_pajyama"]
【澪音】[r]「唔……！」
[np]
[FACEHIDE]

[r]将毛巾被蒙在头上，在床上蜷缩成一团。
[np]

[r]啊啊真是的……什么呀、什么嘛……到底怎么回事嘛……！
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

[jump storage="scenario/mion/mion_00240.ks"]