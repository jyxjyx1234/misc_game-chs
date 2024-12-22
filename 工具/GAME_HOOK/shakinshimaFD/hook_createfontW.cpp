#include <Windows.h>
#include "detours.h"
#include <fstream>
#include "readconfig.h"
#include "convert.h"
#pragma comment(lib, "detours.lib")
#include "hook_createfontW.h"

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

bool ifchangeW(
    int    cHeight,
    int    cWidth,
    int    cWeight,
    LPCWSTR pszFaceName) {
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int targetCWEIGHT = config.ReadInt("ConditCHANGEFONT", "CWEIGHT", -1);
    int targetCHEIGHT = config.ReadInt("ConditCHANGEFONT", "CHEIGHT", -1);
    int targetCHEIGHT2 = config.ReadInt("ConditCHANGEFONT", "CHEIGHT2", -1);
    int targetCHEIGHT3 = config.ReadInt("ConditCHANGEFONT", "CHEIGHT3", -1);
    int targetCWIDTH = config.ReadInt("ConditCHANGEFONT", "CWIDTH", -1);
    std::string targetFONTNAME_ = config.ReadString("ConditCHANGEFONT", "FONTNAME", "-1");
    int nCWEIGHT = config.ReadInt("ConditCHANGEFONT", "NCWEIGHT", -1);
    int nCHEIGHT = config.ReadInt("ConditCHANGEFONT", "NCHEIGHT", -1);
    int nCWIDTH = config.ReadInt("ConditCHANGEFONT", "NCWIDTH", -1);
    std::string nFONTNAME_ = config.ReadString("ConditCHANGEFONT", "NFONTNAME", "-1");
    targetFONTNAME_ = ANSIToANSI(targetFONTNAME_.c_str(), 936, 932);
    std::wstring targetFONTNAME = sjisStringToWString(targetFONTNAME_);
    nFONTNAME_ = ANSIToANSI(nFONTNAME_.c_str(), 936, 932);
    std::wstring nFONTNAME = sjisStringToWString(nFONTNAME_);

    std::wstring pszFaceName_(pszFaceName);

    printf("%ls",targetFONTNAME.c_str());
    if ((cHeight != targetCHEIGHT && cHeight != targetCHEIGHT2 && cHeight != targetCHEIGHT3 && targetCHEIGHT != -1) || cHeight == nCHEIGHT) {
        return false;
    }
    if ((cWeight != targetCWEIGHT && targetCWEIGHT != -1) || cWeight == nCWEIGHT) {
        return false;
    }    
    if ((cWidth != targetCWIDTH && targetCWIDTH != -1) || cWidth == nCWIDTH) {
        return false;
    }    
    if ((pszFaceName_ != targetFONTNAME && targetFONTNAME != L"-1") || pszFaceName_ == nFONTNAME) {
        return false;
    }
    return true;
}

HFONT WINAPI HookedCreateFontW_changefont(
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
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    WCHAR newFontName[50];

    if (config.ReadInt("FONT", "PRINTINFO", 0) == 1) printf("CreateFontW info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %ls\niOutPrecision: %d\niPitchAndFamily: %d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision, iPitchAndFamily);

    if (config.ReadInt("FONT", "ConditCHANGEFONT", 0) == 1) {
        if (!ifchangeW(cHeight,cWidth, cWeight, pszFaceName)) {
            printf("FONT NOT CHANGE!\n\n");
            return TrueCreateFontW(cHeight,cWidth,cEscapement,cOrientation,cWeight,bItalic,bUnderline,bStrikeOut,iCharSet,iOutPrecision,iClipPrecision,iQuality,iPitchAndFamily,pszFaceName);
        }
    }

    if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
        std::string fontn_ = config.ReadString("FONT", "FONTNAME", "");
        std::wstring fontn = sjisStringToWString(fontn_);
        LPCWSTR fontname = fontn.c_str();

        if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
            printf("Load Font %s: Sucessful!\n", fontfn.c_str());
        }
        else {
            printf("Fail to Load Font!\n");
        }
        wcscpy_s(newFontName, 50, fontname);
        pszFaceName = newFontName;
        printf("Try to use font %ls.\n", fontname);
    }

    if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        iCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }
    printf("Change Font: Sucessful!\n\n");
    int Height_scale_factor = config.ReadInt("FONT", "HeightScaleFactor", 100);
    int Width_scale_factor = config.ReadInt("FONT", "WidthScaleFactor", 100);
    int cWeight_new = config.ReadInt("FONT", "cWeight", cWeight);
    cEscapement = config.ReadInt("FONT", "rotate", cEscapement);
    HFONT newfont =  TrueCreateFontW(cHeight * Height_scale_factor / 100,
        cWidth * Width_scale_factor / 100,
        cEscapement,
        cOrientation,
        cWeight_new,
        bItalic,
        bUnderline,
        bStrikeOut,
        iCharSet,
        iOutPrecision,
        iClipPrecision,
        iQuality,
        iPitchAndFamily,
        pszFaceName);

    LOGFONT lf;
    if (GetObject(newfont, sizeof(LOGFONTA), &lf) != 0){
        printf("The font is %ls now.\n\n", lf.lfFaceName);
    }
    return newfont;
}

void hook_createfontW_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontW, HookedCreateFontW_changefont);

    DetourTransactionCommit();
}