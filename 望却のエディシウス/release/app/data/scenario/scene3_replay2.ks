*CG21_replay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 1000"]

[cm]
[clearfix]
[start_keyconfig]

[playse buf="3"  storage="shower.mp3" volume="40" loop=true]

[bg storage="kitchen_hiru.jpg" time="800"]
[playbgm  storage="03yomoyamabanasi.mp3" volume="30"]

@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[add_theme_button]

#
[default_window]
一边听着淋浴的水声……[p]
盯着浴室磨砂玻璃后隐约可见的肌肤。[p]
原本就抱有「想做爱」这种低级的欲望……[p]
不知为何，目光无法移开。[p]
不，先不说这些，得给望准备换洗衣服……。[p]

[saku_window]
#朔
望，我把你的衣服洗了哦[p]

#
[default_window]
隔着门说了这句话，却没有听到望的回应。[p]
是没听见吗……？[p]
那……要么大声点说，要么……[p]

[saku_window]
#朔
……如果开门说的话……望会有什么反应呢[p]

#
[default_window]

如果打开这扇门的话……[p]
[playse buf="1" storage="Chimes.mp3" volume="50"]
[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="CG21/CG21_01.jpg" time="0"]
[wait time=" 1000"]
[mask_off time="1000" wait="true"]

[wait time=" 1000"]

[bg storage="CG21/CG21_02.jpg" time="800"]
;;;①ジト目

『「你在看什么啊？朔，你个色鬼。变态。我洗完澡就回去了哦。」』[p]
会这样说吗。[p]
不……[p]

[bg storage="CG21/CG21_03.jpg" time="800"]
;;;②赤面
『啊…………诶？朔……？』[p]

会不会像这样丢人地说呢。[p]
还是说……[p]

[bg storage="CG21/CG21_04.jpg" time="800"]
;;;③恥じらい＋怒り
[quake count=3 time=200 hmax=10 vmax=10]
[wait time=100]

『呀啊啊啊啊！朔！？快把门关上啊！』[p]
会不会像这样说呢。[p]

[bg storage="kitchen_hiru.jpg" time="800"]

想着望的裸体和反应，自己就不由得兴奋起来了。[p]
兴奋起来具体是啥就不说了！对吧！[p]

[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="CG21/CG21_01_2.jpg" time="0"]
[wait time=" 500"]
[mask_off time="1000" wait="true"]

而且，最重要的是────。[p]
望是……[p]

[bg storage="CG21/CG21_05.jpg" time="800"]

望是……！[p]
虽然不好明说，但…………[p]
有的。[p]
确实有……！[p]

[bg storage="CG21/CG21_06.jpg" time="800"]

为什么不是「什么都没有」而是……[p]
有什么东西……[p]

[bg storage="CG21/CG21_07.jpg" time="600"]
[layermode_movie name="intensive_line" video="intensive_line.mp4" opacity="255" mode="screen"]

那个「东西」存在吗……！[p]

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
啊啊啊啊啊啊啊！冷静点……我……！！[p]



;;; リプレイモード終了

[autostop]
[skipstop]

[cm]
[clearfix]
[clearfix name="role_button"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

[fadeoutbgm]
[fadeoutse buf="3"]
[fadeoutse buf="1"]

[bg time=" 3000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 3000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
