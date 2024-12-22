
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:liveFinal=_AheadLib_liveFinal,@1")
#pragma comment(linker, "/EXPORT:liveGetErrorID=_AheadLib_liveGetErrorID,@2")
#pragma comment(linker, "/EXPORT:liveInit=_AheadLib_liveInit,@3")
#pragma comment(linker, "/EXPORT:liveOggGetAutoRepeat=_AheadLib_liveOggGetAutoRepeat,@4")
#pragma comment(linker, "/EXPORT:liveOggGetBuffPos=_AheadLib_liveOggGetBuffPos,@5")
#pragma comment(linker, "/EXPORT:liveOggGetBuffSize=_AheadLib_liveOggGetBuffSize,@6")
#pragma comment(linker, "/EXPORT:liveOggGetLen=_AheadLib_liveOggGetLen,@7")
#pragma comment(linker, "/EXPORT:liveOggGetPan=_AheadLib_liveOggGetPan,@8")
#pragma comment(linker, "/EXPORT:liveOggGetPosition=_AheadLib_liveOggGetPosition,@9")
#pragma comment(linker, "/EXPORT:liveOggGetRepeatPos=_AheadLib_liveOggGetRepeatPos,@10")
#pragma comment(linker, "/EXPORT:liveOggGetVol=_AheadLib_liveOggGetVol,@11")
#pragma comment(linker, "/EXPORT:liveOggGetWritePos=_AheadLib_liveOggGetWritePos,@12")
#pragma comment(linker, "/EXPORT:liveOggIsEnd=_AheadLib_liveOggIsEnd,@13")
#pragma comment(linker, "/EXPORT:liveOggIsPaused=_AheadLib_liveOggIsPaused,@14")
#pragma comment(linker, "/EXPORT:liveOggIsPlaying=_AheadLib_liveOggIsPlaying,@15")
#pragma comment(linker, "/EXPORT:liveOggPause=_AheadLib_liveOggPause,@16")
#pragma comment(linker, "/EXPORT:liveOggPlay=_AheadLib_liveOggPlay,@17")
#pragma comment(linker, "/EXPORT:liveOggSetAutoRepeat=_AheadLib_liveOggSetAutoRepeat,@18")
#pragma comment(linker, "/EXPORT:liveOggSetPan=_AheadLib_liveOggSetPan,@19")
#pragma comment(linker, "/EXPORT:liveOggSetPosition=_AheadLib_liveOggSetPosition,@20")
#pragma comment(linker, "/EXPORT:liveOggSetRepeatPos=_AheadLib_liveOggSetRepeatPos,@21")
#pragma comment(linker, "/EXPORT:liveOggSetVol=_AheadLib_liveOggSetVol,@22")
#pragma comment(linker, "/EXPORT:liveOggStrGetFormat=_AheadLib_liveOggStrGetFormat,@23")
#pragma comment(linker, "/EXPORT:liveOggStrGetLen=_AheadLib_liveOggStrGetLen,@24")
#pragma comment(linker, "/EXPORT:liveOggStrGetPos=_AheadLib_liveOggStrGetPos,@25")
#pragma comment(linker, "/EXPORT:liveOggStrGetSize=_AheadLib_liveOggStrGetSize,@26")
#pragma comment(linker, "/EXPORT:liveOggStrRead=_AheadLib_liveOggStrRead,@27")
#pragma comment(linker, "/EXPORT:liveOggStrSetPos=_AheadLib_liveOggStrSetPos,@28")
#pragma comment(linker, "/EXPORT:liveOggStrmanAdd=_AheadLib_liveOggStrmanAdd,@29")
#pragma comment(linker, "/EXPORT:liveOggStrmanDel=_AheadLib_liveOggStrmanDel,@30")
#pragma comment(linker, "/EXPORT:liveOggmanAdd=_AheadLib_liveOggmanAdd,@31")
#pragma comment(linker, "/EXPORT:liveOggmanDel=_AheadLib_liveOggmanDel,@32")
#pragma comment(linker, "/EXPORT:liveOggmanGetCount=_AheadLib_liveOggmanGetCount,@33")
#pragma comment(linker, "/EXPORT:liveOggmanProcessEvent=_AheadLib_liveOggmanProcessEvent,@34")
#pragma comment(linker, "/EXPORT:liveOggmanRestore=_AheadLib_liveOggmanRestore,@35")
#pragma comment(linker, "/EXPORT:liveOggmanSetUseThread=_AheadLib_liveOggmanSetUseThread,@36")
#pragma comment(linker, "/EXPORT:liveOggmanUpdate=_AheadLib_liveOggmanUpdate,@37")
#pragma comment(linker, "/EXPORT:liveScreenGetVideoMode=_AheadLib_liveScreenGetVideoMode,@38")
#pragma comment(linker, "/EXPORT:liveScreenGetVideoModeCount=_AheadLib_liveScreenGetVideoModeCount,@39")
#pragma comment(linker, "/EXPORT:liveScreenSetVideoMode=_AheadLib_liveScreenSetVideoMode,@40")
#pragma comment(linker, "/EXPORT:liveVersion=_AheadLib_liveVersion,@41")
#pragma comment(linker, "/EXPORT:liveVideoGetAutoRepeat=_AheadLib_liveVideoGetAutoRepeat,@42")
#pragma comment(linker, "/EXPORT:liveVideoGetDC=_AheadLib_liveVideoGetDC,@43")
#pragma comment(linker, "/EXPORT:liveVideoGetDIBInfo=_AheadLib_liveVideoGetDIBInfo,@44")
#pragma comment(linker, "/EXPORT:liveVideoGetLen=_AheadLib_liveVideoGetLen,@45")
#pragma comment(linker, "/EXPORT:liveVideoGetPan=_AheadLib_liveVideoGetPan,@46")
#pragma comment(linker, "/EXPORT:liveVideoGetPosition=_AheadLib_liveVideoGetPosition,@47")
#pragma comment(linker, "/EXPORT:liveVideoGetSourceHeight=_AheadLib_liveVideoGetSourceHeight,@48")
#pragma comment(linker, "/EXPORT:liveVideoGetSourceWidth=_AheadLib_liveVideoGetSourceWidth,@49")
#pragma comment(linker, "/EXPORT:liveVideoGetVisible=_AheadLib_liveVideoGetVisible,@50")
#pragma comment(linker, "/EXPORT:liveVideoGetVol=_AheadLib_liveVideoGetVol,@51")
#pragma comment(linker, "/EXPORT:liveVideoIsEnd=_AheadLib_liveVideoIsEnd,@52")
#pragma comment(linker, "/EXPORT:liveVideoIsPaused=_AheadLib_liveVideoIsPaused,@53")
#pragma comment(linker, "/EXPORT:liveVideoIsPlaying=_AheadLib_liveVideoIsPlaying,@54")
#pragma comment(linker, "/EXPORT:liveVideoNeedPaint=_AheadLib_liveVideoNeedPaint,@55")
#pragma comment(linker, "/EXPORT:liveVideoPause=_AheadLib_liveVideoPause,@56")
#pragma comment(linker, "/EXPORT:liveVideoPlay=_AheadLib_liveVideoPlay,@57")
#pragma comment(linker, "/EXPORT:liveVideoReleaseDC=_AheadLib_liveVideoReleaseDC,@58")
#pragma comment(linker, "/EXPORT:liveVideoResume=_AheadLib_liveVideoResume,@59")
#pragma comment(linker, "/EXPORT:liveVideoSetAutoRepeat=_AheadLib_liveVideoSetAutoRepeat,@60")
#pragma comment(linker, "/EXPORT:liveVideoSetPan=_AheadLib_liveVideoSetPan,@61")
#pragma comment(linker, "/EXPORT:liveVideoSetPosition=_AheadLib_liveVideoSetPosition,@62")
#pragma comment(linker, "/EXPORT:liveVideoSetRect=_AheadLib_liveVideoSetRect,@63")
#pragma comment(linker, "/EXPORT:liveVideoSetVisible=_AheadLib_liveVideoSetVisible,@64")
#pragma comment(linker, "/EXPORT:liveVideoSetVol=_AheadLib_liveVideoSetVol,@65")
#pragma comment(linker, "/EXPORT:liveVideoSuspend=_AheadLib_liveVideoSuspend,@66")
#pragma comment(linker, "/EXPORT:liveVidmanAdd=_AheadLib_liveVidmanAdd,@67")
#pragma comment(linker, "/EXPORT:liveVidmanDel=_AheadLib_liveVidmanDel,@68")
#pragma comment(linker, "/EXPORT:liveVidmanFreeDIB=_AheadLib_liveVidmanFreeDIB,@69")
#pragma comment(linker, "/EXPORT:liveVidmanGetDIB=_AheadLib_liveVidmanGetDIB,@70")
#pragma comment(linker, "/EXPORT:liveVidmanPause=_AheadLib_liveVidmanPause,@71")
#pragma comment(linker, "/EXPORT:liveVidmanProcessEvent=_AheadLib_liveVidmanProcessEvent,@72")
#pragma comment(linker, "/EXPORT:liveVidmanRestart=_AheadLib_liveVidmanRestart,@73")
#pragma comment(linker, "/EXPORT:liveVidmanResume=_AheadLib_liveVidmanResume,@74")
#pragma comment(linker, "/EXPORT:liveVidmanSuspend=_AheadLib_liveVidmanSuspend,@75")
#pragma comment(linker, "/EXPORT:liveWmpGetAutoRepeat=_AheadLib_liveWmpGetAutoRepeat,@76")
#pragma comment(linker, "/EXPORT:liveWmpGetBuffPos=_AheadLib_liveWmpGetBuffPos,@77")
#pragma comment(linker, "/EXPORT:liveWmpGetBuffSize=_AheadLib_liveWmpGetBuffSize,@78")
#pragma comment(linker, "/EXPORT:liveWmpGetLen=_AheadLib_liveWmpGetLen,@79")
#pragma comment(linker, "/EXPORT:liveWmpGetPan=_AheadLib_liveWmpGetPan,@80")
#pragma comment(linker, "/EXPORT:liveWmpGetPosition=_AheadLib_liveWmpGetPosition,@81")
#pragma comment(linker, "/EXPORT:liveWmpGetVol=_AheadLib_liveWmpGetVol,@82")
#pragma comment(linker, "/EXPORT:liveWmpGetWritePos=_AheadLib_liveWmpGetWritePos,@83")
#pragma comment(linker, "/EXPORT:liveWmpIsEnd=_AheadLib_liveWmpIsEnd,@84")
#pragma comment(linker, "/EXPORT:liveWmpIsPaused=_AheadLib_liveWmpIsPaused,@85")
#pragma comment(linker, "/EXPORT:liveWmpIsPlaying=_AheadLib_liveWmpIsPlaying,@86")
#pragma comment(linker, "/EXPORT:liveWmpPause=_AheadLib_liveWmpPause,@87")
#pragma comment(linker, "/EXPORT:liveWmpPlay=_AheadLib_liveWmpPlay,@88")
#pragma comment(linker, "/EXPORT:liveWmpSetAutoRepeat=_AheadLib_liveWmpSetAutoRepeat,@89")
#pragma comment(linker, "/EXPORT:liveWmpSetPan=_AheadLib_liveWmpSetPan,@90")
#pragma comment(linker, "/EXPORT:liveWmpSetPosition=_AheadLib_liveWmpSetPosition,@91")
#pragma comment(linker, "/EXPORT:liveWmpSetVol=_AheadLib_liveWmpSetVol,@92")
#pragma comment(linker, "/EXPORT:liveWmpmanAdd=_AheadLib_liveWmpmanAdd,@93")
#pragma comment(linker, "/EXPORT:liveWmpmanDel=_AheadLib_liveWmpmanDel,@94")
#pragma comment(linker, "/EXPORT:liveWmpmanProcessEvent=_AheadLib_liveWmpmanProcessEvent,@95")
#pragma comment(linker, "/EXPORT:liveWmpmanRestore=_AheadLib_liveWmpmanRestore,@96")


