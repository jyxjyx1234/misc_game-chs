*999|体験版終了
;■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
;　*|　はセーブした時のロードポイントになるので、選択肢の前の配置に注意
*|

;シーン頭セーブをロードした場合のエラー防止
[mesw_off]

[setwindow]
[bgm00]
[se00]

[cl_a]
;■背景ＣＧ表示
[bg storage=bg02][ud time=1000]
;■BGM再生
[bgm07]
[mesw_on]
[ud time=500]
;■■■■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
*|

;■体験版用音声

;■立ち絵表示
[ch_c storage=stand6 pose=3 face=a pos=l][ud time=500]

[voice buf=0 storage=skg99001.ogg]
[setname2 name=纱奈]
今天的职业体验就到这里啦[p2]

;■■■■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
*|

;■立ち絵表示
[ch_c storage=stand6 pose=3 face=g pos=l][ud time=500]

[voice buf=0 storage=skg99002.ogg]
[setname2 name=纱奈]
职业体验的后续内容就留到正式版里吧[p2]

;■■■■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
*|

;■立ち絵表示
[ch_c storage=stand6 pose=3 face=a pos=l][ud time=500]

[voice buf=0 storage=skg99003.ogg]
[setname2 name=纱奈]
发售日期等信息请在官网上确认哦[p2]

;■■■■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
*|

;■立ち絵表示
[ch_c storage=stand6 pose=3 face=b pos=l][ud time=500]

[voice buf=0 storage=skg99004.ogg]
[setname2 name=纱奈]
真想再穿别的衣服来体验职业呢[p2]

;■■■■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
*|

;■立ち絵表示
[ch_c storage=stand6 pose=g face=a pos=l][ud time=500]

[voice buf=0 storage=skg99005.ogg]
[setname2 name=纱奈]
再见啦哥哥[p2]

;■■■■■■■■■■■■■■■■■■■■■■■■[l]改行待ち [r]強制的に改行 [l][r] [p2]改ページ待ち
*|

;■立ち絵表示（透明）
[ch_c storage=toumei pos=l][ud time=500]
;skipなどのアイコンOFF
[mesw_off]
;メッセージ窓OFF
[setwindow]
;■BGMフェードアウト
[bgm99 time=1000]
[bg storage=bg000000][ud time=1000]
;◇オートモード解除
[cancelautomode]
;◇スキップモード解除
[eval exp="kag.cancelSkip(),kag.forceSkip=0"]

;ロード後の誤爆確認の為の緊急ウエイト
;[wait time=500 canskip=false]

[ud time=500]
[wait time=1000]
[bg storage=bg000000][ud time=100]

[return]
