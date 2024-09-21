
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:ogg_packet_clear=_AheadLib_ogg_packet_clear,@1")
#pragma comment(linker, "/EXPORT:ogg_page_bos=_AheadLib_ogg_page_bos,@2")
#pragma comment(linker, "/EXPORT:ogg_page_continued=_AheadLib_ogg_page_continued,@3")
#pragma comment(linker, "/EXPORT:ogg_page_eos=_AheadLib_ogg_page_eos,@4")
#pragma comment(linker, "/EXPORT:ogg_page_granulepos=_AheadLib_ogg_page_granulepos,@5")
#pragma comment(linker, "/EXPORT:ogg_page_packets=_AheadLib_ogg_page_packets,@6")
#pragma comment(linker, "/EXPORT:ogg_page_pageno=_AheadLib_ogg_page_pageno,@7")
#pragma comment(linker, "/EXPORT:ogg_page_serialno=_AheadLib_ogg_page_serialno,@8")
#pragma comment(linker, "/EXPORT:ogg_page_version=_AheadLib_ogg_page_version,@9")
#pragma comment(linker, "/EXPORT:ogg_stream_clear=_AheadLib_ogg_stream_clear,@10")
#pragma comment(linker, "/EXPORT:ogg_stream_destroy=_AheadLib_ogg_stream_destroy,@11")
#pragma comment(linker, "/EXPORT:ogg_stream_eos=_AheadLib_ogg_stream_eos,@12")
#pragma comment(linker, "/EXPORT:ogg_stream_flush=_AheadLib_ogg_stream_flush,@13")
#pragma comment(linker, "/EXPORT:ogg_stream_init=_AheadLib_ogg_stream_init,@14")
#pragma comment(linker, "/EXPORT:ogg_stream_packetin=_AheadLib_ogg_stream_packetin,@15")
#pragma comment(linker, "/EXPORT:ogg_stream_packetout=_AheadLib_ogg_stream_packetout,@16")
#pragma comment(linker, "/EXPORT:ogg_stream_packetpeek=_AheadLib_ogg_stream_packetpeek,@17")
#pragma comment(linker, "/EXPORT:ogg_stream_pagein=_AheadLib_ogg_stream_pagein,@18")
#pragma comment(linker, "/EXPORT:ogg_stream_pageout=_AheadLib_ogg_stream_pageout,@19")
#pragma comment(linker, "/EXPORT:ogg_stream_reset=_AheadLib_ogg_stream_reset,@20")
#pragma comment(linker, "/EXPORT:ogg_stream_reset_serialno=_AheadLib_ogg_stream_reset_serialno,@21")
#pragma comment(linker, "/EXPORT:ogg_sync_buffer=_AheadLib_ogg_sync_buffer,@22")
#pragma comment(linker, "/EXPORT:ogg_sync_clear=_AheadLib_ogg_sync_clear,@23")
#pragma comment(linker, "/EXPORT:ogg_sync_destroy=_AheadLib_ogg_sync_destroy,@24")
#pragma comment(linker, "/EXPORT:ogg_sync_init=_AheadLib_ogg_sync_init,@25")
#pragma comment(linker, "/EXPORT:ogg_sync_pageout=_AheadLib_ogg_sync_pageout,@26")
#pragma comment(linker, "/EXPORT:ogg_sync_pageseek=_AheadLib_ogg_sync_pageseek,@27")
#pragma comment(linker, "/EXPORT:ogg_sync_reset=_AheadLib_ogg_sync_reset,@28")
#pragma comment(linker, "/EXPORT:ogg_sync_wrote=_AheadLib_ogg_sync_wrote,@29")
#pragma comment(linker, "/EXPORT:oggpack_adv=_AheadLib_oggpack_adv,@30")
#pragma comment(linker, "/EXPORT:oggpack_adv1=_AheadLib_oggpack_adv1,@31")
#pragma comment(linker, "/EXPORT:oggpack_bits=_AheadLib_oggpack_bits,@32")
#pragma comment(linker, "/EXPORT:oggpack_bytes=_AheadLib_oggpack_bytes,@33")
#pragma comment(linker, "/EXPORT:oggpack_get_buffer=_AheadLib_oggpack_get_buffer,@34")
#pragma comment(linker, "/EXPORT:oggpack_look=_AheadLib_oggpack_look,@35")
#pragma comment(linker, "/EXPORT:oggpack_look1=_AheadLib_oggpack_look1,@36")
#pragma comment(linker, "/EXPORT:oggpack_read=_AheadLib_oggpack_read,@37")
#pragma comment(linker, "/EXPORT:oggpack_read1=_AheadLib_oggpack_read1,@38")
#pragma comment(linker, "/EXPORT:oggpack_readinit=_AheadLib_oggpack_readinit,@39")
#pragma comment(linker, "/EXPORT:oggpack_reset=_AheadLib_oggpack_reset,@40")
#pragma comment(linker, "/EXPORT:oggpack_write=_AheadLib_oggpack_write,@41")
#pragma comment(linker, "/EXPORT:oggpack_writealign=_AheadLib_oggpack_writealign,@42")
#pragma comment(linker, "/EXPORT:oggpack_writeclear=_AheadLib_oggpack_writeclear,@43")
#pragma comment(linker, "/EXPORT:oggpack_writeinit=_AheadLib_oggpack_writeinit,@44")


