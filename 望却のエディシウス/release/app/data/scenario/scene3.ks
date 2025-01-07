
;ボイス設定
[voconfig sebuf="2" name="渚" vostorage="nozomi/nozomi_03_{number}.mp3" number="1"]
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_03_{number}.mp3" number="44"]
[vostart]

然后……[p]

[playbgm  storage="04Faraway.mp3" volume="40"]
[bg storage="unoshima05.jpg" time="800"]

在古色古香的茶屋小憩了一会儿。[p]

[bg storage="unoshima04.jpg" time="800"]

在岛上路途中的神社参拜了一下。[p]

[playse buf="3"  storage="summer_beach2.mp3" volume="20" loop=true]
[bg storage="unoshima_michi02.jpg" time="800"]

即便尽情游玩了卯之岛的各处观光景点，太阳依然未曾落下。[p]
没想到会有这么多闲暇时间……[p]
面对如此充裕的时间，我不禁感到有些坐立不安。[p]

[fadeoutbgm]
[bg storage="aozora.jpg" time="1200"]

然后，此刻。[p]
我和渚脱掉鞋子，站在海边。[p]

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
凉凉的，好舒服——[p]

[default_window]
#
海浪一波波冲刷着脚下的沙子，那种触感让人觉得痒痒的。[p]
我不经意间看了眼手表，突然想起了一件事。[p]

[saku_window]
#朔
……啊……这会儿应该正忙着收尾工作吧……[p]

[default_window]
#
明明正尽情享受着假期，一回过神来想起的却全是工作的事。[p]
本该抱怨几句的，但是……[p]
即便被逼到要跳上电车轨道的地步，首先想到的却是担心和不安。[p]
看来，我已经习惯了这种思维方式。[p]

[stopse buf="3"]
[bg storage="CG4/CG4_sage_2.jpg" time="800"]
[cg storage="CG4/CG4_sage_2.jpg"]
[nozomi_window]
#渚
朔的工作有趣吗？[p]

