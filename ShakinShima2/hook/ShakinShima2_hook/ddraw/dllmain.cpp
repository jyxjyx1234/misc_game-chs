#include <windows.h>
#include <Shlwapi.h>
#include "HOOK_main.h"

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:AcquireDDThreadLock=_AheadLib_AcquireDDThreadLock,@1")
#pragma comment(linker, "/EXPORT:CompleteCreateSysmemSurface=_AheadLib_CompleteCreateSysmemSurface,@2")
#pragma comment(linker, "/EXPORT:D3DParseUnknownCommand=_AheadLib_D3DParseUnknownCommand,@3")
#pragma comment(linker, "/EXPORT:DDGetAttachedSurfaceLcl=_AheadLib_DDGetAttachedSurfaceLcl,@4")
#pragma comment(linker, "/EXPORT:DDInternalLock=_AheadLib_DDInternalLock,@5")
#pragma comment(linker, "/EXPORT:DDInternalUnlock=_AheadLib_DDInternalUnlock,@6")
#pragma comment(linker, "/EXPORT:DSoundHelp=_AheadLib_DSoundHelp,@7")
#pragma comment(linker, "/EXPORT:DirectDrawCreate=_AheadLib_DirectDrawCreate,@8")
#pragma comment(linker, "/EXPORT:DirectDrawCreateClipper=_AheadLib_DirectDrawCreateClipper,@9")
#pragma comment(linker, "/EXPORT:DirectDrawCreateEx=_AheadLib_DirectDrawCreateEx,@10")
#pragma comment(linker, "/EXPORT:DirectDrawEnumerateA=_AheadLib_DirectDrawEnumerateA,@11")
#pragma comment(linker, "/EXPORT:DirectDrawEnumerateExA=_AheadLib_DirectDrawEnumerateExA,@12")
#pragma comment(linker, "/EXPORT:DirectDrawEnumerateExW=_AheadLib_DirectDrawEnumerateExW,@13")
#pragma comment(linker, "/EXPORT:DirectDrawEnumerateW=_AheadLib_DirectDrawEnumerateW,@14")
#pragma comment(linker, "/EXPORT:DllCanUnloadNow=_AheadLib_DllCanUnloadNow,@15")
#pragma comment(linker, "/EXPORT:DllGetClassObject=_AheadLib_DllGetClassObject,@16")
#pragma comment(linker, "/EXPORT:GetDDSurfaceLocal=_AheadLib_GetDDSurfaceLocal,@17")
#pragma comment(linker, "/EXPORT:GetOLEThunkData=_AheadLib_GetOLEThunkData,@18")
#pragma comment(linker, "/EXPORT:GetSurfaceFromDC=_AheadLib_GetSurfaceFromDC,@19")
#pragma comment(linker, "/EXPORT:RegisterSpecialCase=_AheadLib_RegisterSpecialCase,@20")
#pragma comment(linker, "/EXPORT:ReleaseDDThreadLock=_AheadLib_ReleaseDDThreadLock,@21")
#pragma comment(linker, "/EXPORT:SetAppCompatData=_AheadLib_SetAppCompatData,@22")


