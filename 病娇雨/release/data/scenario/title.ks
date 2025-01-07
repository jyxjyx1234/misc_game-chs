*start

;sf.edに１をプラス エンディング済み変数
;[eval exp="sf.TRUE=1"]

;最初から広告オープン
[cg storage="koukoku1.png"]
[cg storage="koukoku2.png"]
[cg storage="koukoku3.png"]
[cg storage="koukoku4.png"]
[cg storage="koukoku5.png"]
[cg storage="koukoku6.png"]
[cg storage="koukoku7.png"]
[cg storage="koukoku8.png"]
[cg storage="koukoku9.png"]


;暗転解除
[mask_off  time="100"  effect="fadeOut"  ]

;BGM
[playbgm  time="1000"  loop="true"  storage="yanderain.ogg"  ]

*cgback

;文章クリア
[cm]
;--------------------------------------------------------------------
;if関数
[if exp="sf.TRUE==1"]

;処理　TRUEを見た場合
[jump  storage="title.ks"  target="*2syu"]
[else]

;処理２　TRUEを見ていない場合
[jump  storage="title.ks"  target="*1syu"]
[endif]
;--------------------------------------------------------------------
;１週目　タイトル
*1syu

;初期設定
@clearstack
@bg storage ="title.png" time=100
@wait time = 200


;ムービー
[layermode_movie  mode="screen"  speed="1"  volume="0"  loop="true"  time="100"  wait="true"  video="rain1-2.webm"  ]

;はじめから
[button x=920 y=350 graphic="title/start.png" target="gamestart"]
;つづきから
[button x=920 y=420 graphic="title/load.png" role="load"]
;CGモード
[button x=920 y=490 graphic="title/cg.png"  target="*cg" ]
;オプション
[button x=920 y=560 graphic="title/option.png" storage="../others/plugin/theme_kopanda_09_2/config.ks"   role="sleepgame"]
[s]
;--------------------------------------------------------------------
;２週目　タイトル
*2syu

;初期設定
@clearstack
@bg storage ="title2.png" time=100
@wait time = 200

;ムービー
[layermode_movie  mode="screen"  speed="1"  volume="0"  loop="true"  time="100"  wait="true"  video="rain1-2.webm"  ]

;はじめから
[button x=920 y=350 graphic="title/start.png" target="gamestart"]
;つづきから
[button x=920 y=420 graphic="title/load.png" role="load"]
;CGモード
[button x=920 y=490 graphic="title/cg.png"  target="*cg" ]
;オプション
[button x=920 y=560 graphic="title/option.png" storage="../others/plugin/theme_kopanda_09_2/config.ks"   role="sleepgame"]

[s]
;--------------------------------------------------------------------
;テストプレイジャンプボタンON・OFF
;[glink  color="white"  storage="test.ks"  size="17"  target="*first"  text="テストプレイ"  x="42"  y="547"  width=""  height=""  _clickable_img=""  ]
;--------------------------------------------------------------------
*gamestart
;BGM消し
[fadeoutbgm time=3000]
;ムービー消し
[free_layermode  ]
;一番最初のシナリオファイルへジャンプする
@jump storage="01.ks"
;--------------------------------------------------------------------
*cg
;CGモード

;ムービー消し
[free_layermode  ]

; second.ks というシナリオファイルの　*start　ラベルへ移動する
[jump storage=cg.ks target=*start]
;--------------------------------------------------------------------
*backtitle
;-----------------------
; タイトルに戻る処理

; 使用したレイヤーをすべて消去
[cm]
[freeimage layer=0]
[freeimage layer=1]

;一番上に戻る
[jump storage=title.ks target=*start]
;--------------------------------------------------------------------
