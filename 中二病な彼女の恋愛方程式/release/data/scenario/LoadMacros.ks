;▼Oggプラグイン読込
[loadplugin module=wuvorbis.dll]
[loadplugin module=krkrfontpatch.dll]
;▼拡張トランジションプラグイン読込
[loadplugin module=extrans.dll]
;▼KaichoTrans(拡張トランジション)プラグイン読込
[loadplugin module=KaichoTrans.dll]

;▼ フルスクリーンの黒帯部分をクリックしたらプライマリレイヤクリックに変換してテキスト送りができちゃうよプラグイン(長い)
;↓開発版吉里吉里なら不要、通常版吉里吉里や吉里吉里Zなら、ないと黒帯を
;　クリックできない。今は無効化。
;  バグだかなんだか、吉里吉里ZでだけprimaryLayer上のレイヤのonMouseUp/Downが
; onClickOutOfPrimaryLayerに変換されちゃうので、吉里吉里Zでは使わないほうが
; よさそう？windowEx.dllを捻ればなんとかなるのか？
;[call storage="onClickOutOfPrimaryLayer.ks"]

;▼ママキタボタンプラグイン		; これは RunOnExit.ks より前の必要あり
;[call storage="Mamakita.ks"]
;▼履歴拡張プラグイン
[call storage="ExtHistoryLayer.ks"]
;▼WindowResizableプラグイン読込
;[call storage="WindowResizable.ks"]
;▼どこでもセーブプラグイン
[call storage="saveAnywhere.ks"]
;▼シナリオ通過フラグ管理プラグイン
[call storage="Experienced.ks"]
;▼ロード時なんか動かすプラグイン
;[call storage="RunOnLoad.ks"]
;▼終了時なんか動かすプラグイン	; これは Mamakita.ks より後の必要あり
;[call storage="RunOnExit.ks"]

;▼ExtSystemButtonプラグイン
[call storage="ExtSystemButton.ks"]
;▼ゆがみプラグイン
[call storage=ShimmerPlugin.ks]

;▼CtrlSkipプラグイン
[call storage="CtrlSkip.ks"]
;▼AltEnterFullScreenプラグイン
[call storage="AltEnterFullScreen.ks"]
;▼WaitPerCharNumプラグイン
[call storage="WaitPerCharNum.ks"]
;▼ExtClickSkipプラグイン
[call storage="ExtClickSkip.ks"]

;▼erubyプラグイン
[call storage="eruby.ks"]
;▼apimageプラグイン
[call storage="Macro_APimage.ks"]
;▼キャラクタ制御プラグイン
[call storage="Macro_CharLayers.ks"]
;ポップダウンの時にキャラクタを暗くしないのなら以下の行を有効化すること
[char_setopt popdownceil=255]
;▼ネームウィンドウ表示プラグイン
[call storage="NameWindowPlugin.ks"]
;▼顔ウィンドウ表示プラグイン
[call storage="FaceWindowPlugin.ks"]
;▼YesNoDialogLayerプラグイン
[call storage="YesNoDialogLayer.ks"]
;▼CutInプラグイン
[call storage="CutInPlugin.ks"]

;▼テキスト処理マクロ
[call storage="Macro_Text.ks"]
;▼レイヤー処理マクロ
[call storage="Macro_Layers.ks"]
;▼背景とキャラの時間エフェクト処理マクロ
[call storage="Macro_TimeEffect.ks"]
;▼効果音とBGM処理マクロ
[call storage="Macro_Sound.ks"]
;▼ボックスブラープラグイン
[call storage="BoxBlurPlugin.ks"]
;▼雪プラグイン改良版
;[call storage="SnowPlus.ks"]
;▼桜吹雪プラグイン
;[call storage="Sakura.ks"]

;▼TJSの基本関数群読み込み
[call storage="TJSFunctions.ks"]

;▼ セーブデータ読み込み高速化プラグイン
[call storage="highSpeedLabeler.ks"]

;▼ プレイ時間計測プラグイン
[call storage="PlayTime.ks"]

;▼ 選択肢プラグイン
[call storage="SelectPlugin.ks"]

;▼ MessageStoreプラグイン
[call storage="MessageStore.ks"]



;▼「その他ゲーム用マクロ読込
;[call storage="SpecificMacros.ks"]



[call storage="GraphicFramePlugin.ks"]

[return]
