
*start
;一番最初に呼び出されるファイル

;暗転
[mask  time="10"  effect="fadeIn"  color="0x000000"  ]

;プラグイン適用
[plugin name="theme_kopanda_09_2"]

;ウインドウタイトル
[title name="ヤンデレイン　claude-3.5-sonnet机翻　by　ALyCE/jyxjyx1234"]

;コンフィグ停止
[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;メッセージボックスは非表示
@layopt layer="message" visible=false

;フォント変更する記述
[deffont size=23 face=游明朝 Demibold bold=false][resetfont]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;バックログ削除
[eval exp="tf.system.backlog = []"]

;●立ち絵　読み込みの記述
[jump storage=tatie.ks target="*start"]

[s]

;-----------------------------------------------------------------
*return
;立ち絵記述からここに戻る
;-----------------------------------------------------------------
*title

;タイトル画面へ移動
@jump storage="title.ks"

[s]
;-----------------------------------------------------------------
;BADから戻る場合
*endreturn
;-----------------------------------------------------------------
;タイトルの指定
[title name="ヤンデレイン　claude-3.5-sonnet机翻　by　ALyCE/jyxjyx1234"]

;プラグイン適用
[plugin name="theme_kopanda_09_2"]

;コンフィグ停止
[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;メッセージボックスは非表示
@layopt layer="message" visible=false

;フォント変更する記述
[deffont size=23 face=游明朝 Demibold bold=false][resetfont]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;バックログ削除
[eval exp="tf.system.backlog = []"]


;タイトル画面へ移動
@jump storage="title.ks"

[s]
;-----------------------------------------------------------------