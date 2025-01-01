
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
灼热的太阳仿佛要将头顶烧焦一般。[p]
晴空万里。湛蓝的天空。耀眼的太阳。[p]

[bg storage="unoshima02_zoom.jpg" time="1500"]

还有……人群和风景。[p]

[wait time=300]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="unoshima02_zoom_2.jpg" time="200"]
[bg storage="unoshima02_zoom.jpg" time="300"]

[saku_window]
#朔
──好痛！[p]

[default_window]
#
像是做了一个漫长的梦般，感到倦怠和头痛。[p]
梦……对了。我是……[p]

[saku_window]
#朔
从卯之岛回来，那天晚上……和望……，然后……望她[p]

#
[default_window]
[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_yokogao_5_kako.jpg" time="0"]
[mask_off time="300" wait="true"]
望她────[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="CG8/CG8_haikei_kako.jpg" time="0"]
[mask_off time="300" wait="true"]

我亲眼看到她越过阳台的栏杆坠落下去。[p]

[bg storage="kuro.jpg" time="800"]

而且，骨头碎裂的声音——生命终结的声音，我也确确实实用耳朵听到了。[p]

[bg storage="shiro.jpg" time="300"]
[bg storage="unoshima02_zoom.jpg" time="800"]

……我是这么想的。[p]

[saku_window]
#朔
……………………[p]
……真是个…………过于真实的梦啊……[p]

[default_window]
#
我慌忙查看了手机锁屏画面。[p]
上面显示的是2023年9月21日下午2点半。[p]
刚才明明应该是同一天的晚上……[p]

[saku_window]
#朔
果然……只是个梦吗？[p]

#
[default_window]
[bg storage="aozora3.jpg" time="800"]
这就是所谓的白日梦吧。[p]
无论是海边玩耍，还是共度一夜，都像是真的发生过一样……[p]
和望的点滴交流，我都能清晰地回想起来。[p]
但是，我现在身处这里……看来那只是梦或者幻觉吧。[p]

[bg storage="unoshima02_zoom.jpg" time="1500"]

话说，我在做梦的时候，到底在现实中干了什么？[p]
现在……是在一家饰品店前面。[p]
我慌忙地摸向脖子，发现那只银色的海豚挂坠还在。[p]
我们买了一对金银配套的饰品。[p]
眼前的情景和我的记忆完全吻合。[p]

[saku_window]
#朔
……难道并不是全都是梦？[p]

[default_window]
#
虽然这状况就像是回到了过去一样。[p]
但这一切，终究只是个梦而已。[p]
所以说，望自杀这种事，是不可能的。[p]

[saku_window]
#朔
……望？[p]

#
[default_window]
[fadeoutbgm]
[bg storage="unoshima02.jpg" time="1500"]

这样想着，我环顾四周寻找望的身影。[p]
但是……没有找到。[p]

[stopbgm]
[saku_window]
#朔
望！[p]

[default_window]
#
我戴着饰品，这说明望确实应该在这里才对。[p]
我们分开的时间，按我的记忆，应该只有上厕所的时候……[p]
不安感一点一点地涌了上来。[p]
难道说，其实望从一开始就不存在，是我濒临崩溃时幻想出来的……[p]

[bg storage="unoshima02_zoom.jpg" time="1500"]

[chara_show  name="望1_ネックレス有" face="egao" top="1090" width="1600" height="2259" time=0]
[anim name="望1_ネックレス有" top="20" time=300]
[wait  time="400"]
[anim name="望1_ネックレス有" top="50" time=200]

;;; 突然出てきて朔を驚かす望

[nozomi_window]
#望
啪！[p]

[saku_window]
#朔
哇啊啊啊啊啊啊！！！！[p]
不、不是幻想！[p]

[default_window]
#
[playbgm storage="horizonblue.mp3" volume="40"]
[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=false]
[nozomi_window]
#望
你也太夸张了吧！？还有，什么幻想啊？[p]

[saku_window]
#朔
…………不，不是什么……[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500 wait=false]

脑子完全跟不上了……。[p]
这一切，都是因为那个奇怪的梦。[p]
因为梦太真实了，让我误以为望真的会自杀……完全陷入了这样的错觉。[r]
[p]
而且这根本不可能啊。杀害父母……什么的。[p]
正当我这么想着的时候，[p]

[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=false]
[nozomi_window]
#望
话说回来！为什么……你会知道？[p]

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
我的名字啊……刚才你叫了吧！[p]

[saku_window]
#朔
啊……[p]

[default_window]
#
对了。望……自称是渚。[p]
我一直以为那只是梦里的事情……[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="gimon" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
真奇怪呢，我明明自称是渚的啊，是不是在哪儿不小心说漏了？[r]
[p]

[default_window]
#
_　[r]
_　[cm] 

望开着这样的玩笑，和卯之岛约会时完全没什么两样。[p]

[chara_mod  name="望1_ネックレス有" face="odoroki" cross=false time=500 wait=false]
[nozomi_window]
#望
而且你好像看起来不太舒服……没事吧？[p]

[saku_window]
#朔
有点头疼……可能是白日梦？刚才好像看到了什么幻觉。[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="utsumuki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
唔嗯。白日梦啊……[p]
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
……从梦的内容来看，不太推荐。[p]

[default_window]
#
望看起来完全和平时一样。[p]
看来，只有我一个人做了那个梦。[p]

[mask time=" 300" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="kuro.jpg" time="0"]
[mask_off time="300" wait="true"]

不过……我下意识地叫了「望」，但梦里听到的名字竟然和现实一致。[p]
梦的内容和现实相连……这种事真的可能吗？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="unoshima02_zoom.jpg" time="0"]
[chara_show  name="望1_ネックレス有" face="tuujou" top="50" width="1600" height="2259" time=0]
[mask_off time="300" wait="true"]

虽然还是有些违和感，不过暂且先……[p]

[saku_window]
#朔
这里人来人往的，先换个地方吧。[p]

[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500 wait=false]
[nozomi_window]
#望
刚才发呆站着的是你吧，朔。[p]

[saku_window]
#朔
呃……是我的错。[p]

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
刚才说的那个「白日梦」，到底是什么内容啊？[p]

[saku_window]
#朔
梦里也在和你约会呢。还穿着衣服下海，湿漉漉地就直接上了电车之类的。[p]

#
[default_window]
[chara_mod  name="望1_ネックレス有" face="gyagu2" cross=false time=500 wait=false]

[nozomi_window]
#望
湿了的话内衣会透出来的啊！哈，不会是你故意算计好的吧……！？朔你个色鬼！变态！没人性！[r]
[p]

[saku_window]
#朔
别说得那么让人误会啊！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="odoroki" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
而且，湿着身子就上了电车……难道说，我被带到朔的家里去了！？[r]
[p]

[saku_window]
#朔
在梦里可是你主动说要去的！[p]

[chara_mod  name="望2_ネックレス有" face="pien" cross=false time=500 wait=false]
[nozomi_window]
#望
虽然我说过想约会……但朔原来是这么看我的啊……[p]

[saku_window]
#朔
啊，不行，这怎么说我都要被当成变态了！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="wink" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
嘻嘻。毕竟事实就是这样吧？[p]

[saku_window]
#朔
别说得像真的一样，这会让人误会的！[p]

#
[default_window]
[chara_hide_all time=100 wait=true]
[chara_show  name="望2_ネックレス有" face="metoji" top="20" width="1600" height="2259" time=250]
[anim name="望2_ネックレス有" top="50" time=250]

[nozomi_window]
#望
可是你刚才一直用那种期待看到透视内衣的眼神看着我啊。[p]

[default_window]
#
才没有呢！[p]

[chara_hide_all time=100 wait=true]
[chara_show  name="望1_ネックレス有" face="tuujou" top="20" width="1600" height="2259" time=250]
[anim name="望1_ネックレス有" top="50" time=250]

[nozomi_window]
#望
对了，听说卯之岛里面有个很大的洞窟，要不要去看看？[p]

[default_window]
#
洞窟？[p]
那是梦里没有去过的地方。[p]
和梦境不同的发展。[p]
希望不要发生什么不好的事情……[p]
会这么想，是因为梦里的内容实在是太…………了。[p]

[saku_window]
#朔
可以啊。反正还有时间，走吧。[p]

[chara_mod  name="望1_ネックレス有" face="gyagu1" cross=false time=500 wait=false]
[nozomi_window]
#望
你、你把我带到这么黑的地方到底想干什么啊！？[p]

[saku_window]
#朔
我说了吧，是你提议来的啊！[p]

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

在洞窟入口支付了通行费后，我们领到了一盏散发着微光的灯笼。[p]
一边用灯笼照亮通道，一边走在最前面。[p]
周围的岩壁湿漉漉的，反射着点缀其间的聚光灯光芒。[p]

通道紧挨着陡峭的崖壁。[p]
虽然有防止坠落的护栏，但一想到如果从这里掉下去……就不寒而栗。[p]
海浪拍击崖壁的声音在周围回荡着。[p]

[saku_window]
#朔
……真是让人惊讶，岛的深处竟然还有这样的洞窟。[p]
#
[default_window]
[chara_show  name="望1_ネックレス有" face="egao" top="150" width="1100" height="1553"]

[nozomi_window]
#望
对吧，很厉害吧～[p]

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
途中地面的铺装渐渐减少，裸露的岩壁变得显眼起来。[p]
一边走一边思考着。[p]

[playbgm storage="04_zankyou.mp3" volume="30"]
[fadeoutse buf="3"]
[bg storage="CG8/CG8_yokogao_5_kako.jpg" time="800"]

首先有一个大前提，那就是望是在我的梦里自杀的。[p]
这并不是现实中的事情。[p]

[bg storage="kako_05.jpg" time="800"]

但是，为了约会而接触我这一点是事实。[p]

[bg storage="CG19/CG19_yoru_shirt_1_kako.jpg" time="800" method=vanishIn]

还有她接触我的理由……[p]
在梦中她说是为了「在最后一天做完所有想做的事」。[p]
这是否是真实的还不确定……梦中的内容和现实相连这种事通常不可能发生。[r]
[p]

[bg storage="effect_01.jpg" time="800"]

也就是说……有能确认是真实的事实，也有不能确认的事实。[p]
望是为了约会而接触我。[p]
已经购买了和望一样的饰品。[p]
这些都是真实的。[p]

[bg storage="monolog_01.jpg" time="800"]

另一方面的假设是……[p]
望是为了「在最后一天做完所有想做的事」而接触我。[p]
望杀了父母，最终目的是自杀。[p]
……大概就是这样吧。[p]

[playse buf="3"  storage="inside_cave.mp3" volume="30" loop=true]
[bg storage="doukutsu_03.jpg" time="800"]

[saku_window]
#朔
……不不不[p]

[default_window]
#
一开始就把梦里的内容当成现实，我到底在干什么？[p]
因为梦里的质感太过真实，所以才误以为是真的……。[r]
[p]

[saku_window]
#朔
望，这个洞窟你来过吗？[p]

[default_window]
#
我向望提问，自己的声音在洞窟深处回荡。[p]
从回声的状况来看，可以知道洞窟还在继续向深处延伸。[p]

[fadeoutbgm]
[wait  time="500"]

……话说回来。[p]
望没有回应。[p]
而且…………连脚步声也没有了。[p]

[stopbgm]
[saku_window]
#朔
望？[p]

[default_window]
#
回头一看…………[p]

[saku_window]
#朔
……啊？[p]

[default_window]
#
不知道为什么，望的身影已经不在那里了。[p]
不知不觉间，似乎只剩我一个人在洞窟里行走……。[p]

[saku_window]
#朔
真是的，她到底跑哪去了……[p]

[default_window]
#
明明是她自己说想来的吧。[p]

[bg storage="monolog_01.jpg" time="800"]

无奈之下，我正准备沿着来路返回时……突然想到。[p]
这个洞窟其实并不复杂，几乎全是直线通道。[p]
望会看丢我这种事，正常来说是不可能发生的。[p]

[fadeoutse buf="3"]
[bg storage="doukutsu_03.jpg" time="800"]

就在我这么想的瞬间——[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="doukutsu_04.jpg" time="300"]
[wait  time="300"]
[bg storage="doukutsu_03.jpg" time="800"]
[playbgm  storage="tinnitus3.mp3" volume="20"]

[saku_window]
#朔
呜……！！？[p]

[default_window]
#
视线突然扭曲，伴随着一阵震耳欲聋的头痛袭来。[p]
这感觉是……[p]
和那时——望跳下去的瞬间相似的感受。[p]
像被抛入一个无重力的世界般的不稳定感，还有几乎笼罩意识的剧烈头痛。[p]

[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bg storage="doukutsu_04.jpg" time="800"]

好难受。[p]
想吐。[p]
不由得跪倒在地。[p]
不过，就连自己是否跪着都变得模糊不清了。[p]

[bg storage="kuro.jpg" time="500"]

忍不住闭上了眼睛。[p]

[mask time=" 400" graphic="kuro.jpg"]
[playse buf="3"  storage="heartbeat.mp3" volume="40"]
[bgmovie storage=doukutsu.mp4]
[mask_off time="400" wait="true"]

视线中带着迷幻色彩的画面，像被烙印般留在眼底。[p]
明明已经闭上了眼睛，视野却还在旋转。[p]
转啊，转啊，转啊，转啊……不停地。[p]

像漩涡一般。[p]
像台风一般。[p]
像时钟指针一般────。[p]

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

