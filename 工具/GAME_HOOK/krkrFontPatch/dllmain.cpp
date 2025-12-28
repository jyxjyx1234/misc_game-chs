// dllmain.cpp : 定义 DLL 应用程序的入口点。
#include "winapi_def.h"
#include "detours.h"
#include "hookFont.h"
//#include "textReplacer.h"
#pragma comment(lib, "detours.lib")
#pragma comment(lib, "CHS_PACK_LIB.lib")

VOID __declspec(dllexport) _()
{
}

//void CreateConsole()
//{
//	if (AllocConsole())
//	{
//		FILE* fp;
//		freopen_s(&fp, "CONOUT$", "w", stdout);
//		setlocale(LC_CTYPE, "zh-ch");
//		SetConsoleOutputCP(95003);
//	}
//}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
	case DLL_PROCESS_ATTACH:
		//CreateConsole();
		//if (GetACP() != 936) {
		//	MessageBoxW(NULL, L"请使用简体中文环境运行本程序！", NULL, NULL);
		//	exit(1);
		//}
		newFontName = L"宋体";
        newCharset = 0x86;
		//newWeight = 600;
		installFontHook_main(TRUE, TRUE, TRUE, TRUE);
		//install_hook_textreplaceFromPackEx(5, "chs.pack", "replace.txt", "mykey");
		break;
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

