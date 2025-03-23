*Title|title
[startanchor]

;初期化処理～最初に戻るが実行されたとき必要な変数を初期化
[eval exp="tf.SceneMode_RunFlg=0"]
[eval exp="kag.RunConfigModeFlg=0"]
[eval exp="kag.RunSaveLoadModeFlg=0"]
[eval exp="tf.ScemeJumping=0"]
[rclick enabled="false"]

[call storage=PeasAdvSystem_Config.ks target="*Initialize_Config"]

[wait time=200]
[cm]



;タイトル画面の描画
[playbgm storage="OPInst.ogg"]

[iscript]
function ScenejumptimerAction(ev)
{
	tf.Scenejumptimer.enabled=false;

    if(ev.target == tf.Scenejumptimer)
    {
        if(ev.type == "onTimer")
        {
			dm("シーンジャンプ監視タイマー動作");
			//登録されたシーンへジャンプ
			kag.process(f.SceneJump_Selectfile,f.SceneJump_Selecttarget);

			//;シーンジャンプが完了するとジャンプ先はクリアされる。
			//新たなジャンプ先は、ジャンプ先で設定しなければならない
			f.SceneJump_Selectfile = '';
			f.SceneJump_Selecttarget = '';
			
			tf.ScemeJumping=0;

		}
	}
}


	//シーンジャンプ実行の監視タイマー
	if( tf.Scenejumptimer === void ){
		tf.Scenejumptimer = new Timer(this, "ScenejumptimerAction");  // タイマーオブジェクトを作ります
		kag.add(tf.Scenejumptimer);               // タイマーオブジェクトをウィンドウに管理してもらいます
		tf.Scenejumptimer.interval = 100;    // イベントの発生間隔を 100 ミリ秒に設定します
		tf.Scenejumptimer.enabled = false;     // タイマーを無効にします（有効になるのは、シーンジャンプが実行された時のみとなる）
	}
[endscript]



[backlay]
[image storage="titlebg2.jpg" layer=0 page=back left=0 top=0 visible=true]
[sysbutton graphic="title_menuBtA" page=back top=410 left=105 enterse=&tf.System_Se_Title_NewGame_Sel clickse=&tf.System_Se_Title_NewGame_Click target="*NewGame"]
[sysbutton graphic="title_menuBtB" page=back top=466 left=105 enterse=&tf.System_Se_Title_Load_Sel clickse=&tf.System_Se_Title_Load_Click target="*SaveLoad"]
[sysbutton graphic="title_menuBtC" page=back top=576 left=105 enterse=&tf.System_Se_Title_Config_Sel clickse=&tf.System_Se_Title_Config_Click target="*Config"]
[sysbutton graphic="title_menuBtD" page=back top=521 left=105 enterse=&tf.System_Se_Title_Omake_Sel clickse=&tf.System_Se_Title_Omake_Click target="*Extra"]
[sysbutton graphic="title_menuBtE" page=back top=630 left=105 enterse=&tf.System_Se_Title_Exit_Sel clickse=&tf.System_Se_Title_Exit_Click exp="kag.close()"]
[trans method=crossfade time=3000]
[wt]
[s]

*recall

[rclick enabled="false" jump="false"]

[backlay]
[sysbutton_erase page=back]
[freeimage layer=10 page=back]
[freeimage layer=11 page=back]
[freeimage layer=12 page=back]
[freeimage layer=13 page=back]
[freeimage layer=14 page=back]
[image storage="titlebg2.jpg" layer=0 page=back left=0 top=0 visible=true]
[sysbutton graphic="title_menuBtA" page=back top=410 left=105 enterse=&tf.System_Se_Title_NewGame_Sel clickse=&tf.System_Se_Title_NewGame_Click target="*NewGame"]
[sysbutton graphic="title_menuBtB" page=back top=466 left=105 enterse=&tf.System_Se_Title_Load_Sel clickse=&tf.System_Se_Title_Load_Click target="*SaveLoad"]
[sysbutton graphic="title_menuBtC" page=back top=576 left=105 enterse=&tf.System_Se_Title_Config_Sel clickse=&tf.System_Se_Title_Config_Click target="*Config"]
[sysbutton graphic="title_menuBtD" page=back top=521 left=105 enterse=&tf.System_Se_Title_Omake_Sel clickse=&tf.System_Se_Title_Omake_Click target="*Extra"]
[sysbutton graphic="title_menuBtE" page=back top=630 left=105 enterse=&tf.System_Se_Title_Exit_Sel clickse=&tf.System_Se_Title_Exit_Click exp="kag.close()"]
[trans method=crossfade time=10]
[wt]
[s]


;■ニューゲーム■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*NewGame

[backlay]
[image storage=white layer=1 top=0 left=0 page=back  visible=true]
[sysbutton_erase page=back]
[trans method=crossfade time=1000]
[wt]

[history output=true enabled="true"]
[rclick call=false jump=false enabled=true]

[jump storage="scenario/all/all_00010.ks"]


[s]

;■セーブロード画面■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*SaveLoad

[iscript]
SysBtn_CreateSaveLoadViewMode(1,0);
[endscript]

[s]


;■コンフィグ画面■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*Config
[eval exp="sf.ConfigRunMode = 0"]

[iscript]

SysBtn_onConfigButtonClick(0);

[endscript]
[s]


;■おまけ画面■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*Extra


[sysbutton_erase page=fore]
[backlay]
[image storage=white layer=1 top=0 left=0 page=back  visible=true]

[trans method=crossfade time=10]
[wt]

[jump storage="scenario/PeasAdvSystem_Extra.ks"]
[s]



[jump storage="title.ks"]