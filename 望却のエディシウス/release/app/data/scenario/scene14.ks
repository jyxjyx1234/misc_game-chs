
;ボイス設定
[voconfig sebuf="2" name="警察" vostorage="mob_otoko/keisatsu_14_{number}.mp3" number="1"]
[vostart]

[eval exp="sf.シーン14分岐=1"]

#
[bg storage="oudanhodou_hiru_aka.jpg" time="800"]
[playbgm storage="04_zankyou.mp3" time="1000" volume="30"]

[saku_window]
#朔
……好像见过。[p]

[mob_window]
#警察
哦！是在什么地方？[p]

[saku_window]
#朔
……啊——不过好像不是在这附近，是在隔壁车站那边吧……[p]

#朔
下车的时候，好像看到过穿这身衣服的孩子……如果记错了的话，抱歉。[p]

[mob_window]
#警察
你居然记得那么一瞬间的事，是有什么特别的地方吗？[p]

[saku_window]
#朔
看起来像是被谁追着，显得很慌张。可能因为这样印象比较深刻吧。[r]
[p]


@jump storage="scene15.ks"
;;; GOODエンドフラグ付与して、scene15へ

