*start|aaaaaaaaaaaaaa

[startanchor enabled=true]
[laycount layers=5]
[wait time=200]
[cm]
; メッセージ履歴への出力を停止し、表示不可にする
[history output=false enabled=false]
;タイトルが表示されるまでセーブ・ロードさせない
[disablestore store=true restore=true]


[image storage="hblkout" layer=base page=fore]
[clickskip enabled=false]
[backlay]
[freeimage layer=base page=back]
[image layer=base page=back storage="審査ロゴ"]
[trans method=crossfade time=1000]
[wt]

[resetwait]
[wait mode=until time=1500 canskip=false]
[backlay]
;追加分
[eval exp="f.B=0"]
[eval exp="f.A=0"]
[freeimage layer=base page=back]
[image layer=base page=back storage="テロップ"]
[trans method=crossfade time=1000]
[wt]

[resetwait]
[wait mode=until time=3000 canskip=false]
[backlay]
[freeimage layer=base page=back]
[image layer=base page=back storage="hblkout"]
[trans method=crossfade time=1000]
[wt]
[clickskip enabled=true]

[history output=false enabled=false]
;タイトルが表示されるまでセーブ・ロードさせない
[disablestore store=true restore=true]

[layopt layer=0 page=fore visible=true]
[image layer=0 page=fore storage="スワンマニアロゴ" top=0 left=150]
[waitex time=4500]
[backlay]
[freeimage layer=0 page=back]
[layopt layer=0 page=back visible=false]
[freeimage layer=base page=back]
[image layer=base page=back storage="hblkout"]
[trans method=crossfade time=1500]
[wt]
[playbgm storage="日常2" loop=true time=0]


*rclick_2

[backlay]
[freeimage layer=base page=back]
[image storage="オープニング0_a" page=back layer=base]
[trans method=crossfade time=200]
[wt]

[backlay]
[freeimage layer=base page=back]
[image storage="オープニング0_b" page=back layer=base]
[trans method=crossfade time=300]
[wt]

[mapdisable layer=base]
[backlay]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=base page=back]
[image layer=0 page=back storage="black" top=0 left=0 opacity=255]
[image layer=1 page=back storage="black" top=0 left=0 opacity=255]
[image storage="オープニング1" page=back layer=base]
[trans method=crossfade time=500]
[wt]

[image layer=0 page=fore visible=true storage="ロゴアニメ" top=0 left=0 opacity=255]
[resetwait]
[wait mode=until time=2500]

*omakebk
[laycount layers=5]
[backlay]
[image layer=0 page=back storage="black" top=0 left=0 opacity=255]
[image layer=1 page=back storage="black" top=0 left=0 opacity=255]
[image layer=2 page=back storage="black" top=0 left=0 opacity=255]
[image layer=3 page=back storage="black" top=0 left=0 opacity=255 visible=true]
[image storage="オープニング2" page=back layer=base]
;ボタン用
[layopt layer=0 top=0 left=0 visible=true page=back]
[layopt layer=1 top=0 left=0 visible=true page=back]
[trans method=crossfade time=500]
[wt]

;おまけルートなし
[if exp="sf.omakeflg==0"]
[image layer=1 top=0 left=400 storage="ボタンアニメ1" page=fore visible=true]
[waitex time=2000]
[endif]

;おまけルートあり
[if exp="sf.omakeflg==1"]
[image layer=1 top=0 left=400 storage="ボタンアニメ2" page=fore visible=true]
[waitex time=2000]
[endif]

[backlay]
[freeimage layer=1 page=back]
[freeimage layer=3 page=back]
[image layer=1 top=0 left=0 storage="black" opacity=255 page=back visible=true]
[image layer=3 top=0 left=0 storage="black" opacity=255 page=back visible=true]
;おまけルートなし
[if exp="sf.omakeflg==0"]
[image storage="オープニング3_a" page=back layer=base]
[endif]
;おまけルートあり
[if exp="sf.omakeflg==1"]
[image storage="オープニング3_b" page=back layer=base]
[endif]

[trans method=crossfade time=500]
[wt]
[waitclick]
[s]

*exit
[mapdisable layer=base]
[close ask=true]

[if exp="sf.omakeflg==0"]
[image storage="オープニング3_a" page=fore layer=base]
[endif]

[if exp="sf.omakeflg==1"]
[image storage="オープニング3_b" page=fore layer=base]
[endif]

[waitclick]
[s]
