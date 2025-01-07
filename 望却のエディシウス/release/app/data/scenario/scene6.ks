
;;; ループ①
;;; 望の自殺をトリガーに、お揃いのアクセサリーを買った時点にタイムリープします。
;;; しかし朔はループしたことに気づいておらず……。
;;; 望も朔と同様ループしていますが、望はそれを隠します。


;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_06_{number}.mp3" number="1"]
[vostart]

[wait time=4000]

[mask time=" 300" graphic="shiro.jpg"]
[playbgm storage="summer_city5.mp3" volume="20"]

[bg storage="aozora3.jpg" time="0"]
[mask_off time="4000" wait="true" method="vanishIn"]
;;; アクセサリー店前

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[saku_window]
#朔
──────────[p]

[default_window]
#
烈日当头，仿佛要把头顶烤焦一般的灼热。[p]
晴空万里。蓝天白云。耀眼的阳光。[p]

[bg storage="unoshima02_zoom.jpg" time="1500"]

还有……喧嚣的人群和周围的景象。[p]

[wait time=300]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="unoshima02_zoom_2.jpg" time="200"]
[bg storage="unoshima02_zoom.jpg" time="300"]

[saku_window]
#朔
──痛[p]

[default_window]
#
仿佛做了一场漫长的梦，全身上下都充满了倦怠感和头痛。[p]
梦……对了。我……[p]

[saku_window]
#朔
从卯之岛回来，那天晚上……和望……然后……望她[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_yokogao_5_kako.jpg" time="0"]
[mask_off time="300" wait="true"]
望她────[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei_kako.jpg" time="0"]
[mask_off time="300" wait="true"]

越过阳台栏杆坠落下去的场景……我确实亲眼目睹了。[p]

[bg storage="kuro.jpg" time="800"]

不仅如此，骨头碎裂的声音──生命终结的声音，我也确实亲耳听到了。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="unoshima02_zoom.jpg" time="800"]

……至少，我是这么以为的。[p]

[saku_window]
#朔
……………………[p]
……真是个……异常真实的梦啊……[p]

[default_window]
#
我慌忙查看手机的锁屏界面。[p]
上面显示的是2023年9月21日下午14:30。[p]
明明刚才还是同一天的晚上才对……[p]

[saku_window]
#朔
果然……只是一场梦吗[p]

#
[default_window]
[bg storage="aozora3.jpg" time="800"]
这就是所谓的白日梦吧。[p]
在海边玩耍的事，度过一夜的事，全都像是真实发生过的一样……[p]
我清晰地回想起与望交流的场景。[p]
但是，既然我在这里……那应该是梦或者幻觉吧。[p]

[bg storage="unoshima02_zoom.jpg" time="1500"]

话说回来，我做梦的时候到底在干什么？[p]
现在……是在饰品店门前。[p]
我慌忙摸了摸脖子，银色的海豚项链还戴在上面。[p]
我买了金银一对的情侣饰品。[p]
现在的情况和我的记忆是一致的。[p]

[saku_window]
#朔
……难道不是全部都是梦？[p]

[default_window]
#
虽然感觉就像是穿越回过去一样。[p]
全部，只不过是一场梦而已。[p]
所以望自杀这种事情，是不可能发生的。[p]

[saku_window]
#朔
……望？[p]

#
[default_window]
[fadeoutbgm]
[bg storage="unoshima02.jpg" time="1500"]

我这样想着，环顾四周寻找望的身影。[p]
但是……没有。[p]

[stopbgm]
[saku_window]
#朔
望！[p]

[default_window]
#
既然我戴着饰品，那望肯定应该在才对。[p]
我们分开的时间，据我所记得应该只有上厕所的那会儿……[p]
不安感渐渐袭来。[p]
难道说望从一开始就不存在，只是我这个已经到极限的人产生的妄想吗……[p]

[bg storage="unoshima02_zoom.jpg" time="1500"]

[chara_show  name="望1_ネックレス有" face="egao" top="1090" width="1600" height="2259" time=0]
[anim name="望1_ネックレス有" top="20" time=300]
[wait  time="400"]
[anim name="望1_ネックレス有" top="50" time=200]

;;; 突然出てきて朔を驚かす望

[nozomi_window]
#望
哇！[p]

[saku_window]
#朔
哇啊啊啊啊啊！！！！[p]
原、原来不是妄想啊！[p]

[default_window]
#
[playbgm storage="horizonblue.mp3" volume="40"]
[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=false]
[nozomi_window]
#望
你也太容易被吓到了吧！？而且妄想是什么意思啊？[p]

[saku_window]
#朔
…………不，没什么……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500 wait=false]

我的脑子还没反应过来……[p]
这一切都是因为那个奇怪的梦。[p]
因为梦境太过真实，我才会错觉地以为望真的会自杀……[r]
[p]
而且那根本不可能吧。对父母……什么的。[p]
正当我这么想着的时候，[p]

[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=false]
[nozomi_window]
#望
话说回来！你为什么……会知道呢？[p]

