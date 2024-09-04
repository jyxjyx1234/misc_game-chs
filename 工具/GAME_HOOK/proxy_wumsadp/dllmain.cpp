
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

#pragma comment(linker, "/EXPORT:GetModuleInstance=_AheadLib_GetModuleInstance,@1")
#pragma comment(linker, "/EXPORT:___CPPdebugHook=_AheadLib____CPPdebugHook,@2")

EXTERN_C PVOID AheadLib____CPPdebugHook[1] = { 0 };

PVOID pfnAheadLib_GetModuleInstance;
PVOID pfnAheadLib____CPPdebugHook;


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
	// �����Ƿ��ϵͳĿ¼��ǰĿ¼����ԭʼDLL
	//
	GetModuleFileName(NULL,tzPath,MAX_PATH); //��ȡ��Ŀ¼�µ�
	PathRemoveFileSpec(tzPath);

	//GetSystemDirectory(tzPath, MAX_PATH); //Ĭ�ϻ�ȡϵͳĿ¼��

	lstrcat(tzPath, TEXT("\\wumsadp_ori.dll"));

	g_OldModule = LoadLibrary(tzPath);
	if (g_OldModule == NULL)
	{
		wsprintf(tzTemp, TEXT("�޷��ҵ�ģ�� %s,�����޷���������"), tzPath);
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

		wsprintf(tzTemp, TEXT("�޷��ҵ����� %hs,�����޷���������"), pszProcName);
		MessageBox(NULL, tzTemp, TEXT("AheadLib"), MB_ICONSTOP);
		ExitProcess(-2);
	}
	return fpAddress;
}

BOOL WINAPI Init()
{
	pfnAheadLib_GetModuleInstance = GetAddress("GetModuleInstance");
	pfnAheadLib____CPPdebugHook = GetAddress("___CPPdebugHook");
	memcpy(AheadLib____CPPdebugHook,pfnAheadLib____CPPdebugHook,sizeof(PVOID) * 1);
	return TRUE;
}	

DWORD WINAPI ThreadProc(LPVOID lpThreadParameter)
{
	HANDLE hProcess;

	PVOID addr1 = reinterpret_cast<PVOID>(0x00401000);
	BYTE data1[] = { 0x90, 0x90, 0x90, 0x90 };

	//
	// �ƹ�VMP3.x ���ڴ汣��
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

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetModuleInstance(void)
{
	__asm jmp pfnAheadLib_GetModuleInstance;
}

