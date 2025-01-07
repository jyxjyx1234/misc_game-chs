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
我倾听着淋浴的声音……[p]
凝视着浴室磨砂玻璃那边隐约可见的肤色。[p]
本来就怀着「想做爱」这种下流的欲望……[p]
不知为何，我无法将视线移开。[p]
不对，比起这个，我得先给望准备换洗的衣服才行……[p]

[saku_window]
#朔
望，我把你的衣服洗一下[p]

#
[default_window]
隔着门说话，望却没有回应。[p]
是没听见吗……？[p]
那么……是该大声说呢，还是……[p]

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

『她会说「你在看什么啊。朔真色。变态。我洗完澡就回去了」之类的吗。』[p]
大概会这么说吧。[p]
不要……[p]

[bg storage="CG21/CG21_03.jpg" time="800"]
;;;②赤面
『唔…………诶？　朔、朔……？』[p]

会不会像这样害羞地说呢。[p]
还是说……[p]

[bg storage="CG21/CG21_04.jpg" time="800"]
;;;③恥じらい＋怒り
[quake count=3 time=200 hmax=10 vmax=10]
[wait time=100]

『啊啊啊啊啊！朔、朔！？请把门关上啊！』[p]
会不会这样说呢。[p]

[bg storage="kitchen_hiru.jpg" time="800"]

想象着望裸体的样子和反应，我不由自主地兴奋起来。[p]
兴奋是什么就不说了！嗯！[p]

[mask time=" 1000" graphic="shiro.jpg"]
[bg storage="CG21/CG21_01_2.jpg" time="0"]
[wait time=" 500"]
[mask_off time="1000" wait="true"]

而且，最重要的是────。[p]
望……[p]

[bg storage="CG21/CG21_05.jpg" time="800"]

望……！[p]
虽然不说是什么…………[p]
有。[p]
是有的……！[p]

[bg storage="CG21/CG21_06.jpg" time="800"]

为什么，不是什么都没有……[p]
而是有什么……[p]

[bg storage="CG21/CG21_07.jpg" time="600"]
[layermode_movie name="intensive_line" video="intensive_line.mp4" opacity="255" mode="screen"]

『那个』存在着……！[p]

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
啊啊啊啊啊啊啊！冷静……冷静啊我……！！[p]



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
