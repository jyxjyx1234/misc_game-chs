[SCENESTART file=all_00020.ks]
;//all_00020
;//BG:bg15_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg15_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM01.ogg" time="500"]
[SYSTEMMENU]

;//TIME:昼
;//日付:6/14(日)
;//CH:竜一,sifuku

[character name="ryuichi"]
【龙一】[r]「抵达！」
[np]

[r]换乘电车穿过检票口后，展现在眼前的全新天地。
[np]

[r]梅雨季的新闻仿佛与这片晴空毫无瓜葛，我不由得微微眯起眼睛。
[np]

[r]首先映入眼帘的，是平凡无奇的车站前风景。即便如此，对于如今的我而言　却是一幅特别的景象。
[np]

[r]这座风见市，从今天起将成为我生活的新城市……
[np]

[r]也是明日开始的校园生活，即将展开的全新舞台。
[np]

[character name="ryuichi"]
【龙一】[r]「不过……」
[np]

[r]没想到自己竟然会因为「父母工作调动～」这种老套的理由被迫转学。
[np]

[r]要说完全没有不安肯定是假话……但就当作人生历练，得抱着享受的心情去面对！
[np]

[character name="ryuichi"]
【龙一】[r]「那么……」
[np]

[r]将手伸进口袋，取出一张纸片。
[np]

[r]紧握着大件行李的我，朝目的地的方向迈出脚步。
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
[wait time="500"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg13_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM02.ogg" time="500"]
[SYSTEMMENU]

;//背景を通学路bg13_01に
[character name="ryuichi"]
【龙一】[r]「这边……应该没错吧？」
[np]

[r]我攥着印刷地图走向即将入住的宿舍。
[np]

[r]据说这个叫「伏木庄」、名字像玩笑似的学生宿舍从今天起就是我大本营了。
[np]

[r]因为所有手续都被父母提前办妥了，除了入住这件事外我一无所知。
[np]

[r]人生首次的宿舍生活，本该是喜忧参半的心情……
[np]

[character name="ryuichi"]
【龙一】[r]「呵……呵呵……」
[np]

[r]此刻我嘴角止不住上扬，只因得知了一个令人雀跃的消息。
[np]

[r]原来那座伏木庄直到今年四月还是纯粹的「女生宿舍」。
[np]

[r]据说因故改为合住宿舍后，即将入寮的我竟成了光荣的首位男生……
[np]

[character name="ryuichi"]
【龙一】[r]「老天爷……您老人家可真是存在的啊！」
[np]

[r]毕竟我这个年纪的健全男生啊……
[np]

[r]想到要独自入住满是女生的宿舍，任谁都会心潮澎湃吧！
[np]

[character name="ryuichi"]
【龙一】[r]「要是有可爱妹子就好了啊……！」
[np]

[r]和女生同居……简直就是桃花运的黄金时代！
[np]

[r]浴室里、厕所里、盥洗室、甚至女生房间里都可能发生这样那样的事……
[np]

[r]等着我吧各位女生！
[np]

[r]在这座新城市、新宿舍里……玫瑰色的新生活就要开始啦！！
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

;;//JUMP:all_00030
[jump storage="scenario/all/all_00030.ks"]
