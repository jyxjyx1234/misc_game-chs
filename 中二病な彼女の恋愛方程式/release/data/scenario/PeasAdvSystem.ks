[iscript]
function isExistSoundStorage(storage)
{
	if (Storages.isExistentStorage(storage) ||
	    Storages.isExistentStorage(storage + '.ogg') ||
	    Storages.isExistentStorage(storage + '.mp3') ||
	    Storages.isExistentStorage(storage + '.wav'))
		return 1;
	return 0;
}
[endscript]


;■ブラックアウト
[macro name=FADEOUT]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

;[if exp="mp.storage==''"]
;[backlay]
;[sysbtopt backvisible=false left=548 top=25]
;[layopt layer=0 page=back visible=false]
;[endif]
;[if exp="mp.storage!=''"]
;[sysbtopt backvisible=%bar|true left=548 top=25]
;[layopt layer=0 page=back visible=%bar|true]
;[eval exp="sf['ev_'+mp.storage]=1"]
;[endif]

[layopt layer=message0 page=back visible=%mes0|false]
[layopt layer=1 page=back visible=%lay1|false]
;[layopt layer=2 page=back visible=%lay2|false]
;[layopt layer=3 page=back visible=%lay3|false]

[backlay]

[image storage=%storage|black layer=%layer|base page=back  visible=true]

[trans time=%time|1500 method=crossfade]
;[trans time=%time|1500 method=universal rule=%rule vague=%vague|100 cond="mp.rule!=''"]
[wt]

[endmacro]

;■シナリオファイルの先頭に配置します。■■■■■■■■■■■■■■■■■■■■■■■■■■■
;これによってシナリオファイル先頭にてセーブラベルを作成します。これを忘れると正しくセーブできません。
;その他の初期化処理も行われます（将来的な動作
[macro name="SCENESTART"]
[label]

[if exp="sf.DebugModeFlg==1"]
	[title name=&mp.file]
[endif]
;シナリオが実行される状態になるとショートカットキーが利用可能になる
[eval exp="f.SCutEnableFlg = 1"]

[endmacro]

