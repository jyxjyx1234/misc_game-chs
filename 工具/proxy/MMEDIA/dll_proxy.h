
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:CreateMMediaUnitForm=_AheadLib_CreateMMediaUnitForm,@1")
#pragma comment(linker, "/EXPORT:DeleteMMediaUnitForm=_AheadLib_DeleteMMediaUnitForm,@2")
#pragma comment(linker, "/EXPORT:GetMMediaVersion=_AheadLib_GetMMediaVersion,@3")
#pragma comment(linker, "/EXPORT:MMediaUnitFunc=_AheadLib_MMediaUnitFunc,@4")


PVOID pfnAheadLib_CreateMMediaUnitForm;
PVOID pfnAheadLib_DeleteMMediaUnitForm;
PVOID pfnAheadLib_GetMMediaVersion;
PVOID pfnAheadLib_MMediaUnitFunc;


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

	lstrcat(tzPath, TEXT("\\MMEDIA.UNT_"));

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
	pfnAheadLib_CreateMMediaUnitForm = GetAddress("CreateMMediaUnitForm");
	pfnAheadLib_DeleteMMediaUnitForm = GetAddress("DeleteMMediaUnitForm");
	pfnAheadLib_GetMMediaVersion = GetAddress("GetMMediaVersion");
	pfnAheadLib_MMediaUnitFunc = GetAddress("MMediaUnitFunc");
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

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateMMediaUnitForm(void)
{
	__asm jmp pfnAheadLib_CreateMMediaUnitForm;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DeleteMMediaUnitForm(void)
{
	__asm jmp pfnAheadLib_DeleteMMediaUnitForm;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetMMediaVersion(void)
{
	__asm jmp pfnAheadLib_GetMMediaVersion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_MMediaUnitFunc(void)
{
	__asm jmp pfnAheadLib_MMediaUnitFunc;
}

