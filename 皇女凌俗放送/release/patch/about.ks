;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■バージョン情報　　最終更新　12/07　更新者　白土
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土

;□　ベース画像　verinfo　（319*174）←次回より画像サイズ、（要、見直し）
;□　テキスト　　message0

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■初期設定
;□タイトル
[title name="『皇女凌俗放送』 バージョン情報"]
;□右クリックメニュー　禁止
[rclick enabled=false]
;□スキップ　停止
[clickskip enabled=false]

;■メッセージウインドウを全画面化
[position layer=message0 page=back]
[position left=0 top=0 width=640 height=480 frame="" opacity=0]
[position marginl=0 margint=0 marginr=0 marginb=0]

;■背景画像を瞬間表示
[image storage=verinfo layer=base page=fore]

;■書体設定
[font size=12 color=0xffffff face="Microsoft YaHei UI" bold=false]

;■座標指定、文字表示
[nowait]
[locate x= 153 y=120]『皇女凌俗放送』製品版 Ver1.0
[locate x= 125 y=140]Web   :  [link color=0xffffff exp="System.shellExecute('http://westvision.afrox.net/')"]http://westvision.afrox.net/[endlink]
[locate x= 125 y=155]Mail  :  [link color=0xffffff exp="System.shellExecute('mailto:support@westvision.afrox.net')"]support@westvision.afrox.net[endlink]
[endnowait]

;■処理まち
[s]

;■終了処理
*exit
[close]
