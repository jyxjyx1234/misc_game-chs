
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "readconfig.h"

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:DirectSoundCreate=_AheadLib_DirectSoundCreate,@1")
#pragma comment(linker, "/EXPORT:DirectSoundEnumerateA=_AheadLib_DirectSoundEnumerateA,@2")
#pragma comment(linker, "/EXPORT:DirectSoundEnumerateW=_AheadLib_DirectSoundEnumerateW,@3")
#pragma comment(linker, "/EXPORT:DllCanUnloadNow=_AheadLib_DllCanUnloadNow,@4")
#pragma comment(linker, "/EXPORT:DllGetClassObject=_AheadLib_DllGetClassObject,@5")
#pragma comment(linker, "/EXPORT:DirectSoundCaptureCreate=_AheadLib_DirectSoundCaptureCreate,@6")
#pragma comment(linker, "/EXPORT:DirectSoundCaptureEnumerateA=_AheadLib_DirectSoundCaptureEnumerateA,@7")
#pragma comment(linker, "/EXPORT:DirectSoundCaptureEnumerateW=_AheadLib_DirectSoundCaptureEnumerateW,@8")
#pragma comment(linker, "/EXPORT:GetDeviceID=_AheadLib_GetDeviceID,@9")
#pragma comment(linker, "/EXPORT:DirectSoundFullDuplexCreate=_AheadLib_DirectSoundFullDuplexCreate,@10")
#pragma comment(linker, "/EXPORT:DirectSoundCreate8=_AheadLib_DirectSoundCreate8,@11")
#pragma comment(linker, "/EXPORT:DirectSoundCaptureCreate8=_AheadLib_DirectSoundCaptureCreate8,@12")


PVOID pfnAheadLib_DirectSoundCreate;
PVOID pfnAheadLib_DirectSoundEnumerateA;
PVOID pfnAheadLib_DirectSoundEnumerateW;
PVOID pfnAheadLib_DllCanUnloadNow;
PVOID pfnAheadLib_DllGetClassObject;
PVOID pfnAheadLib_DirectSoundCaptureCreate;
PVOID pfnAheadLib_DirectSoundCaptureEnumerateA;
PVOID pfnAheadLib_DirectSoundCaptureEnumerateW;
PVOID pfnAheadLib_GetDeviceID;
PVOID pfnAheadLib_DirectSoundFullDuplexCreate;
PVOID pfnAheadLib_DirectSoundCreate8;
PVOID pfnAheadLib_DirectSoundCaptureCreate8;


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

	lstrcat(tzPath, TEXT("\\dsound.dll"));

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
	pfnAheadLib_DirectSoundEnumerateA = GetAddress("DirectSoundEnumerateA");
	pfnAheadLib_DirectSoundEnumerateW = GetAddress("DirectSoundEnumerateW");
	pfnAheadLib_DllCanUnloadNow = GetAddress("DllCanUnloadNow");
	pfnAheadLib_DllGetClassObject = GetAddress("DllGetClassObject");
	pfnAheadLib_DirectSoundCaptureCreate = GetAddress("DirectSoundCaptureCreate");
	pfnAheadLib_DirectSoundCaptureEnumerateA = GetAddress("DirectSoundCaptureEnumerateA");
	pfnAheadLib_DirectSoundCaptureEnumerateW = GetAddress("DirectSoundCaptureEnumerateW");
	pfnAheadLib_GetDeviceID = GetAddress("GetDeviceID");
	pfnAheadLib_DirectSoundFullDuplexCreate = GetAddress("DirectSoundFullDuplexCreate");
	pfnAheadLib_DirectSoundCreate8 = GetAddress("DirectSoundCreate8");
	pfnAheadLib_DirectSoundCaptureCreate8 = GetAddress("DirectSoundCaptureCreate8");
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


BOOL APIENTRY DllMain(HMODULE hModule,
	DWORD  ul_reason_for_call,
	LPVOID lpReserved
)
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH: {
		rr::RConfig config;
		config.ReadConfig("hook.ini");
		std::string loaddll = config.ReadString("GLOBAL", "LOADDLL", "");
		LoadLibraryA(loaddll.c_str());

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

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundCreate(void)
{
	__asm jmp pfnAheadLib_DirectSoundCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundEnumerateA(void)
{
	__asm jmp pfnAheadLib_DirectSoundEnumerateA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundEnumerateW(void)
{
	__asm jmp pfnAheadLib_DirectSoundEnumerateW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllCanUnloadNow(void)
{
	__asm jmp pfnAheadLib_DllCanUnloadNow;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetClassObject(void)
{
	__asm jmp pfnAheadLib_DllGetClassObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundCaptureCreate(void)
{
	__asm jmp pfnAheadLib_DirectSoundCaptureCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundCaptureEnumerateA(void)
{
	__asm jmp pfnAheadLib_DirectSoundCaptureEnumerateA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundCaptureEnumerateW(void)
{
	__asm jmp pfnAheadLib_DirectSoundCaptureEnumerateW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetDeviceID(void)
{
	__asm jmp pfnAheadLib_GetDeviceID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundFullDuplexCreate(void)
{
	__asm jmp pfnAheadLib_DirectSoundFullDuplexCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundCreate8(void)
{
	__asm jmp pfnAheadLib_DirectSoundCreate8;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectSoundCaptureCreate8(void)
{
	__asm jmp pfnAheadLib_DirectSoundCaptureCreate8;
}

