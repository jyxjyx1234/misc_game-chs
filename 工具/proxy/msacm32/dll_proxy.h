
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:XRegThunkEntry=_AheadLib_XRegThunkEntry,@1")
#pragma comment(linker, "/EXPORT:acmDriverAddA=_AheadLib_acmDriverAddA,@2")
#pragma comment(linker, "/EXPORT:acmDriverAddW=_AheadLib_acmDriverAddW,@3")
#pragma comment(linker, "/EXPORT:acmDriverClose=_AheadLib_acmDriverClose,@4")
#pragma comment(linker, "/EXPORT:acmDriverDetailsA=_AheadLib_acmDriverDetailsA,@5")
#pragma comment(linker, "/EXPORT:acmDriverDetailsW=_AheadLib_acmDriverDetailsW,@6")
#pragma comment(linker, "/EXPORT:acmDriverEnum=_AheadLib_acmDriverEnum,@7")
#pragma comment(linker, "/EXPORT:acmDriverID=_AheadLib_acmDriverID,@8")
#pragma comment(linker, "/EXPORT:acmDriverMessage=_AheadLib_acmDriverMessage,@9")
#pragma comment(linker, "/EXPORT:acmDriverOpen=_AheadLib_acmDriverOpen,@10")
#pragma comment(linker, "/EXPORT:acmDriverPriority=_AheadLib_acmDriverPriority,@11")
#pragma comment(linker, "/EXPORT:acmDriverRemove=_AheadLib_acmDriverRemove,@12")
#pragma comment(linker, "/EXPORT:acmFilterChooseA=_AheadLib_acmFilterChooseA,@13")
#pragma comment(linker, "/EXPORT:acmFilterChooseW=_AheadLib_acmFilterChooseW,@14")
#pragma comment(linker, "/EXPORT:acmFilterDetailsA=_AheadLib_acmFilterDetailsA,@15")
#pragma comment(linker, "/EXPORT:acmFilterDetailsW=_AheadLib_acmFilterDetailsW,@16")
#pragma comment(linker, "/EXPORT:acmFilterEnumA=_AheadLib_acmFilterEnumA,@17")
#pragma comment(linker, "/EXPORT:acmFilterEnumW=_AheadLib_acmFilterEnumW,@18")
#pragma comment(linker, "/EXPORT:acmFilterTagDetailsA=_AheadLib_acmFilterTagDetailsA,@19")
#pragma comment(linker, "/EXPORT:acmFilterTagDetailsW=_AheadLib_acmFilterTagDetailsW,@20")
#pragma comment(linker, "/EXPORT:acmFilterTagEnumA=_AheadLib_acmFilterTagEnumA,@21")
#pragma comment(linker, "/EXPORT:acmFilterTagEnumW=_AheadLib_acmFilterTagEnumW,@22")
#pragma comment(linker, "/EXPORT:acmFormatChooseA=_AheadLib_acmFormatChooseA,@23")
#pragma comment(linker, "/EXPORT:acmFormatChooseW=_AheadLib_acmFormatChooseW,@24")
#pragma comment(linker, "/EXPORT:acmFormatDetailsA=_AheadLib_acmFormatDetailsA,@25")
#pragma comment(linker, "/EXPORT:acmFormatDetailsW=_AheadLib_acmFormatDetailsW,@26")
#pragma comment(linker, "/EXPORT:acmFormatEnumA=_AheadLib_acmFormatEnumA,@27")
#pragma comment(linker, "/EXPORT:acmFormatEnumW=_AheadLib_acmFormatEnumW,@28")
#pragma comment(linker, "/EXPORT:acmFormatSuggest=_AheadLib_acmFormatSuggest,@29")
#pragma comment(linker, "/EXPORT:acmFormatTagDetailsA=_AheadLib_acmFormatTagDetailsA,@30")
#pragma comment(linker, "/EXPORT:acmFormatTagDetailsW=_AheadLib_acmFormatTagDetailsW,@31")
#pragma comment(linker, "/EXPORT:acmFormatTagEnumA=_AheadLib_acmFormatTagEnumA,@32")
#pragma comment(linker, "/EXPORT:acmFormatTagEnumW=_AheadLib_acmFormatTagEnumW,@33")
#pragma comment(linker, "/EXPORT:acmGetVersion=_AheadLib_acmGetVersion,@34")
#pragma comment(linker, "/EXPORT:acmMessage32=_AheadLib_acmMessage32,@35")
#pragma comment(linker, "/EXPORT:acmMetrics=_AheadLib_acmMetrics,@36")
#pragma comment(linker, "/EXPORT:acmStreamClose=_AheadLib_acmStreamClose,@37")
#pragma comment(linker, "/EXPORT:acmStreamConvert=_AheadLib_acmStreamConvert,@38")
#pragma comment(linker, "/EXPORT:acmStreamMessage=_AheadLib_acmStreamMessage,@39")
#pragma comment(linker, "/EXPORT:acmStreamOpen=_AheadLib_acmStreamOpen,@40")
#pragma comment(linker, "/EXPORT:acmStreamPrepareHeader=_AheadLib_acmStreamPrepareHeader,@41")
#pragma comment(linker, "/EXPORT:acmStreamReset=_AheadLib_acmStreamReset,@42")
#pragma comment(linker, "/EXPORT:acmStreamSize=_AheadLib_acmStreamSize,@43")
#pragma comment(linker, "/EXPORT:acmStreamUnprepareHeader=_AheadLib_acmStreamUnprepareHeader,@44")


