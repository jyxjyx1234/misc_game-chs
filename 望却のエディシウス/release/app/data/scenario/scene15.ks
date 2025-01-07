
;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_15_{number}.mp3" number="1"]
[voconfig sebuf="2" name="警察" vostorage="mob_otoko/keisatsu_15_{number}.mp3" number="1"]
[vostart]

#
[default_window]
_　[r]
_　[cm]

[bg storage="oudanhodou_hiru_aka_2.jpg" time="800"]

警察用审视的目光一直盯着我。[p]
为了不让他们察觉到我流下的汗水和嘴唇的颤抖，我用力咬紧了臼齿。[p]
我静静地等待着对方开口说话。[p]
现在我能做的，只有等待了。[p]
因为我已经说了谎。[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

警察转身和身后待命的另一名警官小声交谈了几句，然后又转向了我。[p]

[mob_window]
#警察
是这样啊。明白了。谢谢你的配合。啊，不过小哥，抱歉啊。为了以防万一，能让我进行一下例行盘问吗？[r]
[p]

[saku_window]
#朔
……好的。没问题[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="oudanhodou_hiru_ao.jpg" time="500"]

我感到浑身的力气一下子卸掉了。[p]
话题转向例行盘问意味着……我的担心是多余的。[p]
为了完成日常工作，警察开始问一些固定的问题。[p]
这次我的嘴和脑子都变得灵活起来。[p]
就像疏通了堵塞的下水道，水流畅通无阻的那种安心感。[p]
看来我成功地骗过他们了……[p]

[chara_show  name="警察" top="90" time=500]

[mob_window]
#警察
那么，抱歉啊。看来耽误你急事了。如果看到刚才说的那个女孩，请告诉我们哦[r]
[p]

[saku_window]
#朔
我明白了。那么，失礼了[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

我低头鞠躬，然后转身回到回家的路上。[p]
过了一会儿回头看，警车还停在原地。[p]
不过，看起来他们并没有追上来的意思。[p]
即使与警察分开后，我还是表现得和平常一样。[p]
因为谁知道会在哪里被人看到呢。[p]
我保持着平常的步伐走着，同时思考着。[p]

[bg storage="oudanhodou_hiru_aka_2.jpg" time="800"]

[saku_window]
#朔
（刚才虽然蒙混过关了……但望就在附近这件事恐怕已经暴露了）[p]

#朔
（虽然我想过总有一天会变成这样……但事情变得棘手了）[p]

#
[default_window]
[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

我该怎么向望解释呢……[p]
我一直在想这件事，以至于浑身黏腻的汗水感都变得无关紧要了。[p]

[fadeoutbgm]
[mask time=" 700" graphic="kuro.jpg"]
[chara_hide_all time=0 wait=true]
[bg storage="manshon_erebeta_hiru.jpg" time="0"]
[wait time=" 2000"]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="1000" wait="true"]
[stopbgm]

;;; 朔の部屋
[playse buf="3"  storage="room_door_open.mp3" volume="20"]

[bg storage="kitchen_hiru.jpg" time="800"]
[wait time=" 2000"]
[playse buf="3"  storage="room_door_close.mp3" volume="20"]
[bg storage="jishitsu_hiru_01.jpg" time="800"]
[wait time=" 1000"]

[add_theme_button]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[saku_window]
#朔
望！[p]

[default_window]
#
我打开家门，确认望的存在。[p]

[chara_show  name="望1_ネックレス有" face="odoroki" top="50" width="1600" height="2259" time=500]
[wait time=" 500"]
[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500]
[nozomi_window]
#望
怎么了，你脸色不太好啊……发生什么事了吗？[p]

[default_window]
#
我一瞬间想着是不是不说为好……[p]
因为我不想看到望的表情阴沉下来。[p]
但是，这种事情是无法一直隐瞒的。[p]

[saku_window]
#朔
其实……[p]

#
[default_window]
[chara_hide_all time=1500 wait=true]

我不得不告诉她，警察正在家附近寻找望。[p]


[mask time=" 1500" graphic="kuro.jpg"]
[fadeoutbgm]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[bg storage="kuro.jpg" time="0"]
[wait time=" 3000"]
[mask_off time="500" wait="true"]


;;; 以降、scene14でのフラグに応じて分岐
;;; goodエンドフラグONの場合、scene16へ
;;; badエンドフラグONの場合、scene16_badへ

[if exp="sf.シーン14分岐==0"]
	@jump storage="scene16_bad.ks"
[elsif exp="sf.シーン14分岐==1"]
	@jump storage="scene16.ks"
[endif]

