#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include <filesystem>
#include "HOOK_main.h"
#include "convert.h"
#include "LE.h"
#include "text_process.h"

VOID __declspec(dllexport) startmessage()
{
    std::wstring msg = L"本补丁由jyxjyx1234制作，使用claude-neptune-v2进行翻译，免费发布，首发御爱同萌（ai2.moe）、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可在御爱评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";

#ifndef Release_for_others
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
#endif
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
        install_LE();
        HOOK_main();
        startmessage();
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
