;;; ■作品タイトル：
;;;    『望却（ぼうきゃく）のエディシウス』

;;; ■以降はシナリオ本文です。

;;; ──────────────────────────


;ボイス設定

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
#ALyCE
[default_window]
本补丁由ALyCE / jyxjyx1234制作，使用gpt-4o进行翻译，免费发布，首发2dfan、jyxjyx1234的博客（jyxjyx1234.github.io），禁止任何形式的收费转载。本人制作以及参与制作的所有补丁禁止转载至“鲲Galgame”补丁站。[p]
请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。[p]
如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。[p]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[voconfig sebuf="2" name="上司" vostorage="mob_otoko/joushi_01_{number}.mp3" number="1"]
[vostart]

[wait  time="2000"]
[bgmovie storage=light_leak_31_loop.mp4]
[wait  time="300"]
[playse buf="3"  storage="joushi_echo.mp3" volume="50"]
[wait  time="15000"]
[stop_bgmovie]
[fadeoutse buf="3"]

[wait  time="1500"]
[stopbgm]

;;; 朔の自宅
;;; 水曜 AM6:00

[playbgm  storage="VSQSE_0586_city_bird.mp3" volume="50"]
[wait  time="800"]
[stopse buf="3"]
[playse buf="3"  storage="alarm.mp3" volume="20"]
[bg storage="jishitsu_hiru_03.jpg" time="2000"]
[wait  time="2000"]
[bg storage="jishitsu_hiru_04.jpg" time="1000"]
[wait  time="1000"]
[playse buf="3"  storage="alarm_button.mp3" volume="100"]
[wait  time="1500"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

;システムボタンの表示
[add_theme_button]

[saku_window]
#朔
…………[p]

#
[default_window]
被闹钟声吵醒了。[p]

[saku_window]
#朔
嗯嗯ー…………[p]

#
[default_window]
梦里，好像听到了上司的声音……。[p]
关掉闹钟看了眼时间，早上六点。[p]
……好久没睡够五个小时了。[p]
今天是……2023年9月20日。[p]
一周的中间，星期三。[p]
[playse buf="3"  storage="huton.mp3" volume="30"]
[wait time=" 300"]
为了开始新的一天，我拍了拍脸，从床上爬起来。[p]

[bg storage="jishitsu_hiru_01.jpg" time="800"]

一如既往的早晨。[p]
好！[p]
今天也要努力工作！[p]

;;; 出社 AM7:25
[mask time=" 700" graphic="shiro.jpg"]
[fadeoutbgm]
[bg time=" 0" storage="office_asa.jpg"]
[wait time=" 1200"]
[mask_off time="700" wait="true"]
[playbgm  storage="02_tsuikai.mp3" volume="20"]

到公司的时候，办公室的灯几乎都没开。[p]

[bg storage="office_asa2.jpg" time="800"]

我确认了一下我们团队的工位。[p]
──好，今天又是我第一个到！[p]
毕竟比上班时间早了一个小时到公司，人少也是理所当然的。[p]

我把行李放在标有『小清水朔』铭牌的桌子前。[p]
趁上司来之前，先把今天会议需要的资料做好吧。[p]
我所在的部门主要负责系统开发。[p]
在与其他部门或系统用户的会议中，需要准备一些用来统一系统认知的资料。[p]
这些资料的制作工作，通常都是由上司分配给我的。[p]
虽然总是做得不太好……但上司并没有因此放弃我，而是一次次地交给我任务。[p]
总有一天，我要回应这样的上司对我的期待！[p]

[saku_window]
#朔
…………[p]
……好！干起来！！[p]

#
[default_window]
[fadeoutbgm]
[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="office_hiru.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="1000" wait="true"]
[wait time=" 300"]
[stopbgm]

然后，一个小时过去了，到了上班时间……[p]
上司让我把资料拿给他看。[p]
我一边紧张，一边将准备好的资料递到他面前让他检查。[p]
即使在如今数字化发展的时代，上司还是要求以纸质形式提交。[p]
他说直接用笔修改会更快。不拘泥于时代而注重效率，果然很厉害啊。[p]

[playse buf="3"  storage="paper.mp3" volume="60"]
[wait time=" 300"]

然后，上司随手把我递过去的纸放在一旁，转过身对我说。[p]

[playbgm storage="DAY201.mp3" volume="0"]
[chara_show  name="上司" top="50" time=500]

[mob_window]
#上司
你做的这资料一点说明作用都没有，是在开玩笑吗？[p]

[saku_window]
#朔
谢谢您的指教……！！[p]

#
[default_window]
上司总是会批评不成器的我。[p]
为了像我这样能力不足的人，他一次次地给我指导机会，我真的非常感激。[p]

[mob_window]
#上司
小清水，你是哪个大学毕业的？或者说你根本没上过大学？[p]

[saku_window]
#朔
啊，是，是的！大学……我上过！[p]

#
[default_window]
每次都想着这次一定要成功！……但即使每天晚上熬夜做资料，看来我总是会漏掉一些关键点……。[r]
[p]
对于每次都批评我的上司，我只有感激之情。[p]

[mob_window]
#上司
你根本不知道这份资料是为了什么吧。不明白任何东西就开始工作了。[p]

#上司
随便应付工作，随便做个成果物敷衍过去。你到底为什么在这里？[p]

[saku_window]
#朔
对，对不起……！[p]

[mob_window]
#上司
如果面试官是我的话，你肯定早就被刷下去了啊。[p]

#上司
总之这个我来改吧。……啊，对了，不需要那种「让我来做吧！」的使命感，只会让制作时间更长而已。[r]
[p]

[saku_window]
#朔
明白了。我会努力下次独自完成的……！[p]

[mob_window]
#上司
用你那笨脑袋好好想想，让我花时间在你身上意味着什么。[p]

[saku_window]
#朔
是……啊，非常感谢！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

我低头鞠躬，几乎贴到地板上，然后离开了上司的座位。[p]
我和上司的对话周围人都听得一清二楚，我旁边的同期同事会怎么说呢……。[p]
前阵子他还说了句「如果觉得难受就该说出来」之类的话。[p]
他那副自以为能揣测别人心情的样子，让我记得当时有点不爽。[p]
希望这次别再听到什么奇怪的话了。[p]
嗯……对了。[p]
同期同事上周已经辞职了啊。[p]

[mask time=" 1500" graphic="kuro.jpg"]
[stopbgm]
[wait  time="1000"]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="1500" wait="true"]

第二天。[p]

[bg storage="office_hiru.jpg" time="1000"]

#
今天是月底结算日……我正和上司进行绩效面谈。[p]
受到了许多宝贵的指点，希望我的评价能稍微提高一点……[p]
虽然我是这么想的，但这个月有一个目标我没能达成……[p]
而现在，上司正针对那个目标对我进行指导。[p]

[playbgm  storage="02_tsuikai.mp3" volume="20"]
[chara_show  name="上司" top="50" time=500]

[mob_window]
#上司
小清水，上个月你提过的目标设置，还记得吧？「一个月内拿下10个新客户」，这就是你的目标，对吧？[r]
[p]

[saku_window]
#朔
是，是的，您说得对……！[p]

#
[default_window]
上司居然记得我自己立下的目标。[p]
真是个理想中的上司啊。[p]

[mob_window]
#上司
这是什么数字？才2个？是不是打错了？[p]

#上司
不是打错吧。你已经是第三年了吧？啊，不对，你是今年刚进公司的新人来着？[p]

[saku_window]
#朔
第，第3年……没错。[p]

[mob_window]
#上司
公司可是花钱养你的，这点你懂吧？……你这个吃白饭的。[p]

#上司
下次再完不成目标，就给我写辞职信吧。[p]

[saku_window]
#朔
感谢您的鞭策！我一定会努力，不会让那种事发生的……！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

上司总是带着温和的表情对我说话。[p]
「无能」、「废物」、「吃白饭的」之类的话。[p]
不过，换个角度想，这些话也可以看作是成长的机会。[p]
上司一次次地给我提供了成长的契机。[p]
……真的让我无地自容啊。[p]

[bg storage="office_hiru2.jpg" time="800"]

[saku_window]
#朔
…………好！[p]

#
[default_window]
回到座位上，松了口气。[p]
看了一眼钟，指针正指向11点。[p]
……离下班还有大概11个小时吧。[p]
……好吧。[p]
再坚持一下吧！[p]

#
[default_window]
[fadeoutbgm]
[mask time=" 1000" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg time=" 0" storage="kuro.jpg"]
[wait time=" 1000"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="1000" wait="true"]
[stopbgm]

;;; 夜道

[bg storage="yomichi01.jpg" time="800"]
[wait time=" 800"]
[bg storage="manshon_erebeta.jpg" time="800"]
[wait time=" 800"]
[playse buf="3"  storage="room_door_open.mp3" volume="20"]
[bg storage="kitchen_yoru.jpg" time="800"]
[wait time=" 800"]

[playse buf="3" storage="Light_Switch.mp3" volume="50"]

;;; 朔の自宅（夜）
[bg storage="kitchen_hiru.jpg" time="800"]
[playse buf="3"  storage="room_door_close.mp3" volume="20"]
[wait time=" 1000"]
[bg storage="jishitsu_yoru_01.jpg" time="1000"]
[wait time=" 1000"]
[bg storage="jishitsu_yoru_04.jpg" time="800"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

[playse buf="3"  storage="bed_in.mp3" volume="40"]
[wait time=" 200"]

[saku_window]
#朔
………………[p]
[wait time=" 400"]
…………[p]
[wait time=" 400"]
……[p]

#
[default_window]
[mask time=" 1000" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg time=" 0" storage="jishitsu_hiru_03.jpg"]
[wait time=" 1000"]
[playbgm  storage="VSQSE_0586_city_bird.mp3" volume="50"]
[mask_off time="1000" wait="true"]

;;; 朔の自宅（朝）
[bg storage="jishitsu_hiru_04.jpg" time="2000"]
[wait  time="1000"]

[saku_window]
#朔
……嗯嗯…………[p]

#
[default_window]
[bg storage="jishitsu_hiru_01.jpg" time="800"]
[playse buf="3"  storage="huton.mp3" volume="30"]
2023年9月21日。[p]
被难受的睡汗弄醒了。[p]
看来……回家后没洗澡就直接睡着了。[p]
甚至连饭都没吃。[p]

[saku_window]
#朔
得去上班了……[p]

#
[default_window]
[wait  time="500"]

[saku_window]
#朔
……啊────[p]

#
[default_window]
出于习惯，我正要走向洗手台时，突然愣住了。[p]

[bg storage="jishitsu_hiru_03.jpg" time="800"]
透过窗帘缝隙射进来的阳光角度，和平时不一样。[p]
看了一眼钟，时间是07:00。[p]
平常出门上班的时间是07:20。[p]

[saku_window]
#朔
糟了！彻底迟到了……！！！[p]

#
[default_window]
虽然正常的上班时间是8:30，其实还有富余。[p]
但对我来说，没能在7:20出门，就跟迟到没两样。[p]

[fadeoutbgm]
[bg storage="manshon_erebeta_hiru.jpg" time="800"]
五分钟内收拾好，然后出了家门。[p]

;;; 電車内 AM07:15
[bg storage="densha_02.jpg" time="800"]
[playbgm  storage="04_zankyou.mp3" volume="30"]

以前也有过没时间洗澡就直接去上班的时候……[p]
可像这样满身是汗实在太难受了，还会在意别人的目光。[p]
会不会被人觉得很臭啊？[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg time=" 0" storage="densha_05.jpg"]
[mask_off time="300" wait="true"]

;;; 駅のホーム
在换乘的车站下车后，等下一趟电车。[p]
这个时间点……等我到公司，上司应该已经到了吧？[p]
比平时晚到公司，会不会被骂啊……[p]
还有……昨天做的资料应该没问题吧。[p]

[saku_window]
#朔
没事……吧…………[p]

#
[default_window]
等电车的时候，想起了昨天做的资料。[p]

[bg storage="densha_06.jpg" time="800"]

……给对方开会用的议程、日程安排方案、需求定义书的更新、设计书的草稿，还有系统要处理的数据种类列表、演示文稿……好像还有别的。[p]
虽然日程表是照猫画虎做出来的……但不知道是不是符合上司心目中的理想时间表……。[p]
心里总有点不安，觉得自己可能又没做好。[p]
为了实现用户的需求，上司说要至少提出三个考虑到系统负载的方案，但我好像才刚开始想第一个方案吧……[p]

[bg storage="densha_09.jpg" time="800"]

日程表也好，对应方案也好，演示文稿也好……如果没做好，又会惹上司生气了吧……[p]
因为我自己不行……总是给上司和公司添麻烦……明明必须要变得更能干才行……[p]

[fadeoutbgm]
[bg storage="densha_08.jpg" time="800"]

我要变得更能干，想看到上司高兴的样子。希望他能夸我一句「干得不错」……。[p]

[playse buf="3"  storage="heartbeats.mp3" volume="40" loop=true]

可是……我却总是被上司骂……比我晚进公司的那位后辈，总是被上司夸奖，还受到感谢……[p]
为什么就只有我总是挨骂呢……[p]

[bg storage="eki.jpg" time="800"]
[stopbgm]

不对啊……不应该说只有我挨骂吧……。[p]
我必须变得更能干才行。[p]
必须变得更能干才行。必须变得更能干才行。必须变得更能干才行。必须变得更能干才行。必须变得更能干才行。一定要……变得更能干才行。[p]
一定要变得更能干。如果做不到，那可不行啊。[p]
必须按照上司说的去做。[p]
按照上司说的……[p]

[bg storage="densha_08.jpg" time="800"]
电车靠近了。[p]
我要乘上那辆电车，去公司………………………………[p]
被上司骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂……[p]

[saku_window]
#朔
……………[p]

#
[default_window]

……………………………………………………………………………………[p]

[fadeoutse buf="3"]

……………………………………………………………………………………[p]

[bg storage="kuro.jpg" time="200"]
[playse buf="3"  storage="butsu.mp3" volume="70"]
[bg storage="densha_03.jpg" time="800"]
────────────────────────────────[p]

[saku_window]
#朔
啊────────[p]

#
[default_window]
我感觉到，内心深处，什么东西，啪的一下断裂了，那种感觉。[p]

[saku_window]
#朔
────[p]

#
[default_window]
死了就一切都解脱了。[p]


;;; 選択肢表示

[autostop]
[skipstop]
;@layopt layer=message0 visible=false
;@layopt layer=message1 visible=false

[default_window]
选项1：跳下去[r]
选项2：不跳下去

[bg storage="densha_03_select.jpg" time="200"]

	[button name=option x=763 y=425 graphic="button/scene1_tobikomu.png" enterimg="button/scene1_tobikomu_hover.png" clickse="button/button_enter.mp3" target="tobikomu" keyfocus="1"]
	[kanim keyframe=FadeIn name=option time=200]

	[button name=game_end x=763 y=545 graphic="button/scene1_tobikomanai.png" enterimg="button/scene1_tobikomanai_hover.png" clickse="button/button_enter.mp3" target="tobikomanai" keyfocus="2"]
	[kanim keyframe=FadeIn name=game_end time=200]

	[wa]
	[s]

*tobikomu
	@layopt layer=message0 visible=true
	@layopt layer=message1 visible=true
	[cm]
	@jump storage="scene2.ks"

*tobikomanai
	@layopt layer=message0 visible=true
	@layopt layer=message1 visible=true
	[cm]
	@jump storage="scene2_bad.ks"
