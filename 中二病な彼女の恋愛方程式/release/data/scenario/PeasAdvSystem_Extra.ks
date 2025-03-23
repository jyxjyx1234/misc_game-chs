;■おまけ画面スクリプト■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;おまけ画面トップ
[EnableSCutFlg enable=0]




;バックログを表示させない
[history output=false enabled="false"]
;右クリック利用不可


[backlay]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=10 page=back]
[freeimage layer=11 page=back]
[freeimage layer=12 page=back]
[freeimage layer=13 page=back]
[freeimage layer=14 page=back]


[image storage=&tf.ExtraMode_File_Bg_Name left=0 top=0 layer=0 page=back visible=true]


;戻るボタン
[if exp="tf.Config_Extra_Flg_UseRETURN==1"]
	[sysbutton graphic=&tf.ExtraMode_File_Return_Name top=&tf.ExtraMode_Pos_Return_Ypos left=&tf.ExtraMode_Pos_Return_Xpos target="*close" page=back enterse=&tf.ExtraMode_File_ReturnSelSE_Name clickse=&tf.ExtraMode_File_ReturnClickSE_Name]
[endif]

;ページ切り替えボタン
[if exp="tf.Config_Extra_Flg_UseCGGarally==1"]
	[sysbutton graphic=&tf.ExtraMode_File_CGMode_Name top=&tf.ExtraMode_Pos_CGMode_Ypos left=&tf.ExtraMode_Pos_CGMode_Xpos target="*cgmoderun" page=back enterse=&tf.ExtraMode_File_CGModeSelSE_Name clickse=&tf.ExtraMode_File_CGModeClickSE_Name]
[endif]
[if exp="tf.Config_Extra_Flg_UseSCENEGarally==1"]
	[sysbutton graphic=&tf.ExtraMode_File_SceneMode_Name top=&tf.ExtraMode_Pos_SceneMode_Ypos left=&tf.ExtraMode_Pos_SceneMode_Xpos target="*scenemoderun" page=back enterse=&tf.ExtraMode_File_SceneModeSelSE_Name clickse=&tf.ExtraMode_File_SceneModeClickSE_Name]
[endif]
[if exp="tf.Config_Extra_Flg_UseMUSICGarally==1"]
	[sysbutton graphic=&tf.ExtraMode_File_MusicMode_Name top=&tf.ExtraMode_Pos_MusicMode_Ypos left=&tf.ExtraMode_Pos_MusicMode_Xpos storage="" target="*musicmoderun" page=back enterse=&tf.ExtraMode_File_MusicModeSelSE_Name clickse=&tf.ExtraMode_File_MusicModeClickSE_Name]
[endif]


[trans method=crossfade time=10]
[wt]

[rclick enabled="true" jump="true" storage="scenario/PeasAdvSystem_Extra.ks" target="*close"]


[s]

;//■MUSICモードへ以降■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*musicmoderun

;[backlay]
;[image storage=white layer=10 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=1000]
;[wt]

[sysbutton_erase page=fore]


[jump storage="scenario/PeasAdvSystem_MusicMode.ks"]

[s]

;//■CGギャラリーモードへ以降■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*cgmoderun

;[backlay]
;[image storage=white layer=10 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=1000]
;[wt]

[sysbutton_erase page=fore]


[jump storage="scenario/PeasAdvSystem_CgMode.ks" target="*start"]

[s]


;//■シーンギャラリーモードへ以降■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*scenemoderun

;[backlay]
;[image storage=white layer=10 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=1000]
;[wt]

[sysbutton_erase page=fore]

[jump storage="scenario/PeasAdvSystem_SceneMode.ks" target="*start"]

[s]





;//■画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*close

;[backlay]
;[image storage=white layer=10 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=1000]
;[wt]

[sysbutton_erase page=fore]


[jump storage="scenario/title.ks" target="*recall"]

[s]

;//■おまけ画面の初期化処理■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
//CGギャラリ・回想・BGMモードを含む設定データとなる
*Initialize

