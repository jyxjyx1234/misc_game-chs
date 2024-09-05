
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//
#pragma once
#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:ApplyCompatResolutionQuirking=_AheadLib_ApplyCompatResolutionQuirking,@1")
#pragma comment(linker, "/EXPORT:CompatString=_AheadLib_CompatString,@2")
#pragma comment(linker, "/EXPORT:CompatValue=_AheadLib_CompatValue,@3")
#pragma comment(linker, "/EXPORT:DXGIDumpJournal=_AheadLib_DXGIDumpJournal,@4")
#pragma comment(linker, "/EXPORT:PIXBeginCapture=_AheadLib_PIXBeginCapture,@5")
#pragma comment(linker, "/EXPORT:PIXEndCapture=_AheadLib_PIXEndCapture,@6")
#pragma comment(linker, "/EXPORT:PIXGetCaptureState=_AheadLib_PIXGetCaptureState,@7")
#pragma comment(linker, "/EXPORT:SetAppCompatStringPointer=_AheadLib_SetAppCompatStringPointer,@8")
#pragma comment(linker, "/EXPORT:UpdateHMDEmulationStatus=_AheadLib_UpdateHMDEmulationStatus,@9")
#pragma comment(linker, "/EXPORT:CreateDXGIFactory1=_AheadLib_CreateDXGIFactory1,@10")
#pragma comment(linker, "/EXPORT:CreateDXGIFactory2=_AheadLib_CreateDXGIFactory2,@11")
#pragma comment(linker, "/EXPORT:CreateDXGIFactory=_AheadLib_CreateDXGIFactory,@12")
#pragma comment(linker, "/EXPORT:DXGID3D10CreateDevice=_AheadLib_DXGID3D10CreateDevice,@13")
#pragma comment(linker, "/EXPORT:DXGID3D10CreateLayeredDevice=_AheadLib_DXGID3D10CreateLayeredDevice,@14")
#pragma comment(linker, "/EXPORT:DXGID3D10GetLayeredDeviceSize=_AheadLib_DXGID3D10GetLayeredDeviceSize,@15")
#pragma comment(linker, "/EXPORT:DXGID3D10RegisterLayers=_AheadLib_DXGID3D10RegisterLayers,@16")
#pragma comment(linker, "/EXPORT:DXGIDeclareAdapterRemovalSupport=_AheadLib_DXGIDeclareAdapterRemovalSupport,@17")
#pragma comment(linker, "/EXPORT:DXGIGetDebugInterface1=_AheadLib_DXGIGetDebugInterface1,@18")
#pragma comment(linker, "/EXPORT:DXGIReportAdapterConfiguration=_AheadLib_DXGIReportAdapterConfiguration,@19")