PVOID pfnAheadLib_liveFinal;
PVOID pfnAheadLib_liveGetErrorID;
PVOID pfnAheadLib_liveInit;
PVOID pfnAheadLib_liveOggGetAutoRepeat;
PVOID pfnAheadLib_liveOggGetBuffPos;
PVOID pfnAheadLib_liveOggGetBuffSize;
PVOID pfnAheadLib_liveOggGetLen;
PVOID pfnAheadLib_liveOggGetPan;
PVOID pfnAheadLib_liveOggGetPosition;
PVOID pfnAheadLib_liveOggGetRepeatPos;
PVOID pfnAheadLib_liveOggGetVol;
PVOID pfnAheadLib_liveOggGetWritePos;
PVOID pfnAheadLib_liveOggIsEnd;
PVOID pfnAheadLib_liveOggIsPaused;
PVOID pfnAheadLib_liveOggIsPlaying;
PVOID pfnAheadLib_liveOggPause;
PVOID pfnAheadLib_liveOggPlay;
PVOID pfnAheadLib_liveOggSetAutoRepeat;
PVOID pfnAheadLib_liveOggSetPan;
PVOID pfnAheadLib_liveOggSetPosition;
PVOID pfnAheadLib_liveOggSetRepeatPos;
PVOID pfnAheadLib_liveOggSetVol;
PVOID pfnAheadLib_liveOggStrGetFormat;
PVOID pfnAheadLib_liveOggStrGetLen;
PVOID pfnAheadLib_liveOggStrGetPos;
PVOID pfnAheadLib_liveOggStrGetSize;
PVOID pfnAheadLib_liveOggStrRead;
PVOID pfnAheadLib_liveOggStrSetPos;
PVOID pfnAheadLib_liveOggStrmanAdd;
PVOID pfnAheadLib_liveOggStrmanDel;
PVOID pfnAheadLib_liveOggmanAdd;
PVOID pfnAheadLib_liveOggmanDel;
PVOID pfnAheadLib_liveOggmanGetCount;
PVOID pfnAheadLib_liveOggmanProcessEvent;
PVOID pfnAheadLib_liveOggmanRestore;
PVOID pfnAheadLib_liveOggmanSetUseThread;
PVOID pfnAheadLib_liveOggmanUpdate;
PVOID pfnAheadLib_liveScreenGetVideoMode;
PVOID pfnAheadLib_liveScreenGetVideoModeCount;
PVOID pfnAheadLib_liveScreenSetVideoMode;
PVOID pfnAheadLib_liveVersion;
PVOID pfnAheadLib_liveVideoGetAutoRepeat;
PVOID pfnAheadLib_liveVideoGetDC;
PVOID pfnAheadLib_liveVideoGetDIBInfo;
PVOID pfnAheadLib_liveVideoGetLen;
PVOID pfnAheadLib_liveVideoGetPan;
PVOID pfnAheadLib_liveVideoGetPosition;
PVOID pfnAheadLib_liveVideoGetSourceHeight;
PVOID pfnAheadLib_liveVideoGetSourceWidth;
PVOID pfnAheadLib_liveVideoGetVisible;
PVOID pfnAheadLib_liveVideoGetVol;
PVOID pfnAheadLib_liveVideoIsEnd;
PVOID pfnAheadLib_liveVideoIsPaused;
PVOID pfnAheadLib_liveVideoIsPlaying;
PVOID pfnAheadLib_liveVideoNeedPaint;
PVOID pfnAheadLib_liveVideoPause;
PVOID pfnAheadLib_liveVideoPlay;
PVOID pfnAheadLib_liveVideoReleaseDC;
PVOID pfnAheadLib_liveVideoResume;
PVOID pfnAheadLib_liveVideoSetAutoRepeat;
PVOID pfnAheadLib_liveVideoSetPan;
PVOID pfnAheadLib_liveVideoSetPosition;
PVOID pfnAheadLib_liveVideoSetRect;
PVOID pfnAheadLib_liveVideoSetVisible;
PVOID pfnAheadLib_liveVideoSetVol;
PVOID pfnAheadLib_liveVideoSuspend;
PVOID pfnAheadLib_liveVidmanAdd;
PVOID pfnAheadLib_liveVidmanDel;
PVOID pfnAheadLib_liveVidmanFreeDIB;
PVOID pfnAheadLib_liveVidmanGetDIB;
PVOID pfnAheadLib_liveVidmanPause;
PVOID pfnAheadLib_liveVidmanProcessEvent;
PVOID pfnAheadLib_liveVidmanRestart;
PVOID pfnAheadLib_liveVidmanResume;
PVOID pfnAheadLib_liveVidmanSuspend;
PVOID pfnAheadLib_liveWmpGetAutoRepeat;
PVOID pfnAheadLib_liveWmpGetBuffPos;
PVOID pfnAheadLib_liveWmpGetBuffSize;
PVOID pfnAheadLib_liveWmpGetLen;
PVOID pfnAheadLib_liveWmpGetPan;
PVOID pfnAheadLib_liveWmpGetPosition;
PVOID pfnAheadLib_liveWmpGetVol;
PVOID pfnAheadLib_liveWmpGetWritePos;
PVOID pfnAheadLib_liveWmpIsEnd;
PVOID pfnAheadLib_liveWmpIsPaused;
PVOID pfnAheadLib_liveWmpIsPlaying;
PVOID pfnAheadLib_liveWmpPause;
PVOID pfnAheadLib_liveWmpPlay;
PVOID pfnAheadLib_liveWmpSetAutoRepeat;
PVOID pfnAheadLib_liveWmpSetPan;
PVOID pfnAheadLib_liveWmpSetPosition;
PVOID pfnAheadLib_liveWmpSetVol;
PVOID pfnAheadLib_liveWmpmanAdd;
PVOID pfnAheadLib_liveWmpmanDel;
PVOID pfnAheadLib_liveWmpmanProcessEvent;
PVOID pfnAheadLib_liveWmpmanRestore;


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
	GetModuleFileName(NULL,tzPath,MAX_PATH); //获取本目录下的
	PathRemoveFileSpec(tzPath);

	//GetSystemDirectory(tzPath, MAX_PATH); //默认获取系统目录的

	lstrcat(tzPath, TEXT("\\live_ori.dll"));

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
	pfnAheadLib_liveFinal = GetAddress("liveFinal");
	pfnAheadLib_liveGetErrorID = GetAddress("liveGetErrorID");
	pfnAheadLib_liveInit = GetAddress("liveInit");
	pfnAheadLib_liveOggGetAutoRepeat = GetAddress("liveOggGetAutoRepeat");
	pfnAheadLib_liveOggGetBuffPos = GetAddress("liveOggGetBuffPos");
	pfnAheadLib_liveOggGetBuffSize = GetAddress("liveOggGetBuffSize");
	pfnAheadLib_liveOggGetLen = GetAddress("liveOggGetLen");
	pfnAheadLib_liveOggGetPan = GetAddress("liveOggGetPan");
	pfnAheadLib_liveOggGetPosition = GetAddress("liveOggGetPosition");
	pfnAheadLib_liveOggGetRepeatPos = GetAddress("liveOggGetRepeatPos");
	pfnAheadLib_liveOggGetVol = GetAddress("liveOggGetVol");
	pfnAheadLib_liveOggGetWritePos = GetAddress("liveOggGetWritePos");
	pfnAheadLib_liveOggIsEnd = GetAddress("liveOggIsEnd");
	pfnAheadLib_liveOggIsPaused = GetAddress("liveOggIsPaused");
	pfnAheadLib_liveOggIsPlaying = GetAddress("liveOggIsPlaying");
	pfnAheadLib_liveOggPause = GetAddress("liveOggPause");
	pfnAheadLib_liveOggPlay = GetAddress("liveOggPlay");
	pfnAheadLib_liveOggSetAutoRepeat = GetAddress("liveOggSetAutoRepeat");
	pfnAheadLib_liveOggSetPan = GetAddress("liveOggSetPan");
	pfnAheadLib_liveOggSetPosition = GetAddress("liveOggSetPosition");
	pfnAheadLib_liveOggSetRepeatPos = GetAddress("liveOggSetRepeatPos");
	pfnAheadLib_liveOggSetVol = GetAddress("liveOggSetVol");
	pfnAheadLib_liveOggStrGetFormat = GetAddress("liveOggStrGetFormat");
	pfnAheadLib_liveOggStrGetLen = GetAddress("liveOggStrGetLen");
	pfnAheadLib_liveOggStrGetPos = GetAddress("liveOggStrGetPos");
	pfnAheadLib_liveOggStrGetSize = GetAddress("liveOggStrGetSize");
	pfnAheadLib_liveOggStrRead = GetAddress("liveOggStrRead");
	pfnAheadLib_liveOggStrSetPos = GetAddress("liveOggStrSetPos");
	pfnAheadLib_liveOggStrmanAdd = GetAddress("liveOggStrmanAdd");
	pfnAheadLib_liveOggStrmanDel = GetAddress("liveOggStrmanDel");
	pfnAheadLib_liveOggmanAdd = GetAddress("liveOggmanAdd");
	pfnAheadLib_liveOggmanDel = GetAddress("liveOggmanDel");
	pfnAheadLib_liveOggmanGetCount = GetAddress("liveOggmanGetCount");
	pfnAheadLib_liveOggmanProcessEvent = GetAddress("liveOggmanProcessEvent");
	pfnAheadLib_liveOggmanRestore = GetAddress("liveOggmanRestore");
	pfnAheadLib_liveOggmanSetUseThread = GetAddress("liveOggmanSetUseThread");
	pfnAheadLib_liveOggmanUpdate = GetAddress("liveOggmanUpdate");
	pfnAheadLib_liveScreenGetVideoMode = GetAddress("liveScreenGetVideoMode");
	pfnAheadLib_liveScreenGetVideoModeCount = GetAddress("liveScreenGetVideoModeCount");
	pfnAheadLib_liveScreenSetVideoMode = GetAddress("liveScreenSetVideoMode");
	pfnAheadLib_liveVersion = GetAddress("liveVersion");
	pfnAheadLib_liveVideoGetAutoRepeat = GetAddress("liveVideoGetAutoRepeat");
	pfnAheadLib_liveVideoGetDC = GetAddress("liveVideoGetDC");
	pfnAheadLib_liveVideoGetDIBInfo = GetAddress("liveVideoGetDIBInfo");
	pfnAheadLib_liveVideoGetLen = GetAddress("liveVideoGetLen");
	pfnAheadLib_liveVideoGetPan = GetAddress("liveVideoGetPan");
	pfnAheadLib_liveVideoGetPosition = GetAddress("liveVideoGetPosition");
	pfnAheadLib_liveVideoGetSourceHeight = GetAddress("liveVideoGetSourceHeight");
	pfnAheadLib_liveVideoGetSourceWidth = GetAddress("liveVideoGetSourceWidth");
	pfnAheadLib_liveVideoGetVisible = GetAddress("liveVideoGetVisible");
	pfnAheadLib_liveVideoGetVol = GetAddress("liveVideoGetVol");
	pfnAheadLib_liveVideoIsEnd = GetAddress("liveVideoIsEnd");
	pfnAheadLib_liveVideoIsPaused = GetAddress("liveVideoIsPaused");
	pfnAheadLib_liveVideoIsPlaying = GetAddress("liveVideoIsPlaying");
	pfnAheadLib_liveVideoNeedPaint = GetAddress("liveVideoNeedPaint");
	pfnAheadLib_liveVideoPause = GetAddress("liveVideoPause");
	pfnAheadLib_liveVideoPlay = GetAddress("liveVideoPlay");
	pfnAheadLib_liveVideoReleaseDC = GetAddress("liveVideoReleaseDC");
	pfnAheadLib_liveVideoResume = GetAddress("liveVideoResume");
	pfnAheadLib_liveVideoSetAutoRepeat = GetAddress("liveVideoSetAutoRepeat");
	pfnAheadLib_liveVideoSetPan = GetAddress("liveVideoSetPan");
	pfnAheadLib_liveVideoSetPosition = GetAddress("liveVideoSetPosition");
	pfnAheadLib_liveVideoSetRect = GetAddress("liveVideoSetRect");
	pfnAheadLib_liveVideoSetVisible = GetAddress("liveVideoSetVisible");
	pfnAheadLib_liveVideoSetVol = GetAddress("liveVideoSetVol");
	pfnAheadLib_liveVideoSuspend = GetAddress("liveVideoSuspend");
	pfnAheadLib_liveVidmanAdd = GetAddress("liveVidmanAdd");
	pfnAheadLib_liveVidmanDel = GetAddress("liveVidmanDel");
	pfnAheadLib_liveVidmanFreeDIB = GetAddress("liveVidmanFreeDIB");
	pfnAheadLib_liveVidmanGetDIB = GetAddress("liveVidmanGetDIB");
	pfnAheadLib_liveVidmanPause = GetAddress("liveVidmanPause");
	pfnAheadLib_liveVidmanProcessEvent = GetAddress("liveVidmanProcessEvent");
	pfnAheadLib_liveVidmanRestart = GetAddress("liveVidmanRestart");
	pfnAheadLib_liveVidmanResume = GetAddress("liveVidmanResume");
	pfnAheadLib_liveVidmanSuspend = GetAddress("liveVidmanSuspend");
	pfnAheadLib_liveWmpGetAutoRepeat = GetAddress("liveWmpGetAutoRepeat");
	pfnAheadLib_liveWmpGetBuffPos = GetAddress("liveWmpGetBuffPos");
	pfnAheadLib_liveWmpGetBuffSize = GetAddress("liveWmpGetBuffSize");
	pfnAheadLib_liveWmpGetLen = GetAddress("liveWmpGetLen");
	pfnAheadLib_liveWmpGetPan = GetAddress("liveWmpGetPan");
	pfnAheadLib_liveWmpGetPosition = GetAddress("liveWmpGetPosition");
	pfnAheadLib_liveWmpGetVol = GetAddress("liveWmpGetVol");
	pfnAheadLib_liveWmpGetWritePos = GetAddress("liveWmpGetWritePos");
	pfnAheadLib_liveWmpIsEnd = GetAddress("liveWmpIsEnd");
	pfnAheadLib_liveWmpIsPaused = GetAddress("liveWmpIsPaused");
	pfnAheadLib_liveWmpIsPlaying = GetAddress("liveWmpIsPlaying");
	pfnAheadLib_liveWmpPause = GetAddress("liveWmpPause");
	pfnAheadLib_liveWmpPlay = GetAddress("liveWmpPlay");
	pfnAheadLib_liveWmpSetAutoRepeat = GetAddress("liveWmpSetAutoRepeat");
	pfnAheadLib_liveWmpSetPan = GetAddress("liveWmpSetPan");
	pfnAheadLib_liveWmpSetPosition = GetAddress("liveWmpSetPosition");
	pfnAheadLib_liveWmpSetVol = GetAddress("liveWmpSetVol");
	pfnAheadLib_liveWmpmanAdd = GetAddress("liveWmpmanAdd");
	pfnAheadLib_liveWmpmanDel = GetAddress("liveWmpmanDel");
	pfnAheadLib_liveWmpmanProcessEvent = GetAddress("liveWmpmanProcessEvent");
	pfnAheadLib_liveWmpmanRestore = GetAddress("liveWmpmanRestore");
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



