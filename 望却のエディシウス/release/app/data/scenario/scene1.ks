;;; ■作品タイトル：
;;;    『望却（ぼうきゃく）のエディシウス』

;;; ■以降はシナリオ本文です。

;;; ──────────────────────────


;ボイス設定

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
#ALyCE
[default_window]
本补丁由ALyCE / jyxjyx1234制作，使用claude-3.5-sonnet进行翻译，免费发布，首发2dfan、jyxjyx1234的博客（jyxjyx1234.github.io），禁止任何形式的收费转载。本人制作以及参与制作的所有补丁禁止转载至“鲲Galgame”补丁站。[p]
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
闹钟声把我从睡梦中唤醒。[p]

[saku_window]
#朔
嗯嗯…………[p]

#
[default_window]
感觉在梦里听到了上司的声音……[p]
关掉闹钟看了看时间，早上6点。[p]
……好久没睡够5个小时了。[p]
今天是……2023年9月20日。[p]
一周的中间，星期三。[p]
[playse buf="3"  storage="huton.mp3" volume="30"]
[wait time=" 300"]
为了开始新的一天，我拍了拍脸颊从床上爬了起来。[p]

[bg storage="jishitsu_hiru_01.jpg" time="800"]

和往常一样的早晨。[p]
好。[p]
今天也要努力工作！[p]

;;; 出社 AM7:25
[mask time=" 700" graphic="shiro.jpg"]
[fadeoutbgm]
[bg time=" 0" storage="office_asa.jpg"]
[wait time=" 1200"]
[mask_off time="700" wait="true"]
[playbgm  storage="02_tsuikai.mp3" volume="20"]

到公司后，发现办公室里几乎没开灯。[p]

[bg storage="office_asa2.jpg" time="800"]

我确认了一下我所在团队的工位。[p]
——好，今天又是第一个到！[p]
毕竟比规定上班时间提前了一个小时，没人在也是理所当然的。[p]

我把包放在写着「小清水朔」名牌的桌子前。[p]
在上司来之前，先把今天会议需要的资料准备好吧。[p]
我所属的部门主要负责系统开发。[p]
与其他部门和系统用户开会时，需要准备用于统一系统认知的资料。[p]
这些资料的制作一直都是由上司分配给我的。[p]
虽然我做得不太好……但上司并没有放弃我，而是一次又一次地给我分配任务。[p]
总有一天，我一定要回应上司的期待！[p]

[saku_window]
#朔
…………[p]
……好，干劲十足！[p]

