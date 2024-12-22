#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "readconfig.h"
#include "convert.h"
#include "CONTRY_CHANGE.h"
#include "HOOK_MAIN.h"


//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//


#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:SHChangeNotifyRegister=_AheadLib_SHChangeNotifyRegister,@2")
#pragma comment(linker, "/EXPORT:SHDefExtractIconA=_AheadLib_SHDefExtractIconA,@3")
#pragma comment(linker, "/EXPORT:SHChangeNotifyDeregister=_AheadLib_SHChangeNotifyDeregister,@4")
#pragma comment(linker, "/EXPORT:Noname5=_AheadLib_Unnamed5,@5,NONAME")
#pragma comment(linker, "/EXPORT:SHDefExtractIconW=_AheadLib_SHDefExtractIconW,@6")
#pragma comment(linker, "/EXPORT:Noname7=_AheadLib_Unnamed7,@7,NONAME")
#pragma comment(linker, "/EXPORT:Noname8=_AheadLib_Unnamed8,@8,NONAME")
#pragma comment(linker, "/EXPORT:PifMgr_OpenProperties=_AheadLib_PifMgr_OpenProperties,@9")
#pragma comment(linker, "/EXPORT:PifMgr_GetProperties=_AheadLib_PifMgr_GetProperties,@10")
#pragma comment(linker, "/EXPORT:PifMgr_SetProperties=_AheadLib_PifMgr_SetProperties,@11")
#pragma comment(linker, "/EXPORT:Noname12=_AheadLib_Unnamed12,@12,NONAME")
#pragma comment(linker, "/EXPORT:PifMgr_CloseProperties=_AheadLib_PifMgr_CloseProperties,@13")
#pragma comment(linker, "/EXPORT:SHStartNetConnectionDialogW=_AheadLib_SHStartNetConnectionDialogW,@14")
#pragma comment(linker, "/EXPORT:Noname15=_AheadLib_Unnamed15,@15,NONAME")
#pragma comment(linker, "/EXPORT:ILFindLastID=_AheadLib_ILFindLastID,@16")
#pragma comment(linker, "/EXPORT:ILRemoveLastID=_AheadLib_ILRemoveLastID,@17")
#pragma comment(linker, "/EXPORT:ILClone=_AheadLib_ILClone,@18")
#pragma comment(linker, "/EXPORT:ILCloneFirst=_AheadLib_ILCloneFirst,@19")
#pragma comment(linker, "/EXPORT:Noname20=_AheadLib_Unnamed20,@20,NONAME")
#pragma comment(linker, "/EXPORT:ILIsEqual=_AheadLib_ILIsEqual,@21")
#pragma comment(linker, "/EXPORT:DAD_DragEnterEx2=_AheadLib_DAD_DragEnterEx2,@22")
#pragma comment(linker, "/EXPORT:ILIsParent=_AheadLib_ILIsParent,@23")
#pragma comment(linker, "/EXPORT:ILFindChild=_AheadLib_ILFindChild,@24")
#pragma comment(linker, "/EXPORT:ILCombine=_AheadLib_ILCombine,@25")
#pragma comment(linker, "/EXPORT:Noname26=_AheadLib_Unnamed26,@26,NONAME")
#pragma comment(linker, "/EXPORT:ILSaveToStream=_AheadLib_ILSaveToStream,@27")
#pragma comment(linker, "/EXPORT:SHILCreateFromPath=_AheadLib_SHILCreateFromPath,@28")
#pragma comment(linker, "/EXPORT:Noname29=_AheadLib_Unnamed29,@29,NONAME")
#pragma comment(linker, "/EXPORT:Noname30=_AheadLib_Unnamed30,@30,NONAME")
#pragma comment(linker, "/EXPORT:Noname31=_AheadLib_Unnamed31,@31,NONAME")
#pragma comment(linker, "/EXPORT:Noname32=_AheadLib_Unnamed32,@32,NONAME")
#pragma comment(linker, "/EXPORT:Noname33=_AheadLib_Unnamed33,@33,NONAME")
#pragma comment(linker, "/EXPORT:Noname34=_AheadLib_Unnamed34,@34,NONAME")
#pragma comment(linker, "/EXPORT:Noname35=_AheadLib_Unnamed35,@35,NONAME")
#pragma comment(linker, "/EXPORT:Noname36=_AheadLib_Unnamed36,@36,NONAME")
#pragma comment(linker, "/EXPORT:Noname37=_AheadLib_Unnamed37,@37,NONAME")
#pragma comment(linker, "/EXPORT:Noname38=_AheadLib_Unnamed38,@38,NONAME")
#pragma comment(linker, "/EXPORT:Noname39=_AheadLib_Unnamed39,@39,NONAME")
#pragma comment(linker, "/EXPORT:Noname40=_AheadLib_Unnamed40,@40,NONAME")
#pragma comment(linker, "/EXPORT:IsLFNDriveA=_AheadLib_IsLFNDriveA,@41")
#pragma comment(linker, "/EXPORT:IsLFNDriveW=_AheadLib_IsLFNDriveW,@42")
#pragma comment(linker, "/EXPORT:PathIsExe=_AheadLib_PathIsExe,@43")
#pragma comment(linker, "/EXPORT:Noname44=_AheadLib_Unnamed44,@44,NONAME")
#pragma comment(linker, "/EXPORT:Noname45=_AheadLib_Unnamed45,@45,NONAME")
#pragma comment(linker, "/EXPORT:Noname46=_AheadLib_Unnamed46,@46,NONAME")
#pragma comment(linker, "/EXPORT:PathMakeUniqueName=_AheadLib_PathMakeUniqueName,@47")
#pragma comment(linker, "/EXPORT:Noname48=_AheadLib_Unnamed48,@48,NONAME")
#pragma comment(linker, "/EXPORT:PathQualify=_AheadLib_PathQualify,@49")
#pragma comment(linker, "/EXPORT:Noname50=_AheadLib_Unnamed50,@50,NONAME")
#pragma comment(linker, "/EXPORT:PathResolve=_AheadLib_PathResolve,@51")
#pragma comment(linker, "/EXPORT:Noname52=_AheadLib_Unnamed52,@52,NONAME")
#pragma comment(linker, "/EXPORT:Noname53=_AheadLib_Unnamed53,@53,NONAME")
#pragma comment(linker, "/EXPORT:Noname54=_AheadLib_Unnamed54,@54,NONAME")
#pragma comment(linker, "/EXPORT:Noname55=_AheadLib_Unnamed55,@55,NONAME")
#pragma comment(linker, "/EXPORT:Noname56=_AheadLib_Unnamed56,@56,NONAME")
#pragma comment(linker, "/EXPORT:Noname57=_AheadLib_Unnamed57,@57,NONAME")
#pragma comment(linker, "/EXPORT:Noname58=_AheadLib_Unnamed58,@58,NONAME")
#pragma comment(linker, "/EXPORT:RestartDialog=_AheadLib_RestartDialog,@59")
#pragma comment(linker, "/EXPORT:Noname60=_AheadLib_Unnamed60,@60,NONAME")
#pragma comment(linker, "/EXPORT:Noname61=_AheadLib_Unnamed61,@61,NONAME")
#pragma comment(linker, "/EXPORT:PickIconDlg=_AheadLib_PickIconDlg,@62")
#pragma comment(linker, "/EXPORT:GetFileNameFromBrowse=_AheadLib_GetFileNameFromBrowse,@63")
#pragma comment(linker, "/EXPORT:DriveType=_AheadLib_DriveType,@64")
#pragma comment(linker, "/EXPORT:Noname65=_AheadLib_Unnamed65,@65,NONAME")
#pragma comment(linker, "/EXPORT:IsNetDrive=_AheadLib_IsNetDrive,@66")
#pragma comment(linker, "/EXPORT:Shell_MergeMenus=_AheadLib_Shell_MergeMenus,@67")
#pragma comment(linker, "/EXPORT:SHGetSetSettings=_AheadLib_SHGetSetSettings,@68")
#pragma comment(linker, "/EXPORT:Noname69=_AheadLib_Unnamed69,@69,NONAME")
#pragma comment(linker, "/EXPORT:Noname70=_AheadLib_Unnamed70,@70,NONAME")
#pragma comment(linker, "/EXPORT:Shell_GetImageLists=_AheadLib_Shell_GetImageLists,@71")
#pragma comment(linker, "/EXPORT:Shell_GetCachedImageIndex=_AheadLib_Shell_GetCachedImageIndex,@72")
#pragma comment(linker, "/EXPORT:SHShellFolderView_Message=_AheadLib_SHShellFolderView_Message,@73")
#pragma comment(linker, "/EXPORT:SHCreateStdEnumFmtEtc=_AheadLib_SHCreateStdEnumFmtEtc,@74")
#pragma comment(linker, "/EXPORT:PathYetAnotherMakeUniqueName=_AheadLib_PathYetAnotherMakeUniqueName,@75")
#pragma comment(linker, "/EXPORT:Noname76=_AheadLib_Unnamed76,@76,NONAME")
#pragma comment(linker, "/EXPORT:SHMapPIDLToSystemImageListIndex=_AheadLib_SHMapPIDLToSystemImageListIndex,@77")
#pragma comment(linker, "/EXPORT:Noname78=_AheadLib_Unnamed78,@78,NONAME")
#pragma comment(linker, "/EXPORT:Noname79=_AheadLib_Unnamed79,@79,NONAME")
#pragma comment(linker, "/EXPORT:SHOpenPropSheetW=_AheadLib_SHOpenPropSheetW,@80")
#pragma comment(linker, "/EXPORT:OpenAs_RunDLL=_AheadLib_OpenAs_RunDLL,@81")
#pragma comment(linker, "/EXPORT:Noname82=_AheadLib_Unnamed82,@82,NONAME")
#pragma comment(linker, "/EXPORT:CIDLData_CreateFromIDArray=_AheadLib_CIDLData_CreateFromIDArray,@83")
#pragma comment(linker, "/EXPORT:Noname84=_AheadLib_Unnamed84,@84,NONAME")
#pragma comment(linker, "/EXPORT:OpenRegStream=_AheadLib_OpenRegStream,@85")
#pragma comment(linker, "/EXPORT:Noname86=_AheadLib_Unnamed86,@86,NONAME")
#pragma comment(linker, "/EXPORT:Noname87=_AheadLib_Unnamed87,@87,NONAME")
#pragma comment(linker, "/EXPORT:SHDoDragDrop=_AheadLib_SHDoDragDrop,@88")
#pragma comment(linker, "/EXPORT:SHCloneSpecialIDList=_AheadLib_SHCloneSpecialIDList,@89")
#pragma comment(linker, "/EXPORT:SHFindFiles=_AheadLib_SHFindFiles,@90")
#pragma comment(linker, "/EXPORT:Noname91=_AheadLib_Unnamed91,@91,NONAME")
#pragma comment(linker, "/EXPORT:PathGetShortPath=_AheadLib_PathGetShortPath,@92")
#pragma comment(linker, "/EXPORT:Noname93=_AheadLib_Unnamed93,@93,NONAME")
#pragma comment(linker, "/EXPORT:Noname94=_AheadLib_Unnamed94,@94,NONAME")
#pragma comment(linker, "/EXPORT:Noname95=_AheadLib_Unnamed95,@95,NONAME")
#pragma comment(linker, "/EXPORT:Noname96=_AheadLib_Unnamed96,@96,NONAME")
#pragma comment(linker, "/EXPORT:Noname97=_AheadLib_Unnamed97,@97,NONAME")
#pragma comment(linker, "/EXPORT:SHGetRealIDL=_AheadLib_SHGetRealIDL,@98")
#pragma comment(linker, "/EXPORT:Noname99=_AheadLib_Unnamed99,@99,NONAME")
#pragma comment(linker, "/EXPORT:SHRestricted=_AheadLib_SHRestricted,@100")
#pragma comment(linker, "/EXPORT:Noname101=_AheadLib_Unnamed101,@101,NONAME")
#pragma comment(linker, "/EXPORT:SHCoCreateInstance=_AheadLib_SHCoCreateInstance,@102")
#pragma comment(linker, "/EXPORT:SignalFileOpen=_AheadLib_SignalFileOpen,@103")
#pragma comment(linker, "/EXPORT:Noname104=_AheadLib_Unnamed104,@104,NONAME")
#pragma comment(linker, "/EXPORT:Noname105=_AheadLib_Unnamed105,@105,NONAME")
#pragma comment(linker, "/EXPORT:Noname106=_AheadLib_Unnamed106,@106,NONAME")
#pragma comment(linker, "/EXPORT:Noname107=_AheadLib_Unnamed107,@107,NONAME")
#pragma comment(linker, "/EXPORT:Noname108=_AheadLib_Unnamed108,@108,NONAME")
#pragma comment(linker, "/EXPORT:Noname109=_AheadLib_Unnamed109,@109,NONAME")
#pragma comment(linker, "/EXPORT:Noname110=_AheadLib_Unnamed110,@110,NONAME")
#pragma comment(linker, "/EXPORT:Noname111=_AheadLib_Unnamed111,@111,NONAME")
#pragma comment(linker, "/EXPORT:Noname112=_AheadLib_Unnamed112,@112,NONAME")
#pragma comment(linker, "/EXPORT:Noname113=_AheadLib_Unnamed113,@113,NONAME")
#pragma comment(linker, "/EXPORT:Noname114=_AheadLib_Unnamed114,@114,NONAME")
#pragma comment(linker, "/EXPORT:Noname115=_AheadLib_Unnamed115,@115,NONAME")
#pragma comment(linker, "/EXPORT:Noname116=_AheadLib_Unnamed116,@116,NONAME")
#pragma comment(linker, "/EXPORT:Noname117=_AheadLib_Unnamed117,@117,NONAME")
#pragma comment(linker, "/EXPORT:Noname118=_AheadLib_Unnamed118,@118,NONAME")
#pragma comment(linker, "/EXPORT:IsLFNDrive=_AheadLib_IsLFNDrive,@119")
#pragma comment(linker, "/EXPORT:Noname120=_AheadLib_Unnamed120,@120,NONAME")
#pragma comment(linker, "/EXPORT:Noname121=_AheadLib_Unnamed121,@121,NONAME")
#pragma comment(linker, "/EXPORT:Noname122=_AheadLib_Unnamed122,@122,NONAME")
#pragma comment(linker, "/EXPORT:Noname123=_AheadLib_Unnamed123,@123,NONAME")
#pragma comment(linker, "/EXPORT:Noname124=_AheadLib_Unnamed124,@124,NONAME")
#pragma comment(linker, "/EXPORT:OpenAs_RunDLLA=_AheadLib_OpenAs_RunDLLA,@125")
#pragma comment(linker, "/EXPORT:Noname126=_AheadLib_Unnamed126,@126,NONAME")
#pragma comment(linker, "/EXPORT:Noname127=_AheadLib_Unnamed127,@127,NONAME")
#pragma comment(linker, "/EXPORT:Noname128=_AheadLib_Unnamed128,@128,NONAME")
#pragma comment(linker, "/EXPORT:DAD_AutoScroll=_AheadLib_DAD_AutoScroll,@129")
#pragma comment(linker, "/EXPORT:Noname130=_AheadLib_Unnamed130,@130,NONAME")
#pragma comment(linker, "/EXPORT:DAD_DragEnterEx=_AheadLib_DAD_DragEnterEx,@131")
#pragma comment(linker, "/EXPORT:DAD_DragLeave=_AheadLib_DAD_DragLeave,@132")
#pragma comment(linker, "/EXPORT:OpenAs_RunDLLW=_AheadLib_OpenAs_RunDLLW,@133")
#pragma comment(linker, "/EXPORT:DAD_DragMove=_AheadLib_DAD_DragMove,@134")
#pragma comment(linker, "/EXPORT:PrepareDiscForBurnRunDllW=_AheadLib_PrepareDiscForBurnRunDllW,@135")
#pragma comment(linker, "/EXPORT:DAD_SetDragImage=_AheadLib_DAD_SetDragImage,@136")
#pragma comment(linker, "/EXPORT:DAD_ShowDragImage=_AheadLib_DAD_ShowDragImage,@137")
#pragma comment(linker, "/EXPORT:PrintersGetCommand_RunDLL=_AheadLib_PrintersGetCommand_RunDLL,@138")
#pragma comment(linker, "/EXPORT:PrintersGetCommand_RunDLLA=_AheadLib_PrintersGetCommand_RunDLLA,@139")
#pragma comment(linker, "/EXPORT:Noname140=_AheadLib_Unnamed140,@140,NONAME")
#pragma comment(linker, "/EXPORT:Noname141=_AheadLib_Unnamed141,@141,NONAME")
#pragma comment(linker, "/EXPORT:Noname142=_AheadLib_Unnamed142,@142,NONAME")
#pragma comment(linker, "/EXPORT:Noname143=_AheadLib_Unnamed143,@143,NONAME")
#pragma comment(linker, "/EXPORT:Noname144=_AheadLib_Unnamed144,@144,NONAME")
#pragma comment(linker, "/EXPORT:Noname145=_AheadLib_Unnamed145,@145,NONAME")
#pragma comment(linker, "/EXPORT:Noname146=_AheadLib_Unnamed146,@146,NONAME")
#pragma comment(linker, "/EXPORT:SHCLSIDFromString=_AheadLib_SHCLSIDFromString,@147")
#pragma comment(linker, "/EXPORT:Noname148=_AheadLib_Unnamed148,@148,NONAME")
#pragma comment(linker, "/EXPORT:SHFind_InitMenuPopup=_AheadLib_SHFind_InitMenuPopup,@149")
#pragma comment(linker, "/EXPORT:PrintersGetCommand_RunDLLW=_AheadLib_PrintersGetCommand_RunDLLW,@150")
#pragma comment(linker, "/EXPORT:Noname151=_AheadLib_Unnamed151,@151,NONAME")
#pragma comment(linker, "/EXPORT:ILGetSize=_AheadLib_ILGetSize,@152")
#pragma comment(linker, "/EXPORT:ILGetNext=_AheadLib_ILGetNext,@153")
#pragma comment(linker, "/EXPORT:ILAppendID=_AheadLib_ILAppendID,@154")
#pragma comment(linker, "/EXPORT:ILFree=_AheadLib_ILFree,@155")
#pragma comment(linker, "/EXPORT:Noname156=_AheadLib_Unnamed156,@156,NONAME")
#pragma comment(linker, "/EXPORT:ILCreateFromPath=_AheadLib_ILCreateFromPath,@157")
#pragma comment(linker, "/EXPORT:Noname158=_AheadLib_Unnamed158,@158,NONAME")
#pragma comment(linker, "/EXPORT:Noname159=_AheadLib_Unnamed159,@159,NONAME")
#pragma comment(linker, "/EXPORT:Noname160=_AheadLib_Unnamed160,@160,NONAME")
#pragma comment(linker, "/EXPORT:Noname161=_AheadLib_Unnamed161,@161,NONAME")
#pragma comment(linker, "/EXPORT:SHSimpleIDListFromPath=_AheadLib_SHSimpleIDListFromPath,@162")
#pragma comment(linker, "/EXPORT:Noname163=_AheadLib_Unnamed163,@163,NONAME")
#pragma comment(linker, "/EXPORT:Win32DeleteFile=_AheadLib_Win32DeleteFile,@164")
#pragma comment(linker, "/EXPORT:SHCreateDirectory=_AheadLib_SHCreateDirectory,@165")
#pragma comment(linker, "/EXPORT:Noname166=_AheadLib_Unnamed166,@166,NONAME")
#pragma comment(linker, "/EXPORT:SHAddFromPropSheetExtArray=_AheadLib_SHAddFromPropSheetExtArray,@167")
#pragma comment(linker, "/EXPORT:SHCreatePropSheetExtArray=_AheadLib_SHCreatePropSheetExtArray,@168")
#pragma comment(linker, "/EXPORT:SHDestroyPropSheetExtArray=_AheadLib_SHDestroyPropSheetExtArray,@169")
#pragma comment(linker, "/EXPORT:SHReplaceFromPropSheetExtArray=_AheadLib_SHReplaceFromPropSheetExtArray,@170")
#pragma comment(linker, "/EXPORT:PathCleanupSpec=_AheadLib_PathCleanupSpec,@171")
#pragma comment(linker, "/EXPORT:Noname172=_AheadLib_Unnamed172,@172,NONAME")
#pragma comment(linker, "/EXPORT:SHValidateUNC=_AheadLib_SHValidateUNC,@173")
#pragma comment(linker, "/EXPORT:SHCreateShellFolderViewEx=_AheadLib_SHCreateShellFolderViewEx,@174")
#pragma comment(linker, "/EXPORT:Noname175=_AheadLib_Unnamed175,@175,NONAME")
#pragma comment(linker, "/EXPORT:SHSetInstanceExplorer=_AheadLib_SHSetInstanceExplorer,@176")
#pragma comment(linker, "/EXPORT:Noname177=_AheadLib_Unnamed177,@177,NONAME")
#pragma comment(linker, "/EXPORT:SHObjectProperties=_AheadLib_SHObjectProperties,@178")
#pragma comment(linker, "/EXPORT:SHGetNewLinkInfoA=_AheadLib_SHGetNewLinkInfoA,@179")
#pragma comment(linker, "/EXPORT:SHGetNewLinkInfoW=_AheadLib_SHGetNewLinkInfoW,@180")
#pragma comment(linker, "/EXPORT:Noname181=_AheadLib_Unnamed181,@181,NONAME")
#pragma comment(linker, "/EXPORT:ShellMessageBoxW=_AheadLib_ShellMessageBoxW,@182")
#pragma comment(linker, "/EXPORT:ShellMessageBoxA=_AheadLib_ShellMessageBoxA,@183")
#pragma comment(linker, "/EXPORT:Noname184=_AheadLib_Unnamed184,@184,NONAME")
#pragma comment(linker, "/EXPORT:Noname185=_AheadLib_Unnamed185,@185,NONAME")
#pragma comment(linker, "/EXPORT:Noname186=_AheadLib_Unnamed186,@186,NONAME")
#pragma comment(linker, "/EXPORT:Noname187=_AheadLib_Unnamed187,@187,NONAME")
#pragma comment(linker, "/EXPORT:Noname188=_AheadLib_Unnamed188,@188,NONAME")
#pragma comment(linker, "/EXPORT:ILCreateFromPathA=_AheadLib_ILCreateFromPathA,@189")
#pragma comment(linker, "/EXPORT:ILCreateFromPathW=_AheadLib_ILCreateFromPathW,@190")
#pragma comment(linker, "/EXPORT:SHUpdateImageA=_AheadLib_SHUpdateImageA,@191")
#pragma comment(linker, "/EXPORT:SHUpdateImageW=_AheadLib_SHUpdateImageW,@192")
#pragma comment(linker, "/EXPORT:SHHandleUpdateImage=_AheadLib_SHHandleUpdateImage,@193")
#pragma comment(linker, "/EXPORT:Noname194=_AheadLib_Unnamed194,@194,NONAME")
#pragma comment(linker, "/EXPORT:SHFree=_AheadLib_SHFree,@195")
#pragma comment(linker, "/EXPORT:SHAlloc=_AheadLib_SHAlloc,@196")
#pragma comment(linker, "/EXPORT:Noname197=_AheadLib_Unnamed197,@197,NONAME")
#pragma comment(linker, "/EXPORT:Noname198=_AheadLib_Unnamed198,@198,NONAME")
#pragma comment(linker, "/EXPORT:RealShellExecuteA=_AheadLib_RealShellExecuteA,@199")
#pragma comment(linker, "/EXPORT:Noname200=_AheadLib_Unnamed200,@200,NONAME")
#pragma comment(linker, "/EXPORT:Noname201=_AheadLib_Unnamed201,@201,NONAME")
#pragma comment(linker, "/EXPORT:Noname202=_AheadLib_Unnamed202,@202,NONAME")
#pragma comment(linker, "/EXPORT:Noname203=_AheadLib_Unnamed203,@203,NONAME")
#pragma comment(linker, "/EXPORT:Noname204=_AheadLib_Unnamed204,@204,NONAME")
#pragma comment(linker, "/EXPORT:Noname205=_AheadLib_Unnamed205,@205,NONAME")
#pragma comment(linker, "/EXPORT:Noname206=_AheadLib_Unnamed206,@206,NONAME")
#pragma comment(linker, "/EXPORT:RealShellExecuteExA=_AheadLib_RealShellExecuteExA,@207")
#pragma comment(linker, "/EXPORT:RealShellExecuteExW=_AheadLib_RealShellExecuteExW,@208")
#pragma comment(linker, "/EXPORT:Noname209=_AheadLib_Unnamed209,@209,NONAME")
#pragma comment(linker, "/EXPORT:Noname210=_AheadLib_Unnamed210,@210,NONAME")
#pragma comment(linker, "/EXPORT:Noname211=_AheadLib_Unnamed211,@211,NONAME")
#pragma comment(linker, "/EXPORT:Noname212=_AheadLib_Unnamed212,@212,NONAME")
#pragma comment(linker, "/EXPORT:Noname213=_AheadLib_Unnamed213,@213,NONAME")
#pragma comment(linker, "/EXPORT:Noname214=_AheadLib_Unnamed214,@214,NONAME")
#pragma comment(linker, "/EXPORT:Noname215=_AheadLib_Unnamed215,@215,NONAME")
#pragma comment(linker, "/EXPORT:Noname216=_AheadLib_Unnamed216,@216,NONAME")
#pragma comment(linker, "/EXPORT:Noname217=_AheadLib_Unnamed217,@217,NONAME")
#pragma comment(linker, "/EXPORT:Noname218=_AheadLib_Unnamed218,@218,NONAME")
#pragma comment(linker, "/EXPORT:Noname219=_AheadLib_Unnamed219,@219,NONAME")
#pragma comment(linker, "/EXPORT:Noname220=_AheadLib_Unnamed220,@220,NONAME")
#pragma comment(linker, "/EXPORT:Noname221=_AheadLib_Unnamed221,@221,NONAME")
#pragma comment(linker, "/EXPORT:Noname222=_AheadLib_Unnamed222,@222,NONAME")
#pragma comment(linker, "/EXPORT:Noname223=_AheadLib_Unnamed223,@223,NONAME")
#pragma comment(linker, "/EXPORT:Noname224=_AheadLib_Unnamed224,@224,NONAME")
#pragma comment(linker, "/EXPORT:Noname225=_AheadLib_Unnamed225,@225,NONAME")
#pragma comment(linker, "/EXPORT:RealShellExecuteW=_AheadLib_RealShellExecuteW,@226")
#pragma comment(linker, "/EXPORT:Noname227=_AheadLib_Unnamed227,@227,NONAME")
#pragma comment(linker, "/EXPORT:SHHelpShortcuts_RunDLL=_AheadLib_SHHelpShortcuts_RunDLL,@228")
#pragma comment(linker, "/EXPORT:SHHelpShortcuts_RunDLLA=_AheadLib_SHHelpShortcuts_RunDLLA,@229")
#pragma comment(linker, "/EXPORT:Noname230=_AheadLib_Unnamed230,@230,NONAME")
#pragma comment(linker, "/EXPORT:SHSetFolderPathA=_AheadLib_SHSetFolderPathA,@231")
#pragma comment(linker, "/EXPORT:SHSetFolderPathW=_AheadLib_SHSetFolderPathW,@232")
#pragma comment(linker, "/EXPORT:Noname233=_AheadLib_Unnamed233,@233,NONAME")
#pragma comment(linker, "/EXPORT:Noname234=_AheadLib_Unnamed234,@234,NONAME")
#pragma comment(linker, "/EXPORT:Noname235=_AheadLib_Unnamed235,@235,NONAME")
#pragma comment(linker, "/EXPORT:Noname236=_AheadLib_Unnamed236,@236,NONAME")
#pragma comment(linker, "/EXPORT:Noname237=_AheadLib_Unnamed237,@237,NONAME")
#pragma comment(linker, "/EXPORT:SHHelpShortcuts_RunDLLW=_AheadLib_SHHelpShortcuts_RunDLLW,@238")
#pragma comment(linker, "/EXPORT:PathIsSlowW=_AheadLib_PathIsSlowW,@239")
#pragma comment(linker, "/EXPORT:PathIsSlowA=_AheadLib_PathIsSlowA,@240")
#pragma comment(linker, "/EXPORT:Noname241=_AheadLib_Unnamed241,@241,NONAME")
#pragma comment(linker, "/EXPORT:Noname242=_AheadLib_Unnamed242,@242,NONAME")
#pragma comment(linker, "/EXPORT:Noname243=_AheadLib_Unnamed243,@243,NONAME")
#pragma comment(linker, "/EXPORT:Noname244=_AheadLib_Unnamed244,@244,NONAME")
#pragma comment(linker, "/EXPORT:SHTestTokenMembership=_AheadLib_SHTestTokenMembership,@245")
#pragma comment(linker, "/EXPORT:Noname246=_AheadLib_Unnamed246,@246,NONAME")
#pragma comment(linker, "/EXPORT:Noname247=_AheadLib_Unnamed247,@247,NONAME")
#pragma comment(linker, "/EXPORT:Noname248=_AheadLib_Unnamed248,@248,NONAME")
#pragma comment(linker, "/EXPORT:Noname249=_AheadLib_Unnamed249,@249,NONAME")
#pragma comment(linker, "/EXPORT:Noname250=_AheadLib_Unnamed250,@250,NONAME")
#pragma comment(linker, "/EXPORT:Noname251=_AheadLib_Unnamed251,@251,NONAME")
#pragma comment(linker, "/EXPORT:Noname252=_AheadLib_Unnamed252,@252,NONAME")
#pragma comment(linker, "/EXPORT:Noname253=_AheadLib_Unnamed253,@253,NONAME")
#pragma comment(linker, "/EXPORT:Noname254=_AheadLib_Unnamed254,@254,NONAME")
#pragma comment(linker, "/EXPORT:AppCompat_RunDLLW=_AheadLib_AppCompat_RunDLLW,@255")
#pragma comment(linker, "/EXPORT:SHCreateShellFolderView=_AheadLib_SHCreateShellFolderView,@256")
#pragma comment(linker, "/EXPORT:Noname257=_AheadLib_Unnamed257,@257,NONAME")
#pragma comment(linker, "/EXPORT:Noname258=_AheadLib_Unnamed258,@258,NONAME")
#pragma comment(linker, "/EXPORT:Noname259=_AheadLib_Unnamed259,@259,NONAME")
#pragma comment(linker, "/EXPORT:Noname260=_AheadLib_Unnamed260,@260,NONAME")
#pragma comment(linker, "/EXPORT:Noname261=_AheadLib_Unnamed261,@261,NONAME")
#pragma comment(linker, "/EXPORT:Noname262=_AheadLib_Unnamed262,@262,NONAME")
#pragma comment(linker, "/EXPORT:AssocCreateForClasses=_AheadLib_AssocCreateForClasses,@263")
#pragma comment(linker, "/EXPORT:Noname264=_AheadLib_Unnamed264,@264,NONAME")
#pragma comment(linker, "/EXPORT:Noname265=_AheadLib_Unnamed265,@265,NONAME")
#pragma comment(linker, "/EXPORT:Noname266=_AheadLib_Unnamed266,@266,NONAME")
#pragma comment(linker, "/EXPORT:AssocElemCreateForKey=_AheadLib_AssocElemCreateForKey,@267")
#pragma comment(linker, "/EXPORT:AssocGetDetailsOfPropKey=_AheadLib_AssocGetDetailsOfPropKey,@268")
#pragma comment(linker, "/EXPORT:CallFileCopyHook=_AheadLib_CallFileCopyHook,@269")
#pragma comment(linker, "/EXPORT:Noname270=_AheadLib_Unnamed270,@270,NONAME")
#pragma comment(linker, "/EXPORT:Noname271=_AheadLib_Unnamed271,@271,NONAME")
#pragma comment(linker, "/EXPORT:CheckEscapesW=_AheadLib_CheckEscapesW,@272")
#pragma comment(linker, "/EXPORT:CommandLineToArgvW=_AheadLib_CommandLineToArgvW,@273")
#pragma comment(linker, "/EXPORT:Control_RunDLL=_AheadLib_Control_RunDLL,@274")
#pragma comment(linker, "/EXPORT:Control_RunDLLA=_AheadLib_Control_RunDLLA,@275")
#pragma comment(linker, "/EXPORT:Control_RunDLLAsUserW=_AheadLib_Control_RunDLLAsUserW,@276")
#pragma comment(linker, "/EXPORT:Control_RunDLLW=_AheadLib_Control_RunDLLW,@277")
#pragma comment(linker, "/EXPORT:DllCanUnloadNow=_AheadLib_DllCanUnloadNow,@278")
#pragma comment(linker, "/EXPORT:DllGetActivationFactory=_AheadLib_DllGetActivationFactory,@279")
#pragma comment(linker, "/EXPORT:DllGetClassObject=_AheadLib_DllGetClassObject,@280")
#pragma comment(linker, "/EXPORT:DllGetVersion=_AheadLib_DllGetVersion,@281")
#pragma comment(linker, "/EXPORT:DllInstall=_AheadLib_DllInstall,@282")
#pragma comment(linker, "/EXPORT:DllRegisterServer=_AheadLib_DllRegisterServer,@283")
#pragma comment(linker, "/EXPORT:DllUnregisterServer=_AheadLib_DllUnregisterServer,@284")
#pragma comment(linker, "/EXPORT:DoEnvironmentSubstA=_AheadLib_DoEnvironmentSubstA,@285")
#pragma comment(linker, "/EXPORT:DoEnvironmentSubstW=_AheadLib_DoEnvironmentSubstW,@286")
#pragma comment(linker, "/EXPORT:DragAcceptFiles=_AheadLib_DragAcceptFiles,@287")
#pragma comment(linker, "/EXPORT:DragFinish=_AheadLib_DragFinish,@288")
#pragma comment(linker, "/EXPORT:DragQueryFile=_AheadLib_DragQueryFile,@289")
#pragma comment(linker, "/EXPORT:DragQueryFileA=_AheadLib_DragQueryFileA,@290")
#pragma comment(linker, "/EXPORT:DragQueryFileAorW=_AheadLib_DragQueryFileAorW,@291")
#pragma comment(linker, "/EXPORT:DragQueryFileW=_AheadLib_DragQueryFileW,@292")
#pragma comment(linker, "/EXPORT:DragQueryPoint=_AheadLib_DragQueryPoint,@293")
#pragma comment(linker, "/EXPORT:DuplicateIcon=_AheadLib_DuplicateIcon,@294")
#pragma comment(linker, "/EXPORT:ExtractAssociatedIconA=_AheadLib_ExtractAssociatedIconA,@295")
#pragma comment(linker, "/EXPORT:ExtractAssociatedIconExA=_AheadLib_ExtractAssociatedIconExA,@296")
#pragma comment(linker, "/EXPORT:ExtractAssociatedIconExW=_AheadLib_ExtractAssociatedIconExW,@297")
#pragma comment(linker, "/EXPORT:ExtractAssociatedIconW=_AheadLib_ExtractAssociatedIconW,@298")
#pragma comment(linker, "/EXPORT:ExtractIconA=_AheadLib_ExtractIconA,@299")
#pragma comment(linker, "/EXPORT:ExtractIconEx=_AheadLib_ExtractIconEx,@300")
#pragma comment(linker, "/EXPORT:ExtractIconExA=_AheadLib_ExtractIconExA,@301")
#pragma comment(linker, "/EXPORT:ExtractIconExW=_AheadLib_ExtractIconExW,@302")
#pragma comment(linker, "/EXPORT:ExtractIconW=_AheadLib_ExtractIconW,@303")
#pragma comment(linker, "/EXPORT:FindExecutableA=_AheadLib_FindExecutableA,@304")
#pragma comment(linker, "/EXPORT:FindExecutableW=_AheadLib_FindExecutableW,@305")
#pragma comment(linker, "/EXPORT:FreeIconList=_AheadLib_FreeIconList,@306")
#pragma comment(linker, "/EXPORT:GetCurrentProcessExplicitAppUserModelID=_AheadLib_GetCurrentProcessExplicitAppUserModelID,@307")
#pragma comment(linker, "/EXPORT:InitNetworkAddressControl=_AheadLib_InitNetworkAddressControl,@308")
#pragma comment(linker, "/EXPORT:InternalExtractIconListA=_AheadLib_InternalExtractIconListA,@309")
#pragma comment(linker, "/EXPORT:InternalExtractIconListW=_AheadLib_InternalExtractIconListW,@310")
#pragma comment(linker, "/EXPORT:LaunchMSHelp_RunDLLW=_AheadLib_LaunchMSHelp_RunDLLW,@311")
#pragma comment(linker, "/EXPORT:Options_RunDLL=_AheadLib_Options_RunDLL,@312")
#pragma comment(linker, "/EXPORT:Options_RunDLLA=_AheadLib_Options_RunDLLA,@313")
#pragma comment(linker, "/EXPORT:Options_RunDLLW=_AheadLib_Options_RunDLLW,@314")
#pragma comment(linker, "/EXPORT:RegenerateUserEnvironment=_AheadLib_RegenerateUserEnvironment,@315")
#pragma comment(linker, "/EXPORT:RunAsNewUser_RunDLLW=_AheadLib_RunAsNewUser_RunDLLW,@316")
#pragma comment(linker, "/EXPORT:SHAddDefaultPropertiesByExt=_AheadLib_SHAddDefaultPropertiesByExt,@317")
#pragma comment(linker, "/EXPORT:SHAddToRecentDocs=_AheadLib_SHAddToRecentDocs,@318")
#pragma comment(linker, "/EXPORT:SHAppBarMessage=_AheadLib_SHAppBarMessage,@319")
#pragma comment(linker, "/EXPORT:SHAssocEnumHandlers=_AheadLib_SHAssocEnumHandlers,@320")
#pragma comment(linker, "/EXPORT:SHAssocEnumHandlersForProtocolByApplication=_AheadLib_SHAssocEnumHandlersForProtocolByApplication,@321")
#pragma comment(linker, "/EXPORT:SHBindToFolderIDListParent=_AheadLib_SHBindToFolderIDListParent,@322")
#pragma comment(linker, "/EXPORT:SHBindToFolderIDListParentEx=_AheadLib_SHBindToFolderIDListParentEx,@323")
#pragma comment(linker, "/EXPORT:SHBindToObject=_AheadLib_SHBindToObject,@324")
#pragma comment(linker, "/EXPORT:SHBindToParent=_AheadLib_SHBindToParent,@325")
#pragma comment(linker, "/EXPORT:SHBrowseForFolder=_AheadLib_SHBrowseForFolder,@326")
#pragma comment(linker, "/EXPORT:SHBrowseForFolderA=_AheadLib_SHBrowseForFolderA,@327")
#pragma comment(linker, "/EXPORT:SHBrowseForFolderW=_AheadLib_SHBrowseForFolderW,@328")
#pragma comment(linker, "/EXPORT:SHChangeNotify=_AheadLib_SHChangeNotify,@329")
#pragma comment(linker, "/EXPORT:SHChangeNotifyRegisterThread=_AheadLib_SHChangeNotifyRegisterThread,@330")
#pragma comment(linker, "/EXPORT:SHChangeNotifySuspendResume=_AheadLib_SHChangeNotifySuspendResume,@331")
#pragma comment(linker, "/EXPORT:SHCoCreateInstanceWorker=_AheadLib_SHCoCreateInstanceWorker,@332")
#pragma comment(linker, "/EXPORT:SHCreateAssociationRegistration=_AheadLib_SHCreateAssociationRegistration,@333")
#pragma comment(linker, "/EXPORT:SHCreateCategoryEnum=_AheadLib_SHCreateCategoryEnum,@334")
#pragma comment(linker, "/EXPORT:SHCreateDataObject=_AheadLib_SHCreateDataObject,@335")
#pragma comment(linker, "/EXPORT:SHCreateDefaultContextMenu=_AheadLib_SHCreateDefaultContextMenu,@336")
#pragma comment(linker, "/EXPORT:SHCreateDefaultExtractIcon=_AheadLib_SHCreateDefaultExtractIcon,@337")
#pragma comment(linker, "/EXPORT:SHCreateDefaultPropertiesOp=_AheadLib_SHCreateDefaultPropertiesOp,@338")
#pragma comment(linker, "/EXPORT:SHCreateDirectoryExA=_AheadLib_SHCreateDirectoryExA,@339")
#pragma comment(linker, "/EXPORT:SHCreateDirectoryExW=_AheadLib_SHCreateDirectoryExW,@340")
#pragma comment(linker, "/EXPORT:SHCreateDrvExtIcon=_AheadLib_SHCreateDrvExtIcon,@341")
#pragma comment(linker, "/EXPORT:SHCreateItemFromIDList=_AheadLib_SHCreateItemFromIDList,@342")
#pragma comment(linker, "/EXPORT:SHCreateItemFromParsingName=_AheadLib_SHCreateItemFromParsingName,@343")
#pragma comment(linker, "/EXPORT:SHCreateItemFromRelativeName=_AheadLib_SHCreateItemFromRelativeName,@344")
#pragma comment(linker, "/EXPORT:SHCreateItemInKnownFolder=_AheadLib_SHCreateItemInKnownFolder,@345")
#pragma comment(linker, "/EXPORT:SHCreateItemWithParent=_AheadLib_SHCreateItemWithParent,@346")
#pragma comment(linker, "/EXPORT:SHCreateLocalServerRunDll=_AheadLib_SHCreateLocalServerRunDll,@347")
#pragma comment(linker, "/EXPORT:SHCreateProcessAsUserW=_AheadLib_SHCreateProcessAsUserW,@348")
#pragma comment(linker, "/EXPORT:SHCreateQueryCancelAutoPlayMoniker=_AheadLib_SHCreateQueryCancelAutoPlayMoniker,@349")
#pragma comment(linker, "/EXPORT:SHCreateShellItem=_AheadLib_SHCreateShellItem,@350")
#pragma comment(linker, "/EXPORT:SHCreateShellItemArray=_AheadLib_SHCreateShellItemArray,@351")
#pragma comment(linker, "/EXPORT:SHCreateShellItemArrayFromDataObject=_AheadLib_SHCreateShellItemArrayFromDataObject,@352")
#pragma comment(linker, "/EXPORT:SHCreateShellItemArrayFromIDLists=_AheadLib_SHCreateShellItemArrayFromIDLists,@353")
#pragma comment(linker, "/EXPORT:SHCreateShellItemArrayFromShellItem=_AheadLib_SHCreateShellItemArrayFromShellItem,@354")
#pragma comment(linker, "/EXPORT:SHELL32_AddToBackIconTable=_AheadLib_SHELL32_AddToBackIconTable,@355")
#pragma comment(linker, "/EXPORT:SHELL32_AddToFrontIconTable=_AheadLib_SHELL32_AddToFrontIconTable,@356")
#pragma comment(linker, "/EXPORT:SHELL32_AreAllItemsAvailable=_AheadLib_SHELL32_AreAllItemsAvailable,@357")
#pragma comment(linker, "/EXPORT:SHELL32_CCommonPlacesFolder_CreateInstance=_AheadLib_SHELL32_CCommonPlacesFolder_CreateInstance,@358")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_CloseSession=_AheadLib_SHELL32_CDBurn_CloseSession,@359")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_DriveSupportedForDataBurn=_AheadLib_SHELL32_CDBurn_DriveSupportedForDataBurn,@360")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_Erase=_AheadLib_SHELL32_CDBurn_Erase,@361")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_GetCDInfo=_AheadLib_SHELL32_CDBurn_GetCDInfo,@362")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_GetLiveFSDiscInfo=_AheadLib_SHELL32_CDBurn_GetLiveFSDiscInfo,@363")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_GetStagingPathOrNormalPath=_AheadLib_SHELL32_CDBurn_GetStagingPathOrNormalPath,@364")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_GetTaskInfo=_AheadLib_SHELL32_CDBurn_GetTaskInfo,@365")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_IsBlankDisc2=_AheadLib_SHELL32_CDBurn_IsBlankDisc2,@366")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_IsBlankDisc=_AheadLib_SHELL32_CDBurn_IsBlankDisc,@367")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_IsLiveFS=_AheadLib_SHELL32_CDBurn_IsLiveFS,@368")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_OnDeviceChange=_AheadLib_SHELL32_CDBurn_OnDeviceChange,@369")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_OnEject=_AheadLib_SHELL32_CDBurn_OnEject,@370")
#pragma comment(linker, "/EXPORT:SHELL32_CDBurn_OnMediaChange=_AheadLib_SHELL32_CDBurn_OnMediaChange,@371")
#pragma comment(linker, "/EXPORT:SHELL32_CDefFolderMenu_Create2=_AheadLib_SHELL32_CDefFolderMenu_Create2,@372")
#pragma comment(linker, "/EXPORT:SHELL32_CDefFolderMenu_Create2Ex=_AheadLib_SHELL32_CDefFolderMenu_Create2Ex,@373")
#pragma comment(linker, "/EXPORT:SHELL32_CDefFolderMenu_MergeMenu=_AheadLib_SHELL32_CDefFolderMenu_MergeMenu,@374")
#pragma comment(linker, "/EXPORT:SHELL32_CDrivesContextMenu_Create=_AheadLib_SHELL32_CDrivesContextMenu_Create,@375")
#pragma comment(linker, "/EXPORT:SHELL32_CDrivesDropTarget_Create=_AheadLib_SHELL32_CDrivesDropTarget_Create,@376")
#pragma comment(linker, "/EXPORT:SHELL32_CDrives_CreateSFVCB=_AheadLib_SHELL32_CDrives_CreateSFVCB,@377")
#pragma comment(linker, "/EXPORT:SHELL32_CFSDropTarget_CreateInstance=_AheadLib_SHELL32_CFSDropTarget_CreateInstance,@378")
#pragma comment(linker, "/EXPORT:SHELL32_CFSFolderCallback_Create=_AheadLib_SHELL32_CFSFolderCallback_Create,@379")
#pragma comment(linker, "/EXPORT:SHELL32_CFillPropertiesTask_CreateInstance=_AheadLib_SHELL32_CFillPropertiesTask_CreateInstance,@380")
#pragma comment(linker, "/EXPORT:SHELL32_CLibraryDropTarget_CreateInstance=_AheadLib_SHELL32_CLibraryDropTarget_CreateInstance,@381")
#pragma comment(linker, "/EXPORT:SHELL32_CLocationContextMenu_Create=_AheadLib_SHELL32_CLocationContextMenu_Create,@382")
#pragma comment(linker, "/EXPORT:SHELL32_CLocationFolderUI_CreateInstance=_AheadLib_SHELL32_CLocationFolderUI_CreateInstance,@383")
#pragma comment(linker, "/EXPORT:SHELL32_CMountPoint_DoAutorun=_AheadLib_SHELL32_CMountPoint_DoAutorun,@384")
#pragma comment(linker, "/EXPORT:SHELL32_CMountPoint_DoAutorunPrompt=_AheadLib_SHELL32_CMountPoint_DoAutorunPrompt,@385")
#pragma comment(linker, "/EXPORT:SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy=_AheadLib_SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy,@386")
#pragma comment(linker, "/EXPORT:SHELL32_CMountPoint_ProcessAutoRunFile=_AheadLib_SHELL32_CMountPoint_ProcessAutoRunFile,@387")
#pragma comment(linker, "/EXPORT:SHELL32_CMountPoint_WantAutorunUI=_AheadLib_SHELL32_CMountPoint_WantAutorunUI,@388")
#pragma comment(linker, "/EXPORT:SHELL32_CMountPoint_WantAutorunUIGetReady=_AheadLib_SHELL32_CMountPoint_WantAutorunUIGetReady,@389")
#pragma comment(linker, "/EXPORT:SHELL32_CNetFolderUI_CreateInstance=_AheadLib_SHELL32_CNetFolderUI_CreateInstance,@390")
#pragma comment(linker, "/EXPORT:SHELL32_CPL_CategoryIdArrayFromVariant=_AheadLib_SHELL32_CPL_CategoryIdArrayFromVariant,@391")
#pragma comment(linker, "/EXPORT:SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey=_AheadLib_SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey,@392")
#pragma comment(linker, "/EXPORT:SHELL32_CPL_ModifyWowDisplayName=_AheadLib_SHELL32_CPL_ModifyWowDisplayName,@393")
#pragma comment(linker, "/EXPORT:SHELL32_CRecentDocsContextMenu_CreateInstance=_AheadLib_SHELL32_CRecentDocsContextMenu_CreateInstance,@394")
#pragma comment(linker, "/EXPORT:SHELL32_CTransferConfirmation_CreateInstance=_AheadLib_SHELL32_CTransferConfirmation_CreateInstance,@395")
#pragma comment(linker, "/EXPORT:SHELL32_CallFileCopyHooks=_AheadLib_SHELL32_CallFileCopyHooks,@396")
#pragma comment(linker, "/EXPORT:SHELL32_CanDisplayWin8CopyDialog=_AheadLib_SHELL32_CanDisplayWin8CopyDialog,@397")
#pragma comment(linker, "/EXPORT:SHELL32_CloseAutoplayPrompt=_AheadLib_SHELL32_CloseAutoplayPrompt,@398")
#pragma comment(linker, "/EXPORT:SHELL32_CommandLineFromMsiDescriptor=_AheadLib_SHELL32_CommandLineFromMsiDescriptor,@399")
#pragma comment(linker, "/EXPORT:SHELL32_CopySecondaryTiles=_AheadLib_SHELL32_CopySecondaryTiles,@400")
#pragma comment(linker, "/EXPORT:SHELL32_CreateConfirmationInterrupt=_AheadLib_SHELL32_CreateConfirmationInterrupt,@401")
#pragma comment(linker, "/EXPORT:SHELL32_CreateConflictInterrupt=_AheadLib_SHELL32_CreateConflictInterrupt,@402")
#pragma comment(linker, "/EXPORT:SHELL32_CreateDefaultOperationDataProvider=_AheadLib_SHELL32_CreateDefaultOperationDataProvider,@403")
#pragma comment(linker, "/EXPORT:SHELL32_CreateFileFolderContextMenu=_AheadLib_SHELL32_CreateFileFolderContextMenu,@404")
#pragma comment(linker, "/EXPORT:SHELL32_CreateLinkInfoW=_AheadLib_SHELL32_CreateLinkInfoW,@405")
#pragma comment(linker, "/EXPORT:SHELL32_CreateQosRecorder=_AheadLib_SHELL32_CreateQosRecorder,@406")
#pragma comment(linker, "/EXPORT:SHELL32_CreateSharePointView=_AheadLib_SHELL32_CreateSharePointView,@407")
#pragma comment(linker, "/EXPORT:SHELL32_Create_IEnumUICommand=_AheadLib_SHELL32_Create_IEnumUICommand,@408")
#pragma comment(linker, "/EXPORT:SHELL32_DestroyLinkInfo=_AheadLib_SHELL32_DestroyLinkInfo,@409")
#pragma comment(linker, "/EXPORT:SHELL32_EncryptDirectory=_AheadLib_SHELL32_EncryptDirectory,@410")
#pragma comment(linker, "/EXPORT:SHELL32_EncryptedFileKeyInfo=_AheadLib_SHELL32_EncryptedFileKeyInfo,@411")
#pragma comment(linker, "/EXPORT:SHELL32_EnumCommonTasks=_AheadLib_SHELL32_EnumCommonTasks,@412")
#pragma comment(linker, "/EXPORT:SHELL32_FreeEncryptedFileKeyInfo=_AheadLib_SHELL32_FreeEncryptedFileKeyInfo,@413")
#pragma comment(linker, "/EXPORT:SHELL32_GenerateAppID=_AheadLib_SHELL32_GenerateAppID,@414")
#pragma comment(linker, "/EXPORT:SHELL32_GetAppIDRoot=_AheadLib_SHELL32_GetAppIDRoot,@415")
#pragma comment(linker, "/EXPORT:SHELL32_GetCommandProviderForFolderType=_AheadLib_SHELL32_GetCommandProviderForFolderType,@416")
#pragma comment(linker, "/EXPORT:SHELL32_GetDPIAdjustedLogicalSize=_AheadLib_SHELL32_GetDPIAdjustedLogicalSize,@417")
#pragma comment(linker, "/EXPORT:SHELL32_GetDiskCleanupPath=_AheadLib_SHELL32_GetDiskCleanupPath,@418")
#pragma comment(linker, "/EXPORT:SHELL32_GetFileNameFromBrowse=_AheadLib_SHELL32_GetFileNameFromBrowse,@419")
#pragma comment(linker, "/EXPORT:SHELL32_GetIconOverlayManager=_AheadLib_SHELL32_GetIconOverlayManager,@420")
#pragma comment(linker, "/EXPORT:SHELL32_GetLinkInfoData=_AheadLib_SHELL32_GetLinkInfoData,@421")
#pragma comment(linker, "/EXPORT:SHELL32_GetRatingBucket=_AheadLib_SHELL32_GetRatingBucket,@422")
#pragma comment(linker, "/EXPORT:SHELL32_GetSqmableFileName=_AheadLib_SHELL32_GetSqmableFileName,@423")
#pragma comment(linker, "/EXPORT:SHELL32_GetThumbnailAdornerFromFactory2=_AheadLib_SHELL32_GetThumbnailAdornerFromFactory2,@424")
#pragma comment(linker, "/EXPORT:SHELL32_GetThumbnailAdornerFromFactory=_AheadLib_SHELL32_GetThumbnailAdornerFromFactory,@425")
#pragma comment(linker, "/EXPORT:SHELL32_HandleUnrecognizedFileSystem=_AheadLib_SHELL32_HandleUnrecognizedFileSystem,@426")
#pragma comment(linker, "/EXPORT:SHELL32_IconCacheCreate=_AheadLib_SHELL32_IconCacheCreate,@427")
#pragma comment(linker, "/EXPORT:SHELL32_IconCacheDestroy=_AheadLib_SHELL32_IconCacheDestroy,@428")
#pragma comment(linker, "/EXPORT:SHELL32_IconCacheHandleAssociationChanged=_AheadLib_SHELL32_IconCacheHandleAssociationChanged,@429")
#pragma comment(linker, "/EXPORT:SHELL32_IconCacheRestore=_AheadLib_SHELL32_IconCacheRestore,@430")
#pragma comment(linker, "/EXPORT:SHELL32_IconCache_AboutToExtractIcons=_AheadLib_SHELL32_IconCache_AboutToExtractIcons,@431")
#pragma comment(linker, "/EXPORT:SHELL32_IconCache_DoneExtractingIcons=_AheadLib_SHELL32_IconCache_DoneExtractingIcons,@432")
#pragma comment(linker, "/EXPORT:SHELL32_IconCache_ExpandEnvAndSearchPath=_AheadLib_SHELL32_IconCache_ExpandEnvAndSearchPath,@433")
#pragma comment(linker, "/EXPORT:SHELL32_IconCache_RememberRecentlyExtractedIconsW=_AheadLib_SHELL32_IconCache_RememberRecentlyExtractedIconsW,@434")
#pragma comment(linker, "/EXPORT:SHELL32_IconOverlayManagerInit=_AheadLib_SHELL32_IconOverlayManagerInit,@435")
#pragma comment(linker, "/EXPORT:SHELL32_IsGetKeyboardLayoutPresent=_AheadLib_SHELL32_IsGetKeyboardLayoutPresent,@436")
#pragma comment(linker, "/EXPORT:SHELL32_IsSystemUpgradeInProgress=_AheadLib_SHELL32_IsSystemUpgradeInProgress,@437")
#pragma comment(linker, "/EXPORT:SHELL32_IsValidLinkInfo=_AheadLib_SHELL32_IsValidLinkInfo,@438")
#pragma comment(linker, "/EXPORT:SHELL32_LegacyEnumSpecialTasksByType=_AheadLib_SHELL32_LegacyEnumSpecialTasksByType,@439")
#pragma comment(linker, "/EXPORT:SHELL32_LegacyEnumTasks=_AheadLib_SHELL32_LegacyEnumTasks,@440")
#pragma comment(linker, "/EXPORT:SHELL32_LookupBackIconIndex=_AheadLib_SHELL32_LookupBackIconIndex,@441")
#pragma comment(linker, "/EXPORT:SHELL32_LookupFrontIconIndex=_AheadLib_SHELL32_LookupFrontIconIndex,@442")
#pragma comment(linker, "/EXPORT:SHELL32_NormalizeRating=_AheadLib_SHELL32_NormalizeRating,@443")
#pragma comment(linker, "/EXPORT:SHELL32_NotifyLinkTrackingServiceOfMove=_AheadLib_SHELL32_NotifyLinkTrackingServiceOfMove,@444")
#pragma comment(linker, "/EXPORT:SHELL32_PifMgr_CloseProperties=_AheadLib_SHELL32_PifMgr_CloseProperties,@445")
#pragma comment(linker, "/EXPORT:SHELL32_PifMgr_GetProperties=_AheadLib_SHELL32_PifMgr_GetProperties,@446")
#pragma comment(linker, "/EXPORT:SHELL32_PifMgr_OpenProperties=_AheadLib_SHELL32_PifMgr_OpenProperties,@447")
#pragma comment(linker, "/EXPORT:SHELL32_PifMgr_SetProperties=_AheadLib_SHELL32_PifMgr_SetProperties,@448")
#pragma comment(linker, "/EXPORT:SHELL32_Printers_CreateBindInfo=_AheadLib_SHELL32_Printers_CreateBindInfo,@449")
#pragma comment(linker, "/EXPORT:SHELL32_Printjob_GetPidl=_AheadLib_SHELL32_Printjob_GetPidl,@450")
#pragma comment(linker, "/EXPORT:SHELL32_PurgeSystemIcon=_AheadLib_SHELL32_PurgeSystemIcon,@451")
#pragma comment(linker, "/EXPORT:SHELL32_RefreshOverlayImages=_AheadLib_SHELL32_RefreshOverlayImages,@452")
#pragma comment(linker, "/EXPORT:SHELL32_ResolveLinkInfoW=_AheadLib_SHELL32_ResolveLinkInfoW,@453")
#pragma comment(linker, "/EXPORT:SHELL32_SHAddSparseIcon=_AheadLib_SHELL32_SHAddSparseIcon,@454")
#pragma comment(linker, "/EXPORT:SHELL32_SHCreateByValueOperationInterrupt=_AheadLib_SHELL32_SHCreateByValueOperationInterrupt,@455")
#pragma comment(linker, "/EXPORT:SHELL32_SHCreateDefaultContextMenu=_AheadLib_SHELL32_SHCreateDefaultContextMenu,@456")
#pragma comment(linker, "/EXPORT:SHELL32_SHCreateLocalServer=_AheadLib_SHELL32_SHCreateLocalServer,@457")
#pragma comment(linker, "/EXPORT:SHELL32_SHCreateShellFolderView=_AheadLib_SHELL32_SHCreateShellFolderView,@458")
#pragma comment(linker, "/EXPORT:SHELL32_SHDuplicateEncryptionInfoFile=_AheadLib_SHELL32_SHDuplicateEncryptionInfoFile,@459")
#pragma comment(linker, "/EXPORT:SHELL32_SHEncryptFile=_AheadLib_SHELL32_SHEncryptFile,@460")
#pragma comment(linker, "/EXPORT:SHELL32_SHFormatDriveAsync=_AheadLib_SHELL32_SHFormatDriveAsync,@461")
#pragma comment(linker, "/EXPORT:SHELL32_SHGetThreadUndoManager=_AheadLib_SHELL32_SHGetThreadUndoManager,@462")
#pragma comment(linker, "/EXPORT:SHELL32_SHGetUserNameW=_AheadLib_SHELL32_SHGetUserNameW,@463")
#pragma comment(linker, "/EXPORT:SHELL32_SHIsVirtualDevice=_AheadLib_SHELL32_SHIsVirtualDevice,@464")
#pragma comment(linker, "/EXPORT:SHELL32_SHLaunchPropSheet=_AheadLib_SHELL32_SHLaunchPropSheet,@465")
#pragma comment(linker, "/EXPORT:SHELL32_SHLogILFromFSIL=_AheadLib_SHELL32_SHLogILFromFSIL,@466")
#pragma comment(linker, "/EXPORT:SHELL32_SHOpenWithDialog=_AheadLib_SHELL32_SHOpenWithDialog,@467")
#pragma comment(linker, "/EXPORT:SHELL32_SHStartNetConnectionDialogW=_AheadLib_SHELL32_SHStartNetConnectionDialogW,@468")
#pragma comment(linker, "/EXPORT:SHELL32_SHUICommandFromGUID=_AheadLib_SHELL32_SHUICommandFromGUID,@469")
#pragma comment(linker, "/EXPORT:SHELL32_SendToMenu_InvokeTargetedCommand=_AheadLib_SHELL32_SendToMenu_InvokeTargetedCommand,@470")
#pragma comment(linker, "/EXPORT:SHELL32_SendToMenu_VerifyTargetedCommand=_AheadLib_SHELL32_SendToMenu_VerifyTargetedCommand,@471")
#pragma comment(linker, "/EXPORT:SHELL32_ShowHideIconOnlyOnDesktop=_AheadLib_SHELL32_ShowHideIconOnlyOnDesktop,@472")
#pragma comment(linker, "/EXPORT:SHELL32_SimpleRatingToFilterCondition=_AheadLib_SHELL32_SimpleRatingToFilterCondition,@473")
#pragma comment(linker, "/EXPORT:SHELL32_StampIconForFile=_AheadLib_SHELL32_StampIconForFile,@474")
#pragma comment(linker, "/EXPORT:SHELL32_SuspendUndo=_AheadLib_SHELL32_SuspendUndo,@475")
#pragma comment(linker, "/EXPORT:SHELL32_TryVirtualDiscImageDriveEject=_AheadLib_SHELL32_TryVirtualDiscImageDriveEject,@476")
#pragma comment(linker, "/EXPORT:SHELL32_VerifySaferTrust=_AheadLib_SHELL32_VerifySaferTrust,@477")
#pragma comment(linker, "/EXPORT:SHEmptyRecycleBinA=_AheadLib_SHEmptyRecycleBinA,@478")
#pragma comment(linker, "/EXPORT:SHEmptyRecycleBinW=_AheadLib_SHEmptyRecycleBinW,@479")
#pragma comment(linker, "/EXPORT:SHEnableServiceObject=_AheadLib_SHEnableServiceObject,@480")
#pragma comment(linker, "/EXPORT:SHEnumerateUnreadMailAccountsW=_AheadLib_SHEnumerateUnreadMailAccountsW,@481")
#pragma comment(linker, "/EXPORT:SHEvaluateSystemCommandTemplate=_AheadLib_SHEvaluateSystemCommandTemplate,@482")
#pragma comment(linker, "/EXPORT:SHExecuteErrorMessageBox=_AheadLib_SHExecuteErrorMessageBox,@483")
#pragma comment(linker, "/EXPORT:SHExtractIconsW=_AheadLib_SHExtractIconsW,@484")
#pragma comment(linker, "/EXPORT:SHFileOperation=_AheadLib_SHFileOperation,@485")
#pragma comment(linker, "/EXPORT:SHFileOperationA=_AheadLib_SHFileOperationA,@486")
#pragma comment(linker, "/EXPORT:SHFileOperationW=_AheadLib_SHFileOperationW,@487")
#pragma comment(linker, "/EXPORT:SHFormatDrive=_AheadLib_SHFormatDrive,@488")
#pragma comment(linker, "/EXPORT:SHFreeNameMappings=_AheadLib_SHFreeNameMappings,@489")
#pragma comment(linker, "/EXPORT:SHGetDataFromIDListA=_AheadLib_SHGetDataFromIDListA,@490")
#pragma comment(linker, "/EXPORT:SHGetDataFromIDListW=_AheadLib_SHGetDataFromIDListW,@491")
#pragma comment(linker, "/EXPORT:SHGetDesktopFolder=_AheadLib_SHGetDesktopFolder,@492")
#pragma comment(linker, "/EXPORT:SHGetDiskFreeSpaceA=_AheadLib_SHGetDiskFreeSpaceA,@493")
#pragma comment(linker, "/EXPORT:SHGetDiskFreeSpaceExA=_AheadLib_SHGetDiskFreeSpaceExA,@494")
#pragma comment(linker, "/EXPORT:SHGetDiskFreeSpaceExW=_AheadLib_SHGetDiskFreeSpaceExW,@495")
#pragma comment(linker, "/EXPORT:SHGetDriveMedia=_AheadLib_SHGetDriveMedia,@496")
#pragma comment(linker, "/EXPORT:SHGetFileInfo=_AheadLib_SHGetFileInfo,@497")
#pragma comment(linker, "/EXPORT:SHGetFileInfoA=_AheadLib_SHGetFileInfoA,@498")
#pragma comment(linker, "/EXPORT:SHGetFileInfoW=_AheadLib_SHGetFileInfoW,@499")
#pragma comment(linker, "/EXPORT:SHGetFolderLocation=_AheadLib_SHGetFolderLocation,@500")
#pragma comment(linker, "/EXPORT:SHGetFolderPathA=_AheadLib_SHGetFolderPathA,@501")
#pragma comment(linker, "/EXPORT:SHGetFolderPathAndSubDirA=_AheadLib_SHGetFolderPathAndSubDirA,@502")
#pragma comment(linker, "/EXPORT:SHGetFolderPathAndSubDirW=_AheadLib_SHGetFolderPathAndSubDirW,@503")
#pragma comment(linker, "/EXPORT:SHGetFolderPathEx=_AheadLib_SHGetFolderPathEx,@504")
#pragma comment(linker, "/EXPORT:SHGetFolderPathW=_AheadLib_SHGetFolderPathW,@505")
#pragma comment(linker, "/EXPORT:SHGetIDListFromObject=_AheadLib_SHGetIDListFromObject,@506")
#pragma comment(linker, "/EXPORT:SHGetIconOverlayIndexA=_AheadLib_SHGetIconOverlayIndexA,@507")
#pragma comment(linker, "/EXPORT:SHGetIconOverlayIndexW=_AheadLib_SHGetIconOverlayIndexW,@508")
#pragma comment(linker, "/EXPORT:SHGetInstanceExplorer=_AheadLib_SHGetInstanceExplorer,@509")
#pragma comment(linker, "/EXPORT:SHGetItemFromDataObject=_AheadLib_SHGetItemFromDataObject,@510")
#pragma comment(linker, "/EXPORT:SHGetItemFromObject=_AheadLib_SHGetItemFromObject,@511")
#pragma comment(linker, "/EXPORT:SHGetKnownFolderIDList=_AheadLib_SHGetKnownFolderIDList,@512")
#pragma comment(linker, "/EXPORT:SHGetKnownFolderItem=_AheadLib_SHGetKnownFolderItem,@513")
#pragma comment(linker, "/EXPORT:SHGetKnownFolderPath=_AheadLib_SHGetKnownFolderPath,@514")
#pragma comment(linker, "/EXPORT:SHGetLocalizedName=_AheadLib_SHGetLocalizedName,@515")
#pragma comment(linker, "/EXPORT:SHGetMalloc=_AheadLib_SHGetMalloc,@516")
#pragma comment(linker, "/EXPORT:SHGetNameFromIDList=_AheadLib_SHGetNameFromIDList,@517")
#pragma comment(linker, "/EXPORT:SHGetNewLinkInfo=_AheadLib_SHGetNewLinkInfo,@518")
#pragma comment(linker, "/EXPORT:SHGetPathFromIDList=_AheadLib_SHGetPathFromIDList,@519")
#pragma comment(linker, "/EXPORT:Noname520=_AheadLib_Unnamed520,@520,NONAME")
#pragma comment(linker, "/EXPORT:Noname521=_AheadLib_Unnamed521,@521,NONAME")
#pragma comment(linker, "/EXPORT:Noname522=_AheadLib_Unnamed522,@522,NONAME")
#pragma comment(linker, "/EXPORT:Noname523=_AheadLib_Unnamed523,@523,NONAME")
#pragma comment(linker, "/EXPORT:RealDriveType=_AheadLib_RealDriveType,@524")
#pragma comment(linker, "/EXPORT:Noname525=_AheadLib_Unnamed525,@525,NONAME")
#pragma comment(linker, "/EXPORT:SHFlushSFCache=_AheadLib_SHFlushSFCache,@526")
#pragma comment(linker, "/EXPORT:SHGetPathFromIDListA=_AheadLib_SHGetPathFromIDListA,@527")
#pragma comment(linker, "/EXPORT:SHGetPathFromIDListEx=_AheadLib_SHGetPathFromIDListEx,@528")
#pragma comment(linker, "/EXPORT:SHGetPathFromIDListW=_AheadLib_SHGetPathFromIDListW,@529")
#pragma comment(linker, "/EXPORT:SHGetPropertyStoreForWindow=_AheadLib_SHGetPropertyStoreForWindow,@530")
#pragma comment(linker, "/EXPORT:SHGetPropertyStoreFromIDList=_AheadLib_SHGetPropertyStoreFromIDList,@531")
#pragma comment(linker, "/EXPORT:SHGetPropertyStoreFromParsingName=_AheadLib_SHGetPropertyStoreFromParsingName,@532")
#pragma comment(linker, "/EXPORT:SHGetSettings=_AheadLib_SHGetSettings,@533")
#pragma comment(linker, "/EXPORT:SHGetSpecialFolderLocation=_AheadLib_SHGetSpecialFolderLocation,@534")
#pragma comment(linker, "/EXPORT:SHGetSpecialFolderPathA=_AheadLib_SHGetSpecialFolderPathA,@535")
#pragma comment(linker, "/EXPORT:SHGetSpecialFolderPathW=_AheadLib_SHGetSpecialFolderPathW,@536")
#pragma comment(linker, "/EXPORT:SHGetStockIconInfo=_AheadLib_SHGetStockIconInfo,@537")
#pragma comment(linker, "/EXPORT:SHGetTemporaryPropertyForItem=_AheadLib_SHGetTemporaryPropertyForItem,@538")
#pragma comment(linker, "/EXPORT:SHGetUnreadMailCountW=_AheadLib_SHGetUnreadMailCountW,@539")
#pragma comment(linker, "/EXPORT:SHInvokePrinterCommandA=_AheadLib_SHInvokePrinterCommandA,@540")
#pragma comment(linker, "/EXPORT:SHInvokePrinterCommandW=_AheadLib_SHInvokePrinterCommandW,@541")
#pragma comment(linker, "/EXPORT:SHIsFileAvailableOffline=_AheadLib_SHIsFileAvailableOffline,@542")
#pragma comment(linker, "/EXPORT:SHLoadInProc=_AheadLib_SHLoadInProc,@543")
#pragma comment(linker, "/EXPORT:SHLoadNonloadedIconOverlayIdentifiers=_AheadLib_SHLoadNonloadedIconOverlayIdentifiers,@544")
#pragma comment(linker, "/EXPORT:SHOpenFolderAndSelectItems=_AheadLib_SHOpenFolderAndSelectItems,@545")
#pragma comment(linker, "/EXPORT:SHOpenWithDialog=_AheadLib_SHOpenWithDialog,@546")
#pragma comment(linker, "/EXPORT:SHParseDisplayName=_AheadLib_SHParseDisplayName,@547")
#pragma comment(linker, "/EXPORT:SHPathPrepareForWriteA=_AheadLib_SHPathPrepareForWriteA,@548")
#pragma comment(linker, "/EXPORT:SHPathPrepareForWriteW=_AheadLib_SHPathPrepareForWriteW,@549")
#pragma comment(linker, "/EXPORT:SHQueryRecycleBinA=_AheadLib_SHQueryRecycleBinA,@550")
#pragma comment(linker, "/EXPORT:SHQueryRecycleBinW=_AheadLib_SHQueryRecycleBinW,@551")
#pragma comment(linker, "/EXPORT:SHQueryUserNotificationState=_AheadLib_SHQueryUserNotificationState,@552")
#pragma comment(linker, "/EXPORT:SHRemoveLocalizedName=_AheadLib_SHRemoveLocalizedName,@553")
#pragma comment(linker, "/EXPORT:SHResolveLibrary=_AheadLib_SHResolveLibrary,@554")
#pragma comment(linker, "/EXPORT:SHSetDefaultProperties=_AheadLib_SHSetDefaultProperties,@555")
#pragma comment(linker, "/EXPORT:SHSetKnownFolderPath=_AheadLib_SHSetKnownFolderPath,@556")
#pragma comment(linker, "/EXPORT:SHSetLocalizedName=_AheadLib_SHSetLocalizedName,@557")
#pragma comment(linker, "/EXPORT:SHSetTemporaryPropertyForItem=_AheadLib_SHSetTemporaryPropertyForItem,@558")
#pragma comment(linker, "/EXPORT:SHSetUnreadMailCountW=_AheadLib_SHSetUnreadMailCountW,@559")
#pragma comment(linker, "/EXPORT:SHShowManageLibraryUI=_AheadLib_SHShowManageLibraryUI,@560")
#pragma comment(linker, "/EXPORT:SHUpdateRecycleBinIcon=_AheadLib_SHUpdateRecycleBinIcon,@561")
#pragma comment(linker, "/EXPORT:SetCurrentProcessExplicitAppUserModelID=_AheadLib_SetCurrentProcessExplicitAppUserModelID,@562")
#pragma comment(linker, "/EXPORT:SheChangeDirA=_AheadLib_SheChangeDirA,@563")
#pragma comment(linker, "/EXPORT:SheChangeDirExW=_AheadLib_SheChangeDirExW,@564")
#pragma comment(linker, "/EXPORT:SheGetDirA=_AheadLib_SheGetDirA,@565")
#pragma comment(linker, "/EXPORT:SheSetCurDrive=_AheadLib_SheSetCurDrive,@566")
#pragma comment(linker, "/EXPORT:ShellAboutA=_AheadLib_ShellAboutA,@567")
#pragma comment(linker, "/EXPORT:ShellAboutW=_AheadLib_ShellAboutW,@568")
#pragma comment(linker, "/EXPORT:ShellExec_RunDLL=_AheadLib_ShellExec_RunDLL,@569")
#pragma comment(linker, "/EXPORT:ShellExec_RunDLLA=_AheadLib_ShellExec_RunDLLA,@570")
#pragma comment(linker, "/EXPORT:ShellExec_RunDLLW=_AheadLib_ShellExec_RunDLLW,@571")
#pragma comment(linker, "/EXPORT:ShellExecuteA=_AheadLib_ShellExecuteA,@572")
#pragma comment(linker, "/EXPORT:ShellExecuteEx=_AheadLib_ShellExecuteEx,@573")
#pragma comment(linker, "/EXPORT:ShellExecuteExA=_AheadLib_ShellExecuteExA,@574")
#pragma comment(linker, "/EXPORT:ShellExecuteExW=_AheadLib_ShellExecuteExW,@575")
#pragma comment(linker, "/EXPORT:ShellExecuteW=_AheadLib_ShellExecuteW,@576")
#pragma comment(linker, "/EXPORT:ShellHookProc=_AheadLib_ShellHookProc,@577")
#pragma comment(linker, "/EXPORT:Shell_GetCachedImageIndexA=_AheadLib_Shell_GetCachedImageIndexA,@578")
#pragma comment(linker, "/EXPORT:Shell_GetCachedImageIndexW=_AheadLib_Shell_GetCachedImageIndexW,@579")
#pragma comment(linker, "/EXPORT:Shell_NotifyIcon=_AheadLib_Shell_NotifyIcon,@580")
#pragma comment(linker, "/EXPORT:Shell_NotifyIconA=_AheadLib_Shell_NotifyIconA,@581")
#pragma comment(linker, "/EXPORT:Shell_NotifyIconGetRect=_AheadLib_Shell_NotifyIconGetRect,@582")
#pragma comment(linker, "/EXPORT:Shell_NotifyIconW=_AheadLib_Shell_NotifyIconW,@583")
#pragma comment(linker, "/EXPORT:StateRepoNewMenuCache_EnsureCacheAsync=_AheadLib_StateRepoNewMenuCache_EnsureCacheAsync,@584")
#pragma comment(linker, "/EXPORT:StateRepoNewMenuCache_RebuildCacheAsync=_AheadLib_StateRepoNewMenuCache_RebuildCacheAsync,@585")
#pragma comment(linker, "/EXPORT:StrChrA=_AheadLib_StrChrA,@586")
#pragma comment(linker, "/EXPORT:StrChrIA=_AheadLib_StrChrIA,@587")
#pragma comment(linker, "/EXPORT:StrChrIW=_AheadLib_StrChrIW,@588")
#pragma comment(linker, "/EXPORT:StrChrW=_AheadLib_StrChrW,@589")
#pragma comment(linker, "/EXPORT:StrCmpNA=_AheadLib_StrCmpNA,@590")
#pragma comment(linker, "/EXPORT:StrCmpNIA=_AheadLib_StrCmpNIA,@591")
#pragma comment(linker, "/EXPORT:StrCmpNIW=_AheadLib_StrCmpNIW,@592")
#pragma comment(linker, "/EXPORT:StrCmpNW=_AheadLib_StrCmpNW,@593")
#pragma comment(linker, "/EXPORT:StrNCmpA=_AheadLib_StrNCmpA,@594")
#pragma comment(linker, "/EXPORT:StrNCmpIA=_AheadLib_StrNCmpIA,@595")
#pragma comment(linker, "/EXPORT:StrNCmpIW=_AheadLib_StrNCmpIW,@596")
#pragma comment(linker, "/EXPORT:StrNCmpW=_AheadLib_StrNCmpW,@597")
#pragma comment(linker, "/EXPORT:StrRChrA=_AheadLib_StrRChrA,@598")
#pragma comment(linker, "/EXPORT:StrRChrIA=_AheadLib_StrRChrIA,@599")
#pragma comment(linker, "/EXPORT:StrRChrIW=_AheadLib_StrRChrIW,@600")
#pragma comment(linker, "/EXPORT:StrRChrW=_AheadLib_StrRChrW,@601")
#pragma comment(linker, "/EXPORT:StrRStrA=_AheadLib_StrRStrA,@602")
#pragma comment(linker, "/EXPORT:StrRStrIA=_AheadLib_StrRStrIA,@603")
#pragma comment(linker, "/EXPORT:StrRStrIW=_AheadLib_StrRStrIW,@604")
#pragma comment(linker, "/EXPORT:StrRStrW=_AheadLib_StrRStrW,@605")
#pragma comment(linker, "/EXPORT:StrStrA=_AheadLib_StrStrA,@606")
#pragma comment(linker, "/EXPORT:StrStrIA=_AheadLib_StrStrIA,@607")
#pragma comment(linker, "/EXPORT:StrStrIW=_AheadLib_StrStrIW,@608")
#pragma comment(linker, "/EXPORT:StrStrW=_AheadLib_StrStrW,@609")
#pragma comment(linker, "/EXPORT:UsersLibrariesFolderUI_CreateInstance=_AheadLib_UsersLibrariesFolderUI_CreateInstance,@610")
#pragma comment(linker, "/EXPORT:WOWShellExecute=_AheadLib_WOWShellExecute,@611")
#pragma comment(linker, "/EXPORT:WaitForExplorerRestartW=_AheadLib_WaitForExplorerRestartW,@612")
#pragma comment(linker, "/EXPORT:Noname640=_AheadLib_Unnamed640,@640,NONAME")
#pragma comment(linker, "/EXPORT:Noname641=_AheadLib_Unnamed641,@641,NONAME")
#pragma comment(linker, "/EXPORT:Noname643=_AheadLib_Unnamed643,@643,NONAME")
#pragma comment(linker, "/EXPORT:SHChangeNotification_Lock=_AheadLib_SHChangeNotification_Lock,@644")
#pragma comment(linker, "/EXPORT:SHChangeNotification_Unlock=_AheadLib_SHChangeNotification_Unlock,@645")
#pragma comment(linker, "/EXPORT:Noname646=_AheadLib_Unnamed646,@646,NONAME")
#pragma comment(linker, "/EXPORT:Noname648=_AheadLib_Unnamed648,@648,NONAME")
#pragma comment(linker, "/EXPORT:Noname650=_AheadLib_Unnamed650,@650,NONAME")
#pragma comment(linker, "/EXPORT:Noname651=_AheadLib_Unnamed651,@651,NONAME")
#pragma comment(linker, "/EXPORT:WriteCabinetState=_AheadLib_WriteCabinetState,@652")
#pragma comment(linker, "/EXPORT:Noname653=_AheadLib_Unnamed653,@653,NONAME")
#pragma comment(linker, "/EXPORT:ReadCabinetState=_AheadLib_ReadCabinetState,@654")
#pragma comment(linker, "/EXPORT:Noname660=_AheadLib_Unnamed660,@660,NONAME")
#pragma comment(linker, "/EXPORT:IsUserAnAdmin=_AheadLib_IsUserAnAdmin,@680")
#pragma comment(linker, "/EXPORT:Noname681=_AheadLib_Unnamed681,@681,NONAME")
#pragma comment(linker, "/EXPORT:StgMakeUniqueName=_AheadLib_StgMakeUniqueName,@682")
#pragma comment(linker, "/EXPORT:Noname683=_AheadLib_Unnamed683,@683,NONAME")
#pragma comment(linker, "/EXPORT:Noname684=_AheadLib_Unnamed684,@684,NONAME")
#pragma comment(linker, "/EXPORT:SHPropStgCreate=_AheadLib_SHPropStgCreate,@685")
#pragma comment(linker, "/EXPORT:SHPropStgReadMultiple=_AheadLib_SHPropStgReadMultiple,@688")
#pragma comment(linker, "/EXPORT:SHPropStgWriteMultiple=_AheadLib_SHPropStgWriteMultiple,@689")
#pragma comment(linker, "/EXPORT:Noname690=_AheadLib_Unnamed690,@690,NONAME")
#pragma comment(linker, "/EXPORT:Noname691=_AheadLib_Unnamed691,@691,NONAME")
#pragma comment(linker, "/EXPORT:Noname700=_AheadLib_Unnamed700,@700,NONAME")
#pragma comment(linker, "/EXPORT:CDefFolderMenu_Create2=_AheadLib_CDefFolderMenu_Create2,@701")
#pragma comment(linker, "/EXPORT:Noname702=_AheadLib_Unnamed702,@702,NONAME")
#pragma comment(linker, "/EXPORT:Noname703=_AheadLib_Unnamed703,@703,NONAME")
#pragma comment(linker, "/EXPORT:Noname704=_AheadLib_Unnamed704,@704,NONAME")
#pragma comment(linker, "/EXPORT:Noname707=_AheadLib_Unnamed707,@707,NONAME")
#pragma comment(linker, "/EXPORT:Noname708=_AheadLib_Unnamed708,@708,NONAME")
#pragma comment(linker, "/EXPORT:SHGetSetFolderCustomSettings=_AheadLib_SHGetSetFolderCustomSettings,@709")
#pragma comment(linker, "/EXPORT:Noname711=_AheadLib_Unnamed711,@711,NONAME")
#pragma comment(linker, "/EXPORT:Noname712=_AheadLib_Unnamed712,@712,NONAME")
#pragma comment(linker, "/EXPORT:Noname713=_AheadLib_Unnamed713,@713,NONAME")
#pragma comment(linker, "/EXPORT:Noname714=_AheadLib_Unnamed714,@714,NONAME")
#pragma comment(linker, "/EXPORT:Noname715=_AheadLib_Unnamed715,@715,NONAME")
#pragma comment(linker, "/EXPORT:SHMultiFileProperties=_AheadLib_SHMultiFileProperties,@716")
#pragma comment(linker, "/EXPORT:Noname719=_AheadLib_Unnamed719,@719,NONAME")
#pragma comment(linker, "/EXPORT:Noname720=_AheadLib_Unnamed720,@720,NONAME")
#pragma comment(linker, "/EXPORT:Noname721=_AheadLib_Unnamed721,@721,NONAME")
#pragma comment(linker, "/EXPORT:Noname722=_AheadLib_Unnamed722,@722,NONAME")
#pragma comment(linker, "/EXPORT:Noname723=_AheadLib_Unnamed723,@723,NONAME")
#pragma comment(linker, "/EXPORT:Noname724=_AheadLib_Unnamed724,@724,NONAME")
#pragma comment(linker, "/EXPORT:Noname725=_AheadLib_Unnamed725,@725,NONAME")
#pragma comment(linker, "/EXPORT:Noname726=_AheadLib_Unnamed726,@726,NONAME")
#pragma comment(linker, "/EXPORT:SHGetImageList=_AheadLib_SHGetImageList,@727")
#pragma comment(linker, "/EXPORT:RestartDialogEx=_AheadLib_RestartDialogEx,@730")
#pragma comment(linker, "/EXPORT:Noname731=_AheadLib_Unnamed731,@731,NONAME")
#pragma comment(linker, "/EXPORT:Noname732=_AheadLib_Unnamed732,@732,NONAME")
#pragma comment(linker, "/EXPORT:Noname733=_AheadLib_Unnamed733,@733,NONAME")
#pragma comment(linker, "/EXPORT:Noname740=_AheadLib_Unnamed740,@740,NONAME")
#pragma comment(linker, "/EXPORT:SHCreateFileExtractIconW=_AheadLib_SHCreateFileExtractIconW,@743")
#pragma comment(linker, "/EXPORT:Noname744=_AheadLib_Unnamed744,@744,NONAME")
#pragma comment(linker, "/EXPORT:Noname745=_AheadLib_Unnamed745,@745,NONAME")
#pragma comment(linker, "/EXPORT:SHLimitInputEdit=_AheadLib_SHLimitInputEdit,@747")
#pragma comment(linker, "/EXPORT:Noname748=_AheadLib_Unnamed748,@748,NONAME")
#pragma comment(linker, "/EXPORT:Noname749=_AheadLib_Unnamed749,@749,NONAME")
#pragma comment(linker, "/EXPORT:SHGetAttributesFromDataObject=_AheadLib_SHGetAttributesFromDataObject,@750")
#pragma comment(linker, "/EXPORT:Noname751=_AheadLib_Unnamed751,@751,NONAME")
#pragma comment(linker, "/EXPORT:Noname752=_AheadLib_Unnamed752,@752,NONAME")
#pragma comment(linker, "/EXPORT:Noname753=_AheadLib_Unnamed753,@753,NONAME")
#pragma comment(linker, "/EXPORT:Noname754=_AheadLib_Unnamed754,@754,NONAME")
#pragma comment(linker, "/EXPORT:Noname755=_AheadLib_Unnamed755,@755,NONAME")
#pragma comment(linker, "/EXPORT:Noname756=_AheadLib_Unnamed756,@756,NONAME")
#pragma comment(linker, "/EXPORT:Noname757=_AheadLib_Unnamed757,@757,NONAME")
#pragma comment(linker, "/EXPORT:Noname758=_AheadLib_Unnamed758,@758,NONAME")
#pragma comment(linker, "/EXPORT:Noname759=_AheadLib_Unnamed759,@759,NONAME")
#pragma comment(linker, "/EXPORT:Noname760=_AheadLib_Unnamed760,@760,NONAME")
#pragma comment(linker, "/EXPORT:Noname761=_AheadLib_Unnamed761,@761,NONAME")
#pragma comment(linker, "/EXPORT:Noname762=_AheadLib_Unnamed762,@762,NONAME")
#pragma comment(linker, "/EXPORT:Noname763=_AheadLib_Unnamed763,@763,NONAME")
#pragma comment(linker, "/EXPORT:Noname764=_AheadLib_Unnamed764,@764,NONAME")
#pragma comment(linker, "/EXPORT:Noname765=_AheadLib_Unnamed765,@765,NONAME")
#pragma comment(linker, "/EXPORT:Noname766=_AheadLib_Unnamed766,@766,NONAME")
#pragma comment(linker, "/EXPORT:Noname767=_AheadLib_Unnamed767,@767,NONAME")
#pragma comment(linker, "/EXPORT:Noname777=_AheadLib_Unnamed777,@777,NONAME")
#pragma comment(linker, "/EXPORT:Noname778=_AheadLib_Unnamed778,@778,NONAME")
#pragma comment(linker, "/EXPORT:Noname779=_AheadLib_Unnamed779,@779,NONAME")
#pragma comment(linker, "/EXPORT:Noname781=_AheadLib_Unnamed781,@781,NONAME")
#pragma comment(linker, "/EXPORT:Noname782=_AheadLib_Unnamed782,@782,NONAME")
#pragma comment(linker, "/EXPORT:Noname786=_AheadLib_Unnamed786,@786,NONAME")
#pragma comment(linker, "/EXPORT:Noname787=_AheadLib_Unnamed787,@787,NONAME")
#pragma comment(linker, "/EXPORT:Noname788=_AheadLib_Unnamed788,@788,NONAME")
#pragma comment(linker, "/EXPORT:Noname789=_AheadLib_Unnamed789,@789,NONAME")
#pragma comment(linker, "/EXPORT:Noname790=_AheadLib_Unnamed790,@790,NONAME")
#pragma comment(linker, "/EXPORT:Noname791=_AheadLib_Unnamed791,@791,NONAME")
#pragma comment(linker, "/EXPORT:Noname792=_AheadLib_Unnamed792,@792,NONAME")
#pragma comment(linker, "/EXPORT:Noname810=_AheadLib_Unnamed810,@810,NONAME")
#pragma comment(linker, "/EXPORT:Noname811=_AheadLib_Unnamed811,@811,NONAME")
#pragma comment(linker, "/EXPORT:Noname812=_AheadLib_Unnamed812,@812,NONAME")
#pragma comment(linker, "/EXPORT:Noname813=_AheadLib_Unnamed813,@813,NONAME")
#pragma comment(linker, "/EXPORT:Noname814=_AheadLib_Unnamed814,@814,NONAME")
#pragma comment(linker, "/EXPORT:Noname815=_AheadLib_Unnamed815,@815,NONAME")
#pragma comment(linker, "/EXPORT:Noname816=_AheadLib_Unnamed816,@816,NONAME")
#pragma comment(linker, "/EXPORT:Noname817=_AheadLib_Unnamed817,@817,NONAME")
#pragma comment(linker, "/EXPORT:Noname818=_AheadLib_Unnamed818,@818,NONAME")
#pragma comment(linker, "/EXPORT:Noname819=_AheadLib_Unnamed819,@819,NONAME")
#pragma comment(linker, "/EXPORT:Noname820=_AheadLib_Unnamed820,@820,NONAME")
#pragma comment(linker, "/EXPORT:Noname821=_AheadLib_Unnamed821,@821,NONAME")
#pragma comment(linker, "/EXPORT:Noname822=_AheadLib_Unnamed822,@822,NONAME")
#pragma comment(linker, "/EXPORT:Noname823=_AheadLib_Unnamed823,@823,NONAME")
#pragma comment(linker, "/EXPORT:Noname824=_AheadLib_Unnamed824,@824,NONAME")
#pragma comment(linker, "/EXPORT:Noname825=_AheadLib_Unnamed825,@825,NONAME")
#pragma comment(linker, "/EXPORT:Noname826=_AheadLib_Unnamed826,@826,NONAME")
#pragma comment(linker, "/EXPORT:Noname827=_AheadLib_Unnamed827,@827,NONAME")
#pragma comment(linker, "/EXPORT:Noname828=_AheadLib_Unnamed828,@828,NONAME")
#pragma comment(linker, "/EXPORT:Noname829=_AheadLib_Unnamed829,@829,NONAME")
#pragma comment(linker, "/EXPORT:Noname830=_AheadLib_Unnamed830,@830,NONAME")
#pragma comment(linker, "/EXPORT:Noname831=_AheadLib_Unnamed831,@831,NONAME")
#pragma comment(linker, "/EXPORT:Noname832=_AheadLib_Unnamed832,@832,NONAME")
#pragma comment(linker, "/EXPORT:Noname833=_AheadLib_Unnamed833,@833,NONAME")
#pragma comment(linker, "/EXPORT:Noname834=_AheadLib_Unnamed834,@834,NONAME")
#pragma comment(linker, "/EXPORT:Noname835=_AheadLib_Unnamed835,@835,NONAME")
#pragma comment(linker, "/EXPORT:Noname836=_AheadLib_Unnamed836,@836,NONAME")
#pragma comment(linker, "/EXPORT:Noname837=_AheadLib_Unnamed837,@837,NONAME")
#pragma comment(linker, "/EXPORT:Noname838=_AheadLib_Unnamed838,@838,NONAME")
#pragma comment(linker, "/EXPORT:Noname839=_AheadLib_Unnamed839,@839,NONAME")
#pragma comment(linker, "/EXPORT:Noname840=_AheadLib_Unnamed840,@840,NONAME")
#pragma comment(linker, "/EXPORT:Noname841=_AheadLib_Unnamed841,@841,NONAME")
#pragma comment(linker, "/EXPORT:Noname842=_AheadLib_Unnamed842,@842,NONAME")
#pragma comment(linker, "/EXPORT:Noname843=_AheadLib_Unnamed843,@843,NONAME")
#pragma comment(linker, "/EXPORT:Noname844=_AheadLib_Unnamed844,@844,NONAME")
#pragma comment(linker, "/EXPORT:Noname845=_AheadLib_Unnamed845,@845,NONAME")
#pragma comment(linker, "/EXPORT:ILLoadFromStreamEx=_AheadLib_ILLoadFromStreamEx,@846")
#pragma comment(linker, "/EXPORT:Noname847=_AheadLib_Unnamed847,@847,NONAME")
#pragma comment(linker, "/EXPORT:Noname848=_AheadLib_Unnamed848,@848,NONAME")
#pragma comment(linker, "/EXPORT:Noname849=_AheadLib_Unnamed849,@849,NONAME")
#pragma comment(linker, "/EXPORT:Noname850=_AheadLib_Unnamed850,@850,NONAME")
#pragma comment(linker, "/EXPORT:Noname851=_AheadLib_Unnamed851,@851,NONAME")
#pragma comment(linker, "/EXPORT:Noname852=_AheadLib_Unnamed852,@852,NONAME")
#pragma comment(linker, "/EXPORT:Noname853=_AheadLib_Unnamed853,@853,NONAME")
#pragma comment(linker, "/EXPORT:Noname854=_AheadLib_Unnamed854,@854,NONAME")
#pragma comment(linker, "/EXPORT:Noname856=_AheadLib_Unnamed856,@856,NONAME")
#pragma comment(linker, "/EXPORT:Noname857=_AheadLib_Unnamed857,@857,NONAME")
#pragma comment(linker, "/EXPORT:Noname858=_AheadLib_Unnamed858,@858,NONAME")
#pragma comment(linker, "/EXPORT:Noname859=_AheadLib_Unnamed859,@859,NONAME")
#pragma comment(linker, "/EXPORT:Noname860=_AheadLib_Unnamed860,@860,NONAME")
#pragma comment(linker, "/EXPORT:Noname861=_AheadLib_Unnamed861,@861,NONAME")
#pragma comment(linker, "/EXPORT:Noname862=_AheadLib_Unnamed862,@862,NONAME")
#pragma comment(linker, "/EXPORT:Noname863=_AheadLib_Unnamed863,@863,NONAME")
#pragma comment(linker, "/EXPORT:Noname864=_AheadLib_Unnamed864,@864,NONAME")
#pragma comment(linker, "/EXPORT:Noname865=_AheadLib_Unnamed865,@865,NONAME")
#pragma comment(linker, "/EXPORT:Noname866=_AheadLib_Unnamed866,@866,NONAME")
#pragma comment(linker, "/EXPORT:Noname867=_AheadLib_Unnamed867,@867,NONAME")
#pragma comment(linker, "/EXPORT:Noname868=_AheadLib_Unnamed868,@868,NONAME")
#pragma comment(linker, "/EXPORT:Noname869=_AheadLib_Unnamed869,@869,NONAME")
#pragma comment(linker, "/EXPORT:Noname870=_AheadLib_Unnamed870,@870,NONAME")
#pragma comment(linker, "/EXPORT:Noname871=_AheadLib_Unnamed871,@871,NONAME")
#pragma comment(linker, "/EXPORT:Noname872=_AheadLib_Unnamed872,@872,NONAME")
#pragma comment(linker, "/EXPORT:Noname873=_AheadLib_Unnamed873,@873,NONAME")
#pragma comment(linker, "/EXPORT:Noname874=_AheadLib_Unnamed874,@874,NONAME")
#pragma comment(linker, "/EXPORT:Noname875=_AheadLib_Unnamed875,@875,NONAME")
#pragma comment(linker, "/EXPORT:Noname876=_AheadLib_Unnamed876,@876,NONAME")
#pragma comment(linker, "/EXPORT:Noname877=_AheadLib_Unnamed877,@877,NONAME")
#pragma comment(linker, "/EXPORT:Noname878=_AheadLib_Unnamed878,@878,NONAME")
#pragma comment(linker, "/EXPORT:Noname880=_AheadLib_Unnamed880,@880,NONAME")
#pragma comment(linker, "/EXPORT:Noname881=_AheadLib_Unnamed881,@881,NONAME")
#pragma comment(linker, "/EXPORT:Noname882=_AheadLib_Unnamed882,@882,NONAME")
#pragma comment(linker, "/EXPORT:Noname883=_AheadLib_Unnamed883,@883,NONAME")
#pragma comment(linker, "/EXPORT:Noname884=_AheadLib_Unnamed884,@884,NONAME")
#pragma comment(linker, "/EXPORT:Noname885=_AheadLib_Unnamed885,@885,NONAME")
#pragma comment(linker, "/EXPORT:Noname886=_AheadLib_Unnamed886,@886,NONAME")
#pragma comment(linker, "/EXPORT:Noname887=_AheadLib_Unnamed887,@887,NONAME")
#pragma comment(linker, "/EXPORT:Noname888=_AheadLib_Unnamed888,@888,NONAME")
#pragma comment(linker, "/EXPORT:Noname889=_AheadLib_Unnamed889,@889,NONAME")
#pragma comment(linker, "/EXPORT:Noname890=_AheadLib_Unnamed890,@890,NONAME")
#pragma comment(linker, "/EXPORT:Noname891=_AheadLib_Unnamed891,@891,NONAME")
#pragma comment(linker, "/EXPORT:Noname892=_AheadLib_Unnamed892,@892,NONAME")
#pragma comment(linker, "/EXPORT:Noname893=_AheadLib_Unnamed893,@893,NONAME")
#pragma comment(linker, "/EXPORT:Noname894=_AheadLib_Unnamed894,@894,NONAME")
#pragma comment(linker, "/EXPORT:Noname895=_AheadLib_Unnamed895,@895,NONAME")
#pragma comment(linker, "/EXPORT:Noname896=_AheadLib_Unnamed896,@896,NONAME")
#pragma comment(linker, "/EXPORT:Noname897=_AheadLib_Unnamed897,@897,NONAME")
#pragma comment(linker, "/EXPORT:Noname898=_AheadLib_Unnamed898,@898,NONAME")
#pragma comment(linker, "/EXPORT:Noname899=_AheadLib_Unnamed899,@899,NONAME")
#pragma comment(linker, "/EXPORT:Noname900=_AheadLib_Unnamed900,@900,NONAME")
#pragma comment(linker, "/EXPORT:Noname901=_AheadLib_Unnamed901,@901,NONAME")
#pragma comment(linker, "/EXPORT:Noname902=_AheadLib_Unnamed902,@902,NONAME")
#pragma comment(linker, "/EXPORT:Noname903=_AheadLib_Unnamed903,@903,NONAME")
#pragma comment(linker, "/EXPORT:Noname904=_AheadLib_Unnamed904,@904,NONAME")
#pragma comment(linker, "/EXPORT:Noname905=_AheadLib_Unnamed905,@905,NONAME")
#pragma comment(linker, "/EXPORT:Noname906=_AheadLib_Unnamed906,@906,NONAME")
#pragma comment(linker, "/EXPORT:Noname907=_AheadLib_Unnamed907,@907,NONAME")
#pragma comment(linker, "/EXPORT:Noname909=_AheadLib_Unnamed909,@909,NONAME")
#pragma comment(linker, "/EXPORT:Noname910=_AheadLib_Unnamed910,@910,NONAME")
#pragma comment(linker, "/EXPORT:Noname911=_AheadLib_Unnamed911,@911,NONAME")
#pragma comment(linker, "/EXPORT:Noname912=_AheadLib_Unnamed912,@912,NONAME")
#pragma comment(linker, "/EXPORT:Noname913=_AheadLib_Unnamed913,@913,NONAME")
#pragma comment(linker, "/EXPORT:Noname914=_AheadLib_Unnamed914,@914,NONAME")
#pragma comment(linker, "/EXPORT:Noname915=_AheadLib_Unnamed915,@915,NONAME")
#pragma comment(linker, "/EXPORT:Noname916=_AheadLib_Unnamed916,@916,NONAME")
#pragma comment(linker, "/EXPORT:GetSystemPersistedStorageItemList=_AheadLib_GetSystemPersistedStorageItemList,@919")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromPath_PartialTrustCaller=_AheadLib_CreateStorageItemFromPath_PartialTrustCaller,@920")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromShellItem_FullTrustCaller=_AheadLib_CreateStorageItemFromShellItem_FullTrustCaller,@921")
#pragma comment(linker, "/EXPORT:Noname922=_AheadLib_Unnamed922,@922,NONAME")
#pragma comment(linker, "/EXPORT:Noname923=_AheadLib_Unnamed923,@923,NONAME")
#pragma comment(linker, "/EXPORT:Noname924=_AheadLib_Unnamed924,@924,NONAME")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromShellItem_FullTrustCaller_ForPackage=_AheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage,@925")
#pragma comment(linker, "/EXPORT:Noname927=_AheadLib_Unnamed927,@927,NONAME")
#pragma comment(linker, "/EXPORT:Noname928=_AheadLib_Unnamed928,@928,NONAME")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle=_AheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle,@929")
#pragma comment(linker, "/EXPORT:Noname930=_AheadLib_Unnamed930,@930,NONAME")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage=_AheadLib_CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage,@931")
#pragma comment(linker, "/EXPORT:Noname932=_AheadLib_Unnamed932,@932,NONAME")
#pragma comment(linker, "/EXPORT:Noname933=_AheadLib_Unnamed933,@933,NONAME")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromPath_FullTrustCaller=_AheadLib_CreateStorageItemFromPath_FullTrustCaller,@935")
#pragma comment(linker, "/EXPORT:CreateStorageItemFromPath_FullTrustCaller_ForPackage=_AheadLib_CreateStorageItemFromPath_FullTrustCaller_ForPackage,@936")
#pragma comment(linker, "/EXPORT:CStorageItem_GetValidatedStorageItemObject=_AheadLib_CStorageItem_GetValidatedStorageItemObject,@937")
#pragma comment(linker, "/EXPORT:Noname938=_AheadLib_Unnamed938,@938,NONAME")
#pragma comment(linker, "/EXPORT:Noname939=_AheadLib_Unnamed939,@939,NONAME")
#pragma comment(linker, "/EXPORT:Noname940=_AheadLib_Unnamed940,@940,NONAME")
#pragma comment(linker, "/EXPORT:IsProcessAnExplorer=_AheadLib_IsProcessAnExplorer,@941")
#pragma comment(linker, "/EXPORT:IsDesktopExplorerProcess=_AheadLib_IsDesktopExplorerProcess,@942")
#pragma comment(linker, "/EXPORT:Noname943=_AheadLib_Unnamed943,@943,NONAME")
#pragma comment(linker, "/EXPORT:Noname944=_AheadLib_Unnamed944,@944,NONAME")
#pragma comment(linker, "/EXPORT:Noname945=_AheadLib_Unnamed945,@945,NONAME")
#pragma comment(linker, "/EXPORT:Noname946=_AheadLib_Unnamed946,@946,NONAME")
#pragma comment(linker, "/EXPORT:Noname970=_AheadLib_Unnamed970,@970,NONAME")
#pragma comment(linker, "/EXPORT:Noname971=_AheadLib_Unnamed971,@971,NONAME")
#pragma comment(linker, "/EXPORT:Noname972=_AheadLib_Unnamed972,@972,NONAME")
#pragma comment(linker, "/EXPORT:Noname2000=_AheadLib_Unnamed2000,@2000,NONAME")
#pragma comment(linker, "/EXPORT:Noname2001=_AheadLib_Unnamed2001,@2001,NONAME")


PVOID pfnAheadLib_SHChangeNotifyRegister;
PVOID pfnAheadLib_SHDefExtractIconA;
PVOID pfnAheadLib_SHChangeNotifyDeregister;
PVOID pfnAheadLib_Unnamed5;
PVOID pfnAheadLib_SHDefExtractIconW;
PVOID pfnAheadLib_Unnamed7;
PVOID pfnAheadLib_Unnamed8;
PVOID pfnAheadLib_PifMgr_OpenProperties;
PVOID pfnAheadLib_PifMgr_GetProperties;
PVOID pfnAheadLib_PifMgr_SetProperties;
PVOID pfnAheadLib_Unnamed12;
PVOID pfnAheadLib_PifMgr_CloseProperties;
PVOID pfnAheadLib_SHStartNetConnectionDialogW;
PVOID pfnAheadLib_Unnamed15;
PVOID pfnAheadLib_ILFindLastID;
PVOID pfnAheadLib_ILRemoveLastID;
PVOID pfnAheadLib_ILClone;
PVOID pfnAheadLib_ILCloneFirst;
PVOID pfnAheadLib_Unnamed20;
PVOID pfnAheadLib_ILIsEqual;
PVOID pfnAheadLib_DAD_DragEnterEx2;
PVOID pfnAheadLib_ILIsParent;
PVOID pfnAheadLib_ILFindChild;
PVOID pfnAheadLib_ILCombine;
PVOID pfnAheadLib_Unnamed26;
PVOID pfnAheadLib_ILSaveToStream;
PVOID pfnAheadLib_SHILCreateFromPath;
PVOID pfnAheadLib_Unnamed29;
PVOID pfnAheadLib_Unnamed30;
PVOID pfnAheadLib_Unnamed31;
PVOID pfnAheadLib_Unnamed32;
PVOID pfnAheadLib_Unnamed33;
PVOID pfnAheadLib_Unnamed34;
PVOID pfnAheadLib_Unnamed35;
PVOID pfnAheadLib_Unnamed36;
PVOID pfnAheadLib_Unnamed37;
PVOID pfnAheadLib_Unnamed38;
PVOID pfnAheadLib_Unnamed39;
PVOID pfnAheadLib_Unnamed40;
PVOID pfnAheadLib_IsLFNDriveA;
PVOID pfnAheadLib_IsLFNDriveW;
PVOID pfnAheadLib_PathIsExe;
PVOID pfnAheadLib_Unnamed44;
PVOID pfnAheadLib_Unnamed45;
PVOID pfnAheadLib_Unnamed46;
PVOID pfnAheadLib_PathMakeUniqueName;
PVOID pfnAheadLib_Unnamed48;
PVOID pfnAheadLib_PathQualify;
PVOID pfnAheadLib_Unnamed50;
PVOID pfnAheadLib_PathResolve;
PVOID pfnAheadLib_Unnamed52;
PVOID pfnAheadLib_Unnamed53;
PVOID pfnAheadLib_Unnamed54;
PVOID pfnAheadLib_Unnamed55;
PVOID pfnAheadLib_Unnamed56;
PVOID pfnAheadLib_Unnamed57;
PVOID pfnAheadLib_Unnamed58;
PVOID pfnAheadLib_RestartDialog;
PVOID pfnAheadLib_Unnamed60;
PVOID pfnAheadLib_Unnamed61;
PVOID pfnAheadLib_PickIconDlg;
PVOID pfnAheadLib_GetFileNameFromBrowse;
PVOID pfnAheadLib_DriveType;
PVOID pfnAheadLib_Unnamed65;
PVOID pfnAheadLib_IsNetDrive;
PVOID pfnAheadLib_Shell_MergeMenus;
PVOID pfnAheadLib_SHGetSetSettings;
PVOID pfnAheadLib_Unnamed69;
PVOID pfnAheadLib_Unnamed70;
PVOID pfnAheadLib_Shell_GetImageLists;
PVOID pfnAheadLib_Shell_GetCachedImageIndex;
PVOID pfnAheadLib_SHShellFolderView_Message;
PVOID pfnAheadLib_SHCreateStdEnumFmtEtc;
PVOID pfnAheadLib_PathYetAnotherMakeUniqueName;
PVOID pfnAheadLib_Unnamed76;
PVOID pfnAheadLib_SHMapPIDLToSystemImageListIndex;
PVOID pfnAheadLib_Unnamed78;
PVOID pfnAheadLib_Unnamed79;
PVOID pfnAheadLib_SHOpenPropSheetW;
PVOID pfnAheadLib_OpenAs_RunDLL;
PVOID pfnAheadLib_Unnamed82;
PVOID pfnAheadLib_CIDLData_CreateFromIDArray;
PVOID pfnAheadLib_Unnamed84;
PVOID pfnAheadLib_OpenRegStream;
PVOID pfnAheadLib_Unnamed86;
PVOID pfnAheadLib_Unnamed87;
PVOID pfnAheadLib_SHDoDragDrop;
PVOID pfnAheadLib_SHCloneSpecialIDList;
PVOID pfnAheadLib_SHFindFiles;
PVOID pfnAheadLib_Unnamed91;
PVOID pfnAheadLib_PathGetShortPath;
PVOID pfnAheadLib_Unnamed93;
PVOID pfnAheadLib_Unnamed94;
PVOID pfnAheadLib_Unnamed95;
PVOID pfnAheadLib_Unnamed96;
PVOID pfnAheadLib_Unnamed97;
PVOID pfnAheadLib_SHGetRealIDL;
PVOID pfnAheadLib_Unnamed99;
PVOID pfnAheadLib_SHRestricted;
PVOID pfnAheadLib_Unnamed101;
PVOID pfnAheadLib_SHCoCreateInstance;
PVOID pfnAheadLib_SignalFileOpen;
PVOID pfnAheadLib_Unnamed104;
PVOID pfnAheadLib_Unnamed105;
PVOID pfnAheadLib_Unnamed106;
PVOID pfnAheadLib_Unnamed107;
PVOID pfnAheadLib_Unnamed108;
PVOID pfnAheadLib_Unnamed109;
PVOID pfnAheadLib_Unnamed110;
PVOID pfnAheadLib_Unnamed111;
PVOID pfnAheadLib_Unnamed112;
PVOID pfnAheadLib_Unnamed113;
PVOID pfnAheadLib_Unnamed114;
PVOID pfnAheadLib_Unnamed115;
PVOID pfnAheadLib_Unnamed116;
PVOID pfnAheadLib_Unnamed117;
PVOID pfnAheadLib_Unnamed118;
PVOID pfnAheadLib_IsLFNDrive;
PVOID pfnAheadLib_Unnamed120;
PVOID pfnAheadLib_Unnamed121;
PVOID pfnAheadLib_Unnamed122;
PVOID pfnAheadLib_Unnamed123;
PVOID pfnAheadLib_Unnamed124;
PVOID pfnAheadLib_OpenAs_RunDLLA;
PVOID pfnAheadLib_Unnamed126;
PVOID pfnAheadLib_Unnamed127;
PVOID pfnAheadLib_Unnamed128;
PVOID pfnAheadLib_DAD_AutoScroll;
PVOID pfnAheadLib_Unnamed130;
PVOID pfnAheadLib_DAD_DragEnterEx;
PVOID pfnAheadLib_DAD_DragLeave;
PVOID pfnAheadLib_OpenAs_RunDLLW;
PVOID pfnAheadLib_DAD_DragMove;
PVOID pfnAheadLib_PrepareDiscForBurnRunDllW;
PVOID pfnAheadLib_DAD_SetDragImage;
PVOID pfnAheadLib_DAD_ShowDragImage;
PVOID pfnAheadLib_PrintersGetCommand_RunDLL;
PVOID pfnAheadLib_PrintersGetCommand_RunDLLA;
PVOID pfnAheadLib_Unnamed140;
PVOID pfnAheadLib_Unnamed141;
PVOID pfnAheadLib_Unnamed142;
PVOID pfnAheadLib_Unnamed143;
PVOID pfnAheadLib_Unnamed144;
PVOID pfnAheadLib_Unnamed145;
PVOID pfnAheadLib_Unnamed146;
PVOID pfnAheadLib_SHCLSIDFromString;
PVOID pfnAheadLib_Unnamed148;
PVOID pfnAheadLib_SHFind_InitMenuPopup;
PVOID pfnAheadLib_PrintersGetCommand_RunDLLW;
PVOID pfnAheadLib_Unnamed151;
PVOID pfnAheadLib_ILGetSize;
PVOID pfnAheadLib_ILGetNext;
PVOID pfnAheadLib_ILAppendID;
PVOID pfnAheadLib_ILFree;
PVOID pfnAheadLib_Unnamed156;
PVOID pfnAheadLib_ILCreateFromPath;
PVOID pfnAheadLib_Unnamed158;
PVOID pfnAheadLib_Unnamed159;
PVOID pfnAheadLib_Unnamed160;
PVOID pfnAheadLib_Unnamed161;
PVOID pfnAheadLib_SHSimpleIDListFromPath;
PVOID pfnAheadLib_Unnamed163;
PVOID pfnAheadLib_Win32DeleteFile;
PVOID pfnAheadLib_SHCreateDirectory;
PVOID pfnAheadLib_Unnamed166;
PVOID pfnAheadLib_SHAddFromPropSheetExtArray;
PVOID pfnAheadLib_SHCreatePropSheetExtArray;
PVOID pfnAheadLib_SHDestroyPropSheetExtArray;
PVOID pfnAheadLib_SHReplaceFromPropSheetExtArray;
PVOID pfnAheadLib_PathCleanupSpec;
PVOID pfnAheadLib_Unnamed172;
PVOID pfnAheadLib_SHValidateUNC;
PVOID pfnAheadLib_SHCreateShellFolderViewEx;
PVOID pfnAheadLib_Unnamed175;
PVOID pfnAheadLib_SHSetInstanceExplorer;
PVOID pfnAheadLib_Unnamed177;
PVOID pfnAheadLib_SHObjectProperties;
PVOID pfnAheadLib_SHGetNewLinkInfoA;
PVOID pfnAheadLib_SHGetNewLinkInfoW;
PVOID pfnAheadLib_Unnamed181;
PVOID pfnAheadLib_ShellMessageBoxW;
PVOID pfnAheadLib_ShellMessageBoxA;
PVOID pfnAheadLib_Unnamed184;
PVOID pfnAheadLib_Unnamed185;
PVOID pfnAheadLib_Unnamed186;
PVOID pfnAheadLib_Unnamed187;
PVOID pfnAheadLib_Unnamed188;
PVOID pfnAheadLib_ILCreateFromPathA;
PVOID pfnAheadLib_ILCreateFromPathW;
PVOID pfnAheadLib_SHUpdateImageA;
PVOID pfnAheadLib_SHUpdateImageW;
PVOID pfnAheadLib_SHHandleUpdateImage;
PVOID pfnAheadLib_Unnamed194;
PVOID pfnAheadLib_SHFree;
PVOID pfnAheadLib_SHAlloc;
PVOID pfnAheadLib_Unnamed197;
PVOID pfnAheadLib_Unnamed198;
PVOID pfnAheadLib_RealShellExecuteA;
PVOID pfnAheadLib_Unnamed200;
PVOID pfnAheadLib_Unnamed201;
PVOID pfnAheadLib_Unnamed202;
PVOID pfnAheadLib_Unnamed203;
PVOID pfnAheadLib_Unnamed204;
PVOID pfnAheadLib_Unnamed205;
PVOID pfnAheadLib_Unnamed206;
PVOID pfnAheadLib_RealShellExecuteExA;
PVOID pfnAheadLib_RealShellExecuteExW;
PVOID pfnAheadLib_Unnamed209;
PVOID pfnAheadLib_Unnamed210;
PVOID pfnAheadLib_Unnamed211;
PVOID pfnAheadLib_Unnamed212;
PVOID pfnAheadLib_Unnamed213;
PVOID pfnAheadLib_Unnamed214;
PVOID pfnAheadLib_Unnamed215;
PVOID pfnAheadLib_Unnamed216;
PVOID pfnAheadLib_Unnamed217;
PVOID pfnAheadLib_Unnamed218;
PVOID pfnAheadLib_Unnamed219;
PVOID pfnAheadLib_Unnamed220;
PVOID pfnAheadLib_Unnamed221;
PVOID pfnAheadLib_Unnamed222;
PVOID pfnAheadLib_Unnamed223;
PVOID pfnAheadLib_Unnamed224;
PVOID pfnAheadLib_Unnamed225;
PVOID pfnAheadLib_RealShellExecuteW;
PVOID pfnAheadLib_Unnamed227;
PVOID pfnAheadLib_SHHelpShortcuts_RunDLL;
PVOID pfnAheadLib_SHHelpShortcuts_RunDLLA;
PVOID pfnAheadLib_Unnamed230;
PVOID pfnAheadLib_SHSetFolderPathA;
PVOID pfnAheadLib_SHSetFolderPathW;
PVOID pfnAheadLib_Unnamed233;
PVOID pfnAheadLib_Unnamed234;
PVOID pfnAheadLib_Unnamed235;
PVOID pfnAheadLib_Unnamed236;
PVOID pfnAheadLib_Unnamed237;
PVOID pfnAheadLib_SHHelpShortcuts_RunDLLW;
PVOID pfnAheadLib_PathIsSlowW;
PVOID pfnAheadLib_PathIsSlowA;
PVOID pfnAheadLib_Unnamed241;
PVOID pfnAheadLib_Unnamed242;
PVOID pfnAheadLib_Unnamed243;
PVOID pfnAheadLib_Unnamed244;
PVOID pfnAheadLib_SHTestTokenMembership;
PVOID pfnAheadLib_Unnamed246;
PVOID pfnAheadLib_Unnamed247;
PVOID pfnAheadLib_Unnamed248;
PVOID pfnAheadLib_Unnamed249;
PVOID pfnAheadLib_Unnamed250;
PVOID pfnAheadLib_Unnamed251;
PVOID pfnAheadLib_Unnamed252;
PVOID pfnAheadLib_Unnamed253;
PVOID pfnAheadLib_Unnamed254;
PVOID pfnAheadLib_AppCompat_RunDLLW;
PVOID pfnAheadLib_SHCreateShellFolderView;
PVOID pfnAheadLib_Unnamed257;
PVOID pfnAheadLib_Unnamed258;
PVOID pfnAheadLib_Unnamed259;
PVOID pfnAheadLib_Unnamed260;
PVOID pfnAheadLib_Unnamed261;
PVOID pfnAheadLib_Unnamed262;
PVOID pfnAheadLib_AssocCreateForClasses;
PVOID pfnAheadLib_Unnamed264;
PVOID pfnAheadLib_Unnamed265;
PVOID pfnAheadLib_Unnamed266;
PVOID pfnAheadLib_AssocElemCreateForKey;
PVOID pfnAheadLib_AssocGetDetailsOfPropKey;
PVOID pfnAheadLib_CallFileCopyHook;
PVOID pfnAheadLib_Unnamed270;
PVOID pfnAheadLib_Unnamed271;
PVOID pfnAheadLib_CheckEscapesW;
PVOID pfnAheadLib_CommandLineToArgvW;
PVOID pfnAheadLib_Control_RunDLL;
PVOID pfnAheadLib_Control_RunDLLA;
PVOID pfnAheadLib_Control_RunDLLAsUserW;
PVOID pfnAheadLib_Control_RunDLLW;
PVOID pfnAheadLib_DllCanUnloadNow;
PVOID pfnAheadLib_DllGetActivationFactory;
PVOID pfnAheadLib_DllGetClassObject;
PVOID pfnAheadLib_DllGetVersion;
PVOID pfnAheadLib_DllInstall;
PVOID pfnAheadLib_DllRegisterServer;
PVOID pfnAheadLib_DllUnregisterServer;
PVOID pfnAheadLib_DoEnvironmentSubstA;
PVOID pfnAheadLib_DoEnvironmentSubstW;
PVOID pfnAheadLib_DragAcceptFiles;
PVOID pfnAheadLib_DragFinish;
PVOID pfnAheadLib_DragQueryFile;
PVOID pfnAheadLib_DragQueryFileA;
PVOID pfnAheadLib_DragQueryFileAorW;
PVOID pfnAheadLib_DragQueryFileW;
PVOID pfnAheadLib_DragQueryPoint;
PVOID pfnAheadLib_DuplicateIcon;
PVOID pfnAheadLib_ExtractAssociatedIconA;
PVOID pfnAheadLib_ExtractAssociatedIconExA;
PVOID pfnAheadLib_ExtractAssociatedIconExW;
PVOID pfnAheadLib_ExtractAssociatedIconW;
PVOID pfnAheadLib_ExtractIconA;
PVOID pfnAheadLib_ExtractIconEx;
PVOID pfnAheadLib_ExtractIconExA;
PVOID pfnAheadLib_ExtractIconExW;
PVOID pfnAheadLib_ExtractIconW;
PVOID pfnAheadLib_FindExecutableA;
PVOID pfnAheadLib_FindExecutableW;
PVOID pfnAheadLib_FreeIconList;
PVOID pfnAheadLib_GetCurrentProcessExplicitAppUserModelID;
PVOID pfnAheadLib_InitNetworkAddressControl;
PVOID pfnAheadLib_InternalExtractIconListA;
PVOID pfnAheadLib_InternalExtractIconListW;
PVOID pfnAheadLib_LaunchMSHelp_RunDLLW;
PVOID pfnAheadLib_Options_RunDLL;
PVOID pfnAheadLib_Options_RunDLLA;
PVOID pfnAheadLib_Options_RunDLLW;
PVOID pfnAheadLib_RegenerateUserEnvironment;
PVOID pfnAheadLib_RunAsNewUser_RunDLLW;
PVOID pfnAheadLib_SHAddDefaultPropertiesByExt;
PVOID pfnAheadLib_SHAddToRecentDocs;
PVOID pfnAheadLib_SHAppBarMessage;
PVOID pfnAheadLib_SHAssocEnumHandlers;
PVOID pfnAheadLib_SHAssocEnumHandlersForProtocolByApplication;
PVOID pfnAheadLib_SHBindToFolderIDListParent;
PVOID pfnAheadLib_SHBindToFolderIDListParentEx;
PVOID pfnAheadLib_SHBindToObject;
PVOID pfnAheadLib_SHBindToParent;
PVOID pfnAheadLib_SHBrowseForFolder;
PVOID pfnAheadLib_SHBrowseForFolderA;
PVOID pfnAheadLib_SHBrowseForFolderW;
PVOID pfnAheadLib_SHChangeNotify;
PVOID pfnAheadLib_SHChangeNotifyRegisterThread;
PVOID pfnAheadLib_SHChangeNotifySuspendResume;
PVOID pfnAheadLib_SHCoCreateInstanceWorker;
PVOID pfnAheadLib_SHCreateAssociationRegistration;
PVOID pfnAheadLib_SHCreateCategoryEnum;
PVOID pfnAheadLib_SHCreateDataObject;
PVOID pfnAheadLib_SHCreateDefaultContextMenu;
PVOID pfnAheadLib_SHCreateDefaultExtractIcon;
PVOID pfnAheadLib_SHCreateDefaultPropertiesOp;
PVOID pfnAheadLib_SHCreateDirectoryExA;
PVOID pfnAheadLib_SHCreateDirectoryExW;
PVOID pfnAheadLib_SHCreateDrvExtIcon;
PVOID pfnAheadLib_SHCreateItemFromIDList;
PVOID pfnAheadLib_SHCreateItemFromParsingName;
PVOID pfnAheadLib_SHCreateItemFromRelativeName;
PVOID pfnAheadLib_SHCreateItemInKnownFolder;
PVOID pfnAheadLib_SHCreateItemWithParent;
PVOID pfnAheadLib_SHCreateLocalServerRunDll;
PVOID pfnAheadLib_SHCreateProcessAsUserW;
PVOID pfnAheadLib_SHCreateQueryCancelAutoPlayMoniker;
PVOID pfnAheadLib_SHCreateShellItem;
PVOID pfnAheadLib_SHCreateShellItemArray;
PVOID pfnAheadLib_SHCreateShellItemArrayFromDataObject;
PVOID pfnAheadLib_SHCreateShellItemArrayFromIDLists;
PVOID pfnAheadLib_SHCreateShellItemArrayFromShellItem;
PVOID pfnAheadLib_SHELL32_AddToBackIconTable;
PVOID pfnAheadLib_SHELL32_AddToFrontIconTable;
PVOID pfnAheadLib_SHELL32_AreAllItemsAvailable;
PVOID pfnAheadLib_SHELL32_CCommonPlacesFolder_CreateInstance;
PVOID pfnAheadLib_SHELL32_CDBurn_CloseSession;
PVOID pfnAheadLib_SHELL32_CDBurn_DriveSupportedForDataBurn;
PVOID pfnAheadLib_SHELL32_CDBurn_Erase;
PVOID pfnAheadLib_SHELL32_CDBurn_GetCDInfo;
PVOID pfnAheadLib_SHELL32_CDBurn_GetLiveFSDiscInfo;
PVOID pfnAheadLib_SHELL32_CDBurn_GetStagingPathOrNormalPath;
PVOID pfnAheadLib_SHELL32_CDBurn_GetTaskInfo;
PVOID pfnAheadLib_SHELL32_CDBurn_IsBlankDisc2;
PVOID pfnAheadLib_SHELL32_CDBurn_IsBlankDisc;
PVOID pfnAheadLib_SHELL32_CDBurn_IsLiveFS;
PVOID pfnAheadLib_SHELL32_CDBurn_OnDeviceChange;
PVOID pfnAheadLib_SHELL32_CDBurn_OnEject;
PVOID pfnAheadLib_SHELL32_CDBurn_OnMediaChange;
PVOID pfnAheadLib_SHELL32_CDefFolderMenu_Create2;
PVOID pfnAheadLib_SHELL32_CDefFolderMenu_Create2Ex;
PVOID pfnAheadLib_SHELL32_CDefFolderMenu_MergeMenu;
PVOID pfnAheadLib_SHELL32_CDrivesContextMenu_Create;
PVOID pfnAheadLib_SHELL32_CDrivesDropTarget_Create;
PVOID pfnAheadLib_SHELL32_CDrives_CreateSFVCB;
PVOID pfnAheadLib_SHELL32_CFSDropTarget_CreateInstance;
PVOID pfnAheadLib_SHELL32_CFSFolderCallback_Create;
PVOID pfnAheadLib_SHELL32_CFillPropertiesTask_CreateInstance;
PVOID pfnAheadLib_SHELL32_CLibraryDropTarget_CreateInstance;
PVOID pfnAheadLib_SHELL32_CLocationContextMenu_Create;
PVOID pfnAheadLib_SHELL32_CLocationFolderUI_CreateInstance;
PVOID pfnAheadLib_SHELL32_CMountPoint_DoAutorun;
PVOID pfnAheadLib_SHELL32_CMountPoint_DoAutorunPrompt;
PVOID pfnAheadLib_SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy;
PVOID pfnAheadLib_SHELL32_CMountPoint_ProcessAutoRunFile;
PVOID pfnAheadLib_SHELL32_CMountPoint_WantAutorunUI;
PVOID pfnAheadLib_SHELL32_CMountPoint_WantAutorunUIGetReady;
PVOID pfnAheadLib_SHELL32_CNetFolderUI_CreateInstance;
PVOID pfnAheadLib_SHELL32_CPL_CategoryIdArrayFromVariant;
PVOID pfnAheadLib_SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey;
PVOID pfnAheadLib_SHELL32_CPL_ModifyWowDisplayName;
PVOID pfnAheadLib_SHELL32_CRecentDocsContextMenu_CreateInstance;
PVOID pfnAheadLib_SHELL32_CTransferConfirmation_CreateInstance;
PVOID pfnAheadLib_SHELL32_CallFileCopyHooks;
PVOID pfnAheadLib_SHELL32_CanDisplayWin8CopyDialog;
PVOID pfnAheadLib_SHELL32_CloseAutoplayPrompt;
PVOID pfnAheadLib_SHELL32_CommandLineFromMsiDescriptor;
PVOID pfnAheadLib_SHELL32_CopySecondaryTiles;
PVOID pfnAheadLib_SHELL32_CreateConfirmationInterrupt;
PVOID pfnAheadLib_SHELL32_CreateConflictInterrupt;
PVOID pfnAheadLib_SHELL32_CreateDefaultOperationDataProvider;
PVOID pfnAheadLib_SHELL32_CreateFileFolderContextMenu;
PVOID pfnAheadLib_SHELL32_CreateLinkInfoW;
PVOID pfnAheadLib_SHELL32_CreateQosRecorder;
PVOID pfnAheadLib_SHELL32_CreateSharePointView;
PVOID pfnAheadLib_SHELL32_Create_IEnumUICommand;
PVOID pfnAheadLib_SHELL32_DestroyLinkInfo;
PVOID pfnAheadLib_SHELL32_EncryptDirectory;
PVOID pfnAheadLib_SHELL32_EncryptedFileKeyInfo;
PVOID pfnAheadLib_SHELL32_EnumCommonTasks;
PVOID pfnAheadLib_SHELL32_FreeEncryptedFileKeyInfo;
PVOID pfnAheadLib_SHELL32_GenerateAppID;
PVOID pfnAheadLib_SHELL32_GetAppIDRoot;
PVOID pfnAheadLib_SHELL32_GetCommandProviderForFolderType;
PVOID pfnAheadLib_SHELL32_GetDPIAdjustedLogicalSize;
PVOID pfnAheadLib_SHELL32_GetDiskCleanupPath;
PVOID pfnAheadLib_SHELL32_GetFileNameFromBrowse;
PVOID pfnAheadLib_SHELL32_GetIconOverlayManager;
PVOID pfnAheadLib_SHELL32_GetLinkInfoData;
PVOID pfnAheadLib_SHELL32_GetRatingBucket;
PVOID pfnAheadLib_SHELL32_GetSqmableFileName;
PVOID pfnAheadLib_SHELL32_GetThumbnailAdornerFromFactory2;
PVOID pfnAheadLib_SHELL32_GetThumbnailAdornerFromFactory;
PVOID pfnAheadLib_SHELL32_HandleUnrecognizedFileSystem;
PVOID pfnAheadLib_SHELL32_IconCacheCreate;
PVOID pfnAheadLib_SHELL32_IconCacheDestroy;
PVOID pfnAheadLib_SHELL32_IconCacheHandleAssociationChanged;
PVOID pfnAheadLib_SHELL32_IconCacheRestore;
PVOID pfnAheadLib_SHELL32_IconCache_AboutToExtractIcons;
PVOID pfnAheadLib_SHELL32_IconCache_DoneExtractingIcons;
PVOID pfnAheadLib_SHELL32_IconCache_ExpandEnvAndSearchPath;
PVOID pfnAheadLib_SHELL32_IconCache_RememberRecentlyExtractedIconsW;
PVOID pfnAheadLib_SHELL32_IconOverlayManagerInit;
PVOID pfnAheadLib_SHELL32_IsGetKeyboardLayoutPresent;
PVOID pfnAheadLib_SHELL32_IsSystemUpgradeInProgress;
PVOID pfnAheadLib_SHELL32_IsValidLinkInfo;
PVOID pfnAheadLib_SHELL32_LegacyEnumSpecialTasksByType;
PVOID pfnAheadLib_SHELL32_LegacyEnumTasks;
PVOID pfnAheadLib_SHELL32_LookupBackIconIndex;
PVOID pfnAheadLib_SHELL32_LookupFrontIconIndex;
PVOID pfnAheadLib_SHELL32_NormalizeRating;
PVOID pfnAheadLib_SHELL32_NotifyLinkTrackingServiceOfMove;
PVOID pfnAheadLib_SHELL32_PifMgr_CloseProperties;
PVOID pfnAheadLib_SHELL32_PifMgr_GetProperties;
PVOID pfnAheadLib_SHELL32_PifMgr_OpenProperties;
PVOID pfnAheadLib_SHELL32_PifMgr_SetProperties;
PVOID pfnAheadLib_SHELL32_Printers_CreateBindInfo;
PVOID pfnAheadLib_SHELL32_Printjob_GetPidl;
PVOID pfnAheadLib_SHELL32_PurgeSystemIcon;
PVOID pfnAheadLib_SHELL32_RefreshOverlayImages;
PVOID pfnAheadLib_SHELL32_ResolveLinkInfoW;
PVOID pfnAheadLib_SHELL32_SHAddSparseIcon;
PVOID pfnAheadLib_SHELL32_SHCreateByValueOperationInterrupt;
PVOID pfnAheadLib_SHELL32_SHCreateDefaultContextMenu;
PVOID pfnAheadLib_SHELL32_SHCreateLocalServer;
PVOID pfnAheadLib_SHELL32_SHCreateShellFolderView;
PVOID pfnAheadLib_SHELL32_SHDuplicateEncryptionInfoFile;
PVOID pfnAheadLib_SHELL32_SHEncryptFile;
PVOID pfnAheadLib_SHELL32_SHFormatDriveAsync;
PVOID pfnAheadLib_SHELL32_SHGetThreadUndoManager;
PVOID pfnAheadLib_SHELL32_SHGetUserNameW;
PVOID pfnAheadLib_SHELL32_SHIsVirtualDevice;
PVOID pfnAheadLib_SHELL32_SHLaunchPropSheet;
PVOID pfnAheadLib_SHELL32_SHLogILFromFSIL;
PVOID pfnAheadLib_SHELL32_SHOpenWithDialog;
PVOID pfnAheadLib_SHELL32_SHStartNetConnectionDialogW;
PVOID pfnAheadLib_SHELL32_SHUICommandFromGUID;
PVOID pfnAheadLib_SHELL32_SendToMenu_InvokeTargetedCommand;
PVOID pfnAheadLib_SHELL32_SendToMenu_VerifyTargetedCommand;
PVOID pfnAheadLib_SHELL32_ShowHideIconOnlyOnDesktop;
PVOID pfnAheadLib_SHELL32_SimpleRatingToFilterCondition;
PVOID pfnAheadLib_SHELL32_StampIconForFile;
PVOID pfnAheadLib_SHELL32_SuspendUndo;
PVOID pfnAheadLib_SHELL32_TryVirtualDiscImageDriveEject;
PVOID pfnAheadLib_SHELL32_VerifySaferTrust;
PVOID pfnAheadLib_SHEmptyRecycleBinA;
PVOID pfnAheadLib_SHEmptyRecycleBinW;
PVOID pfnAheadLib_SHEnableServiceObject;
PVOID pfnAheadLib_SHEnumerateUnreadMailAccountsW;
PVOID pfnAheadLib_SHEvaluateSystemCommandTemplate;
PVOID pfnAheadLib_SHExecuteErrorMessageBox;
PVOID pfnAheadLib_SHExtractIconsW;
PVOID pfnAheadLib_SHFileOperation;
PVOID pfnAheadLib_SHFileOperationA;
PVOID pfnAheadLib_SHFileOperationW;
PVOID pfnAheadLib_SHFormatDrive;
PVOID pfnAheadLib_SHFreeNameMappings;
PVOID pfnAheadLib_SHGetDataFromIDListA;
PVOID pfnAheadLib_SHGetDataFromIDListW;
PVOID pfnAheadLib_SHGetDesktopFolder;
PVOID pfnAheadLib_SHGetDiskFreeSpaceA;
PVOID pfnAheadLib_SHGetDiskFreeSpaceExA;
PVOID pfnAheadLib_SHGetDiskFreeSpaceExW;
PVOID pfnAheadLib_SHGetDriveMedia;
PVOID pfnAheadLib_SHGetFileInfo;
PVOID pfnAheadLib_SHGetFileInfoA;
PVOID pfnAheadLib_SHGetFileInfoW;
PVOID pfnAheadLib_SHGetFolderLocation;
PVOID pfnAheadLib_SHGetFolderPathA;
PVOID pfnAheadLib_SHGetFolderPathAndSubDirA;
PVOID pfnAheadLib_SHGetFolderPathAndSubDirW;
PVOID pfnAheadLib_SHGetFolderPathEx;
PVOID pfnAheadLib_SHGetFolderPathW;
PVOID pfnAheadLib_SHGetIDListFromObject;
PVOID pfnAheadLib_SHGetIconOverlayIndexA;
PVOID pfnAheadLib_SHGetIconOverlayIndexW;
PVOID pfnAheadLib_SHGetInstanceExplorer;
PVOID pfnAheadLib_SHGetItemFromDataObject;
PVOID pfnAheadLib_SHGetItemFromObject;
PVOID pfnAheadLib_SHGetKnownFolderIDList;
PVOID pfnAheadLib_SHGetKnownFolderItem;
PVOID pfnAheadLib_SHGetKnownFolderPath;
PVOID pfnAheadLib_SHGetLocalizedName;
PVOID pfnAheadLib_SHGetMalloc;
PVOID pfnAheadLib_SHGetNameFromIDList;
PVOID pfnAheadLib_SHGetNewLinkInfo;
PVOID pfnAheadLib_SHGetPathFromIDList;
PVOID pfnAheadLib_Unnamed520;
PVOID pfnAheadLib_Unnamed521;
PVOID pfnAheadLib_Unnamed522;
PVOID pfnAheadLib_Unnamed523;
PVOID pfnAheadLib_RealDriveType;
PVOID pfnAheadLib_Unnamed525;
PVOID pfnAheadLib_SHFlushSFCache;
PVOID pfnAheadLib_SHGetPathFromIDListA;
PVOID pfnAheadLib_SHGetPathFromIDListEx;
PVOID pfnAheadLib_SHGetPathFromIDListW;
PVOID pfnAheadLib_SHGetPropertyStoreForWindow;
PVOID pfnAheadLib_SHGetPropertyStoreFromIDList;
PVOID pfnAheadLib_SHGetPropertyStoreFromParsingName;
PVOID pfnAheadLib_SHGetSettings;
PVOID pfnAheadLib_SHGetSpecialFolderLocation;
PVOID pfnAheadLib_SHGetSpecialFolderPathA;
PVOID pfnAheadLib_SHGetSpecialFolderPathW;
PVOID pfnAheadLib_SHGetStockIconInfo;
PVOID pfnAheadLib_SHGetTemporaryPropertyForItem;
PVOID pfnAheadLib_SHGetUnreadMailCountW;
PVOID pfnAheadLib_SHInvokePrinterCommandA;
PVOID pfnAheadLib_SHInvokePrinterCommandW;
PVOID pfnAheadLib_SHIsFileAvailableOffline;
PVOID pfnAheadLib_SHLoadInProc;
PVOID pfnAheadLib_SHLoadNonloadedIconOverlayIdentifiers;
PVOID pfnAheadLib_SHOpenFolderAndSelectItems;
PVOID pfnAheadLib_SHOpenWithDialog;
PVOID pfnAheadLib_SHParseDisplayName;
PVOID pfnAheadLib_SHPathPrepareForWriteA;
PVOID pfnAheadLib_SHPathPrepareForWriteW;
PVOID pfnAheadLib_SHQueryRecycleBinA;
PVOID pfnAheadLib_SHQueryRecycleBinW;
PVOID pfnAheadLib_SHQueryUserNotificationState;
PVOID pfnAheadLib_SHRemoveLocalizedName;
PVOID pfnAheadLib_SHResolveLibrary;
PVOID pfnAheadLib_SHSetDefaultProperties;
PVOID pfnAheadLib_SHSetKnownFolderPath;
PVOID pfnAheadLib_SHSetLocalizedName;
PVOID pfnAheadLib_SHSetTemporaryPropertyForItem;
PVOID pfnAheadLib_SHSetUnreadMailCountW;
PVOID pfnAheadLib_SHShowManageLibraryUI;
PVOID pfnAheadLib_SHUpdateRecycleBinIcon;
PVOID pfnAheadLib_SetCurrentProcessExplicitAppUserModelID;
PVOID pfnAheadLib_SheChangeDirA;
PVOID pfnAheadLib_SheChangeDirExW;
PVOID pfnAheadLib_SheGetDirA;
PVOID pfnAheadLib_SheSetCurDrive;
PVOID pfnAheadLib_ShellAboutA;
PVOID pfnAheadLib_ShellAboutW;
PVOID pfnAheadLib_ShellExec_RunDLL;
PVOID pfnAheadLib_ShellExec_RunDLLA;
PVOID pfnAheadLib_ShellExec_RunDLLW;
PVOID pfnAheadLib_ShellExecuteA;
PVOID pfnAheadLib_ShellExecuteEx;
PVOID pfnAheadLib_ShellExecuteExA;
PVOID pfnAheadLib_ShellExecuteExW;
PVOID pfnAheadLib_ShellExecuteW;
PVOID pfnAheadLib_ShellHookProc;
PVOID pfnAheadLib_Shell_GetCachedImageIndexA;
PVOID pfnAheadLib_Shell_GetCachedImageIndexW;
PVOID pfnAheadLib_Shell_NotifyIcon;
PVOID pfnAheadLib_Shell_NotifyIconA;
PVOID pfnAheadLib_Shell_NotifyIconGetRect;
PVOID pfnAheadLib_Shell_NotifyIconW;
PVOID pfnAheadLib_StateRepoNewMenuCache_EnsureCacheAsync;
PVOID pfnAheadLib_StateRepoNewMenuCache_RebuildCacheAsync;
PVOID pfnAheadLib_StrChrA;
PVOID pfnAheadLib_StrChrIA;
PVOID pfnAheadLib_StrChrIW;
PVOID pfnAheadLib_StrChrW;
PVOID pfnAheadLib_StrCmpNA;
PVOID pfnAheadLib_StrCmpNIA;
PVOID pfnAheadLib_StrCmpNIW;
PVOID pfnAheadLib_StrCmpNW;
PVOID pfnAheadLib_StrNCmpA;
PVOID pfnAheadLib_StrNCmpIA;
PVOID pfnAheadLib_StrNCmpIW;
PVOID pfnAheadLib_StrNCmpW;
PVOID pfnAheadLib_StrRChrA;
PVOID pfnAheadLib_StrRChrIA;
PVOID pfnAheadLib_StrRChrIW;
PVOID pfnAheadLib_StrRChrW;
PVOID pfnAheadLib_StrRStrA;
PVOID pfnAheadLib_StrRStrIA;
PVOID pfnAheadLib_StrRStrIW;
PVOID pfnAheadLib_StrRStrW;
PVOID pfnAheadLib_StrStrA;
PVOID pfnAheadLib_StrStrIA;
PVOID pfnAheadLib_StrStrIW;
PVOID pfnAheadLib_StrStrW;
PVOID pfnAheadLib_UsersLibrariesFolderUI_CreateInstance;
PVOID pfnAheadLib_WOWShellExecute;
PVOID pfnAheadLib_WaitForExplorerRestartW;
PVOID pfnAheadLib_Unnamed640;
PVOID pfnAheadLib_Unnamed641;
PVOID pfnAheadLib_Unnamed643;
PVOID pfnAheadLib_SHChangeNotification_Lock;
PVOID pfnAheadLib_SHChangeNotification_Unlock;
PVOID pfnAheadLib_Unnamed646;
PVOID pfnAheadLib_Unnamed648;
PVOID pfnAheadLib_Unnamed650;
PVOID pfnAheadLib_Unnamed651;
PVOID pfnAheadLib_WriteCabinetState;
PVOID pfnAheadLib_Unnamed653;
PVOID pfnAheadLib_ReadCabinetState;
PVOID pfnAheadLib_Unnamed660;
PVOID pfnAheadLib_IsUserAnAdmin;
PVOID pfnAheadLib_Unnamed681;
PVOID pfnAheadLib_StgMakeUniqueName;
PVOID pfnAheadLib_Unnamed683;
PVOID pfnAheadLib_Unnamed684;
PVOID pfnAheadLib_SHPropStgCreate;
PVOID pfnAheadLib_SHPropStgReadMultiple;
PVOID pfnAheadLib_SHPropStgWriteMultiple;
PVOID pfnAheadLib_Unnamed690;
PVOID pfnAheadLib_Unnamed691;
PVOID pfnAheadLib_Unnamed700;
PVOID pfnAheadLib_CDefFolderMenu_Create2;
PVOID pfnAheadLib_Unnamed702;
PVOID pfnAheadLib_Unnamed703;
PVOID pfnAheadLib_Unnamed704;
PVOID pfnAheadLib_Unnamed707;
PVOID pfnAheadLib_Unnamed708;
PVOID pfnAheadLib_SHGetSetFolderCustomSettings;
PVOID pfnAheadLib_Unnamed711;
PVOID pfnAheadLib_Unnamed712;
PVOID pfnAheadLib_Unnamed713;
PVOID pfnAheadLib_Unnamed714;
PVOID pfnAheadLib_Unnamed715;
PVOID pfnAheadLib_SHMultiFileProperties;
PVOID pfnAheadLib_Unnamed719;
PVOID pfnAheadLib_Unnamed720;
PVOID pfnAheadLib_Unnamed721;
PVOID pfnAheadLib_Unnamed722;
PVOID pfnAheadLib_Unnamed723;
PVOID pfnAheadLib_Unnamed724;
PVOID pfnAheadLib_Unnamed725;
PVOID pfnAheadLib_Unnamed726;
PVOID pfnAheadLib_SHGetImageList;
PVOID pfnAheadLib_RestartDialogEx;
PVOID pfnAheadLib_Unnamed731;
PVOID pfnAheadLib_Unnamed732;
PVOID pfnAheadLib_Unnamed733;
PVOID pfnAheadLib_Unnamed740;
PVOID pfnAheadLib_SHCreateFileExtractIconW;
PVOID pfnAheadLib_Unnamed744;
PVOID pfnAheadLib_Unnamed745;
PVOID pfnAheadLib_SHLimitInputEdit;
PVOID pfnAheadLib_Unnamed748;
PVOID pfnAheadLib_Unnamed749;
PVOID pfnAheadLib_SHGetAttributesFromDataObject;
PVOID pfnAheadLib_Unnamed751;
PVOID pfnAheadLib_Unnamed752;
PVOID pfnAheadLib_Unnamed753;
PVOID pfnAheadLib_Unnamed754;
PVOID pfnAheadLib_Unnamed755;
PVOID pfnAheadLib_Unnamed756;
PVOID pfnAheadLib_Unnamed757;
PVOID pfnAheadLib_Unnamed758;
PVOID pfnAheadLib_Unnamed759;
PVOID pfnAheadLib_Unnamed760;
PVOID pfnAheadLib_Unnamed761;
PVOID pfnAheadLib_Unnamed762;
PVOID pfnAheadLib_Unnamed763;
PVOID pfnAheadLib_Unnamed764;
PVOID pfnAheadLib_Unnamed765;
PVOID pfnAheadLib_Unnamed766;
PVOID pfnAheadLib_Unnamed767;
PVOID pfnAheadLib_Unnamed777;
PVOID pfnAheadLib_Unnamed778;
PVOID pfnAheadLib_Unnamed779;
PVOID pfnAheadLib_Unnamed781;
PVOID pfnAheadLib_Unnamed782;
PVOID pfnAheadLib_Unnamed786;
PVOID pfnAheadLib_Unnamed787;
PVOID pfnAheadLib_Unnamed788;
PVOID pfnAheadLib_Unnamed789;
PVOID pfnAheadLib_Unnamed790;
PVOID pfnAheadLib_Unnamed791;
PVOID pfnAheadLib_Unnamed792;
PVOID pfnAheadLib_Unnamed810;
PVOID pfnAheadLib_Unnamed811;
PVOID pfnAheadLib_Unnamed812;
PVOID pfnAheadLib_Unnamed813;
PVOID pfnAheadLib_Unnamed814;
PVOID pfnAheadLib_Unnamed815;
PVOID pfnAheadLib_Unnamed816;
PVOID pfnAheadLib_Unnamed817;
PVOID pfnAheadLib_Unnamed818;
PVOID pfnAheadLib_Unnamed819;
PVOID pfnAheadLib_Unnamed820;
PVOID pfnAheadLib_Unnamed821;
PVOID pfnAheadLib_Unnamed822;
PVOID pfnAheadLib_Unnamed823;
PVOID pfnAheadLib_Unnamed824;
PVOID pfnAheadLib_Unnamed825;
PVOID pfnAheadLib_Unnamed826;
PVOID pfnAheadLib_Unnamed827;
PVOID pfnAheadLib_Unnamed828;
PVOID pfnAheadLib_Unnamed829;
PVOID pfnAheadLib_Unnamed830;
PVOID pfnAheadLib_Unnamed831;
PVOID pfnAheadLib_Unnamed832;
PVOID pfnAheadLib_Unnamed833;
PVOID pfnAheadLib_Unnamed834;
PVOID pfnAheadLib_Unnamed835;
PVOID pfnAheadLib_Unnamed836;
PVOID pfnAheadLib_Unnamed837;
PVOID pfnAheadLib_Unnamed838;
PVOID pfnAheadLib_Unnamed839;
PVOID pfnAheadLib_Unnamed840;
PVOID pfnAheadLib_Unnamed841;
PVOID pfnAheadLib_Unnamed842;
PVOID pfnAheadLib_Unnamed843;
PVOID pfnAheadLib_Unnamed844;
PVOID pfnAheadLib_Unnamed845;
PVOID pfnAheadLib_ILLoadFromStreamEx;
PVOID pfnAheadLib_Unnamed847;
PVOID pfnAheadLib_Unnamed848;
PVOID pfnAheadLib_Unnamed849;
PVOID pfnAheadLib_Unnamed850;
PVOID pfnAheadLib_Unnamed851;
PVOID pfnAheadLib_Unnamed852;
PVOID pfnAheadLib_Unnamed853;
PVOID pfnAheadLib_Unnamed854;
PVOID pfnAheadLib_Unnamed856;
PVOID pfnAheadLib_Unnamed857;
PVOID pfnAheadLib_Unnamed858;
PVOID pfnAheadLib_Unnamed859;
PVOID pfnAheadLib_Unnamed860;
PVOID pfnAheadLib_Unnamed861;
PVOID pfnAheadLib_Unnamed862;
PVOID pfnAheadLib_Unnamed863;
PVOID pfnAheadLib_Unnamed864;
PVOID pfnAheadLib_Unnamed865;
PVOID pfnAheadLib_Unnamed866;
PVOID pfnAheadLib_Unnamed867;
PVOID pfnAheadLib_Unnamed868;
PVOID pfnAheadLib_Unnamed869;
PVOID pfnAheadLib_Unnamed870;
PVOID pfnAheadLib_Unnamed871;
PVOID pfnAheadLib_Unnamed872;
PVOID pfnAheadLib_Unnamed873;
PVOID pfnAheadLib_Unnamed874;
PVOID pfnAheadLib_Unnamed875;
PVOID pfnAheadLib_Unnamed876;
PVOID pfnAheadLib_Unnamed877;
PVOID pfnAheadLib_Unnamed878;
PVOID pfnAheadLib_Unnamed880;
PVOID pfnAheadLib_Unnamed881;
PVOID pfnAheadLib_Unnamed882;
PVOID pfnAheadLib_Unnamed883;
PVOID pfnAheadLib_Unnamed884;
PVOID pfnAheadLib_Unnamed885;
PVOID pfnAheadLib_Unnamed886;
PVOID pfnAheadLib_Unnamed887;
PVOID pfnAheadLib_Unnamed888;
PVOID pfnAheadLib_Unnamed889;
PVOID pfnAheadLib_Unnamed890;
PVOID pfnAheadLib_Unnamed891;
PVOID pfnAheadLib_Unnamed892;
PVOID pfnAheadLib_Unnamed893;
PVOID pfnAheadLib_Unnamed894;
PVOID pfnAheadLib_Unnamed895;
PVOID pfnAheadLib_Unnamed896;
PVOID pfnAheadLib_Unnamed897;
PVOID pfnAheadLib_Unnamed898;
PVOID pfnAheadLib_Unnamed899;
PVOID pfnAheadLib_Unnamed900;
PVOID pfnAheadLib_Unnamed901;
PVOID pfnAheadLib_Unnamed902;
PVOID pfnAheadLib_Unnamed903;
PVOID pfnAheadLib_Unnamed904;
PVOID pfnAheadLib_Unnamed905;
PVOID pfnAheadLib_Unnamed906;
PVOID pfnAheadLib_Unnamed907;
PVOID pfnAheadLib_Unnamed909;
PVOID pfnAheadLib_Unnamed910;
PVOID pfnAheadLib_Unnamed911;
PVOID pfnAheadLib_Unnamed912;
PVOID pfnAheadLib_Unnamed913;
PVOID pfnAheadLib_Unnamed914;
PVOID pfnAheadLib_Unnamed915;
PVOID pfnAheadLib_Unnamed916;
PVOID pfnAheadLib_GetSystemPersistedStorageItemList;
PVOID pfnAheadLib_CreateStorageItemFromPath_PartialTrustCaller;
PVOID pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller;
PVOID pfnAheadLib_Unnamed922;
PVOID pfnAheadLib_Unnamed923;
PVOID pfnAheadLib_Unnamed924;
PVOID pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage;
PVOID pfnAheadLib_Unnamed927;
PVOID pfnAheadLib_Unnamed928;
PVOID pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle;
PVOID pfnAheadLib_Unnamed930;
PVOID pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage;
PVOID pfnAheadLib_Unnamed932;
PVOID pfnAheadLib_Unnamed933;
PVOID pfnAheadLib_CreateStorageItemFromPath_FullTrustCaller;
PVOID pfnAheadLib_CreateStorageItemFromPath_FullTrustCaller_ForPackage;
PVOID pfnAheadLib_CStorageItem_GetValidatedStorageItemObject;
PVOID pfnAheadLib_Unnamed938;
PVOID pfnAheadLib_Unnamed939;
PVOID pfnAheadLib_Unnamed940;
PVOID pfnAheadLib_IsProcessAnExplorer;
PVOID pfnAheadLib_IsDesktopExplorerProcess;
PVOID pfnAheadLib_Unnamed943;
PVOID pfnAheadLib_Unnamed944;
PVOID pfnAheadLib_Unnamed945;
PVOID pfnAheadLib_Unnamed946;
PVOID pfnAheadLib_Unnamed970;
PVOID pfnAheadLib_Unnamed971;
PVOID pfnAheadLib_Unnamed972;
PVOID pfnAheadLib_Unnamed2000;
PVOID pfnAheadLib_Unnamed2001;


static
HMODULE g_OldModule = NULL;

VOID WINAPI Free()
{
	if (g_OldModule)
	{
		FreeLibrary(g_OldModule);
	}
}


BOOL WINAPI Load()
{
	TCHAR tzPath[MAX_PATH];
	TCHAR tzTemp[MAX_PATH * 2];

	//
	// 这里是否从系统目录或当前目录加载原始DLL
	//
	//GetModuleFileName(NULL,tzPath,MAX_PATH); //获取本目录下的
	//PathRemoveFileSpec(tzPath);

	GetSystemDirectory(tzPath, MAX_PATH); //默认获取系统目录的

	lstrcat(tzPath, TEXT("\\shell32.dll"));

	g_OldModule = LoadLibrary(tzPath);
	if (g_OldModule == NULL)
	{
		wsprintf(tzTemp, TEXT("无法找到模块 %s,程序无法正常运行"), tzPath);
		MessageBox(NULL, tzTemp, TEXT("AheadLib"), MB_ICONSTOP);
	}

	return (g_OldModule != NULL);

}


FARPROC WINAPI GetAddress(PCSTR pszProcName)
{
	FARPROC fpAddress;
	CHAR szProcName[64];
	TCHAR tzTemp[MAX_PATH];

	fpAddress = GetProcAddress(g_OldModule, pszProcName);
	if (fpAddress == NULL)
	{
		if (HIWORD(pszProcName) == 0)
		{
			wsprintfA(szProcName, "#%d", pszProcName);
			pszProcName = szProcName;
		}

		wsprintf(tzTemp, TEXT("无法找到函数 %hs,程序无法正常运行"), pszProcName);
		MessageBox(NULL, tzTemp, TEXT("AheadLib"), MB_ICONSTOP);
		ExitProcess(-2);
	}
	return fpAddress;
}

BOOL WINAPI Init()
{
	pfnAheadLib_SHChangeNotifyRegister = GetAddress("SHChangeNotifyRegister");
	pfnAheadLib_SHDefExtractIconA = GetAddress("SHDefExtractIconA");
	pfnAheadLib_SHChangeNotifyDeregister = GetAddress("SHChangeNotifyDeregister");
	pfnAheadLib_Unnamed5 = GetAddress(MAKEINTRESOURCEA(5));
	pfnAheadLib_SHDefExtractIconW = GetAddress("SHDefExtractIconW");
	pfnAheadLib_Unnamed7 = GetAddress(MAKEINTRESOURCEA(7));
	pfnAheadLib_Unnamed8 = GetAddress(MAKEINTRESOURCEA(8));
	pfnAheadLib_PifMgr_OpenProperties = GetAddress("PifMgr_OpenProperties");
	pfnAheadLib_PifMgr_GetProperties = GetAddress("PifMgr_GetProperties");
	pfnAheadLib_PifMgr_SetProperties = GetAddress("PifMgr_SetProperties");
	pfnAheadLib_Unnamed12 = GetAddress(MAKEINTRESOURCEA(12));
	pfnAheadLib_PifMgr_CloseProperties = GetAddress("PifMgr_CloseProperties");
	pfnAheadLib_SHStartNetConnectionDialogW = GetAddress("SHStartNetConnectionDialogW");
	pfnAheadLib_Unnamed15 = GetAddress(MAKEINTRESOURCEA(15));
	pfnAheadLib_ILFindLastID = GetAddress("ILFindLastID");
	pfnAheadLib_ILRemoveLastID = GetAddress("ILRemoveLastID");
	pfnAheadLib_ILClone = GetAddress("ILClone");
	pfnAheadLib_ILCloneFirst = GetAddress("ILCloneFirst");
	pfnAheadLib_Unnamed20 = GetAddress(MAKEINTRESOURCEA(20));
	pfnAheadLib_ILIsEqual = GetAddress("ILIsEqual");
	pfnAheadLib_DAD_DragEnterEx2 = GetAddress("DAD_DragEnterEx2");
	pfnAheadLib_ILIsParent = GetAddress("ILIsParent");
	pfnAheadLib_ILFindChild = GetAddress("ILFindChild");
	pfnAheadLib_ILCombine = GetAddress("ILCombine");
	pfnAheadLib_Unnamed26 = GetAddress(MAKEINTRESOURCEA(26));
	pfnAheadLib_ILSaveToStream = GetAddress("ILSaveToStream");
	pfnAheadLib_SHILCreateFromPath = GetAddress("SHILCreateFromPath");
	pfnAheadLib_Unnamed29 = GetAddress(MAKEINTRESOURCEA(29));
	pfnAheadLib_Unnamed30 = GetAddress(MAKEINTRESOURCEA(30));
	pfnAheadLib_Unnamed31 = GetAddress(MAKEINTRESOURCEA(31));
	pfnAheadLib_Unnamed32 = GetAddress(MAKEINTRESOURCEA(32));
	pfnAheadLib_Unnamed33 = GetAddress(MAKEINTRESOURCEA(33));
	pfnAheadLib_Unnamed34 = GetAddress(MAKEINTRESOURCEA(34));
	pfnAheadLib_Unnamed35 = GetAddress(MAKEINTRESOURCEA(35));
	pfnAheadLib_Unnamed36 = GetAddress(MAKEINTRESOURCEA(36));
	pfnAheadLib_Unnamed37 = GetAddress(MAKEINTRESOURCEA(37));
	pfnAheadLib_Unnamed38 = GetAddress(MAKEINTRESOURCEA(38));
	pfnAheadLib_Unnamed39 = GetAddress(MAKEINTRESOURCEA(39));
	pfnAheadLib_Unnamed40 = GetAddress(MAKEINTRESOURCEA(40));
	pfnAheadLib_IsLFNDriveA = GetAddress("IsLFNDriveA");
	pfnAheadLib_IsLFNDriveW = GetAddress("IsLFNDriveW");
	pfnAheadLib_PathIsExe = GetAddress("PathIsExe");
	pfnAheadLib_Unnamed44 = GetAddress(MAKEINTRESOURCEA(44));
	pfnAheadLib_Unnamed45 = GetAddress(MAKEINTRESOURCEA(45));
	pfnAheadLib_Unnamed46 = GetAddress(MAKEINTRESOURCEA(46));
	pfnAheadLib_PathMakeUniqueName = GetAddress("PathMakeUniqueName");
	pfnAheadLib_Unnamed48 = GetAddress(MAKEINTRESOURCEA(48));
	pfnAheadLib_PathQualify = GetAddress("PathQualify");
	pfnAheadLib_Unnamed50 = GetAddress(MAKEINTRESOURCEA(50));
	pfnAheadLib_PathResolve = GetAddress("PathResolve");
	pfnAheadLib_Unnamed52 = GetAddress(MAKEINTRESOURCEA(52));
	pfnAheadLib_Unnamed53 = GetAddress(MAKEINTRESOURCEA(53));
	pfnAheadLib_Unnamed54 = GetAddress(MAKEINTRESOURCEA(54));
	pfnAheadLib_Unnamed55 = GetAddress(MAKEINTRESOURCEA(55));
	pfnAheadLib_Unnamed56 = GetAddress(MAKEINTRESOURCEA(56));
	pfnAheadLib_Unnamed57 = GetAddress(MAKEINTRESOURCEA(57));
	pfnAheadLib_Unnamed58 = GetAddress(MAKEINTRESOURCEA(58));
	pfnAheadLib_RestartDialog = GetAddress("RestartDialog");
	pfnAheadLib_Unnamed60 = GetAddress(MAKEINTRESOURCEA(60));
	pfnAheadLib_Unnamed61 = GetAddress(MAKEINTRESOURCEA(61));
	pfnAheadLib_PickIconDlg = GetAddress("PickIconDlg");
	pfnAheadLib_GetFileNameFromBrowse = GetAddress("GetFileNameFromBrowse");
	pfnAheadLib_DriveType = GetAddress("DriveType");
	pfnAheadLib_Unnamed65 = GetAddress(MAKEINTRESOURCEA(65));
	pfnAheadLib_IsNetDrive = GetAddress("IsNetDrive");
	pfnAheadLib_Shell_MergeMenus = GetAddress("Shell_MergeMenus");
	pfnAheadLib_SHGetSetSettings = GetAddress("SHGetSetSettings");
	pfnAheadLib_Unnamed69 = GetAddress(MAKEINTRESOURCEA(69));
	pfnAheadLib_Unnamed70 = GetAddress(MAKEINTRESOURCEA(70));
	pfnAheadLib_Shell_GetImageLists = GetAddress("Shell_GetImageLists");
	pfnAheadLib_Shell_GetCachedImageIndex = GetAddress("Shell_GetCachedImageIndex");
	pfnAheadLib_SHShellFolderView_Message = GetAddress("SHShellFolderView_Message");
	pfnAheadLib_SHCreateStdEnumFmtEtc = GetAddress("SHCreateStdEnumFmtEtc");
	pfnAheadLib_PathYetAnotherMakeUniqueName = GetAddress("PathYetAnotherMakeUniqueName");
	pfnAheadLib_Unnamed76 = GetAddress(MAKEINTRESOURCEA(76));
	pfnAheadLib_SHMapPIDLToSystemImageListIndex = GetAddress("SHMapPIDLToSystemImageListIndex");
	pfnAheadLib_Unnamed78 = GetAddress(MAKEINTRESOURCEA(78));
	pfnAheadLib_Unnamed79 = GetAddress(MAKEINTRESOURCEA(79));
	pfnAheadLib_SHOpenPropSheetW = GetAddress("SHOpenPropSheetW");
	pfnAheadLib_OpenAs_RunDLL = GetAddress("OpenAs_RunDLL");
	pfnAheadLib_Unnamed82 = GetAddress(MAKEINTRESOURCEA(82));
	pfnAheadLib_CIDLData_CreateFromIDArray = GetAddress("CIDLData_CreateFromIDArray");
	pfnAheadLib_Unnamed84 = GetAddress(MAKEINTRESOURCEA(84));
	pfnAheadLib_OpenRegStream = GetAddress("OpenRegStream");
	pfnAheadLib_Unnamed86 = GetAddress(MAKEINTRESOURCEA(86));
	pfnAheadLib_Unnamed87 = GetAddress(MAKEINTRESOURCEA(87));
	pfnAheadLib_SHDoDragDrop = GetAddress("SHDoDragDrop");
	pfnAheadLib_SHCloneSpecialIDList = GetAddress("SHCloneSpecialIDList");
	pfnAheadLib_SHFindFiles = GetAddress("SHFindFiles");
	pfnAheadLib_Unnamed91 = GetAddress(MAKEINTRESOURCEA(91));
	pfnAheadLib_PathGetShortPath = GetAddress("PathGetShortPath");
	pfnAheadLib_Unnamed93 = GetAddress(MAKEINTRESOURCEA(93));
	pfnAheadLib_Unnamed94 = GetAddress(MAKEINTRESOURCEA(94));
	pfnAheadLib_Unnamed95 = GetAddress(MAKEINTRESOURCEA(95));
	pfnAheadLib_Unnamed96 = GetAddress(MAKEINTRESOURCEA(96));
	pfnAheadLib_Unnamed97 = GetAddress(MAKEINTRESOURCEA(97));
	pfnAheadLib_SHGetRealIDL = GetAddress("SHGetRealIDL");
	pfnAheadLib_Unnamed99 = GetAddress(MAKEINTRESOURCEA(99));
	pfnAheadLib_SHRestricted = GetAddress("SHRestricted");
	pfnAheadLib_Unnamed101 = GetAddress(MAKEINTRESOURCEA(101));
	pfnAheadLib_SHCoCreateInstance = GetAddress("SHCoCreateInstance");
	pfnAheadLib_SignalFileOpen = GetAddress("SignalFileOpen");
	pfnAheadLib_Unnamed104 = GetAddress(MAKEINTRESOURCEA(104));
	pfnAheadLib_Unnamed105 = GetAddress(MAKEINTRESOURCEA(105));
	pfnAheadLib_Unnamed106 = GetAddress(MAKEINTRESOURCEA(106));
	pfnAheadLib_Unnamed107 = GetAddress(MAKEINTRESOURCEA(107));
	pfnAheadLib_Unnamed108 = GetAddress(MAKEINTRESOURCEA(108));
	pfnAheadLib_Unnamed109 = GetAddress(MAKEINTRESOURCEA(109));
	pfnAheadLib_Unnamed110 = GetAddress(MAKEINTRESOURCEA(110));
	pfnAheadLib_Unnamed111 = GetAddress(MAKEINTRESOURCEA(111));
	pfnAheadLib_Unnamed112 = GetAddress(MAKEINTRESOURCEA(112));
	pfnAheadLib_Unnamed113 = GetAddress(MAKEINTRESOURCEA(113));
	pfnAheadLib_Unnamed114 = GetAddress(MAKEINTRESOURCEA(114));
	pfnAheadLib_Unnamed115 = GetAddress(MAKEINTRESOURCEA(115));
	pfnAheadLib_Unnamed116 = GetAddress(MAKEINTRESOURCEA(116));
	pfnAheadLib_Unnamed117 = GetAddress(MAKEINTRESOURCEA(117));
	pfnAheadLib_Unnamed118 = GetAddress(MAKEINTRESOURCEA(118));
	pfnAheadLib_IsLFNDrive = GetAddress("IsLFNDrive");
	pfnAheadLib_Unnamed120 = GetAddress(MAKEINTRESOURCEA(120));
	pfnAheadLib_Unnamed121 = GetAddress(MAKEINTRESOURCEA(121));
	pfnAheadLib_Unnamed122 = GetAddress(MAKEINTRESOURCEA(122));
	pfnAheadLib_Unnamed123 = GetAddress(MAKEINTRESOURCEA(123));
	pfnAheadLib_Unnamed124 = GetAddress(MAKEINTRESOURCEA(124));
	pfnAheadLib_OpenAs_RunDLLA = GetAddress("OpenAs_RunDLLA");
	pfnAheadLib_Unnamed126 = GetAddress(MAKEINTRESOURCEA(126));
	pfnAheadLib_Unnamed127 = GetAddress(MAKEINTRESOURCEA(127));
	pfnAheadLib_Unnamed128 = GetAddress(MAKEINTRESOURCEA(128));
	pfnAheadLib_DAD_AutoScroll = GetAddress("DAD_AutoScroll");
	pfnAheadLib_Unnamed130 = GetAddress(MAKEINTRESOURCEA(130));
	pfnAheadLib_DAD_DragEnterEx = GetAddress("DAD_DragEnterEx");
	pfnAheadLib_DAD_DragLeave = GetAddress("DAD_DragLeave");
	pfnAheadLib_OpenAs_RunDLLW = GetAddress("OpenAs_RunDLLW");
	pfnAheadLib_DAD_DragMove = GetAddress("DAD_DragMove");
	pfnAheadLib_PrepareDiscForBurnRunDllW = GetAddress("PrepareDiscForBurnRunDllW");
	pfnAheadLib_DAD_SetDragImage = GetAddress("DAD_SetDragImage");
	pfnAheadLib_DAD_ShowDragImage = GetAddress("DAD_ShowDragImage");
	pfnAheadLib_PrintersGetCommand_RunDLL = GetAddress("PrintersGetCommand_RunDLL");
	pfnAheadLib_PrintersGetCommand_RunDLLA = GetAddress("PrintersGetCommand_RunDLLA");
	pfnAheadLib_Unnamed140 = GetAddress(MAKEINTRESOURCEA(140));
	pfnAheadLib_Unnamed141 = GetAddress(MAKEINTRESOURCEA(141));
	pfnAheadLib_Unnamed142 = GetAddress(MAKEINTRESOURCEA(142));
	pfnAheadLib_Unnamed143 = GetAddress(MAKEINTRESOURCEA(143));
	pfnAheadLib_Unnamed144 = GetAddress(MAKEINTRESOURCEA(144));
	pfnAheadLib_Unnamed145 = GetAddress(MAKEINTRESOURCEA(145));
	pfnAheadLib_Unnamed146 = GetAddress(MAKEINTRESOURCEA(146));
	pfnAheadLib_SHCLSIDFromString = GetAddress("SHCLSIDFromString");
	pfnAheadLib_Unnamed148 = GetAddress(MAKEINTRESOURCEA(148));
	pfnAheadLib_SHFind_InitMenuPopup = GetAddress("SHFind_InitMenuPopup");
	pfnAheadLib_PrintersGetCommand_RunDLLW = GetAddress("PrintersGetCommand_RunDLLW");
	pfnAheadLib_Unnamed151 = GetAddress(MAKEINTRESOURCEA(151));
	pfnAheadLib_ILGetSize = GetAddress("ILGetSize");
	pfnAheadLib_ILGetNext = GetAddress("ILGetNext");
	pfnAheadLib_ILAppendID = GetAddress("ILAppendID");
	pfnAheadLib_ILFree = GetAddress("ILFree");
	pfnAheadLib_Unnamed156 = GetAddress(MAKEINTRESOURCEA(156));
	pfnAheadLib_ILCreateFromPath = GetAddress("ILCreateFromPath");
	pfnAheadLib_Unnamed158 = GetAddress(MAKEINTRESOURCEA(158));
	pfnAheadLib_Unnamed159 = GetAddress(MAKEINTRESOURCEA(159));
	pfnAheadLib_Unnamed160 = GetAddress(MAKEINTRESOURCEA(160));
	pfnAheadLib_Unnamed161 = GetAddress(MAKEINTRESOURCEA(161));
	pfnAheadLib_SHSimpleIDListFromPath = GetAddress("SHSimpleIDListFromPath");
	pfnAheadLib_Unnamed163 = GetAddress(MAKEINTRESOURCEA(163));
	pfnAheadLib_Win32DeleteFile = GetAddress("Win32DeleteFile");
	pfnAheadLib_SHCreateDirectory = GetAddress("SHCreateDirectory");
	pfnAheadLib_Unnamed166 = GetAddress(MAKEINTRESOURCEA(166));
	pfnAheadLib_SHAddFromPropSheetExtArray = GetAddress("SHAddFromPropSheetExtArray");
	pfnAheadLib_SHCreatePropSheetExtArray = GetAddress("SHCreatePropSheetExtArray");
	pfnAheadLib_SHDestroyPropSheetExtArray = GetAddress("SHDestroyPropSheetExtArray");
	pfnAheadLib_SHReplaceFromPropSheetExtArray = GetAddress("SHReplaceFromPropSheetExtArray");
	pfnAheadLib_PathCleanupSpec = GetAddress("PathCleanupSpec");
	pfnAheadLib_Unnamed172 = GetAddress(MAKEINTRESOURCEA(172));
	pfnAheadLib_SHValidateUNC = GetAddress("SHValidateUNC");
	pfnAheadLib_SHCreateShellFolderViewEx = GetAddress("SHCreateShellFolderViewEx");
	pfnAheadLib_Unnamed175 = GetAddress(MAKEINTRESOURCEA(175));
	pfnAheadLib_SHSetInstanceExplorer = GetAddress("SHSetInstanceExplorer");
	pfnAheadLib_Unnamed177 = GetAddress(MAKEINTRESOURCEA(177));
	pfnAheadLib_SHObjectProperties = GetAddress("SHObjectProperties");
	pfnAheadLib_SHGetNewLinkInfoA = GetAddress("SHGetNewLinkInfoA");
	pfnAheadLib_SHGetNewLinkInfoW = GetAddress("SHGetNewLinkInfoW");
	pfnAheadLib_Unnamed181 = GetAddress(MAKEINTRESOURCEA(181));
	pfnAheadLib_ShellMessageBoxW = GetAddress("ShellMessageBoxW");
	pfnAheadLib_ShellMessageBoxA = GetAddress("ShellMessageBoxA");
	pfnAheadLib_Unnamed184 = GetAddress(MAKEINTRESOURCEA(184));
	pfnAheadLib_Unnamed185 = GetAddress(MAKEINTRESOURCEA(185));
	pfnAheadLib_Unnamed186 = GetAddress(MAKEINTRESOURCEA(186));
	pfnAheadLib_Unnamed187 = GetAddress(MAKEINTRESOURCEA(187));
	pfnAheadLib_Unnamed188 = GetAddress(MAKEINTRESOURCEA(188));
	pfnAheadLib_ILCreateFromPathA = GetAddress("ILCreateFromPathA");
	pfnAheadLib_ILCreateFromPathW = GetAddress("ILCreateFromPathW");
	pfnAheadLib_SHUpdateImageA = GetAddress("SHUpdateImageA");
	pfnAheadLib_SHUpdateImageW = GetAddress("SHUpdateImageW");
	pfnAheadLib_SHHandleUpdateImage = GetAddress("SHHandleUpdateImage");
	pfnAheadLib_Unnamed194 = GetAddress(MAKEINTRESOURCEA(194));
	pfnAheadLib_SHFree = GetAddress("SHFree");
	pfnAheadLib_SHAlloc = GetAddress("SHAlloc");
	pfnAheadLib_Unnamed197 = GetAddress(MAKEINTRESOURCEA(197));
	pfnAheadLib_Unnamed198 = GetAddress(MAKEINTRESOURCEA(198));
	pfnAheadLib_RealShellExecuteA = GetAddress("RealShellExecuteA");
	pfnAheadLib_Unnamed200 = GetAddress(MAKEINTRESOURCEA(200));
	pfnAheadLib_Unnamed201 = GetAddress(MAKEINTRESOURCEA(201));
	pfnAheadLib_Unnamed202 = GetAddress(MAKEINTRESOURCEA(202));
	pfnAheadLib_Unnamed203 = GetAddress(MAKEINTRESOURCEA(203));
	pfnAheadLib_Unnamed204 = GetAddress(MAKEINTRESOURCEA(204));
	pfnAheadLib_Unnamed205 = GetAddress(MAKEINTRESOURCEA(205));
	pfnAheadLib_Unnamed206 = GetAddress(MAKEINTRESOURCEA(206));
	pfnAheadLib_RealShellExecuteExA = GetAddress("RealShellExecuteExA");
	pfnAheadLib_RealShellExecuteExW = GetAddress("RealShellExecuteExW");
	pfnAheadLib_Unnamed209 = GetAddress(MAKEINTRESOURCEA(209));
	pfnAheadLib_Unnamed210 = GetAddress(MAKEINTRESOURCEA(210));
	pfnAheadLib_Unnamed211 = GetAddress(MAKEINTRESOURCEA(211));
	pfnAheadLib_Unnamed212 = GetAddress(MAKEINTRESOURCEA(212));
	pfnAheadLib_Unnamed213 = GetAddress(MAKEINTRESOURCEA(213));
	pfnAheadLib_Unnamed214 = GetAddress(MAKEINTRESOURCEA(214));
	pfnAheadLib_Unnamed215 = GetAddress(MAKEINTRESOURCEA(215));
	pfnAheadLib_Unnamed216 = GetAddress(MAKEINTRESOURCEA(216));
	pfnAheadLib_Unnamed217 = GetAddress(MAKEINTRESOURCEA(217));
	pfnAheadLib_Unnamed218 = GetAddress(MAKEINTRESOURCEA(218));
	pfnAheadLib_Unnamed219 = GetAddress(MAKEINTRESOURCEA(219));
	pfnAheadLib_Unnamed220 = GetAddress(MAKEINTRESOURCEA(220));
	pfnAheadLib_Unnamed221 = GetAddress(MAKEINTRESOURCEA(221));
	pfnAheadLib_Unnamed222 = GetAddress(MAKEINTRESOURCEA(222));
	pfnAheadLib_Unnamed223 = GetAddress(MAKEINTRESOURCEA(223));
	pfnAheadLib_Unnamed224 = GetAddress(MAKEINTRESOURCEA(224));
	pfnAheadLib_Unnamed225 = GetAddress(MAKEINTRESOURCEA(225));
	pfnAheadLib_RealShellExecuteW = GetAddress("RealShellExecuteW");
	pfnAheadLib_Unnamed227 = GetAddress(MAKEINTRESOURCEA(227));
	pfnAheadLib_SHHelpShortcuts_RunDLL = GetAddress("SHHelpShortcuts_RunDLL");
	pfnAheadLib_SHHelpShortcuts_RunDLLA = GetAddress("SHHelpShortcuts_RunDLLA");
	pfnAheadLib_Unnamed230 = GetAddress(MAKEINTRESOURCEA(230));
	pfnAheadLib_SHSetFolderPathA = GetAddress("SHSetFolderPathA");
	pfnAheadLib_SHSetFolderPathW = GetAddress("SHSetFolderPathW");
	pfnAheadLib_Unnamed233 = GetAddress(MAKEINTRESOURCEA(233));
	pfnAheadLib_Unnamed234 = GetAddress(MAKEINTRESOURCEA(234));
	pfnAheadLib_Unnamed235 = GetAddress(MAKEINTRESOURCEA(235));
	pfnAheadLib_Unnamed236 = GetAddress(MAKEINTRESOURCEA(236));
	pfnAheadLib_Unnamed237 = GetAddress(MAKEINTRESOURCEA(237));
	pfnAheadLib_SHHelpShortcuts_RunDLLW = GetAddress("SHHelpShortcuts_RunDLLW");
	pfnAheadLib_PathIsSlowW = GetAddress("PathIsSlowW");
	pfnAheadLib_PathIsSlowA = GetAddress("PathIsSlowA");
	pfnAheadLib_Unnamed241 = GetAddress(MAKEINTRESOURCEA(241));
	pfnAheadLib_Unnamed242 = GetAddress(MAKEINTRESOURCEA(242));
	pfnAheadLib_Unnamed243 = GetAddress(MAKEINTRESOURCEA(243));
	pfnAheadLib_Unnamed244 = GetAddress(MAKEINTRESOURCEA(244));
	pfnAheadLib_SHTestTokenMembership = GetAddress("SHTestTokenMembership");
	pfnAheadLib_Unnamed246 = GetAddress(MAKEINTRESOURCEA(246));
	pfnAheadLib_Unnamed247 = GetAddress(MAKEINTRESOURCEA(247));
	pfnAheadLib_Unnamed248 = GetAddress(MAKEINTRESOURCEA(248));
	pfnAheadLib_Unnamed249 = GetAddress(MAKEINTRESOURCEA(249));
	pfnAheadLib_Unnamed250 = GetAddress(MAKEINTRESOURCEA(250));
	pfnAheadLib_Unnamed251 = GetAddress(MAKEINTRESOURCEA(251));
	pfnAheadLib_Unnamed252 = GetAddress(MAKEINTRESOURCEA(252));
	pfnAheadLib_Unnamed253 = GetAddress(MAKEINTRESOURCEA(253));
	pfnAheadLib_Unnamed254 = GetAddress(MAKEINTRESOURCEA(254));
	pfnAheadLib_AppCompat_RunDLLW = GetAddress("AppCompat_RunDLLW");
	pfnAheadLib_SHCreateShellFolderView = GetAddress("SHCreateShellFolderView");
	pfnAheadLib_Unnamed257 = GetAddress(MAKEINTRESOURCEA(257));
	pfnAheadLib_Unnamed258 = GetAddress(MAKEINTRESOURCEA(258));
	pfnAheadLib_Unnamed259 = GetAddress(MAKEINTRESOURCEA(259));
	pfnAheadLib_Unnamed260 = GetAddress(MAKEINTRESOURCEA(260));
	pfnAheadLib_Unnamed261 = GetAddress(MAKEINTRESOURCEA(261));
	pfnAheadLib_Unnamed262 = GetAddress(MAKEINTRESOURCEA(262));
	pfnAheadLib_AssocCreateForClasses = GetAddress("AssocCreateForClasses");
	pfnAheadLib_Unnamed264 = GetAddress(MAKEINTRESOURCEA(264));
	pfnAheadLib_Unnamed265 = GetAddress(MAKEINTRESOURCEA(265));
	pfnAheadLib_Unnamed266 = GetAddress(MAKEINTRESOURCEA(266));
	pfnAheadLib_AssocElemCreateForKey = GetAddress("AssocElemCreateForKey");
	pfnAheadLib_AssocGetDetailsOfPropKey = GetAddress("AssocGetDetailsOfPropKey");
	pfnAheadLib_CallFileCopyHook = GetAddress("CallFileCopyHook");
	pfnAheadLib_Unnamed270 = GetAddress(MAKEINTRESOURCEA(270));
	pfnAheadLib_Unnamed271 = GetAddress(MAKEINTRESOURCEA(271));
	pfnAheadLib_CheckEscapesW = GetAddress("CheckEscapesW");
	pfnAheadLib_CommandLineToArgvW = GetAddress("CommandLineToArgvW");
	pfnAheadLib_Control_RunDLL = GetAddress("Control_RunDLL");
	pfnAheadLib_Control_RunDLLA = GetAddress("Control_RunDLLA");
	pfnAheadLib_Control_RunDLLAsUserW = GetAddress("Control_RunDLLAsUserW");
	pfnAheadLib_Control_RunDLLW = GetAddress("Control_RunDLLW");
	pfnAheadLib_DllCanUnloadNow = GetAddress("DllCanUnloadNow");
	pfnAheadLib_DllGetActivationFactory = GetAddress("DllGetActivationFactory");
	pfnAheadLib_DllGetClassObject = GetAddress("DllGetClassObject");
	pfnAheadLib_DllGetVersion = GetAddress("DllGetVersion");
	pfnAheadLib_DllInstall = GetAddress("DllInstall");
	pfnAheadLib_DllRegisterServer = GetAddress("DllRegisterServer");
	pfnAheadLib_DllUnregisterServer = GetAddress("DllUnregisterServer");
	pfnAheadLib_DoEnvironmentSubstA = GetAddress("DoEnvironmentSubstA");
	pfnAheadLib_DoEnvironmentSubstW = GetAddress("DoEnvironmentSubstW");
	pfnAheadLib_DragAcceptFiles = GetAddress("DragAcceptFiles");
	pfnAheadLib_DragFinish = GetAddress("DragFinish");
	pfnAheadLib_DragQueryFile = GetAddress("DragQueryFile");
	pfnAheadLib_DragQueryFileA = GetAddress("DragQueryFileA");
	pfnAheadLib_DragQueryFileAorW = GetAddress("DragQueryFileAorW");
	pfnAheadLib_DragQueryFileW = GetAddress("DragQueryFileW");
	pfnAheadLib_DragQueryPoint = GetAddress("DragQueryPoint");
	pfnAheadLib_DuplicateIcon = GetAddress("DuplicateIcon");
	pfnAheadLib_ExtractAssociatedIconA = GetAddress("ExtractAssociatedIconA");
	pfnAheadLib_ExtractAssociatedIconExA = GetAddress("ExtractAssociatedIconExA");
	pfnAheadLib_ExtractAssociatedIconExW = GetAddress("ExtractAssociatedIconExW");
	pfnAheadLib_ExtractAssociatedIconW = GetAddress("ExtractAssociatedIconW");
	pfnAheadLib_ExtractIconA = GetAddress("ExtractIconA");
	pfnAheadLib_ExtractIconEx = GetAddress("ExtractIconEx");
	pfnAheadLib_ExtractIconExA = GetAddress("ExtractIconExA");
	pfnAheadLib_ExtractIconExW = GetAddress("ExtractIconExW");
	pfnAheadLib_ExtractIconW = GetAddress("ExtractIconW");
	pfnAheadLib_FindExecutableA = GetAddress("FindExecutableA");
	pfnAheadLib_FindExecutableW = GetAddress("FindExecutableW");
	pfnAheadLib_FreeIconList = GetAddress("FreeIconList");
	pfnAheadLib_GetCurrentProcessExplicitAppUserModelID = GetAddress("GetCurrentProcessExplicitAppUserModelID");
	pfnAheadLib_InitNetworkAddressControl = GetAddress("InitNetworkAddressControl");
	pfnAheadLib_InternalExtractIconListA = GetAddress("InternalExtractIconListA");
	pfnAheadLib_InternalExtractIconListW = GetAddress("InternalExtractIconListW");
	pfnAheadLib_LaunchMSHelp_RunDLLW = GetAddress("LaunchMSHelp_RunDLLW");
	pfnAheadLib_Options_RunDLL = GetAddress("Options_RunDLL");
	pfnAheadLib_Options_RunDLLA = GetAddress("Options_RunDLLA");
	pfnAheadLib_Options_RunDLLW = GetAddress("Options_RunDLLW");
	pfnAheadLib_RegenerateUserEnvironment = GetAddress("RegenerateUserEnvironment");
	pfnAheadLib_RunAsNewUser_RunDLLW = GetAddress("RunAsNewUser_RunDLLW");
	pfnAheadLib_SHAddDefaultPropertiesByExt = GetAddress("SHAddDefaultPropertiesByExt");
	pfnAheadLib_SHAddToRecentDocs = GetAddress("SHAddToRecentDocs");
	pfnAheadLib_SHAppBarMessage = GetAddress("SHAppBarMessage");
	pfnAheadLib_SHAssocEnumHandlers = GetAddress("SHAssocEnumHandlers");
	pfnAheadLib_SHAssocEnumHandlersForProtocolByApplication = GetAddress("SHAssocEnumHandlersForProtocolByApplication");
	pfnAheadLib_SHBindToFolderIDListParent = GetAddress("SHBindToFolderIDListParent");
	pfnAheadLib_SHBindToFolderIDListParentEx = GetAddress("SHBindToFolderIDListParentEx");
	pfnAheadLib_SHBindToObject = GetAddress("SHBindToObject");
	pfnAheadLib_SHBindToParent = GetAddress("SHBindToParent");
	pfnAheadLib_SHBrowseForFolder = GetAddress("SHBrowseForFolder");
	pfnAheadLib_SHBrowseForFolderA = GetAddress("SHBrowseForFolderA");
	pfnAheadLib_SHBrowseForFolderW = GetAddress("SHBrowseForFolderW");
	pfnAheadLib_SHChangeNotify = GetAddress("SHChangeNotify");
	pfnAheadLib_SHChangeNotifyRegisterThread = GetAddress("SHChangeNotifyRegisterThread");
	pfnAheadLib_SHChangeNotifySuspendResume = GetAddress("SHChangeNotifySuspendResume");
	pfnAheadLib_SHCoCreateInstanceWorker = GetAddress("SHCoCreateInstanceWorker");
	pfnAheadLib_SHCreateAssociationRegistration = GetAddress("SHCreateAssociationRegistration");
	pfnAheadLib_SHCreateCategoryEnum = GetAddress("SHCreateCategoryEnum");
	pfnAheadLib_SHCreateDataObject = GetAddress("SHCreateDataObject");
	pfnAheadLib_SHCreateDefaultContextMenu = GetAddress("SHCreateDefaultContextMenu");
	pfnAheadLib_SHCreateDefaultExtractIcon = GetAddress("SHCreateDefaultExtractIcon");
	pfnAheadLib_SHCreateDefaultPropertiesOp = GetAddress("SHCreateDefaultPropertiesOp");
	pfnAheadLib_SHCreateDirectoryExA = GetAddress("SHCreateDirectoryExA");
	pfnAheadLib_SHCreateDirectoryExW = GetAddress("SHCreateDirectoryExW");
	pfnAheadLib_SHCreateDrvExtIcon = GetAddress("SHCreateDrvExtIcon");
	pfnAheadLib_SHCreateItemFromIDList = GetAddress("SHCreateItemFromIDList");
	pfnAheadLib_SHCreateItemFromParsingName = GetAddress("SHCreateItemFromParsingName");
	pfnAheadLib_SHCreateItemFromRelativeName = GetAddress("SHCreateItemFromRelativeName");
	pfnAheadLib_SHCreateItemInKnownFolder = GetAddress("SHCreateItemInKnownFolder");
	pfnAheadLib_SHCreateItemWithParent = GetAddress("SHCreateItemWithParent");
	pfnAheadLib_SHCreateLocalServerRunDll = GetAddress("SHCreateLocalServerRunDll");
	pfnAheadLib_SHCreateProcessAsUserW = GetAddress("SHCreateProcessAsUserW");
	pfnAheadLib_SHCreateQueryCancelAutoPlayMoniker = GetAddress("SHCreateQueryCancelAutoPlayMoniker");
	pfnAheadLib_SHCreateShellItem = GetAddress("SHCreateShellItem");
	pfnAheadLib_SHCreateShellItemArray = GetAddress("SHCreateShellItemArray");
	pfnAheadLib_SHCreateShellItemArrayFromDataObject = GetAddress("SHCreateShellItemArrayFromDataObject");
	pfnAheadLib_SHCreateShellItemArrayFromIDLists = GetAddress("SHCreateShellItemArrayFromIDLists");
	pfnAheadLib_SHCreateShellItemArrayFromShellItem = GetAddress("SHCreateShellItemArrayFromShellItem");
	pfnAheadLib_SHELL32_AddToBackIconTable = GetAddress("SHELL32_AddToBackIconTable");
	pfnAheadLib_SHELL32_AddToFrontIconTable = GetAddress("SHELL32_AddToFrontIconTable");
	pfnAheadLib_SHELL32_AreAllItemsAvailable = GetAddress("SHELL32_AreAllItemsAvailable");
	pfnAheadLib_SHELL32_CCommonPlacesFolder_CreateInstance = GetAddress("SHELL32_CCommonPlacesFolder_CreateInstance");
	pfnAheadLib_SHELL32_CDBurn_CloseSession = GetAddress("SHELL32_CDBurn_CloseSession");
	pfnAheadLib_SHELL32_CDBurn_DriveSupportedForDataBurn = GetAddress("SHELL32_CDBurn_DriveSupportedForDataBurn");
	pfnAheadLib_SHELL32_CDBurn_Erase = GetAddress("SHELL32_CDBurn_Erase");
	pfnAheadLib_SHELL32_CDBurn_GetCDInfo = GetAddress("SHELL32_CDBurn_GetCDInfo");
	pfnAheadLib_SHELL32_CDBurn_GetLiveFSDiscInfo = GetAddress("SHELL32_CDBurn_GetLiveFSDiscInfo");
	pfnAheadLib_SHELL32_CDBurn_GetStagingPathOrNormalPath = GetAddress("SHELL32_CDBurn_GetStagingPathOrNormalPath");
	pfnAheadLib_SHELL32_CDBurn_GetTaskInfo = GetAddress("SHELL32_CDBurn_GetTaskInfo");
	pfnAheadLib_SHELL32_CDBurn_IsBlankDisc2 = GetAddress("SHELL32_CDBurn_IsBlankDisc2");
	pfnAheadLib_SHELL32_CDBurn_IsBlankDisc = GetAddress("SHELL32_CDBurn_IsBlankDisc");
	pfnAheadLib_SHELL32_CDBurn_IsLiveFS = GetAddress("SHELL32_CDBurn_IsLiveFS");
	pfnAheadLib_SHELL32_CDBurn_OnDeviceChange = GetAddress("SHELL32_CDBurn_OnDeviceChange");
	pfnAheadLib_SHELL32_CDBurn_OnEject = GetAddress("SHELL32_CDBurn_OnEject");
	pfnAheadLib_SHELL32_CDBurn_OnMediaChange = GetAddress("SHELL32_CDBurn_OnMediaChange");
	pfnAheadLib_SHELL32_CDefFolderMenu_Create2 = GetAddress("SHELL32_CDefFolderMenu_Create2");
	pfnAheadLib_SHELL32_CDefFolderMenu_Create2Ex = GetAddress("SHELL32_CDefFolderMenu_Create2Ex");
	pfnAheadLib_SHELL32_CDefFolderMenu_MergeMenu = GetAddress("SHELL32_CDefFolderMenu_MergeMenu");
	pfnAheadLib_SHELL32_CDrivesContextMenu_Create = GetAddress("SHELL32_CDrivesContextMenu_Create");
	pfnAheadLib_SHELL32_CDrivesDropTarget_Create = GetAddress("SHELL32_CDrivesDropTarget_Create");
	pfnAheadLib_SHELL32_CDrives_CreateSFVCB = GetAddress("SHELL32_CDrives_CreateSFVCB");
	pfnAheadLib_SHELL32_CFSDropTarget_CreateInstance = GetAddress("SHELL32_CFSDropTarget_CreateInstance");
	pfnAheadLib_SHELL32_CFSFolderCallback_Create = GetAddress("SHELL32_CFSFolderCallback_Create");
	pfnAheadLib_SHELL32_CFillPropertiesTask_CreateInstance = GetAddress("SHELL32_CFillPropertiesTask_CreateInstance");
	pfnAheadLib_SHELL32_CLibraryDropTarget_CreateInstance = GetAddress("SHELL32_CLibraryDropTarget_CreateInstance");
	pfnAheadLib_SHELL32_CLocationContextMenu_Create = GetAddress("SHELL32_CLocationContextMenu_Create");
	pfnAheadLib_SHELL32_CLocationFolderUI_CreateInstance = GetAddress("SHELL32_CLocationFolderUI_CreateInstance");
	pfnAheadLib_SHELL32_CMountPoint_DoAutorun = GetAddress("SHELL32_CMountPoint_DoAutorun");
	pfnAheadLib_SHELL32_CMountPoint_DoAutorunPrompt = GetAddress("SHELL32_CMountPoint_DoAutorunPrompt");
	pfnAheadLib_SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy = GetAddress("SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy");
	pfnAheadLib_SHELL32_CMountPoint_ProcessAutoRunFile = GetAddress("SHELL32_CMountPoint_ProcessAutoRunFile");
	pfnAheadLib_SHELL32_CMountPoint_WantAutorunUI = GetAddress("SHELL32_CMountPoint_WantAutorunUI");
	pfnAheadLib_SHELL32_CMountPoint_WantAutorunUIGetReady = GetAddress("SHELL32_CMountPoint_WantAutorunUIGetReady");
	pfnAheadLib_SHELL32_CNetFolderUI_CreateInstance = GetAddress("SHELL32_CNetFolderUI_CreateInstance");
	pfnAheadLib_SHELL32_CPL_CategoryIdArrayFromVariant = GetAddress("SHELL32_CPL_CategoryIdArrayFromVariant");
	pfnAheadLib_SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey = GetAddress("SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey");
	pfnAheadLib_SHELL32_CPL_ModifyWowDisplayName = GetAddress("SHELL32_CPL_ModifyWowDisplayName");
	pfnAheadLib_SHELL32_CRecentDocsContextMenu_CreateInstance = GetAddress("SHELL32_CRecentDocsContextMenu_CreateInstance");
	pfnAheadLib_SHELL32_CTransferConfirmation_CreateInstance = GetAddress("SHELL32_CTransferConfirmation_CreateInstance");
	pfnAheadLib_SHELL32_CallFileCopyHooks = GetAddress("SHELL32_CallFileCopyHooks");
	pfnAheadLib_SHELL32_CanDisplayWin8CopyDialog = GetAddress("SHELL32_CanDisplayWin8CopyDialog");
	pfnAheadLib_SHELL32_CloseAutoplayPrompt = GetAddress("SHELL32_CloseAutoplayPrompt");
	pfnAheadLib_SHELL32_CommandLineFromMsiDescriptor = GetAddress("SHELL32_CommandLineFromMsiDescriptor");
	pfnAheadLib_SHELL32_CopySecondaryTiles = GetAddress("SHELL32_CopySecondaryTiles");
	pfnAheadLib_SHELL32_CreateConfirmationInterrupt = GetAddress("SHELL32_CreateConfirmationInterrupt");
	pfnAheadLib_SHELL32_CreateConflictInterrupt = GetAddress("SHELL32_CreateConflictInterrupt");
	pfnAheadLib_SHELL32_CreateDefaultOperationDataProvider = GetAddress("SHELL32_CreateDefaultOperationDataProvider");
	pfnAheadLib_SHELL32_CreateFileFolderContextMenu = GetAddress("SHELL32_CreateFileFolderContextMenu");
	pfnAheadLib_SHELL32_CreateLinkInfoW = GetAddress("SHELL32_CreateLinkInfoW");
	pfnAheadLib_SHELL32_CreateQosRecorder = GetAddress("SHELL32_CreateQosRecorder");
	pfnAheadLib_SHELL32_CreateSharePointView = GetAddress("SHELL32_CreateSharePointView");
	pfnAheadLib_SHELL32_Create_IEnumUICommand = GetAddress("SHELL32_Create_IEnumUICommand");
	pfnAheadLib_SHELL32_DestroyLinkInfo = GetAddress("SHELL32_DestroyLinkInfo");
	pfnAheadLib_SHELL32_EncryptDirectory = GetAddress("SHELL32_EncryptDirectory");
	pfnAheadLib_SHELL32_EncryptedFileKeyInfo = GetAddress("SHELL32_EncryptedFileKeyInfo");
	pfnAheadLib_SHELL32_EnumCommonTasks = GetAddress("SHELL32_EnumCommonTasks");
	pfnAheadLib_SHELL32_FreeEncryptedFileKeyInfo = GetAddress("SHELL32_FreeEncryptedFileKeyInfo");
	pfnAheadLib_SHELL32_GenerateAppID = GetAddress("SHELL32_GenerateAppID");
	pfnAheadLib_SHELL32_GetAppIDRoot = GetAddress("SHELL32_GetAppIDRoot");
	pfnAheadLib_SHELL32_GetCommandProviderForFolderType = GetAddress("SHELL32_GetCommandProviderForFolderType");
	pfnAheadLib_SHELL32_GetDPIAdjustedLogicalSize = GetAddress("SHELL32_GetDPIAdjustedLogicalSize");
	pfnAheadLib_SHELL32_GetDiskCleanupPath = GetAddress("SHELL32_GetDiskCleanupPath");
	pfnAheadLib_SHELL32_GetFileNameFromBrowse = GetAddress("SHELL32_GetFileNameFromBrowse");
	pfnAheadLib_SHELL32_GetIconOverlayManager = GetAddress("SHELL32_GetIconOverlayManager");
	pfnAheadLib_SHELL32_GetLinkInfoData = GetAddress("SHELL32_GetLinkInfoData");
	pfnAheadLib_SHELL32_GetRatingBucket = GetAddress("SHELL32_GetRatingBucket");
	pfnAheadLib_SHELL32_GetSqmableFileName = GetAddress("SHELL32_GetSqmableFileName");
	pfnAheadLib_SHELL32_GetThumbnailAdornerFromFactory2 = GetAddress("SHELL32_GetThumbnailAdornerFromFactory2");
	pfnAheadLib_SHELL32_GetThumbnailAdornerFromFactory = GetAddress("SHELL32_GetThumbnailAdornerFromFactory");
	pfnAheadLib_SHELL32_HandleUnrecognizedFileSystem = GetAddress("SHELL32_HandleUnrecognizedFileSystem");
	pfnAheadLib_SHELL32_IconCacheCreate = GetAddress("SHELL32_IconCacheCreate");
	pfnAheadLib_SHELL32_IconCacheDestroy = GetAddress("SHELL32_IconCacheDestroy");
	pfnAheadLib_SHELL32_IconCacheHandleAssociationChanged = GetAddress("SHELL32_IconCacheHandleAssociationChanged");
	pfnAheadLib_SHELL32_IconCacheRestore = GetAddress("SHELL32_IconCacheRestore");
	pfnAheadLib_SHELL32_IconCache_AboutToExtractIcons = GetAddress("SHELL32_IconCache_AboutToExtractIcons");
	pfnAheadLib_SHELL32_IconCache_DoneExtractingIcons = GetAddress("SHELL32_IconCache_DoneExtractingIcons");
	pfnAheadLib_SHELL32_IconCache_ExpandEnvAndSearchPath = GetAddress("SHELL32_IconCache_ExpandEnvAndSearchPath");
	pfnAheadLib_SHELL32_IconCache_RememberRecentlyExtractedIconsW = GetAddress("SHELL32_IconCache_RememberRecentlyExtractedIconsW");
	pfnAheadLib_SHELL32_IconOverlayManagerInit = GetAddress("SHELL32_IconOverlayManagerInit");
	pfnAheadLib_SHELL32_IsGetKeyboardLayoutPresent = GetAddress("SHELL32_IsGetKeyboardLayoutPresent");
	pfnAheadLib_SHELL32_IsSystemUpgradeInProgress = GetAddress("SHELL32_IsSystemUpgradeInProgress");
	pfnAheadLib_SHELL32_IsValidLinkInfo = GetAddress("SHELL32_IsValidLinkInfo");
	pfnAheadLib_SHELL32_LegacyEnumSpecialTasksByType = GetAddress("SHELL32_LegacyEnumSpecialTasksByType");
	pfnAheadLib_SHELL32_LegacyEnumTasks = GetAddress("SHELL32_LegacyEnumTasks");
	pfnAheadLib_SHELL32_LookupBackIconIndex = GetAddress("SHELL32_LookupBackIconIndex");
	pfnAheadLib_SHELL32_LookupFrontIconIndex = GetAddress("SHELL32_LookupFrontIconIndex");
	pfnAheadLib_SHELL32_NormalizeRating = GetAddress("SHELL32_NormalizeRating");
	pfnAheadLib_SHELL32_NotifyLinkTrackingServiceOfMove = GetAddress("SHELL32_NotifyLinkTrackingServiceOfMove");
	pfnAheadLib_SHELL32_PifMgr_CloseProperties = GetAddress("SHELL32_PifMgr_CloseProperties");
	pfnAheadLib_SHELL32_PifMgr_GetProperties = GetAddress("SHELL32_PifMgr_GetProperties");
	pfnAheadLib_SHELL32_PifMgr_OpenProperties = GetAddress("SHELL32_PifMgr_OpenProperties");
	pfnAheadLib_SHELL32_PifMgr_SetProperties = GetAddress("SHELL32_PifMgr_SetProperties");
	pfnAheadLib_SHELL32_Printers_CreateBindInfo = GetAddress("SHELL32_Printers_CreateBindInfo");
	pfnAheadLib_SHELL32_Printjob_GetPidl = GetAddress("SHELL32_Printjob_GetPidl");
	pfnAheadLib_SHELL32_PurgeSystemIcon = GetAddress("SHELL32_PurgeSystemIcon");
	pfnAheadLib_SHELL32_RefreshOverlayImages = GetAddress("SHELL32_RefreshOverlayImages");
	pfnAheadLib_SHELL32_ResolveLinkInfoW = GetAddress("SHELL32_ResolveLinkInfoW");
	pfnAheadLib_SHELL32_SHAddSparseIcon = GetAddress("SHELL32_SHAddSparseIcon");
	pfnAheadLib_SHELL32_SHCreateByValueOperationInterrupt = GetAddress("SHELL32_SHCreateByValueOperationInterrupt");
	pfnAheadLib_SHELL32_SHCreateDefaultContextMenu = GetAddress("SHELL32_SHCreateDefaultContextMenu");
	pfnAheadLib_SHELL32_SHCreateLocalServer = GetAddress("SHELL32_SHCreateLocalServer");
	pfnAheadLib_SHELL32_SHCreateShellFolderView = GetAddress("SHELL32_SHCreateShellFolderView");
	pfnAheadLib_SHELL32_SHDuplicateEncryptionInfoFile = GetAddress("SHELL32_SHDuplicateEncryptionInfoFile");
	pfnAheadLib_SHELL32_SHEncryptFile = GetAddress("SHELL32_SHEncryptFile");
	pfnAheadLib_SHELL32_SHFormatDriveAsync = GetAddress("SHELL32_SHFormatDriveAsync");
	pfnAheadLib_SHELL32_SHGetThreadUndoManager = GetAddress("SHELL32_SHGetThreadUndoManager");
	pfnAheadLib_SHELL32_SHGetUserNameW = GetAddress("SHELL32_SHGetUserNameW");
	pfnAheadLib_SHELL32_SHIsVirtualDevice = GetAddress("SHELL32_SHIsVirtualDevice");
	pfnAheadLib_SHELL32_SHLaunchPropSheet = GetAddress("SHELL32_SHLaunchPropSheet");
	pfnAheadLib_SHELL32_SHLogILFromFSIL = GetAddress("SHELL32_SHLogILFromFSIL");
	pfnAheadLib_SHELL32_SHOpenWithDialog = GetAddress("SHELL32_SHOpenWithDialog");
	pfnAheadLib_SHELL32_SHStartNetConnectionDialogW = GetAddress("SHELL32_SHStartNetConnectionDialogW");
	pfnAheadLib_SHELL32_SHUICommandFromGUID = GetAddress("SHELL32_SHUICommandFromGUID");
	pfnAheadLib_SHELL32_SendToMenu_InvokeTargetedCommand = GetAddress("SHELL32_SendToMenu_InvokeTargetedCommand");
	pfnAheadLib_SHELL32_SendToMenu_VerifyTargetedCommand = GetAddress("SHELL32_SendToMenu_VerifyTargetedCommand");
	pfnAheadLib_SHELL32_ShowHideIconOnlyOnDesktop = GetAddress("SHELL32_ShowHideIconOnlyOnDesktop");
	pfnAheadLib_SHELL32_SimpleRatingToFilterCondition = GetAddress("SHELL32_SimpleRatingToFilterCondition");
	pfnAheadLib_SHELL32_StampIconForFile = GetAddress("SHELL32_StampIconForFile");
	pfnAheadLib_SHELL32_SuspendUndo = GetAddress("SHELL32_SuspendUndo");
	pfnAheadLib_SHELL32_TryVirtualDiscImageDriveEject = GetAddress("SHELL32_TryVirtualDiscImageDriveEject");
	pfnAheadLib_SHELL32_VerifySaferTrust = GetAddress("SHELL32_VerifySaferTrust");
	pfnAheadLib_SHEmptyRecycleBinA = GetAddress("SHEmptyRecycleBinA");
	pfnAheadLib_SHEmptyRecycleBinW = GetAddress("SHEmptyRecycleBinW");
	pfnAheadLib_SHEnableServiceObject = GetAddress("SHEnableServiceObject");
	pfnAheadLib_SHEnumerateUnreadMailAccountsW = GetAddress("SHEnumerateUnreadMailAccountsW");
	pfnAheadLib_SHEvaluateSystemCommandTemplate = GetAddress("SHEvaluateSystemCommandTemplate");
	pfnAheadLib_SHExecuteErrorMessageBox = GetAddress("SHExecuteErrorMessageBox");
	pfnAheadLib_SHExtractIconsW = GetAddress("SHExtractIconsW");
	pfnAheadLib_SHFileOperation = GetAddress("SHFileOperation");
	pfnAheadLib_SHFileOperationA = GetAddress("SHFileOperationA");
	pfnAheadLib_SHFileOperationW = GetAddress("SHFileOperationW");
	pfnAheadLib_SHFormatDrive = GetAddress("SHFormatDrive");
	pfnAheadLib_SHFreeNameMappings = GetAddress("SHFreeNameMappings");
	pfnAheadLib_SHGetDataFromIDListA = GetAddress("SHGetDataFromIDListA");
	pfnAheadLib_SHGetDataFromIDListW = GetAddress("SHGetDataFromIDListW");
	pfnAheadLib_SHGetDesktopFolder = GetAddress("SHGetDesktopFolder");
	pfnAheadLib_SHGetDiskFreeSpaceA = GetAddress("SHGetDiskFreeSpaceA");
	pfnAheadLib_SHGetDiskFreeSpaceExA = GetAddress("SHGetDiskFreeSpaceExA");
	pfnAheadLib_SHGetDiskFreeSpaceExW = GetAddress("SHGetDiskFreeSpaceExW");
	pfnAheadLib_SHGetDriveMedia = GetAddress("SHGetDriveMedia");
	pfnAheadLib_SHGetFileInfo = GetAddress("SHGetFileInfo");
	pfnAheadLib_SHGetFileInfoA = GetAddress("SHGetFileInfoA");
	pfnAheadLib_SHGetFileInfoW = GetAddress("SHGetFileInfoW");
	pfnAheadLib_SHGetFolderLocation = GetAddress("SHGetFolderLocation");
	pfnAheadLib_SHGetFolderPathA = GetAddress("SHGetFolderPathA");
	pfnAheadLib_SHGetFolderPathAndSubDirA = GetAddress("SHGetFolderPathAndSubDirA");
	pfnAheadLib_SHGetFolderPathAndSubDirW = GetAddress("SHGetFolderPathAndSubDirW");
	pfnAheadLib_SHGetFolderPathEx = GetAddress("SHGetFolderPathEx");
	pfnAheadLib_SHGetFolderPathW = GetAddress("SHGetFolderPathW");
	pfnAheadLib_SHGetIDListFromObject = GetAddress("SHGetIDListFromObject");
	pfnAheadLib_SHGetIconOverlayIndexA = GetAddress("SHGetIconOverlayIndexA");
	pfnAheadLib_SHGetIconOverlayIndexW = GetAddress("SHGetIconOverlayIndexW");
	pfnAheadLib_SHGetInstanceExplorer = GetAddress("SHGetInstanceExplorer");
	pfnAheadLib_SHGetItemFromDataObject = GetAddress("SHGetItemFromDataObject");
	pfnAheadLib_SHGetItemFromObject = GetAddress("SHGetItemFromObject");
	pfnAheadLib_SHGetKnownFolderIDList = GetAddress("SHGetKnownFolderIDList");
	pfnAheadLib_SHGetKnownFolderItem = GetAddress("SHGetKnownFolderItem");
	pfnAheadLib_SHGetKnownFolderPath = GetAddress("SHGetKnownFolderPath");
	pfnAheadLib_SHGetLocalizedName = GetAddress("SHGetLocalizedName");
	pfnAheadLib_SHGetMalloc = GetAddress("SHGetMalloc");
	pfnAheadLib_SHGetNameFromIDList = GetAddress("SHGetNameFromIDList");
	pfnAheadLib_SHGetNewLinkInfo = GetAddress("SHGetNewLinkInfo");
	pfnAheadLib_SHGetPathFromIDList = GetAddress("SHGetPathFromIDList");
	pfnAheadLib_Unnamed520 = GetAddress(MAKEINTRESOURCEA(520));
	pfnAheadLib_Unnamed521 = GetAddress(MAKEINTRESOURCEA(521));
	pfnAheadLib_Unnamed522 = GetAddress(MAKEINTRESOURCEA(522));
	pfnAheadLib_Unnamed523 = GetAddress(MAKEINTRESOURCEA(523));
	pfnAheadLib_RealDriveType = GetAddress("RealDriveType");
	pfnAheadLib_Unnamed525 = GetAddress(MAKEINTRESOURCEA(525));
	pfnAheadLib_SHFlushSFCache = GetAddress("SHFlushSFCache");
	pfnAheadLib_SHGetPathFromIDListA = GetAddress("SHGetPathFromIDListA");
	pfnAheadLib_SHGetPathFromIDListEx = GetAddress("SHGetPathFromIDListEx");
	pfnAheadLib_SHGetPathFromIDListW = GetAddress("SHGetPathFromIDListW");
	pfnAheadLib_SHGetPropertyStoreForWindow = GetAddress("SHGetPropertyStoreForWindow");
	pfnAheadLib_SHGetPropertyStoreFromIDList = GetAddress("SHGetPropertyStoreFromIDList");
	pfnAheadLib_SHGetPropertyStoreFromParsingName = GetAddress("SHGetPropertyStoreFromParsingName");
	pfnAheadLib_SHGetSettings = GetAddress("SHGetSettings");
	pfnAheadLib_SHGetSpecialFolderLocation = GetAddress("SHGetSpecialFolderLocation");
	pfnAheadLib_SHGetSpecialFolderPathA = GetAddress("SHGetSpecialFolderPathA");
	pfnAheadLib_SHGetSpecialFolderPathW = GetAddress("SHGetSpecialFolderPathW");
	pfnAheadLib_SHGetStockIconInfo = GetAddress("SHGetStockIconInfo");
	pfnAheadLib_SHGetTemporaryPropertyForItem = GetAddress("SHGetTemporaryPropertyForItem");
	pfnAheadLib_SHGetUnreadMailCountW = GetAddress("SHGetUnreadMailCountW");
	pfnAheadLib_SHInvokePrinterCommandA = GetAddress("SHInvokePrinterCommandA");
	pfnAheadLib_SHInvokePrinterCommandW = GetAddress("SHInvokePrinterCommandW");
	pfnAheadLib_SHIsFileAvailableOffline = GetAddress("SHIsFileAvailableOffline");
	pfnAheadLib_SHLoadInProc = GetAddress("SHLoadInProc");
	pfnAheadLib_SHLoadNonloadedIconOverlayIdentifiers = GetAddress("SHLoadNonloadedIconOverlayIdentifiers");
	pfnAheadLib_SHOpenFolderAndSelectItems = GetAddress("SHOpenFolderAndSelectItems");
	pfnAheadLib_SHOpenWithDialog = GetAddress("SHOpenWithDialog");
	pfnAheadLib_SHParseDisplayName = GetAddress("SHParseDisplayName");
	pfnAheadLib_SHPathPrepareForWriteA = GetAddress("SHPathPrepareForWriteA");
	pfnAheadLib_SHPathPrepareForWriteW = GetAddress("SHPathPrepareForWriteW");
	pfnAheadLib_SHQueryRecycleBinA = GetAddress("SHQueryRecycleBinA");
	pfnAheadLib_SHQueryRecycleBinW = GetAddress("SHQueryRecycleBinW");
	pfnAheadLib_SHQueryUserNotificationState = GetAddress("SHQueryUserNotificationState");
	pfnAheadLib_SHRemoveLocalizedName = GetAddress("SHRemoveLocalizedName");
	pfnAheadLib_SHResolveLibrary = GetAddress("SHResolveLibrary");
	pfnAheadLib_SHSetDefaultProperties = GetAddress("SHSetDefaultProperties");
	pfnAheadLib_SHSetKnownFolderPath = GetAddress("SHSetKnownFolderPath");
	pfnAheadLib_SHSetLocalizedName = GetAddress("SHSetLocalizedName");
	pfnAheadLib_SHSetTemporaryPropertyForItem = GetAddress("SHSetTemporaryPropertyForItem");
	pfnAheadLib_SHSetUnreadMailCountW = GetAddress("SHSetUnreadMailCountW");
	pfnAheadLib_SHShowManageLibraryUI = GetAddress("SHShowManageLibraryUI");
	pfnAheadLib_SHUpdateRecycleBinIcon = GetAddress("SHUpdateRecycleBinIcon");
	pfnAheadLib_SetCurrentProcessExplicitAppUserModelID = GetAddress("SetCurrentProcessExplicitAppUserModelID");
	pfnAheadLib_SheChangeDirA = GetAddress("SheChangeDirA");
	pfnAheadLib_SheChangeDirExW = GetAddress("SheChangeDirExW");
	pfnAheadLib_SheGetDirA = GetAddress("SheGetDirA");
	pfnAheadLib_SheSetCurDrive = GetAddress("SheSetCurDrive");
	pfnAheadLib_ShellAboutA = GetAddress("ShellAboutA");
	pfnAheadLib_ShellAboutW = GetAddress("ShellAboutW");
	pfnAheadLib_ShellExec_RunDLL = GetAddress("ShellExec_RunDLL");
	pfnAheadLib_ShellExec_RunDLLA = GetAddress("ShellExec_RunDLLA");
	pfnAheadLib_ShellExec_RunDLLW = GetAddress("ShellExec_RunDLLW");
	pfnAheadLib_ShellExecuteA = GetAddress("ShellExecuteA");
	pfnAheadLib_ShellExecuteEx = GetAddress("ShellExecuteEx");
	pfnAheadLib_ShellExecuteExA = GetAddress("ShellExecuteExA");
	pfnAheadLib_ShellExecuteExW = GetAddress("ShellExecuteExW");
	pfnAheadLib_ShellExecuteW = GetAddress("ShellExecuteW");
	pfnAheadLib_ShellHookProc = GetAddress("ShellHookProc");
	pfnAheadLib_Shell_GetCachedImageIndexA = GetAddress("Shell_GetCachedImageIndexA");
	pfnAheadLib_Shell_GetCachedImageIndexW = GetAddress("Shell_GetCachedImageIndexW");
	pfnAheadLib_Shell_NotifyIcon = GetAddress("Shell_NotifyIcon");
	pfnAheadLib_Shell_NotifyIconA = GetAddress("Shell_NotifyIconA");
	pfnAheadLib_Shell_NotifyIconGetRect = GetAddress("Shell_NotifyIconGetRect");
	pfnAheadLib_Shell_NotifyIconW = GetAddress("Shell_NotifyIconW");
	pfnAheadLib_StateRepoNewMenuCache_EnsureCacheAsync = GetAddress("StateRepoNewMenuCache_EnsureCacheAsync");
	pfnAheadLib_StateRepoNewMenuCache_RebuildCacheAsync = GetAddress("StateRepoNewMenuCache_RebuildCacheAsync");
	pfnAheadLib_StrChrA = GetAddress("StrChrA");
	pfnAheadLib_StrChrIA = GetAddress("StrChrIA");
	pfnAheadLib_StrChrIW = GetAddress("StrChrIW");
	pfnAheadLib_StrChrW = GetAddress("StrChrW");
	pfnAheadLib_StrCmpNA = GetAddress("StrCmpNA");
	pfnAheadLib_StrCmpNIA = GetAddress("StrCmpNIA");
	pfnAheadLib_StrCmpNIW = GetAddress("StrCmpNIW");
	pfnAheadLib_StrCmpNW = GetAddress("StrCmpNW");
	pfnAheadLib_StrNCmpA = GetAddress("StrNCmpA");
	pfnAheadLib_StrNCmpIA = GetAddress("StrNCmpIA");
	pfnAheadLib_StrNCmpIW = GetAddress("StrNCmpIW");
	pfnAheadLib_StrNCmpW = GetAddress("StrNCmpW");
	pfnAheadLib_StrRChrA = GetAddress("StrRChrA");
	pfnAheadLib_StrRChrIA = GetAddress("StrRChrIA");
	pfnAheadLib_StrRChrIW = GetAddress("StrRChrIW");
	pfnAheadLib_StrRChrW = GetAddress("StrRChrW");
	pfnAheadLib_StrRStrA = GetAddress("StrRStrA");
	pfnAheadLib_StrRStrIA = GetAddress("StrRStrIA");
	pfnAheadLib_StrRStrIW = GetAddress("StrRStrIW");
	pfnAheadLib_StrRStrW = GetAddress("StrRStrW");
	pfnAheadLib_StrStrA = GetAddress("StrStrA");
	pfnAheadLib_StrStrIA = GetAddress("StrStrIA");
	pfnAheadLib_StrStrIW = GetAddress("StrStrIW");
	pfnAheadLib_StrStrW = GetAddress("StrStrW");
	pfnAheadLib_UsersLibrariesFolderUI_CreateInstance = GetAddress("UsersLibrariesFolderUI_CreateInstance");
	pfnAheadLib_WOWShellExecute = GetAddress("WOWShellExecute");
	pfnAheadLib_WaitForExplorerRestartW = GetAddress("WaitForExplorerRestartW");
	pfnAheadLib_Unnamed640 = GetAddress(MAKEINTRESOURCEA(640));
	pfnAheadLib_Unnamed641 = GetAddress(MAKEINTRESOURCEA(641));
	pfnAheadLib_Unnamed643 = GetAddress(MAKEINTRESOURCEA(643));
	pfnAheadLib_SHChangeNotification_Lock = GetAddress("SHChangeNotification_Lock");
	pfnAheadLib_SHChangeNotification_Unlock = GetAddress("SHChangeNotification_Unlock");
	pfnAheadLib_Unnamed646 = GetAddress(MAKEINTRESOURCEA(646));
	pfnAheadLib_Unnamed648 = GetAddress(MAKEINTRESOURCEA(648));
	pfnAheadLib_Unnamed650 = GetAddress(MAKEINTRESOURCEA(650));
	pfnAheadLib_Unnamed651 = GetAddress(MAKEINTRESOURCEA(651));
	pfnAheadLib_WriteCabinetState = GetAddress("WriteCabinetState");
	pfnAheadLib_Unnamed653 = GetAddress(MAKEINTRESOURCEA(653));
	pfnAheadLib_ReadCabinetState = GetAddress("ReadCabinetState");
	pfnAheadLib_Unnamed660 = GetAddress(MAKEINTRESOURCEA(660));
	pfnAheadLib_IsUserAnAdmin = GetAddress("IsUserAnAdmin");
	pfnAheadLib_Unnamed681 = GetAddress(MAKEINTRESOURCEA(681));
	pfnAheadLib_StgMakeUniqueName = GetAddress("StgMakeUniqueName");
	pfnAheadLib_Unnamed683 = GetAddress(MAKEINTRESOURCEA(683));
	pfnAheadLib_Unnamed684 = GetAddress(MAKEINTRESOURCEA(684));
	pfnAheadLib_SHPropStgCreate = GetAddress("SHPropStgCreate");
	pfnAheadLib_SHPropStgReadMultiple = GetAddress("SHPropStgReadMultiple");
	pfnAheadLib_SHPropStgWriteMultiple = GetAddress("SHPropStgWriteMultiple");
	pfnAheadLib_Unnamed690 = GetAddress(MAKEINTRESOURCEA(690));
	pfnAheadLib_Unnamed691 = GetAddress(MAKEINTRESOURCEA(691));
	pfnAheadLib_Unnamed700 = GetAddress(MAKEINTRESOURCEA(700));
	pfnAheadLib_CDefFolderMenu_Create2 = GetAddress("CDefFolderMenu_Create2");
	pfnAheadLib_Unnamed702 = GetAddress(MAKEINTRESOURCEA(702));
	pfnAheadLib_Unnamed703 = GetAddress(MAKEINTRESOURCEA(703));
	pfnAheadLib_Unnamed704 = GetAddress(MAKEINTRESOURCEA(704));
	pfnAheadLib_Unnamed707 = GetAddress(MAKEINTRESOURCEA(707));
	pfnAheadLib_Unnamed708 = GetAddress(MAKEINTRESOURCEA(708));
	pfnAheadLib_SHGetSetFolderCustomSettings = GetAddress("SHGetSetFolderCustomSettings");
	pfnAheadLib_Unnamed711 = GetAddress(MAKEINTRESOURCEA(711));
	pfnAheadLib_Unnamed712 = GetAddress(MAKEINTRESOURCEA(712));
	pfnAheadLib_Unnamed713 = GetAddress(MAKEINTRESOURCEA(713));
	pfnAheadLib_Unnamed714 = GetAddress(MAKEINTRESOURCEA(714));
	pfnAheadLib_Unnamed715 = GetAddress(MAKEINTRESOURCEA(715));
	pfnAheadLib_SHMultiFileProperties = GetAddress("SHMultiFileProperties");
	pfnAheadLib_Unnamed719 = GetAddress(MAKEINTRESOURCEA(719));
	pfnAheadLib_Unnamed720 = GetAddress(MAKEINTRESOURCEA(720));
	pfnAheadLib_Unnamed721 = GetAddress(MAKEINTRESOURCEA(721));
	pfnAheadLib_Unnamed722 = GetAddress(MAKEINTRESOURCEA(722));
	pfnAheadLib_Unnamed723 = GetAddress(MAKEINTRESOURCEA(723));
	pfnAheadLib_Unnamed724 = GetAddress(MAKEINTRESOURCEA(724));
	pfnAheadLib_Unnamed725 = GetAddress(MAKEINTRESOURCEA(725));
	pfnAheadLib_Unnamed726 = GetAddress(MAKEINTRESOURCEA(726));
	pfnAheadLib_SHGetImageList = GetAddress("SHGetImageList");
	pfnAheadLib_RestartDialogEx = GetAddress("RestartDialogEx");
	pfnAheadLib_Unnamed731 = GetAddress(MAKEINTRESOURCEA(731));
	pfnAheadLib_Unnamed732 = GetAddress(MAKEINTRESOURCEA(732));
	pfnAheadLib_Unnamed733 = GetAddress(MAKEINTRESOURCEA(733));
	pfnAheadLib_Unnamed740 = GetAddress(MAKEINTRESOURCEA(740));
	pfnAheadLib_SHCreateFileExtractIconW = GetAddress("SHCreateFileExtractIconW");
	pfnAheadLib_Unnamed744 = GetAddress(MAKEINTRESOURCEA(744));
	pfnAheadLib_Unnamed745 = GetAddress(MAKEINTRESOURCEA(745));
	pfnAheadLib_SHLimitInputEdit = GetAddress("SHLimitInputEdit");
	pfnAheadLib_Unnamed748 = GetAddress(MAKEINTRESOURCEA(748));
	pfnAheadLib_Unnamed749 = GetAddress(MAKEINTRESOURCEA(749));
	pfnAheadLib_SHGetAttributesFromDataObject = GetAddress("SHGetAttributesFromDataObject");
	pfnAheadLib_Unnamed751 = GetAddress(MAKEINTRESOURCEA(751));
	pfnAheadLib_Unnamed752 = GetAddress(MAKEINTRESOURCEA(752));
	pfnAheadLib_Unnamed753 = GetAddress(MAKEINTRESOURCEA(753));
	pfnAheadLib_Unnamed754 = GetAddress(MAKEINTRESOURCEA(754));
	pfnAheadLib_Unnamed755 = GetAddress(MAKEINTRESOURCEA(755));
	pfnAheadLib_Unnamed756 = GetAddress(MAKEINTRESOURCEA(756));
	pfnAheadLib_Unnamed757 = GetAddress(MAKEINTRESOURCEA(757));
	pfnAheadLib_Unnamed758 = GetAddress(MAKEINTRESOURCEA(758));
	pfnAheadLib_Unnamed759 = GetAddress(MAKEINTRESOURCEA(759));
	pfnAheadLib_Unnamed760 = GetAddress(MAKEINTRESOURCEA(760));
	pfnAheadLib_Unnamed761 = GetAddress(MAKEINTRESOURCEA(761));
	pfnAheadLib_Unnamed762 = GetAddress(MAKEINTRESOURCEA(762));
	pfnAheadLib_Unnamed763 = GetAddress(MAKEINTRESOURCEA(763));
	pfnAheadLib_Unnamed764 = GetAddress(MAKEINTRESOURCEA(764));
	pfnAheadLib_Unnamed765 = GetAddress(MAKEINTRESOURCEA(765));
	pfnAheadLib_Unnamed766 = GetAddress(MAKEINTRESOURCEA(766));
	pfnAheadLib_Unnamed767 = GetAddress(MAKEINTRESOURCEA(767));
	pfnAheadLib_Unnamed777 = GetAddress(MAKEINTRESOURCEA(777));
	pfnAheadLib_Unnamed778 = GetAddress(MAKEINTRESOURCEA(778));
	pfnAheadLib_Unnamed779 = GetAddress(MAKEINTRESOURCEA(779));
	pfnAheadLib_Unnamed781 = GetAddress(MAKEINTRESOURCEA(781));
	pfnAheadLib_Unnamed782 = GetAddress(MAKEINTRESOURCEA(782));
	pfnAheadLib_Unnamed786 = GetAddress(MAKEINTRESOURCEA(786));
	pfnAheadLib_Unnamed787 = GetAddress(MAKEINTRESOURCEA(787));
	pfnAheadLib_Unnamed788 = GetAddress(MAKEINTRESOURCEA(788));
	pfnAheadLib_Unnamed789 = GetAddress(MAKEINTRESOURCEA(789));
	pfnAheadLib_Unnamed790 = GetAddress(MAKEINTRESOURCEA(790));
	pfnAheadLib_Unnamed791 = GetAddress(MAKEINTRESOURCEA(791));
	pfnAheadLib_Unnamed792 = GetAddress(MAKEINTRESOURCEA(792));
	pfnAheadLib_Unnamed810 = GetAddress(MAKEINTRESOURCEA(810));
	pfnAheadLib_Unnamed811 = GetAddress(MAKEINTRESOURCEA(811));
	pfnAheadLib_Unnamed812 = GetAddress(MAKEINTRESOURCEA(812));
	pfnAheadLib_Unnamed813 = GetAddress(MAKEINTRESOURCEA(813));
	pfnAheadLib_Unnamed814 = GetAddress(MAKEINTRESOURCEA(814));
	pfnAheadLib_Unnamed815 = GetAddress(MAKEINTRESOURCEA(815));
	pfnAheadLib_Unnamed816 = GetAddress(MAKEINTRESOURCEA(816));
	pfnAheadLib_Unnamed817 = GetAddress(MAKEINTRESOURCEA(817));
	pfnAheadLib_Unnamed818 = GetAddress(MAKEINTRESOURCEA(818));
	pfnAheadLib_Unnamed819 = GetAddress(MAKEINTRESOURCEA(819));
	pfnAheadLib_Unnamed820 = GetAddress(MAKEINTRESOURCEA(820));
	pfnAheadLib_Unnamed821 = GetAddress(MAKEINTRESOURCEA(821));
	pfnAheadLib_Unnamed822 = GetAddress(MAKEINTRESOURCEA(822));
	pfnAheadLib_Unnamed823 = GetAddress(MAKEINTRESOURCEA(823));
	pfnAheadLib_Unnamed824 = GetAddress(MAKEINTRESOURCEA(824));
	pfnAheadLib_Unnamed825 = GetAddress(MAKEINTRESOURCEA(825));
	pfnAheadLib_Unnamed826 = GetAddress(MAKEINTRESOURCEA(826));
	pfnAheadLib_Unnamed827 = GetAddress(MAKEINTRESOURCEA(827));
	pfnAheadLib_Unnamed828 = GetAddress(MAKEINTRESOURCEA(828));
	pfnAheadLib_Unnamed829 = GetAddress(MAKEINTRESOURCEA(829));
	pfnAheadLib_Unnamed830 = GetAddress(MAKEINTRESOURCEA(830));
	pfnAheadLib_Unnamed831 = GetAddress(MAKEINTRESOURCEA(831));
	pfnAheadLib_Unnamed832 = GetAddress(MAKEINTRESOURCEA(832));
	pfnAheadLib_Unnamed833 = GetAddress(MAKEINTRESOURCEA(833));
	pfnAheadLib_Unnamed834 = GetAddress(MAKEINTRESOURCEA(834));
	pfnAheadLib_Unnamed835 = GetAddress(MAKEINTRESOURCEA(835));
	pfnAheadLib_Unnamed836 = GetAddress(MAKEINTRESOURCEA(836));
	pfnAheadLib_Unnamed837 = GetAddress(MAKEINTRESOURCEA(837));
	pfnAheadLib_Unnamed838 = GetAddress(MAKEINTRESOURCEA(838));
	pfnAheadLib_Unnamed839 = GetAddress(MAKEINTRESOURCEA(839));
	pfnAheadLib_Unnamed840 = GetAddress(MAKEINTRESOURCEA(840));
	pfnAheadLib_Unnamed841 = GetAddress(MAKEINTRESOURCEA(841));
	pfnAheadLib_Unnamed842 = GetAddress(MAKEINTRESOURCEA(842));
	pfnAheadLib_Unnamed843 = GetAddress(MAKEINTRESOURCEA(843));
	pfnAheadLib_Unnamed844 = GetAddress(MAKEINTRESOURCEA(844));
	pfnAheadLib_Unnamed845 = GetAddress(MAKEINTRESOURCEA(845));
	pfnAheadLib_ILLoadFromStreamEx = GetAddress("ILLoadFromStreamEx");
	pfnAheadLib_Unnamed847 = GetAddress(MAKEINTRESOURCEA(847));
	pfnAheadLib_Unnamed848 = GetAddress(MAKEINTRESOURCEA(848));
	pfnAheadLib_Unnamed849 = GetAddress(MAKEINTRESOURCEA(849));
	pfnAheadLib_Unnamed850 = GetAddress(MAKEINTRESOURCEA(850));
	pfnAheadLib_Unnamed851 = GetAddress(MAKEINTRESOURCEA(851));
	pfnAheadLib_Unnamed852 = GetAddress(MAKEINTRESOURCEA(852));
	pfnAheadLib_Unnamed853 = GetAddress(MAKEINTRESOURCEA(853));
	pfnAheadLib_Unnamed854 = GetAddress(MAKEINTRESOURCEA(854));
	pfnAheadLib_Unnamed856 = GetAddress(MAKEINTRESOURCEA(856));
	pfnAheadLib_Unnamed857 = GetAddress(MAKEINTRESOURCEA(857));
	pfnAheadLib_Unnamed858 = GetAddress(MAKEINTRESOURCEA(858));
	pfnAheadLib_Unnamed859 = GetAddress(MAKEINTRESOURCEA(859));
	pfnAheadLib_Unnamed860 = GetAddress(MAKEINTRESOURCEA(860));
	pfnAheadLib_Unnamed861 = GetAddress(MAKEINTRESOURCEA(861));
	pfnAheadLib_Unnamed862 = GetAddress(MAKEINTRESOURCEA(862));
	pfnAheadLib_Unnamed863 = GetAddress(MAKEINTRESOURCEA(863));
	pfnAheadLib_Unnamed864 = GetAddress(MAKEINTRESOURCEA(864));
	pfnAheadLib_Unnamed865 = GetAddress(MAKEINTRESOURCEA(865));
	pfnAheadLib_Unnamed866 = GetAddress(MAKEINTRESOURCEA(866));
	pfnAheadLib_Unnamed867 = GetAddress(MAKEINTRESOURCEA(867));
	pfnAheadLib_Unnamed868 = GetAddress(MAKEINTRESOURCEA(868));
	pfnAheadLib_Unnamed869 = GetAddress(MAKEINTRESOURCEA(869));
	pfnAheadLib_Unnamed870 = GetAddress(MAKEINTRESOURCEA(870));
	pfnAheadLib_Unnamed871 = GetAddress(MAKEINTRESOURCEA(871));
	pfnAheadLib_Unnamed872 = GetAddress(MAKEINTRESOURCEA(872));
	pfnAheadLib_Unnamed873 = GetAddress(MAKEINTRESOURCEA(873));
	pfnAheadLib_Unnamed874 = GetAddress(MAKEINTRESOURCEA(874));
	pfnAheadLib_Unnamed875 = GetAddress(MAKEINTRESOURCEA(875));
	pfnAheadLib_Unnamed876 = GetAddress(MAKEINTRESOURCEA(876));
	pfnAheadLib_Unnamed877 = GetAddress(MAKEINTRESOURCEA(877));
	pfnAheadLib_Unnamed878 = GetAddress(MAKEINTRESOURCEA(878));
	pfnAheadLib_Unnamed880 = GetAddress(MAKEINTRESOURCEA(880));
	pfnAheadLib_Unnamed881 = GetAddress(MAKEINTRESOURCEA(881));
	pfnAheadLib_Unnamed882 = GetAddress(MAKEINTRESOURCEA(882));
	pfnAheadLib_Unnamed883 = GetAddress(MAKEINTRESOURCEA(883));
	pfnAheadLib_Unnamed884 = GetAddress(MAKEINTRESOURCEA(884));
	pfnAheadLib_Unnamed885 = GetAddress(MAKEINTRESOURCEA(885));
	pfnAheadLib_Unnamed886 = GetAddress(MAKEINTRESOURCEA(886));
	pfnAheadLib_Unnamed887 = GetAddress(MAKEINTRESOURCEA(887));
	pfnAheadLib_Unnamed888 = GetAddress(MAKEINTRESOURCEA(888));
	pfnAheadLib_Unnamed889 = GetAddress(MAKEINTRESOURCEA(889));
	pfnAheadLib_Unnamed890 = GetAddress(MAKEINTRESOURCEA(890));
	pfnAheadLib_Unnamed891 = GetAddress(MAKEINTRESOURCEA(891));
	pfnAheadLib_Unnamed892 = GetAddress(MAKEINTRESOURCEA(892));
	pfnAheadLib_Unnamed893 = GetAddress(MAKEINTRESOURCEA(893));
	pfnAheadLib_Unnamed894 = GetAddress(MAKEINTRESOURCEA(894));
	pfnAheadLib_Unnamed895 = GetAddress(MAKEINTRESOURCEA(895));
	pfnAheadLib_Unnamed896 = GetAddress(MAKEINTRESOURCEA(896));
	pfnAheadLib_Unnamed897 = GetAddress(MAKEINTRESOURCEA(897));
	pfnAheadLib_Unnamed898 = GetAddress(MAKEINTRESOURCEA(898));
	pfnAheadLib_Unnamed899 = GetAddress(MAKEINTRESOURCEA(899));
	pfnAheadLib_Unnamed900 = GetAddress(MAKEINTRESOURCEA(900));
	pfnAheadLib_Unnamed901 = GetAddress(MAKEINTRESOURCEA(901));
	pfnAheadLib_Unnamed902 = GetAddress(MAKEINTRESOURCEA(902));
	pfnAheadLib_Unnamed903 = GetAddress(MAKEINTRESOURCEA(903));
	pfnAheadLib_Unnamed904 = GetAddress(MAKEINTRESOURCEA(904));
	pfnAheadLib_Unnamed905 = GetAddress(MAKEINTRESOURCEA(905));
	pfnAheadLib_Unnamed906 = GetAddress(MAKEINTRESOURCEA(906));
	pfnAheadLib_Unnamed907 = GetAddress(MAKEINTRESOURCEA(907));
	pfnAheadLib_Unnamed909 = GetAddress(MAKEINTRESOURCEA(909));
	pfnAheadLib_Unnamed910 = GetAddress(MAKEINTRESOURCEA(910));
	pfnAheadLib_Unnamed911 = GetAddress(MAKEINTRESOURCEA(911));
	pfnAheadLib_Unnamed912 = GetAddress(MAKEINTRESOURCEA(912));
	pfnAheadLib_Unnamed913 = GetAddress(MAKEINTRESOURCEA(913));
	pfnAheadLib_Unnamed914 = GetAddress(MAKEINTRESOURCEA(914));
	pfnAheadLib_Unnamed915 = GetAddress(MAKEINTRESOURCEA(915));
	pfnAheadLib_Unnamed916 = GetAddress(MAKEINTRESOURCEA(916));
	pfnAheadLib_GetSystemPersistedStorageItemList = GetAddress("GetSystemPersistedStorageItemList");
	pfnAheadLib_CreateStorageItemFromPath_PartialTrustCaller = GetAddress("CreateStorageItemFromPath_PartialTrustCaller");
	pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller = GetAddress("CreateStorageItemFromShellItem_FullTrustCaller");
	pfnAheadLib_Unnamed922 = GetAddress(MAKEINTRESOURCEA(922));
	pfnAheadLib_Unnamed923 = GetAddress(MAKEINTRESOURCEA(923));
	pfnAheadLib_Unnamed924 = GetAddress(MAKEINTRESOURCEA(924));
	pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage = GetAddress("CreateStorageItemFromShellItem_FullTrustCaller_ForPackage");
	pfnAheadLib_Unnamed927 = GetAddress(MAKEINTRESOURCEA(927));
	pfnAheadLib_Unnamed928 = GetAddress(MAKEINTRESOURCEA(928));
	pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle = GetAddress("CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle");
	pfnAheadLib_Unnamed930 = GetAddress(MAKEINTRESOURCEA(930));
	pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage = GetAddress("CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage");
	pfnAheadLib_Unnamed932 = GetAddress(MAKEINTRESOURCEA(932));
	pfnAheadLib_Unnamed933 = GetAddress(MAKEINTRESOURCEA(933));
	pfnAheadLib_CreateStorageItemFromPath_FullTrustCaller = GetAddress("CreateStorageItemFromPath_FullTrustCaller");
	pfnAheadLib_CreateStorageItemFromPath_FullTrustCaller_ForPackage = GetAddress("CreateStorageItemFromPath_FullTrustCaller_ForPackage");
	pfnAheadLib_CStorageItem_GetValidatedStorageItemObject = GetAddress("CStorageItem_GetValidatedStorageItemObject");
	pfnAheadLib_Unnamed938 = GetAddress(MAKEINTRESOURCEA(938));
	pfnAheadLib_Unnamed939 = GetAddress(MAKEINTRESOURCEA(939));
	pfnAheadLib_Unnamed940 = GetAddress(MAKEINTRESOURCEA(940));
	pfnAheadLib_IsProcessAnExplorer = GetAddress("IsProcessAnExplorer");
	pfnAheadLib_IsDesktopExplorerProcess = GetAddress("IsDesktopExplorerProcess");
	pfnAheadLib_Unnamed943 = GetAddress(MAKEINTRESOURCEA(943));
	pfnAheadLib_Unnamed944 = GetAddress(MAKEINTRESOURCEA(944));
	pfnAheadLib_Unnamed945 = GetAddress(MAKEINTRESOURCEA(945));
	pfnAheadLib_Unnamed946 = GetAddress(MAKEINTRESOURCEA(946));
	pfnAheadLib_Unnamed970 = GetAddress(MAKEINTRESOURCEA(970));
	pfnAheadLib_Unnamed971 = GetAddress(MAKEINTRESOURCEA(971));
	pfnAheadLib_Unnamed972 = GetAddress(MAKEINTRESOURCEA(972));
	pfnAheadLib_Unnamed2000 = GetAddress(MAKEINTRESOURCEA(2000));
	pfnAheadLib_Unnamed2001 = GetAddress(MAKEINTRESOURCEA(2001));
	return TRUE;
}

DWORD WINAPI ThreadProc(LPVOID lpThreadParameter)
{
	HANDLE hProcess;

	PVOID addr1 = reinterpret_cast<PVOID>(0x00401000);
	BYTE data1[] = { 0x90, 0x90, 0x90, 0x90 };

	//
	// 绕过VMP3.x 的内存保护
	//
	hProcess = OpenProcess(PROCESS_VM_OPERATION | PROCESS_VM_READ | PROCESS_VM_WRITE, FALSE, GetCurrentProcessId());
	if (hProcess)
	{
		WriteProcessMemory(hProcess, addr1, data1, sizeof(data1), NULL);

		CloseHandle(hProcess);
	}

	return 0;
}


EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotifyRegister(void)
{
	__asm jmp pfnAheadLib_SHChangeNotifyRegister;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHDefExtractIconA(void)
{
	__asm jmp pfnAheadLib_SHDefExtractIconA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotifyDeregister(void)
{
	__asm jmp pfnAheadLib_SHChangeNotifyDeregister;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed5(void)
{
	__asm jmp pfnAheadLib_Unnamed5;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHDefExtractIconW(void)
{
	__asm jmp pfnAheadLib_SHDefExtractIconW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed7(void)
{
	__asm jmp pfnAheadLib_Unnamed7;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed8(void)
{
	__asm jmp pfnAheadLib_Unnamed8;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PifMgr_OpenProperties(void)
{
	__asm jmp pfnAheadLib_PifMgr_OpenProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PifMgr_GetProperties(void)
{
	__asm jmp pfnAheadLib_PifMgr_GetProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PifMgr_SetProperties(void)
{
	__asm jmp pfnAheadLib_PifMgr_SetProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed12(void)
{
	__asm jmp pfnAheadLib_Unnamed12;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PifMgr_CloseProperties(void)
{
	__asm jmp pfnAheadLib_PifMgr_CloseProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHStartNetConnectionDialogW(void)
{
	__asm jmp pfnAheadLib_SHStartNetConnectionDialogW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed15(void)
{
	__asm jmp pfnAheadLib_Unnamed15;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILFindLastID(void)
{
	__asm jmp pfnAheadLib_ILFindLastID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILRemoveLastID(void)
{
	__asm jmp pfnAheadLib_ILRemoveLastID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILClone(void)
{
	__asm jmp pfnAheadLib_ILClone;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILCloneFirst(void)
{
	__asm jmp pfnAheadLib_ILCloneFirst;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed20(void)
{
	__asm jmp pfnAheadLib_Unnamed20;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILIsEqual(void)
{
	__asm jmp pfnAheadLib_ILIsEqual;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_DragEnterEx2(void)
{
	__asm jmp pfnAheadLib_DAD_DragEnterEx2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILIsParent(void)
{
	__asm jmp pfnAheadLib_ILIsParent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILFindChild(void)
{
	__asm jmp pfnAheadLib_ILFindChild;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILCombine(void)
{
	__asm jmp pfnAheadLib_ILCombine;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed26(void)
{
	__asm jmp pfnAheadLib_Unnamed26;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILSaveToStream(void)
{
	__asm jmp pfnAheadLib_ILSaveToStream;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHILCreateFromPath(void)
{
	__asm jmp pfnAheadLib_SHILCreateFromPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed29(void)
{
	__asm jmp pfnAheadLib_Unnamed29;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed30(void)
{
	__asm jmp pfnAheadLib_Unnamed30;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed31(void)
{
	__asm jmp pfnAheadLib_Unnamed31;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed32(void)
{
	__asm jmp pfnAheadLib_Unnamed32;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed33(void)
{
	__asm jmp pfnAheadLib_Unnamed33;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed34(void)
{
	__asm jmp pfnAheadLib_Unnamed34;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed35(void)
{
	__asm jmp pfnAheadLib_Unnamed35;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed36(void)
{
	__asm jmp pfnAheadLib_Unnamed36;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed37(void)
{
	__asm jmp pfnAheadLib_Unnamed37;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed38(void)
{
	__asm jmp pfnAheadLib_Unnamed38;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed39(void)
{
	__asm jmp pfnAheadLib_Unnamed39;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed40(void)
{
	__asm jmp pfnAheadLib_Unnamed40;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsLFNDriveA(void)
{
	__asm jmp pfnAheadLib_IsLFNDriveA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsLFNDriveW(void)
{
	__asm jmp pfnAheadLib_IsLFNDriveW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathIsExe(void)
{
	__asm jmp pfnAheadLib_PathIsExe;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed44(void)
{
	__asm jmp pfnAheadLib_Unnamed44;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed45(void)
{
	__asm jmp pfnAheadLib_Unnamed45;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed46(void)
{
	__asm jmp pfnAheadLib_Unnamed46;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathMakeUniqueName(void)
{
	__asm jmp pfnAheadLib_PathMakeUniqueName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed48(void)
{
	__asm jmp pfnAheadLib_Unnamed48;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathQualify(void)
{
	__asm jmp pfnAheadLib_PathQualify;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed50(void)
{
	__asm jmp pfnAheadLib_Unnamed50;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathResolve(void)
{
	__asm jmp pfnAheadLib_PathResolve;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed52(void)
{
	__asm jmp pfnAheadLib_Unnamed52;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed53(void)
{
	__asm jmp pfnAheadLib_Unnamed53;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed54(void)
{
	__asm jmp pfnAheadLib_Unnamed54;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed55(void)
{
	__asm jmp pfnAheadLib_Unnamed55;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed56(void)
{
	__asm jmp pfnAheadLib_Unnamed56;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed57(void)
{
	__asm jmp pfnAheadLib_Unnamed57;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed58(void)
{
	__asm jmp pfnAheadLib_Unnamed58;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RestartDialog(void)
{
	__asm jmp pfnAheadLib_RestartDialog;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed60(void)
{
	__asm jmp pfnAheadLib_Unnamed60;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed61(void)
{
	__asm jmp pfnAheadLib_Unnamed61;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PickIconDlg(void)
{
	__asm jmp pfnAheadLib_PickIconDlg;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetFileNameFromBrowse(void)
{
	__asm jmp pfnAheadLib_GetFileNameFromBrowse;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DriveType(void)
{
	__asm jmp pfnAheadLib_DriveType;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed65(void)
{
	__asm jmp pfnAheadLib_Unnamed65;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsNetDrive(void)
{
	__asm jmp pfnAheadLib_IsNetDrive;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_MergeMenus(void)
{
	__asm jmp pfnAheadLib_Shell_MergeMenus;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetSetSettings(void)
{
	__asm jmp pfnAheadLib_SHGetSetSettings;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed69(void)
{
	__asm jmp pfnAheadLib_Unnamed69;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed70(void)
{
	__asm jmp pfnAheadLib_Unnamed70;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_GetImageLists(void)
{
	__asm jmp pfnAheadLib_Shell_GetImageLists;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_GetCachedImageIndex(void)
{
	__asm jmp pfnAheadLib_Shell_GetCachedImageIndex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHShellFolderView_Message(void)
{
	__asm jmp pfnAheadLib_SHShellFolderView_Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateStdEnumFmtEtc(void)
{
	__asm jmp pfnAheadLib_SHCreateStdEnumFmtEtc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathYetAnotherMakeUniqueName(void)
{
	__asm jmp pfnAheadLib_PathYetAnotherMakeUniqueName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed76(void)
{
	__asm jmp pfnAheadLib_Unnamed76;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHMapPIDLToSystemImageListIndex(void)
{
	__asm jmp pfnAheadLib_SHMapPIDLToSystemImageListIndex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed78(void)
{
	__asm jmp pfnAheadLib_Unnamed78;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed79(void)
{
	__asm jmp pfnAheadLib_Unnamed79;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHOpenPropSheetW(void)
{
	__asm jmp pfnAheadLib_SHOpenPropSheetW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_OpenAs_RunDLL(void)
{
	__asm jmp pfnAheadLib_OpenAs_RunDLL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed82(void)
{
	__asm jmp pfnAheadLib_Unnamed82;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CIDLData_CreateFromIDArray(void)
{
	__asm jmp pfnAheadLib_CIDLData_CreateFromIDArray;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed84(void)
{
	__asm jmp pfnAheadLib_Unnamed84;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_OpenRegStream(void)
{
	__asm jmp pfnAheadLib_OpenRegStream;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed86(void)
{
	__asm jmp pfnAheadLib_Unnamed86;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed87(void)
{
	__asm jmp pfnAheadLib_Unnamed87;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHDoDragDrop(void)
{
	__asm jmp pfnAheadLib_SHDoDragDrop;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCloneSpecialIDList(void)
{
	__asm jmp pfnAheadLib_SHCloneSpecialIDList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFindFiles(void)
{
	__asm jmp pfnAheadLib_SHFindFiles;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed91(void)
{
	__asm jmp pfnAheadLib_Unnamed91;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathGetShortPath(void)
{
	__asm jmp pfnAheadLib_PathGetShortPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed93(void)
{
	__asm jmp pfnAheadLib_Unnamed93;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed94(void)
{
	__asm jmp pfnAheadLib_Unnamed94;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed95(void)
{
	__asm jmp pfnAheadLib_Unnamed95;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed96(void)
{
	__asm jmp pfnAheadLib_Unnamed96;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed97(void)
{
	__asm jmp pfnAheadLib_Unnamed97;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetRealIDL(void)
{
	__asm jmp pfnAheadLib_SHGetRealIDL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed99(void)
{
	__asm jmp pfnAheadLib_Unnamed99;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHRestricted(void)
{
	__asm jmp pfnAheadLib_SHRestricted;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed101(void)
{
	__asm jmp pfnAheadLib_Unnamed101;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCoCreateInstance(void)
{
	__asm jmp pfnAheadLib_SHCoCreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SignalFileOpen(void)
{
	__asm jmp pfnAheadLib_SignalFileOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed104(void)
{
	__asm jmp pfnAheadLib_Unnamed104;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed105(void)
{
	__asm jmp pfnAheadLib_Unnamed105;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed106(void)
{
	__asm jmp pfnAheadLib_Unnamed106;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed107(void)
{
	__asm jmp pfnAheadLib_Unnamed107;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed108(void)
{
	__asm jmp pfnAheadLib_Unnamed108;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed109(void)
{
	__asm jmp pfnAheadLib_Unnamed109;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed110(void)
{
	__asm jmp pfnAheadLib_Unnamed110;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed111(void)
{
	__asm jmp pfnAheadLib_Unnamed111;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed112(void)
{
	__asm jmp pfnAheadLib_Unnamed112;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed113(void)
{
	__asm jmp pfnAheadLib_Unnamed113;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed114(void)
{
	__asm jmp pfnAheadLib_Unnamed114;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed115(void)
{
	__asm jmp pfnAheadLib_Unnamed115;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed116(void)
{
	__asm jmp pfnAheadLib_Unnamed116;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed117(void)
{
	__asm jmp pfnAheadLib_Unnamed117;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed118(void)
{
	__asm jmp pfnAheadLib_Unnamed118;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsLFNDrive(void)
{
	__asm jmp pfnAheadLib_IsLFNDrive;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed120(void)
{
	__asm jmp pfnAheadLib_Unnamed120;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed121(void)
{
	__asm jmp pfnAheadLib_Unnamed121;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed122(void)
{
	__asm jmp pfnAheadLib_Unnamed122;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed123(void)
{
	__asm jmp pfnAheadLib_Unnamed123;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed124(void)
{
	__asm jmp pfnAheadLib_Unnamed124;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_OpenAs_RunDLLA(void)
{
	__asm jmp pfnAheadLib_OpenAs_RunDLLA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed126(void)
{
	__asm jmp pfnAheadLib_Unnamed126;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed127(void)
{
	__asm jmp pfnAheadLib_Unnamed127;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed128(void)
{
	__asm jmp pfnAheadLib_Unnamed128;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_AutoScroll(void)
{
	__asm jmp pfnAheadLib_DAD_AutoScroll;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed130(void)
{
	__asm jmp pfnAheadLib_Unnamed130;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_DragEnterEx(void)
{
	__asm jmp pfnAheadLib_DAD_DragEnterEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_DragLeave(void)
{
	__asm jmp pfnAheadLib_DAD_DragLeave;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_OpenAs_RunDLLW(void)
{
	__asm jmp pfnAheadLib_OpenAs_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_DragMove(void)
{
	__asm jmp pfnAheadLib_DAD_DragMove;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PrepareDiscForBurnRunDllW(void)
{
	__asm jmp pfnAheadLib_PrepareDiscForBurnRunDllW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_SetDragImage(void)
{
	__asm jmp pfnAheadLib_DAD_SetDragImage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DAD_ShowDragImage(void)
{
	__asm jmp pfnAheadLib_DAD_ShowDragImage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PrintersGetCommand_RunDLL(void)
{
	__asm jmp pfnAheadLib_PrintersGetCommand_RunDLL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PrintersGetCommand_RunDLLA(void)
{
	__asm jmp pfnAheadLib_PrintersGetCommand_RunDLLA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed140(void)
{
	__asm jmp pfnAheadLib_Unnamed140;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed141(void)
{
	__asm jmp pfnAheadLib_Unnamed141;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed142(void)
{
	__asm jmp pfnAheadLib_Unnamed142;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed143(void)
{
	__asm jmp pfnAheadLib_Unnamed143;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed144(void)
{
	__asm jmp pfnAheadLib_Unnamed144;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed145(void)
{
	__asm jmp pfnAheadLib_Unnamed145;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed146(void)
{
	__asm jmp pfnAheadLib_Unnamed146;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCLSIDFromString(void)
{
	__asm jmp pfnAheadLib_SHCLSIDFromString;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed148(void)
{
	__asm jmp pfnAheadLib_Unnamed148;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFind_InitMenuPopup(void)
{
	__asm jmp pfnAheadLib_SHFind_InitMenuPopup;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PrintersGetCommand_RunDLLW(void)
{
	__asm jmp pfnAheadLib_PrintersGetCommand_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed151(void)
{
	__asm jmp pfnAheadLib_Unnamed151;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILGetSize(void)
{
	__asm jmp pfnAheadLib_ILGetSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILGetNext(void)
{
	__asm jmp pfnAheadLib_ILGetNext;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILAppendID(void)
{
	__asm jmp pfnAheadLib_ILAppendID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILFree(void)
{
	__asm jmp pfnAheadLib_ILFree;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed156(void)
{
	__asm jmp pfnAheadLib_Unnamed156;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILCreateFromPath(void)
{
	__asm jmp pfnAheadLib_ILCreateFromPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed158(void)
{
	__asm jmp pfnAheadLib_Unnamed158;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed159(void)
{
	__asm jmp pfnAheadLib_Unnamed159;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed160(void)
{
	__asm jmp pfnAheadLib_Unnamed160;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed161(void)
{
	__asm jmp pfnAheadLib_Unnamed161;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSimpleIDListFromPath(void)
{
	__asm jmp pfnAheadLib_SHSimpleIDListFromPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed163(void)
{
	__asm jmp pfnAheadLib_Unnamed163;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Win32DeleteFile(void)
{
	__asm jmp pfnAheadLib_Win32DeleteFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDirectory(void)
{
	__asm jmp pfnAheadLib_SHCreateDirectory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed166(void)
{
	__asm jmp pfnAheadLib_Unnamed166;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAddFromPropSheetExtArray(void)
{
	__asm jmp pfnAheadLib_SHAddFromPropSheetExtArray;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreatePropSheetExtArray(void)
{
	__asm jmp pfnAheadLib_SHCreatePropSheetExtArray;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHDestroyPropSheetExtArray(void)
{
	__asm jmp pfnAheadLib_SHDestroyPropSheetExtArray;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHReplaceFromPropSheetExtArray(void)
{
	__asm jmp pfnAheadLib_SHReplaceFromPropSheetExtArray;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathCleanupSpec(void)
{
	__asm jmp pfnAheadLib_PathCleanupSpec;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed172(void)
{
	__asm jmp pfnAheadLib_Unnamed172;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHValidateUNC(void)
{
	__asm jmp pfnAheadLib_SHValidateUNC;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellFolderViewEx(void)
{
	__asm jmp pfnAheadLib_SHCreateShellFolderViewEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed175(void)
{
	__asm jmp pfnAheadLib_Unnamed175;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetInstanceExplorer(void)
{
	__asm jmp pfnAheadLib_SHSetInstanceExplorer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed177(void)
{
	__asm jmp pfnAheadLib_Unnamed177;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHObjectProperties(void)
{
	__asm jmp pfnAheadLib_SHObjectProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetNewLinkInfoA(void)
{
	__asm jmp pfnAheadLib_SHGetNewLinkInfoA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetNewLinkInfoW(void)
{
	__asm jmp pfnAheadLib_SHGetNewLinkInfoW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed181(void)
{
	__asm jmp pfnAheadLib_Unnamed181;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellMessageBoxW(void)
{
	__asm jmp pfnAheadLib_ShellMessageBoxW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellMessageBoxA(void)
{
	__asm jmp pfnAheadLib_ShellMessageBoxA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed184(void)
{
	__asm jmp pfnAheadLib_Unnamed184;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed185(void)
{
	__asm jmp pfnAheadLib_Unnamed185;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed186(void)
{
	__asm jmp pfnAheadLib_Unnamed186;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed187(void)
{
	__asm jmp pfnAheadLib_Unnamed187;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed188(void)
{
	__asm jmp pfnAheadLib_Unnamed188;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILCreateFromPathA(void)
{
	__asm jmp pfnAheadLib_ILCreateFromPathA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILCreateFromPathW(void)
{
	__asm jmp pfnAheadLib_ILCreateFromPathW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHUpdateImageA(void)
{
	__asm jmp pfnAheadLib_SHUpdateImageA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHUpdateImageW(void)
{
	__asm jmp pfnAheadLib_SHUpdateImageW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHHandleUpdateImage(void)
{
	__asm jmp pfnAheadLib_SHHandleUpdateImage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed194(void)
{
	__asm jmp pfnAheadLib_Unnamed194;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFree(void)
{
	__asm jmp pfnAheadLib_SHFree;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAlloc(void)
{
	__asm jmp pfnAheadLib_SHAlloc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed197(void)
{
	__asm jmp pfnAheadLib_Unnamed197;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed198(void)
{
	__asm jmp pfnAheadLib_Unnamed198;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RealShellExecuteA(void)
{
	__asm jmp pfnAheadLib_RealShellExecuteA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed200(void)
{
	__asm jmp pfnAheadLib_Unnamed200;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed201(void)
{
	__asm jmp pfnAheadLib_Unnamed201;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed202(void)
{
	__asm jmp pfnAheadLib_Unnamed202;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed203(void)
{
	__asm jmp pfnAheadLib_Unnamed203;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed204(void)
{
	__asm jmp pfnAheadLib_Unnamed204;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed205(void)
{
	__asm jmp pfnAheadLib_Unnamed205;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed206(void)
{
	__asm jmp pfnAheadLib_Unnamed206;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RealShellExecuteExA(void)
{
	__asm jmp pfnAheadLib_RealShellExecuteExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RealShellExecuteExW(void)
{
	__asm jmp pfnAheadLib_RealShellExecuteExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed209(void)
{
	__asm jmp pfnAheadLib_Unnamed209;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed210(void)
{
	__asm jmp pfnAheadLib_Unnamed210;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed211(void)
{
	__asm jmp pfnAheadLib_Unnamed211;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed212(void)
{
	__asm jmp pfnAheadLib_Unnamed212;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed213(void)
{
	__asm jmp pfnAheadLib_Unnamed213;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed214(void)
{
	__asm jmp pfnAheadLib_Unnamed214;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed215(void)
{
	__asm jmp pfnAheadLib_Unnamed215;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed216(void)
{
	__asm jmp pfnAheadLib_Unnamed216;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed217(void)
{
	__asm jmp pfnAheadLib_Unnamed217;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed218(void)
{
	__asm jmp pfnAheadLib_Unnamed218;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed219(void)
{
	__asm jmp pfnAheadLib_Unnamed219;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed220(void)
{
	__asm jmp pfnAheadLib_Unnamed220;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed221(void)
{
	__asm jmp pfnAheadLib_Unnamed221;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed222(void)
{
	__asm jmp pfnAheadLib_Unnamed222;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed223(void)
{
	__asm jmp pfnAheadLib_Unnamed223;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed224(void)
{
	__asm jmp pfnAheadLib_Unnamed224;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed225(void)
{
	__asm jmp pfnAheadLib_Unnamed225;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RealShellExecuteW(void)
{
	__asm jmp pfnAheadLib_RealShellExecuteW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed227(void)
{
	__asm jmp pfnAheadLib_Unnamed227;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHHelpShortcuts_RunDLL(void)
{
	__asm jmp pfnAheadLib_SHHelpShortcuts_RunDLL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHHelpShortcuts_RunDLLA(void)
{
	__asm jmp pfnAheadLib_SHHelpShortcuts_RunDLLA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed230(void)
{
	__asm jmp pfnAheadLib_Unnamed230;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetFolderPathA(void)
{
	__asm jmp pfnAheadLib_SHSetFolderPathA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetFolderPathW(void)
{
	__asm jmp pfnAheadLib_SHSetFolderPathW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed233(void)
{
	__asm jmp pfnAheadLib_Unnamed233;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed234(void)
{
	__asm jmp pfnAheadLib_Unnamed234;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed235(void)
{
	__asm jmp pfnAheadLib_Unnamed235;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed236(void)
{
	__asm jmp pfnAheadLib_Unnamed236;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed237(void)
{
	__asm jmp pfnAheadLib_Unnamed237;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHHelpShortcuts_RunDLLW(void)
{
	__asm jmp pfnAheadLib_SHHelpShortcuts_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathIsSlowW(void)
{
	__asm jmp pfnAheadLib_PathIsSlowW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PathIsSlowA(void)
{
	__asm jmp pfnAheadLib_PathIsSlowA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed241(void)
{
	__asm jmp pfnAheadLib_Unnamed241;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed242(void)
{
	__asm jmp pfnAheadLib_Unnamed242;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed243(void)
{
	__asm jmp pfnAheadLib_Unnamed243;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed244(void)
{
	__asm jmp pfnAheadLib_Unnamed244;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHTestTokenMembership(void)
{
	__asm jmp pfnAheadLib_SHTestTokenMembership;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed246(void)
{
	__asm jmp pfnAheadLib_Unnamed246;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed247(void)
{
	__asm jmp pfnAheadLib_Unnamed247;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed248(void)
{
	__asm jmp pfnAheadLib_Unnamed248;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed249(void)
{
	__asm jmp pfnAheadLib_Unnamed249;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed250(void)
{
	__asm jmp pfnAheadLib_Unnamed250;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed251(void)
{
	__asm jmp pfnAheadLib_Unnamed251;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed252(void)
{
	__asm jmp pfnAheadLib_Unnamed252;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed253(void)
{
	__asm jmp pfnAheadLib_Unnamed253;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed254(void)
{
	__asm jmp pfnAheadLib_Unnamed254;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_AppCompat_RunDLLW(void)
{
	__asm jmp pfnAheadLib_AppCompat_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellFolderView(void)
{
	__asm jmp pfnAheadLib_SHCreateShellFolderView;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed257(void)
{
	__asm jmp pfnAheadLib_Unnamed257;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed258(void)
{
	__asm jmp pfnAheadLib_Unnamed258;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed259(void)
{
	__asm jmp pfnAheadLib_Unnamed259;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed260(void)
{
	__asm jmp pfnAheadLib_Unnamed260;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed261(void)
{
	__asm jmp pfnAheadLib_Unnamed261;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed262(void)
{
	__asm jmp pfnAheadLib_Unnamed262;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_AssocCreateForClasses(void)
{
	__asm jmp pfnAheadLib_AssocCreateForClasses;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed264(void)
{
	__asm jmp pfnAheadLib_Unnamed264;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed265(void)
{
	__asm jmp pfnAheadLib_Unnamed265;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed266(void)
{
	__asm jmp pfnAheadLib_Unnamed266;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_AssocElemCreateForKey(void)
{
	__asm jmp pfnAheadLib_AssocElemCreateForKey;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_AssocGetDetailsOfPropKey(void)
{
	__asm jmp pfnAheadLib_AssocGetDetailsOfPropKey;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CallFileCopyHook(void)
{
	__asm jmp pfnAheadLib_CallFileCopyHook;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed270(void)
{
	__asm jmp pfnAheadLib_Unnamed270;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed271(void)
{
	__asm jmp pfnAheadLib_Unnamed271;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CheckEscapesW(void)
{
	__asm jmp pfnAheadLib_CheckEscapesW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CommandLineToArgvW(void)
{
	__asm jmp pfnAheadLib_CommandLineToArgvW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Control_RunDLL(void)
{
	__asm jmp pfnAheadLib_Control_RunDLL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Control_RunDLLA(void)
{
	__asm jmp pfnAheadLib_Control_RunDLLA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Control_RunDLLAsUserW(void)
{
	__asm jmp pfnAheadLib_Control_RunDLLAsUserW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Control_RunDLLW(void)
{
	__asm jmp pfnAheadLib_Control_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllCanUnloadNow(void)
{
	__asm jmp pfnAheadLib_DllCanUnloadNow;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetActivationFactory(void)
{
	__asm jmp pfnAheadLib_DllGetActivationFactory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetClassObject(void)
{
	__asm jmp pfnAheadLib_DllGetClassObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetVersion(void)
{
	__asm jmp pfnAheadLib_DllGetVersion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllInstall(void)
{
	__asm jmp pfnAheadLib_DllInstall;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllRegisterServer(void)
{
	__asm jmp pfnAheadLib_DllRegisterServer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllUnregisterServer(void)
{
	__asm jmp pfnAheadLib_DllUnregisterServer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DoEnvironmentSubstA(void)
{
	__asm jmp pfnAheadLib_DoEnvironmentSubstA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DoEnvironmentSubstW(void)
{
	__asm jmp pfnAheadLib_DoEnvironmentSubstW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragAcceptFiles(void)
{
	__asm jmp pfnAheadLib_DragAcceptFiles;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragFinish(void)
{
	__asm jmp pfnAheadLib_DragFinish;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragQueryFile(void)
{
	__asm jmp pfnAheadLib_DragQueryFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragQueryFileA(void)
{
	__asm jmp pfnAheadLib_DragQueryFileA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragQueryFileAorW(void)
{
	__asm jmp pfnAheadLib_DragQueryFileAorW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragQueryFileW(void)
{
	__asm jmp pfnAheadLib_DragQueryFileW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DragQueryPoint(void)
{
	__asm jmp pfnAheadLib_DragQueryPoint;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DuplicateIcon(void)
{
	__asm jmp pfnAheadLib_DuplicateIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractAssociatedIconA(void)
{
	__asm jmp pfnAheadLib_ExtractAssociatedIconA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractAssociatedIconExA(void)
{
	__asm jmp pfnAheadLib_ExtractAssociatedIconExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractAssociatedIconExW(void)
{
	__asm jmp pfnAheadLib_ExtractAssociatedIconExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractAssociatedIconW(void)
{
	__asm jmp pfnAheadLib_ExtractAssociatedIconW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractIconA(void)
{
	__asm jmp pfnAheadLib_ExtractIconA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractIconEx(void)
{
	__asm jmp pfnAheadLib_ExtractIconEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractIconExA(void)
{
	__asm jmp pfnAheadLib_ExtractIconExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractIconExW(void)
{
	__asm jmp pfnAheadLib_ExtractIconExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ExtractIconW(void)
{
	__asm jmp pfnAheadLib_ExtractIconW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_FindExecutableA(void)
{
	__asm jmp pfnAheadLib_FindExecutableA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_FindExecutableW(void)
{
	__asm jmp pfnAheadLib_FindExecutableW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_FreeIconList(void)
{
	__asm jmp pfnAheadLib_FreeIconList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetCurrentProcessExplicitAppUserModelID(void)
{
	__asm jmp pfnAheadLib_GetCurrentProcessExplicitAppUserModelID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_InitNetworkAddressControl(void)
{
	__asm jmp pfnAheadLib_InitNetworkAddressControl;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_InternalExtractIconListA(void)
{
	__asm jmp pfnAheadLib_InternalExtractIconListA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_InternalExtractIconListW(void)
{
	__asm jmp pfnAheadLib_InternalExtractIconListW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_LaunchMSHelp_RunDLLW(void)
{
	__asm jmp pfnAheadLib_LaunchMSHelp_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Options_RunDLL(void)
{
	__asm jmp pfnAheadLib_Options_RunDLL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Options_RunDLLA(void)
{
	__asm jmp pfnAheadLib_Options_RunDLLA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Options_RunDLLW(void)
{
	__asm jmp pfnAheadLib_Options_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RegenerateUserEnvironment(void)
{
	__asm jmp pfnAheadLib_RegenerateUserEnvironment;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RunAsNewUser_RunDLLW(void)
{
	__asm jmp pfnAheadLib_RunAsNewUser_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAddDefaultPropertiesByExt(void)
{
	__asm jmp pfnAheadLib_SHAddDefaultPropertiesByExt;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAddToRecentDocs(void)
{
	__asm jmp pfnAheadLib_SHAddToRecentDocs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAppBarMessage(void)
{
	__asm jmp pfnAheadLib_SHAppBarMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAssocEnumHandlers(void)
{
	__asm jmp pfnAheadLib_SHAssocEnumHandlers;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHAssocEnumHandlersForProtocolByApplication(void)
{
	__asm jmp pfnAheadLib_SHAssocEnumHandlersForProtocolByApplication;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBindToFolderIDListParent(void)
{
	__asm jmp pfnAheadLib_SHBindToFolderIDListParent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBindToFolderIDListParentEx(void)
{
	__asm jmp pfnAheadLib_SHBindToFolderIDListParentEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBindToObject(void)
{
	__asm jmp pfnAheadLib_SHBindToObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBindToParent(void)
{
	__asm jmp pfnAheadLib_SHBindToParent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBrowseForFolder(void)
{
	__asm jmp pfnAheadLib_SHBrowseForFolder;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBrowseForFolderA(void)
{
	__asm jmp pfnAheadLib_SHBrowseForFolderA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHBrowseForFolderW(void)
{
	__asm jmp pfnAheadLib_SHBrowseForFolderW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotify(void)
{
	__asm jmp pfnAheadLib_SHChangeNotify;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotifyRegisterThread(void)
{
	__asm jmp pfnAheadLib_SHChangeNotifyRegisterThread;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotifySuspendResume(void)
{
	__asm jmp pfnAheadLib_SHChangeNotifySuspendResume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCoCreateInstanceWorker(void)
{
	__asm jmp pfnAheadLib_SHCoCreateInstanceWorker;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateAssociationRegistration(void)
{
	__asm jmp pfnAheadLib_SHCreateAssociationRegistration;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateCategoryEnum(void)
{
	__asm jmp pfnAheadLib_SHCreateCategoryEnum;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDataObject(void)
{
	__asm jmp pfnAheadLib_SHCreateDataObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDefaultContextMenu(void)
{
	__asm jmp pfnAheadLib_SHCreateDefaultContextMenu;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDefaultExtractIcon(void)
{
	__asm jmp pfnAheadLib_SHCreateDefaultExtractIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDefaultPropertiesOp(void)
{
	__asm jmp pfnAheadLib_SHCreateDefaultPropertiesOp;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDirectoryExA(void)
{
	__asm jmp pfnAheadLib_SHCreateDirectoryExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDirectoryExW(void)
{
	__asm jmp pfnAheadLib_SHCreateDirectoryExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateDrvExtIcon(void)
{
	__asm jmp pfnAheadLib_SHCreateDrvExtIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateItemFromIDList(void)
{
	__asm jmp pfnAheadLib_SHCreateItemFromIDList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateItemFromParsingName(void)
{
	__asm jmp pfnAheadLib_SHCreateItemFromParsingName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateItemFromRelativeName(void)
{
	__asm jmp pfnAheadLib_SHCreateItemFromRelativeName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateItemInKnownFolder(void)
{
	__asm jmp pfnAheadLib_SHCreateItemInKnownFolder;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateItemWithParent(void)
{
	__asm jmp pfnAheadLib_SHCreateItemWithParent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateLocalServerRunDll(void)
{
	__asm jmp pfnAheadLib_SHCreateLocalServerRunDll;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateProcessAsUserW(void)
{
	__asm jmp pfnAheadLib_SHCreateProcessAsUserW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateQueryCancelAutoPlayMoniker(void)
{
	__asm jmp pfnAheadLib_SHCreateQueryCancelAutoPlayMoniker;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellItem(void)
{
	__asm jmp pfnAheadLib_SHCreateShellItem;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellItemArray(void)
{
	__asm jmp pfnAheadLib_SHCreateShellItemArray;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellItemArrayFromDataObject(void)
{
	__asm jmp pfnAheadLib_SHCreateShellItemArrayFromDataObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellItemArrayFromIDLists(void)
{
	__asm jmp pfnAheadLib_SHCreateShellItemArrayFromIDLists;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateShellItemArrayFromShellItem(void)
{
	__asm jmp pfnAheadLib_SHCreateShellItemArrayFromShellItem;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_AddToBackIconTable(void)
{
	__asm jmp pfnAheadLib_SHELL32_AddToBackIconTable;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_AddToFrontIconTable(void)
{
	__asm jmp pfnAheadLib_SHELL32_AddToFrontIconTable;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_AreAllItemsAvailable(void)
{
	__asm jmp pfnAheadLib_SHELL32_AreAllItemsAvailable;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CCommonPlacesFolder_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CCommonPlacesFolder_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_CloseSession(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_CloseSession;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_DriveSupportedForDataBurn(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_DriveSupportedForDataBurn;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_Erase(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_Erase;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_GetCDInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_GetCDInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_GetLiveFSDiscInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_GetLiveFSDiscInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_GetStagingPathOrNormalPath(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_GetStagingPathOrNormalPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_GetTaskInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_GetTaskInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_IsBlankDisc2(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_IsBlankDisc2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_IsBlankDisc(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_IsBlankDisc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_IsLiveFS(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_IsLiveFS;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_OnDeviceChange(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_OnDeviceChange;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_OnEject(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_OnEject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDBurn_OnMediaChange(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDBurn_OnMediaChange;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDefFolderMenu_Create2(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDefFolderMenu_Create2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDefFolderMenu_Create2Ex(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDefFolderMenu_Create2Ex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDefFolderMenu_MergeMenu(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDefFolderMenu_MergeMenu;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDrivesContextMenu_Create(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDrivesContextMenu_Create;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDrivesDropTarget_Create(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDrivesDropTarget_Create;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CDrives_CreateSFVCB(void)
{
	__asm jmp pfnAheadLib_SHELL32_CDrives_CreateSFVCB;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CFSDropTarget_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CFSDropTarget_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CFSFolderCallback_Create(void)
{
	__asm jmp pfnAheadLib_SHELL32_CFSFolderCallback_Create;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CFillPropertiesTask_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CFillPropertiesTask_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CLibraryDropTarget_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CLibraryDropTarget_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CLocationContextMenu_Create(void)
{
	__asm jmp pfnAheadLib_SHELL32_CLocationContextMenu_Create;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CLocationFolderUI_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CLocationFolderUI_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CMountPoint_DoAutorun(void)
{
	__asm jmp pfnAheadLib_SHELL32_CMountPoint_DoAutorun;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CMountPoint_DoAutorunPrompt(void)
{
	__asm jmp pfnAheadLib_SHELL32_CMountPoint_DoAutorunPrompt;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy(void)
{
	__asm jmp pfnAheadLib_SHELL32_CMountPoint_IsAutoRunDriveAndEnabledByPolicy;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CMountPoint_ProcessAutoRunFile(void)
{
	__asm jmp pfnAheadLib_SHELL32_CMountPoint_ProcessAutoRunFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CMountPoint_WantAutorunUI(void)
{
	__asm jmp pfnAheadLib_SHELL32_CMountPoint_WantAutorunUI;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CMountPoint_WantAutorunUIGetReady(void)
{
	__asm jmp pfnAheadLib_SHELL32_CMountPoint_WantAutorunUIGetReady;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CNetFolderUI_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CNetFolderUI_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CPL_CategoryIdArrayFromVariant(void)
{
	__asm jmp pfnAheadLib_SHELL32_CPL_CategoryIdArrayFromVariant;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey(void)
{
	__asm jmp pfnAheadLib_SHELL32_CPL_IsLegacyCanonicalNameListedUnderKey;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CPL_ModifyWowDisplayName(void)
{
	__asm jmp pfnAheadLib_SHELL32_CPL_ModifyWowDisplayName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CRecentDocsContextMenu_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CRecentDocsContextMenu_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CTransferConfirmation_CreateInstance(void)
{
	__asm jmp pfnAheadLib_SHELL32_CTransferConfirmation_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CallFileCopyHooks(void)
{
	__asm jmp pfnAheadLib_SHELL32_CallFileCopyHooks;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CanDisplayWin8CopyDialog(void)
{
	__asm jmp pfnAheadLib_SHELL32_CanDisplayWin8CopyDialog;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CloseAutoplayPrompt(void)
{
	__asm jmp pfnAheadLib_SHELL32_CloseAutoplayPrompt;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CommandLineFromMsiDescriptor(void)
{
	__asm jmp pfnAheadLib_SHELL32_CommandLineFromMsiDescriptor;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CopySecondaryTiles(void)
{
	__asm jmp pfnAheadLib_SHELL32_CopySecondaryTiles;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateConfirmationInterrupt(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateConfirmationInterrupt;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateConflictInterrupt(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateConflictInterrupt;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateDefaultOperationDataProvider(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateDefaultOperationDataProvider;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateFileFolderContextMenu(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateFileFolderContextMenu;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateLinkInfoW(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateLinkInfoW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateQosRecorder(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateQosRecorder;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_CreateSharePointView(void)
{
	__asm jmp pfnAheadLib_SHELL32_CreateSharePointView;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_Create_IEnumUICommand(void)
{
	__asm jmp pfnAheadLib_SHELL32_Create_IEnumUICommand;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_DestroyLinkInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_DestroyLinkInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_EncryptDirectory(void)
{
	__asm jmp pfnAheadLib_SHELL32_EncryptDirectory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_EncryptedFileKeyInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_EncryptedFileKeyInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_EnumCommonTasks(void)
{
	__asm jmp pfnAheadLib_SHELL32_EnumCommonTasks;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_FreeEncryptedFileKeyInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_FreeEncryptedFileKeyInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GenerateAppID(void)
{
	__asm jmp pfnAheadLib_SHELL32_GenerateAppID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetAppIDRoot(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetAppIDRoot;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetCommandProviderForFolderType(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetCommandProviderForFolderType;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetDPIAdjustedLogicalSize(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetDPIAdjustedLogicalSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetDiskCleanupPath(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetDiskCleanupPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetFileNameFromBrowse(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetFileNameFromBrowse;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetIconOverlayManager(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetIconOverlayManager;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetLinkInfoData(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetLinkInfoData;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetRatingBucket(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetRatingBucket;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetSqmableFileName(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetSqmableFileName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetThumbnailAdornerFromFactory2(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetThumbnailAdornerFromFactory2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_GetThumbnailAdornerFromFactory(void)
{
	__asm jmp pfnAheadLib_SHELL32_GetThumbnailAdornerFromFactory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_HandleUnrecognizedFileSystem(void)
{
	__asm jmp pfnAheadLib_SHELL32_HandleUnrecognizedFileSystem;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCacheCreate(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCacheCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCacheDestroy(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCacheDestroy;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCacheHandleAssociationChanged(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCacheHandleAssociationChanged;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCacheRestore(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCacheRestore;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCache_AboutToExtractIcons(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCache_AboutToExtractIcons;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCache_DoneExtractingIcons(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCache_DoneExtractingIcons;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCache_ExpandEnvAndSearchPath(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCache_ExpandEnvAndSearchPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconCache_RememberRecentlyExtractedIconsW(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconCache_RememberRecentlyExtractedIconsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IconOverlayManagerInit(void)
{
	__asm jmp pfnAheadLib_SHELL32_IconOverlayManagerInit;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IsGetKeyboardLayoutPresent(void)
{
	__asm jmp pfnAheadLib_SHELL32_IsGetKeyboardLayoutPresent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IsSystemUpgradeInProgress(void)
{
	__asm jmp pfnAheadLib_SHELL32_IsSystemUpgradeInProgress;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_IsValidLinkInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_IsValidLinkInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_LegacyEnumSpecialTasksByType(void)
{
	__asm jmp pfnAheadLib_SHELL32_LegacyEnumSpecialTasksByType;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_LegacyEnumTasks(void)
{
	__asm jmp pfnAheadLib_SHELL32_LegacyEnumTasks;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_LookupBackIconIndex(void)
{
	__asm jmp pfnAheadLib_SHELL32_LookupBackIconIndex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_LookupFrontIconIndex(void)
{
	__asm jmp pfnAheadLib_SHELL32_LookupFrontIconIndex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_NormalizeRating(void)
{
	__asm jmp pfnAheadLib_SHELL32_NormalizeRating;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_NotifyLinkTrackingServiceOfMove(void)
{
	__asm jmp pfnAheadLib_SHELL32_NotifyLinkTrackingServiceOfMove;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_PifMgr_CloseProperties(void)
{
	__asm jmp pfnAheadLib_SHELL32_PifMgr_CloseProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_PifMgr_GetProperties(void)
{
	__asm jmp pfnAheadLib_SHELL32_PifMgr_GetProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_PifMgr_OpenProperties(void)
{
	__asm jmp pfnAheadLib_SHELL32_PifMgr_OpenProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_PifMgr_SetProperties(void)
{
	__asm jmp pfnAheadLib_SHELL32_PifMgr_SetProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_Printers_CreateBindInfo(void)
{
	__asm jmp pfnAheadLib_SHELL32_Printers_CreateBindInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_Printjob_GetPidl(void)
{
	__asm jmp pfnAheadLib_SHELL32_Printjob_GetPidl;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_PurgeSystemIcon(void)
{
	__asm jmp pfnAheadLib_SHELL32_PurgeSystemIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_RefreshOverlayImages(void)
{
	__asm jmp pfnAheadLib_SHELL32_RefreshOverlayImages;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_ResolveLinkInfoW(void)
{
	__asm jmp pfnAheadLib_SHELL32_ResolveLinkInfoW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHAddSparseIcon(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHAddSparseIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHCreateByValueOperationInterrupt(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHCreateByValueOperationInterrupt;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHCreateDefaultContextMenu(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHCreateDefaultContextMenu;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHCreateLocalServer(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHCreateLocalServer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHCreateShellFolderView(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHCreateShellFolderView;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHDuplicateEncryptionInfoFile(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHDuplicateEncryptionInfoFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHEncryptFile(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHEncryptFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHFormatDriveAsync(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHFormatDriveAsync;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHGetThreadUndoManager(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHGetThreadUndoManager;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHGetUserNameW(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHGetUserNameW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHIsVirtualDevice(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHIsVirtualDevice;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHLaunchPropSheet(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHLaunchPropSheet;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHLogILFromFSIL(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHLogILFromFSIL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHOpenWithDialog(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHOpenWithDialog;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHStartNetConnectionDialogW(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHStartNetConnectionDialogW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SHUICommandFromGUID(void)
{
	__asm jmp pfnAheadLib_SHELL32_SHUICommandFromGUID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SendToMenu_InvokeTargetedCommand(void)
{
	__asm jmp pfnAheadLib_SHELL32_SendToMenu_InvokeTargetedCommand;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SendToMenu_VerifyTargetedCommand(void)
{
	__asm jmp pfnAheadLib_SHELL32_SendToMenu_VerifyTargetedCommand;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_ShowHideIconOnlyOnDesktop(void)
{
	__asm jmp pfnAheadLib_SHELL32_ShowHideIconOnlyOnDesktop;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SimpleRatingToFilterCondition(void)
{
	__asm jmp pfnAheadLib_SHELL32_SimpleRatingToFilterCondition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_StampIconForFile(void)
{
	__asm jmp pfnAheadLib_SHELL32_StampIconForFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_SuspendUndo(void)
{
	__asm jmp pfnAheadLib_SHELL32_SuspendUndo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_TryVirtualDiscImageDriveEject(void)
{
	__asm jmp pfnAheadLib_SHELL32_TryVirtualDiscImageDriveEject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHELL32_VerifySaferTrust(void)
{
	__asm jmp pfnAheadLib_SHELL32_VerifySaferTrust;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHEmptyRecycleBinA(void)
{
	__asm jmp pfnAheadLib_SHEmptyRecycleBinA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHEmptyRecycleBinW(void)
{
	__asm jmp pfnAheadLib_SHEmptyRecycleBinW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHEnableServiceObject(void)
{
	__asm jmp pfnAheadLib_SHEnableServiceObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHEnumerateUnreadMailAccountsW(void)
{
	__asm jmp pfnAheadLib_SHEnumerateUnreadMailAccountsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHEvaluateSystemCommandTemplate(void)
{
	__asm jmp pfnAheadLib_SHEvaluateSystemCommandTemplate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHExecuteErrorMessageBox(void)
{
	__asm jmp pfnAheadLib_SHExecuteErrorMessageBox;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHExtractIconsW(void)
{
	__asm jmp pfnAheadLib_SHExtractIconsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFileOperation(void)
{
	__asm jmp pfnAheadLib_SHFileOperation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFileOperationA(void)
{
	__asm jmp pfnAheadLib_SHFileOperationA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFileOperationW(void)
{
	__asm jmp pfnAheadLib_SHFileOperationW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFormatDrive(void)
{
	__asm jmp pfnAheadLib_SHFormatDrive;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFreeNameMappings(void)
{
	__asm jmp pfnAheadLib_SHFreeNameMappings;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDataFromIDListA(void)
{
	__asm jmp pfnAheadLib_SHGetDataFromIDListA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDataFromIDListW(void)
{
	__asm jmp pfnAheadLib_SHGetDataFromIDListW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDesktopFolder(void)
{
	__asm jmp pfnAheadLib_SHGetDesktopFolder;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDiskFreeSpaceA(void)
{
	__asm jmp pfnAheadLib_SHGetDiskFreeSpaceA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDiskFreeSpaceExA(void)
{
	__asm jmp pfnAheadLib_SHGetDiskFreeSpaceExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDiskFreeSpaceExW(void)
{
	__asm jmp pfnAheadLib_SHGetDiskFreeSpaceExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetDriveMedia(void)
{
	__asm jmp pfnAheadLib_SHGetDriveMedia;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFileInfo(void)
{
	__asm jmp pfnAheadLib_SHGetFileInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFileInfoA(void)
{
	__asm jmp pfnAheadLib_SHGetFileInfoA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFileInfoW(void)
{
	__asm jmp pfnAheadLib_SHGetFileInfoW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFolderLocation(void)
{
	__asm jmp pfnAheadLib_SHGetFolderLocation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFolderPathA(void)
{
	__asm jmp pfnAheadLib_SHGetFolderPathA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFolderPathAndSubDirA(void)
{
	__asm jmp pfnAheadLib_SHGetFolderPathAndSubDirA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFolderPathAndSubDirW(void)
{
	__asm jmp pfnAheadLib_SHGetFolderPathAndSubDirW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFolderPathEx(void)
{
	__asm jmp pfnAheadLib_SHGetFolderPathEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetFolderPathW(void)
{
	__asm jmp pfnAheadLib_SHGetFolderPathW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetIDListFromObject(void)
{
	__asm jmp pfnAheadLib_SHGetIDListFromObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetIconOverlayIndexA(void)
{
	__asm jmp pfnAheadLib_SHGetIconOverlayIndexA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetIconOverlayIndexW(void)
{
	__asm jmp pfnAheadLib_SHGetIconOverlayIndexW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetInstanceExplorer(void)
{
	__asm jmp pfnAheadLib_SHGetInstanceExplorer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetItemFromDataObject(void)
{
	__asm jmp pfnAheadLib_SHGetItemFromDataObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetItemFromObject(void)
{
	__asm jmp pfnAheadLib_SHGetItemFromObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetKnownFolderIDList(void)
{
	__asm jmp pfnAheadLib_SHGetKnownFolderIDList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetKnownFolderItem(void)
{
	__asm jmp pfnAheadLib_SHGetKnownFolderItem;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetKnownFolderPath(void)
{
	__asm jmp pfnAheadLib_SHGetKnownFolderPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetLocalizedName(void)
{
	__asm jmp pfnAheadLib_SHGetLocalizedName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetMalloc(void)
{
	__asm jmp pfnAheadLib_SHGetMalloc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetNameFromIDList(void)
{
	__asm jmp pfnAheadLib_SHGetNameFromIDList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetNewLinkInfo(void)
{
	__asm jmp pfnAheadLib_SHGetNewLinkInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPathFromIDList(void)
{
	__asm jmp pfnAheadLib_SHGetPathFromIDList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed520(void)
{
	__asm jmp pfnAheadLib_Unnamed520;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed521(void)
{
	__asm jmp pfnAheadLib_Unnamed521;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed522(void)
{
	__asm jmp pfnAheadLib_Unnamed522;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed523(void)
{
	__asm jmp pfnAheadLib_Unnamed523;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RealDriveType(void)
{
	__asm jmp pfnAheadLib_RealDriveType;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed525(void)
{
	__asm jmp pfnAheadLib_Unnamed525;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHFlushSFCache(void)
{
	__asm jmp pfnAheadLib_SHFlushSFCache;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPathFromIDListA(void)
{
	__asm jmp pfnAheadLib_SHGetPathFromIDListA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPathFromIDListEx(void)
{
	__asm jmp pfnAheadLib_SHGetPathFromIDListEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPathFromIDListW(void)
{
	__asm jmp pfnAheadLib_SHGetPathFromIDListW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPropertyStoreForWindow(void)
{
	__asm jmp pfnAheadLib_SHGetPropertyStoreForWindow;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPropertyStoreFromIDList(void)
{
	__asm jmp pfnAheadLib_SHGetPropertyStoreFromIDList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetPropertyStoreFromParsingName(void)
{
	__asm jmp pfnAheadLib_SHGetPropertyStoreFromParsingName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetSettings(void)
{
	__asm jmp pfnAheadLib_SHGetSettings;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetSpecialFolderLocation(void)
{
	__asm jmp pfnAheadLib_SHGetSpecialFolderLocation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetSpecialFolderPathA(void)
{
	__asm jmp pfnAheadLib_SHGetSpecialFolderPathA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetSpecialFolderPathW(void)
{
	__asm jmp pfnAheadLib_SHGetSpecialFolderPathW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetStockIconInfo(void)
{
	__asm jmp pfnAheadLib_SHGetStockIconInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetTemporaryPropertyForItem(void)
{
	__asm jmp pfnAheadLib_SHGetTemporaryPropertyForItem;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetUnreadMailCountW(void)
{
	__asm jmp pfnAheadLib_SHGetUnreadMailCountW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHInvokePrinterCommandA(void)
{
	__asm jmp pfnAheadLib_SHInvokePrinterCommandA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHInvokePrinterCommandW(void)
{
	__asm jmp pfnAheadLib_SHInvokePrinterCommandW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHIsFileAvailableOffline(void)
{
	__asm jmp pfnAheadLib_SHIsFileAvailableOffline;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHLoadInProc(void)
{
	__asm jmp pfnAheadLib_SHLoadInProc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHLoadNonloadedIconOverlayIdentifiers(void)
{
	__asm jmp pfnAheadLib_SHLoadNonloadedIconOverlayIdentifiers;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHOpenFolderAndSelectItems(void)
{
	__asm jmp pfnAheadLib_SHOpenFolderAndSelectItems;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHOpenWithDialog(void)
{
	__asm jmp pfnAheadLib_SHOpenWithDialog;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHParseDisplayName(void)
{
	__asm jmp pfnAheadLib_SHParseDisplayName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHPathPrepareForWriteA(void)
{
	__asm jmp pfnAheadLib_SHPathPrepareForWriteA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHPathPrepareForWriteW(void)
{
	__asm jmp pfnAheadLib_SHPathPrepareForWriteW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHQueryRecycleBinA(void)
{
	__asm jmp pfnAheadLib_SHQueryRecycleBinA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHQueryRecycleBinW(void)
{
	__asm jmp pfnAheadLib_SHQueryRecycleBinW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHQueryUserNotificationState(void)
{
	__asm jmp pfnAheadLib_SHQueryUserNotificationState;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHRemoveLocalizedName(void)
{
	__asm jmp pfnAheadLib_SHRemoveLocalizedName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHResolveLibrary(void)
{
	__asm jmp pfnAheadLib_SHResolveLibrary;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetDefaultProperties(void)
{
	__asm jmp pfnAheadLib_SHSetDefaultProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetKnownFolderPath(void)
{
	__asm jmp pfnAheadLib_SHSetKnownFolderPath;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetLocalizedName(void)
{
	__asm jmp pfnAheadLib_SHSetLocalizedName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetTemporaryPropertyForItem(void)
{
	__asm jmp pfnAheadLib_SHSetTemporaryPropertyForItem;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHSetUnreadMailCountW(void)
{
	__asm jmp pfnAheadLib_SHSetUnreadMailCountW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHShowManageLibraryUI(void)
{
	__asm jmp pfnAheadLib_SHShowManageLibraryUI;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHUpdateRecycleBinIcon(void)
{
	__asm jmp pfnAheadLib_SHUpdateRecycleBinIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SetCurrentProcessExplicitAppUserModelID(void)
{
	__asm jmp pfnAheadLib_SetCurrentProcessExplicitAppUserModelID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SheChangeDirA(void)
{
	__asm jmp pfnAheadLib_SheChangeDirA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SheChangeDirExW(void)
{
	__asm jmp pfnAheadLib_SheChangeDirExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SheGetDirA(void)
{
	__asm jmp pfnAheadLib_SheGetDirA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SheSetCurDrive(void)
{
	__asm jmp pfnAheadLib_SheSetCurDrive;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellAboutA(void)
{
	__asm jmp pfnAheadLib_ShellAboutA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellAboutW(void)
{
	__asm jmp pfnAheadLib_ShellAboutW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExec_RunDLL(void)
{
	__asm jmp pfnAheadLib_ShellExec_RunDLL;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExec_RunDLLA(void)
{
	__asm jmp pfnAheadLib_ShellExec_RunDLLA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExec_RunDLLW(void)
{
	__asm jmp pfnAheadLib_ShellExec_RunDLLW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExecuteA(void)
{
	__asm jmp pfnAheadLib_ShellExecuteA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExecuteEx(void)
{
	__asm jmp pfnAheadLib_ShellExecuteEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExecuteExA(void)
{
	__asm jmp pfnAheadLib_ShellExecuteExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExecuteExW(void)
{
	__asm jmp pfnAheadLib_ShellExecuteExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellExecuteW(void)
{
	__asm jmp pfnAheadLib_ShellExecuteW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShellHookProc(void)
{
	__asm jmp pfnAheadLib_ShellHookProc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_GetCachedImageIndexA(void)
{
	__asm jmp pfnAheadLib_Shell_GetCachedImageIndexA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_GetCachedImageIndexW(void)
{
	__asm jmp pfnAheadLib_Shell_GetCachedImageIndexW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_NotifyIcon(void)
{
	__asm jmp pfnAheadLib_Shell_NotifyIcon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_NotifyIconA(void)
{
	__asm jmp pfnAheadLib_Shell_NotifyIconA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_NotifyIconGetRect(void)
{
	__asm jmp pfnAheadLib_Shell_NotifyIconGetRect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Shell_NotifyIconW(void)
{
	__asm jmp pfnAheadLib_Shell_NotifyIconW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StateRepoNewMenuCache_EnsureCacheAsync(void)
{
	__asm jmp pfnAheadLib_StateRepoNewMenuCache_EnsureCacheAsync;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StateRepoNewMenuCache_RebuildCacheAsync(void)
{
	__asm jmp pfnAheadLib_StateRepoNewMenuCache_RebuildCacheAsync;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrChrA(void)
{
	__asm jmp pfnAheadLib_StrChrA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrChrIA(void)
{
	__asm jmp pfnAheadLib_StrChrIA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrChrIW(void)
{
	__asm jmp pfnAheadLib_StrChrIW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrChrW(void)
{
	__asm jmp pfnAheadLib_StrChrW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrCmpNA(void)
{
	__asm jmp pfnAheadLib_StrCmpNA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrCmpNIA(void)
{
	__asm jmp pfnAheadLib_StrCmpNIA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrCmpNIW(void)
{
	__asm jmp pfnAheadLib_StrCmpNIW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrCmpNW(void)
{
	__asm jmp pfnAheadLib_StrCmpNW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrNCmpA(void)
{
	__asm jmp pfnAheadLib_StrNCmpA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrNCmpIA(void)
{
	__asm jmp pfnAheadLib_StrNCmpIA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrNCmpIW(void)
{
	__asm jmp pfnAheadLib_StrNCmpIW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrNCmpW(void)
{
	__asm jmp pfnAheadLib_StrNCmpW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRChrA(void)
{
	__asm jmp pfnAheadLib_StrRChrA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRChrIA(void)
{
	__asm jmp pfnAheadLib_StrRChrIA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRChrIW(void)
{
	__asm jmp pfnAheadLib_StrRChrIW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRChrW(void)
{
	__asm jmp pfnAheadLib_StrRChrW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRStrA(void)
{
	__asm jmp pfnAheadLib_StrRStrA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRStrIA(void)
{
	__asm jmp pfnAheadLib_StrRStrIA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRStrIW(void)
{
	__asm jmp pfnAheadLib_StrRStrIW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrRStrW(void)
{
	__asm jmp pfnAheadLib_StrRStrW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrStrA(void)
{
	__asm jmp pfnAheadLib_StrStrA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrStrIA(void)
{
	__asm jmp pfnAheadLib_StrStrIA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrStrIW(void)
{
	__asm jmp pfnAheadLib_StrStrIW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StrStrW(void)
{
	__asm jmp pfnAheadLib_StrStrW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_UsersLibrariesFolderUI_CreateInstance(void)
{
	__asm jmp pfnAheadLib_UsersLibrariesFolderUI_CreateInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_WOWShellExecute(void)
{
	__asm jmp pfnAheadLib_WOWShellExecute;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_WaitForExplorerRestartW(void)
{
	__asm jmp pfnAheadLib_WaitForExplorerRestartW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed640(void)
{
	__asm jmp pfnAheadLib_Unnamed640;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed641(void)
{
	__asm jmp pfnAheadLib_Unnamed641;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed643(void)
{
	__asm jmp pfnAheadLib_Unnamed643;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotification_Lock(void)
{
	__asm jmp pfnAheadLib_SHChangeNotification_Lock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHChangeNotification_Unlock(void)
{
	__asm jmp pfnAheadLib_SHChangeNotification_Unlock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed646(void)
{
	__asm jmp pfnAheadLib_Unnamed646;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed648(void)
{
	__asm jmp pfnAheadLib_Unnamed648;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed650(void)
{
	__asm jmp pfnAheadLib_Unnamed650;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed651(void)
{
	__asm jmp pfnAheadLib_Unnamed651;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_WriteCabinetState(void)
{
	__asm jmp pfnAheadLib_WriteCabinetState;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed653(void)
{
	__asm jmp pfnAheadLib_Unnamed653;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ReadCabinetState(void)
{
	__asm jmp pfnAheadLib_ReadCabinetState;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed660(void)
{
	__asm jmp pfnAheadLib_Unnamed660;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsUserAnAdmin(void)
{
	__asm jmp pfnAheadLib_IsUserAnAdmin;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed681(void)
{
	__asm jmp pfnAheadLib_Unnamed681;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_StgMakeUniqueName(void)
{
	__asm jmp pfnAheadLib_StgMakeUniqueName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed683(void)
{
	__asm jmp pfnAheadLib_Unnamed683;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed684(void)
{
	__asm jmp pfnAheadLib_Unnamed684;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHPropStgCreate(void)
{
	__asm jmp pfnAheadLib_SHPropStgCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHPropStgReadMultiple(void)
{
	__asm jmp pfnAheadLib_SHPropStgReadMultiple;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHPropStgWriteMultiple(void)
{
	__asm jmp pfnAheadLib_SHPropStgWriteMultiple;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed690(void)
{
	__asm jmp pfnAheadLib_Unnamed690;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed691(void)
{
	__asm jmp pfnAheadLib_Unnamed691;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed700(void)
{
	__asm jmp pfnAheadLib_Unnamed700;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CDefFolderMenu_Create2(void)
{
	__asm jmp pfnAheadLib_CDefFolderMenu_Create2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed702(void)
{
	__asm jmp pfnAheadLib_Unnamed702;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed703(void)
{
	__asm jmp pfnAheadLib_Unnamed703;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed704(void)
{
	__asm jmp pfnAheadLib_Unnamed704;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed707(void)
{
	__asm jmp pfnAheadLib_Unnamed707;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed708(void)
{
	__asm jmp pfnAheadLib_Unnamed708;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetSetFolderCustomSettings(void)
{
	__asm jmp pfnAheadLib_SHGetSetFolderCustomSettings;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed711(void)
{
	__asm jmp pfnAheadLib_Unnamed711;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed712(void)
{
	__asm jmp pfnAheadLib_Unnamed712;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed713(void)
{
	__asm jmp pfnAheadLib_Unnamed713;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed714(void)
{
	__asm jmp pfnAheadLib_Unnamed714;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed715(void)
{
	__asm jmp pfnAheadLib_Unnamed715;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHMultiFileProperties(void)
{
	__asm jmp pfnAheadLib_SHMultiFileProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed719(void)
{
	__asm jmp pfnAheadLib_Unnamed719;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed720(void)
{
	__asm jmp pfnAheadLib_Unnamed720;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed721(void)
{
	__asm jmp pfnAheadLib_Unnamed721;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed722(void)
{
	__asm jmp pfnAheadLib_Unnamed722;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed723(void)
{
	__asm jmp pfnAheadLib_Unnamed723;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed724(void)
{
	__asm jmp pfnAheadLib_Unnamed724;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed725(void)
{
	__asm jmp pfnAheadLib_Unnamed725;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed726(void)
{
	__asm jmp pfnAheadLib_Unnamed726;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetImageList(void)
{
	__asm jmp pfnAheadLib_SHGetImageList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RestartDialogEx(void)
{
	__asm jmp pfnAheadLib_RestartDialogEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed731(void)
{
	__asm jmp pfnAheadLib_Unnamed731;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed732(void)
{
	__asm jmp pfnAheadLib_Unnamed732;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed733(void)
{
	__asm jmp pfnAheadLib_Unnamed733;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed740(void)
{
	__asm jmp pfnAheadLib_Unnamed740;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHCreateFileExtractIconW(void)
{
	__asm jmp pfnAheadLib_SHCreateFileExtractIconW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed744(void)
{
	__asm jmp pfnAheadLib_Unnamed744;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed745(void)
{
	__asm jmp pfnAheadLib_Unnamed745;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHLimitInputEdit(void)
{
	__asm jmp pfnAheadLib_SHLimitInputEdit;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed748(void)
{
	__asm jmp pfnAheadLib_Unnamed748;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed749(void)
{
	__asm jmp pfnAheadLib_Unnamed749;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SHGetAttributesFromDataObject(void)
{
	__asm jmp pfnAheadLib_SHGetAttributesFromDataObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed751(void)
{
	__asm jmp pfnAheadLib_Unnamed751;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed752(void)
{
	__asm jmp pfnAheadLib_Unnamed752;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed753(void)
{
	__asm jmp pfnAheadLib_Unnamed753;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed754(void)
{
	__asm jmp pfnAheadLib_Unnamed754;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed755(void)
{
	__asm jmp pfnAheadLib_Unnamed755;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed756(void)
{
	__asm jmp pfnAheadLib_Unnamed756;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed757(void)
{
	__asm jmp pfnAheadLib_Unnamed757;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed758(void)
{
	__asm jmp pfnAheadLib_Unnamed758;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed759(void)
{
	__asm jmp pfnAheadLib_Unnamed759;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed760(void)
{
	__asm jmp pfnAheadLib_Unnamed760;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed761(void)
{
	__asm jmp pfnAheadLib_Unnamed761;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed762(void)
{
	__asm jmp pfnAheadLib_Unnamed762;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed763(void)
{
	__asm jmp pfnAheadLib_Unnamed763;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed764(void)
{
	__asm jmp pfnAheadLib_Unnamed764;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed765(void)
{
	__asm jmp pfnAheadLib_Unnamed765;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed766(void)
{
	__asm jmp pfnAheadLib_Unnamed766;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed767(void)
{
	__asm jmp pfnAheadLib_Unnamed767;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed777(void)
{
	__asm jmp pfnAheadLib_Unnamed777;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed778(void)
{
	__asm jmp pfnAheadLib_Unnamed778;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed779(void)
{
	__asm jmp pfnAheadLib_Unnamed779;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed781(void)
{
	__asm jmp pfnAheadLib_Unnamed781;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed782(void)
{
	__asm jmp pfnAheadLib_Unnamed782;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed786(void)
{
	__asm jmp pfnAheadLib_Unnamed786;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed787(void)
{
	__asm jmp pfnAheadLib_Unnamed787;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed788(void)
{
	__asm jmp pfnAheadLib_Unnamed788;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed789(void)
{
	__asm jmp pfnAheadLib_Unnamed789;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed790(void)
{
	__asm jmp pfnAheadLib_Unnamed790;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed791(void)
{
	__asm jmp pfnAheadLib_Unnamed791;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed792(void)
{
	__asm jmp pfnAheadLib_Unnamed792;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed810(void)
{
	__asm jmp pfnAheadLib_Unnamed810;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed811(void)
{
	__asm jmp pfnAheadLib_Unnamed811;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed812(void)
{
	__asm jmp pfnAheadLib_Unnamed812;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed813(void)
{
	__asm jmp pfnAheadLib_Unnamed813;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed814(void)
{
	__asm jmp pfnAheadLib_Unnamed814;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed815(void)
{
	__asm jmp pfnAheadLib_Unnamed815;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed816(void)
{
	__asm jmp pfnAheadLib_Unnamed816;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed817(void)
{
	__asm jmp pfnAheadLib_Unnamed817;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed818(void)
{
	__asm jmp pfnAheadLib_Unnamed818;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed819(void)
{
	__asm jmp pfnAheadLib_Unnamed819;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed820(void)
{
	__asm jmp pfnAheadLib_Unnamed820;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed821(void)
{
	__asm jmp pfnAheadLib_Unnamed821;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed822(void)
{
	__asm jmp pfnAheadLib_Unnamed822;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed823(void)
{
	__asm jmp pfnAheadLib_Unnamed823;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed824(void)
{
	__asm jmp pfnAheadLib_Unnamed824;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed825(void)
{
	__asm jmp pfnAheadLib_Unnamed825;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed826(void)
{
	__asm jmp pfnAheadLib_Unnamed826;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed827(void)
{
	__asm jmp pfnAheadLib_Unnamed827;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed828(void)
{
	__asm jmp pfnAheadLib_Unnamed828;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed829(void)
{
	__asm jmp pfnAheadLib_Unnamed829;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed830(void)
{
	__asm jmp pfnAheadLib_Unnamed830;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed831(void)
{
	__asm jmp pfnAheadLib_Unnamed831;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed832(void)
{
	__asm jmp pfnAheadLib_Unnamed832;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed833(void)
{
	__asm jmp pfnAheadLib_Unnamed833;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed834(void)
{
	__asm jmp pfnAheadLib_Unnamed834;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed835(void)
{
	__asm jmp pfnAheadLib_Unnamed835;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed836(void)
{
	__asm jmp pfnAheadLib_Unnamed836;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed837(void)
{
	__asm jmp pfnAheadLib_Unnamed837;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed838(void)
{
	__asm jmp pfnAheadLib_Unnamed838;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed839(void)
{
	__asm jmp pfnAheadLib_Unnamed839;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed840(void)
{
	__asm jmp pfnAheadLib_Unnamed840;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed841(void)
{
	__asm jmp pfnAheadLib_Unnamed841;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed842(void)
{
	__asm jmp pfnAheadLib_Unnamed842;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed843(void)
{
	__asm jmp pfnAheadLib_Unnamed843;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed844(void)
{
	__asm jmp pfnAheadLib_Unnamed844;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed845(void)
{
	__asm jmp pfnAheadLib_Unnamed845;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ILLoadFromStreamEx(void)
{
	__asm jmp pfnAheadLib_ILLoadFromStreamEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed847(void)
{
	__asm jmp pfnAheadLib_Unnamed847;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed848(void)
{
	__asm jmp pfnAheadLib_Unnamed848;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed849(void)
{
	__asm jmp pfnAheadLib_Unnamed849;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed850(void)
{
	__asm jmp pfnAheadLib_Unnamed850;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed851(void)
{
	__asm jmp pfnAheadLib_Unnamed851;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed852(void)
{
	__asm jmp pfnAheadLib_Unnamed852;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed853(void)
{
	__asm jmp pfnAheadLib_Unnamed853;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed854(void)
{
	__asm jmp pfnAheadLib_Unnamed854;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed856(void)
{
	__asm jmp pfnAheadLib_Unnamed856;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed857(void)
{
	__asm jmp pfnAheadLib_Unnamed857;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed858(void)
{
	__asm jmp pfnAheadLib_Unnamed858;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed859(void)
{
	__asm jmp pfnAheadLib_Unnamed859;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed860(void)
{
	__asm jmp pfnAheadLib_Unnamed860;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed861(void)
{
	__asm jmp pfnAheadLib_Unnamed861;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed862(void)
{
	__asm jmp pfnAheadLib_Unnamed862;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed863(void)
{
	__asm jmp pfnAheadLib_Unnamed863;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed864(void)
{
	__asm jmp pfnAheadLib_Unnamed864;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed865(void)
{
	__asm jmp pfnAheadLib_Unnamed865;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed866(void)
{
	__asm jmp pfnAheadLib_Unnamed866;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed867(void)
{
	__asm jmp pfnAheadLib_Unnamed867;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed868(void)
{
	__asm jmp pfnAheadLib_Unnamed868;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed869(void)
{
	__asm jmp pfnAheadLib_Unnamed869;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed870(void)
{
	__asm jmp pfnAheadLib_Unnamed870;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed871(void)
{
	__asm jmp pfnAheadLib_Unnamed871;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed872(void)
{
	__asm jmp pfnAheadLib_Unnamed872;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed873(void)
{
	__asm jmp pfnAheadLib_Unnamed873;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed874(void)
{
	__asm jmp pfnAheadLib_Unnamed874;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed875(void)
{
	__asm jmp pfnAheadLib_Unnamed875;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed876(void)
{
	__asm jmp pfnAheadLib_Unnamed876;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed877(void)
{
	__asm jmp pfnAheadLib_Unnamed877;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed878(void)
{
	__asm jmp pfnAheadLib_Unnamed878;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed880(void)
{
	__asm jmp pfnAheadLib_Unnamed880;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed881(void)
{
	__asm jmp pfnAheadLib_Unnamed881;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed882(void)
{
	__asm jmp pfnAheadLib_Unnamed882;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed883(void)
{
	__asm jmp pfnAheadLib_Unnamed883;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed884(void)
{
	__asm jmp pfnAheadLib_Unnamed884;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed885(void)
{
	__asm jmp pfnAheadLib_Unnamed885;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed886(void)
{
	__asm jmp pfnAheadLib_Unnamed886;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed887(void)
{
	__asm jmp pfnAheadLib_Unnamed887;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed888(void)
{
	__asm jmp pfnAheadLib_Unnamed888;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed889(void)
{
	__asm jmp pfnAheadLib_Unnamed889;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed890(void)
{
	__asm jmp pfnAheadLib_Unnamed890;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed891(void)
{
	__asm jmp pfnAheadLib_Unnamed891;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed892(void)
{
	__asm jmp pfnAheadLib_Unnamed892;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed893(void)
{
	__asm jmp pfnAheadLib_Unnamed893;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed894(void)
{
	__asm jmp pfnAheadLib_Unnamed894;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed895(void)
{
	__asm jmp pfnAheadLib_Unnamed895;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed896(void)
{
	__asm jmp pfnAheadLib_Unnamed896;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed897(void)
{
	__asm jmp pfnAheadLib_Unnamed897;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed898(void)
{
	__asm jmp pfnAheadLib_Unnamed898;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed899(void)
{
	__asm jmp pfnAheadLib_Unnamed899;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed900(void)
{
	__asm jmp pfnAheadLib_Unnamed900;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed901(void)
{
	__asm jmp pfnAheadLib_Unnamed901;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed902(void)
{
	__asm jmp pfnAheadLib_Unnamed902;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed903(void)
{
	__asm jmp pfnAheadLib_Unnamed903;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed904(void)
{
	__asm jmp pfnAheadLib_Unnamed904;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed905(void)
{
	__asm jmp pfnAheadLib_Unnamed905;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed906(void)
{
	__asm jmp pfnAheadLib_Unnamed906;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed907(void)
{
	__asm jmp pfnAheadLib_Unnamed907;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed909(void)
{
	__asm jmp pfnAheadLib_Unnamed909;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed910(void)
{
	__asm jmp pfnAheadLib_Unnamed910;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed911(void)
{
	__asm jmp pfnAheadLib_Unnamed911;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed912(void)
{
	__asm jmp pfnAheadLib_Unnamed912;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed913(void)
{
	__asm jmp pfnAheadLib_Unnamed913;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed914(void)
{
	__asm jmp pfnAheadLib_Unnamed914;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed915(void)
{
	__asm jmp pfnAheadLib_Unnamed915;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed916(void)
{
	__asm jmp pfnAheadLib_Unnamed916;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetSystemPersistedStorageItemList(void)
{
	__asm jmp pfnAheadLib_GetSystemPersistedStorageItemList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromPath_PartialTrustCaller(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromPath_PartialTrustCaller;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromShellItem_FullTrustCaller(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed922(void)
{
	__asm jmp pfnAheadLib_Unnamed922;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed923(void)
{
	__asm jmp pfnAheadLib_Unnamed923;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed924(void)
{
	__asm jmp pfnAheadLib_Unnamed924;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed927(void)
{
	__asm jmp pfnAheadLib_Unnamed927;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed928(void)
{
	__asm jmp pfnAheadLib_Unnamed928;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_ForPackage_WithProcessHandle;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed930(void)
{
	__asm jmp pfnAheadLib_Unnamed930;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromShellItem_FullTrustCaller_UseImplicitFlagsAndPackage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed932(void)
{
	__asm jmp pfnAheadLib_Unnamed932;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed933(void)
{
	__asm jmp pfnAheadLib_Unnamed933;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromPath_FullTrustCaller(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromPath_FullTrustCaller;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateStorageItemFromPath_FullTrustCaller_ForPackage(void)
{
	__asm jmp pfnAheadLib_CreateStorageItemFromPath_FullTrustCaller_ForPackage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CStorageItem_GetValidatedStorageItemObject(void)
{
	__asm jmp pfnAheadLib_CStorageItem_GetValidatedStorageItemObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed938(void)
{
	__asm jmp pfnAheadLib_Unnamed938;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed939(void)
{
	__asm jmp pfnAheadLib_Unnamed939;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed940(void)
{
	__asm jmp pfnAheadLib_Unnamed940;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsProcessAnExplorer(void)
{
	__asm jmp pfnAheadLib_IsProcessAnExplorer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_IsDesktopExplorerProcess(void)
{
	__asm jmp pfnAheadLib_IsDesktopExplorerProcess;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed943(void)
{
	__asm jmp pfnAheadLib_Unnamed943;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed944(void)
{
	__asm jmp pfnAheadLib_Unnamed944;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed945(void)
{
	__asm jmp pfnAheadLib_Unnamed945;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed946(void)
{
	__asm jmp pfnAheadLib_Unnamed946;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed970(void)
{
	__asm jmp pfnAheadLib_Unnamed970;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed971(void)
{
	__asm jmp pfnAheadLib_Unnamed971;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed972(void)
{
	__asm jmp pfnAheadLib_Unnamed972;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed2000(void)
{
	__asm jmp pfnAheadLib_Unnamed2000;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed2001(void)
{
	__asm jmp pfnAheadLib_Unnamed2001;
}



BOOL APIENTRY DllMain(HMODULE hModule,
	DWORD  ul_reason_for_call,
	LPVOID lpReserved
)
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH: {
		HOOK_MAIN();

		DisableThreadLibraryCalls(hModule);
		Load(); Init();
		break;
	}
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		Free();
		break;
	}
	return TRUE;
}