[saku_window]
#朔
哪里有趣啊。每天重复同样的事，却连休息的时间都没有……[p]
这个话题，一旦开始就没完没了了[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[nozomi_window]
#渚
即使无聊，你也每天都在坚持呢。我也能理解那种日复一日重复同样的事情会让人厌烦的心情[p]

[default_window]
#
渚补充道，虽然我没有工作。[p]

[saku_window]
#朔
这种时候就别想起工作的事了啊[p]

[default_window]
#
我这么抱怨着，渚突然抓起自己裙子的下摆——[p]

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
哇……！好冷！[p]

[bg storage="CG4/CG4_sage_4.jpg" time="800"]
[cg storage="CG4/CG4_sage_4.jpg"]
[nozomi_window]
#渚
约会的时候至少要开心一点嘛！朔的对象可是我，不是工作哦？[p]

[saku_window]
#朔
话是这么说……[p]

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
在海滩上互相泼水不也是约会的乐趣之一吗！[p]

#
[default_window]
[bg storage="CG4/CG4_age_6_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_6_zoom.jpg"]
在闪闪发光的水面反射中，渚无忧无虑地笑着。[p]
那表情看起来比海洋更明亮，比太阳更耀眼。[p]

[bg storage="CG4/CG4_sage_2.jpg" time="800"]

然而，我却在担心被海水弄湿的套装。[p]

[saku_window]
#朔
……[p]

[default_window]
#
并不是讨厌套装被弄湿。[p]
而是讨厌那个在意套装被弄湿这种「无聊事」的自己。[p]
所以——[p]

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
……诶，朔——！！？[p]

[default_window]
#
我假装要向渚泼水，却一个猛子扎进了海里。[p]

[fadeoutse buf="3"]
[nozomi_window]
#渚
你、你在干什么啊！？套装都湿透了啊！[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

远处传来渚担心的声音。[p]
啊，确实湿透了，不舒服得很。[p]
漂浮在水中，仰望着天空。[p]
但是……[p]

[stopse buf="3"]
[bg storage="densha_01_kako.jpg" time="1200" method="vanishIn"]

翘班跑到卯之岛这么远的地方，和渚玩了个痛快，可我却还是……[p]

[bg storage="monolog_01.jpg" time="1200" method="vanishIn"]

我还是没能到达「那一边」。[p]
我还无法从内心真正地享受自己所处的状况……偏离轨道后的前路。[p]
另一个冷静的自己仍站在轨道上，用冷漠的眼神看着我。[p]
我意识到了这一点。[p]
内心深处还在试图回到原来的生活。[p]

[bg storage="mizu.jpg" time="1200" ]

我讨厌这样，所以想要强迫自己做些平常绝对不会做的事。[p]
当然，做了这些也不会有什么改变……[p]

[bg storage="aozora2.jpg" time="800"]
[saku_window]
#朔
……哈哈[p]

[default_window]
#
我到底在干什么啊？[p]
这样做只会让衣服被海水弄湿，增加洗衣服的麻烦而已。[p]
但是…………[p]

[saku_window]
#朔
啊哈哈哈哈哈……！[p]

[default_window]
#
感觉心情稍微轻松了一些。[p]

[bg storage="umi01_2.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gyagu2" top="50" width="1600" height="2259"]

[nozomi_window]
#渚
快点回来啊——！[p]

[default_window]
#
正当我想着这些的时候，远处传来了渚的呼喊声。[p]

[saku_window]
#朔
抱歉抱歉[p]

[default_window]
#
从漂浮的姿势站起来，准备回到渚那里……[p]

[chara_hide_all time=500 wait=false]
[playse buf="3"  storage="Diving.mp3" volume="50"]
[bg storage="mizu.jpg" time="800"]

[saku_window]
#朔
噗！[p]

[default_window]
#
可能是被冲得比想象中还远，想要踩水的脚空转了一下，结果脸直接扎进了水里。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_4_zoom.jpg"]

[nozomi_window]
#渚
真是的。我可没带毛巾之类的哦？[p]

[saku_window]
#朔
没事。感觉什么都无所谓了。就算湿了也完全不在意[p]

#
[default_window]
[bg storage="CG4/CG4_age_1_zoom.jpg" time="800"]

[nozomi_window]
#渚
……不过确实，现在的朔看起来非常开心呢[p]

#
[default_window]
[bg storage="CG4/CG4_sage_1.jpg" time="800"]

[saku_window]
#朔
渚也来试试吧[p]

[default_window]
#
虽然是半开玩笑地这么说的……[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[cg storage="CG4/CG4_age_7_zoom.jpg"]

[nozomi_window]
#渚
……真的吗？[p]

[saku_window]
#朔
这可是约会啊，只有一个人玩那怎么行[p]

[default_window]
#
即使我自己也觉得这理由荒谬至极。[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
你不是在开玩笑吧？[p]

[saku_window]
#朔
如果你不愿意的话，那我就自己再游一圈[p]

#
[default_window]
[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]

[nozomi_window]
#渚
啊——好吧我知道了！那、那我也……跳下去了哦[p]

#
[default_window]
[bg storage="aozora2.jpg" time="800"]

[nozomi_window]
#渚
呃、嘿！[p]

#
[default_window]
[playse buf="3"  storage="Splash2.mp3" volume="50"]
[bg storage="umi01_2.jpg" time="800"]

虽然战战兢兢地跳了进去……[p]
似乎水很浅，只淹到了腰部。[p]

[chara_show  name="望1_ネックレス有" face="gyagu1" top="50" width="1600" height="2259" time=200]
[wait  time="100"]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]
[wait  time="200"]

[nozomi_window]
#渚
你那副嬉皮笑脸的表情是怎么回事！[p]

[saku_window]
#朔
哈哈，我在想你真可爱啊[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
那是当然的。我本来就很可爱[p]

[saku_window]
#朔
让我来给你示范一下。跳水应该是这样的——！[p]

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
哇噗！[p]

[default_window]
#
跳水激起的水花直接击中了渚的脸。[p]

[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500 wait=false]

[nozomi_window]
#渚
我、我也来……！[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=300 wait=true]
[anim name="望1_ネックレス有" top="20" time=750]
[wait  time="750"]
[anim name="望1_ネックレス有" top="1090" time=500]
[wait  time="200"]
[playse buf="3"  storage="Diving.mp3" volume="30"]
[wait  time="1000"]

渚也猛地跳进海水中，整个身子都湿透了。[p]
刚一露出脸站起来，就发现似乎不小心喝到了海水……[p]

[mask time=" 500" graphic="shiro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="CG4/CG4_age_3_zoom.jpg" time="0"]
[cg storage="CG4/CG4_age_3_zoom.jpg"]
[mask_off time="700" wait="true"]

[nozomi_window]
#渚
……好咸——————！呸、呸[p]

[saku_window]
#朔
哈哈哈，你跳得真不错！[p]

[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
呜呜……这种状态我们要怎么回去啊[p]

[saku_window]
#朔
根本没想过！[p]

[bg storage="CG4/CG4_age_7_zoom.jpg" time="800"]
[nozomi_window]
#渚
诶，那……意思是不回去了！？[p]

[saku_window]
#朔
不回去的话你打算去哪啊，这种湿漉漉的状态[p]

[nozomi_window]
#渚
呃……？那个嘛……酒、酒店之类的……？[p]

#
[default_window]
我心里突然一紧。[p]

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
你脸红什么啊！你、你该不会是处男吧？[p]

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
因为没想到你会说这种话啊……[p]

#
[default_window]
[bg storage="CG4/CG4_age_4_zoom.jpg" time="800"]

[nozomi_window]
#渚
哎呀，这不是明摆着在开玩笑嘛！[p]

[default_window]
#
渚经常开玩笑，但有时候会混杂一些分不清是不是玩笑的东西，所以很麻烦……[p]

[bg storage="umi02.jpg" time="800"]
[chara_show  name="望1_ネックレス有" face="gimon" top="50" width="1600" height="2259" time=500]

[saku_window]
#朔
我就这样湿着回去吧。这个时间电车应该也不太挤[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
朔要是感冒了我可不管哦？[p]

[default_window]
#
她倒是不担心自己会感冒……[p]

[fadeoutbgm]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]

#渚
……啊。朔你看啊！天空……[p]

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

按她说的抬头看天空，是紫色和橙色的渐变。[p]

[saku_window]
#朔
白天的时候也在想……像这样仰望天空，我以前根本没做过啊[p]

[nozomi_window]
#渚
……我也是[p]

[saku_window]
#朔
真美啊……[p]

#
[default_window]
[bg storage="umi02_yuu.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]
[wait  time="500"]

[nozomi_window]
#渚
是很美呢。要是世界一直这么美就好了[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="yuuyake.jpg" time="800"]

[saku_window]
#朔
是啊……哎呀！[p]

[default_window]
#
我站起身来。[p]
因为泡了太久，体温渐渐被夺走了，所以我回到了沙滩上。[p]
渚也跟在我后面。[p]
同时，抬头看天空，深蓝色已经染上了天际。[p]
夜幕降临。[p]
不知不觉间，海边玩耍的人也几乎都不见了。[p]

[bg storage="umi02_yuu.jpg" time="800"]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="50" width="1600" height="2259" time=500]

作为一个社会人，我斟酌着该如何关心这个看起来比我年轻的渚。[p]
这就是所谓的体面吧。[p]

[saku_window]
#朔
话说……你今天打算几点回家？太晚的话父母会担心的吧[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
啊，这个完全不用担心哦！因为我把父母都杀了！[p]

[default_window]
#
她竟然说出这种话。[p]

[saku_window]
#朔
好好好，又是那个老掉牙的玩笑啊……[p]

[default_window]
#
至少知道了父母不会担心她就够了。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
总——之——呢，不用担心。所以不管是酒店还是朔的家，你想带我去哪里都行[p]

[saku_window]
#朔
……啊？[p]

[default_window]
#
面对这出乎意料的提议，我不由得瞪大了眼睛。[p]
渚带着顽皮的笑容说道。[p]

[chara_mod  name="望2_ネックレス有" face="gimon" cross=false time=500 wait=false]
[nozomi_window]
#渚
你不打算带我走吗？[p]

[saku_window]
#朔
…………[p]

[default_window]
#
本来我就是这么打算的，但反过来被渚主动提出来的话……[p]
不……这都是借口。[p]
我想把渚带回家……共度良宵。[p]
今天的约会本来不就是为了这个目的吗。[p]
而且渚也说可以，那还有什么理由拒绝呢？[p]
内心的野兽，开始慢慢抬起头来。[p]

[saku_window]
#朔
……渚这样湿漉漉的也没问题吗？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[bg storage="umi02_yuu_bokasi.jpg" time="200" wait=false]
[chara_show  name="望2_ネックレス有" face="egao" top="-160" width="2558" height="3541" time=250]
[anim name="望2_ネックレス有" top="-130" time=250]

[nozomi_window]
#渚
没关系的哦。嘻嘻，连湿透这点都一样呢[p]

[default_window]
#
就好像从一开始就看穿了我那卑劣的欲望一样……[p]
渚露出了一抹与年龄不相称的、可以说是妖艳的笑容。[p]

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
嗯，很开心。虽然被折腾得不轻就是了……[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]

[nozomi_window]
#渚
但是你的表情看起来并不讨厌这种感觉呢[p]

[saku_window]
#朔
……嗯，适度的话还行[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
嘻嘻[p]

[saku_window]
#朔
渚呢？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
我也玩得很开心哦。虽然把你折腾得不轻[p]

[saku_window]
#朔
什么啊。这是在讽刺我吗？[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]

[nozomi_window]
#渚
不过最后反而是我被折腾了[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
因为，两个人湿漉漉地坐电车什么的。和我想象中的约会完全不一样嘛！[p]

[saku_window]
#朔
但是你的表情看起来并不讨厌这种感觉哦[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="utsumuki" cross=false time=500 wait=false]

[nozomi_window]
#渚
唔～～～～～……你还挺会反击的嘛[p]

[saku_window]
#朔
哈哈。不是渚先说的吗[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#渚
啊……说起来我还没告诉你[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
#渚
渚其实是假名[p]

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
桂木望。这是我的本名
[endnowait]
[cm]
@layopt layer=message0 visible=true

_　[r]
_　[cm]

桂木望。这是我的本名
[nolog]
[p]
[endnolog]

[saku_window]
#朔
为什么要特意用假名呢？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
因为不喜欢本名[p]

[saku_window]
#朔
……这样啊。嘛，我倒是无所谓。不过为什么选择渚这个名字呢？[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
没什么特别的理由哦？就是以前看过的动画里有个我憧憬的女孩叫渚[p]

[saku_window]
#朔
啊……是那个啊。当时用拳头战斗的女孩子确实很新颖很帅气呢[p]

[chara_mod  name="望2_ネックレス有" face="egao2" cross=false time=500 wait=false]
[nozomi_window]
#望
要是能像那样的孩子一样变得强大就好了呢[p]

[saku_window]
#朔
现在开始不就行了吗？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
现在……开始吗？[p]

[saku_window]
#朔
为什么是望在问啊[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
啊哈哈哈[p]

[saku_window]
#朔
刚才的对话有什么好笑的吗？[p]

[chara_mod  name="望2_ネックレス有" face="metoji" cross=false time=500 wait=false]
[nozomi_window]
#望
没有啦。只是觉得能搭话的对象是朔真是太好了[p]

[saku_window]
#朔
我也是……反正要翘课的话，就想体验一下非日常[p]
从这个意义上说，我也觉得很不错[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon2" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
嗯……请直接说「能和我在一起很开心」[p]

[saku_window]
#朔
……说得对。和望玩约会游戏很开心哦[p]

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
不过还没结束呢。还有……这是在玩游戏吗？
[wait time=" 2000"]
[chara_mod  name="望2_ネックレス有" face="gimon" cross=false time=500 wait=false]
[p]

[iscript]
TYRANO.kag.ftag.master_tag.wait.log_join = false;
TYRANO.kag.ftag.master_tag.chara_mod.log_join = false;
[endscript]

[saku_window]
#朔
别太戏弄大人啊[p]

[chara_mod  name="望2_ネックレス有" face="egao2" cross=false time=500 wait=false]
[nozomi_window]
#望
啊哈哈哈！不过……接下来才是「正戏」呢。字面意思哦[p]

[saku_window]
#朔
别说什么字面意思啊，太露骨了[p]
不过……我也是这个意思就是了……[p]

#
[default_window]
[chara_hide_all time=500 wait=true]
[bg storage="densha_yuu_bokasi.jpg" time="200" wait=false]
[chara_show  name="望1_ネックレス有" face="wink" top="-160" width="2558" height="3541" time=400 wait=true]
[anim name="望1_ネックレス有" top="-130" time=250]
[wait time=" 200"]

[nozomi_window]
#望
我会让你度过一个绝对难忘的夜晚的[p]

[saku_window]
#朔
在这种情况下，就算不想记住也肯定会记住的吧[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500]

[nozomi_window]
#望
啊哈哈哈……是啊。希望如此呢……[p]

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
从卯之岛坐电车摇晃了约一个半小时。[p]

[bg storage="kitchen_yoru.jpg" time="800"]
[playse buf="3"  storage="room_door_open.mp3" volume="20"]
[wait time=" 800"]

终于回到了家。[p]
可能是因为度过了充实的一天，感觉好像已经在外面待了好几天一样。[p]
而且最重要的是……今天我不是一个人。[p]

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
想脱衣服！想洗澡！好想泡澡啊啊啊！[p]

[saku_window]
#朔
好，那就用猜拳决定顺序吧[p]

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
别扭来扭去地说这种话[p]

[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500 wait=false]
[nozomi_window]
#望
呀～朔好色哦～[p]

[saku_window]
#朔
那么，预备……石头、剪刀、[p]

#
[default_window]
[anim name="望1_ネックレス有" top="20" time=350]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
布！[p]

[default_window]
#
我出的是布，望出的是剪刀。唔，我输了……[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="egao2" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
好，我赢啦～在我洗完澡之前，你就好好想想为什么会输吧[p]

[saku_window]
#朔
因为方形瓶子是洗发水[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
好～[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="kitchen_hiru.jpg" time="800"]

望毫不客气地在我能看到的地方脱掉衣服，随意丢弃。[p]
她难道没有羞耻心吗……？[p]
我努力不去看，直到浴室的门关上，才松了一口气。[p]
[playse buf="3"  storage="shower.mp3" volume="30" loop=true]

[saku_window]
#朔
…………[p]

#
[default_window]

话说回来……[p]
在自己的房间里听到别人的生活声，感觉非常不习惯。[p]
不，与其说不习惯……倒不如说。[p]

[saku_window]
#朔
总觉得……比想象中更让人心跳加速啊……[p]

#
[fadeoutbgm]
[default_window]

这么想着的同时，因为独处……[p]
才意识到把今天第一次见面的女孩带回房间，简直是做了件不得了的事……！[p]
这种感觉越来越强烈。[p]

[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

[saku_window]
#朔
（越是想冷静下来……越是想不去想……）[p]
（就越是无法不去想象门那边正在淋浴的望的裸体……！）[p]

#
[default_window]
自从找工作搬到这个家以来，家里有女孩子的情况……竟然是第一次。[p]

[saku_window]
#朔
（……咕噜）[p]

#
[setreplay name="CG21" storage="scene3_replay2.ks" label="*CG21_replay"]
[default_window]

一边倾听着淋浴的声音……[p]
一边凝视着浴室磨砂玻璃那边隐约可见的肤色。[p]
本来就怀有「想做爱」这种下流的欲望……[p]
不知为何，目光无法移开。[p]
不，比起这个，得给望准备换洗的衣服才行……[p]

[saku_window]
#朔
我帮你把衣服洗了[p]

#
[default_window]
隔着门说了，但望没有回应。[p]
是没听见吗……？[p]
那么……要大声说吗，还是说……[p]

[saku_window]
#朔
……如果打开门说的话……不知道望会有什么反应呢[p]

#
[default_window]

如果打开这扇门的话……[p]
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

『她会说「你在看什么啊。朔真色。变态。等我洗完澡就回去了」之类的吗。』[p]
会这样说吗。[p]
不……[p]

[bg storage="CG21/CG21_03.jpg" time="800"]
[cg storage="CG21/CG21_03.jpg"]
;;;②赤面
『啊…………诶？朔、朔……？』[p]

会不会像这样羞涩地说呢。[p]
或者说……[p]

[bg storage="CG21/CG21_04.jpg" time="800"]
[cg storage="CG21/CG21_04.jpg"]
;;;③恥じらい＋怒り
[quake count=3 time=200 hmax=10 vmax=10]
[wait time=100]

『呀啊啊啊啊！朔、朔！？请把门关上啊——！』[p]
会不会这样说呢。[p]

[bg storage="kitchen_hiru.jpg" time="800"]

想象着望的裸体和反应，不由自主地兴奋起来。[p]
虽然我不说兴奋的是什么！对吧！[p]

[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="CG21/CG21_01_2.jpg" time="0"]
[cg storage="CG21/CG21_01_2.jpg"]
[wait time=" 500"]
[mask_off time="1000" wait="true"]

而且，最重要的是————。[p]
望她……[p]

[bg storage="CG21/CG21_05.jpg" time="800"]

望她……！[p]
虽然不说是什么…………[p]
有。[p]
是有的……！[p]

[bg storage="CG21/CG21_06.jpg" time="800"]

为什么，不是什么都没有……[p]
而是有什么……[p]

[bg storage="CG21/CG21_07.jpg" time="600"]
[layermode_movie name="intensive_line" video="intensive_line.mp4" opacity="255" mode="screen"]

『那个』是存在的吗……！[p]

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
啊啊啊啊啊啊啊！冷静……我……！！[p]

#
[default_window]
在地板上翻来覆去试图保持冷静。[p]
望不可能会对这种性骚扰混蛋敞开心扉的。[p]
必须表现得体，不能让望感到紧张。[p]
虽然压抑着躁动的心情，但总之…………[p]
趁望在洗澡的时候，得把我的衣服和她的一起洗了……[p]

[saku_window]
#朔
……呜哇，好腥[p]

[default_window]
#
……洗衣粉还是多放点比较好吧。[p]
买了滚筒洗衣机真是太好了。[p]
连烘干都一起搞定的好东西啊。[p]

[saku_window]
#朔
我也把望的衣服一起洗了哦！[p]

[default_window]
#
一边大声说着让门那边能听到，一边按下了洗衣机的按钮。[p]

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
