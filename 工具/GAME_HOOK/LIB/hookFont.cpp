#include "hookFont.h"

pCreateFontA TrueCreateFontA = CreateFontA;
pCreateFontW TrueCreateFontW = CreateFontW;
pCreateFontIndirectA TrueCreateFontIndirectA = CreateFontIndirectA;
pCreateFontIndirectW TrueCreateFontIndirectW = CreateFontIndirectW;
pMultiByteToWideChar TrueMultiByteToWideChar = MultiByteToWideChar;
pWideCharToMultiByte TrueWideCharToMultiByte = WideCharToMultiByte;
//pEnumFontFamiliesExA TrueEnumFontFamiliesExA = EnumFontFamiliesExA;
//pEnumFontFamiliesExW TrueEnumFontFamiliesExW = EnumFontFamiliesExW;

typedef struct _XFONT_CALLBACKW
{
    PVOID         Param;
    FONTENUMPROCW CallBack;
} XFONT_CALLBACKW, * PXFONT_CALLBACKW;


typedef struct _XFONT_CALLBACKA
{
    PVOID         Param;
    FONTENUMPROCA CallBack;
} XFONT_CALLBACKA, * PXFONT_CALLBACKA;

std::wstring newFontName = L"NOTCHANGE";
std::wstring newFontName_shu = L"NOTCHANGE";
int HeightScaleFactor = 100;
int WidthScaleFactor = 100;
int newWeight = 0;
DWORD newCharset = 1;


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
    printf("Info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %ls\niOutPrecision: %d\niPitchAndFamily: %d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision, iPitchAndFamily);
    AddFontResourceExW(L"font.ttf", FR_PRIVATE, 0);
    cHeight = cHeight * HeightScaleFactor / 100;
    cWidth = cWidth * WidthScaleFactor / 100;
    if (newWeight) cWeight = newWeight;
    if (newCharset != 1 ) iCharSet = newCharset;
  //  if (newFontName != L"NOTCHANGE") {
  //      pszFaceName = newFontName.c_str();
		//printf("New Font Name: %ls\n", pszFaceName);
  //  }
#ifdef CHECK_ORI_FONT
	if (std::wstring(pszFaceName) == L"�ͣ� �Х����å�" || std::wstring(pszFaceName) == L"�ͣ� �����å�" || std::wstring(pszFaceName) == L"MS Gothic" || std::wstring(pszFaceName) == L"MS PGothic") {
		pszFaceName = newFontName.c_str();
	}
#else
    if (newFontName != L"NOTCHANGE") {
        if (pszFaceName[0] == L'@') {
            pszFaceName = newFontName_shu.c_str();
		}
        else {
            pszFaceName = newFontName.c_str();
        }
        printf("New Font Name: %ls\n", pszFaceName);
    }
#endif

    return TrueCreateFontW(cHeight,
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
        pszFaceName);
}

HFONT WINAPI HookedCreateFontIndirectW(CONST LOGFONTW* lplf) {
    printf("CreateFontIndirectW\n");;
    if (lplf->lfFaceName == nullptr || lplf->lfFaceName[0] == L'@') {
        return TrueCreateFontIndirectW(lplf);
    }
	return HookedCreateFontW(lplf->lfHeight, lplf->lfWidth, lplf->lfEscapement, lplf->lfOrientation, lplf->lfWeight, lplf->lfItalic, lplf->lfUnderline, lplf->lfStrikeOut, lplf->lfCharSet, lplf->lfOutPrecision, lplf->lfClipPrecision, lplf->lfQuality, lplf->lfPitchAndFamily, lplf->lfFaceName);
}

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
    LPCSTR pszFaceName) {
	printf("CreateFontA\n");
	std::wstring pszFaceNameW = sjisStringToWString(pszFaceName);
	return HookedCreateFontW(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, pszFaceNameW.c_str());
}

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf) {
	printf("CreateFontIndirectA\n");
	return HookedCreateFontA(lplf->lfHeight, lplf->lfWidth, lplf->lfEscapement, lplf->lfOrientation, lplf->lfWeight, lplf->lfItalic, lplf->lfUnderline, lplf->lfStrikeOut, lplf->lfCharSet, lplf->lfOutPrecision, lplf->lfClipPrecision, lplf->lfQuality, lplf->lfPitchAndFamily, lplf->lfFaceName);
}


