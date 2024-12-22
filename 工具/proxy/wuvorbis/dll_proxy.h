
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:GetModuleInstance=_AheadLib_GetModuleInstance,@1")
#pragma comment(linker, "/EXPORT:wu_DetectCPU=_AheadLib_wu_DetectCPU,@2")
#pragma comment(linker, "/EXPORT:wu_ScaleOutput=_AheadLib_wu_ScaleOutput,@3")
#pragma comment(linker, "/EXPORT:wu_SetCPUType=_AheadLib_wu_SetCPUType,@4")
#pragma comment(linker, "/EXPORT:wu_ov_bitrate=_AheadLib_wu_ov_bitrate,@5")
#pragma comment(linker, "/EXPORT:wu_ov_bitrate_instant=_AheadLib_wu_ov_bitrate_instant,@6")
#pragma comment(linker, "/EXPORT:wu_ov_clear=_AheadLib_wu_ov_clear,@7")
#pragma comment(linker, "/EXPORT:wu_ov_comment=_AheadLib_wu_ov_comment,@8")
#pragma comment(linker, "/EXPORT:wu_ov_crosslap=_AheadLib_wu_ov_crosslap,@9")
#pragma comment(linker, "/EXPORT:wu_ov_halfrate=_AheadLib_wu_ov_halfrate,@10")
#pragma comment(linker, "/EXPORT:wu_ov_halfrate_p=_AheadLib_wu_ov_halfrate_p,@11")
#pragma comment(linker, "/EXPORT:wu_ov_info=_AheadLib_wu_ov_info,@12")
#pragma comment(linker, "/EXPORT:wu_ov_open_callbacks=_AheadLib_wu_ov_open_callbacks,@13")
#pragma comment(linker, "/EXPORT:wu_ov_pcm_seek=_AheadLib_wu_ov_pcm_seek,@14")
#pragma comment(linker, "/EXPORT:wu_ov_pcm_seek_lap=_AheadLib_wu_ov_pcm_seek_lap,@15")
#pragma comment(linker, "/EXPORT:wu_ov_pcm_seek_page=_AheadLib_wu_ov_pcm_seek_page,@16")
#pragma comment(linker, "/EXPORT:wu_ov_pcm_seek_page_lap=_AheadLib_wu_ov_pcm_seek_page_lap,@17")
#pragma comment(linker, "/EXPORT:wu_ov_pcm_tell=_AheadLib_wu_ov_pcm_tell,@18")
#pragma comment(linker, "/EXPORT:wu_ov_pcm_total=_AheadLib_wu_ov_pcm_total,@19")
#pragma comment(linker, "/EXPORT:wu_ov_raw_seek=_AheadLib_wu_ov_raw_seek,@20")
#pragma comment(linker, "/EXPORT:wu_ov_raw_seek_lap=_AheadLib_wu_ov_raw_seek_lap,@21")
#pragma comment(linker, "/EXPORT:wu_ov_raw_tell=_AheadLib_wu_ov_raw_tell,@22")
#pragma comment(linker, "/EXPORT:wu_ov_raw_total=_AheadLib_wu_ov_raw_total,@23")
#pragma comment(linker, "/EXPORT:wu_ov_read=_AheadLib_wu_ov_read,@24")
#pragma comment(linker, "/EXPORT:wu_ov_read_float=_AheadLib_wu_ov_read_float,@25")
#pragma comment(linker, "/EXPORT:wu_ov_seekable=_AheadLib_wu_ov_seekable,@26")
#pragma comment(linker, "/EXPORT:wu_ov_serialnumber=_AheadLib_wu_ov_serialnumber,@27")
#pragma comment(linker, "/EXPORT:wu_ov_streams=_AheadLib_wu_ov_streams,@28")
#pragma comment(linker, "/EXPORT:wu_ov_test_callbacks=_AheadLib_wu_ov_test_callbacks,@29")
#pragma comment(linker, "/EXPORT:wu_ov_test_open=_AheadLib_wu_ov_test_open,@30")
#pragma comment(linker, "/EXPORT:wu_ov_time_seek=_AheadLib_wu_ov_time_seek,@31")
#pragma comment(linker, "/EXPORT:wu_ov_time_seek_lap=_AheadLib_wu_ov_time_seek_lap,@32")
#pragma comment(linker, "/EXPORT:wu_ov_time_seek_page=_AheadLib_wu_ov_time_seek_page,@33")
#pragma comment(linker, "/EXPORT:wu_ov_time_seek_page_lap=_AheadLib_wu_ov_time_seek_page_lap,@34")
#pragma comment(linker, "/EXPORT:wu_ov_time_tell=_AheadLib_wu_ov_time_tell,@35")
#pragma comment(linker, "/EXPORT:wu_ov_time_total=_AheadLib_wu_ov_time_total,@36")
#pragma comment(linker, "/EXPORT:GetOptionDesc=_AheadLib_GetOptionDesc,@37")
#pragma comment(linker, "/EXPORT:Query_sizeof_OggVorbis_File=_AheadLib_Query_sizeof_OggVorbis_File,@38")
#pragma comment(linker, "/EXPORT:V2Link=_AheadLib_V2Link,@39")
#pragma comment(linker, "/EXPORT:V2Unlink=_AheadLib_V2Unlink,@40")


