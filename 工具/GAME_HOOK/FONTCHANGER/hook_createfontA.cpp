#include <Windows.h>
#include "detours.h"
#include <fstream>
#include "readconfig.h"
#include "convert.h"
#pragma comment(lib, "detours.lib")
#include "hook_createfontA.h"

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

bool ifchange(
    int    cHeight,
    int    cWidth,
    int    cWeight,
    LPCSTR pszFaceName) {
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int targetCWEIGHT = config.ReadInt("ConditCHANGEFONT", "CWEIGHT", -1);
    int targetCHEIGHT = config.ReadInt("ConditCHANGEFONT", "CHEIGHT", -1);
    int targetCHEIGHT2 = config.ReadInt("ConditCHANGEFONT", "CHEIGHT2", -1);
    int targetCHEIGHT3 = config.ReadInt("ConditCHANGEFONT", "CHEIGHT3", -1);
    int targetCWIDTH = config.ReadInt("ConditCHANGEFONT", "CWIDTH", -1);
    std::string targetFONTNAME = config.ReadString("ConditCHANGEFONT", "FONTNAME", "-1");
    int nCWEIGHT = config.ReadInt("ConditCHANGEFONT", "NCWEIGHT", -1);
    int nCHEIGHT = config.ReadInt("ConditCHANGEFONT", "NCHEIGHT", -1);
    int nCWIDTH = config.ReadInt("ConditCHANGEFONT", "NCWIDTH", -1);
    std::string nFONTNAME = config.ReadString("ConditCHANGEFONT", "NFONTNAME", "-1");
    targetFONTNAME = ANSIToANSI(targetFONTNAME.c_str(), 936, 932);
    nFONTNAME = ANSIToANSI(nFONTNAME.c_str(), 936, 932);
    std::string pszFaceName_(pszFaceName);

    printf("%s",targetFONTNAME.c_str());
    if ((cHeight != targetCHEIGHT && cHeight != targetCHEIGHT2 && cHeight != targetCHEIGHT3 && targetCHEIGHT != -1) || cHeight == nCHEIGHT) {
        return false;
    }
    if ((cWeight != targetCWEIGHT && targetCWEIGHT != -1) || cWeight == nCWEIGHT) {
        return false;
    }    
    if ((cWidth != targetCWIDTH && targetCWIDTH != -1) || cWidth == nCWIDTH) {
        return false;
    }    
    if ((pszFaceName_ != targetFONTNAME && targetFONTNAME != "-1") || pszFaceName_ == nFONTNAME) {
        return false;
    }
    return true;
}

HFONT WINAPI HookedCreateFontA_changefont(
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
    rr::RConfig config;
    config.ReadConfig("hook.ini");

    if (config.ReadInt("FONT", "PRINTINFO", 0) == 1) printf("Create font info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %s\niOutPrecision: %d\niPitchAndFamily: %d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision, iPitchAndFamily);

    if (config.ReadInt("FONT", "ConditCHANGEFONT", 0) == 1) {
        if (!ifchange(cHeight,cWidth, cWeight,pszFaceName)) {
            printf("FONT NOT CHANGE!\n\n");
            return TrueCreateFontA(cHeight,cWidth,cEscapement,cOrientation,cWeight,bItalic,bUnderline,bStrikeOut,iCharSet,iOutPrecision,iClipPrecision,iQuality,iPitchAndFamily,pszFaceName);
        }
    }

    if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
        std::string fontn = config.ReadString("FONT", "FONTNAME", "");
        LPCSTR fontname = fontn.c_str();

        if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
            printf("Load Font %s: Sucessful!\n", fontfn.c_str());
        }
        else {
            printf("Fail to Load Font!\n");
        }
        pszFaceName = fontname;
        printf("Try to use font %s.\n", fontname);
    }

    if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        iCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }

    printf("Change Font: Sucessful!\n\n");
    int scale_factor = config.ReadInt("FONT", "ScaleFactor", 10);

    HFONT newfont =  TrueCreateFontA(cHeight * scale_factor / 10,
        cWidth * scale_factor / 10,
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

    LOGFONT lf;
    if (GetObject(newfont, sizeof(LOGFONTA), &lf) != 0){
        printf("The font is %ls now.\n\n", lf.lfFaceName);
    }
    return newfont;
}

void hook_createfontA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA_changefont);

    DetourTransactionCommit();
}