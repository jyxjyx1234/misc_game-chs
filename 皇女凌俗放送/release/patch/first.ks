;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■システム初期設定　最終更新　03/15　更新者　白土
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土
*start

;■メッセージ履歴に文字情報を入れない
[history output=false enabled=false]
;■ロード＝ＮＧ　セーブ＝ＮＧ
[disablestore store=false restore=false]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■　変数初期化
[call storage="Define.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■　社内用マクロ定義
[call storage="macro.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■ＢＧＭ用プラグイン定義
[loadplugin module=wuvorbis.dll]
[loadplugin module=wumsadp.dll]


;■音声制御メニュー登録プラグイン定義
[call storage=gvolume.ks]
[gvolmenu name="BGM(&B)" control="bgm" signature="bgm"]
[gvolmenu name="ボイス(&V)" control=&sf.buf_vo signature="voice"]
[gvolmenu name="効果音(&S)" control=&sf.buf_se signature="se"]
;[gvolmenu name="システム音" control=&sf.buf_sys]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■スタッフスクロール用プラグイン定義
;// [call storage="staffroll.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■zoomプラグイン定義
;// [call storage="zoom.ks"]
;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■雨プラグイン定義
;■raininit
;■rainopt
;■rainuninit
;// [call storage="rain.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■スナップショットプラグイン定義
;■[snap file="スナップショット保存ファイル名"]
;// [call storage="snapshot.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■Ｒクリックモード定義
;■右クリックを打鍵されたら、
;■右クリック設定のファイルの、ルーチンに処理を移す
[rclick call=true storage="rclick.ks" target="*rclick" enabled=true]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■デバック用
;□デバック用ＣＧフルオープン
;[call storage="cgopen.ks"]
;□デバック用回想フルオープン
;[call storage="memopen.ks"]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■タイトル前処理
;■初期表示
[cm]
[bg storage="black"]
[ud time=500]
;■Ｒメニュー禁止
[rclick enabled=false]
;□回想出力＿禁止
[history output=false]

[jump storage="main.ks" target=*main]

