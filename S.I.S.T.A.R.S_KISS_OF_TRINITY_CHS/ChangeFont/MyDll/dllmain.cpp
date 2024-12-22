#include <Windows.h>
#include "detours.h"
#pragma comment( lib, "detours.lib")

extern void change_font();

VOID __declspec(dllexport) stratmessage()
{
    MessageBoxW(NULL, L"本补丁由jyxjyx1234/ALyCE免费制作并发布于github/2dfan，使用cluade-3-5-sonnet进行翻译，仅供交流学习。如遇运行问题可到github或2dfan补丁评论区反馈。", NULL, NULL);
}

// 原始的CreateFontIndirectA函数指针
static HFONT(WINAPI* Real_CreateFontIndirectA)(CONST LOGFONTA* lplf) = CreateFontIndirectA;

// Hook函数
HFONT WINAPI Mine_CreateFontIndirectA(LOGFONTA* lplf)
{
    if (lplf != NULL)
    {
        lplf->lfCharSet = 0x86;
        strncpy_s(lplf->lfFaceName, LF_FACESIZE, "宋体", _TRUNCATE);
        lplf->lfFaceName[LF_FACESIZE - 1] = '\0';
    }
    return Real_CreateFontIndirectA(lplf);
}

void change_font() {
    DetourRestoreAfterWith();
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)Real_CreateFontIndirectA, Mine_CreateFontIndirectA);
    DetourTransactionCommit();
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
        change_font();
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

