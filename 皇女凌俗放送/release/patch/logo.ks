;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■会社ロゴデモ　　最終更新　05/04　更新者　白土

;□　使用している画像
;□　afro_db.png
;□　afro_tx.png
;□　afro_tx_m.png
;□　bb.png
;□　w_logo.png
;□　w_logo0.png
;□　w_logo1.png

;□　使用しているルール画像
;□　westzoom.png
;□　westzoomo.png

;■↓未使用　初期起動時に、起動が遅くなる？　←ＴＷ２０以降で確認のこと
;■　使用しているＳＥ（効果音）
;■　logo01.ogg
;■　logo02.ogg

*logo

;[video visible=true left=0 top=0 width=640 height=480]
;[playvideo storage="op_low03l.avi"]
;[wv canskip=true]


;// [laycount layers=5]

[layopt layer=message0 visible=false]
[layopt layer=message1 visible=false]
[layopt layer=0 visible=false]
[layopt layer=1 visible=false]
[layopt layer=2 visible=false]
[layopt layer=3 visible=false]
[layopt layer=4 visible=false]

;/*-------------------------- west
[cm]

;[playse buf=2 loop=false storage=logo01]

[backlay]
[image storage=w_logo0 layer=base page=back]
[trans rule=westzoom time=500 vague=64]
[wt]
[backlay]
[image storage=w_logo layer=base page=back]
[trans rule=westzoom time=500 vague=64]
[wt]
[backlay]
[image storage=w_logo2 layer=base page=back]
[trans rule=westzoom time=500 vague=64]
[wt]
[wait time=4000]
[backlay]
[image storage=bb layer=base page=back]
[trans rule=westzoomo time=500 vague=64]
[wt]
[wait time=2000]

;[fadeoutse buf=2 time=1]

;/*-------------------------- afro
;[playse buf=2 loop=false storage=logo02]

[layopt layer=3 page=fore visible=false opacity=255 left=0 top=0]
[layopt layer=4 page=fore visible=false opacity=255 left=0 top=0]

[image storage=bb layer=base page=fore]
[image storage=afro_tx layer=4 page=fore]
[image storage=afro_bd layer=3 page=fore]

[layopt layer=4 page=fore visible=true opacity=0 left=0 top=200]
[layopt layer=3 page=fore visible=true opacity=0 left=450 top=100]

[move layer=4 time=1000 accel=-2 path="(40,200,255)"]
[move layer=3 time=1000 accel=-2 path="(400,100,255)"]
[wm][wm]
[image storage=afro_tx layer=4 page=fore]
[image storage=afro_bd layer=3 page=fore]

[wait time=4000]

[move layer=4 time=500 accel=2 path="(60,200,0)"]
[move layer=3 time=500 accel=2 path="(350,100,0)"]
[wm][wm]
;// [wait time=2000]
[wait time=1 canskip=false]

;[fadeoutse buf=2 time=1]
[return]