;■フェイスをメッセージウインドウに表示します■■■■■■■■■■■■■■■■■■■■■■■■■■■
;mp.storage フェイスの
[macro name="FACEVIEW"]
[position layer="message4" page="fore" visible="true" frame=&mp.storage opacity="255" top="450" left="-443" width="1280" height="438" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb"]
[position layer="message4" page="back" visible="true" frame=&mp.storage opacity="255" top="450" left="-443" width="1280" height="438" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb"]
[endmacro]

;■フェイスを消去■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name="FACEHIDE"]
[position layer="message4" page="fore" visible="false" frame=&mp.storage opacity="0" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb"]
[position layer="message4" page="back" visible="false" frame=&mp.storage opacity="0" top="500" width="1280" height="438" marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb"]
[character name="tibun"]
[endmacro]

;■イベントCGを表示する■■■■■■■■■■■■■■■■■■■■■■■■■■■
;mp.cgno ONにするCG番号　１～
;mp.sabunno ONにする差分番号　１～
[macro name="CG"]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

;CG閲覧番号は、ギャラリー上にて番号と開く番号が異なる為、それに対応
[eval exp="tf.wrkcgno = 0"]
;PAGE1
[if exp="mp.cgno=='01'"][eval exp="tf.wrkcgno = 1"][endif]
[if exp="mp.cgno=='02'"][eval exp="tf.wrkcgno = 2"][endif]
[if exp="mp.cgno=='03'"][eval exp="tf.wrkcgno = 3"][endif]
[if exp="mp.cgno=='04'"][eval exp="tf.wrkcgno = 4"][endif]
;[if exp="mp.cgno=='05'"][eval exp="tf.wrkcgno = 5"][endif]
[if exp="mp.cgno=='06'"][eval exp="tf.wrkcgno = 5"][endif]
[if exp="mp.cgno=='07'"][eval exp="tf.wrkcgno = 6"][endif]
[if exp="mp.cgno=='08'"][eval exp="tf.wrkcgno = 7"][endif]
[if exp="mp.cgno=='09'"][eval exp="tf.wrkcgno = 8"][endif]
[if exp="mp.cgno=='10'"][eval exp="tf.wrkcgno = 9"][endif]
;PAGE2
[if exp="mp.cgno=='11'"][eval exp="tf.wrkcgno = 10"][endif]
[if exp="mp.cgno=='12'"][eval exp="tf.wrkcgno = 11"][endif]
[if exp="mp.cgno=='13'"][eval exp="tf.wrkcgno = 12"][endif]
[if exp="mp.cgno=='14'"][eval exp="tf.wrkcgno = 13"][endif]
[if exp="mp.cgno=='15'"][eval exp="tf.wrkcgno = 14"][endif]
[if exp="mp.cgno=='16'"][eval exp="tf.wrkcgno = 15"][endif]
[if exp="mp.cgno=='17'"][eval exp="tf.wrkcgno = 16"][endif]
[if exp="mp.cgno=='18'"][eval exp="tf.wrkcgno = 17"][endif]
[if exp="mp.cgno=='19'"][eval exp="tf.wrkcgno = 18"][endif]
;PAGE3
[if exp="mp.cgno=='20'"][eval exp="tf.wrkcgno = 19"][endif]
[if exp="mp.cgno=='21'"][eval exp="tf.wrkcgno = 20"][endif]
[if exp="mp.cgno=='22'"][eval exp="tf.wrkcgno = 21"][endif]
[if exp="mp.cgno=='23'"][eval exp="tf.wrkcgno = 22"][endif]
[if exp="mp.cgno=='24'"][eval exp="tf.wrkcgno = 23"][endif]
[if exp="mp.cgno=='25'"][eval exp="tf.wrkcgno = 24"][endif]
[if exp="mp.cgno=='26'"][eval exp="tf.wrkcgno = 25"][endif]
[if exp="mp.cgno=='27'"][eval exp="tf.wrkcgno = 26"][endif]
[if exp="mp.cgno=='28'"][eval exp="tf.wrkcgno = 27"][endif]
;PAGE4
[if exp="mp.cgno=='29'"][eval exp="tf.wrkcgno = 28"][endif]
[if exp="mp.cgno=='30'"][eval exp="tf.wrkcgno = 29"][endif]
[if exp="mp.cgno=='31'"][eval exp="tf.wrkcgno = 30"][endif]
[if exp="mp.cgno=='32'"][eval exp="tf.wrkcgno = 31"][endif]
[if exp="mp.cgno=='33'"][eval exp="tf.wrkcgno = 32"][endif]
[if exp="mp.cgno=='34'"][eval exp="tf.wrkcgno = 33"][endif]
[if exp="mp.cgno=='35'"][eval exp="tf.wrkcgno = 34"][endif]
[if exp="mp.cgno=='36'"][eval exp="tf.wrkcgno = 35"][endif]
[if exp="mp.cgno=='37'"][eval exp="tf.wrkcgno = 36"][endif]
;PAGE5
[if exp="mp.cgno=='38'"][eval exp="tf.wrkcgno = 37"][endif]
[if exp="mp.cgno=='39'"][eval exp="tf.wrkcgno = 38"][endif]
[if exp="mp.cgno=='40'"][eval exp="tf.wrkcgno = 39"][endif]
[if exp="mp.cgno=='41'"][eval exp="tf.wrkcgno = 40"][endif]
[if exp="mp.cgno=='42'"][eval exp="tf.wrkcgno = 41"][endif]
[if exp="mp.cgno=='43'"][eval exp="tf.wrkcgno = 42"][endif]
[if exp="mp.cgno=='44'"][eval exp="tf.wrkcgno = 43"][endif]
[if exp="mp.cgno=='45'"][eval exp="tf.wrkcgno = 44"][endif]
[if exp="mp.cgno=='46'"][eval exp="tf.wrkcgno = 45"][endif]
;PAGE6
[if exp="mp.cgno=='47'"][eval exp="tf.wrkcgno = 46"][endif]
[if exp="mp.cgno=='48'"][eval exp="tf.wrkcgno = 47"][endif]
[if exp="mp.cgno=='49'"][eval exp="tf.wrkcgno = 48"][endif]
[if exp="mp.cgno=='50'"][eval exp="tf.wrkcgno = 49"][endif]
[if exp="mp.cgno=='51'"][eval exp="tf.wrkcgno = 50"][endif]
[if exp="mp.cgno=='52'"][eval exp="tf.wrkcgno = 51"][endif]
[if exp="mp.cgno=='53'"][eval exp="tf.wrkcgno = 52"][endif]
[if exp="mp.cgno=='54'"][eval exp="tf.wrkcgno = 53"][endif]
[if exp="mp.cgno=='55'"][eval exp="tf.wrkcgno = 54"][endif]
;PAGE7
[if exp="mp.cgno=='56'"][eval exp="tf.wrkcgno = 55"][endif]
[if exp="mp.cgno=='57'"][eval exp="tf.wrkcgno = 56"][endif]
[if exp="mp.cgno=='58'"][eval exp="tf.wrkcgno = 57"][endif]
[if exp="mp.cgno=='59'"][eval exp="tf.wrkcgno = 58"][endif]
[if exp="mp.cgno=='60'"][eval exp="tf.wrkcgno = 59"][endif]
[if exp="mp.cgno=='61'"][eval exp="tf.wrkcgno = 60"][endif]
[if exp="mp.cgno=='62'"][eval exp="tf.wrkcgno = 61"][endif]
[if exp="mp.cgno=='63'"][eval exp="tf.wrkcgno = 62"][endif]
[if exp="mp.cgno=='64'"][eval exp="tf.wrkcgno = 63"][endif]
;PAGE8
[if exp="mp.cgno=='65'"][eval exp="tf.wrkcgno = 64"][endif]
[if exp="mp.cgno=='66'"][eval exp="tf.wrkcgno = 65"][endif]
[if exp="mp.cgno=='67'"][eval exp="tf.wrkcgno = 66"][endif]
[if exp="mp.cgno=='68'"][eval exp="tf.wrkcgno = 67"][endif]
[if exp="mp.cgno=='69'"][eval exp="tf.wrkcgno = 68"][endif]
[if exp="mp.cgno=='70'"][eval exp="tf.wrkcgno = 68"][endif]
[if exp="mp.cgno=='71'"][eval exp="tf.wrkcgno = 69"][endif]
[if exp="mp.cgno=='72'"][eval exp="tf.wrkcgno = 70"][endif]
[if exp="mp.cgno=='73'"][eval exp="tf.wrkcgno = 71"][endif]
[if exp="mp.cgno=='74'"][eval exp="tf.wrkcgno = 72"][endif]

[if exp="mp.cgno=='75'"][eval exp="tf.wrkcgno = 73"][endif]
[if exp="mp.cgno=='76'"][eval exp="tf.wrkcgno = 74"][endif]
[if exp="mp.cgno=='77'"][eval exp="tf.wrkcgno = 75"][endif]
[if exp="mp.cgno=='78'"][eval exp="tf.wrkcgno = 76"][endif]
[if exp="mp.cgno=='79'"][eval exp="tf.wrkcgno = 77"][endif]
[if exp="mp.cgno=='80'"][eval exp="tf.wrkcgno = 78"][endif]
[if exp="mp.cgno=='81'"][eval exp="tf.wrkcgno = 79"][endif]
[if exp="mp.cgno=='82'"][eval exp="tf.wrkcgno = 80"][endif]
[if exp="mp.cgno=='83'"][eval exp="tf.wrkcgno = 81"][endif]

[if exp="mp.cgno=='84'"][eval exp="tf.wrkcgno = 82"][endif]
[if exp="mp.cgno=='85'"][eval exp="tf.wrkcgno = 83"][endif]
[if exp="mp.cgno=='86'"][eval exp="tf.wrkcgno = 84"][endif]
[if exp="mp.cgno=='87'"][eval exp="tf.wrkcgno = 85"][endif]
[if exp="mp.cgno=='88'"][eval exp="tf.wrkcgno = 86"][endif]


;閲覧したCGギャラリーフラグをONにする
;オープンフラグを１・どの差分CGをみてもギャラリーはオープンされる。
[eval exp="sf.GalleryMode_Flag[tf.wrkcgno-1][0] = 1"]
;閲覧した差分オープンフラグを書き換え
[eval exp="tf.sabunno = int mp.sabunno"]

[eval exp="sf.GalleryMode_Flag[tf.wrkcgno-1][tf.sabunno] = 1"]

[backlay]
[freeimage layer=1 page=back]
[eval exp="tf.filename='CGimage/'+'CG'+mp.cgno+'_'+mp.sabunno+'.png'"]
[image storage=&tf.filename left=0 top=0 layer=7 page=back visible=true]
[trans method=crossfade time=%time|1000]
[wt]

[endmacro]




;■イベントCGを消去する■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name="CGHIDE"]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

[backlay]
[freeimage layer=7 page=back]
[trans method=crossfade time=%time|1000]
[wt]

[endmacro]

;■シーンフラグを解除する■■■■■■■■■■■■■■■■■■■■■■■■■■■
;これを行うことでシーン回想画面の指定番号が開放されます
;mp.no ONにするシーン番号　１～
[macro name="SCENEFLG"]

;CG閲覧番号は、ギャラリー上にて番号と開く番号が異なる為、それに対応
;CG閲覧番号は、ギャラリー上にて番号と開く番号が異なる為、それに対応
[eval exp="tf.wrkcgno = 1"]

;PAGE1
[if exp="mp.no==1"][eval exp="tf.wrkcgno = 1"][endif]
[if exp="mp.no==2"][eval exp="tf.wrkcgno = 2"][endif]
[if exp="mp.no==3"][eval exp="tf.wrkcgno = 3"][endif]
[if exp="mp.no==4"][eval exp="tf.wrkcgno = 4"][endif]
[if exp="mp.no==5"][eval exp="tf.wrkcgno = 5"][endif]
[if exp="mp.no==6"][eval exp="tf.wrkcgno = 6"][endif]
[if exp="mp.no==7"][eval exp="tf.wrkcgno = 7"][endif]
[if exp="mp.no==8"][eval exp="tf.wrkcgno = 8"][endif]
[if exp="mp.no==9"][eval exp="tf.wrkcgno = 9"][endif]
;PAGE2
[if exp="mp.no==10"][eval exp="tf.wrkcgno = 10"][endif]
[if exp="mp.no==11"][eval exp="tf.wrkcgno = 11"][endif]
[if exp="mp.no==12"][eval exp="tf.wrkcgno = 12"][endif]
[if exp="mp.no==13"][eval exp="tf.wrkcgno = 13"][endif]
[if exp="mp.no==14"][eval exp="tf.wrkcgno = 14"][endif]
[if exp="mp.no==15"][eval exp="tf.wrkcgno = 15"][endif]
[if exp="mp.no==16"][eval exp="tf.wrkcgno = 16"][endif]
[if exp="mp.no==17"][eval exp="tf.wrkcgno = 17"][endif]
[if exp="mp.no==18"][eval exp="tf.wrkcgno = 18"][endif]
;PAGE3
[if exp="mp.no==19"][eval exp="tf.wrkcgno = 19"][endif]
[if exp="mp.no==20"][eval exp="tf.wrkcgno = 20"][endif]
[if exp="mp.no==21"][eval exp="tf.wrkcgno = 21"][endif]
[if exp="mp.no==22"][eval exp="tf.wrkcgno = 22"][endif]
[if exp="mp.no==23"][eval exp="tf.wrkcgno = 23"][endif]
[if exp="mp.no==24"][eval exp="tf.wrkcgno = 24"][endif]
[if exp="mp.no==25"][eval exp="tf.wrkcgno = 25"][endif]
[if exp="mp.no==26"][eval exp="tf.wrkcgno = 26"][endif]
[if exp="mp.no==27"][eval exp="tf.wrkcgno = 27"][endif]
;PAGE4
[if exp="mp.no==28"][eval exp="tf.wrkcgno = 28"][endif]
[if exp="mp.no==29"][eval exp="tf.wrkcgno = 29"][endif]
[if exp="mp.no==30"][eval exp="tf.wrkcgno = 30"][endif]
[if exp="mp.no==31"][eval exp="tf.wrkcgno = 31"][endif]
[if exp="mp.no==32"][eval exp="tf.wrkcgno = 32"][endif]
[if exp="mp.no==33"][eval exp="tf.wrkcgno = 33"][endif]
[if exp="mp.no==34"][eval exp="tf.wrkcgno = 34"][endif]
[if exp="mp.no==35"][eval exp="tf.wrkcgno = 35"][endif]
[if exp="mp.no==36"][eval exp="tf.wrkcgno = 36"][endif]
;PAGE5
[if exp="mp.no==37"][eval exp="tf.wrkcgno = 37"][endif]
[if exp="mp.no==38"][eval exp="tf.wrkcgno = 38"][endif]
[if exp="mp.no==39"][eval exp="tf.wrkcgno = 39"][endif]
[if exp="mp.no==40"][eval exp="tf.wrkcgno = 40"][endif]
[if exp="mp.no==41"][eval exp="tf.wrkcgno = 41"][endif]
[if exp="mp.no==42"][eval exp="tf.wrkcgno = 42"][endif]
[if exp="mp.no==43"][eval exp="tf.wrkcgno = 43"][endif]
[if exp="mp.no==44"][eval exp="tf.wrkcgno = 44"][endif]
[if exp="mp.no==45"][eval exp="tf.wrkcgno = 45"][endif]
;PAGE6
[if exp="mp.no==46"][eval exp="tf.wrkcgno = 46"][endif]
[if exp="mp.no==47"][eval exp="tf.wrkcgno = 47"][endif]
[if exp="mp.no==48"][eval exp="tf.wrkcgno = 48"][endif]
[if exp="mp.no==49"][eval exp="tf.wrkcgno = 49"][endif]
[if exp="mp.no==50"][eval exp="tf.wrkcgno = 50"][endif]
[if exp="mp.no==51"][eval exp="tf.wrkcgno = 51"][endif]
[if exp="mp.no==52"][eval exp="tf.wrkcgno = 52"][endif]
[if exp="mp.no==53"][eval exp="tf.wrkcgno = 53"][endif]
[if exp="mp.no==54"][eval exp="tf.wrkcgno = 54"][endif]
;PAGE7
[if exp="mp.no==55"][eval exp="tf.wrkcgno = 55"][endif]
[if exp="mp.no==56"][eval exp="tf.wrkcgno = 56"][endif]
[if exp="mp.no==57"][eval exp="tf.wrkcgno = 57"][endif]
[if exp="mp.no==58"][eval exp="tf.wrkcgno = 58"][endif]
[if exp="mp.no==59"][eval exp="tf.wrkcgno = 59"][endif]
[if exp="mp.no==60"][eval exp="tf.wrkcgno = 60"][endif]
[if exp="mp.no==61"][eval exp="tf.wrkcgno = 61"][endif]
[if exp="mp.no==62"][eval exp="tf.wrkcgno = 62"][endif]
[if exp="mp.no==63"][eval exp="tf.wrkcgno = 63"][endif]
;PAGE8
[if exp="mp.no==64"][eval exp="tf.wrkcgno = 64"][endif]
[if exp="mp.no==65"][eval exp="tf.wrkcgno = 65"][endif]
[if exp="mp.no==66"][eval exp="tf.wrkcgno = 66"][endif]
[if exp="mp.no==67"][eval exp="tf.wrkcgno = 67"][endif]
[if exp="mp.no==68"][eval exp="tf.wrkcgno = 68"][endif]
[if exp="mp.no==69"][eval exp="tf.wrkcgno = 69"][endif]
[if exp="mp.no==70"][eval exp="tf.wrkcgno = 70"][endif]
[if exp="mp.no==71"][eval exp="tf.wrkcgno = 71"][endif]
[if exp="mp.no==72"][eval exp="tf.wrkcgno = 72"][endif]
;PAGE9
[if exp="mp.no==73"][eval exp="tf.wrkcgno = 73"][endif]
[if exp="mp.no==74"][eval exp="tf.wrkcgno = 74"][endif]
[if exp="mp.no==75"][eval exp="tf.wrkcgno = 75"][endif]
[if exp="mp.no==76"][eval exp="tf.wrkcgno = 76"][endif]
[if exp="mp.no==77"][eval exp="tf.wrkcgno = 77"][endif]
[if exp="mp.no==78"][eval exp="tf.wrkcgno = 78"][endif]
[if exp="mp.no==79"][eval exp="tf.wrkcgno = 79"][endif]
[if exp="mp.no==80"][eval exp="tf.wrkcgno = 80"][endif]
[if exp="mp.no==81"][eval exp="tf.wrkcgno = 81"][endif]
;PAGE10
[if exp="mp.no==82"][eval exp="tf.wrkcgno = 82"][endif]
[if exp="mp.no==83"][eval exp="tf.wrkcgno = 83"][endif]
[if exp="mp.no==84"][eval exp="tf.wrkcgno = 84"][endif]
[if exp="mp.no==85"][eval exp="tf.wrkcgno = 85"][endif]
[if exp="mp.no==86"][eval exp="tf.wrkcgno = 86"][endif]


;閲覧したCGギャラリーフラグをONにする
;オープンフラグを１・どの差分CGをみてもギャラリーはオープンされる。
[eval exp="sf.SceneMode_Flag[tf.wrkcgno-1] = 1"]

[endmacro]




;■セーブ可能箇所の指定ができる改ページマクロ■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name="np"]
[if exp="tf.playcvflg==1"]
	[endhact]
[endif]
[eval exp="tf.playcvflg=0"]
[p]
[if exp="kag.autoMode==1"]
[ws buf=1]
[endif]
[cm]
[if exp="sf.ConfigState10==1"]
[stopse buf="1"]
[endif]

;実験
;ボタンを削除
;これは、システムボタンがロード時にリストアされる際、重複して登録されるので
;仮としてこのようにしてある。

[if exp="f.UnderMenuSysFlg == 1"]
	[sysbutton_erase page=fore]
[endif]

[label]

[if exp="f.UnderMenuSysFlg == 1"]
	[UNDERSYSTEM]
[endif]
[if exp="f.RightMenuSysFlg == 1"]
	[RIGHTSYSTEM]
[endif]


[cm]
[endmacro]

;■セーブ可能箇所の指定ができる改ページマクロ・シーンジャンプ用の改ページ強制終了■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name="npend"]
[if exp="kag.autoMode==1"]
[ws buf=1]
[endif]
[if exp="tf.playcvflg==1"]
	[endhact]