[saku_window]
#朔
知道什么……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
我的名字……刚才你叫了出来吧！[p]

[saku_window]
#朔
啊……[p]

[default_window]
#
对了。望……之前自称是渚。[p]
我还以为那只是在梦里……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
奇怪啊——我明明应该自称渚的——。难道我在哪里说漏嘴了？[r]
[p]

[default_window]
#
_　[r]
_　[cm] 

望这样半开玩笑地说着，和在卯之岛约会时完全一样。[p]

[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=false]
[nozomi_window]
#望
而且你看起来不太舒服……没事吧？[p]

[saku_window]
#朔
总觉得头有点疼……可能是做了个白日梦？[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
嗯——。白日梦啊……[p]
#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="egao" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
我也想看看！[p]

[saku_window]
#朔
……内容方面我不太推荐就是了[p]

[default_window]
#
望看起来一如往常。[p]
看来，做那个梦的只有我一个人。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

不过……我不经意间叫出了「望」这个名字，梦中听到的名字居然和现实一致。[p]
梦的内容与现实相连……这种事情真的可能发生吗？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="unoshima02_zoom.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=0]
[mask_off time="300" wait="true"]

虽然还是感觉有些违和，但暂且……[p]

[saku_window]
#朔
在这里人来人往的，我们先换个地方吧[p]

[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500 wait=false]
[nozomi_window]
#望
明明是朔你在发呆站着不动哦[p]

[saku_window]
#朔
唔……抱歉[p]

[default_window]
#
……继续约会吧。[p]

[mask time=" 800" graphic="kuro.jpg"]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="unoshima09.jpg" time="0"]
[wait time=1000]
[mask_off time="800" wait="true"]

