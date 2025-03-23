*start|スタート
;セーブロード画面は、TJS側にて処理を行っているのでこのファイルでは初期化のみが行われている
[s]

;//初期化
*Initialize

;//0 = SAVE モード　1 = LOADモード
;//これはFAST.ksで宣言
;[eval exp="tf.SaveMode_Flag_Mode=0 if tf.SaveMode_Flag_Mode === void"]

[eval exp="tf.SaveMode_Count_PageNo=0"]
[eval exp="tf.SaveMode_Count_MaxSaveItem=100"]
[eval exp="tf.SaveMode_Count_MaxSavePage=10"]
;ページの中にあるセーブスロット数
[eval exp="tf.SaveMode_Count_PageInSlot=10"]

[eval exp="tf.SaveMode_File_Bg_Name='system_savemode_Base.png'"]
[eval exp="tf.LoadMode_File_Bg_Name='system_loadmode_Base.png'"]

[eval exp="tf.SaveMode_File_AlphaSlot_Name='system_Save_slotalphaimg.png'"]
[eval exp="tf.SaveMode_Pos_AlphaSlot_Xpos=207"]
[eval exp="tf.SaveMode_Pos_AlphaSlot_Ypos=108"]
[eval exp="tf.SaveMode_Pos_AlphaSlot_Width=482"]
[eval exp="tf.SaveMode_Pos_AlphaSlot_Height=98"]

[eval exp="tf.SaveMode_File_Return_Name='system_config_close.png'"]
[eval exp="tf.SaveMode_Pos_Return_Xpos=tf.System_BtImg_SaveReturn_Xpos"]
[eval exp="tf.SaveMode_Pos_Return_Ypos=tf.System_BtImg_SaveReturn_Ypos"]

[eval exp="tf.SaveMode_File_BackPage_Name='system_save_backpageBt.png'"]
[eval exp="tf.SaveMode_Pos_BackPage_Xpos=tf.System_BtImg_SaveBackPage_Xpos"]
[eval exp="tf.SaveMode_Pos_BackPage_Ypos=tf.System_BtImg_SaveBackPage_Ypos"]

[eval exp="tf.SaveMode_File_NextPage_Name='system_save_nextpageBt.png'"]
[eval exp="tf.SaveMode_Pos_NextPage_Xpos=tf.System_BtImg_SaveNextPage_Xpos"]
[eval exp="tf.SaveMode_Pos_NextPage_Ypos=tf.System_BtImg_SaveNextPage_Ypos"]

[eval exp="tf.SaveMode_File_FirstPage_Name='system_save_firstpageBt.png'"]
[eval exp="tf.SaveMode_Pos_FirstPage_Xpos=tf.System_BtImg_SaveFirstPage_Xpos"]
[eval exp="tf.SaveMode_Pos_FirstPage_Ypos=tf.System_BtImg_SaveFirstPage_Ypos"]

[eval exp="tf.SaveMode_File_EndPage_Name='system_save_endpageBt.png'"]
[eval exp="tf.SaveMode_Pos_EndPage_Xpos=tf.System_BtImg_SaveEndPage_Xpos"]
[eval exp="tf.SaveMode_Pos_EndPage_Ypos=tf.System_BtImg_SaveEndPage_Ypos"]

[eval exp="tf.SaveMode_File_PageWindow_Name='system_Save_page'"]

[eval exp="tf.SaveMode_File_EmptyThum_Name='system_Save_emptythum.png'"]
[eval exp="tf.SaveMode_Pos_Thum_Xpos=234"]
[eval exp="tf.SaveMode_Pos_Thum_Ypos=223"]
[eval exp="tf.SaveMode_Pos_Thum_Width=120"]
[eval exp="tf.SaveMode_Pos_Thum_Height=75"]

[eval exp="tf.SaveMode_File_Thum_Name='system_Save_thum'"]
;サムネイル画像は、上記ファイル名に０番から連番数字＋pngとなる

;スクリプト
[iscript]
//-基本設定
tf.System_Pos_SaveDayTime_Xpos=138;//セーブ画面　保存日付表示位置X
tf.System_Pos_SaveDayTime_Ypos=45;//セーブ画面　保存日付表示位置X
tf.System_Size_SaveDayTime_Font=28;//セーブ画面　保存日付表示位置X
tf.System_Color_SaveDayTime_Font=0x000000;//セーブ画面　保存日付の文字カラー
tf.System_Color_SaveDayTime_edgeFont=0xffffff;//保存日付の文字の落影カラー

