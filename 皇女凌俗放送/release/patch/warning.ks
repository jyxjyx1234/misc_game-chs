;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■凌辱作品用　警告メッセージ	最終更新　04/27　更新者　白土

;□　使用している画像
;□　warning.bmp  640*480 警告メッセージ
;□　bg000000.bmp 640*480 全黒画面

;□　使用しているルール画像
;□　なし

;■↓未使用
;■　使用しているＳＥ（効果音）
;■　warning01.ogg



;□オートモード＿中止
[cancelautomode]
;□スキップモード＿中止
[cancelskip]





[cm]
[backlay]
[image storage="bg000000" layer=base page=back]
[trans method=crossfade time=0 vague=64 children=true]
[wt canskip=false cond="kag.skipMode<=1"]
[wt]
[wait time=1 canskip=false]

;[playse buf=2 loop=false storage=warning01]

[backlay]
[image storage="warning" layer=base page=back]
[trans method=crossfade time=500 vague=64 children=true]
[wt canskip=false cond="kag.skipMode<=1"]
[wt]

[wait time=2000 canskip=false]

[backlay]
[image storage="bg000000" layer=base page=back]
[trans method=crossfade time=500 vague=64 children=true]
[wt canskip=false cond="kag.skipMode<=1"]
[wt]
[wait time=1 canskip=false]


;[fadeoutse buf=2 time=1]
[return]

