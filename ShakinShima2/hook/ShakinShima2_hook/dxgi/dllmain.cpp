
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>
#include "HOOK_main.h"

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:BuildOtlCache=_AheadLib_BuildOtlCache,@1")
#pragma comment(linker, "/EXPORT:FreeOtlResources=_AheadLib_FreeOtlResources,@2")
#pragma comment(linker, "/EXPORT:GetOtlFeatureDefs=_AheadLib_GetOtlFeatureDefs,@3")
#pragma comment(linker, "/EXPORT:GetOtlGlyphAlternates=_AheadLib_GetOtlGlyphAlternates,@4")
#pragma comment(linker, "/EXPORT:GetOtlLangSysList=_AheadLib_GetOtlLangSysList,@5")
#pragma comment(linker, "/EXPORT:GetOtlScriptList=_AheadLib_GetOtlScriptList,@6")
#pragma comment(linker, "/EXPORT:GetOtlVersion=_AheadLib_GetOtlVersion,@7")
#pragma comment(linker, "/EXPORT:RepositionOtlSingleGlyph=_AheadLib_RepositionOtlSingleGlyph,@8")
#pragma comment(linker, "/EXPORT:SubstituteOtlSingleGlyph=_AheadLib_SubstituteOtlSingleGlyph,@9")
#pragma comment(linker, "/EXPORT:ValidateLogClust=_AheadLib_ValidateLogClust,@10")
#pragma comment(linker, "/EXPORT:OtlAssertFailed=_AheadLib_OtlAssertFailed,@11")
#pragma comment(linker, "/EXPORT:ShapingCreateFontCacheData=_AheadLib_ShapingCreateFontCacheData,@12")
#pragma comment(linker, "/EXPORT:ShapingDrawGlyphs=_AheadLib_ShapingDrawGlyphs,@13")
#pragma comment(linker, "/EXPORT:ShapingGetBreakingProperties=_AheadLib_ShapingGetBreakingProperties,@14")
#pragma comment(linker, "/EXPORT:ShapingGetCombiningOptions=_AheadLib_ShapingGetCombiningOptions,@15")
#pragma comment(linker, "/EXPORT:ShapingGetGlyphPositions=_AheadLib_ShapingGetGlyphPositions,@16")
#pragma comment(linker, "/EXPORT:ShapingGetGlyphs=_AheadLib_ShapingGetGlyphs,@17")
#pragma comment(linker, "/EXPORT:ShapingLoadScriptEngine=_AheadLib_ShapingLoadScriptEngine,@18")
#pragma comment(linker, "/EXPORT:ShapingSetAssertFunction=_AheadLib_ShapingSetAssertFunction,@19")
#pragma comment(linker, "/EXPORT:ShapingSetInvariantAssertFunction=_AheadLib_ShapingSetInvariantAssertFunction,@20")