;//■おまけ画面のトップ
[iscript]
tf.Config_Extra_Flg_UseCGGarally = 1;
tf.Config_Extra_Flg_UseSCENEGarally = 1;
tf.Config_Extra_Flg_UseMUSICGarally = 1;
tf.Config_Extra_Flg_UseRETURN = 1;

tf.ExtraMode_File_ReturnPlayBGM='OPInst.ogg';//MUSIC画面・シーン回想から戻す時に再度再生するBGMファイルを設定



tf.ExtraMode_File_Bg_Name="system_extrabg.png";

tf.ExtraMode_File_CGMode_Name='system_extra_cgmodeBt.png';
tf.ExtraMode_File_CGModeSelSE_Name="";
tf.ExtraMode_File_CGModeClickSE_Name="";

tf.ExtraMode_File_SceneMode_Name='system_extra_scenemodeBt.png';
tf.ExtraMode_File_SceneModeSelSE_Name="";
tf.ExtraMode_File_SceneModeClickSE_Name="";

tf.ExtraMode_File_MusicMode_Name='system_extra_bgmmodeBt.png';
tf.ExtraMode_File_MusicModeSelSE_Name="";
tf.ExtraMode_File_MusicModeClickSE_Name="";

tf.ExtraMode_File_Return_Name='system_extra_returnBt.png';
tf.ExtraMode_File_ReturnSelSE_Name="";
tf.ExtraMode_File_ReturnClickSE_Name="";


tf.ExtraMode_Pos_CGMode_Xpos=509;
tf.ExtraMode_Pos_CGMode_Ypos=108;
tf.ExtraMode_Pos_SceneMode_Xpos=203;
tf.ExtraMode_Pos_SceneMode_Ypos=108;
tf.ExtraMode_Pos_MusicMode_Xpos=807;
tf.ExtraMode_Pos_MusicMode_Ypos=108;
tf.ExtraMode_Pos_Return_Xpos=203;
tf.ExtraMode_Pos_Return_Ypos=668;

//■CGギャラリー画面構成データ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
tf.GalleryMode_File_Bg_Name='system_gallerybg.png';
tf.GalleryMode_File_Return_Name='system_gallery_returnBt.png';
tf.GalleryMode_Pos_Return_Xpos=1154;
tf.GalleryMode_Pos_Return_Ypos=664;
tf.GalleryMode_File_ReturnSelSe_Name='';
tf.GalleryMode_File_ReturnClickSe_Name='';
tf.GalleryMode_File_Return_SelSeFile=tf.System_Se_AllSound_Sel;//戻るボタン選択効果音
tf.GalleryMode_File_Return_ClickSeFile=tf.System_Se_AllSound_Sel;//クリックボタン選択効果音

tf.GalleryMode_File_Thum_Name='system_gallery_thum';//サムネイル画像は、上記ファイル名に０番から連番数字＋pngとなる


tf.GalleryMode_Count_MaxGalleryPage=10;
tf.GalleryMode_Count_MaxSlotInPage=9;//位置画面に表示されるサムネイルスロット
tf.GalleryMode_Count_MaxGalleryItem = 86;


tf.GalleryMode_File_BackPage_Name='system_gallery_backpageBt.png';
tf.GalleryMode_Pos_BackPage_Xpos=136;
tf.GalleryMode_Pos_BackPage_Ypos=661;
tf.GalleryMode_File_BackPageSelSe_Name='';
tf.GalleryMode_File_BackPageClickSe_Name='';
tf.GalleryMode_File_BackPage_SelSeFile=tf.System_Se_AllSound_Sel;//次ページボタン選択効果音
tf.GalleryMode_File_BackPage_ClickSeFile=tf.System_Se_AllSound_Sel;//次ページ　クリックボタン効果音


tf.GalleryMode_File_NextPage_Name='system_gallery_nextpageBt.png';
tf.GalleryMode_Pos_NextPage_Xpos=936;
tf.GalleryMode_Pos_NextPage_Ypos=661;
tf.GalleryMode_File_NextPageSelSe_Name='';
tf.GalleryMode_File_NextPageClickSe_Name='';
tf.GalleryMode_File_NextPage_SelSeFile=tf.System_Se_AllSound_Sel;//次ページボタン選択効果音
tf.GalleryMode_File_NextPage_ClickSeFile=tf.System_Se_AllSound_Sel;//次ページ　クリックボタン効果音

