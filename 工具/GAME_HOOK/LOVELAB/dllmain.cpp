#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "convert.h"

VOID __declspec(dllexport) stratmessage()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3.7-sonnet");
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::wstring msg = L"本补丁由jyxjyx1234制作，使用"
        + std::wstring(modeltypew)
        + L"进行翻译，免费发布于jyxjyx1234的博客（jyxjyx1234.github.io)、御爱同萌（ai2.moe），禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可发邮件至jyxjyx1234@outlook.com或通过御爱同萌站内信反馈。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    //std::wstring t1(L"本补丁由Steins;Gate，julixian，coroz，SUAD，ALyCE，是幼微鸭mua，冥语，魔神海谢拉 等共同出资，使用官方渠道claude-3.5-sonnet进行翻译，免费发布，首发2dfan及github，禁止任何形式的收费转载。\n如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从网赚盘（如飞猫云）or 付费下载到本补丁，请顺手点个举报。");
    //msg = L"适度游戏益脑，沉迷游戏伤身\n 仅供学习交流，请于24小时删除 ^ ^";
#ifndef Release_for_others
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
    //MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
    //if (GetACP() != 936) {
    //    MessageBoxW(NULL, L"请在简体中文 (CP936) 环境下运行！", L"错误", MB_ICONERROR);
    //    exit(0);
    //}
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

