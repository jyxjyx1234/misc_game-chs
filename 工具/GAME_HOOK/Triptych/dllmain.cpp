// dllmain.cpp : 定义 DLL 应用程序的入口点。
#include "winapi_def.h"
#include <iostream>
#include "convert.h"
#include "HOOK_main.h"
#include "LE.h"
#pragma comment(lib, "detours.lib")

VOID __declspec(dllexport) ___()
{
}

VOID stratmessage()
{
    std::wstring modeltypew = L"Deepseek-R1";
    std::wstring msg = L"本补丁由jyxjyx1234制作，使用"
        + modeltypew
        + L"进行翻译，免费发布于jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
}


//void loadfontmem(HMODULE hModule) {
//    HRSRC hRes = FindResource(hModule, MAKEINTRESOURCE(IDR_FONT1), RT_FONT);
//    if (hRes) {
//        HGLOBAL hResData = LoadResource(hModule, hRes);
//        if (hResData) {
//            void* pFontData = LockResource(hResData);
//            DWORD fontSize = SizeofResource(hModule, hRes);
//            DWORD numFonts = 0;
//            HANDLE hFont = AddFontMemResourceEx(pFontData, fontSize, NULL, &numFonts);
//            if (hFont == 0) {
//                MessageBoxA(NULL, "AddFontMemResourceEx failed", "Error", MB_OK | MB_ICONERROR);
//            }
//        }
//    }
//}

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
		stratmessage();
		//loadfontmem(hModule);
		break;
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

