#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"

VOID __declspec(dllexport) stratmessage()
{
    MessageBoxW(NULL, L"本补丁由jyxjyx1234/ALyCE免费制作并发布于github/2dfan，使用cluade-3-haiku进行翻译，仅供交流学习。如遇运行问题可到github或2dfan补丁评论区反馈。", NULL, NULL);
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        stratmessage();
        HOOK_main();
        break;
    case DLL_THREAD_ATTACH:
        break;
    case DLL_THREAD_DETACH:
        break;
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