#
[default_window]
[fadeoutbgm]
[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="office_hiru.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="1000" wait="true"]
[wait time=" 300"]
[stopbgm]

一个小时后，到了上班时间……[p]
上司叫我把资料拿给他看。[p]
虽然有些紧张，但还是面对面地让他看了我准备的资料。[p]
即使在如今数字化程度很高的时代，上司仍然要求提交纸质版。[p]
据说直接用笔批改更快。不拘泥于时代而注重效率的做法真不愧是上司。[p]

[playse buf="3"  storage="paper.mp3" volume="60"]
[wait time=" 300"]

然后，上司随意地放下我递交的文件，转向我说道。[p]

[playbgm storage="DAY201.mp3" volume="0"]
[chara_show  name="上司" top="50" time=500]

[mob_window]
#上司
你是在开玩笑吗？做出这种毫无说明价值的资料。[p]

[saku_window]
#朔
谢谢您的指正……！！[p]

#
[default_window]
上司总是会批评不成器的我。[p]
为了无能的我，他多次给予指导的机会，我真的非常感激。[p]

[mob_window]
#上司
小清水，你是哪所大学毕业的？话说回来你到底上过大学吗？[p]

[saku_window]
#朔
是、是的！大学……我上过的！[p]

#
[default_window]
下次一定要做好！……带着这样的想法日夜制作资料，但看来我似乎总是忽视了重要的要点……[r]
[p]
对于每次都批评我的上司，我只有感激之情。[p]

[mob_window]
#上司
你根本就不明白为什么需要这份资料吧。你什么都不理解就在工作。[p]

#上司
随随便便地工作，敷衍了事地做成果。你到底是为什么在这里？[p]

[saku_window]
#朔
对、对不起……！[p]

[mob_window]
#上司
如果是我负责面试的话，你肯定会被刷下来。[p]

#上司
总之这次我来修改。……啊，别来那套「我来做！」之类的使命感。那只会让制作时间更长。[r]
[p]

[saku_window]
#朔
我明白了。下次我一定会努力独立完成……！[p]

[mob_window]
#上司
好好用你那愚蠢的脑袋想想，让我浪费时间意味着什么[p]

[saku_window]
#朔
是……啊，非常感谢您！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

我深深地鞠躬，几乎要贴到地板上，然后离开了上司的座位。[p]
我和上司的对话周围人都听得一清二楚，不知道坐在我旁边的同期会说些什么……[p]
前段时间他还说什么「如果觉得辛苦的话最好说出来」之类的话。[p]
我清楚地记得，对于这种擅自揣测他人感受的行为，我感到有点恼火。[p]
希望他不会说些奇怪的话。[p]
啊……对了。[p]
同期上周就已经离职了。[p]

[mask time=" 1500" graphic="kuro.jpg"]
[stopbgm]
[wait  time="1000"]
[bg storage="monolog_01.jpg" time="0"]
[mask_off time="1500" wait="true"]

第二天。[p]

[bg storage="office_hiru.jpg" time="1000"]

#
今天是月底的结算日……我正在和上司进行评估面谈。[p]
我收到了很多宝贵的指点，希望评价能稍微提高一些……[p]
虽然我是这么想的，但这个月我有一个目标没能达成……[p]
此刻，我正在接受关于那个目标的指导。[p]

[playbgm  storage="02_tsuikai.mp3" volume="20"]
[chara_show  name="上司" top="50" time=500]

[mob_window]
#上司
小清水。你还记得上个月你说的目标设定吧？「一个月内获得10个新客户」，这就是你的目标对吧？[r]
[p]

[saku_window]
#朔
是的，正如您所说的……！[p]

#
[default_window]
他还记得我宣布的目标。[p]
真是理想的上司啊。[p]

[mob_window]
#上司
这是什么数字？只有2个啊。是打错了吗？[p]

#上司
不是吧。你已经工作三年了吧？啊，不对。你是今年刚入职的新人来着？[p]

[saku_window]
#朔
是、是三年了……[p]

[mob_window]
#上司
公司可是在给你发工资啊？这你明白吧。……你这个吃白饭的[p]

#上司
下次如果还达不成目标，就给我写辞职信[p]

[saku_window]
#朔
感谢您的教诲，让我警醒！我一定会努力不让这种情况发生的……！[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

上司总是一脸和蔼地对我说。[p]
「无能」「没用」「吃白饭的」等等。[p]
不过，换个角度看，这些都可以理解为成长的机会。[p]
上司一次又一次地给了我成长的机会。[p]
……真是让我无地自容啊。[p]

[bg storage="office_hiru2.jpg" time="800"]

[saku_window]
#朔
…………，好[p]

#
[default_window]
回到座位上，松了口气。[p]
看了看时钟，指针指向11点。[p]
……距离工作结束，还有大约11个小时吧。[p]
……好。[p]
再加把劲吧！[p]

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
因睡汗的不适感而醒来。[p]
看来……回来后，连澡都没洗就睡着了。[p]
连饭都没吃。[p]

[saku_window]
#朔
得去公司了……[p]

#
[default_window]
[wait  time="500"]

[saku_window]
#朔
……等等────[p]

#
[default_window]
出于根深蒂固的习惯，正要走向洗手台时突然愣住了。[p]

[bg storage="jishitsu_hiru_03.jpg" time="800"]
从窗帘缝隙透进来的阳光角度，与平常不太一样。[p]
看了眼时钟，时间是07:00。[p]
平常的上班时间是07:20。[p]

[saku_window]
#朔
糟了，这下完全迟到了……！！！[p]

#
[default_window]
虽然实际上班时间是8:30，还有充裕的时间。[p]
但对我来说，7:20不能到公司就等同于迟到。[p]

[fadeoutbgm]
[bg storage="manshon_erebeta_hiru.jpg" time="800"]
用5分钟收拾好，出门。[p]

;;; 電車内 AM07:15
[bg storage="densha_02.jpg" time="800"]
[playbgm  storage="04_zankyou.mp3" volume="30"]

以前也有过连洗澡时间都没有就直接去上班的经历……[p]
但像这样浑身是汗实在太不舒服了，而且会在意周围人的目光。[p]
不会被认为有异味吧。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg time=" 0" storage="densha_05.jpg"]
[mask_off time="300" wait="true"]

;;; 駅のホーム
在换乘的车站下车，等待下一班列车。[p]
时间上来说……到公司时上司会不会已经先到了呢。[p]
比平常晚去会不会被训斥……[p]
还有……昨天做的资料没问题吧。[p]

[saku_window]
#朔
应该……没问题吧…………[p]

#
[default_window]
等电车的时候，回想起昨天做的资料。[p]

[bg storage="densha_06.jpg" time="800"]

……与对方会议用的议程、日程安排方案、需求定义书的更新以及设计书草案和系统处理的数据类型列表、演示文稿……感觉还有其他的。[p]
虽然日程安排也是照葫芦画瓢做的……不知道是否符合上司心目中理想的日程安排……。[p]
内心某处又开始不安，担心做得不够好。[p]
被要求提出三个考虑系统负载的方案来实现用户需求，但好像还在思考第一个方案……[p]

[bg storage="densha_09.jpg" time="800"]

日程安排啊对应方案啊演示文稿啊……如果做得不好又要惹上司生气了……[p]
都是因为无能的自己……总是给上司和公司添麻烦……明明应该要变得更能干的……[p]

[fadeoutbgm]
[bg storage="densha_08.jpg" time="800"]

我想变得更能干，想看到上司高兴的表情。想被夸奖说干得好……。[p]

[playse buf="3"  storage="heartbeats.mp3" volume="40" loop=true]

可是……我总是被上司骂……比我晚入职一年的员工却总是……被上司表扬和感谢……[p]
为什么总是只有我被骂……[p]

[bg storage="eki.jpg" time="800"]
[stopbgm]

不要……应该不是只有我一个人被骂吧……。[p]
必须要变得更能干才行。[p]
必须要变得更能干。必须要变得更能干。必须要变得更能干。必须要变得更能干。必须要变得更能干。必须要……变得更能干。[p]
必须要，变得更能干。不行的话，就糟糕了。[p]
必须要按照上司说的那样做。[p]
按照上司说的那样……[p]

[bg storage="densha_08.jpg" time="800"]
电车靠近了。[p]
我要乘那辆电车去上班………………………………[p]
然后被上司骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂，被骂……[p]

[saku_window]
#朔
……………………[p]

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
我感觉，在我的内心，好像有什么东西，啪的一声，断掉了[p]

[saku_window]
#朔
────[p]

#
[default_window]
死了的话一切就都轻松了[p]


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