PVOID pfnAheadLib_ApplyCompatResolutionQuirking;
PVOID pfnAheadLib_CompatString;
PVOID pfnAheadLib_CompatValue;
PVOID pfnAheadLib_DXGIDumpJournal;
PVOID pfnAheadLib_PIXBeginCapture;
PVOID pfnAheadLib_PIXEndCapture;
PVOID pfnAheadLib_PIXGetCaptureState;
PVOID pfnAheadLib_SetAppCompatStringPointer;
PVOID pfnAheadLib_UpdateHMDEmulationStatus;
PVOID pfnAheadLib_CreateDXGIFactory1;
PVOID pfnAheadLib_CreateDXGIFactory2;
PVOID pfnAheadLib_CreateDXGIFactory;
PVOID pfnAheadLib_DXGID3D10CreateDevice;
PVOID pfnAheadLib_DXGID3D10CreateLayeredDevice;
PVOID pfnAheadLib_DXGID3D10GetLayeredDeviceSize;
PVOID pfnAheadLib_DXGID3D10RegisterLayers;
PVOID pfnAheadLib_DXGIDeclareAdapterRemovalSupport;
PVOID pfnAheadLib_DXGIGetDebugInterface1;
PVOID pfnAheadLib_DXGIReportAdapterConfiguration;


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

	lstrcat(tzPath, TEXT("\\dxgi.dll"));

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
	pfnAheadLib_ApplyCompatResolutionQuirking = GetAddress("ApplyCompatResolutionQuirking");
	pfnAheadLib_CompatString = GetAddress("CompatString");
	pfnAheadLib_CompatValue = GetAddress("CompatValue");
	pfnAheadLib_DXGIDumpJournal = GetAddress("DXGIDumpJournal");
	pfnAheadLib_PIXBeginCapture = GetAddress("PIXBeginCapture");
	pfnAheadLib_PIXEndCapture = GetAddress("PIXEndCapture");
	pfnAheadLib_PIXGetCaptureState = GetAddress("PIXGetCaptureState");
	pfnAheadLib_SetAppCompatStringPointer = GetAddress("SetAppCompatStringPointer");
	pfnAheadLib_UpdateHMDEmulationStatus = GetAddress("UpdateHMDEmulationStatus");
	pfnAheadLib_CreateDXGIFactory1 = GetAddress("CreateDXGIFactory1");
	pfnAheadLib_CreateDXGIFactory2 = GetAddress("CreateDXGIFactory2");
	pfnAheadLib_CreateDXGIFactory = GetAddress("CreateDXGIFactory");
	pfnAheadLib_DXGID3D10CreateDevice = GetAddress("DXGID3D10CreateDevice");
	pfnAheadLib_DXGID3D10CreateLayeredDevice = GetAddress("DXGID3D10CreateLayeredDevice");
	pfnAheadLib_DXGID3D10GetLayeredDeviceSize = GetAddress("DXGID3D10GetLayeredDeviceSize");
	pfnAheadLib_DXGID3D10RegisterLayers = GetAddress("DXGID3D10RegisterLayers");
	pfnAheadLib_DXGIDeclareAdapterRemovalSupport = GetAddress("DXGIDeclareAdapterRemovalSupport");
	pfnAheadLib_DXGIGetDebugInterface1 = GetAddress("DXGIGetDebugInterface1");
	pfnAheadLib_DXGIReportAdapterConfiguration = GetAddress("DXGIReportAdapterConfiguration");
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


EXTERN_C __declspec(naked) void __cdecl AheadLib_ApplyCompatResolutionQuirking(void)
{
	__asm jmp pfnAheadLib_ApplyCompatResolutionQuirking;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CompatString(void)
{
	__asm jmp pfnAheadLib_CompatString;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CompatValue(void)
{
	__asm jmp pfnAheadLib_CompatValue;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGIDumpJournal(void)
{
	__asm jmp pfnAheadLib_DXGIDumpJournal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PIXBeginCapture(void)
{
	__asm jmp pfnAheadLib_PIXBeginCapture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PIXEndCapture(void)
{
	__asm jmp pfnAheadLib_PIXEndCapture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PIXGetCaptureState(void)
{
	__asm jmp pfnAheadLib_PIXGetCaptureState;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SetAppCompatStringPointer(void)
{
	__asm jmp pfnAheadLib_SetAppCompatStringPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_UpdateHMDEmulationStatus(void)
{
	__asm jmp pfnAheadLib_UpdateHMDEmulationStatus;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateDXGIFactory1(void)
{
	__asm jmp pfnAheadLib_CreateDXGIFactory1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateDXGIFactory2(void)
{
	__asm jmp pfnAheadLib_CreateDXGIFactory2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CreateDXGIFactory(void)
{
	__asm jmp pfnAheadLib_CreateDXGIFactory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGID3D10CreateDevice(void)
{
	__asm jmp pfnAheadLib_DXGID3D10CreateDevice;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGID3D10CreateLayeredDevice(void)
{
	__asm jmp pfnAheadLib_DXGID3D10CreateLayeredDevice;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGID3D10GetLayeredDeviceSize(void)
{
	__asm jmp pfnAheadLib_DXGID3D10GetLayeredDeviceSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGID3D10RegisterLayers(void)
{
	__asm jmp pfnAheadLib_DXGID3D10RegisterLayers;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGIDeclareAdapterRemovalSupport(void)
{
	__asm jmp pfnAheadLib_DXGIDeclareAdapterRemovalSupport;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGIGetDebugInterface1(void)
{
	__asm jmp pfnAheadLib_DXGIGetDebugInterface1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DXGIReportAdapterConfiguration(void)
{
	__asm jmp pfnAheadLib_DXGIReportAdapterConfiguration;
}

