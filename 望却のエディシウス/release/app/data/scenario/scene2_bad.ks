;;; 【飛び込まない】

[wait time=" 500"]
[bg storage="densha_05.jpg" time="500" method="vanishIn"]

[saku_window]
#朔
……哈！[p]

#
[default_window]
[playse buf="3"  storage="BodyDrop.mp3" volume="30"]
[quake count=3 time=200 hmax=20 vmax=20]
[wait time=400]

我下意识地猛地向后仰倒，摔了个屁股蹲儿。[p]
刚才，我……是不是想了什么不得了的事情？[p]
死什么的……当然是不行的。[p]

[mask time=" 300" graphic="kuro.jpg"]
[bg storage="kuro.jpg" time="0"]
[playbgm  storage="04Faraway.mp3" volume="40"]
[mask_off time="300" wait="true"]

因为，我还要……[p]
为公司做出贡献，取得成果，让上司认可才行啊。[p]
一想到这个使命，我的情绪开关被打开了。[p]

[mask time=" 300" graphic="shiro.jpg"]
[bg storage="machi01.jpg" time="0"]
[mask_off time="300" wait="true"]
[playse buf="3"  storage="start_running_long.mp3" volume="40" loop=true]

我飞奔下车站里的自动扶梯，全力冲刺在通勤路上。[p]
跑着跑着，感觉干劲越来越足了。[p]

#
[fadeoutse buf="3"]
[bg storage="office_hiru.jpg" time="1200"]

在上班时间前勉勉强强赶到了公司。[p]
好！今天也要加油！[p]
好久没在上班时遇到人了，得打个招呼才行。[p]
一天的开始，从明朗的问候开始！[p]

[saku_window]
#朔
──早上好！[p]

#
[default_window]
[stopse buf="3"]

;;; BADEND
;;; titleへ戻る

[cm]
[clearfix]

[mask time=" 300" graphic="kuro.jpg"]
[bg time=" 3000" storage="kuro.jpg"]
[fadeoutbgm]
[autostop]
[skipstop]

[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[mask_off time="300" wait="true"]
[wait time=" 3000"]
[stopbgm]

@jump storage="title.ks"
