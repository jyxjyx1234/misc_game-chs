#include <Windows.h>
#include "detours.h"
#pragma comment( lib, "detours.lib")
#include "process_text.h"

extern void change_font();
VOID __declspec(dllexport) stratmessage()
{
    MessageBoxW(NULL, L"本补丁由jyxjyx1234/ALyCE免费制作并发布于github/2dfan，使用cluade-3-5-sonnet进行翻译，仅供交流学习。如遇运行问题可到github或2dfan补丁评论区反馈。", NULL, NULL);
}

typedef HFONT(WINAPI* pCreateFontA) (
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName
);
pCreateFontA T_CreateFontA = CreateFontA;

HFONT WINAPI NEW_CreateFontA(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName) {
    AddFontResourceEx(L"HANAFONT.ttf",FR_PRIVATE, 0);
    return T_CreateFontA(
        cHeight,
        cWidth + 5,
        cEscapement,
        cOrientation,
        cWeight,
        bItalic,
        bUnderline,
        bStrikeOut,
        iCharSet,
        iOutPrecision,
        iClipPrecision,
        iQuality,
        iPitchAndFamily,
        "HANAFONT"
    );
}


void change_font() {
    DetourRestoreAfterWith();
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)T_CreateFontA, NEW_CreateFontA);
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
        //InstallHook_dumptext();
        InstallHook_changetext();
        InstallHook_changetext2();
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

