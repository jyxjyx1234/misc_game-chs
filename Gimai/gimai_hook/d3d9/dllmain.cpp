
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>
#include "HOOK_MAIN.h"

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:Noname16=_AheadLib_Unnamed16,@16,NONAME")
#pragma comment(linker, "/EXPORT:Noname17=_AheadLib_Unnamed17,@17,NONAME")
#pragma comment(linker, "/EXPORT:Noname18=_AheadLib_Unnamed18,@18,NONAME")
#pragma comment(linker, "/EXPORT:Noname19=_AheadLib_Unnamed19,@19,NONAME")
#pragma comment(linker, "/EXPORT:Direct3DCreate9On12=_AheadLib_Direct3DCreate9On12,@20")
#pragma comment(linker, "/EXPORT:Direct3DCreate9On12Ex=_AheadLib_Direct3DCreate9On12Ex,@21")
#pragma comment(linker, "/EXPORT:Noname22=_AheadLib_Unnamed22,@22,NONAME")
#pragma comment(linker, "/EXPORT:Noname23=_AheadLib_Unnamed23,@23,NONAME")
#pragma comment(linker, "/EXPORT:Direct3DShaderValidatorCreate9=_AheadLib_Direct3DShaderValidatorCreate9,@24")
#pragma comment(linker, "/EXPORT:PSGPError=_AheadLib_PSGPError,@25")
#pragma comment(linker, "/EXPORT:PSGPSampleTexture=_AheadLib_PSGPSampleTexture,@26")
#pragma comment(linker, "/EXPORT:D3DPERF_BeginEvent=_AheadLib_D3DPERF_BeginEvent,@27")
#pragma comment(linker, "/EXPORT:D3DPERF_EndEvent=_AheadLib_D3DPERF_EndEvent,@28")
#pragma comment(linker, "/EXPORT:D3DPERF_GetStatus=_AheadLib_D3DPERF_GetStatus,@29")
#pragma comment(linker, "/EXPORT:D3DPERF_QueryRepeatFrame=_AheadLib_D3DPERF_QueryRepeatFrame,@30")
#pragma comment(linker, "/EXPORT:D3DPERF_SetMarker=_AheadLib_D3DPERF_SetMarker,@31")
#pragma comment(linker, "/EXPORT:D3DPERF_SetOptions=_AheadLib_D3DPERF_SetOptions,@32")
#pragma comment(linker, "/EXPORT:D3DPERF_SetRegion=_AheadLib_D3DPERF_SetRegion,@33")
#pragma comment(linker, "/EXPORT:DebugSetLevel=_AheadLib_DebugSetLevel,@34")
#pragma comment(linker, "/EXPORT:DebugSetMute=_AheadLib_DebugSetMute,@35")
#pragma comment(linker, "/EXPORT:Direct3D9EnableMaximizedWindowedModeShim=_AheadLib_Direct3D9EnableMaximizedWindowedModeShim,@36")
#pragma comment(linker, "/EXPORT:Direct3DCreate9=_AheadLib_Direct3DCreate9,@37")
#pragma comment(linker, "/EXPORT:Direct3DCreate9Ex=_AheadLib_Direct3DCreate9Ex,@38")