[endif]
[eval exp="tf.playcvflg=0"]
[cm]
[if exp="sf.ConfigState10==1"]
[stopse buf="1"]
[endif]


[endmacro]


;■指定キャラクターの音声ファイルを再生■■■■■■■■■■■■■■■■■■■■■■■■■■■
;音声再生ボリュームの影響をうける
[iscript]
function createHistoryActionExp(buf, storage)
{
    // メッセージ履歴をクリックしたときに実行する TJS 式を生成する
    return "kag.se[" + buf  +"].play(%[ storage : '" + storage + "' ])";
}
[endscript]
[macro name="playcv"]

;[label]

;音声再生フラグによって再生するかを決定
[eval exp="tf.playcvflg=0"]
[if exp="sf.config_Character_Fontcolor!==void"]
;この処理はキャラ数分作る必要あり
;マクロ内ではラベルが利用できない為となる。
[if exp="mp.name==sf.config_Character_Fontcolor[0][0]"]
	[if exp="sf.config_Character_Fontcolor[0][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]

	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[1][0]"]
	[if exp="sf.config_Character_Fontcolor[1][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]
	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[2][0]"]
	[if exp="sf.config_Character_Fontcolor[2][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]

	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[3][0]"]
	[if exp="sf.config_Character_Fontcolor[3][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]

	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[4][0]"]
	[if exp="sf.config_Character_Fontcolor[4][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]

	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[5][0]"]
	[if exp="sf.config_Character_Fontcolor[5][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]

	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[6][0]"]
	[if exp="sf.config_Character_Fontcolor[6][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]

	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[7][0]"]
	[if exp="sf.config_Character_Fontcolor[7][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]
	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[8][0]"]
	[if exp="sf.config_Character_Fontcolor[8][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]
	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[9][0]"]
	[if exp="sf.config_Character_Fontcolor[9][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]
	[endif]
[endif]
[if exp="mp.name==sf.config_Character_Fontcolor[10][0]"]
	[if exp="sf.config_Character_Fontcolor[10][4]==1"]
		[eval exp="tf.playcvflg=1"]
	[else]
		[eval exp="tf.playcvflg=0"]
	[endif]
[endif]





;//プレイCVは、ボイス再生フラグが１でないと再生されない
;//これを無視して再生したいならplayseを使うべき
[if exp="tf.playcvflg==1"]
	;メッセージ履歴での音声再生

	[hact exp="&createHistoryActionExp(1, mp.storage)"]
	[hbutton grahpic="history_voice2.png" exp="&createHistoryActionExp(1, mp.storage)" idx="30"]
	[hlocate pos=0 ipos=0]

	[if exp="kag.skipMode==0"]
		[if exp="isExistSoundStorage(mp.storage)"]
			[playse storage=&mp.storage buf=1]
		[endif]
	[endif]

[endif]
[endif]

[endmacro]


;■メッセージ・下部システムと右システムを両方描画します■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=SYSTEMMENU]

[MESSAGEWINDOW]
[UNDERSYSTEM]
[RIGHTSYSTEM]

[endmacro]

;■メッセージ・下部システムと右システムを両方消します■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=HIDESYSTEMMENU]

[MESSAGEWINDOW_HIDE]
[UNDERSYSTEM_HIDE]
[RIGHTSYSTEM_HIDE]

[endmacro]


;■画面下部のシステムを描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;この処理は、TJS板も存在するので修正する時は、そちらも弄らなければならないので注意
[macro name=UNDERSYSTEM]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

[eval exp="f.UnderMenuSysFlg=1"]

[eval exp="sf.UnderMenuYpos=763"]
;[eval exp="sf.UnderMenuYpos=0"]

[if exp="tf.SceneMode_RunFlg == 0"]
;	[backlay]
;	[layopt layer="message1" page=fore left=&tf.System_Config_USys_ImageXpos top=&tf.System_Config_USys_ImageYpos]
;	[position layer="message1" page=fore frame="&tf.System_Config_USys_ImageFile" visible=true]
	[eval exp="f.UnderMenuSysFlg=1"]

	[if exp="tf.System_Config_USys_ConfigBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt1_BtFile name=&tf.System_BtImg_MsgBt1_BtName page=fore left=&tf.System_BtImg_MsgBt1_Xpos top=&tf.System_BtImg_MsgBt1_Ypos exp=&tf.System_BtImg_MsgBt1_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt1_Sel" onenter="&tf.System_BtImg_MsgBt1_InFunc" onleave="&tf.System_BtImg_MsgBt1_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_MsgLogBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt2_BtFile name=&tf.System_BtImg_MsgBt2_BtName page=fore left=&tf.System_BtImg_MsgBt2_Xpos top=&tf.System_BtImg_MsgBt2_Ypos exp=&tf.System_BtImg_MsgBt2_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt2_Sel" onenter="&tf.System_BtImg_MsgBt2_InFunc" onleave="&tf.System_BtImg_MsgBt2_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_AutoBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt3_BtFile name=&tf.System_BtImg_MsgBt3_BtName page=fore left=&tf.System_BtImg_MsgBt3_Xpos top=&tf.System_BtImg_MsgBt3_Ypos exp=&tf.System_BtImg_MsgBt3_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt3_Sel" onenter="&tf.System_BtImg_MsgBt3_InFunc" onleave="&tf.System_BtImg_MsgBt3_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_SkipBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt4_BtFile name=&tf.System_BtImg_MsgBt4_BtName page=fore left=&tf.System_BtImg_MsgBt4_Xpos top=&tf.System_BtImg_MsgBt4_Ypos exp=&tf.System_BtImg_MsgBt4_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt4_Sel" onenter="&tf.System_BtImg_MsgBt4_InFunc" onleave="&tf.System_BtImg_MsgBt4_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_JumpBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt5_BtFile name=&tf.System_BtImg_MsgBt5_BtName page=fore left=&tf.System_BtImg_MsgBt5_Xpos top=&tf.System_BtImg_MsgBt5_Ypos exp=&tf.System_BtImg_MsgBt5_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt5_Sel" onenter="&tf.System_BtImg_MsgBt5_InFunc" onleave="&tf.System_BtImg_MsgBt5_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_QSaveBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt6_BtFile name=&tf.System_BtImg_MsgBt6_BtName page=fore left=&tf.System_BtImg_MsgBt6_Xpos top=&tf.System_BtImg_MsgBt6_Ypos exp=&tf.System_BtImg_MsgBt6_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt6_Sel" onenter="&tf.System_BtImg_MsgBt6_InFunc" onleave="&tf.System_BtImg_MsgBt6_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_QLoadBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt7_BtFile name=&tf.System_BtImg_MsgBt7_BtName page=fore left=&tf.System_BtImg_MsgBt7_Xpos top=&tf.System_BtImg_MsgBt7_Ypos exp=&tf.System_BtImg_MsgBt7_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt7_Sel" onenter="&tf.System_BtImg_MsgBt7_InFunc" onleave="&tf.System_BtImg_MsgBt7_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_SaveBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt8_BtFile name=&tf.System_BtImg_MsgBt8_BtName page=fore left=&tf.System_BtImg_MsgBt8_Xpos top=&tf.System_BtImg_MsgBt8_Ypos exp=&tf.System_BtImg_MsgBt8_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt8_Sel" onenter="&tf.System_BtImg_MsgBt8_InFunc" onleave="&tf.System_BtImg_MsgBt8_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_LoadBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt9_BtFile name=&tf.System_BtImg_MsgBt9_BtName page=fore left=&tf.System_BtImg_MsgBt9_Xpos top=&tf.System_BtImg_MsgBt9_Ypos exp=&tf.System_BtImg_MsgBt9_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt9_Sel" onenter="&tf.System_BtImg_MsgBt9_InFunc" onleave="&tf.System_BtImg_MsgBt9_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_MinBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt10_BtFile name=&tf.System_BtImg_MsgBt10_BtName page=fore left=&tf.System_BtImg_MsgBt10_Xpos top=&tf.System_BtImg_MsgBt10_Ypos exp=&tf.System_BtImg_MsgBt10_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt10_Sel" onenter="&tf.System_BtImg_MsgBt10_InFunc" onleave="&tf.System_BtImg_MsgBt10_OutFunc"]
	[endif]
;	[trans method=crossfade time=%time|200]
;	[wt canskip=true]
[else]
	;回想シーン時～セーブ系は利用不可となる
;	[backlay]
;	[layopt layer=message1 page=back left=&tf.System_Config_USys_ImageXpos top=&tf.System_Config_USys_ImageYpos]
;	[position layer=message1 page=fore frame="&tf.System_Config_USys_ImageFile" visible=true]
	[eval exp="f.UnderMenuSysFlg=1"]

	[if exp="tf.System_Config_USys_ConfigBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt1_BtFile name=&tf.System_BtImg_MsgBt1_BtName page=fore left=&tf.System_BtImg_MsgBt1_Xpos top=&tf.System_BtImg_MsgBt1_Ypos exp=&tf.System_BtImg_MsgBt1_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt1_Sel" onenter="&tf.System_BtImg_MsgBt1_InFunc" onleave="&tf.System_BtImg_MsgBt1_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_MsgLogBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt2_BtFile name=&tf.System_BtImg_MsgBt2_BtName page=fore left=&tf.System_BtImg_MsgBt2_Xpos top=&tf.System_BtImg_MsgBt2_Ypos exp=&tf.System_BtImg_MsgBt2_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt2_Sel" onenter="&tf.System_BtImg_MsgBt2_InFunc" onleave="&tf.System_BtImg_MsgBt2_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_AutoBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt3_BtFile name=&tf.System_BtImg_MsgBt3_BtName page=fore left=&tf.System_BtImg_MsgBt3_Xpos top=&tf.System_BtImg_MsgBt3_Ypos exp=&tf.System_BtImg_MsgBt3_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt3_Sel" onenter="&tf.System_BtImg_MsgBt3_InFunc" onleave="&tf.System_BtImg_MsgBt3_OutFunc"]
	[endif]
	[if exp="tf.System_Config_USys_SkipBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt4_BtFile name=&tf.System_BtImg_MsgBt4_BtName page=fore left=&tf.System_BtImg_MsgBt4_Xpos top=&tf.System_BtImg_MsgBt4_Ypos exp=&tf.System_BtImg_MsgBt4_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt4_Sel" onenter="&tf.System_BtImg_MsgBt4_InFunc" onleave="&tf.System_BtImg_MsgBt4_OutFunc"]
	[endif]

	[if exp="tf.System_Config_USys_MinBtUse == 1"]
		[sysbutton graphic=&tf.System_BtImg_MsgBt10_BtFile name=&tf.System_BtImg_MsgBt10_BtName page=fore left=&tf.System_BtImg_MsgBt10_Xpos top=&tf.System_BtImg_MsgBt10_Ypos exp=&tf.System_BtImg_MsgBt10_ExpFunc enterse="&tf.System_Se_MessageWindow_Bt10_Sel" onenter="&tf.System_BtImg_MsgBt10_InFunc" onleave="&tf.System_BtImg_MsgBt10_OutFunc"]
	[endif]
;	[trans method=crossfade time=%time|200]
;	[wt canskip=true]

[endif]

[endmacro]



;■画面下部のシステムを消去■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=UNDERSYSTEM_HIDE]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

[eval exp="f.UnderMenuSysFlg=0"]

[backlay]
[sysbutton_erase page=back]
[layopt layer=message1 page=back visible=false]
[trans method=crossfade time=%time|200]
[wt canskip=true]

[endmacro]

;■画面右側のシステムを描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=RIGHTSYSTEM]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]


[if exp="tf.SceneMode_RunFlg == 0"]
	[if exp="sf.ConfigState8 == 1"]
		[eval exp="f.RightMenuSysFlg=1"]

		[backlay]
	
		[layopt layer=message2 page=back left=&tf.System_BtImg_QSaveLoadSot_BaseXpos top=&tf.System_BtImg_QSaveLoadSot_BaseYpos]
		[position layer=message2 page=back frame=&tf.System_BtImg_QSaveLoadSot_BaseImgFileOff visible=true]
		[sysbutton graphic=&tf.System_BtImg_QSaveLoadSot_BaseImgFileOff name="System_SideWindow" page=back top=&tf.System_BtImg_QSaveLoadSot_BaseYpos left=&tf.System_BtImg_QSaveLoadSot_BaseXpos onenter="SysBtn_CreateRightMenuButton(1)" exp=""]


		[trans method=crossfade time=%time|200]
		[wt canskip=true]
	[endif]

[endif]


[endmacro]

;■画面右側のシステムを消去■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=RIGHTSYSTEM_HIDE]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

[eval exp="f.RightMenuSysFlg=0"]

[backlay]
[sysbutton_erase page=back]
[layopt layer=message2 page=back visible=false]
[trans method=crossfade time=%time|200]
[wt canskip=true]


[endmacro]

;■メッセージウインドウを描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=MESSAGEWINDOW]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

[eval exp="f.MessageWindowFlg=1"]


[backlay]
[layopt layer=message0 page=back left=&tf.System_Config_Msg_PosX top=&tf.System_Config_Msg_PosY]
[layopt layer=message3 page=back left=&tf.System_Config_Msg_PosX top=&tf.System_Config_Msg_PosY]

[position layer=message0 page=back frame="&tf.System_Config_Msg_ImageFile" visible=true opacity=&sf.Config_MsgOpacity]
[position layer=message3 page=back visible=true width=&tf.System_Config_Msg_ImageFileWidth height=&tf.System_Config_Msg_ImageFileHeight marginl="&tf.System_Config_Msg_marginl" margint="&tf.System_Config_Msg_margint" marginr="&tf.System_Config_Msg_marginr" marginb="&tf.System_Config_Msg_marginb" opacity="0"]
[current layer=message3 page=fore]

[trans method=crossfade time=%time|200]
[wt canskip=true]
[endmacro]

;■メッセージウインドウを描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=MESSAGEWINDOW_HIDE]
[eval exp="mp.time = 0" cond="sf.ConfigState3 === 1"]

[eval exp="f.MessageWindowFlg=0"]

[backlay]
[sysbutton_erase page=back]
[layopt layer=message0 page=back visible=false]
[trans method=crossfade time=%time|200]
[wt canskip=true]
[endmacro]

;■キャラクターフェイスの表示■■■■■■■■■■■■■■■■■■■■■■■■■■■
;キャラクターフェイスをウインドウに表示します
;このフェイスはウインドウとして表示され、メッセージウインドウに連動して消したりできます。
[macro name="face"]

[endmacro]


;■キャラクター名の指定■■■■■■■■■■■■■■■■■■■■■■■■■■■
;キャラ毎に指定されたフォントカラーを設定
[macro name="character"]


[eval exp="tf.colorR=0xFF<<16"]
[eval exp="tf.colorG=0xFF<<8"]
[eval exp="tf.colorB=0xFF"]
[eval exp="tf.msgcolor=&tf.colorR|&tf.colorG|&tf.colorB"]
[eval exp="tf.name=mp.name"]

[if exp="sf.config_Character_Fontcolor[0][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[0][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[0][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[0][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[1][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[1][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[1][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[1][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[2][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[2][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[2][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[2][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[3][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[3][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[3][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[3][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[4][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[4][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[4][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[4][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[5][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[5][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[5][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[5][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[6][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[6][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[6][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[6][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[7][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[7][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[7][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[7][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[8][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[8][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[8][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[8][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[9][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[9][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[9][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[9][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[10][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[10][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[10][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[10][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[11][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[11][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[11][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[11][3]"]
[endif]
[if exp="sf.config_Character_Fontcolor[12][0] == &mp.name"]
	[eval exp="tf.colorR=sf.config_Character_Fontcolor[12][1]"]
	[eval exp="tf.colorG=sf.config_Character_Fontcolor[12][2]"]
	[eval exp="tf.colorB=sf.config_Character_Fontcolor[12][3]"]
[endif]
[if exp="'智秋' == &mp.name"]
	[eval exp="tf.colorR=255"]
	[eval exp="tf.colorG=255"]
	[eval exp="tf.colorB=255"]
[endif]

[eval exp="tf.colorR=tf.colorR<<16"]
[eval exp="tf.colorG=tf.colorG<<8"]
[eval exp="tf.colorB=tf.colorB"]
[eval exp="sf.msgcolor=&tf.colorR|&tf.colorG|&tf.colorB"]

@font color=&sf.msgcolor
[hr]
[endmacro]



;■仮想キーコードの取得■■■■■■■■■■■■■■■■■■■■■■■■■■■
;指定アクションに割り振られているコードを返す
;mp.code アクションコード番号
[macro name="getkeycode"]

;//メッセージ次●
[if exp="mp.code == 0"]
	[getkeycodeParam code=&sf.Config_Key_MsgNext]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;//メッセージ消去●
[if exp="mp.code == 1"]
	[getkeycodeParam code=&sf.Config_Key_MsgHide]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;//システム画面呼び出し●
[if exp="mp.code == 2"]
	[getkeycodeParam code=&sf.Config_Key_SysCall]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;//選択肢の移動・上下
[if exp="mp.code == 3"]
	[getkeycodeParam code=&sf.Config_Key_SelUP]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
[if exp="mp.code == 4"]
	[getkeycodeParam code=&sf.Config_Key_SelDown]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]


;//ログ画面呼び出し●
[if exp="mp.code == 5"]
	[getkeycodeParam code=&sf.Config_Key_LogCall]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;//メッセージスキップ
[if exp="mp.code == 6"]
	[getkeycodeParam code=&sf.Config_Key_MsgSkip]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;クイックセーブ●
[if exp="mp.code == 7"]
	[getkeycodeParam code=&sf.Config_Key_QuickSave]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;クイックロード●
[if exp="mp.code == 8"]
	[getkeycodeParam code=&sf.Config_Key_QuickLoad]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;セーブ●
[if exp="mp.code == 9"]
	[getkeycodeParam code=&sf.Config_Key_Save]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;ロード●
[if exp="mp.code == 10"]
	[getkeycodeParam code=&sf.Config_Key_Load]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;スキップモード切替
[if exp="mp.code == 11"]
	[getkeycodeParam code=&sf.Config_Key_SkipMode]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
;シーンジャンプ切替●
[if exp="mp.code == 12"]
	[getkeycodeParam code=&sf.Config_Key_SceneJump]
	[eval exp="tf.Config_Key_GetCode=tf.Config_Key_GetParam"]
[endif]
[endmacro]

;■仮想キーコードの取得■■■■■■■■■■■■■■■■■■■■■■■■■■■
;指定アクションに割り振られているコードを返す
;mp.code 仮想キーコード
[macro name="getkeycodeParam"]

[if exp="mp.code == 0x08"]
	[eval exp="tf.Config_Key_GetParam='BACK'"]
[endif]
[if exp="mp.code == 0x09"]
	[eval exp="tf.Config_Key_GetParam='TAB'"]
[endif]
[if exp="mp.code == 0x0D"]
	[eval exp="tf.Config_Key_GetParam='ENTER'"]
[endif]
[if exp="mp.code == 0x10"]
	[eval exp="tf.Config_Key_GetParam='SHIFT'"]
[endif]
[if exp="mp.code == 0x11"]
	[eval exp="tf.Config_Key_GetParam='CTRL'"]
[endif]
[if exp="mp.code == 0x14"]
	[eval exp="tf.Config_Key_GetParam='CAP'"]
[endif]
[if exp="mp.code == 0x15"]
	[eval exp="tf.Config_Key_GetParam='KANA'"]
[endif]
[if exp="mp.code == 0x1B"]
	[eval exp="tf.Config_Key_GetParam='ESC'"]
[endif]
[if exp="mp.code == 0x20"]
	[eval exp="tf.Config_Key_GetParam='SPACE'"]
[endif]
[if exp="mp.code == 0x25"]
	[eval exp="tf.Config_Key_GetParam='LEFT'"]
[endif]
[if exp="mp.code == 0x26"]
	[eval exp="tf.Config_Key_GetParam='UP'"]
[endif]
[if exp="mp.code == 0x27"]
	[eval exp="tf.Config_Key_GetParam='RIGHT'"]
[endif]
[if exp="mp.code == 0x28"]
	[eval exp="tf.Config_Key_GetParam='DOWN'"]
[endif]
[if exp="mp.code == 0x29"]
	[eval exp="tf.Config_Key_GetParam='SELECT'"]
[endif]
[if exp="mp.code == 0x2E"]
	[eval exp="tf.Config_Key_GetParam='DELETE'"]
[endif]
[if exp="mp.code == 0x2F"]
	[eval exp="tf.Config_Key_GetParam='HELP'"]
[endif]
[if exp="mp.code == 0x30"]
	[eval exp="tf.Config_Key_GetParam='0'"]
[endif]
[if exp="mp.code == 0x31"]
	[eval exp="tf.Config_Key_GetParam='1'"]
[endif]
[if exp="mp.code == 0x32"]
	[eval exp="tf.Config_Key_GetParam='2'"]
[endif]
[if exp="mp.code == 0x33"]
	[eval exp="tf.Config_Key_GetParam='3'"]
[endif]
[if exp="mp.code == 0x34"]
	[eval exp="tf.Config_Key_GetParam='4'"]
[endif]
[if exp="mp.code == 0x35"]
	[eval exp="tf.Config_Key_GetParam='5'"]
[endif]
[if exp="mp.code == 0x36"]
	[eval exp="tf.Config_Key_GetParam='6'"]
[endif]
[if exp="mp.code == 0x37"]
	[eval exp="tf.Config_Key_GetParam='7'"]
[endif]
[if exp="mp.code == 0x38"]
	[eval exp="tf.Config_Key_GetParam='8'"]
[endif]
[if exp="mp.code == 0x39"]
	[eval exp="tf.Config_Key_GetParam='9'"]
[endif]
[if exp="mp.code == 0x41"]
	[eval exp="tf.Config_Key_GetParam='A'"]
[endif]
[if exp="mp.code == 0x42"]
	[eval exp="tf.Config_Key_GetParam='B'"]
[endif]
[if exp="mp.code == 0x43"]
	[eval exp="tf.Config_Key_GetParam='C'"]
[endif]
[if exp="mp.code == 0x44"]
	[eval exp="tf.Config_Key_GetParam='D'"]
[endif]
[if exp="mp.code == 0x45"]
	[eval exp="tf.Config_Key_GetParam='E'"]
[endif]
[if exp="mp.code == 0x46"]
	[eval exp="tf.Config_Key_GetParam='F'"]
[endif]
[if exp="mp.code == 0x47"]
	[eval exp="tf.Config_Key_GetParam='G'"]
[endif]
[if exp="mp.code == 0x48"]
	[eval exp="tf.Config_Key_GetParam='H'"]
[endif]
[if exp="mp.code == 0x49"]
	[eval exp="tf.Config_Key_GetParam='I'"]
[endif]
[if exp="mp.code == 0x4A"]
	[eval exp="tf.Config_Key_GetParam='J'"]
[endif]
[if exp="mp.code == 0x4B"]
	[eval exp="tf.Config_Key_GetParam='K'"]
[endif]
[if exp="mp.code == 0x4C"]
	[eval exp="tf.Config_Key_GetParam='L'"]
[endif]
[if exp="mp.code == 0x4D"]
	[eval exp="tf.Config_Key_GetParam='M'"]
[endif]
[if exp="mp.code == 0x4E"]
	[eval exp="tf.Config_Key_GetParam='N'"]
[endif]
[if exp="mp.code == 0x4F"]
	[eval exp="tf.Config_Key_GetParam='O'"]
[endif]
[if exp="mp.code == 0x50"]
	[eval exp="tf.Config_Key_GetParam='P'"]
[endif]
[if exp="mp.code == 0x51"]
	[eval exp="tf.Config_Key_GetParam='Q'"]
[endif]
[if exp="mp.code == 0x52"]
	[eval exp="tf.Config_Key_GetParam='R'"]
[endif]
[if exp="mp.code == 0x53"]
	[eval exp="tf.Config_Key_GetParam='S'"]
[endif]
[if exp="mp.code == 0x54"]
	[eval exp="tf.Config_Key_GetParam='T'"]
[endif]
[if exp="mp.code == 0x55"]
	[eval exp="tf.Config_Key_GetParam='U'"]
[endif]
[if exp="mp.code == 0x56"]
	[eval exp="tf.Config_Key_GetParam='V'"]
[endif]
[if exp="mp.code == 0x57"]
	[eval exp="tf.Config_Key_GetParam='W'"]
[endif]
[if exp="mp.code == 0x58"]
	[eval exp="tf.Config_Key_GetParam='X'"]
[endif]
[if exp="mp.code == 0x59"]
	[eval exp="tf.Config_Key_GetParam='Y'"]
[endif]
[if exp="mp.code == 0x5A"]
	[eval exp="tf.Config_Key_GetParam='Z'"]
[endif]
[endmacro]

;■ショートカットフラグ■■■■■■■■■■■■■■■■■■■■■■■■■■■
;タイトル画面やシステム系画面でショートカットが利用できないフラグ
[macro name="EnableSCutFlg"]
	;//０＝ショートカット利用できない　１＝利用できる
	[eval exp="f.SCutEnableFlg=&mp.enable"]
[endmacro]

;■強制ジャンプ先を指定■■■■■■■■■■■■■■■■■■■■■■■■■■■
;ターゲットファイル・ラベルを空文字にするとシーンジャンプできない状態となる。
;ここで指定してもジャンプ管理配列になければジャンプはできない。（強制時は別
;ターゲットファイル・ラベル名がセットされていても、通過フラグがONでない場合はシーンジャンプできない
;この制限は、パラメータの強制フラグによって回避し強制シーンジャンプ可能となる。
;mp.storage ターゲットシナリオファイル
;mp.target　ターゲットラベル
;mp.Runflg 　強制フラグ　0=通過フラグがONでなければジャンプさせない 1=強制的にジャンプを許可
[macro name="SetSJumpTarget"]
	[eval exp="f.SceneJump_RunFlg=mp.runflg"]
	[eval exp="f.SceneJump_Selectfile=mp.storage"]
	[eval exp="f.SceneJump_Selecttarget=mp.target"]
[endmacro]
;■シーンジャンプ通過フラグをONOFF■■■■■■■■■■■■■■■■■■■■■■■■■■■
;シーン通過フラグのONOFFを切り替えます。渡されたファイル名・ラベル名が配列に存在しないときは
;意味がなくなります。渡すパラメータは予めシーンジャンプ配列に登録しておかなければなりません。
;mp.storage ターゲットシナリオファイル
;mp.target　ターゲットラベル
;mp.Runflg 　フラグ　0=通過フラグがOFF 1=通過フラグがON
[macro name="SetSJumpFlg"]	

[eval exp="global.SysBtn_SceneJumpModeFlg(mp.storage, mp.target, mp.runflg)"]



[endmacro]


;■シーンジャンプターゲットをクリア■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name="SceneJumpClear"]	