EXTERN_C __declspec(naked) void __cdecl AheadLib_liveFinal(void)
{
	__asm jmp pfnAheadLib_liveFinal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveGetErrorID(void)
{
	__asm jmp pfnAheadLib_liveGetErrorID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveInit(void)
{
	__asm jmp pfnAheadLib_liveInit;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetAutoRepeat(void)
{
	__asm jmp pfnAheadLib_liveOggGetAutoRepeat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetBuffPos(void)
{
	__asm jmp pfnAheadLib_liveOggGetBuffPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetBuffSize(void)
{
	__asm jmp pfnAheadLib_liveOggGetBuffSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetLen(void)
{
	__asm jmp pfnAheadLib_liveOggGetLen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetPan(void)
{
	__asm jmp pfnAheadLib_liveOggGetPan;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetPosition(void)
{
	__asm jmp pfnAheadLib_liveOggGetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetRepeatPos(void)
{
	__asm jmp pfnAheadLib_liveOggGetRepeatPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetVol(void)
{
	__asm jmp pfnAheadLib_liveOggGetVol;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggGetWritePos(void)
{
	__asm jmp pfnAheadLib_liveOggGetWritePos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggIsEnd(void)
{
	__asm jmp pfnAheadLib_liveOggIsEnd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggIsPaused(void)
{
	__asm jmp pfnAheadLib_liveOggIsPaused;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggIsPlaying(void)
{
	__asm jmp pfnAheadLib_liveOggIsPlaying;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggPause(void)
{
	__asm jmp pfnAheadLib_liveOggPause;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggPlay(void)
{
	__asm jmp pfnAheadLib_liveOggPlay;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggSetAutoRepeat(void)
{
	__asm jmp pfnAheadLib_liveOggSetAutoRepeat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggSetPan(void)
{
	__asm jmp pfnAheadLib_liveOggSetPan;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggSetPosition(void)
{
	__asm jmp pfnAheadLib_liveOggSetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggSetRepeatPos(void)
{
	__asm jmp pfnAheadLib_liveOggSetRepeatPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggSetVol(void)
{
	__asm jmp pfnAheadLib_liveOggSetVol;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrGetFormat(void)
{
	__asm jmp pfnAheadLib_liveOggStrGetFormat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrGetLen(void)
{
	__asm jmp pfnAheadLib_liveOggStrGetLen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrGetPos(void)
{
	__asm jmp pfnAheadLib_liveOggStrGetPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrGetSize(void)
{
	__asm jmp pfnAheadLib_liveOggStrGetSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrRead(void)
{
	__asm jmp pfnAheadLib_liveOggStrRead;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrSetPos(void)
{
	__asm jmp pfnAheadLib_liveOggStrSetPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrmanAdd(void)
{
	__asm jmp pfnAheadLib_liveOggStrmanAdd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggStrmanDel(void)
{
	__asm jmp pfnAheadLib_liveOggStrmanDel;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanAdd(void)
{
	__asm jmp pfnAheadLib_liveOggmanAdd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanDel(void)
{
	__asm jmp pfnAheadLib_liveOggmanDel;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanGetCount(void)
{
	__asm jmp pfnAheadLib_liveOggmanGetCount;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanProcessEvent(void)
{
	__asm jmp pfnAheadLib_liveOggmanProcessEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanRestore(void)
{
	__asm jmp pfnAheadLib_liveOggmanRestore;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanSetUseThread(void)
{
	__asm jmp pfnAheadLib_liveOggmanSetUseThread;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveOggmanUpdate(void)
{
	__asm jmp pfnAheadLib_liveOggmanUpdate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveScreenGetVideoMode(void)
{
	__asm jmp pfnAheadLib_liveScreenGetVideoMode;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveScreenGetVideoModeCount(void)
{
	__asm jmp pfnAheadLib_liveScreenGetVideoModeCount;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveScreenSetVideoMode(void)
{
	__asm jmp pfnAheadLib_liveScreenSetVideoMode;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVersion(void)
{
	__asm jmp pfnAheadLib_liveVersion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetAutoRepeat(void)
{
	__asm jmp pfnAheadLib_liveVideoGetAutoRepeat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetDC(void)
{
	__asm jmp pfnAheadLib_liveVideoGetDC;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetDIBInfo(void)
{
	__asm jmp pfnAheadLib_liveVideoGetDIBInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetLen(void)
{
	__asm jmp pfnAheadLib_liveVideoGetLen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetPan(void)
{
	__asm jmp pfnAheadLib_liveVideoGetPan;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetPosition(void)
{
	__asm jmp pfnAheadLib_liveVideoGetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetSourceHeight(void)
{
	__asm jmp pfnAheadLib_liveVideoGetSourceHeight;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetSourceWidth(void)
{
	__asm jmp pfnAheadLib_liveVideoGetSourceWidth;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetVisible(void)
{
	__asm jmp pfnAheadLib_liveVideoGetVisible;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoGetVol(void)
{
	__asm jmp pfnAheadLib_liveVideoGetVol;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoIsEnd(void)
{
	__asm jmp pfnAheadLib_liveVideoIsEnd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoIsPaused(void)
{
	__asm jmp pfnAheadLib_liveVideoIsPaused;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoIsPlaying(void)
{
	__asm jmp pfnAheadLib_liveVideoIsPlaying;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoNeedPaint(void)
{
	__asm jmp pfnAheadLib_liveVideoNeedPaint;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoPause(void)
{
	__asm jmp pfnAheadLib_liveVideoPause;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoPlay(void)
{
	__asm jmp pfnAheadLib_liveVideoPlay;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoReleaseDC(void)
{
	__asm jmp pfnAheadLib_liveVideoReleaseDC;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoResume(void)
{
	__asm jmp pfnAheadLib_liveVideoResume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSetAutoRepeat(void)
{
	__asm jmp pfnAheadLib_liveVideoSetAutoRepeat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSetPan(void)
{
	__asm jmp pfnAheadLib_liveVideoSetPan;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSetPosition(void)
{
	__asm jmp pfnAheadLib_liveVideoSetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSetRect(void)
{
	__asm jmp pfnAheadLib_liveVideoSetRect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSetVisible(void)
{
	__asm jmp pfnAheadLib_liveVideoSetVisible;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSetVol(void)
{
	__asm jmp pfnAheadLib_liveVideoSetVol;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVideoSuspend(void)
{
	__asm jmp pfnAheadLib_liveVideoSuspend;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanAdd(void)
{
	__asm jmp pfnAheadLib_liveVidmanAdd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanDel(void)
{
	__asm jmp pfnAheadLib_liveVidmanDel;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanFreeDIB(void)
{
	__asm jmp pfnAheadLib_liveVidmanFreeDIB;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanGetDIB(void)
{
	__asm jmp pfnAheadLib_liveVidmanGetDIB;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanPause(void)
{
	__asm jmp pfnAheadLib_liveVidmanPause;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanProcessEvent(void)
{
	__asm jmp pfnAheadLib_liveVidmanProcessEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanRestart(void)
{
	__asm jmp pfnAheadLib_liveVidmanRestart;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanResume(void)
{
	__asm jmp pfnAheadLib_liveVidmanResume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveVidmanSuspend(void)
{
	__asm jmp pfnAheadLib_liveVidmanSuspend;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetAutoRepeat(void)
{
	__asm jmp pfnAheadLib_liveWmpGetAutoRepeat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetBuffPos(void)
{
	__asm jmp pfnAheadLib_liveWmpGetBuffPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetBuffSize(void)
{
	__asm jmp pfnAheadLib_liveWmpGetBuffSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetLen(void)
{
	__asm jmp pfnAheadLib_liveWmpGetLen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetPan(void)
{
	__asm jmp pfnAheadLib_liveWmpGetPan;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetPosition(void)
{
	__asm jmp pfnAheadLib_liveWmpGetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetVol(void)
{
	__asm jmp pfnAheadLib_liveWmpGetVol;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpGetWritePos(void)
{
	__asm jmp pfnAheadLib_liveWmpGetWritePos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpIsEnd(void)
{
	__asm jmp pfnAheadLib_liveWmpIsEnd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpIsPaused(void)
{
	__asm jmp pfnAheadLib_liveWmpIsPaused;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpIsPlaying(void)
{
	__asm jmp pfnAheadLib_liveWmpIsPlaying;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpPause(void)
{
	__asm jmp pfnAheadLib_liveWmpPause;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpPlay(void)
{
	__asm jmp pfnAheadLib_liveWmpPlay;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpSetAutoRepeat(void)
{
	__asm jmp pfnAheadLib_liveWmpSetAutoRepeat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpSetPan(void)
{
	__asm jmp pfnAheadLib_liveWmpSetPan;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpSetPosition(void)
{
	__asm jmp pfnAheadLib_liveWmpSetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpSetVol(void)
{
	__asm jmp pfnAheadLib_liveWmpSetVol;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpmanAdd(void)
{
	__asm jmp pfnAheadLib_liveWmpmanAdd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpmanDel(void)
{
	__asm jmp pfnAheadLib_liveWmpmanDel;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpmanProcessEvent(void)
{
	__asm jmp pfnAheadLib_liveWmpmanProcessEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_liveWmpmanRestore(void)
{
	__asm jmp pfnAheadLib_liveWmpmanRestore;
}