//ページ切り替えボタンの画像（選択状態の時）
tf.GalleryMode_File_PageWindow_Name=[];
tf.GalleryMode_File_PageWindow_Name[0] = "system_gallery_page0.png";
tf.GalleryMode_File_PageWindow_Name[1] = "system_gallery_page1.png";
tf.GalleryMode_File_PageWindow_Name[2] = "system_gallery_page2.png";
tf.GalleryMode_File_PageWindow_Name[3] = "system_gallery_page3.png";
tf.GalleryMode_File_PageWindow_Name[4] = "system_gallery_page4.png";
tf.GalleryMode_File_PageWindow_Name[5] = "system_gallery_page5.png";
tf.GalleryMode_File_PageWindow_Name[6] = "system_gallery_page6.png";
tf.GalleryMode_File_PageWindow_Name[7] = "system_gallery_page7.png";
tf.GalleryMode_File_PageWindow_Name[8] = "system_gallery_page8.png";
tf.GalleryMode_File_PageWindow_Name[9] = "system_gallery_page9.png";
tf.GalleryMode_File_PageWindow_Xpos=[];
tf.GalleryMode_File_PageWindow_Ypos=[];
tf.GalleryMode_File_PageWindow_Xpos[0]=207;//ページ切り替えボタン画像　選択状態の
tf.GalleryMode_File_PageWindow_Ypos[0]=107;
tf.GalleryMode_File_PageWindow_Xpos[1]=283;
tf.GalleryMode_File_PageWindow_Ypos[1]=107;
tf.GalleryMode_File_PageWindow_Xpos[2]=359;
tf.GalleryMode_File_PageWindow_Ypos[2]=107;
tf.GalleryMode_File_PageWindow_Xpos[3]=435;
tf.GalleryMode_File_PageWindow_Ypos[3]=107;
tf.GalleryMode_File_PageWindow_Xpos[4]=511;
tf.GalleryMode_File_PageWindow_Ypos[4]=107;
tf.GalleryMode_File_PageWindow_Xpos[5]=587;
tf.GalleryMode_File_PageWindow_Ypos[5]=107;
tf.GalleryMode_File_PageWindow_Xpos[6]=663;
tf.GalleryMode_File_PageWindow_Ypos[6]=107;
tf.GalleryMode_File_PageWindow_Xpos[7]=739;
tf.GalleryMode_File_PageWindow_Ypos[7]=107;
tf.GalleryMode_File_PageWindow_Xpos[8]=815;
tf.GalleryMode_File_PageWindow_Ypos[8]=107;
tf.GalleryMode_File_PageWindow_Xpos[9]=891;
tf.GalleryMode_File_PageWindow_Ypos[9]=107;


tf.GalleryMode_File_PageBt_File=[];
tf.GalleryMode_File_PageBt_File[0] = "system_gallery_page1Bt.png";
tf.GalleryMode_File_PageBt_File[1] = "system_gallery_page2Bt.png";
tf.GalleryMode_File_PageBt_File[2] = "system_gallery_page3Bt.png";
tf.GalleryMode_File_PageBt_File[3] = "system_gallery_page4Bt.png";
tf.GalleryMode_File_PageBt_File[4] = "system_gallery_page5Bt.png";
tf.GalleryMode_File_PageBt_File[5] = "system_gallery_page6Bt.png";
tf.GalleryMode_File_PageBt_File[6] = "system_gallery_page7Bt.png";
tf.GalleryMode_File_PageBt_File[7] = "system_gallery_page8Bt.png";
tf.GalleryMode_File_PageBt_File[8] = "system_gallery_page9Bt.png";
tf.GalleryMode_File_PageBt_File[9] = "system_gallery_page10Bt.png";
tf.GalleryMode_File_PageBtSelSe_Name='';
tf.GalleryMode_File_PageBtClickSe_Name='';
tf.GalleryMode_File_PageBt_SelSeFile=[];//ページ切り替えボタンの効果音リスト（選択時
tf.GalleryMode_File_PageBt_ClickSeFile=[];//ページ切り替えボタンの効果音リスト（クリック
//-ここでページ切り替えボタンの効果音を設定してください

