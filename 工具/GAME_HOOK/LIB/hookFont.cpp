#include "hookFont.h"

pCreateFontA TrueCreateFontA = CreateFontA;
pCreateFontW TrueCreateFontW = CreateFontW;
pCreateFontIndirectA TrueCreateFontIndirectA = CreateFontIndirectA;
pCreateFontIndirectW TrueCreateFontIndirectW = CreateFontIndirectW;


std::wstring newFontName = L"NOTCHANGE";
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
    cHeight = cHeight * HeightScaleFactor / 100;
    cWidth = cWidth * WidthScaleFactor / 100;
    if (newWeight) cWeight = newWeight;
    if (newCharset != 1 ) iCharSet = newCharset;
    if (newFontName != L"NOTCHANGE") pszFaceName = newFontName.c_str();
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
    printf("CreateFontIndirectW\n");
	return HookedCreateFontW(lplf->lfHeight, lplf->lfWeight, lplf->lfEscapement, lplf->lfOrientation, lplf->lfWeight, lplf->lfItalic, lplf->lfUnderline, lplf->lfStrikeOut, lplf->lfCharSet, lplf->lfOutPrecision, lplf->lfClipPrecision, lplf->lfQuality, lplf->lfPitchAndFamily, lplf->lfFaceName);
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

void installFontHook_main(BOOL A, BOOL W, BOOL IA, BOOL IW) {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
	if (A) DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
	if (W) DetourAttach(&(PVOID&)TrueCreateFontW, HookedCreateFontW);
	if (IA) DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
	if (IW) DetourAttach(&(PVOID&)TrueCreateFontIndirectW, HookedCreateFontIndirectW);
    DetourTransactionCommit();
}