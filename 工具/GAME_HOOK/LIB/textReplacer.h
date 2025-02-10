#include "winapi_def.h"
#include <map>
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <codecvt>
#include "convert.h"
#include "detours.h"
#include "hookFont.h"
#ifndef text_replace_h
#define text_replace_h

std::map<std::wstring, std::wstring> readReplaceMap(const std::string& filename, std::string k);

BOOL WINAPI HOOK_TextOutA(
    HDC hdc,
    int nXStart,
    int nYStart,
    LPCSTR lpString,
    int cbString
);

DWORD WINAPI HOOK_GetGlyphOutlineA(HDC hdc, UINT uChar, UINT uFormat, LPGLYPHMETRICS lpgm, DWORD cbBuffer, LPVOID lpvBuffer, const MAT2* lpmat2);

BOOL WINAPI HOOK_ExtTextOutA(HDC hdc, int X, int Y, UINT fuOptions, const RECT* lprc, LPCSTR lpString, UINT cbCount, const INT* lpDx);

void install_hook_textreplace(int mode);

std::wstring changeText(LPCSTR text);

extern std::map<std::wstring, std::wstring> charReplaceMap;
extern pGetGlyphOutlineA TrueGetGlyphOutlineA;
extern pTextOutA TrueTextOutA;
extern pExtTextOutA TrueExtTextOutA;
#endif