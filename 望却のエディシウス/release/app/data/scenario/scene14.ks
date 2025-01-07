
;ボイス設定
[voconfig sebuf="2" name="警察" vostorage="mob_otoko/keisatsu_14_{number}.mp3" number="1"]
[vostart]

[eval exp="sf.シーン14分岐=1"]

#
[bg storage="oudanhodou_hiru_aka.jpg" time="800"]
[playbgm storage="04_zankyou.mp3" time="1000" volume="30"]

[saku_window]
#朔
……可能见过[p]

[mob_window]
#警察
哦！在哪里？[p]

[saku_window]
#朔
……啊……但好像不是在这附近，可能是在隔壁车站那边……[p]

#朔
可能是在下车时看到穿这种衣服的人……如果记错了请原谅[p]

[mob_window]
#警察
能记住那么一瞬间还真不容易。有什么特别的特征吗？[p]

[saku_window]
#朔
看起来像是被人追赶，很慌张。可能就是因为看起来很急迫，所以印象比较深刻[r]
[p]


@jump storage="scene15.ks"
;;; GOODエンドフラグ付与して、scene15へ