[eval exp="f.SceneJump_Selectfile=''"]
[eval exp="f.SceneJump_Selecttarget=''"]


[endmacro]




;■ムービー再生■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
[macro name=PLAYMOVIE]

[if exp="sf.ConfigState2 == 1"]

[video visible=true top=0 left=0 width=1280 height=800 mode="overlay"]
[openvideo storage="OP.wmv"]
[wp for="prepare"]
[playvideo]
[wv canskip="true"]
[stopvideo]
;[clearvideolayer channel="1"]

[endif]



[endmacro]


[return]

;■画面右側のシステムにカーソルが触れたとき再描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*OpenQucikReflesh_on

[if exp="tf.OpenQucikDrawFlag == 0"]
	[iscript]
	Debug.message("*OpenQucikReflesh_on");
	[endscript]

	[eval exp="tf.OpenQucikDrawFlag=1"]
	[layopt layer=message2 page=fore left=749 top=0]
	[position layer=message2 page=fore frame="System_SideScrollBase_on.png" visible=true]

	[sysbutton_setopt page=fore onenter="" onleave="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikReflesh_off')"]

	;//クイックセーブウインドウを生成
	[eval exp="tf.OpenQucikSlotCursorFlag=0"]
;	[sysbutton name="QSLOT1" graphic="System_SideWindow_slot1" page=fore top=125 left=1239 absolute=1100001 exp="kag.callExtraConductor('PeasAdvSystem_SaveLoad.ks','*GameCall_QSave')" onleave="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikSlot_on1')" onenter="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikSlot_on1')"]
	[sysbutton name="QSLOT1" graphic="System_SideWindow_slot1" page=fore top=125 left=1239 exp="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikSlot_on1')" absolute=1100001]
	[sysbutton name="QSLOT2" graphic="System_SideWindow_slot2" page=fore top=182 left=1239 exp="kag.callExtraConductor('','*OpenQucikSlot_on1')" absolute=1100001]
	[sysbutton name="QSLOT3" graphic="System_SideWindow_slot3" page=fore top=239 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT4" graphic="System_SideWindow_slot4" page=fore top=296 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT5" graphic="System_SideWindow_slot5" page=fore top=353 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT6" graphic="System_SideWindow_slot6" page=fore top=410 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT7" graphic="System_SideWindow_slot7" page=fore top=467 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT8" graphic="System_SideWindow_slot8" page=fore top=524 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT9" graphic="System_SideWindow_slot9" page=fore top=581 left=1239 exp="" absolute=1100001]
	[sysbutton name="QSLOT10" graphic="System_SideWindow_slot10" page=fore top=638 left=1239 exp="" absolute=1100001]



