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

#ifndef Release_for_others
#include "resource.h"
#endif

#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif

VOID __declspec(dllexport) stratmessage()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::wstring msg = L"本补丁由ALyCE / jyxjyx1234制作，使用"
        + std::wstring(modeltypew) 
        + L"进行翻译，免费发布于jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    //std::wstring t1(L"本补丁由Steins;Gate，julixian，coroz，SUAD，ALyCE，是幼微鸭mua，冥语，魔神海谢拉 等共同出资，使用官方渠道claude-3.5-sonnet进行翻译，免费发布，首发2dfan及github，禁止任何形式的收费转载。\n如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从网赚盘（如飞猫云）or 付费下载到本补丁，请顺手点个举报。");
    //msg = L"适度游戏益脑，沉迷游戏伤身\n 仅供学习交流，请于24小时删除 ^ ^";
#ifndef Release_for_others
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
    //if (GetACP() != 936) {
    //    MessageBoxW(NULL, L"请在简体中文 (CP936) 环境下运行！", L"错误", MB_ICONERROR);
    //    exit(0);
    //}
#endif
}


#include<filesystem>
BOOL font_cache_del_flag = false;
void del_font_cache_MED() {
    if (font_cache_del_flag) return;
    font_cache_del_flag = true;
    std::filesystem::path fontset_path = std::filesystem::current_path() / "_FONTSET.MED";
    if (std::filesystem::exists(fontset_path)) {
        std::filesystem::remove(fontset_path);
    }
}
void del_font_cache_majiro() {
    if (font_cache_del_flag) return;
    std::string path = "savedata";
    if (!std::filesystem::exists(path)) {
		printf("未找到文件夹：%s\n", path.c_str());
        return;
    }
    for (const auto& entry : std::filesystem::directory_iterator(path)) {
		//printf("文件：%s\n", entry.path().string().c_str());
        if (entry.path().extension() == ".fcd") {
            std::filesystem::remove(entry.path());
			printf("删除文件：%s\n", entry.path().string().c_str());
        }
    }
    font_cache_del_flag = true;
}

BOOL HaveCHSPath() {
    std::wstring currentPathW = std::filesystem::current_path().wstring();
    BOOL res;
    int bufferSize = WideCharToMultiByte(CP_ACP, WC_NO_BEST_FIT_CHARS, currentPathW.c_str(), -1, nullptr, 0, nullptr, &res);
    return res;
}

#ifndef Release_for_others
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
#endif

rr::RConfig config1;

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    

    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        config1.ReadConfig("hook.ini");
        HOOK_main();
        if (config1.ReadInt("GLOBAL", "MED", 0) == 1) del_font_cache_MED();
        if (config1.ReadInt("GLOBAL", "MAJIRO", 0) == 1) del_font_cache_majiro();
#ifndef Release_for_others
		loadfontmem(hModule);
#endif
        if (HaveCHSPath()) {
            MessageBoxW(NULL, (L"检测到有中文路径，请修改后重新启动:" + std::filesystem::current_path().wstring()).c_str(), NULL, NULL);
            exit(1);
        }
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

    if (ul_reason_for_call == DLL_PROCESS_ATTACH){
        if (config1.ReadInt("GLOBAL", "NOTSTOP", 0) == 1) {
            std::thread newt(stratmessage);
            newt.detach();
        }
        else {
			stratmessage();
        }
    }

    return TRUE;
}