for(tf.system_loop=0;tf.system_loop<tf.GalleryMode_Count_MaxGalleryPage+1;tf.system_loop++)
{
	if( tf.GalleryMode_File_PageBt_SelSeFile[tf.system_loop] == '' ){
		tf.GalleryMode_File_PageBt_SelSeFile[tf.system_loop]=tf.System_Se_AllSound_Sel;//ページボタンの選択効果音
	}
	if( tf.GalleryMode_File_PageBt_ClickSeFile[tf.system_loop] == '' ){
		tf.GalleryMode_File_PageBt_ClickSeFile[tf.system_loop]=tf.System_Se_AllSound_Click;//ページボタンのクリック時
	}
}



tf.GalleryMode_File_PageBt_Xpos=[];
tf.GalleryMode_File_PageBt_Ypos=[];
tf.GalleryMode_File_PageBt_Xpos[0]=207;//ページ切り替えボタン画像　非選択状態の
tf.GalleryMode_File_PageBt_Ypos[0]=107;
tf.GalleryMode_File_PageBt_Xpos[1]=283;
tf.GalleryMode_File_PageBt_Ypos[1]=107;
tf.GalleryMode_File_PageBt_Xpos[2]=359;
tf.GalleryMode_File_PageBt_Ypos[2]=107;
tf.GalleryMode_File_PageBt_Xpos[3]=435;
tf.GalleryMode_File_PageBt_Ypos[3]=107;
tf.GalleryMode_File_PageBt_Xpos[4]=511;
tf.GalleryMode_File_PageBt_Ypos[4]=107;
tf.GalleryMode_File_PageBt_Xpos[5]=587;
tf.GalleryMode_File_PageBt_Ypos[5]=107;
tf.GalleryMode_File_PageBt_Xpos[6]=663;
tf.GalleryMode_File_PageBt_Ypos[6]=107;
tf.GalleryMode_File_PageBt_Xpos[7]=739;
tf.GalleryMode_File_PageBt_Ypos[7]=107;
tf.GalleryMode_File_PageBt_Xpos[8]=815;
tf.GalleryMode_File_PageBt_Ypos[8]=107;
tf.GalleryMode_File_PageBt_Xpos[9]=891;
tf.GalleryMode_File_PageBt_Ypos[9]=107;




tf.GalleryMode_File_EmptyThum_Name='system_gallery_emptythum.png';
tf.GalleryMode_File_ThumSelSe_Name='';
tf.GalleryMode_File_ThumClickSe_Name='';
tf.GalleryMode_Size_CGThum_Width=240;
tf.GalleryMode_Size_CGThum_Height=150;
tf.GalleryMode_Pos_Thum_Xpos=[];//サムネイル位置XPOS
tf.GalleryMode_Pos_Thum_Ypos=[];//サムネイル位置YPOS

tf.GalleryMode_Pos_Thum_Xpos[0] = 174;
tf.GalleryMode_Pos_Thum_Ypos[0] = 165;
tf.GalleryMode_Pos_Thum_Xpos[1] = 462;
tf.GalleryMode_Pos_Thum_Ypos[1] = 165;
tf.GalleryMode_Pos_Thum_Xpos[2] = 749;
tf.GalleryMode_Pos_Thum_Ypos[2] = 165;

tf.GalleryMode_Pos_Thum_Xpos[3] = 174;
tf.GalleryMode_Pos_Thum_Ypos[3] = 329;
tf.GalleryMode_Pos_Thum_Xpos[4] = 462;
tf.GalleryMode_Pos_Thum_Ypos[4] = 329;
tf.GalleryMode_Pos_Thum_Xpos[5] = 749;
tf.GalleryMode_Pos_Thum_Ypos[5] = 329;