tf.System_Pos_SaveSlotErea_Xpos=-5;//セーブ画面　セーブスロットエリアの位置（サムネイル画像の場所から
tf.System_Pos_SaveSlotErea_Ypos=-5;//セーブ画面　セーブスロットエリアの位置（サムネイル画像の場所から
tf.System_File_SaveSlotSelect_SeFile="BtSel.ogg";//セーブ画面　セーブスロットエリアの洗濯時の効果音
tf.System_File_SaveSlotClick_SeFile="";//セーブ画面　セーブスロットエリアの洗濯時の効果音

tf.System_Size_SaveThum_Width=123;//セーブ画面　サムネイルサイズwidth
tf.System_Size_SaveThum_Height=76;//セーブ画面　サムネイルサイズheight

//セーブ画面・サムネイル画像の表示位置
tf.System_Pos_SaveThum_Xpos=[];
tf.System_Pos_SaveThum_Ypos=[];
tf.System_Pos_SaveThum_Xpos[0] =110;
tf.System_Pos_SaveThum_Ypos[0] =169;
tf.System_Pos_SaveThum_Xpos[1] =110;
tf.System_Pos_SaveThum_Ypos[1] =269;
tf.System_Pos_SaveThum_Xpos[2] =110;
tf.System_Pos_SaveThum_Ypos[2] =370;
tf.System_Pos_SaveThum_Xpos[3] =110;
tf.System_Pos_SaveThum_Ypos[3] =470;
tf.System_Pos_SaveThum_Xpos[4] =110;
tf.System_Pos_SaveThum_Ypos[4] =570;
tf.System_Pos_SaveThum_Xpos[5] =626;
tf.System_Pos_SaveThum_Ypos[5] =169;
tf.System_Pos_SaveThum_Xpos[6] =626;
tf.System_Pos_SaveThum_Ypos[6] =269;
tf.System_Pos_SaveThum_Xpos[7] =626;
tf.System_Pos_SaveThum_Ypos[7] =370;
tf.System_Pos_SaveThum_Xpos[8] =626;
tf.System_Pos_SaveThum_Ypos[8] =470;
tf.System_Pos_SaveThum_Xpos[9] =626;
tf.System_Pos_SaveThum_Ypos[9] =570;

//-セーブロード画面リソース設定
tf.System_BtImg_SaveReturn_BtFile='system_config_close.png';
tf.System_BtImg_SaveReturn_BtName='SAVELOADRETURN';
tf.System_BtImg_SaveReturn_Xpos=1159;
tf.System_BtImg_SaveReturn_Ypos=664;
tf.System_BtImg_SaveReturn_ExpFunc="SysBtn_CloseSaveLoadViewMode()";
tf.System_BtImg_SaveReturn_InFunc="";
tf.System_BtImg_SaveReturn_OutFunc="";

tf.System_BtImg_SaveBackPage_BtFile='system_save_backpageBt.png';
tf.System_BtImg_SaveBackPage_BtName='SAVELOADBACK';
tf.System_BtImg_SaveBackPage_Xpos=142;
tf.System_BtImg_SaveBackPage_Ypos=663;
tf.System_BtImg_SaveBackPage_ExpFunc="SysBtn_SaveLoadPageChange(0)";
tf.System_BtImg_SaveBackPage_InFunc="";
tf.System_BtImg_SaveBackPage_OutFunc="";

tf.System_BtImg_SaveNexpPage_BtFile='system_save_nextpageBt.png';
tf.System_BtImg_SaveNexpPage_BtName='SAVELOADNEXT';
tf.System_BtImg_SaveNexpPage_Xpos=941;
tf.System_BtImg_SaveNexpPage_Ypos=663;
tf.System_BtImg_SaveNexpPage_ExpFunc="SysBtn_SaveLoadPageChange(1)";
tf.System_BtImg_SaveNexpPage_InFunc="";
tf.System_BtImg_SaveNexpPage_OutFunc="";

tf.System_BtImg_SaveFirstPage_BtFile='system_save_firstpageBt.png';
tf.System_BtImg_SaveFirstPage_BtName='SAVELOADFIRST';
tf.System_BtImg_SaveFirstPage_Xpos=46;
tf.System_BtImg_SaveFirstPage_Ypos=663;
tf.System_BtImg_SaveFirstPage_ExpFunc="SysBtn_SaveLoadPageChange(2)";
tf.System_BtImg_SaveFirstPage_InFunc="";
tf.System_BtImg_SaveFirstPage_OutFunc="";

