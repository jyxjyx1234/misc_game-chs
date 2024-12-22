#include <Windows.h>
#include "detours.h"
#include <fstream>
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif
#include "hook_createfontindrectA.h"
#include <iostream>

typedef HFONT(WINAPI* pCREATEFONTW)(
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
    LPCWSTR pszFaceName
    );
pCREATEFONTW TrueCreateFontW = CreateFontW;

HFONT WINAPI HookedCreateFontW(
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
    LPCWSTR pszFaceName)
{
    return TrueCreateFontW(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, L"AnoHinoKimi_CHS");
}

void hook_createfontW_main() {
    AddFontResourceExW(L"AnoHinoKimi_CHS.ttf", FR_PRIVATE, 0);
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontW, HookedCreateFontW);
    DetourTransactionCommit();
}