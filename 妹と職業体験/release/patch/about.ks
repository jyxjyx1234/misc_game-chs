;■Ｒメニュー禁止
;■最終更新　07/03

[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

;■初期設定
[title name="バージョン情報"]
[rclick enabled=false]
[clickskip enabled=false]

;■メッセージウインドウを全画面化
[position layer=message0 page=back]
[position left=0 top=0 width=640 height=480 frame=""opacity=0]
[position marginl=0 margint=0 marginr=0 marginb=0]

;■背景画像を瞬間表示(サイズの指定はConfig.tjsにて)
[image storage=about_bg layer=base page=fore]

;■書体設定
[font size=13 color=0xFFFFFF face="黑体"]

;■座標指定、文字表示
[nowait]
;[locate x=78 y=32]
;[locate x=70 y=48]
;[locate x=102 y=120]
[endnowait]

;■処理まち
[waitclick]

;■終了処理
*exit
;■Ｒメニュー禁止解除
[rclick enabled=true]
;□回想出力＿禁止解除
[history output=true]
[close]