PVOID pfnAheadLib_ogg_packet_clear;
PVOID pfnAheadLib_ogg_page_bos;
PVOID pfnAheadLib_ogg_page_continued;
PVOID pfnAheadLib_ogg_page_eos;
PVOID pfnAheadLib_ogg_page_granulepos;
PVOID pfnAheadLib_ogg_page_packets;
PVOID pfnAheadLib_ogg_page_pageno;
PVOID pfnAheadLib_ogg_page_serialno;
PVOID pfnAheadLib_ogg_page_version;
PVOID pfnAheadLib_ogg_stream_clear;
PVOID pfnAheadLib_ogg_stream_destroy;
PVOID pfnAheadLib_ogg_stream_eos;
PVOID pfnAheadLib_ogg_stream_flush;
PVOID pfnAheadLib_ogg_stream_init;
PVOID pfnAheadLib_ogg_stream_packetin;
PVOID pfnAheadLib_ogg_stream_packetout;
PVOID pfnAheadLib_ogg_stream_packetpeek;
PVOID pfnAheadLib_ogg_stream_pagein;
PVOID pfnAheadLib_ogg_stream_pageout;
PVOID pfnAheadLib_ogg_stream_reset;
PVOID pfnAheadLib_ogg_stream_reset_serialno;
PVOID pfnAheadLib_ogg_sync_buffer;
PVOID pfnAheadLib_ogg_sync_clear;
PVOID pfnAheadLib_ogg_sync_destroy;
PVOID pfnAheadLib_ogg_sync_init;
PVOID pfnAheadLib_ogg_sync_pageout;
PVOID pfnAheadLib_ogg_sync_pageseek;
PVOID pfnAheadLib_ogg_sync_reset;
PVOID pfnAheadLib_ogg_sync_wrote;
PVOID pfnAheadLib_oggpack_adv;
PVOID pfnAheadLib_oggpack_adv1;
PVOID pfnAheadLib_oggpack_bits;
PVOID pfnAheadLib_oggpack_bytes;
PVOID pfnAheadLib_oggpack_get_buffer;
PVOID pfnAheadLib_oggpack_look;
PVOID pfnAheadLib_oggpack_look1;
PVOID pfnAheadLib_oggpack_read;
PVOID pfnAheadLib_oggpack_read1;
PVOID pfnAheadLib_oggpack_readinit;
PVOID pfnAheadLib_oggpack_reset;
PVOID pfnAheadLib_oggpack_write;
PVOID pfnAheadLib_oggpack_writealign;
PVOID pfnAheadLib_oggpack_writeclear;
PVOID pfnAheadLib_oggpack_writeinit;


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

	lstrcat(tzPath, TEXT("\\ogg_ori.dll"));

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
	pfnAheadLib_ogg_packet_clear = GetAddress("ogg_packet_clear");
	pfnAheadLib_ogg_page_bos = GetAddress("ogg_page_bos");
	pfnAheadLib_ogg_page_continued = GetAddress("ogg_page_continued");
	pfnAheadLib_ogg_page_eos = GetAddress("ogg_page_eos");
	pfnAheadLib_ogg_page_granulepos = GetAddress("ogg_page_granulepos");
	pfnAheadLib_ogg_page_packets = GetAddress("ogg_page_packets");
	pfnAheadLib_ogg_page_pageno = GetAddress("ogg_page_pageno");
	pfnAheadLib_ogg_page_serialno = GetAddress("ogg_page_serialno");
	pfnAheadLib_ogg_page_version = GetAddress("ogg_page_version");
	pfnAheadLib_ogg_stream_clear = GetAddress("ogg_stream_clear");
	pfnAheadLib_ogg_stream_destroy = GetAddress("ogg_stream_destroy");
	pfnAheadLib_ogg_stream_eos = GetAddress("ogg_stream_eos");
	pfnAheadLib_ogg_stream_flush = GetAddress("ogg_stream_flush");
	pfnAheadLib_ogg_stream_init = GetAddress("ogg_stream_init");
	pfnAheadLib_ogg_stream_packetin = GetAddress("ogg_stream_packetin");
	pfnAheadLib_ogg_stream_packetout = GetAddress("ogg_stream_packetout");
	pfnAheadLib_ogg_stream_packetpeek = GetAddress("ogg_stream_packetpeek");
	pfnAheadLib_ogg_stream_pagein = GetAddress("ogg_stream_pagein");
	pfnAheadLib_ogg_stream_pageout = GetAddress("ogg_stream_pageout");
	pfnAheadLib_ogg_stream_reset = GetAddress("ogg_stream_reset");
	pfnAheadLib_ogg_stream_reset_serialno = GetAddress("ogg_stream_reset_serialno");
	pfnAheadLib_ogg_sync_buffer = GetAddress("ogg_sync_buffer");
	pfnAheadLib_ogg_sync_clear = GetAddress("ogg_sync_clear");
	pfnAheadLib_ogg_sync_destroy = GetAddress("ogg_sync_destroy");
	pfnAheadLib_ogg_sync_init = GetAddress("ogg_sync_init");
	pfnAheadLib_ogg_sync_pageout = GetAddress("ogg_sync_pageout");
	pfnAheadLib_ogg_sync_pageseek = GetAddress("ogg_sync_pageseek");
	pfnAheadLib_ogg_sync_reset = GetAddress("ogg_sync_reset");
	pfnAheadLib_ogg_sync_wrote = GetAddress("ogg_sync_wrote");
	pfnAheadLib_oggpack_adv = GetAddress("oggpack_adv");
	pfnAheadLib_oggpack_adv1 = GetAddress("oggpack_adv1");
	pfnAheadLib_oggpack_bits = GetAddress("oggpack_bits");
	pfnAheadLib_oggpack_bytes = GetAddress("oggpack_bytes");
	pfnAheadLib_oggpack_get_buffer = GetAddress("oggpack_get_buffer");
	pfnAheadLib_oggpack_look = GetAddress("oggpack_look");
	pfnAheadLib_oggpack_look1 = GetAddress("oggpack_look1");
	pfnAheadLib_oggpack_read = GetAddress("oggpack_read");
	pfnAheadLib_oggpack_read1 = GetAddress("oggpack_read1");
	pfnAheadLib_oggpack_readinit = GetAddress("oggpack_readinit");
	pfnAheadLib_oggpack_reset = GetAddress("oggpack_reset");
	pfnAheadLib_oggpack_write = GetAddress("oggpack_write");
	pfnAheadLib_oggpack_writealign = GetAddress("oggpack_writealign");
	pfnAheadLib_oggpack_writeclear = GetAddress("oggpack_writeclear");
	pfnAheadLib_oggpack_writeinit = GetAddress("oggpack_writeinit");
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



EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_packet_clear(void)
{
	__asm jmp pfnAheadLib_ogg_packet_clear;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_bos(void)
{
	__asm jmp pfnAheadLib_ogg_page_bos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_continued(void)
{
	__asm jmp pfnAheadLib_ogg_page_continued;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_eos(void)
{
	__asm jmp pfnAheadLib_ogg_page_eos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_granulepos(void)
{
	__asm jmp pfnAheadLib_ogg_page_granulepos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_packets(void)
{
	__asm jmp pfnAheadLib_ogg_page_packets;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_pageno(void)
{
	__asm jmp pfnAheadLib_ogg_page_pageno;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_serialno(void)
{
	__asm jmp pfnAheadLib_ogg_page_serialno;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_page_version(void)
{
	__asm jmp pfnAheadLib_ogg_page_version;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_clear(void)
{
	__asm jmp pfnAheadLib_ogg_stream_clear;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_destroy(void)
{
	__asm jmp pfnAheadLib_ogg_stream_destroy;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_eos(void)
{
	__asm jmp pfnAheadLib_ogg_stream_eos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_flush(void)
{
	__asm jmp pfnAheadLib_ogg_stream_flush;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_init(void)
{
	__asm jmp pfnAheadLib_ogg_stream_init;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_packetin(void)
{
	__asm jmp pfnAheadLib_ogg_stream_packetin;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_packetout(void)
{
	__asm jmp pfnAheadLib_ogg_stream_packetout;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_packetpeek(void)
{
	__asm jmp pfnAheadLib_ogg_stream_packetpeek;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_pagein(void)
{
	__asm jmp pfnAheadLib_ogg_stream_pagein;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_pageout(void)
{
	__asm jmp pfnAheadLib_ogg_stream_pageout;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_reset(void)
{
	__asm jmp pfnAheadLib_ogg_stream_reset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_stream_reset_serialno(void)
{
	__asm jmp pfnAheadLib_ogg_stream_reset_serialno;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_buffer(void)
{
	__asm jmp pfnAheadLib_ogg_sync_buffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_clear(void)
{
	__asm jmp pfnAheadLib_ogg_sync_clear;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_destroy(void)
{
	__asm jmp pfnAheadLib_ogg_sync_destroy;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_init(void)
{
	__asm jmp pfnAheadLib_ogg_sync_init;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_pageout(void)
{
	__asm jmp pfnAheadLib_ogg_sync_pageout;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_pageseek(void)
{
	__asm jmp pfnAheadLib_ogg_sync_pageseek;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_reset(void)
{
	__asm jmp pfnAheadLib_ogg_sync_reset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ogg_sync_wrote(void)
{
	__asm jmp pfnAheadLib_ogg_sync_wrote;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_adv(void)
{
	__asm jmp pfnAheadLib_oggpack_adv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_adv1(void)
{
	__asm jmp pfnAheadLib_oggpack_adv1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_bits(void)
{
	__asm jmp pfnAheadLib_oggpack_bits;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_bytes(void)
{
	__asm jmp pfnAheadLib_oggpack_bytes;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_get_buffer(void)
{
	__asm jmp pfnAheadLib_oggpack_get_buffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_look(void)
{
	__asm jmp pfnAheadLib_oggpack_look;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_look1(void)
{
	__asm jmp pfnAheadLib_oggpack_look1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_read(void)
{
	__asm jmp pfnAheadLib_oggpack_read;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_read1(void)
{
	__asm jmp pfnAheadLib_oggpack_read1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_readinit(void)
{
	__asm jmp pfnAheadLib_oggpack_readinit;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_reset(void)
{
	__asm jmp pfnAheadLib_oggpack_reset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_write(void)
{
	__asm jmp pfnAheadLib_oggpack_write;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_writealign(void)
{
	__asm jmp pfnAheadLib_oggpack_writealign;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_writeclear(void)
{
	__asm jmp pfnAheadLib_oggpack_writeclear;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_oggpack_writeinit(void)
{
	__asm jmp pfnAheadLib_oggpack_writeinit;
}

