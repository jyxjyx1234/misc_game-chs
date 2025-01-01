#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "convert.h"

VOID __declspec(dllexport) startmessage()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::wstring msg = L"本补丁由ALyCE / jyxjyx1234制作，使用"
        + std::wstring(modeltypew)
        + L"进行翻译，免费发布，首发2dfan、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n本人制作以及参与制作的所有补丁禁止转载至“鲲Galgame”补丁站。\n请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
}

VOID __declspec(dllexport) _(){
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
		startmessage();
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