int NTAPI GenerateFontCallbackW(LOGFONTW* lpLogFont, CONST TEXTMETRICW* lpMetric, DWORD dwFlags, LPARAM lParam)
{
    PXFONT_CALLBACKW Param;

    Param = (PXFONT_CALLBACKW)lParam;
    lpLogFont->lfCharSet = SHIFTJIS_CHARSET;

    return Param->CallBack(lpLogFont, lpMetric, dwFlags, (LPARAM)Param->Param);
}

int NTAPI GenerateFontCallbackA(LOGFONTA* lpLogFont, CONST TEXTMETRICA* lpMetric, DWORD dwFlags, LPARAM lParam)
{
    PXFONT_CALLBACKA Param;

    Param = (PXFONT_CALLBACKA)lParam;
    lpLogFont->lfCharSet = SHIFTJIS_CHARSET;

    return Param->CallBack(lpLogFont, lpMetric, dwFlags, (LPARAM)Param->Param);
}

//int WINAPI HookedEnumFontFamiliesExW(
//	HDC hdc,
//    LPLOGFONTW lpLogfont,
//    FONTENUMPROCW lpProc, 
//    LPARAM        lParam, 
//    DWORD         dwFlags) {
//    XFONT_CALLBACKW Param;
//    Param.CallBack = lpProc;
//    Param.Param = (PVOID)lParam;
//	return TrueEnumFontFamiliesExW(hdc, lpLogfont, (FONTENUMPROCW)GenerateFontCallbackW, (LPARAM)&Param, dwFlags);
//}
//
//int WINAPI HookedEnumFontFamiliesExA(
//	HDC hdc,
//	LPLOGFONTA lpLogfont,
//	FONTENUMPROCA lpProc,
//	LPARAM        lParam,
//	DWORD         dwFlags) {
//	XFONT_CALLBACKA Param;
//	Param.CallBack = lpProc;
//	Param.Param = (PVOID)lParam;
//	return TrueEnumFontFamiliesExA(hdc, lpLogfont, (FONTENUMPROCA)GenerateFontCallbackA, (LPARAM)&Param, dwFlags);
//}

int  WINAPI HookedMultiByteToWideChar(
    UINT CodePage,
    DWORD dwFlags,
    LPCSTR lpMultiByteStr,
    int cbMultiByte,
    LPWSTR lpWideCharStr,
    int cchWideChar
) {
    if (CodePage < 937) {
        CodePage = 932;
    }
    return TrueMultiByteToWideChar(
        CodePage,
        dwFlags,
        lpMultiByteStr,
        cbMultiByte,
        lpWideCharStr,
        cchWideChar
    );
}

int  WINAPI HookedWideCharToMultiByte(
    UINT CodePage,
    DWORD dwFlags,
    LPCWSTR lpWideCharStr,
    int cchWideChar,
    LPSTR lpMultiByteStr,
    int cbMultiByte,
    LPCSTR lpDefaultChar,
    LPBOOL lpUsedDefaultChar
) {
    if (CodePage < 937) {
        CodePage = 932;
    }
    return TrueWideCharToMultiByte(
        CodePage,
        dwFlags,
        lpWideCharStr,
        cchWideChar,
        lpMultiByteStr,
        cbMultiByte,
        lpDefaultChar,
        lpUsedDefaultChar
    );
}


void installFontHook_main(BOOL A, BOOL W, BOOL IA, BOOL IW) {
	newFontName_shu = L"@" + newFontName;
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
	if (A) DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
	if (W) DetourAttach(&(PVOID&)TrueCreateFontW, HookedCreateFontW);
	if (IA) DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
	if (IW) DetourAttach(&(PVOID&)TrueCreateFontIndirectW, HookedCreateFontIndirectW);
    DetourTransactionCommit();
}

void installMBWCHook_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueMultiByteToWideChar, HookedMultiByteToWideChar);
    DetourAttach(&(PVOID&)TrueWideCharToMultiByte, HookedWideCharToMultiByte);
    DetourTransactionCommit();
}

void installEnumFontHook_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    //DetourAttach(&(PVOID&)TrueEnumFontFamiliesExA, HookedEnumFontFamiliesExA);
    //DetourAttach(&(PVOID&)TrueEnumFontFamiliesExW, HookedEnumFontFamiliesExW);
    DetourTransactionCommit();
}