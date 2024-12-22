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
    if (cWeight == 400) {
        return true;
    }
    return false;
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

    if (config.ReadInt("FONT", "PRINTINFO", 0) == 1) printf("Create font info:\n%d\n%d\n%d\n%s\n%d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision);

    if (config.ReadInt("FONT", "ConditCHANGEFONT", 0) == 1) {
        if (!ifchange(cHeight,cWidth, cWeight,pszFaceName)) {
            printf("FONT NOT CHANGE!\n\n");
            return TrueCreateFontA(cHeight,cWidth,cEscapement,cOrientation,cWeight,bItalic,bUnderline,bStrikeOut,iCharSet,iOutPrecision,iClipPrecision,iQuality,iPitchAndFamily,pszFaceName);
        }
    }

    if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
        std::string fontn = config.ReadString("FONT", "FONTNAME", "");

        if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
            
            printf("Load Font %s: Sucessful!\n", fontfn.c_str());
        }
        else {
            printf("Fail to Load Font!\n");
        }
        pszFaceName =fontn.c_str();
    }

    if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        iCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }

    if (config.ReadInt("FONT", "CHANGESIZE", 0)==1) {
        //cHeight = config.ReadInt("FONT", "HEIGHT", cHeight);
        //cWidth = config.ReadInt("FONT", "WIDTH", cWidth);
        cWidth = cWidth * 2;
        printf("Change font size sucess!\n");
    }

    printf("Change Font: Sucessful!\n");

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
        pszFaceName);
}

void hook_createfontA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA_changefont);

    DetourTransactionCommit();
}