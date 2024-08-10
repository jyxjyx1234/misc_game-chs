#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_MAIN.h"


//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:Noname1=_AheadLib_Unnamed1,@1,NONAME")
#pragma comment(linker, "/EXPORT:Noname2=_AheadLib_Unnamed2,@2,NONAME")
#pragma comment(linker, "/EXPORT:Noname3=_AheadLib_Unnamed3,@3,NONAME")
#pragma comment(linker, "/EXPORT:Noname4=_AheadLib_Unnamed4,@4,NONAME")
#pragma comment(linker, "/EXPORT:Noname5=_AheadLib_Unnamed5,@5,NONAME")
#pragma comment(linker, "/EXPORT:DllCanUnloadNow=_AheadLib_DllCanUnloadNow,@6")
#pragma comment(linker, "/EXPORT:Noname7=_AheadLib_Unnamed7,@7,NONAME")
#pragma comment(linker, "/EXPORT:DllGetActivationFactory=_AheadLib_DllGetActivationFactory,@8")
#pragma comment(linker, "/EXPORT:DllGetClassObject=_AheadLib_DllGetClassObject,@9")
#pragma comment(linker, "/EXPORT:DllRegisterServer=_AheadLib_DllRegisterServer,@10")
#pragma comment(linker, "/EXPORT:DllUnregisterServer=_AheadLib_DllUnregisterServer,@11")


PVOID pfnAheadLib_Unnamed1;
PVOID pfnAheadLib_Unnamed2;
PVOID pfnAheadLib_Unnamed3;
PVOID pfnAheadLib_Unnamed4;
PVOID pfnAheadLib_Unnamed5;
PVOID pfnAheadLib_DllCanUnloadNow;
PVOID pfnAheadLib_Unnamed7;
PVOID pfnAheadLib_DllGetActivationFactory;
PVOID pfnAheadLib_DllGetClassObject;
PVOID pfnAheadLib_DllRegisterServer;
PVOID pfnAheadLib_DllUnregisterServer;


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

	lstrcat(tzPath, TEXT("\\AudioSes.dll"));

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
	pfnAheadLib_Unnamed1 = GetAddress(MAKEINTRESOURCEA(1));
	pfnAheadLib_Unnamed2 = GetAddress(MAKEINTRESOURCEA(2));
	pfnAheadLib_Unnamed3 = GetAddress(MAKEINTRESOURCEA(3));
	pfnAheadLib_Unnamed4 = GetAddress(MAKEINTRESOURCEA(4));
	pfnAheadLib_Unnamed5 = GetAddress(MAKEINTRESOURCEA(5));
	pfnAheadLib_DllCanUnloadNow = GetAddress("DllCanUnloadNow");
	pfnAheadLib_Unnamed7 = GetAddress(MAKEINTRESOURCEA(7));
	pfnAheadLib_DllGetActivationFactory = GetAddress("DllGetActivationFactory");
	pfnAheadLib_DllGetClassObject = GetAddress("DllGetClassObject");
	pfnAheadLib_DllRegisterServer = GetAddress("DllRegisterServer");
	pfnAheadLib_DllUnregisterServer = GetAddress("DllUnregisterServer");
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


EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed1(void)
{
	__asm jmp pfnAheadLib_Unnamed1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed2(void)
{
	__asm jmp pfnAheadLib_Unnamed2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed3(void)
{
	__asm jmp pfnAheadLib_Unnamed3;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed4(void)
{
	__asm jmp pfnAheadLib_Unnamed4;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed5(void)
{
	__asm jmp pfnAheadLib_Unnamed5;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllCanUnloadNow(void)
{
	__asm jmp pfnAheadLib_DllCanUnloadNow;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed7(void)
{
	__asm jmp pfnAheadLib_Unnamed7;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetActivationFactory(void)
{
	__asm jmp pfnAheadLib_DllGetActivationFactory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetClassObject(void)
{
	__asm jmp pfnAheadLib_DllGetClassObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllRegisterServer(void)
{
	__asm jmp pfnAheadLib_DllRegisterServer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllUnregisterServer(void)
{
	__asm jmp pfnAheadLib_DllUnregisterServer;
}




BOOL APIENTRY DllMain(HMODULE hModule,
	DWORD  ul_reason_for_call,
	LPVOID lpReserved
)
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH: {
		HOOK_main();

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