
;ボイス設定
[voconfig sebuf="2" name="望" vostorage="nozomi/nozomi_15_{number}.mp3" number="1"]
[voconfig sebuf="2" name="警察" vostorage="mob_otoko/keisatsu_15_{number}.mp3" number="1"]
[vostart]

#
[default_window]
_　[r]
_　[cm]

[bg storage="oudanhodou_hiru_aka_2.jpg" time="800"]

警察依然用那种审视的目光盯着我。[p]
为了不被察觉到流下的汗水和颤抖的嘴唇，我紧紧咬住了后槽牙。[p]
我一动不动地等待对方开口。[p]
我现在已经只能等待了。[p]
因为我已经撒了谎。[p]

[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

他和站在后面的另一个警察小声说了些什么，然后重新转向了我。[p]

[mob_window]
#警察
是吗，明白了，谢谢你的配合。啊，不过小兄弟，不好意思，为了以防万一，可以问你几个职务相关的问题吗？[r]
[p]

[saku_window]
#朔
……好的，没问题。[p]

#
[default_window]
[chara_hide_all time=500 wait=false]
[bg storage="oudanhodou_hiru_ao.jpg" time="500"]

我感觉全身的力气一下子被抽走了。[p]
话题转到了职务询问上……也就是说，我的疑虑只是杞人忧天罢了。[p]
为了完成日常工作，警察例行地抛出了一些固定的问题。[p]
这次我的嘴巴和大脑都流畅地运作起来了。[p]
就像疏通了堵塞的排水管，水一下子涌流出来般的安心感。[p]
看来成功骗过他们了……。[p]

[chara_show  name="警察" top="90" time=500]

[mob_window]
#警察
那就这样吧，不好意思耽误你忙活。如果刚才那个女孩你有看到的话，请告诉我们哦。[r]
[p]

[saku_window]
#朔
明白了。那么，失陪了。[p]

#
[default_window]
[chara_hide_all time=500 wait=true]

我低下头，重新踏上了回家的路。[p]
走了一会儿后回头看去，警车仍然停在那里。[p]
不过，看起来并没有要追过来的意思。[p]
和警察分开后，我依然装作和平时一样的样子。[p]
因为不知道会在哪里被人看到。[p]
我一边以平常的步伐行走，一边思考着事情。[p]

[bg storage="oudanhodou_hiru_aka_2.jpg" time="800"]

[saku_window]
#朔
（刚才是没事，但……望就在附近这事估计已经被察觉了。）[p]

#朔
（虽然早就想过总有一天会变成这样……但这下可麻烦了。）[p]

#
[default_window]
[bg storage="oudanhodou_hiru_aka.jpg" time="800"]

我该怎么跟望说才好呢……[p]
我满脑子都是这件事，以至于身上黏腻的汗水都变得无关紧要了。[p]

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
我打开家门，确认望是否在家。[p]

[chara_show  name="望1_ネックレス有" face="odoroki" top="50" width="1600" height="2259" time=500]
[wait time=" 500"]
[chara_mod  name="望1_ネックレス有" face="gimon" cross=false time=500]
[nozomi_window]
#望
怎么了？脸色不太好啊……发生什么事了吗？[p]

[default_window]
#
要不要告诉她呢……一瞬间我产生了这样的念头。[p]
因为我不想看到望脸上的阴云。[p]
然而，这并不是能一直隐瞒下去的事情。[p]

[saku_window]
#朔
其实……[p]

#
[default_window]
[chara_hide_all time=1500 wait=true]

无奈之下，我告诉了她警察就在家附近找望的事情。[p]


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