PVOID pfnAheadLib_GetModuleInstance;
PVOID pfnAheadLib_wu_DetectCPU;
PVOID pfnAheadLib_wu_ScaleOutput;
PVOID pfnAheadLib_wu_SetCPUType;
PVOID pfnAheadLib_wu_ov_bitrate;
PVOID pfnAheadLib_wu_ov_bitrate_instant;
PVOID pfnAheadLib_wu_ov_clear;
PVOID pfnAheadLib_wu_ov_comment;
PVOID pfnAheadLib_wu_ov_crosslap;
PVOID pfnAheadLib_wu_ov_halfrate;
PVOID pfnAheadLib_wu_ov_halfrate_p;
PVOID pfnAheadLib_wu_ov_info;
PVOID pfnAheadLib_wu_ov_open_callbacks;
PVOID pfnAheadLib_wu_ov_pcm_seek;
PVOID pfnAheadLib_wu_ov_pcm_seek_lap;
PVOID pfnAheadLib_wu_ov_pcm_seek_page;
PVOID pfnAheadLib_wu_ov_pcm_seek_page_lap;
PVOID pfnAheadLib_wu_ov_pcm_tell;
PVOID pfnAheadLib_wu_ov_pcm_total;
PVOID pfnAheadLib_wu_ov_raw_seek;
PVOID pfnAheadLib_wu_ov_raw_seek_lap;
PVOID pfnAheadLib_wu_ov_raw_tell;
PVOID pfnAheadLib_wu_ov_raw_total;
PVOID pfnAheadLib_wu_ov_read;
PVOID pfnAheadLib_wu_ov_read_float;
PVOID pfnAheadLib_wu_ov_seekable;
PVOID pfnAheadLib_wu_ov_serialnumber;
PVOID pfnAheadLib_wu_ov_streams;
PVOID pfnAheadLib_wu_ov_test_callbacks;
PVOID pfnAheadLib_wu_ov_test_open;
PVOID pfnAheadLib_wu_ov_time_seek;
PVOID pfnAheadLib_wu_ov_time_seek_lap;
PVOID pfnAheadLib_wu_ov_time_seek_page;
PVOID pfnAheadLib_wu_ov_time_seek_page_lap;
PVOID pfnAheadLib_wu_ov_time_tell;
PVOID pfnAheadLib_wu_ov_time_total;
PVOID pfnAheadLib_GetOptionDesc;
PVOID pfnAheadLib_Query_sizeof_OggVorbis_File;
PVOID pfnAheadLib_V2Link;
PVOID pfnAheadLib_V2Unlink;


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

	lstrcat(tzPath, TEXT("\\wuvorbis_ori.dll"));

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
	pfnAheadLib_GetModuleInstance = GetAddress("GetModuleInstance");
	pfnAheadLib_wu_DetectCPU = GetAddress("wu_DetectCPU");
	pfnAheadLib_wu_ScaleOutput = GetAddress("wu_ScaleOutput");
	pfnAheadLib_wu_SetCPUType = GetAddress("wu_SetCPUType");
	pfnAheadLib_wu_ov_bitrate = GetAddress("wu_ov_bitrate");
	pfnAheadLib_wu_ov_bitrate_instant = GetAddress("wu_ov_bitrate_instant");
	pfnAheadLib_wu_ov_clear = GetAddress("wu_ov_clear");
	pfnAheadLib_wu_ov_comment = GetAddress("wu_ov_comment");
	pfnAheadLib_wu_ov_crosslap = GetAddress("wu_ov_crosslap");
	pfnAheadLib_wu_ov_halfrate = GetAddress("wu_ov_halfrate");
	pfnAheadLib_wu_ov_halfrate_p = GetAddress("wu_ov_halfrate_p");
	pfnAheadLib_wu_ov_info = GetAddress("wu_ov_info");
	pfnAheadLib_wu_ov_open_callbacks = GetAddress("wu_ov_open_callbacks");
	pfnAheadLib_wu_ov_pcm_seek = GetAddress("wu_ov_pcm_seek");
	pfnAheadLib_wu_ov_pcm_seek_lap = GetAddress("wu_ov_pcm_seek_lap");
	pfnAheadLib_wu_ov_pcm_seek_page = GetAddress("wu_ov_pcm_seek_page");
	pfnAheadLib_wu_ov_pcm_seek_page_lap = GetAddress("wu_ov_pcm_seek_page_lap");
	pfnAheadLib_wu_ov_pcm_tell = GetAddress("wu_ov_pcm_tell");
	pfnAheadLib_wu_ov_pcm_total = GetAddress("wu_ov_pcm_total");
	pfnAheadLib_wu_ov_raw_seek = GetAddress("wu_ov_raw_seek");
	pfnAheadLib_wu_ov_raw_seek_lap = GetAddress("wu_ov_raw_seek_lap");
	pfnAheadLib_wu_ov_raw_tell = GetAddress("wu_ov_raw_tell");
	pfnAheadLib_wu_ov_raw_total = GetAddress("wu_ov_raw_total");
	pfnAheadLib_wu_ov_read = GetAddress("wu_ov_read");
	pfnAheadLib_wu_ov_read_float = GetAddress("wu_ov_read_float");
	pfnAheadLib_wu_ov_seekable = GetAddress("wu_ov_seekable");
	pfnAheadLib_wu_ov_serialnumber = GetAddress("wu_ov_serialnumber");
	pfnAheadLib_wu_ov_streams = GetAddress("wu_ov_streams");
	pfnAheadLib_wu_ov_test_callbacks = GetAddress("wu_ov_test_callbacks");
	pfnAheadLib_wu_ov_test_open = GetAddress("wu_ov_test_open");
	pfnAheadLib_wu_ov_time_seek = GetAddress("wu_ov_time_seek");
	pfnAheadLib_wu_ov_time_seek_lap = GetAddress("wu_ov_time_seek_lap");
	pfnAheadLib_wu_ov_time_seek_page = GetAddress("wu_ov_time_seek_page");
	pfnAheadLib_wu_ov_time_seek_page_lap = GetAddress("wu_ov_time_seek_page_lap");
	pfnAheadLib_wu_ov_time_tell = GetAddress("wu_ov_time_tell");
	pfnAheadLib_wu_ov_time_total = GetAddress("wu_ov_time_total");
	pfnAheadLib_GetOptionDesc = GetAddress("GetOptionDesc");
	pfnAheadLib_Query_sizeof_OggVorbis_File = GetAddress("Query_sizeof_OggVorbis_File");
	pfnAheadLib_V2Link = GetAddress("V2Link");
	pfnAheadLib_V2Unlink = GetAddress("V2Unlink");
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

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetModuleInstance(void)
{
	__asm jmp pfnAheadLib_GetModuleInstance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_DetectCPU(void)
{
	__asm jmp pfnAheadLib_wu_DetectCPU;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ScaleOutput(void)
{
	__asm jmp pfnAheadLib_wu_ScaleOutput;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_SetCPUType(void)
{
	__asm jmp pfnAheadLib_wu_SetCPUType;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_bitrate(void)
{
	__asm jmp pfnAheadLib_wu_ov_bitrate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_bitrate_instant(void)
{
	__asm jmp pfnAheadLib_wu_ov_bitrate_instant;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_clear(void)
{
	__asm jmp pfnAheadLib_wu_ov_clear;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_comment(void)
{
	__asm jmp pfnAheadLib_wu_ov_comment;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_crosslap(void)
{
	__asm jmp pfnAheadLib_wu_ov_crosslap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_halfrate(void)
{
	__asm jmp pfnAheadLib_wu_ov_halfrate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_halfrate_p(void)
{
	__asm jmp pfnAheadLib_wu_ov_halfrate_p;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_info(void)
{
	__asm jmp pfnAheadLib_wu_ov_info;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_open_callbacks(void)
{
	__asm jmp pfnAheadLib_wu_ov_open_callbacks;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_pcm_seek(void)
{
	__asm jmp pfnAheadLib_wu_ov_pcm_seek;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_pcm_seek_lap(void)
{
	__asm jmp pfnAheadLib_wu_ov_pcm_seek_lap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_pcm_seek_page(void)
{
	__asm jmp pfnAheadLib_wu_ov_pcm_seek_page;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_pcm_seek_page_lap(void)
{
	__asm jmp pfnAheadLib_wu_ov_pcm_seek_page_lap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_pcm_tell(void)
{
	__asm jmp pfnAheadLib_wu_ov_pcm_tell;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_pcm_total(void)
{
	__asm jmp pfnAheadLib_wu_ov_pcm_total;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_raw_seek(void)
{
	__asm jmp pfnAheadLib_wu_ov_raw_seek;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_raw_seek_lap(void)
{
	__asm jmp pfnAheadLib_wu_ov_raw_seek_lap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_raw_tell(void)
{
	__asm jmp pfnAheadLib_wu_ov_raw_tell;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_raw_total(void)
{
	__asm jmp pfnAheadLib_wu_ov_raw_total;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_read(void)
{
	__asm jmp pfnAheadLib_wu_ov_read;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_read_float(void)
{
	__asm jmp pfnAheadLib_wu_ov_read_float;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_seekable(void)
{
	__asm jmp pfnAheadLib_wu_ov_seekable;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_serialnumber(void)
{
	__asm jmp pfnAheadLib_wu_ov_serialnumber;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_streams(void)
{
	__asm jmp pfnAheadLib_wu_ov_streams;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_test_callbacks(void)
{
	__asm jmp pfnAheadLib_wu_ov_test_callbacks;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_test_open(void)
{
	__asm jmp pfnAheadLib_wu_ov_test_open;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_time_seek(void)
{
	__asm jmp pfnAheadLib_wu_ov_time_seek;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_time_seek_lap(void)
{
	__asm jmp pfnAheadLib_wu_ov_time_seek_lap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_time_seek_page(void)
{
	__asm jmp pfnAheadLib_wu_ov_time_seek_page;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_time_seek_page_lap(void)
{
	__asm jmp pfnAheadLib_wu_ov_time_seek_page_lap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_time_tell(void)
{
	__asm jmp pfnAheadLib_wu_ov_time_tell;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wu_ov_time_total(void)
{
	__asm jmp pfnAheadLib_wu_ov_time_total;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOptionDesc(void)
{
	__asm jmp pfnAheadLib_GetOptionDesc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Query_sizeof_OggVorbis_File(void)
{
	__asm jmp pfnAheadLib_Query_sizeof_OggVorbis_File;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_V2Link(void)
{
	__asm jmp pfnAheadLib_V2Link;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_V2Unlink(void)
{
	__asm jmp pfnAheadLib_V2Unlink;
}