tf.System_BtImg_SaveEndPage_BtFile='system_save_endpageBt.png';
tf.System_BtImg_SaveEndPage_BtName='SAVELOADEND';
tf.System_BtImg_SaveEndPage_Xpos=1036;
tf.System_BtImg_SaveEndPage_Ypos=663;
tf.System_BtImg_SaveEndPage_ExpFunc="SysBtn_SaveLoadPageChange(3)";
tf.System_BtImg_SaveEndPage_InFunc="";
tf.System_BtImg_SaveEndPage_OutFunc="";

//コンフィグ
tf.System_BtImg_Config_BtFile='system_config_configmode.png';
tf.System_BtImg_Config_BtName='SAVELOADBACK';
tf.System_BtImg_Config_Xpos=1027;
tf.System_BtImg_Config_Ypos=14;
tf.System_BtImg_Config_ExpFunc="SysBtn_onConfigButtonClick(f.CallConfigModeFlg)";
tf.System_BtImg_Config_InFunc="";
tf.System_BtImg_Config_OutFunc="";

//タイトルへ
tf.System_BtImg_Title_BtFile='system_config_titleback.png';
tf.System_BtImg_Title_BtName='SAVELOADBACK';
tf.System_BtImg_Title_Xpos=1170;
tf.System_BtImg_Title_Ypos=484;
tf.System_BtImg_Title_ExpFunc="SysBtn_ReturnGameTitle()";
tf.System_BtImg_Title_InFunc="";
tf.System_BtImg_Title_OutFunc="";

//終了
tf.System_BtImg_Quit_BtFile='system_config_quit.png';
tf.System_BtImg_Quit_BtName='SAVELOADBACK';
tf.System_BtImg_Quit_Xpos=1170;
tf.System_BtImg_Quit_Ypos=575;
tf.System_BtImg_Quit_ExpFunc="kag.close()";
tf.System_BtImg_Quit_InFunc="";
tf.System_BtImg_Quit_OutFunc="";

//セーブ画面用ページ切り替えタブ
tf.System_BtImg_SaveTAB1_BtFile='system_config_loadmode.png';
tf.System_BtImg_SaveTAB1_BtName='SAVELOADBACK';
tf.System_BtImg_SaveTAB1_Xpos=901;
tf.System_BtImg_SaveTAB1_Ypos=14;
tf.System_BtImg_SaveTAB1_ExpFunc="SysBtn_CreateSaveLoadViewMode(1,f.CallSaveLoadModeFlg)";
tf.System_BtImg_SaveTAB1_InFunc="";
tf.System_BtImg_SaveTAB1_OutFunc="";

//ロード画面用ページ切り替えタブ
tf.System_BtImg_LoadTAB1_BtFile='system_config_savemode.png';
tf.System_BtImg_LoadTAB1_BtName='SAVELOADBACK';
tf.System_BtImg_LoadTAB1_Xpos=775;
tf.System_BtImg_LoadTAB1_Ypos=14;
tf.System_BtImg_LoadTAB1_ExpFunc="SysBtn_CreateSaveLoadViewMode(0,f.CallSaveLoadModeFlg)";
tf.System_BtImg_LoadTAB1_InFunc="";
tf.System_BtImg_LoadTAB1_OutFunc="";

tf.System_BtImg_LoadReturn_BtFile='system_config_close.png';
tf.System_BtImg_LoadReturn_BtName='SAVELOADRETURN';
tf.System_BtImg_LoadReturn_Xpos=1159;
tf.System_BtImg_LoadReturn_Ypos=664;
tf.System_BtImg_LoadReturn_ExpFunc="SysBtn_CloseSaveLoadViewMode()";
tf.System_BtImg_LoadReturn_InFunc="";
tf.System_BtImg_LoadReturn_OutFunc="";

tf.System_BtImg_LoadBackPage_BtFile='system_load_backpageBt.png';
tf.System_BtImg_LoadBackPage_BtName='SAVELOADBACK';
tf.System_BtImg_LoadBackPage_Xpos=142;
tf.System_BtImg_LoadBackPage_Ypos=663;
tf.System_BtImg_LoadBackPage_ExpFunc="SysBtn_SaveLoadPageChange(0)";
tf.System_BtImg_LoadBackPage_InFunc="";
tf.System_BtImg_LoadBackPage_OutFunc="";

tf.System_BtImg_LoadNexpPage_BtFile='system_load_nextpageBt.png';
tf.System_BtImg_LoadNexpPage_BtName='SAVELOADNEXT';
tf.System_BtImg_LoadNexpPage_Xpos=941;
tf.System_BtImg_LoadNexpPage_Ypos=663;
tf.System_BtImg_LoadNexpPage_ExpFunc="SysBtn_SaveLoadPageChange(1)";
tf.System_BtImg_LoadNexpPage_InFunc="";
tf.System_BtImg_LoadNexpPage_OutFunc="";