tf.GalleryMode_Pos_Thum_Xpos[6] = 174;
tf.GalleryMode_Pos_Thum_Ypos[6] = 494;
tf.GalleryMode_Pos_Thum_Xpos[7] = 462;
tf.GalleryMode_Pos_Thum_Ypos[7] = 494;
tf.GalleryMode_Pos_Thum_Xpos[8] = 749;
tf.GalleryMode_Pos_Thum_Ypos[8] = 494;


//■シーン回想ギャラリー画面構成データ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

tf.SceneMode_Count_PageNo=0;
tf.SceneMode_Count_MaxScenePage=10;
tf.SceneMode_Count_MaxSlotInPage = 9;
tf.SceneMode_Count_MaxGalleryItem = 86;

tf.SceneMode_File_Bg_Name='system_scenebg.png';
tf.SceneMode_File_Return_Name='system_gallery_returnBt.png';
tf.SceneMode_Pos_Return_Xpos=1154;
tf.SceneMode_Pos_Return_Ypos=664;
tf.SceneMode_File_Return_SelSeFile=tf.System_Se_AllSound_Sel;//戻るボタン選択効果音
tf.SceneMode_File_Return_ClickSeFile=tf.System_Se_AllSound_Sel;//クリックボタン選択効果音



tf.SceneMode_File_BackPage_Name='system_gallery_backpageBt.png';
tf.SceneMode_Pos_BackPage_Xpos=136;
tf.SceneMode_Pos_BackPage_Ypos=661;
tf.SceneMode_File_BackPage_SelSeFile=tf.System_Se_AllSound_Sel;//次ページボタン選択効果音
tf.SceneMode_File_BackPage_ClickSeFile=tf.System_Se_AllSound_Sel;//次ページ　クリックボタン効果音


tf.SceneMode_File_NextPage_Name='system_gallery_nextpageBt.png';
tf.SceneMode_Pos_NextPage_Xpos=936;
tf.SceneMode_Pos_NextPage_Ypos=661;
tf.SceneMode_File_NextPage_SelSeFile=tf.System_Se_AllSound_Sel;//次ページボタン選択効果音
tf.SceneMode_File_NextPage_ClickSeFile=tf.System_Se_AllSound_Sel;//次ページ　クリックボタン効果音

tf.SceneMode_File_PageWindow_Name=[];
tf.SceneMode_File_PageWindow_Name[0] = "system_gallery_page0.png";
tf.SceneMode_File_PageWindow_Name[1] = "system_gallery_page1.png";
tf.SceneMode_File_PageWindow_Name[2] = "system_gallery_page2.png";
tf.SceneMode_File_PageWindow_Name[3] = "system_gallery_page3.png";
tf.SceneMode_File_PageWindow_Name[4] = "system_gallery_page4.png";
tf.SceneMode_File_PageWindow_Name[5] = "system_gallery_page5.png";
tf.SceneMode_File_PageWindow_Name[6] = "system_gallery_page6.png";
tf.SceneMode_File_PageWindow_Name[7] = "system_gallery_page7.png";
tf.SceneMode_File_PageWindow_Name[8] = "system_gallery_page8.png";
tf.SceneMode_File_PageWindow_Name[9] = "system_gallery_page9.png";
tf.SceneMode_File_PageWindow_Xpos=[];
tf.SceneMode_File_PageWindow_Ypos=[];
tf.SceneMode_File_PageWindow_Xpos[0]=207;//ページ切り替えボタン画像　選択状態の
tf.SceneMode_File_PageWindow_Ypos[0]=107;
tf.SceneMode_File_PageWindow_Xpos[1]=283;
tf.SceneMode_File_PageWindow_Ypos[1]=107;
tf.SceneMode_File_PageWindow_Xpos[2]=359;
tf.SceneMode_File_PageWindow_Ypos[2]=107;
tf.SceneMode_File_PageWindow_Xpos[3]=435;
tf.SceneMode_File_PageWindow_Ypos[3]=107;
tf.SceneMode_File_PageWindow_Xpos[4]=511;
tf.SceneMode_File_PageWindow_Ypos[4]=107;
tf.SceneMode_File_PageWindow_Xpos[5]=587;
tf.SceneMode_File_PageWindow_Ypos[5]=107;
tf.SceneMode_File_PageWindow_Xpos[6]=663;
tf.SceneMode_File_PageWindow_Ypos[6]=107;
tf.SceneMode_File_PageWindow_Xpos[7]=739;
tf.SceneMode_File_PageWindow_Ypos[7]=107;
tf.SceneMode_File_PageWindow_Xpos[8]=815;
tf.SceneMode_File_PageWindow_Ypos[8]=107;
tf.SceneMode_File_PageWindow_Xpos[9]=891;
tf.SceneMode_File_PageWindow_Ypos[9]=107;