PVOID pfnAheadLib_Unnamed16;
PVOID pfnAheadLib_Unnamed17;
PVOID pfnAheadLib_Unnamed18;
PVOID pfnAheadLib_Unnamed19;
PVOID pfnAheadLib_Direct3DCreate9On12;
PVOID pfnAheadLib_Direct3DCreate9On12Ex;
PVOID pfnAheadLib_Unnamed22;
PVOID pfnAheadLib_Unnamed23;
PVOID pfnAheadLib_Direct3DShaderValidatorCreate9;
PVOID pfnAheadLib_PSGPError;
PVOID pfnAheadLib_PSGPSampleTexture;
PVOID pfnAheadLib_D3DPERF_BeginEvent;
PVOID pfnAheadLib_D3DPERF_EndEvent;
PVOID pfnAheadLib_D3DPERF_GetStatus;
PVOID pfnAheadLib_D3DPERF_QueryRepeatFrame;
PVOID pfnAheadLib_D3DPERF_SetMarker;
PVOID pfnAheadLib_D3DPERF_SetOptions;
PVOID pfnAheadLib_D3DPERF_SetRegion;
PVOID pfnAheadLib_DebugSetLevel;
PVOID pfnAheadLib_DebugSetMute;
PVOID pfnAheadLib_Direct3D9EnableMaximizedWindowedModeShim;
PVOID pfnAheadLib_Direct3DCreate9;
PVOID pfnAheadLib_Direct3DCreate9Ex;


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

	lstrcat(tzPath, TEXT("\\d3d9.dll"));

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
	pfnAheadLib_Unnamed16 = GetAddress(MAKEINTRESOURCEA(16));
	pfnAheadLib_Unnamed17 = GetAddress(MAKEINTRESOURCEA(17));
	pfnAheadLib_Unnamed18 = GetAddress(MAKEINTRESOURCEA(18));
	pfnAheadLib_Unnamed19 = GetAddress(MAKEINTRESOURCEA(19));
	pfnAheadLib_Direct3DCreate9On12 = GetAddress("Direct3DCreate9On12");
	pfnAheadLib_Direct3DCreate9On12Ex = GetAddress("Direct3DCreate9On12Ex");
	pfnAheadLib_Unnamed22 = GetAddress(MAKEINTRESOURCEA(22));
	pfnAheadLib_Unnamed23 = GetAddress(MAKEINTRESOURCEA(23));
	pfnAheadLib_Direct3DShaderValidatorCreate9 = GetAddress("Direct3DShaderValidatorCreate9");
	pfnAheadLib_PSGPError = GetAddress("PSGPError");
	pfnAheadLib_PSGPSampleTexture = GetAddress("PSGPSampleTexture");
	pfnAheadLib_D3DPERF_BeginEvent = GetAddress("D3DPERF_BeginEvent");
	pfnAheadLib_D3DPERF_EndEvent = GetAddress("D3DPERF_EndEvent");
	pfnAheadLib_D3DPERF_GetStatus = GetAddress("D3DPERF_GetStatus");
	pfnAheadLib_D3DPERF_QueryRepeatFrame = GetAddress("D3DPERF_QueryRepeatFrame");
	pfnAheadLib_D3DPERF_SetMarker = GetAddress("D3DPERF_SetMarker");
	pfnAheadLib_D3DPERF_SetOptions = GetAddress("D3DPERF_SetOptions");
	pfnAheadLib_D3DPERF_SetRegion = GetAddress("D3DPERF_SetRegion");
	pfnAheadLib_DebugSetLevel = GetAddress("DebugSetLevel");
	pfnAheadLib_DebugSetMute = GetAddress("DebugSetMute");
	pfnAheadLib_Direct3D9EnableMaximizedWindowedModeShim = GetAddress("Direct3D9EnableMaximizedWindowedModeShim");
	pfnAheadLib_Direct3DCreate9 = GetAddress("Direct3DCreate9");
	pfnAheadLib_Direct3DCreate9Ex = GetAddress("Direct3DCreate9Ex");
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

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed16(void)
{
	__asm jmp pfnAheadLib_Unnamed16;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed17(void)
{
	__asm jmp pfnAheadLib_Unnamed17;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed18(void)
{
	__asm jmp pfnAheadLib_Unnamed18;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed19(void)
{
	__asm jmp pfnAheadLib_Unnamed19;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Direct3DCreate9On12(void)
{
	__asm jmp pfnAheadLib_Direct3DCreate9On12;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Direct3DCreate9On12Ex(void)
{
	__asm jmp pfnAheadLib_Direct3DCreate9On12Ex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed22(void)
{
	__asm jmp pfnAheadLib_Unnamed22;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed23(void)
{
	__asm jmp pfnAheadLib_Unnamed23;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Direct3DShaderValidatorCreate9(void)
{
	__asm jmp pfnAheadLib_Direct3DShaderValidatorCreate9;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PSGPError(void)
{
	__asm jmp pfnAheadLib_PSGPError;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PSGPSampleTexture(void)
{
	__asm jmp pfnAheadLib_PSGPSampleTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_BeginEvent(void)
{
	__asm jmp pfnAheadLib_D3DPERF_BeginEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_EndEvent(void)
{
	__asm jmp pfnAheadLib_D3DPERF_EndEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_GetStatus(void)
{
	__asm jmp pfnAheadLib_D3DPERF_GetStatus;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_QueryRepeatFrame(void)
{
	__asm jmp pfnAheadLib_D3DPERF_QueryRepeatFrame;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_SetMarker(void)
{
	__asm jmp pfnAheadLib_D3DPERF_SetMarker;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_SetOptions(void)
{
	__asm jmp pfnAheadLib_D3DPERF_SetOptions;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DPERF_SetRegion(void)
{
	__asm jmp pfnAheadLib_D3DPERF_SetRegion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DebugSetLevel(void)
{
	__asm jmp pfnAheadLib_DebugSetLevel;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DebugSetMute(void)
{
	__asm jmp pfnAheadLib_DebugSetMute;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Direct3D9EnableMaximizedWindowedModeShim(void)
{
	__asm jmp pfnAheadLib_Direct3D9EnableMaximizedWindowedModeShim;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Direct3DCreate9(void)
{
	__asm jmp pfnAheadLib_Direct3DCreate9;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Direct3DCreate9Ex(void)
{
	__asm jmp pfnAheadLib_Direct3DCreate9Ex;
}