tf.System_BtImg_LoadFirstPage_BtFile='system_load_firstpageBt.png';
tf.System_BtImg_LoadFirstPage_BtName='SAVELOADFIRST';
tf.System_BtImg_LoadFirstPage_Xpos=46;
tf.System_BtImg_LoadFirstPage_Ypos=663;
tf.System_BtImg_LoadFirstPage_ExpFunc="SysBtn_SaveLoadPageChange(2)";
tf.System_BtImg_LoadFirstPage_InFunc="";
tf.System_BtImg_LoadFirstPage_OutFunc="";

tf.System_BtImg_LoadEndPage_BtFile='system_load_endpageBt.png';
tf.System_BtImg_LoadEndPage_BtName='SAVELOADEND';
tf.System_BtImg_LoadEndPage_Xpos=1036;
tf.System_BtImg_LoadEndPage_Ypos=663;
tf.System_BtImg_LoadEndPage_ExpFunc="SysBtn_SaveLoadPageChange(3)";
tf.System_BtImg_LoadEndPage_InFunc="";
tf.System_BtImg_LoadEndPage_OutFunc="";

//ページ毎の専用背景画像
//セーブ画面用
tf.System_BgImg_PageBgSave_ImgFile=[];
tf.System_BgImg_PageBgSave_ImgFile[0] ="system_Save_page0.png";
tf.System_BgImg_PageBgSave_ImgFile[1] ="system_Save_page1.png";
tf.System_BgImg_PageBgSave_ImgFile[2] ="system_Save_page2.png";
tf.System_BgImg_PageBgSave_ImgFile[3] ="system_Save_page3.png";
tf.System_BgImg_PageBgSave_ImgFile[4] ="system_Save_page4.png";
tf.System_BgImg_PageBgSave_ImgFile[5] ="system_Save_page5.png";
tf.System_BgImg_PageBgSave_ImgFile[6] ="system_Save_page6.png";
tf.System_BgImg_PageBgSave_ImgFile[7] ="system_Save_page7.png";
tf.System_BgImg_PageBgSave_ImgFile[8] ="system_Save_page8.png";
tf.System_BgImg_PageBgSave_ImgFile[9] ="system_Save_page9.png";
//ロード画面用
tf.System_BgImg_PageBgLoad_ImgFile=[];
tf.System_BgImg_PageBgLoad_ImgFile[0] ="system_Load_page0.png";
tf.System_BgImg_PageBgLoad_ImgFile[1] ="system_Load_page1.png";
tf.System_BgImg_PageBgLoad_ImgFile[2] ="system_Load_page2.png";
tf.System_BgImg_PageBgLoad_ImgFile[3] ="system_Load_page3.png";
tf.System_BgImg_PageBgLoad_ImgFile[4] ="system_Load_page4.png";
tf.System_BgImg_PageBgLoad_ImgFile[5] ="system_Load_page5.png";
tf.System_BgImg_PageBgLoad_ImgFile[6] ="system_Load_page6.png";
tf.System_BgImg_PageBgLoad_ImgFile[7] ="system_Load_page7.png";
tf.System_BgImg_PageBgLoad_ImgFile[8] ="system_Load_page8.png";
tf.System_BgImg_PageBgLoad_ImgFile[9] ="system_Load_page9.png";



//ページ切り替えタブボタン セーブが年
tf.System_BtImg_PageTab_BtImgFile = [];
tf.System_BtImg_PageTab_BtImgFile[0]="system_Save_page1Bt.png";
tf.System_BtImg_PageTab_BtImgFile[1]="system_Save_page2Bt.png";
tf.System_BtImg_PageTab_BtImgFile[2]="system_Save_page3Bt.png";
tf.System_BtImg_PageTab_BtImgFile[3]="system_Save_page4Bt.png";
tf.System_BtImg_PageTab_BtImgFile[4]="system_Save_page5Bt.png";
tf.System_BtImg_PageTab_BtImgFile[5]="system_Save_page6Bt.png";
tf.System_BtImg_PageTab_BtImgFile[6]="system_Save_page7Bt.png";
tf.System_BtImg_PageTab_BtImgFile[7]="system_Save_page8Bt.png";
tf.System_BtImg_PageTab_BtImgFile[8]="system_Save_page9Bt.png";
tf.System_BtImg_PageTab_BtImgFile[9]="system_Save_page10Bt.png";