PVOID pfnAheadLib_XRegThunkEntry;
PVOID pfnAheadLib_acmDriverAddA;
PVOID pfnAheadLib_acmDriverAddW;
PVOID pfnAheadLib_acmDriverClose;
PVOID pfnAheadLib_acmDriverDetailsA;
PVOID pfnAheadLib_acmDriverDetailsW;
PVOID pfnAheadLib_acmDriverEnum;
PVOID pfnAheadLib_acmDriverID;
PVOID pfnAheadLib_acmDriverMessage;
PVOID pfnAheadLib_acmDriverOpen;
PVOID pfnAheadLib_acmDriverPriority;
PVOID pfnAheadLib_acmDriverRemove;
PVOID pfnAheadLib_acmFilterChooseA;
PVOID pfnAheadLib_acmFilterChooseW;
PVOID pfnAheadLib_acmFilterDetailsA;
PVOID pfnAheadLib_acmFilterDetailsW;
PVOID pfnAheadLib_acmFilterEnumA;
PVOID pfnAheadLib_acmFilterEnumW;
PVOID pfnAheadLib_acmFilterTagDetailsA;
PVOID pfnAheadLib_acmFilterTagDetailsW;
PVOID pfnAheadLib_acmFilterTagEnumA;
PVOID pfnAheadLib_acmFilterTagEnumW;
PVOID pfnAheadLib_acmFormatChooseA;
PVOID pfnAheadLib_acmFormatChooseW;
PVOID pfnAheadLib_acmFormatDetailsA;
PVOID pfnAheadLib_acmFormatDetailsW;
PVOID pfnAheadLib_acmFormatEnumA;
PVOID pfnAheadLib_acmFormatEnumW;
PVOID pfnAheadLib_acmFormatSuggest;
PVOID pfnAheadLib_acmFormatTagDetailsA;
PVOID pfnAheadLib_acmFormatTagDetailsW;
PVOID pfnAheadLib_acmFormatTagEnumA;
PVOID pfnAheadLib_acmFormatTagEnumW;
PVOID pfnAheadLib_acmGetVersion;
PVOID pfnAheadLib_acmMessage32;
PVOID pfnAheadLib_acmMetrics;
PVOID pfnAheadLib_acmStreamClose;
PVOID pfnAheadLib_acmStreamConvert;
PVOID pfnAheadLib_acmStreamMessage;
PVOID pfnAheadLib_acmStreamOpen;
PVOID pfnAheadLib_acmStreamPrepareHeader;
PVOID pfnAheadLib_acmStreamReset;
PVOID pfnAheadLib_acmStreamSize;
PVOID pfnAheadLib_acmStreamUnprepareHeader;


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

	lstrcat(tzPath, TEXT("\\msacm32.dll"));

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
	pfnAheadLib_XRegThunkEntry = GetAddress("XRegThunkEntry");
	pfnAheadLib_acmDriverAddA = GetAddress("acmDriverAddA");
	pfnAheadLib_acmDriverAddW = GetAddress("acmDriverAddW");
	pfnAheadLib_acmDriverClose = GetAddress("acmDriverClose");
	pfnAheadLib_acmDriverDetailsA = GetAddress("acmDriverDetailsA");
	pfnAheadLib_acmDriverDetailsW = GetAddress("acmDriverDetailsW");
	pfnAheadLib_acmDriverEnum = GetAddress("acmDriverEnum");
	pfnAheadLib_acmDriverID = GetAddress("acmDriverID");
	pfnAheadLib_acmDriverMessage = GetAddress("acmDriverMessage");
	pfnAheadLib_acmDriverOpen = GetAddress("acmDriverOpen");
	pfnAheadLib_acmDriverPriority = GetAddress("acmDriverPriority");
	pfnAheadLib_acmDriverRemove = GetAddress("acmDriverRemove");
	pfnAheadLib_acmFilterChooseA = GetAddress("acmFilterChooseA");
	pfnAheadLib_acmFilterChooseW = GetAddress("acmFilterChooseW");
	pfnAheadLib_acmFilterDetailsA = GetAddress("acmFilterDetailsA");
	pfnAheadLib_acmFilterDetailsW = GetAddress("acmFilterDetailsW");
	pfnAheadLib_acmFilterEnumA = GetAddress("acmFilterEnumA");
	pfnAheadLib_acmFilterEnumW = GetAddress("acmFilterEnumW");
	pfnAheadLib_acmFilterTagDetailsA = GetAddress("acmFilterTagDetailsA");
	pfnAheadLib_acmFilterTagDetailsW = GetAddress("acmFilterTagDetailsW");
	pfnAheadLib_acmFilterTagEnumA = GetAddress("acmFilterTagEnumA");
	pfnAheadLib_acmFilterTagEnumW = GetAddress("acmFilterTagEnumW");
	pfnAheadLib_acmFormatChooseA = GetAddress("acmFormatChooseA");
	pfnAheadLib_acmFormatChooseW = GetAddress("acmFormatChooseW");
	pfnAheadLib_acmFormatDetailsA = GetAddress("acmFormatDetailsA");
	pfnAheadLib_acmFormatDetailsW = GetAddress("acmFormatDetailsW");
	pfnAheadLib_acmFormatEnumA = GetAddress("acmFormatEnumA");
	pfnAheadLib_acmFormatEnumW = GetAddress("acmFormatEnumW");
	pfnAheadLib_acmFormatSuggest = GetAddress("acmFormatSuggest");
	pfnAheadLib_acmFormatTagDetailsA = GetAddress("acmFormatTagDetailsA");
	pfnAheadLib_acmFormatTagDetailsW = GetAddress("acmFormatTagDetailsW");
	pfnAheadLib_acmFormatTagEnumA = GetAddress("acmFormatTagEnumA");
	pfnAheadLib_acmFormatTagEnumW = GetAddress("acmFormatTagEnumW");
	pfnAheadLib_acmGetVersion = GetAddress("acmGetVersion");
	pfnAheadLib_acmMessage32 = GetAddress("acmMessage32");
	pfnAheadLib_acmMetrics = GetAddress("acmMetrics");
	pfnAheadLib_acmStreamClose = GetAddress("acmStreamClose");
	pfnAheadLib_acmStreamConvert = GetAddress("acmStreamConvert");
	pfnAheadLib_acmStreamMessage = GetAddress("acmStreamMessage");
	pfnAheadLib_acmStreamOpen = GetAddress("acmStreamOpen");
	pfnAheadLib_acmStreamPrepareHeader = GetAddress("acmStreamPrepareHeader");
	pfnAheadLib_acmStreamReset = GetAddress("acmStreamReset");
	pfnAheadLib_acmStreamSize = GetAddress("acmStreamSize");
	pfnAheadLib_acmStreamUnprepareHeader = GetAddress("acmStreamUnprepareHeader");
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



