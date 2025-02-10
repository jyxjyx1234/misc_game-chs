#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "convert.h"
#include <thread>
#include "LE.h"
#include "resource.h"
#pragma comment(lib, "detours.lib")

VOID __declspec(dllexport) ___()
{
}

VOID stratmessage()
{
    std::string modeltype = "Deepseek-R1";
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::wstring msg = L"本补丁由jyxjyx1234制作，使用"
        + std::wstring(modeltypew)
        + L"进行翻译，免费发布于jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);

}

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

BOOL APIENTRY DllMain(HMODULE hModule,
    DWORD  ul_reason_for_call,
    LPVOID lpReserved
)
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        install_LE();
		stratmessage();
		loadfontmem(hModule);
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
