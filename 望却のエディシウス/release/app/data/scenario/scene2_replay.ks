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

一进店门，在店员的引导下坐到了空位上。[p]
可能因为还早，客人还很稀少。[p]

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
对了，好像还没问你的名字呢。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]

[nozomi_window]
#？？
欸，难道你想搭讪店员吗！明明有我在！[p]

[saku_window]
#朔
不是店员啦！……我是说你的名字啦。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]

[nozomi_window]
#？？
我也不认识你的名字呢，只知道你是那个想进女浴室的变态而已。[r]
[p]

[saku_window]
#朔
只有对陌生男人要求情侣折扣的你，才没资格说这种话吧！[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]

[nozomi_window]
#？？
啊，我想试试喝这个奶油苏打水。[p]

[saku_window]
#朔
别转移话题啊。[p]

#
[default_window]
话说回来……奶油苏打水，你没喝过吗？[p]
我以为这是小孩子都会喝的东西呢。[p]
还真是有稀奇的孩子啊。[p]

[bg storage="CG1/CG1_menu_3.jpg" time="800"]

[nozomi_window]
#？？
切——[p]

[saku_window]
#朔
回到正题吧。如果要约会，不知道名字的话，不就没法用名字称呼了吗？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_5.jpg" time="800"]

[nozomi_window]
#？？
果然这就是约会啊……[p]

[saku_window]
#朔
最开始说这是约会的人，不就是你吗？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

[nozomi_window]
#？？
渚。[p]

[saku_window]
#朔
渚？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]

[nozomi_window]
#渚
对，我的名字叫渚。[p]

[saku_window]
#朔
姓呢？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_6.jpg" time="800"]

[nozomi_window]
#渚
姓的话……等你再多提升一点好感度再说吧。[p]

[saku_window]
#朔
好好好，原来是这样啊。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]

[nozomi_window]
#渚
试着叫叫看吧。[p]

[saku_window]
#朔
……渚。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_3.jpg" time="800"]

[nozomi_window]
#渚
别那么随便直呼我的名字啊！[p]