[chara_show  name="望1_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=500]
[playbgm storage="02itsumonoasa.mp3" volume="30"]

[nozomi_window]
#望
刚才你说的「白日梦」，到底是什么内容啊？[p]

[saku_window]
#朔
梦里我也在和望约会哦。穿着衣服就进海里，然后湿漉漉地坐电车之类的[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu2" cross=false time=500 wait=false]

[nozomi_window]
#望
湿了的话内衣不就透了吗！哈。难道这也是你算计好的……！？朔你这个色狼！变态！禽兽！[r]
[p]

[saku_window]
#朔
别说些让人误会的话啊[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
而且，湿着身子就坐电车……难道说，我被朔带回家了！？[r]
[p]

[saku_window]
#朔
在梦里可是望你主动说要去的哦！[p]

[chara_mod  name="望2_ネックレス有" face="pien" cross=false time=500 wait=false]
[nozomi_window]
#望
虽然我是说过想约会……原来朔你是这样看我的啊……[p]

[saku_window]
#朔
啊不行，这样下去不管怎么说我都会被当成变态的！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
呵呵，因为就是这样吧？[p]

[saku_window]
#朔
别说得好像是事实一样啊，这太容易引起误会了[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
因为从刚才开始你就一直用期待看透视内衣的眼神看着我嘛[p]

[default_window]
#
我才没有。[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
说起来，听说卯之岛深处有个很大的洞窟，我们去看看吧？[p]

[default_window]
#
洞窟？[p]
这是梦里没去过的地方。[p]
和梦境不同的发展。[p]
希望不会发生什么不好的事……[p]
会这么想，是因为梦的内容实在是太……[p]

[saku_window]
#朔
好啊。反正还有时间，我们去吧[p]

[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500 wait=false]
[nozomi_window]
#望
你、你把我带到这么黑的地方，到底想干什么啊！？[p]

[saku_window]
#朔
我都说了，是你自己提议来的吧！[p]

#
[default_window]

[chara_mod  name="望1_ネックレス有" face="egao" cross=false time=500 wait=true]

;;; 卯ノ島奥の洞窟入口
[mask time=" 1000" graphic="kuro.jpg"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[playse buf="1" storage="walking.mp3" volume="30" loop=true]
[fadeoutbgm]
[chara_hide_all time=0 wait=true]
[bg storage="michi03.jpg" time="0"]
[playse buf="3"  storage="summer_beach2.mp3" volume="30" loop=true]

[mask_off time="1000" wait="true"]
[wait  time="800"]
[fadeoutse buf="1"]
[bg storage="doukutsu_01.jpg" time="800"]
[stopbgm]
[stopse buf="1"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

在洞窟入口支付了通行费后，我们被递给了一盏散发着淡淡光芒的行灯。[p]
我走在前面，用行灯照亮通道。[p]
周围的岩壁湿润潮湿，反射着点缀其间的聚光灯光。[p]

通道旁边就是悬崖。[p]
虽然设置了防坠落的栏杆，但一想到如果从这里掉下去……就不寒而栗。[p]
浪花拍打悬崖的声音在周围回响。[p]

[saku_window]
#朔
……真让人吃惊，没想到岛的深处竟然有这样的洞窟[p]
#
[default_window]
[chara_show  name="望1_ネックレス有" face="egao" top="150" width="1100" height="1553"]

[nozomi_window]
#望
是吧。很厉害吧～[p]

#
[default_window]
[fadeoutse buf="3"]
[mask time=" 800" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="doukutsu_03.jpg" time="0"]
[mask_off time="800" wait="true"]
[stopse buf="3"]
[playse buf="3"  storage="inside_cave.mp3" volume="30" loop=true]

我们继续向洞窟深处走去。[p]
走到一半，人工装饰变少了，裸露的岩壁开始变得显眼。[p]
边走边思考。[p]

[playbgm storage="04_zankyou.mp3" volume="30"]
[fadeoutse buf="3"]
[bg storage="CG8/CG8_yokogao_5_kako.jpg" time="800"]

首先，最重要的前提是，望自杀是在我的梦中发生的。[p]
并不是现实中发生的事。[p]

[bg storage="kako_05.jpg" time="800"]

但是，为了约会而接触我这件事是事实。[p]

[bg storage="CG19/CG19_yoru_shirt_1_kako.jpg" time="800" method=vanishIn]

而她接触我的理由……[p]
在梦中她说是『为了在最后一天做完所有想做的事』。[p]
这一点还不确定是否属实……梦中的内容与现实产生联系这种事通常是不可能发生的。[r]
[p]

[bg storage="effect_01.jpg" time="800"]

也就是说……有些事实可以确认为真实，有些则不然。[p]
望为了约会而接触我这件事。[p]
已经购买了和望一样的饰品这件事。[p]
这些都是真实的。[p]

[bg storage="monolog_01.jpg" time="800"]

另一方面，假设是……[p]
望『为了在最后一天做完所有想做的事』而接触我。[p]
望杀害了父母，最终目的是自杀。[p]
……大概就是这样吧。[p]

[playse buf="3"  storage="inside_cave.mp3" volume="30" loop=true]
[bg storage="doukutsu_03.jpg" time="800"]

[saku_window]
#朔
……不不不[p]

[default_window]
#
话说回来，把梦中的内容当作现实，我到底在干什么啊？[p]
因为梦境带来的感觉太过真实，不知不觉就把它当成真的了……[r]
[p]

[saku_window]
#朔
望，你以前来过这个洞窟吗？[p]

[default_window]
#
我向望问道，自己的声音在洞窟深处回荡。[p]
从回声的程度来看，可以判断洞窟还在向深处延伸。[p]

[fadeoutbgm]
[wait  time="500"]

……话说回来。[p]
望没有回答。[p]
而且…………也没有脚步声。[p]

[stopbgm]
[saku_window]
#朔
望？[p]

[default_window]
#
我转身一看…………[p]

[saku_window]
#朔
……啊？[p]

[default_window]
#
不知为何望的身影不见了。[p]
不知不觉中，似乎只剩我一个人在洞窟里行走……[p]

[saku_window]
#朔
真是的，她去哪儿了……[p]

[default_window]
#
明明是望想来这里的。[p]

[bg storage="monolog_01.jpg" time="800"]

我一边想着没办法，一边准备原路返回……突然想到。[p]
洞窟内部结构并不复杂。几乎就是一条直路。[p]
正常来说，望不可能会把我弄丢。[p]

[fadeoutse buf="3"]
[bg storage="doukutsu_03.jpg" time="800"]

就在我这么想的瞬间。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="doukutsu_04.jpg" time="300"]
[wait  time="300"]
[bg storage="doukutsu_03.jpg" time="800"]
[playbgm  storage="tinnitus3.mp3" volume="20"]

[saku_window]
#朔
呃……！！？[p]

[default_window]
#
视野突然扭曲，一阵剧烈的头痛袭来，仿佛有什么在脑中轰鸣。[p]
这是……[p]
和那时——望投身而下之后的感觉很相似。[p]
仿佛被抛入无重力世界般的不稳定感，以及几乎要覆盖意识的头痛。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="doukutsu_04.jpg" time="800"]

感觉很不舒服。[p]
好像要吐了。[p]
我不由自主地跪了下来。[p]
然而就连是否真的跪下了都变得模糊不清。[p]

[bg storage="kuro.jpg" time="500"]

我忍不住闭上了眼睛。[p]

[mask time=" 400" graphic="kuro.jpg"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bgmovie storage=doukutsu.mp4]
[mask_off time="400" wait="true"]

视野中伴随着迷幻的色彩，烙印在眼睑内侧。[p]
本应闭上的眼睛所看到的景象开始旋转。[p]
咕噜、咕噜、咕噜、咕噜……地转个不停。[p]

像漩涡一样。[p]
像台风一样。[p]
像时钟的指针一样────。[p]

;;; ループエフェクト
[fadeoutbgm]
[mask time=" 2000" graphic="kuro.jpg"]
[stop_bgmovie]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[wait time=1500]

[skipstop]
[autostop]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="200" wait="true"]

[bgmovie storage=loop2.mp4]
[wait time=1000]
[wait time=12000]
;ここのwaitは動画の秒数分

[stop_bgmovie]
[stopbgm]

[wait time=4000]

@jump storage="scene7.ks"