//ページ切り替えタブボタン ロードが年
tf.System_BtImg_LoadPageTab_BtImgFile = [];
tf.System_BtImg_LoadPageTab_BtImgFile[0]="system_Load_page1Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[1]="system_Load_page2Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[2]="system_Load_page3Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[3]="system_Load_page4Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[4]="system_Load_page5Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[5]="system_Load_page6Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[6]="system_Load_page7Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[7]="system_Load_page8Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[8]="system_Load_page9Bt.png";
tf.System_BtImg_LoadPageTab_BtImgFile[9]="system_Load_page10Bt.png";


//ページタブボタンの座標
tf.SaveMode_Pos_Page1_Xpos = [];
tf.SaveMode_Pos_Page1_Ypos = [];
tf.SaveMode_Pos_Page1_Xpos[0]=207;
tf.SaveMode_Pos_Page1_Ypos[0]=108;
tf.SaveMode_Pos_Page1_Xpos[1]=282;
tf.SaveMode_Pos_Page1_Ypos[1]=108;
tf.SaveMode_Pos_Page1_Xpos[2]=358;
tf.SaveMode_Pos_Page1_Ypos[2]=108;
tf.SaveMode_Pos_Page1_Xpos[3]=434;
tf.SaveMode_Pos_Page1_Ypos[3]=108;
tf.SaveMode_Pos_Page1_Xpos[4]=510;
tf.SaveMode_Pos_Page1_Ypos[4]=108;
tf.SaveMode_Pos_Page1_Xpos[5]=585;
tf.SaveMode_Pos_Page1_Ypos[5]=108;
tf.SaveMode_Pos_Page1_Xpos[6]=660;
tf.SaveMode_Pos_Page1_Ypos[6]=108;
tf.SaveMode_Pos_Page1_Xpos[7]=735;
tf.SaveMode_Pos_Page1_Ypos[7]=108;
tf.SaveMode_Pos_Page1_Xpos[8]=810;
tf.SaveMode_Pos_Page1_Ypos[8]=108;
tf.SaveMode_Pos_Page1_Xpos[9]=885;
tf.SaveMode_Pos_Page1_Ypos[9]=108;

//ページ切り替えタブボタンの効果音
tf.System_BtImg_PageTab_SelectSeImgFile = [];
tf.System_BtImg_PageTab_ClickSeImgFile = [];
tf.System_BtImg_PageTab_SelectSeImgFile[0]="";
tf.System_BtImg_PageTab_SelectSeImgFile[1]="";
tf.System_BtImg_PageTab_SelectSeImgFile[2]="";
tf.System_BtImg_PageTab_SelectSeImgFile[3]="";
tf.System_BtImg_PageTab_SelectSeImgFile[4]="";
tf.System_BtImg_PageTab_SelectSeImgFile[5]="";
tf.System_BtImg_PageTab_SelectSeImgFile[6]="";
tf.System_BtImg_PageTab_SelectSeImgFile[7]="";
tf.System_BtImg_PageTab_SelectSeImgFile[8]="";
tf.System_BtImg_PageTab_SelectSeImgFile[9]="";

tf.System_BtImg_PageTab_ClickSeImgFile[0]="";
tf.System_BtImg_PageTab_ClickSeImgFile[1]="";
tf.System_BtImg_PageTab_ClickSeImgFile[2]="";
tf.System_BtImg_PageTab_ClickSeImgFile[3]="";
tf.System_BtImg_PageTab_ClickSeImgFile[4]="";
tf.System_BtImg_PageTab_ClickSeImgFile[5]="";
tf.System_BtImg_PageTab_ClickSeImgFile[6]="";
tf.System_BtImg_PageTab_ClickSeImgFile[7]="";
tf.System_BtImg_PageTab_ClickSeImgFile[8]="";
tf.System_BtImg_PageTab_ClickSeImgFile[9]="";

[endscript]



;セーブスロットデータフラグ
[eval exp="sf.SaveMode_Flag=[] if sf.SaveMode_Flag === void"]
[iscript]
	for(var loop=0;loop<tf.SaveMode_Count_MaxSaveItem;loop++)
	{
		if(sf.SaveMode_Flag[loop] === void){
			sf.SaveMode_Flag[loop] = new Array();
			sf.SaveMode_Flag[loop][0] = 0;//セーブデータがあるかどうかのフラグ
			sf.SaveMode_Flag[loop][1] = 0;//保存された日付
			sf.SaveMode_Flag[loop][2] = 0;//コメント
			sf.SaveMode_Flag[loop][3] = 0;//予備
		}
	}

[endscript]

[return]