[saku_window]
#朔
明明是你让我叫的吧！[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_8.jpg" time="800"]

[nozomi_window]
#渚
骗你的啦，开玩笑的。那么，大哥哥你呢？[p]

[saku_window]
#朔
啊……名字吗？小清水朔。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_4.jpg" time="800"]
[nozomi_window]
#渚
那我也叫你朔，直接叫名字哦。这下我们正式成为情侣了呢！[p]

#
[default_window]
虽然有很多想吐槽的地方……[p]
不过，约会啊、情侣关系什么的……总觉得不知不觉朝着好的方向发展了。[p]

[saku_window]
#朔
好好好，总之你要点什么？[p]

#
[default_window]
店员站在稍远的地方等着我们点单，这气氛还真有点尴尬。[p]

[bg storage="CG1/CG1_menu_5.jpg" time="800"]
[nozomi_window]
#渚
那我要奶油苏打……烤嫩鸡饭沙拉套餐，再加一份炸薯条，还有甜点巧克力香蕉圣代！然后饭要大份的♪[r]
[p]

#
[default_window]
_　[r]
_　[cm]

太多了太多了太多了！[p]
这明显不是一个人能吃完的量啊。而且还是早上！[p]

[saku_window]
#朔
我还是问一下，你真的能吃完吧？[p]

#
[default_window]
[bg storage="CG1/CG1_menu_1.jpg" time="800"]
[nozomi_window]
#渚
吃不完就让朔帮我吃掉，所以没问题～[p]

[saku_window]
#朔
全靠我了是吧……[p]

#
[default_window]
[bg storage="CG1/CG1_menu_5.jpg" time="800"]

[nozomi_window]
#渚
人生总要有一次不顾价格随便点想吃的东西嘛。啊，店员小姐！可以点单了吗？[r]
[p]

[saku_window]
#朔
等一下，我还没决定呢！[p]

#
[default_window]
等着的店员走过来了，我赶紧慌忙翻看菜单。[p]
随便选了一份映入眼帘的凯撒沙拉下单了。[p]

[bg storage="CG1/CG1_tuujou_2.jpg" time="800"]
[nozomi_window]
#渚
你只吃沙拉吗？[p]

[saku_window]
#朔
反正到时候肯定得帮你吃剩下的不是嘛……[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_9.jpg" time="800"]

[nozomi_window]
#渚
你最好别小看我的食欲哦。我会让你后悔的，到时候哭着求饶可就晚了！[r]
[p]

#
[default_window]
_　[r]
_　[cm]

你这莫名其妙的自信到底是从哪儿来的啊！[p]
渚一副迫不及待的样子。[p]

[mask time=" 700" graphic="kuro.jpg"]
[bg storage="famires2.jpg" time="0"]
[mask_off time="700" wait="true"]

一边闲聊着，一边等待着料理上桌……[p]
从奶油苏打和沙拉开始，点的东西一个接一个地被端到了桌上。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="CG1/CG1_eating_5.jpg" time="500"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
哇……！真、真的可以吃这么多吗？[p]

[saku_window]
#朔
这不是你自己点的吗，渚。[p]

#
[default_window]
[bg storage="CG1/CG1_eating_4.jpg" time="800"]

[nozomi_window]
#渚
嗯哼哼～♪ 好期待，好期待♪[p]

[saku_window]
#朔
嘛，你开心就好……[p]

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
渚每吃一口，表情都会不停地变化。[p]
总觉得像个监护人一样，不由自主地盯着她看。[p]
[bg storage="CG1/CG1_eating_kasu_4.jpg" time="800"]
……约会啊。[p]
她为什么这么执着，这点让我有些在意。[p]
不过，如果渚想约会的话，对我来说再好不过了。[p]
为了这个，就算请她吃饭也没什么大不了的。[p]


;;; 暗転
[fadeoutse buf="3"]
[mask time=" 700" graphic="kuro.jpg"]
[fadeoutbgm]
[bg storage="monolog_01.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="700" wait="true"]

不介意……我本来是这么想的。[p]

[wait time=" 300"]
[bg storage="CG1/CG1_eating_kasu_7_zoom.jpg" time="800"]
[stopse buf="3"]

[nozomi_window]
#渚
呃，好撑……已经吃不下了……[p]

#渚
………………[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]

[nozomi_window]
#渚
就算你这么想，也太天真了吧。[p]

[saku_window]
#朔
也是，这倒是。[p]

#
[default_window]
[playse buf="1"  storage="OnomaImpact03.mp3" volume="40"]
[wait time=" 500"]

[saku_window]
#朔
……几乎都是我在吃啊！[p]

#
[default_window]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

在渚面前摆着的许多料理中，只有一点点被动过的烤嫩鸡和大份米饭，还有薯条被移到了我面前。[p]
至于渚，她只吃完了沙拉和圣代，现在正用吸管戳着奶油苏打里的冰淇淋喝。[p]
偶尔她会像突然想起来似的伸手去拿薯条。[p]

[bg storage="CG1/CG1_tuujou_soda_1.jpg" time="800"]

[nozomi_window]
#渚
哎嘿[p]

[saku_window]
#朔
哎嘿什么啊！[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_4.jpg" time="800"]

[nozomi_window]
#渚
因为你看起来肚子很饿，我才勉为其难让给你的。而且，奶油苏打真的太好喝了！[p]

[saku_window]
#朔
这话说得好听……嗯，男生嘛，这点量还是能吃下的。[p]

#
[default_window]
可能是因为做了平时不会做的事情，虽然肚子饿了……。[p]
即便如此，这份量也是勉强才能吃完的程度。[p]

[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]

吃着吃着，不知不觉间，渚一直在盯着我看。[p]
难道是我脸上沾了什么食物残渣吗……。[p]
被人盯着吃东西，总觉得不自在。[p]
等嘴里咀嚼的食物咽下去后，我向渚问了一句。[p]

[saku_window]
#朔
……你有什么想说的吗？[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_3.jpg" time="800"]

[nozomi_window]
#渚
……朔，你真是个怪人呢。[p]

[saku_window]
#朔
这话可别让我从你嘴里听到。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_soda_8.jpg" time="800"]

[nozomi_window]
#渚
为什么你会对我这么温柔呢？[p]

[saku_window]
#朔
……谁知道呢？[p]

#
[default_window]
显然，她对我还是抱有疑问的。[p]
我装作若无其事，继续吃东西。[p]
……这个女孩，肯定也有某些原因才会出现在这里吧。[p]
不过嘛，对我来说，这些都无所谓。[p]

[bg storage="monolog_01.jpg" time="800"]

像蜃气楼一样飘忽不定，下一瞬间就会消失得无影无踪……。[p]
这种不可思议、不稳定、危险的关系。[p]
这样的距离感对现在的我来说正好。[p]
既让我觉得舒服，也方便我利用渚。[p]

[bg storage="CG1/CG1_tuujou_soda_9.jpg" time="800"]

[nozomi_window]
#渚
这种时候说『我才没有对你温柔呢』会更帅哦？[p]

[saku_window]
#朔
多谢指教。[p]

#
[default_window]
[bg storage="CG1/CG1_tuujou_1.jpg" time="800"]

一边聊天，一边把摆在面前的菜吃得干干净净。[p]
所谓的『约会』，这样就算可以了吗？[p]
自从成为社会人后就没什么时间玩，约会怎么进行都忘了呢。[p]



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