tf.SceneMode_File_PageBt_File=[];
tf.SceneMode_File_PageBt_File[0] = "system_gallery_page1Bt.png";
tf.SceneMode_File_PageBt_File[1] = "system_gallery_page2Bt.png";
tf.SceneMode_File_PageBt_File[2] = "system_gallery_page3Bt.png";
tf.SceneMode_File_PageBt_File[3] = "system_gallery_page4Bt.png";
tf.SceneMode_File_PageBt_File[4] = "system_gallery_page5Bt.png";
tf.SceneMode_File_PageBt_File[5] = "system_gallery_page6Bt.png";
tf.SceneMode_File_PageBt_File[6] = "system_gallery_page7Bt.png";
tf.SceneMode_File_PageBt_File[7] = "system_gallery_page8Bt.png";
tf.SceneMode_File_PageBt_File[8] = "system_gallery_page9Bt.png";
tf.SceneMode_File_PageBt_File[9] = "system_gallery_page10Bt.png";
tf.SceneMode_File_PageBt_SelSeFile=[];//ページ切り替えボタンの効果音リスト（選択時
tf.SceneMode_File_PageBt_ClickSeFile=[];//ページ切り替えボタンの効果音リスト（クリック
//-ここでページ切り替えボタンの効果音を設定してください

for(tf.system_loop=0;tf.system_loop<tf.SceneMode_Count_MaxSlotInPage+1;tf.system_loop++)
{
	if( tf.SceneMode_File_PageBt_SelSeFile[tf.system_loop] == '' ){
		tf.SceneMode_File_PageBt_SelSeFile[tf.system_loop]=tf.System_Se_AllSound_Sel;//ページボタンの選択効果音
	}
	if( tf.SceneMode_File_PageBt_ClickSeFile[tf.system_loop] == '' ){
		tf.SceneMode_File_PageBt_ClickSeFile[tf.system_loop]=tf.System_Se_AllSound_Click;//ページボタンのクリック時
	}
}




tf.SceneMode_File_Thum_Name='system_gallery_thum';//サムネイル画像は、上記ファイル名に０番から連番数字＋pngとなる



tf.SceneMode_File_EmptyThum_Name='system_gallery_emptythum.png';
tf.SceneMode_Pos_Thum_Xpos=240;
tf.SceneMode_Pos_Thum_Ypos=176;
tf.SceneMode_Pos_Thum_Width=240;
tf.SceneMode_Pos_Thum_Height=150;

tf.SceneMode_Pos_Thum_Xpos=[];//サムネイル位置XPOS
tf.SceneMode_Pos_Thum_Ypos=[];//サムネイル位置YPOS

tf.SceneMode_Pos_Thum_Xpos[0] = 174;
tf.SceneMode_Pos_Thum_Ypos[0] = 165;
tf.SceneMode_Pos_Thum_Xpos[1] = 462;
tf.SceneMode_Pos_Thum_Ypos[1] = 165;
tf.SceneMode_Pos_Thum_Xpos[2] = 749;
tf.SceneMode_Pos_Thum_Ypos[2] = 165;

tf.SceneMode_Pos_Thum_Xpos[3] = 174;
tf.SceneMode_Pos_Thum_Ypos[3] = 329;
tf.SceneMode_Pos_Thum_Xpos[4] = 462;
tf.SceneMode_Pos_Thum_Ypos[4] = 329;
tf.SceneMode_Pos_Thum_Xpos[5] = 749;
tf.SceneMode_Pos_Thum_Ypos[5] = 329;