PVOID pfnAheadLib_AcquireDDThreadLock;
PVOID pfnAheadLib_CompleteCreateSysmemSurface;
PVOID pfnAheadLib_D3DParseUnknownCommand;
PVOID pfnAheadLib_DDGetAttachedSurfaceLcl;
PVOID pfnAheadLib_DDInternalLock;
PVOID pfnAheadLib_DDInternalUnlock;
PVOID pfnAheadLib_DSoundHelp;
PVOID pfnAheadLib_DirectDrawCreate;
PVOID pfnAheadLib_DirectDrawCreateClipper;
PVOID pfnAheadLib_DirectDrawCreateEx;
PVOID pfnAheadLib_DirectDrawEnumerateA;
PVOID pfnAheadLib_DirectDrawEnumerateExA;
PVOID pfnAheadLib_DirectDrawEnumerateExW;
PVOID pfnAheadLib_DirectDrawEnumerateW;
PVOID pfnAheadLib_DllCanUnloadNow;
PVOID pfnAheadLib_DllGetClassObject;
PVOID pfnAheadLib_GetDDSurfaceLocal;
PVOID pfnAheadLib_GetOLEThunkData;
PVOID pfnAheadLib_GetSurfaceFromDC;
PVOID pfnAheadLib_RegisterSpecialCase;
PVOID pfnAheadLib_ReleaseDDThreadLock;
PVOID pfnAheadLib_SetAppCompatData;


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

	lstrcat(tzPath, TEXT("\\ddraw.dll"));

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
	pfnAheadLib_AcquireDDThreadLock = GetAddress("AcquireDDThreadLock");
	pfnAheadLib_CompleteCreateSysmemSurface = GetAddress("CompleteCreateSysmemSurface");
	pfnAheadLib_D3DParseUnknownCommand = GetAddress("D3DParseUnknownCommand");
	pfnAheadLib_DDGetAttachedSurfaceLcl = GetAddress("DDGetAttachedSurfaceLcl");
	pfnAheadLib_DDInternalLock = GetAddress("DDInternalLock");
	pfnAheadLib_DDInternalUnlock = GetAddress("DDInternalUnlock");
	pfnAheadLib_DSoundHelp = GetAddress("DSoundHelp");
	pfnAheadLib_DirectDrawCreate = GetAddress("DirectDrawCreate");
	pfnAheadLib_DirectDrawCreateClipper = GetAddress("DirectDrawCreateClipper");
	pfnAheadLib_DirectDrawCreateEx = GetAddress("DirectDrawCreateEx");
	pfnAheadLib_DirectDrawEnumerateA = GetAddress("DirectDrawEnumerateA");
	pfnAheadLib_DirectDrawEnumerateExA = GetAddress("DirectDrawEnumerateExA");
	pfnAheadLib_DirectDrawEnumerateExW = GetAddress("DirectDrawEnumerateExW");
	pfnAheadLib_DirectDrawEnumerateW = GetAddress("DirectDrawEnumerateW");
	pfnAheadLib_DllCanUnloadNow = GetAddress("DllCanUnloadNow");
	pfnAheadLib_DllGetClassObject = GetAddress("DllGetClassObject");
	pfnAheadLib_GetDDSurfaceLocal = GetAddress("GetDDSurfaceLocal");
	pfnAheadLib_GetOLEThunkData = GetAddress("GetOLEThunkData");
	pfnAheadLib_GetSurfaceFromDC = GetAddress("GetSurfaceFromDC");
	pfnAheadLib_RegisterSpecialCase = GetAddress("RegisterSpecialCase");
	pfnAheadLib_ReleaseDDThreadLock = GetAddress("ReleaseDDThreadLock");
	pfnAheadLib_SetAppCompatData = GetAddress("SetAppCompatData");
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

EXTERN_C __declspec(naked) void __cdecl AheadLib_AcquireDDThreadLock(void)
{
	__asm jmp pfnAheadLib_AcquireDDThreadLock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CompleteCreateSysmemSurface(void)
{
	__asm jmp pfnAheadLib_CompleteCreateSysmemSurface;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DParseUnknownCommand(void)
{
	__asm jmp pfnAheadLib_D3DParseUnknownCommand;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DDGetAttachedSurfaceLcl(void)
{
	__asm jmp pfnAheadLib_DDGetAttachedSurfaceLcl;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DDInternalLock(void)
{
	__asm jmp pfnAheadLib_DDInternalLock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DDInternalUnlock(void)
{
	__asm jmp pfnAheadLib_DDInternalUnlock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DSoundHelp(void)
{
	__asm jmp pfnAheadLib_DSoundHelp;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawCreate(void)
{
	__asm jmp pfnAheadLib_DirectDrawCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawCreateClipper(void)
{
	__asm jmp pfnAheadLib_DirectDrawCreateClipper;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawCreateEx(void)
{
	__asm jmp pfnAheadLib_DirectDrawCreateEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawEnumerateA(void)
{
	__asm jmp pfnAheadLib_DirectDrawEnumerateA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawEnumerateExA(void)
{
	__asm jmp pfnAheadLib_DirectDrawEnumerateExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawEnumerateExW(void)
{
	__asm jmp pfnAheadLib_DirectDrawEnumerateExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DirectDrawEnumerateW(void)
{
	__asm jmp pfnAheadLib_DirectDrawEnumerateW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllCanUnloadNow(void)
{
	__asm jmp pfnAheadLib_DllCanUnloadNow;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DllGetClassObject(void)
{
	__asm jmp pfnAheadLib_DllGetClassObject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetDDSurfaceLocal(void)
{
	__asm jmp pfnAheadLib_GetDDSurfaceLocal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOLEThunkData(void)
{
	__asm jmp pfnAheadLib_GetOLEThunkData;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetSurfaceFromDC(void)
{
	__asm jmp pfnAheadLib_GetSurfaceFromDC;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RegisterSpecialCase(void)
{
	__asm jmp pfnAheadLib_RegisterSpecialCase;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ReleaseDDThreadLock(void)
{
	__asm jmp pfnAheadLib_ReleaseDDThreadLock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SetAppCompatData(void)
{
	__asm jmp pfnAheadLib_SetAppCompatData;
}

