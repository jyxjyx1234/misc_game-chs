#include <windows.h>
#include "window.h"
#include "textprocess.h"
#pragma comment(lib, "detours.lib")
#include "resource.h"

VOID __declspec(dllexport) _(){}

void loadfontmem(HMODULE hModule) {
    HRSRC hRes = FindResource(hModule, MAKEINTRESOURCE(IDR_FONT1), RT_FONT);
    if (hRes) {
        HGLOBAL hResData = LoadResource(hModule, hRes);
        if (hResData) {
            void* pFontData = LockResource(hResData);
            DWORD fontSize = SizeofResource(hModule, hRes);
            DWORD numFonts = 0;
            HANDLE hFont = AddFontMemResourceEx(pFontData, fontSize, NULL, &numFonts);
        }
	}
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH: {
		//MessageBoxA(NULL, "DLL_PROCESS_ATTACH", "DLL_PROCESS_ATTACH", MB_OK);
        if (GetACP() != 936) {
			MessageBoxW(NULL, L"请在简体中文 (CP936) 环境下运行！", L"错误", MB_ICONERROR);
			exit(0);
        }
        loadfontmem(hModule);
		windowHook_main();
        textprocess_main();
    }
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

