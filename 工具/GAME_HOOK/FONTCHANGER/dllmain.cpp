#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "winnls.h"
#include "readconfig.h"
#include "convert.h"
#include "timer.h"
#include <thread>
#include "resource2.h"

VOID __declspec(dllexport) stratmessage()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::wstring msg = L"本补丁由ALyCE / jyxjyx1234制作，使用"
        + std::wstring(modeltypew) 
        + L"进行翻译，免费发布，首发2dfan、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n本人制作以及参与制作的所有补丁禁止转载至“鲲Galgame”补丁站。\n请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    //std::wstring t1(L"本补丁由Steins;Gate，julixian，coroz，SUAD，ALyCE，是幼微鸭mua，冥语，魔神海谢拉 等共同出资，使用官方渠道claude-3.5-sonnet进行翻译，免费发布，首发2dfan及github，禁止任何形式的收费转载。\n如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从网赚盘（如飞猫云）or 付费下载到本补丁，请顺手点个举报。");
    //msg = L"适度游戏益脑，沉迷游戏伤身\n 仅供学习交流，请于24小时删除 ^ ^";
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
}


//#include<filesystem>
//BOOL font_cache_del_flag = false;
//void del_font_cache() {
//    // for majiro only
//    if (font_cache_del_flag) return;
//    std::string path = "savedata";
//    if (!std::filesystem::exists(path)) {
//        return;
//    }
//    for (const auto& entry : std::filesystem::directory_iterator(path)) {
//        if (entry.path().extension() == ".fcd") {
//            std::filesystem::remove(entry.path());
//        }
//    }
//    font_cache_del_flag = true;
//}

//void loadfontmem(HMODULE hModule) {
//    HRSRC hRes = FindResource(hModule, MAKEINTRESOURCE(IDR_FONT1), RT_FONT);
//    if (hRes) {
//        HGLOBAL hResData = LoadResource(hModule, hRes);
//        if (hResData) {
//            void* pFontData = LockResource(hResData);
//            DWORD fontSize = SizeofResource(hModule, hRes);
//            DWORD numFonts = 0;
//            HANDLE hFont = AddFontMemResourceEx(pFontData, fontSize, NULL, &numFonts);
//        }
//	}
//}


rr::RConfig config1;

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    /*if (ul_reason_for_call == DLL_PROCESS_ATTACH){
        std::thread newt(stratmessage);
        newt.detach();
    }*/

    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        //del_font_cache();
		//loadfontmem(hModule);
        HOOK_main();
        stratmessage();
        config1.ReadConfig("hook.ini");
        if (config1.ReadInt("GLOBAL", "TIMER", 0) == 1) InitializeTimer();
        break;
    case DLL_THREAD_ATTACH:
        break;
    case DLL_THREAD_DETACH:
        break;
    case DLL_PROCESS_DETACH:
        if (config1.ReadInt("GLOBAL", "TIMER", 0) == 1) FinalizeTimer();
        //while (RemoveFontResourceExA(config1.ReadString("FONT", "FONTFILENAME", "").c_str(), FR_NOT_ENUM, 0)) std::cout << "字体已移除！" << std::endl;
        break;
    }
    return TRUE;
}

