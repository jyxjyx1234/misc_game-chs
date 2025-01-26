#include <map>
#include <windows.h>
#include <string>
#include "convert.h"
#include "detours.h"
#include "textprocess.h"

std::string new_font_name = "SimSun";

std::map<std::wstring, std::wstring> readReplaceMap() {
    std::map<std::wstring, std::wstring> result;
    
    std::wstring u32line = L"ì∆≤‚“m ‘";
    std::wstring key, value;
    int i = 0;

    for (char32_t ch : u32line) {
        if (i % 2 == 0) {
            key = ch;
        }
        else {
            value = ch;
            result[key] = value;
        }
        i++;
    }
    return result;
}

std::map<std::wstring, std::wstring> charReplaceMap = readReplaceMap();

std::wstring changeText(LPCSTR text) {
    std::wstring wstr = sjisStringToWString(text);
    std::wstring new_wstr = L"";
    for (int i = 0; i < wstr.size(); i++) {
        if (charReplaceMap.find(wstr.substr(i, 1)) != charReplaceMap.end()) {
            new_wstr += charReplaceMap[wstr.substr(i, 1)];
        }
        else {
            new_wstr += wstr.substr(i, 1);
        }
    }
	return new_wstr;
}

typedef BOOL(WINAPI* pTextOutA)(
	HDC hdc,
	int nXStart,
	int nYStart,
	LPCSTR lpString,
	int cbString
    );
pTextOutA TrueTextOutA = TextOutA;

BOOL WINAPI HOOK_TextOutA(
	HDC hdc,
	int nXStart,
	int nYStart,
	LPCSTR lpString,
	int cbString
) {
    std::wstring new_wstr = changeText(lpString);
	return TextOutW(hdc, nXStart, nYStart, new_wstr.c_str(), wcslen(new_wstr.c_str()));
}

typedef HFONT(WINAPI* pCREATEFONTA)(
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
pCREATEFONTA TrueCreateFontA = CreateFontA;

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
    LPCSTR pszFaceName)
{
	//MessageBoxA(NULL, std::to_string(cHeight).c_str(), "HookedCreateFontA", MB_OK);
    return TrueCreateFontA(cHeight,
        cWidth,
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
        new_font_name.c_str());
}

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;
    if (modifiedLf.lfFaceName == nullptr) return TrueCreateFontIndirectA(&modifiedLf);
    if (modifiedLf.lfFaceName != nullptr) strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, new_font_name.c_str());
    return TrueCreateFontIndirectA(&modifiedLf);
}


typedef BOOL(WINAPI* pGetTextTextExtentExPointA) (
	HDC hdc,
	LPCSTR lpszStr,
	int cchString,
	int nMaxExtent,
	LPINT lpnFit,
	LPINT alpDx,
	LPSIZE lpSize
);

typedef BOOL(WINAPI* pGetTextExtentPoint32A) (
	HDC hdc,
	LPCSTR lpString,
	int c,
	LPSIZE ps
);

pGetTextTextExtentExPointA TrueGetTextExtentExPointA = GetTextExtentExPointA;
pGetTextExtentPoint32A TrueGetTextExtentPoint32A = GetTextExtentPoint32A;

BOOL WINAPI HookedGetTextExtentExPointA(HDC hdc, LPCSTR lpszStr, int cchString, int nMaxExtent, LPINT lpnFit, LPINT alpDx, LPSIZE lpSize)
{
    std::wstring new_wstr = changeText(lpszStr);
    BOOL res = GetTextExtentExPointW(hdc, new_wstr.c_str(), cchString, nMaxExtent, lpnFit, alpDx, lpSize);
    return res;
}

BOOL WINAPI HookedGetTextExtentPoint32A(HDC hdc, LPCSTR lpString, int c, LPSIZE ps)
{
    std::wstring new_wstr = changeText(lpString);
    BOOL res = GetTextExtentPoint32W(hdc, new_wstr.c_str(), c, ps);
    return res;
}

void textprocess_main() {
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
    //DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
    //DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
    //DetourAttach(&(PVOID&)TrueGetTextExtentExPointA, HookedGetTextExtentExPointA);
    //DetourAttach(&(PVOID&)TrueGetTextExtentPoint32A, HookedGetTextExtentPoint32A);
	DetourTransactionCommit();
}
