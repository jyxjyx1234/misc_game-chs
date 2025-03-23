*start

;タイトル画面処理は「title.ks」によって処理が行われるのでここには記述無し

[return]
[s]


;■ゲームタイトル画面のデザインに関する定義を行う
;テンプレートの基本情報に基づいた初期化を行う
*Initialize

;タイトル画面背景
[eval exp="tf.System_Config_Title_TitleBgImgfile='titlebg.jpg'"]
;タイトル画面再生BGM
[eval exp="tf.System_Config_Title_TitleBgmfile=''"]

;ボタン描画にかけるとランジョン時間
[eval exp="tf.System_Config_Title_ButtonTranTime=3000"]
[eval exp="tf.System_Config_Title_ButtonTranTime2=10"]


;はじめからボタン
[eval exp="tf.System_Config_Title_TitleBtAImgfile='title_menuBtA.png'"]
[eval exp="tf.System_Config_Title_TitleBtAXpos=105"]
[eval exp="tf.System_Config_Title_TitleBtAYpos=410"]

;つづきからボタン
[eval exp="tf.System_Config_Title_TitleBtBImgfile='title_menuBtB.png'"]
[eval exp="tf.System_Config_Title_TitleBtBXpos=105"]
[eval exp="tf.System_Config_Title_TitleBtBYpos=466"]

;コンフィグボタン
[eval exp="tf.System_Config_Title_TitleBtCImgfile='title_menuBtC.png'"]
[eval exp="tf.System_Config_Title_TitleBtCXpos=105"]
[eval exp="tf.System_Config_Title_TitleBtCYpos=576"]

;おまけボタン
[eval exp="tf.System_Config_Title_OmakeOpenFlg=0"]
[eval exp="tf.System_Config_Title_OmakeBtRun=1"]
[eval exp="tf.System_Config_Title_OmakeFlgStr='おまけモードはクリア後に利用できます'"]

[eval exp="tf.System_Config_Title_TitleBtDImgfile='title_menuBtD2.png'"]
[eval exp="tf.System_Config_Title_TitleBtDImgfile='title_menuBtD.png'"]
[eval exp="tf.System_Config_Title_TitleBtDXpos=105"]
[eval exp="tf.System_Config_Title_TitleBtDYpos=521"]

;おまけボタン２～利用できない時
[eval exp="tf.System_Config_Title_TitleBtD2Imgfile='title_menuBtD2.png'"]
[eval exp="tf.System_Config_Title_TitleBtD2Xpos=105"]
[eval exp="tf.System_Config_Title_TitleBtD2Ypos=521"]

;終了ボタン
[eval exp="tf.System_Config_Title_TitleBtEImgfile='title_menuBtE.png'"]
[eval exp="tf.System_Config_Title_TitleBtEXpos=105"]
[eval exp="tf.System_Config_Title_TitleBtEYpos=630"]

;ニューゲームファイル
[eval exp="tf.System_Config_Title_NewGameFile='scenario/all/all_0000.ks'"]


[iscript]

//-タイトル画面
tf.System_Se_Title_NewGame_Sel='';//タイトル画面　はじめから　に触れた時の効果音
tf.System_Se_Title_NewGame_Click='';//タイトル画面　はじめから　にクリックした時の効果音
tf.System_Se_Title_Load_Sel='';//タイトル画面　つづきから　に触れた時の効果音
tf.System_Se_Title_Load_Click='';//タイトル画面　つづきから　にクリックした時の効果音
tf.System_Se_Title_Config_Sel='';//タイトル画面　コンフィグ　に触れた時の効果音
tf.System_Se_Title_Config_Click='';//タイトル画面　コンフィグ　にクリックした時の効果音
tf.System_Se_Title_Omake_Sel='';//タイトル画面　おまけ　に触れた時の効果音
tf.System_Se_Title_Omake_Click='';//タイトル画面　おまけ　にクリックした時の効果音
tf.System_Se_Title_Exit_Sel='';//タイトル画面　終了　に触れた時の効果音
tf.System_Se_Title_Exit_Click='';//タイトル画面　終了　にクリックした時の効果音
//-タイトル画面～共通効果音の設定が必要な時に設定
if(tf.System_Se_Title_NewGame_Sel==''){tf.System_Se_Title_NewGame_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Title_NewGame_Click==''){tf.System_Se_Title_NewGame_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Title_Load_Sel==''){tf.System_Se_Title_Load_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Title_Load_Click==''){tf.System_Se_Title_Load_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Title_Config_Sel==''){tf.System_Se_Title_Config_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Title_Config_Click==''){tf.System_Se_Title_Config_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Title_Omake_Sel==''){tf.System_Se_Title_Omake_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Title_Omake_Click==''){tf.System_Se_Title_Omake_Click=tf.System_Se_AllSound_Click;}
if(tf.System_Se_Title_Exit_Sel==''){tf.System_Se_Title_Exit_Sel=tf.System_Se_AllSound_Sel;}
if(tf.System_Se_Title_Exit_Click==''){tf.System_Se_Title_Exit_Click=tf.System_Se_AllSound_Click;}
[endscript]


[return]
[s]