[endif]

[return]
[s]
;■画面右側のシステムにカーソルが離れたとき再描画■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*OpenQucikReflesh_off

[if exp="tf.OpenQucikDrawFlag == 1"]
	[eval exp="tf.OpenQucikDrawFlag=0"]
	[layopt layer=message2 page=fore left=1263 top=0]
	[position layer=message2 page=fore frame="System_SideScrollBase_off.png" visible=true]
	
	[sysbutton_setopt page=fore onenter="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikReflesh_on')" onleave=""]
	
	[sysbutton_erase name="QSLOT1" page="fore"]
	[sysbutton_erase name="QSLOT2" page="fore"]
	[sysbutton_erase name="QSLOT3" page="fore"]
	[sysbutton_erase name="QSLOT4" page="fore"]
	[sysbutton_erase name="QSLOT5" page="fore"]
	[sysbutton_erase name="QSLOT6" page="fore"]
	[sysbutton_erase name="QSLOT7" page="fore"]
	[sysbutton_erase name="QSLOT8" page="fore"]
	[sysbutton_erase name="QSLOT9" page="fore"]
	[sysbutton_erase name="QSLOT10" page="fore"]
	
	
[endif]

[return]
[s]
;■画面右側のシステム・スロットボタンにカーソルが触れたとき■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;右クリックの処理を変更しクイックロードとする
*OpenQucikSlot_on1
	[eval exp="sf.SaveMode_Flag_ViewCount=90"]
	[call storage="PeasAdvSystem_SaveLoad.ks" target="*GameCall_QSave"]

