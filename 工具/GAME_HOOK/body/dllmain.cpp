#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "convert.h"
#include <thread>
#include "LE.h"
#pragma comment(lib, "detours.lib")

VOID __declspec(dllexport) ___()
{
}


BOOL APIENTRY DllMain(HMODULE hModule,
    DWORD  ul_reason_for_call,
    LPVOID lpReserved
)
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        install_LE();
        MessageBox(NULL, L"本补丁由gpt4o-1120翻译，免费发布", L"信息", NULL);
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
