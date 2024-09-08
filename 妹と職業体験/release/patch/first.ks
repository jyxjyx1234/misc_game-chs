;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;◇システム初期設定
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

*start

;◇Ｒメニュー禁止
[rclick enabled=false]

;◇メッセージ履歴出力＆表示禁止
[history output=false enabled=false]

;◇メッセージレイヤー消去制御　設定
[eval exp="kag.switchMessageLayerHiddenByUserEnabled = false"]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;◇システムボタンの定義
[eval exp="f.systemButton = ['system_quickSave','system_quickLoad','system_auto','system_skip','system_save','system_load','system_config','system_log']"]
[call storage="systembutton.ks"]

;◇マクロ定義
[call storage="macro.ks"]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;◇各dllのロード
[loadplugin module=krmovie.dll]
[loadplugin module=wuvorbis.dll]
[loadplugin module=wumsadp.dll]
[loadplugin module=extrans.dll]
[loadplugin module=FONTCHANGER.dll]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■各プラグインの読み込み

;◇スタッフスクロール用プラグイン
;[call storage="staffroll.ks"]

;◇zoomプラグイン
;[call storage="zoom.ks"]

;◇雨プラグイン
;[call storage="rain.ks"]

;◇スナップショットプラグイン
;[call storage="snapshot.ks"]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;■初回起動時に設定する項目
[jump target=*setUp_config cond="sf.firstPlay == 1"]

[eval exp="sf.firstPlay = 1"]

;◇メッセージ速度の刻み
[eval exp="kag.userChSpeed = kag.chSpeeds['fasterererer']"]
[eval exp="kag.saveSystemVariables()"]

;◇メッセージオート速度の刻み
[eval exp="kag.autoModePageWait = kag.autoModePageWaits.fasterererer"]
[eval exp="kag.saveSystemVariables()"]


;◇音量サイズの刻み（0～100％設定）
[eval exp="sf.volumeSize=[0,15,30,40,50,60,70,80,90,100]"]

;◇ＢＧＭボリューム設定
[eval exp="sf.bgm_volumeLevel = 5"]

;◇ボイスボリューム設定
[eval exp="sf.voice_volumeLevel =5"]

;◇効果音ボリューム設定
[eval exp="sf.se_volumeLevel = 5"]

;◇システムボリューム設定
[eval exp="sf.sys_volumeLevel = 5"]

;◇メッセージスキップ設定（既読）
[eval exp="sf.messageSkip = 1"]

;◇カットイン設定
[eval exp="sf.cutin = 1"]

;◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆

;■現在の音量反映
*setUp_config

;◇ＢＧＭボリューム
[bgmopt gvolume="&sf.volumeSize[sf.bgm_volumeLevel]"]

;◇ボイスボリューム
[seopt buf=0 gvolume="&sf.volumeSize[sf.voice_volumeLevel]"]

;◇効果音ボリューム
[seopt buf=2 gvolume="&sf.volumeSize[sf.se_volumeLevel]"]

;◇システムボリューム
[seopt buf=3 gvolume="&sf.volumeSize[sf.sys_volumeLevel]"]
[seopt buf=4 gvolume="&sf.volumeSize[sf.sys_volumeLevel]"]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[jump storage="main.ks"]