EXTERN_C __declspec(naked) void __cdecl AheadLib_XRegThunkEntry(void)
{
	__asm jmp pfnAheadLib_XRegThunkEntry;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverAddA(void)
{
	__asm jmp pfnAheadLib_acmDriverAddA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverAddW(void)
{
	__asm jmp pfnAheadLib_acmDriverAddW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverClose(void)
{
	__asm jmp pfnAheadLib_acmDriverClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverDetailsA(void)
{
	__asm jmp pfnAheadLib_acmDriverDetailsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverDetailsW(void)
{
	__asm jmp pfnAheadLib_acmDriverDetailsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverEnum(void)
{
	__asm jmp pfnAheadLib_acmDriverEnum;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverID(void)
{
	__asm jmp pfnAheadLib_acmDriverID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverMessage(void)
{
	__asm jmp pfnAheadLib_acmDriverMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverOpen(void)
{
	__asm jmp pfnAheadLib_acmDriverOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverPriority(void)
{
	__asm jmp pfnAheadLib_acmDriverPriority;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmDriverRemove(void)
{
	__asm jmp pfnAheadLib_acmDriverRemove;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterChooseA(void)
{
	__asm jmp pfnAheadLib_acmFilterChooseA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterChooseW(void)
{
	__asm jmp pfnAheadLib_acmFilterChooseW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterDetailsA(void)
{
	__asm jmp pfnAheadLib_acmFilterDetailsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterDetailsW(void)
{
	__asm jmp pfnAheadLib_acmFilterDetailsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterEnumA(void)
{
	__asm jmp pfnAheadLib_acmFilterEnumA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterEnumW(void)
{
	__asm jmp pfnAheadLib_acmFilterEnumW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterTagDetailsA(void)
{
	__asm jmp pfnAheadLib_acmFilterTagDetailsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterTagDetailsW(void)
{
	__asm jmp pfnAheadLib_acmFilterTagDetailsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterTagEnumA(void)
{
	__asm jmp pfnAheadLib_acmFilterTagEnumA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFilterTagEnumW(void)
{
	__asm jmp pfnAheadLib_acmFilterTagEnumW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatChooseA(void)
{
	__asm jmp pfnAheadLib_acmFormatChooseA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatChooseW(void)
{
	__asm jmp pfnAheadLib_acmFormatChooseW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatDetailsA(void)
{
	__asm jmp pfnAheadLib_acmFormatDetailsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatDetailsW(void)
{
	__asm jmp pfnAheadLib_acmFormatDetailsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatEnumA(void)
{
	__asm jmp pfnAheadLib_acmFormatEnumA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatEnumW(void)
{
	__asm jmp pfnAheadLib_acmFormatEnumW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatSuggest(void)
{
	__asm jmp pfnAheadLib_acmFormatSuggest;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatTagDetailsA(void)
{
	__asm jmp pfnAheadLib_acmFormatTagDetailsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatTagDetailsW(void)
{
	__asm jmp pfnAheadLib_acmFormatTagDetailsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatTagEnumA(void)
{
	__asm jmp pfnAheadLib_acmFormatTagEnumA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmFormatTagEnumW(void)
{
	__asm jmp pfnAheadLib_acmFormatTagEnumW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmGetVersion(void)
{
	__asm jmp pfnAheadLib_acmGetVersion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmMessage32(void)
{
	__asm jmp pfnAheadLib_acmMessage32;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmMetrics(void)
{
	__asm jmp pfnAheadLib_acmMetrics;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamClose(void)
{
	__asm jmp pfnAheadLib_acmStreamClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamConvert(void)
{
	__asm jmp pfnAheadLib_acmStreamConvert;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamMessage(void)
{
	__asm jmp pfnAheadLib_acmStreamMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamOpen(void)
{
	__asm jmp pfnAheadLib_acmStreamOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamPrepareHeader(void)
{
	__asm jmp pfnAheadLib_acmStreamPrepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamReset(void)
{
	__asm jmp pfnAheadLib_acmStreamReset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamSize(void)
{
	__asm jmp pfnAheadLib_acmStreamSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_acmStreamUnprepareHeader(void)
{
	__asm jmp pfnAheadLib_acmStreamUnprepareHeader;
}