PVOID pfnAheadLib_BuildOtlCache;
PVOID pfnAheadLib_FreeOtlResources;
PVOID pfnAheadLib_GetOtlFeatureDefs;
PVOID pfnAheadLib_GetOtlGlyphAlternates;
PVOID pfnAheadLib_GetOtlLangSysList;
PVOID pfnAheadLib_GetOtlScriptList;
PVOID pfnAheadLib_GetOtlVersion;
PVOID pfnAheadLib_RepositionOtlSingleGlyph;
PVOID pfnAheadLib_SubstituteOtlSingleGlyph;
PVOID pfnAheadLib_ValidateLogClust;
PVOID pfnAheadLib_OtlAssertFailed;
PVOID pfnAheadLib_ShapingCreateFontCacheData;
PVOID pfnAheadLib_ShapingDrawGlyphs;
PVOID pfnAheadLib_ShapingGetBreakingProperties;
PVOID pfnAheadLib_ShapingGetCombiningOptions;
PVOID pfnAheadLib_ShapingGetGlyphPositions;
PVOID pfnAheadLib_ShapingGetGlyphs;
PVOID pfnAheadLib_ShapingLoadScriptEngine;
PVOID pfnAheadLib_ShapingSetAssertFunction;
PVOID pfnAheadLib_ShapingSetInvariantAssertFunction;


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

	lstrcat(tzPath, TEXT("\\TextShaping.dll"));

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
	pfnAheadLib_BuildOtlCache = GetAddress("BuildOtlCache");
	pfnAheadLib_FreeOtlResources = GetAddress("FreeOtlResources");
	pfnAheadLib_GetOtlFeatureDefs = GetAddress("GetOtlFeatureDefs");
	pfnAheadLib_GetOtlGlyphAlternates = GetAddress("GetOtlGlyphAlternates");
	pfnAheadLib_GetOtlLangSysList = GetAddress("GetOtlLangSysList");
	pfnAheadLib_GetOtlScriptList = GetAddress("GetOtlScriptList");
	pfnAheadLib_GetOtlVersion = GetAddress("GetOtlVersion");
	pfnAheadLib_RepositionOtlSingleGlyph = GetAddress("RepositionOtlSingleGlyph");
	pfnAheadLib_SubstituteOtlSingleGlyph = GetAddress("SubstituteOtlSingleGlyph");
	pfnAheadLib_ValidateLogClust = GetAddress("ValidateLogClust");
	pfnAheadLib_OtlAssertFailed = GetAddress("OtlAssertFailed");
	pfnAheadLib_ShapingCreateFontCacheData = GetAddress("ShapingCreateFontCacheData");
	pfnAheadLib_ShapingDrawGlyphs = GetAddress("ShapingDrawGlyphs");
	pfnAheadLib_ShapingGetBreakingProperties = GetAddress("ShapingGetBreakingProperties");
	pfnAheadLib_ShapingGetCombiningOptions = GetAddress("ShapingGetCombiningOptions");
	pfnAheadLib_ShapingGetGlyphPositions = GetAddress("ShapingGetGlyphPositions");
	pfnAheadLib_ShapingGetGlyphs = GetAddress("ShapingGetGlyphs");
	pfnAheadLib_ShapingLoadScriptEngine = GetAddress("ShapingLoadScriptEngine");
	pfnAheadLib_ShapingSetAssertFunction = GetAddress("ShapingSetAssertFunction");
	pfnAheadLib_ShapingSetInvariantAssertFunction = GetAddress("ShapingSetInvariantAssertFunction");
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


EXTERN_C __declspec(naked) void __cdecl AheadLib_BuildOtlCache(void)
{
	__asm jmp pfnAheadLib_BuildOtlCache;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_FreeOtlResources(void)
{
	__asm jmp pfnAheadLib_FreeOtlResources;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOtlFeatureDefs(void)
{
	__asm jmp pfnAheadLib_GetOtlFeatureDefs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOtlGlyphAlternates(void)
{
	__asm jmp pfnAheadLib_GetOtlGlyphAlternates;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOtlLangSysList(void)
{
	__asm jmp pfnAheadLib_GetOtlLangSysList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOtlScriptList(void)
{
	__asm jmp pfnAheadLib_GetOtlScriptList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetOtlVersion(void)
{
	__asm jmp pfnAheadLib_GetOtlVersion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_RepositionOtlSingleGlyph(void)
{
	__asm jmp pfnAheadLib_RepositionOtlSingleGlyph;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SubstituteOtlSingleGlyph(void)
{
	__asm jmp pfnAheadLib_SubstituteOtlSingleGlyph;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ValidateLogClust(void)
{
	__asm jmp pfnAheadLib_ValidateLogClust;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_OtlAssertFailed(void)
{
	__asm jmp pfnAheadLib_OtlAssertFailed;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingCreateFontCacheData(void)
{
	__asm jmp pfnAheadLib_ShapingCreateFontCacheData;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingDrawGlyphs(void)
{
	__asm jmp pfnAheadLib_ShapingDrawGlyphs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingGetBreakingProperties(void)
{
	__asm jmp pfnAheadLib_ShapingGetBreakingProperties;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingGetCombiningOptions(void)
{
	__asm jmp pfnAheadLib_ShapingGetCombiningOptions;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingGetGlyphPositions(void)
{
	__asm jmp pfnAheadLib_ShapingGetGlyphPositions;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingGetGlyphs(void)
{
	__asm jmp pfnAheadLib_ShapingGetGlyphs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingLoadScriptEngine(void)
{
	__asm jmp pfnAheadLib_ShapingLoadScriptEngine;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingSetAssertFunction(void)
{
	__asm jmp pfnAheadLib_ShapingSetAssertFunction;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_ShapingSetInvariantAssertFunction(void)
{
	__asm jmp pfnAheadLib_ShapingSetInvariantAssertFunction;
}