;	[if exp="tf.OpenQucikSlotCursorFlag == 0"]
;		[sysbutton_setopt name="QSLOT1" page=fore onenter="" exp="kag.callExtraConductor('PeasAdvSystem_SaveLoad.ks','*GameCall_QSave')" onleave="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikSlot_off1')"]
;		[eval exp="tf.OpenQucikSlotCursorFlag=1"]
;		[eval exp="sf.SaveMode_Flag_ViewCount=90"]
;		[rclick call="true" storage="PeasAdvSystem_SaveLoad.ks" target="*GameCall_QLoad" enabled="true"]
;	[endif]
[return]
*OpenQucikSlot_on2
[return]
*OpenQucikSlot_on3
[return]
*OpenQucikSlot_on4
[return]
*OpenQucikSlot_on5
[return]
*OpenQucikSlot_on6
[return]
*OpenQucikSlot_on7
[return]
*OpenQucikSlot_on8
[return]
*OpenQucikSlot_on9
[return]
*OpenQucikSlot_on10
[return]
;■画面右側のシステム・スロットボタンにカーソルが離れたとき■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;右クリックの処理を変更しクイックロードとする
*OpenQucikSlot_off1
	[if exp="tf.OpenQucikSlotCursorFlag == 0"]
		[sysbutton_setopt name="QSLOT1" page=fore onenter="" onleave="kag.callExtraConductor('PeasAdvSystem.ks','*OpenQucikSlot_on1')"]
		[eval exp="tf.OpenQucikSlotCursorFlag=0"]
;		[rclick enabled="true" jump="false" storage="" target=""]
	[endif]
[return]
*OpenQucikSlot_off2
[return]
*OpenQucikSlot_off3
[return]
*OpenQucikSlot_off4
[return]
*OpenQucikSlot_off5
[return]
*OpenQucikSlot_off6
[return]
*OpenQucikSlot_off7
[return]
*OpenQucikSlot_off8
[return]
*OpenQucikSlot_off9
[return]
*OpenQucikSlot_off10
[return]



