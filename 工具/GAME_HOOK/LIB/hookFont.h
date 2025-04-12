#pragma once
#include <Windows.h>
#include "winapi_def.h"
#include <iostream>
#include "convert.h"
#include "detours.h"

extern pCreateFontA TrueCreateFontA;
extern pCreateFontW TrueCreateFontW;
extern pCreateFontIndirectA TrueCreateFontIndirectA;
extern pCreateFontIndirectW TrueCreateFontIndirectW;

extern std::wstring newFontName;
extern int HeightScaleFactor;
extern int WidthScaleFactor;
extern int newWeight;
extern DWORD newCharset;

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
    LPCWSTR pszFaceName);

HFONT WINAPI HookedCreateFontIndirectW(CONST LOGFONTW* lplf);

HFONT WINAPI HookedCreateFontA(
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
    LPCSTR pszFaceName);

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf);

void installFontHook_main(BOOL A, BOOL W, BOOL IA, BOOL IW);
void installEnumFontHook_main();