
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:DirectSoundCreate=_AheadLib_DirectSoundCreate,@1")
#pragma comment(linker, "/EXPORT:ImmAssociateContext=_AheadLib_ImmAssociateContext,@2")
#pragma comment(linker, "/EXPORT:ImmGetCompositionStringA=_AheadLib_ImmGetCompositionStringA,@3")
#pragma comment(linker, "/EXPORT:ImmGetContext=_AheadLib_ImmGetContext,@4")
#pragma comment(linker, "/EXPORT:ImmGetOpenStatus=_AheadLib_ImmGetOpenStatus,@5")
#pragma comment(linker, "/EXPORT:ImmGetStatusWindowPos=_AheadLib_ImmGetStatusWindowPos,@6")
#pragma comment(linker, "/EXPORT:ImmReleaseContext=_AheadLib_ImmReleaseContext,@7")
#pragma comment(linker, "/EXPORT:ImmSetCompositionFontA=_AheadLib_ImmSetCompositionFontA,@8")
#pragma comment(linker, "/EXPORT:ImmSetCompositionWindow=_AheadLib_ImmSetCompositionWindow,@9")
#pragma comment(linker, "/EXPORT:ImmSetOpenStatus=_AheadLib_ImmSetOpenStatus,@10")
#pragma comment(linker, "/EXPORT:ImmSetStatusWindowPos=_AheadLib_ImmSetStatusWindowPos,@11")
#pragma comment(linker, "/EXPORT:InitCommonControls=_AheadLib_InitCommonControls,@12")
#pragma comment(linker, "/EXPORT:MapFileAndCheckSumA=_AheadLib_MapFileAndCheckSumA,@13")

EXTERN_C PVOID AheadLib_DirectSoundCreate[89] = { 0 };
EXTERN_C PVOID AheadLib_ImmAssociateContext[83] = { 0 };
EXTERN_C PVOID AheadLib_ImmGetCompositionStringA[76] = { 0 };
EXTERN_C PVOID AheadLib_ImmGetContext[69] = { 0 };
EXTERN_C PVOID AheadLib_ImmGetOpenStatus[64] = { 0 };
EXTERN_C PVOID AheadLib_ImmGetStatusWindowPos[58] = { 0 };
EXTERN_C PVOID AheadLib_ImmReleaseContext[51] = { 0 };
EXTERN_C PVOID AheadLib_ImmSetCompositionFontA[45] = { 0 };
EXTERN_C PVOID AheadLib_ImmSetCompositionWindow[38] = { 0 };
EXTERN_C PVOID AheadLib_ImmSetOpenStatus[30] = { 0 };
EXTERN_C PVOID AheadLib_ImmSetStatusWindowPos[24] = { 0 };
EXTERN_C PVOID AheadLib_InitCommonControls[17] = { 0 };
EXTERN_C PVOID AheadLib_MapFileAndCheckSumA[10] = { 0 };

PVOID pfnAheadLib_DirectSoundCreate;
PVOID pfnAheadLib_ImmAssociateContext;
PVOID pfnAheadLib_ImmGetCompositionStringA;
PVOID pfnAheadLib_ImmGetContext;
PVOID pfnAheadLib_ImmGetOpenStatus;
PVOID pfnAheadLib_ImmGetStatusWindowPos;
PVOID pfnAheadLib_ImmReleaseContext;
PVOID pfnAheadLib_ImmSetCompositionFontA;
PVOID pfnAheadLib_ImmSetCompositionWindow;
PVOID pfnAheadLib_ImmSetOpenStatus;
PVOID pfnAheadLib_ImmSetStatusWindowPos;
PVOID pfnAheadLib_InitCommonControls;
PVOID pfnAheadLib_MapFileAndCheckSumA;


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

	lstrcat(tzPath, TEXT("\\kDays_.dll"));

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
	pfnAheadLib_DirectSoundCreate = GetAddress("DirectSoundCreate");
	memcpy(AheadLib_DirectSoundCreate,pfnAheadLib_DirectSoundCreate,sizeof(PVOID) * 89);
	pfnAheadLib_ImmAssociateContext = GetAddress("ImmAssociateContext");
	memcpy(AheadLib_ImmAssociateContext,pfnAheadLib_ImmAssociateContext,sizeof(PVOID) * 83);
	pfnAheadLib_ImmGetCompositionStringA = GetAddress("ImmGetCompositionStringA");
	memcpy(AheadLib_ImmGetCompositionStringA,pfnAheadLib_ImmGetCompositionStringA,sizeof(PVOID) * 76);
	pfnAheadLib_ImmGetContext = GetAddress("ImmGetContext");
	memcpy(AheadLib_ImmGetContext,pfnAheadLib_ImmGetContext,sizeof(PVOID) * 69);
	pfnAheadLib_ImmGetOpenStatus = GetAddress("ImmGetOpenStatus");
	memcpy(AheadLib_ImmGetOpenStatus,pfnAheadLib_ImmGetOpenStatus,sizeof(PVOID) * 64);
	pfnAheadLib_ImmGetStatusWindowPos = GetAddress("ImmGetStatusWindowPos");
	memcpy(AheadLib_ImmGetStatusWindowPos,pfnAheadLib_ImmGetStatusWindowPos,sizeof(PVOID) * 58);
	pfnAheadLib_ImmReleaseContext = GetAddress("ImmReleaseContext");
	memcpy(AheadLib_ImmReleaseContext,pfnAheadLib_ImmReleaseContext,sizeof(PVOID) * 51);
	pfnAheadLib_ImmSetCompositionFontA = GetAddress("ImmSetCompositionFontA");
	memcpy(AheadLib_ImmSetCompositionFontA,pfnAheadLib_ImmSetCompositionFontA,sizeof(PVOID) * 45);
	pfnAheadLib_ImmSetCompositionWindow = GetAddress("ImmSetCompositionWindow");
	memcpy(AheadLib_ImmSetCompositionWindow,pfnAheadLib_ImmSetCompositionWindow,sizeof(PVOID) * 38);
	pfnAheadLib_ImmSetOpenStatus = GetAddress("ImmSetOpenStatus");
	memcpy(AheadLib_ImmSetOpenStatus,pfnAheadLib_ImmSetOpenStatus,sizeof(PVOID) * 30);
	pfnAheadLib_ImmSetStatusWindowPos = GetAddress("ImmSetStatusWindowPos");
	memcpy(AheadLib_ImmSetStatusWindowPos,pfnAheadLib_ImmSetStatusWindowPos,sizeof(PVOID) * 24);
	pfnAheadLib_InitCommonControls = GetAddress("InitCommonControls");
	memcpy(AheadLib_InitCommonControls,pfnAheadLib_InitCommonControls,sizeof(PVOID) * 17);
	pfnAheadLib_MapFileAndCheckSumA = GetAddress("MapFileAndCheckSumA");
	memcpy(AheadLib_MapFileAndCheckSumA,pfnAheadLib_MapFileAndCheckSumA,sizeof(PVOID) * 10);
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
