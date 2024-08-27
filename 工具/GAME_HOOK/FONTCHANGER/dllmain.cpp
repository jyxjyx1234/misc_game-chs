#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "winnls.h"
#include "readconfig.h"
#include "convert.h"

VOID __declspec(dllexport) stratmessage()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::string patronage = config.ReadString("STARTMESSAGE", "patronage", "");
    LPCWSTR patronagew = string2LPCWSTR(patronage);
    std::wstring t1(L"本补丁由");
    std::wstring t2(patronagew);
    std::wstring t3(L"ALyCE / jyxjyx1234制作，使用");
    std::wstring t4(modeltypew);
    std::wstring t5(L"进行翻译，免费发布于2dfan/github。\n如果从 网赚盘（如飞猫云） or 付费 下载到本补丁，请顺手点个举报。");
    t1 = t1 + t2 + t3 + t4 + t5;
    MessageBoxW(NULL, t1.c_str(), L"信息", NULL);
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