tf.SceneMode_Pos_Thum_Xpos[6] = 174;
tf.SceneMode_Pos_Thum_Ypos[6] = 494;
tf.SceneMode_Pos_Thum_Xpos[7] = 462;
tf.SceneMode_Pos_Thum_Ypos[7] = 494;
tf.SceneMode_Pos_Thum_Xpos[8] = 749;
tf.SceneMode_Pos_Thum_Ypos[8] = 494;


//■MUSICギャラリー画面構成データ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

tf.MusicMode_File_Bg_Name='system_musicbg.png';

tf.MusicMode_File_Return_Name='system_gallery_returnBt.png';
tf.MusicMode_File_ReturnSelSe_Name='';//選択時効果音
tf.MusicMode_File_ReturnClickSe_Name='';//クリック時効果音
tf.MusicMode_Pos_Return_Xpos=1154;
tf.MusicMode_Pos_Return_Ypos=664;

tf.MusicMode_Count_SlotBtCount = 15;//BGM再生ボタンの数



tf.MusicMode_File_SlotBtFileTbl = [];//BGM再生ボタンファイル配列
tf.MusicMode_File_SlotBtPlaybgmTbl = [];//BGM再生ファイル
tf.MusicMode_Pos_SlotBtXposTbl = [];//BGM再生ボタンファイルXPOS
tf.MusicMode_Pos_SlotBtYposTbl = [];//BGM再生ボタンファイルYPOS

tf.MusicMode_File_SlotSelectSe = "";
tf.MusicMode_File_SlotClickSe = "";

tf.MusicMode_File_SlotBtFileTbl[0] ='system_Music_01Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[0]='BGM01.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[0] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[0] = 153;
tf.MusicMode_File_SlotBtFileTbl[1] ='system_Music_02Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[1]='BGM02.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[1] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[1] = 153;
tf.MusicMode_File_SlotBtFileTbl[2] ='system_Music_03Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[2]='BGM03.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[2] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[2] = 220;
tf.MusicMode_File_SlotBtFileTbl[3] ='system_Music_04Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[3]='BGM04.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[3] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[3] = 220;
tf.MusicMode_File_SlotBtFileTbl[4] ='system_Music_05Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[4]='BGM05.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[4] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[4] = 287;
tf.MusicMode_File_SlotBtFileTbl[5] ='system_Music_06Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[5]='BGM06.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[5] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[5] = 287;
tf.MusicMode_File_SlotBtFileTbl[6] ='system_Music_07Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[6]='BGM07.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[6] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[6] = 354;
tf.MusicMode_File_SlotBtFileTbl[7] ='system_Music_07Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[7]='BGM08.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[7] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[7] = 354;
tf.MusicMode_File_SlotBtFileTbl[8] ='system_Music_08Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[8]='BGM09.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[8] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[8] = 421;
tf.MusicMode_File_SlotBtFileTbl[9] ='system_Music_09Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[9]='BGM10.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[9] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[9] = 421;
tf.MusicMode_File_SlotBtFileTbl[10] ='system_Music_10Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[10]='BGM11.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[10] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[10] = 488;
tf.MusicMode_File_SlotBtFileTbl[11] ='system_Music_11Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[11]='BGM12.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[11] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[11] = 488;
tf.MusicMode_File_SlotBtFileTbl[12] ='system_Music_12Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[12]='BGM13.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[12] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[12] = 555;
tf.MusicMode_File_SlotBtFileTbl[13] ='system_Music_13Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[13]='BGM14.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[13] = 651;
tf.MusicMode_Pos_SlotBtYposTbl[13] = 555;
tf.MusicMode_File_SlotBtFileTbl[14] ='system_Music_14Bt.png';
tf.MusicMode_File_SlotBtPlaybgmTbl[14]='BGM15.ogg';
tf.MusicMode_Pos_SlotBtXposTbl[14] = 153;
tf.MusicMode_Pos_SlotBtYposTbl[14] = 622;




[endscript]


[return]
[s]

