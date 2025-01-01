
;ボイス設定
[voconfig sebuf="2" name="渚" vostorage="nozomi/nozomi_03_{number}.mp3" number="1"]
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_03_{number}.mp3" number="44"]
[vostart]

然后……[p]

[playbgm  storage="04Faraway.mp3" volume="40"]
[bg storage="unoshima05.jpg" time="800"]

在古色古香的茶屋里稍作休息。[p]

[bg storage="unoshima04.jpg" time="800"]

在岛上的神社里参拜。[p]

[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="800"]

尽情享受了卯之岛的各种观光景点后，太阳却还未落山。[p]
居然会有如此多的空闲时间……。[p]
对拥有多到无处安放的时间感到坐立不安。[p]

[fadeoutbgm]
[bg storage="aozora.jpg" time="1200"]

然后，现在。[p]
我和渚脱了鞋站在海边。[p]

;;; 海辺
;;; スチル表示
[mask time=" 500" graphic="shiro.jpg"]
[bg storage="umi02.jpg" time="800"]
[wait time=" 500"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="500" wait="true"]

[setreplay name="CG4" storage="scene3_replay.ks" label="*CG4_replay"]

[wait time=" 1000"]
[playbgm  storage="07umi.mp3" volume="30"]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_1_zoom.jpg"]
[wait time=" 1000"]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]
[cg storage="CG4/CG4_sage_1.jpg"]
[wait time=" 500"]
[fadeoutse buf="3"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
好凉，好舒服──[p]

[default_window]
#
感受着涌上又退下的浪花从脚边带走沙子的触感，有点痒痒的。[p]
不经意地看了一眼手表，我想起了一件事。[p]

[saku_window]
#朔
……啊……现在这个时候应该忙着收尾工作吧……[p]

[default_window]
#
明明已经尽情享受了假期，可一回过神来，脑海里浮现的全是工作的事情。[p]
本来或许该抱怨几句才对……[p]
明明已经被逼到想跳进电车轨道的地步，脑海中最先浮现的却是担忧和不安之类的念头。[p]
看来，这种感觉已经深深刻在心里了。[p]

[stopse buf="3"]
[bg storage="CG4/CG4_sage_2.jpg" time="800"]
[cg storage="CG4/CG4_sage_2.jpg"]
[nozomi_window]
#渚
朔，你的工作有意思吗？[p]

[saku_window]
#朔
一点都不有意思啊。每天都在重复同样的事情，而且连休息的时间都没有……[p]
这话要是说起来就没完没了了。[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[nozomi_window]
#渚
虽然很无聊，但还是每天坚持下来了啊。同样的日子一直持续下去会让人厌烦的感觉，我也能理解。[p]

[default_window]
#
渚又补了一句，虽然我没在工作啦。[p]

[saku_window]
#朔
这种时候还想着工作的事，真是没必要啊。[p]

[default_window]
#
我这么抱怨了一句，渚却突然抓起自己的裙摆──[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG4/CG4_age_6.jpg" time="800" wait=false]
[cg storage="CG4/CG4_age_6.jpg"]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="1800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
嘿！[p]

[saku_window]
#朔
哇啊……！好冷！[p]

[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[cg storage="CG4/CG4_sage_4.jpg"]
[nozomi_window]
#渚
约会的时候就开朗一点嘛！朔现在陪着的可是我，不是你的工作哦？[p]

[saku_window]
#朔
这倒也是……[p]

#

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[default_window]
[bg storage="CG4/CG4_age_6.jpg" time="800" wait=false]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="1800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
在沙滩上互相泼水也是约会的一大乐趣嘛！[p]

#
[default_window]
[bg storage="CG4/CG4_age_6_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_6_zoom.jpg"]
在波光粼粼的水面映照下，渚毫无顾虑地笑着。[p]
那张笑脸比大海，比阳光都更加耀眼夺目。[p]

[bg storage="CG4/CG4_sage_2.jpg" time="800"]

不过，我还是……在担心被海水弄湿的套装。[p]

[saku_window]
#朔
……[p]

[default_window]
#
我并不是讨厌套装被弄湿。[p]
我讨厌的是，自己居然会在意套装被弄湿这种『无聊的小事』。[p]
所以──[p]

[bg storage="CG4/CG4_age_2_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_2_zoom.jpg"]
[saku_window]
#朔
你给我等着啊啊啊啊啊！！[p]

[bg storage="CG4/CG4_age_5_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_5_zoom.jpg"]

[nozomi_window]
#渚
哇！[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask time=" 500" graphic="shiro.jpg"]
[playse buf="3"  storage="Diving.mp3" volume="50"]
[chara_hide_all time=0 wait=true]
[bg storage="mizu.jpg" time="0"]
[mask_off time="500" wait="true"]
[wait time=1000]
[playse buf="3"  storage="Diving_in_water.mp3" volume="50"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
……等、等等，朔——！！？[p]

[default_window]
#
假装要向渚泼海水，其实我直接整个人跳进了海里。[p]

[fadeoutse buf="3"]
[nozomi_window]
#渚
你、你在干什么呀！？套装都全湿透了！[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

从稍远的地方，能听到渚担心的声音。[p]
是啊，确实全身湿透了，说不难受那是假的。[p]
漂浮在水中，我仰望着天空。[p]
但是……[p]

[stopse buf="3"]
[bg storage="densha_01_kako.jpg" time="1200" method="vanishIn"]

翘班跑到卯之岛这种远地方，还和渚玩得这么疯，可即便如此，我还是……[p]

[bg storage="monolog_01.jpg" time="1200" method="vanishIn"]

还没有到达「彼岸」。[p]
对自己所处的状况……对脱轨后的前方，并没有真正从心底享受。[p]
另一个冷静的自己，从轨道上冷眼旁观着我。[p]
我意识到了这一点。[p]
心还在试图回到原来的生活中去。[p]

[bg storage="mizu.jpg" time="1200" ]

正因为讨厌这种感觉，我才想要勉强去做些平时绝对不会做的事情。[p]
当然，做了这些事情也不可能有什么改变……[p]

[bg storage="aozora2.jpg" time="800"]
[saku_window]
#朔
……哈啊[p]

[default_window]
#
我到底在干什么呢？[p]
这种事，只会让衣服被海水弄湿，洗起来麻烦罢了。[p]
但是…………[p]

[saku_window]
#朔
哈哈哈哈哈……！[p]

[default_window]
#
心情稍微有点释然了。[p]

[bg storage="umi01_2.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gyagu2" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
快点回来呀——！[p]

[default_window]
#
就在我想着这些的时候，远处传来了渚的声音。[p]

[saku_window]
#朔
抱歉，抱歉。[p]

[default_window]
#
从漂浮的姿势站起来，准备回到渚那边……[p]

[chara_hide_all time=500 wait=false]
[playse buf="3"  storage="Diving.mp3" volume="50"]
[bg storage="mizu.jpg" time="800"]

[saku_window]
#朔
噗！[p]

[default_window]
#
可能被水流冲得有点远了，想踩地却踩空了，结果脸直接扎进了水里。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_4_zoom.jpg"]

[nozomi_window]
#渚
真是的。我可没带毛巾哦？[p]

[saku_window]
#朔
没事儿。感觉一切都无所谓了。湿了也完全不在乎。[p]

#
[default_window]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]

[nozomi_window]
#渚
……不过确实，现在的朔，看起来很开心呢。[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[saku_window]
#朔
渚你也试试看吧。[p]

[default_window]
#
我半开玩笑地这么说着……[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_7_zoom.jpg"]

[nozomi_window]
#渚
……真的可以吗？[p]

[saku_window]
#朔
这可是约会啊，总不能只有一方参与吧。[p]

[default_window]
#
虽然连自己都觉得这个理由有点强词夺理。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
你不会是在开玩笑吧？[p]

[saku_window]
#朔
要是不愿意的话，那我就自己再游一圈好了。[p]

#
[default_window]
[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]

[nozomi_window]
#渚
啊——真是的，我知道了啦！那、那我也……跳下去就是了！[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

[nozomi_window]
#渚
呃，嘿！[p]

#
[default_window]
[playse buf="3"  storage="Splash2.mp3" volume="50"]
[bg storage="umi01_2.jpg" time="800"]

虽然小心翼翼地跳了下去……[p]
但水似乎很浅，只淹到了腰部。[p]

[chara_show  name="望1_ネックレス有" face="gyagu1" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
你那是什么傻笑脸啊！[p]

[saku_window]
#朔
哈哈，我觉得你很可爱啊。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
那当然啦，我本来就很可爱嘛！[p]

[saku_window]
#朔
来，我给你做个示范。跳水就应该是这样的──！[p]

#
[default_window]
[playse buf="3"  storage="Diving.mp3" volume="30"]
[wait  time="500"]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gyagu1" top="50" width="1600" height="2259" time=250]
[wait  time="300"]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
哇扑！[p]

[default_window]
#
朔跳水溅起的水花，直接击中了渚的脸。[p]

[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500 wait=false]

[nozomi_window]
#渚
我、我也要试试……！[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=300 wait=true]
[anim name="望1_ネックレス有" top="20" time=750]
[wait  time="750"]
[anim name="望1_ネックレス有" top="1090" time=500]
[wait  time="200"]
[playse buf="3"  storage="Diving.mp3" volume="30"]
[wait  time="1000"]

渚也猛地跳进了海水里，全身都湿透了。[p]
刚冒出头站起来，看样子是喝了一口海水……[p]

[mask time=" 500" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="CG4/CG4_age_3_zoom.jpg" time="0"]
[cg storage="CG4/CG4_age_3_zoom.jpg"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
……好咸啊——！呸，呸！[p]

[saku_window]
#朔
哈哈哈，跳得不错嘛！[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
呜……这样子我们要怎么回去啊！[p]

[saku_window]
#朔
没想过！[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[nozomi_window]
#渚
欸，那……你的意思是，不回去了！？[p]

[saku_window]
#朔
不回去的话，这种状态下还能去哪儿啊？[p]

[nozomi_window]
#渚
诶……？那、那个……比如说，酒店什么的……？[p]

#
[default_window]
我心里猛地一颤。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[bg storage="CG4/CG4_age_4.jpg" time="800" wait=false]
[cg storage="CG4/CG4_age_4.jpg"]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="1800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#渚
你脸红什么呀！难、难不成你是个纯情男生？[p]

#
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[default_window]
[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[bg storage="CG4/CG4_age_4.jpg" time="800"]
[playse buf="3"  storage="Splash.mp3" volume="50"]
[wait  time="200"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[saku_window]
#朔
因为我完全没想到会被你这么说啊……[p]

#
[default_window]
[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
哎呀，当然是开玩笑的啦！[p]

[default_window]
#
渚经常开玩笑，但有时候她的玩笑真假难辨，实在让人头疼……。[p]

[bg storage="umi02.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500]

[saku_window]
#朔
我就这样湿着回去吧。这个时间点，电车应该还算空。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
要是你感冒了我可不管哦？[p]

[default_window]
#
她倒是一点都不担心自己会感冒……。[p]

[fadeoutbgm]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]

#渚
……啊。你快看啊朔！天空……[p]

#
[default_window]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[chara_hide_all time=500 wait=false]
[playbgm  storage="05Homecoming.mp3" volume="40"]
[bg storage="yuuyake.jpg" time="1200"]
[wait  time="500"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

顺着她的话抬头看去，只见紫色与橙色交织成的渐变。[p]

[saku_window]
#朔
白天也有想过……但像这样认真看天空，之前完全没有过啊。[p]

[nozomi_window]
#渚
……我也是。[p]

[saku_window]
#朔
真漂亮啊……[p]

#
[default_window]
[bg storage="umi02_yuu.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]
[wait  time="500"]

[nozomi_window]
#渚
真美啊。要是世界一直这么美就好了。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="yuuyake.jpg" time="800"]

[saku_window]
#朔
是啊……、呃！[p]

[default_window]
#
我起身坐了起来。[p]
因为泡了很久，身体逐渐失去了热量，于是走回了沙滩上。[p]
渚也跟在我后面走了过来。[p]
同时抬头看向天空，只见深蓝色已经染上了边缘。[p]
夜晚即将来临。[p]
不知不觉间，海边玩耍的人几乎都离开了。[p]

[bg storage="umi02_yuu.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

作为一个社会人，我斟酌着适合关心比我年幼的渚的措辞。[p]
这就是所谓的体面吧。[p]

[saku_window]
#朔
话说回来……你今天打算几点回家？太晚的话你父母会担心吧？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
啊，这个完全没问题哦！因为我已经把父母杀掉了！[p]

[default_window]
#
这都是什么话啊。[p]

[saku_window]
#朔
好好好，又是那个玩笑，对吧……[p]

[default_window]
#
至少知道你父母不担心你，这就够了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
总之，总之，不用担心啦。所以无论是酒店还是朔的家，带我去哪都行！[p]

[saku_window]
#朔
……嗯？[p]

[default_window]
#
对于完全出乎意料的提议，我不禁瞪大了眼睛。[p]
渚露出了调皮的笑容，说道。[p]

[chara_mod  name="望2_ネックレス有" face="gimon" cross=false time=500 wait=false]
[nozomi_window]
#渚
你不愿意带上我吗？[p]

[saku_window]
#朔
…………[p]

[default_window]
#
本来我是打算这么做的，但被渚反过来主动提出来后……[p]
不，其实这都是借口。[p]
我想把渚带回家……和她共度一夜。[p]
今天的约会本来就是为了这个目的，不是吗？[p]
而且渚也说可以了，那还有什么理由拒绝呢？[p]
内心深处的野兽，正逐渐抬起头来。[p]

[saku_window]
#朔
……渚，你这样湿着身子移动也没问题吧？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[bg storage="umi02_yuu_bokasi.jpg" time="200" wait=false]
[chara_show  name="望2_ネックレス有" face="egao" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#渚
没事的哦。嘻嘻，连湿透了都成了情侣装呢。[p]

[default_window]
#
仿佛从一开始就看透了我那卑微的欲望一样……[p]
渚露出了一种与年龄不符、甚至可以说是妖艳的笑容。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[stopse buf="3"]
[chara_hide_all time=0 wait=true]
[bg storage="densha_yuu.jpg" time="0"]
[wait time=" 2500"]
[playse buf="3"  storage="Train.mp3" volume="10" loop=true]
[mask_off time="700" wait="true"]
[playbgm  storage="04Faraway.mp3" volume="40"]

[chara_show  name="望2_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=500]

[nozomi_window]
#渚
朔今天玩得开心吗？[p]

[saku_window]
#朔
嗯，挺开心的。虽然被你折腾得够呛……[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]

[nozomi_window]
#渚
不过你这表情可不像讨厌这样的样子哦。[p]

[saku_window]
#朔
……嘛，适可而止的话还行。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
嘻嘻。[p]

[saku_window]
#朔
那你呢，渚？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
我也玩得很开心哦。虽然把你折腾得够呛了呢。[p]

[saku_window]
#朔
这是什么话啊，这是在讽刺我吗？[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]

[nozomi_window]
#渚
不过最后还是我被你折腾得够呛啦。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
毕竟，两个人全身湿透地坐电车，这跟我想象中的约会完全不一样！[p]

[saku_window]
#朔
不过你这表情可不像讨厌这样的样子哦。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="utsumuki" cross=false time=500 wait=false]

[nozomi_window]
#渚
唔～～～～～……你还真是意外地会反将一军呢。[p]

[saku_window]
#朔
哈哈，明明是渚你先提出来的吧。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
啊……对了，我好像还没说过呢。[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
#渚
其实「渚」这个名字是假的哦。[p]

[saku_window]
#朔
诶？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
@layopt layer=message0 visible=false
[nowait]
桂木望。这才是我的真名。
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

桂木望。这才是我的真名。
[nolog]
[p]
[endnolog]

[saku_window]
#朔
为什么特意用假名？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
因为我不喜欢自己的真名。[p]

[saku_window]
#朔
……这样啊。嘛，我倒是不介意。不过为什么选了渚这个名字？[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
也没什么特别的理由啦。小时候看过一部动画，里面有个让我很憧憬的女孩子叫渚。[p]

[saku_window]
#朔
啊……那个啊。当时那种用拳头战斗的女孩子还挺新鲜又帅气的呢。[p]

[chara_mod  name="望2_ネックレス有" face="egao2" cross=false time=500 wait=false]
[nozomi_window]
#望
我就想着，要是能像那样强大就好了～[p]

[saku_window]
#朔
现在开始也不晚吧？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
现在开始……吗？[p]

[saku_window]
#朔
为什么反倒是你来问我啊？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
哈哈哈！[p]

[saku_window]
#朔
刚才的对话有哪里好笑吗？[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
嗯嗯。只是觉得，能遇到朔真是太好了。[p]

[saku_window]
#朔
我也是啊……既然要偷懒的话，就想着体验点非日常的感觉。[p]
从这个意义上来说，我也觉得挺好的。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon2" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
哼……请你老实说「和我在一起真好」嘛！[p]

[saku_window]
#朔
……也是呢。能和望一起体验「约会」挺开心的。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = true;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = true;
[endscript]

[nozomi_window]
#望
还没结束呢。而且……什么叫「体验」啊？
[wait time=" 2000"]
[chara_mod  name="望2_ネックレス有" face="gimon" cross=false time=500 wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = false;
[endscript]

[saku_window]
#朔
别太捉弄成年人了。[p]

[chara_mod  name="望2_ネックレス有" face="egao2" cross=false time=500 wait=false]
[nozomi_window]
#望
哈哈哈！不过……接下来才是「正戏」呢，字面意义上的。[p]

[saku_window]
#朔
别说什么字面意义，听着怪真实的。[p]
嘛……我也是这么打算的……[p]

#
[default_window]
[chara_hide_all time=500 wait=true]
[bg storage="densha_yuu_bokasi.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="wink" top="-160" width="2558" height="3541" time=400 wait=true]
[anim name="望1_ネックレス有" top="-130" time=250]
[wait time=" 200"]

[nozomi_window]
#望
我会让今晚成为你绝对忘不了的一夜哦！[p]

[saku_window]
#朔
这种场景下，就算想忘也忘不了吧。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500]

[nozomi_window]
#望
哈哈哈……是啊，希望如此呢……[p]

#
[default_window]
[fadeoutse buf="3"]
[mask time=" 1200" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=" 2000"]
[mask_off time="700" wait="true"]
[stopbgm]
[stopse buf="3"]

;;; 朔の家

晚上8点17分。[p]
从卯之岛坐电车晃荡了大约一个半小时。[p]

[bg storage="kitchen_yoru.jpg" time="800"]
[playse buf="3"  storage="room_door_open.mp3" volume="20"]
[wait time=" 800"]

终于回到家了。[p]
可能是因为度过了非常充实的一天，感觉像是出门好几天了一样。[p]
而且最重要的是……今天不是一个人。[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="3" storage="Light_Switch.mp3" volume="50"]
[bg storage="kitchen_hiru.jpg" time="800"]
[wait time=" 800"]

[playse buf="3"  storage="room_door_close.mp3" volume="20"]
[wait time=" 800"]

[bg storage="jishitsu_yoru_01.jpg" time="800"]
[playbgm  storage="horizonblue.mp3" volume="40"]

[chara_show  name="望1_ネックレス有" face="gyagu1" top="50" width="1600" height="2259" time=600 wait=true]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[nozomi_window]
#望
想脱衣服！想洗澡！想泡澡啊啊啊！[p]

[saku_window]
#朔
好吧，用剪刀石头布来决定顺序吧。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="pien" cross=false time=500 wait=false]
[wait time=" 200"]
[anim name="望1_ネックレス有" left="250" time=300]
[wait time=" 300"]
[anim name="望1_ネックレス有" left="160" time=300]
[wait time=" 300"]
[anim name="望1_ネックレス有" left="250" time=300]
[wait time=" 300"]
[anim name="望1_ネックレス有" left="160" time=300]
[wait time=" 300"]
[nozomi_window]
#望
一起洗也可以哦？[p]

[saku_window]
#朔
别一边扭来扭去一边说这种话。[p]

[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500 wait=false]
[nozomi_window]
#望
呀～朔你个色鬼～[p]

[saku_window]
#朔
那好，预备……剪、刀、石、[p]

#
[default_window]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
布！[p]

[default_window]
#
我是布，望是剪刀。呃，输了……！[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
好，我赢啦～至于为什么会输，就趁我泡澡的时候好好想一想吧～[p]

[saku_window]
#朔
方形的瓶子是洗发水哦。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
好～的！[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="kitchen_hiru.jpg" time="800"]

望在我面前毫无顾忌地噼里啪啦把衣服随手脱下来。[p]
她就一点羞耻心都没有吗……？[p]
尽量不去看她，等浴室的门关上后，才松了一口气。[p]
[playse buf="3"  storage="shower.mp3" volume="30" loop=true]

[saku_window]
#朔
…………[p]

#
[default_window]

不过说起来……[p]
在自己的房间里听到其他人的生活声，总觉得有点别扭。[p]
不，别扭……应该说是。[p]

[saku_window]
#朔
有点儿……比想象中更让人心跳加速啊……[p]

#
[fadeoutbgm]
[default_window]

这么想着的同时，独处的状态下……[p]
今天才第一次见面的女孩竟然被我带回了房间，这简直是无法无天了……！[p]
这种感觉越发强烈起来。[p]

[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[saku_window]
#朔
（越是想让自己冷静下来……越是不去想这些事情……）[p]
（就越是忍不住脑补现在在门那边洗澡的望的裸体啊啊啊……！）[p]

#
[default_window]
搬到这个家里之后，因为工作忙，家里有女孩子在的情况……居然还是第一次。[p]

[saku_window]
#朔
（……咕）[p]

#
[setreplay name="CG21" storage="scene3_replay2.ks" label="*CG21_replay"]
[default_window]

一边倾听着淋浴的声音……[p]
一边盯着浴室磨砂玻璃后隐约可见的肌肤。[p]
本来就怀抱着「想做爱」这种下流的欲望……[p]
不知为何，目光就是移不开。[p]
不，比起这个，得赶紧给望准备换洗的衣服才行……。[p]

[saku_window]
#朔
望，我把你的衣服洗了哦。[p]

#
[default_window]
隔着门说了这话，却没有听到望的回应。[p]
是没听见吗……？[p]
那么……要大声说，还是……[p]

[saku_window]
#朔
……如果开门进去说的话……望会有什么反应呢？[p]

#
[default_window]

如果真的打开这扇门的话……[p]
[playse buf="1" storage="Chimes.mp3" volume="50"]
[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="CG21/CG21_01.jpg" time="0"]
[cg storage="CG21/CG21_01.jpg"]
[wait time=" 1000"]
[mask_off time="1000" wait="true"]

[wait time=" 1000"]

[bg storage="CG21/CG21_02.jpg" time="800"]
[cg storage="CG21/CG21_02.jpg"]
;;;①ジト目

『「你在看什么啊？朔这个色鬼，变态！洗完澡我就回去了哦。」』[p]
会被这么说吗？[p]
不……[p]

[bg storage="CG21/CG21_03.jpg" time="800"]
[cg storage="CG21/CG21_03.jpg"]
;;;②赤面
『咦……诶？朔……？』[p]

会不会像这样害羞地说呢。[p]
还是说……[p]

[bg storage="CG21/CG21_04.jpg" time="800"]
[cg storage="CG21/CG21_04.jpg"]
;;;③恥じらい＋怒り
[quake count=3 time=200 hmax=10 vmax=10]
[wait time=100]

『呀啊啊啊！朔！？快把门关上啊——！』[p]
会不会像这样说呢。[p]

[bg storage="kitchen_hiru.jpg" time="800"]

想着望的裸体和她的反应，自己就不由得兴奋了起来。[p]
虽说兴奋，但具体是什么就不多说了！对吧！[p]

[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="CG21/CG21_01_2.jpg" time="0"]
[cg storage="CG21/CG21_01_2.jpg"]
[wait time=" 500"]
[mask_off time="1000" wait="true"]

而且，最重要的是────。[p]
望她……[p]

[bg storage="CG21/CG21_05.jpg" time="800"]

望她……！[p]
虽然不好明说，但…………[p]
有。[p]
确实有……！[p]

[bg storage="CG21/CG21_06.jpg" time="800"]

为什么不是没有，而是……[p]
有什么东西……[p]

[bg storage="CG21/CG21_07.jpg" time="600"]
[layermode_movie name="intensive_line" video="intensive_line.mp4" opacity="255" mode="screen"]

「那个」真的存在吗……！[p]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[free_layermode name="intensive_line"]
[bg storage="jishitsu_yoru_01.jpg" time="800"]
[wait time=" 500"]
[bg storage="kitchen_hiru.jpg" time="800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]
[saku_window]
#朔
啊啊啊啊啊啊！冷静点……我啊……！！[p]

#
[default_window]
在地板上翻滚试图保持冷静。[p]
不觉得望会对这种性骚扰的家伙敞开心扉。[p]
必须用聪明的举动避免让望感到紧张。[p]
一边压抑着激动的心情，暂且……[p]
趁望在洗澡的时候，顺便把我的衣服一起洗了……。[p]

[saku_window]
#朔
……呃，真是腥味十足啊。[p]

[default_window]
#
……还是多放点洗衣液比较好吧。[p]
幸好提前买了滚筒式洗衣机。[p]
能连烘干一起搞定的超级好物件。[p]

[saku_window]
#朔
望，我也帮你把衣服洗了哦！[p]

[default_window]
#
一边隔着门大声喊让她听见，一边按下了洗衣机的按钮。[p]

[fadeoutse buf="3"]
[mask time=" 1500" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="jishitsu_yoru_01.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="1500" wait="true"]
[stopbgm]
[stopse]

@jump storage="scene4.ks"
