*CG1_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

[cm]
[clearfix]
[start_keyconfig]

;ボイス設定
[voconfig sebuf="2" name="？？" vostorage="nozomi/nozomi_02_{number}.mp3" number="30"]
[voconfig sebuf="2" name="渚" vostorage="nozomi/nozomi_02_{number}.mp3" number="36"]
[vostart]

[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="famires.jpg" time="0"]
[wait time=" 1000"]
[playse buf="3"  storage="cafegaya.mp3" volume="10" loop=true]
[mask_off time="700" wait="true"]
[wait time=" 1000"]
[bg storage="famires2.jpg" time="800"]
[stopbgm]

;;; レストランへ移動
;;; AM10:30

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

一进店，在店员的引导下坐到了空位上。[p]
可能因为还是早上，客人稀稀落落的。[p]

;;; CG1表示
[fadeoutse buf="3"]
[mask time=" 1000" graphic="shiro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[wait time=" 500"]
[bg storage="CG1/CG1_tuujou_1.jpg" time="0"]
[mask_off time="1000" wait="true"]
[stopse buf="3"]
[playbgm  storage="02itsumonoasa.mp3" volume="30"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
说起来我还没问你的名字呢[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]

[nozomi_window]
#？？
诶，你是想搭讪店员吗！明明我就在这里！[p]

[saku_window]
#朔
不是店员啦！……我是说你的名字[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]

[nozomi_window]
#？？
我也不知道哥哥的名字呀。我只知道你是个想闯进女浴室的变态[r]
[p]

[saku_window]
#朔
我可不想被向陌生男人要求情侣优惠的你这么说！[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]

[nozomi_window]
#？？
啊，我想尝尝这个奶油苏打饮料[p]

[saku_window]
#朔
别转移话题[p]

#
[default_window]
话说回来……你没喝过奶油苏打吗？[p]
我还以为是每个孩子小时候都会喝的东西呢。[p]
原来也有不常见的孩子啊。[p]

[bg storage="CG1/CG1_menu_3.jpg" time="800"]

[nozomi_window]
#？？
切[p]

[saku_window]
#朔
回到刚才的话题。要是约会的话，不知道名字就没法叫名字了吧？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_5.jpg" time="800"]

[nozomi_window]
#？？
果然这是约会啊……[p]

[saku_window]
#朔
明明最开始说约会的是你啊[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

[nozomi_window]
#？？
渚[p]

[saku_window]
#朔
渚？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]

[nozomi_window]
#渚
对。我的名字。我叫渚[p]

[saku_window]
#朔
姓氏呢？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_6.jpg" time="800"]

[nozomi_window]
#渚
姓氏嘛……得等敏感度再提高一点才行[p]

[saku_window]
#朔
好好，就是这种感觉啊[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]

[nozomi_window]
#渚
试着叫叫看嘛[p]

[saku_window]
#朔
……渚[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]

[nozomi_window]
#渚
请不要这么亲昵地直呼其名[p]

[saku_window]
#朔
不是你让我叫的吗！[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]

[nozomi_window]
#渚
骗你的啦。开玩笑的。那么，哥哥呢？[p]

[saku_window]
#朔
啊……名字？我叫小清水朔[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]
[nozomi_window]
#渚
那我也直接叫你朔。直呼其名。这下我们正式成为恋人了呢！[p]

#
[default_window]
虽然有很多想吐槽的地方。[p]
不过，约会啊恋人啊……感觉不知不觉间朝着好的方向发展了。[p]

[saku_window]
#朔
好好。那么，你想点什么？[p]

#
[default_window]
服务员在稍远的地方等待着来接受点单，这种气氛实在是有点尴尬。[p]

[bg storage="CG1/CG1_menu_5.jpg" time="800"]
[nozomi_window]
#渚
那就奶油苏打和……烤嫩鸡肉饭沙拉套餐，再单点一份薯条，还有甜点巧克力香蕉芭菲！饭要大份哦♪[r]
[p]

#
[default_window]
_　[r]
_　[cm]

太多太多太多太多了！[p]
这明显不是一个人能吃完的量啊。而且还是从早上开始！[p]

[saku_window]
#朔
我还是确认一下，你能全部吃完吗？[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]
[nozomi_window]
#渚
吃不完的话就让朔帮我吃掉啦[p]

[saku_window]
#朔
你就指望我啊[p]

#
[default_window]
[bg storage="CG1/CG1_menu_5.jpg" time="800"]

[nozomi_window]
#渚
我一直想在人生中体验一次不考虑价格，点所有想吃的东西。啊，服务员！可以点单了吗？[r]
[p]

[saku_window]
#朔
等等，我还没决定呢！[p]

#
[default_window]
一直等待的服务员已经过来了，我慌忙看起了菜单。[p]
随便点了一份映入眼帘的凯撒沙拉。[p]

[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]
[nozomi_window]
#渚
你只吃沙拉吗？[p]

[saku_window]
#朔
反正最后肯定要吃你剩下的东西……[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_9.jpg" time="800"]

[nozomi_window]
#渚
你最好别小看我的食欲哦。我会让你后悔的。到时候哭鼻子也来不及了！[r]
[p]

#
[default_window]
_　[r]
_　[cm]

这莫名其妙的自信是从哪来的啊！[p]
渚一副迫不及待的样子。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="famires2.jpg" time="0"]
[mask_off time="700" wait="true"]

边聊天边等待料理上桌的时候……[p]
奶油苏打和沙拉先上来了，接着点的菜品一个接一个地摆上了桌。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG1/CG1_eating_5.jpg" time="500"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
哇啊……！这、这么多我真的可以吃吗？[p]

[saku_window]
#朔
点的不就是你自己吗[p]

#
[default_window]
[bg storage="CG1/CG1_eating_4.jpg" time="800"]

[nozomi_window]
#渚
嘿嘿嘿～♪ 好兴奋，好兴奋♪[p]

[saku_window]
#朔
嗯，看你开心就好……[p]

#
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG1/CG1_eating_1.jpg" time="800"]
[wait time=" 600"]
[bg storage="CG1/CG1_eating_kasu_2.jpg" time="800"]
[wait time=" 600"]
[bg storage="CG1/CG1_eating_kasu_5.jpg" time="800"]
[wait time=" 600"]
[bg storage="CG1/CG1_eating_kasu_6.jpg" time="800"]
[wait time=" 600"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[default_window]
渚每吃一口，表情就变化多端。[p]
不知不觉间有种成了监护人的感觉，不由得一直盯着她看。[p]
[bg storage="CG1/CG1_eating_kasu_4.jpg" time="800"]
……约会，吗。[p]
虽然很好奇她为什么这么执着。[p]
如果渚想约会的话，对我来说再好不过了。[p]
为此请她吃顿饭我也不在乎。[p]


;;; 暗転
[fadeoutse buf="3"]
[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="monolog_01.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]

我本以为自己不会介意……[p]

[wait time=" 300"]
[bg storage="CG1/CG1_eating_kasu_7_zoom.jpg" time="800"]
[stopse buf="3"]

[nozomi_window]
#渚
唔，好撑……已经吃不下了……[p]

#渚
………………[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]

[nozomi_window]
#渚
开玩笑的啦。你以为我会这么说吗？你也太天真了[p]

[saku_window]
#朔
那当然了[p]

#
[default_window]
[playse buf="1"  storage="OnomaImpact03.mp3" volume="40"]
[wait time=" 500"]

[saku_window]
#朔
……毕竟大部分都是我在吃啊！[p]

#
[default_window]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

渚面前摆着的一大堆菜品中，只吃了一点点的烤鸡肉和大份米饭，还有薯条都被移到了我面前。[p]
而渚本人呢，只把沙拉和冰淇淋圣代吃完了，现在正用吸管戳着奶油苏打里的冰块喝着。[p]
偶尔还像是突然想起来似的伸手去拿薯条。[p]

[bg storage="CG1/CG1_tuujou_soda_1.jpg" time="800"]

[nozomi_window]
#渚
嘿嘿[p]

[saku_window]
#朔
别嘿嘿[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_4.jpg" time="800"]

[nozomi_window]
#渚
你看起来好像很饿的样子，所以我才不得不让给你的。话说回来，奶油苏打真的超级好喝呢[p]

[saku_window]
#朔
这话说的……不过，作为男人这点量还是能吃得下的[p]

#
[default_window]
可能是因为在做平常不会做的事，我确实有点饿……[p]
但即便如此，这份量也是勉强能吃完的程度啊。[p]

[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]

专心吃了一会儿后，不知不觉间渚一直在盯着我看。[p]
难道是我脸上沾到了食物残渣吗……[p]
被盯着看着吃饭也让人感到不自在。[p]
等嘴里的食物咽下去后，我向渚问道。[p]

[saku_window]
#朔
……你有什么想说的吗？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_3.jpg" time="800"]

[nozomi_window]
#渚
……朔，你真是与众不同呢[p]

[saku_window]
#朔
我最不想听到你这么说[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]

[nozomi_window]
#渚
为什么要对我这么好呢？[p]

[saku_window]
#朔
……谁知道呢？[p]

#
[default_window]
虽然是理所当然的，但看来还是被怀疑了。[p]
我故意装作不知道的样子，继续吃了起来。[p]
……这孩子肯定也是有什么原因才会在这里的吧。[p]
不过嘛，对我来说这都无所谓。[p]

[bg storage="monolog_01.jpg" time="800"]

就像海市蜃楼一样摇曳，下一刻就会消失不见……[p]
这种不可思议、不稳定又危险的关系。[p]
这种程度的距离感对现在的我来说正合适。[p]
不仅感觉舒适，而且对于方便利用渚来说也刚刚好。[p]

[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]

[nozomi_window]
#渚
这种时候说「我并没有特别善良」会显得更帅气哦？[p]

[saku_window]
#朔
多谢指教[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

边聊天边把摆在桌上的料理吃完了。[p]
「约会」就是这样的感觉吗？[p]
自从成为社会人后就没有时间玩乐了，约会的方式都忘得一干二净了。[p]



;;; リプレイモード終了

[autostop]
[skipstop]

[cm]
[clearfix]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeoutbgm]
[fadeoutse buf="3"]
[fadeoutse buf="1"]

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
