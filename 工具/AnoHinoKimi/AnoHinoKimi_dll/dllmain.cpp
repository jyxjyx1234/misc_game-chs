// dllmain.cpp : 定义 DLL 应用程序的入口点。
#include <Windows.h>
#include "hook_SetWindowTextA.h"
#include "hook_createfontindrectA.h"
#include <iostream>
VOID __declspec(dllexport) _()
{
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH: {
        hook_setWindowTextA_main();
        hook_createfontW_main();
		break;
    }
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

