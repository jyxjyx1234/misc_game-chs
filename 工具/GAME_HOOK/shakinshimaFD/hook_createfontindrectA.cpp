#include <Windows.h>
#include "detours.h"
#include <fstream>
#pragma comment(lib, "detours.lib")
#include "hook_createfontindrectA.h"
#include "hook_createfontA.h"
#include "readconfig.h"

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;

rr::RConfig config;

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    std::string fontn = config.ReadString("FONT", "FONTNAME", "");
    LOGFONTA modifiedLf = *lplf;

    if (config.ReadInt("FONT", "PRINTINFO", 0) == 1) {
        int cHeight = lplf->lfHeight;
        int cWeight = lplf->lfWeight;
        int cWidth = lplf->lfWeight;
        LPCSTR pszFaceName = lplf->lfFaceName;
        int iOutPrecision = lplf->lfOutPrecision;
        printf("Create font info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %s\niOutPrecision: %d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision);
    }

    if (config.ReadInt("FONT", "ConditCHANGEFONT", 0) == 1) {
        int cHeight = lplf->lfHeight;
        int cWeight = lplf->lfWeight;
        int cWidth = lplf->lfWeight;
        LPCSTR pszFaceName = lplf->lfFaceName;
        if (!ifchange(cHeight, cWidth, cWeight, pszFaceName)) {
            printf("FONT NOT CHANGE!\n\n");
            return TrueCreateFontIndirectA(lplf);
        }
    }

    if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
        std::string fontn = config.ReadString("FONT", "FONTNAME", "");
        strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());
    }

    if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        modifiedLf.lfCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }

    int scale_factor = config.ReadInt("FONT", "ScaleFactor", 10);

    modifiedLf.lfHeight = modifiedLf.lfHeight * scale_factor / 10;
    modifiedLf.lfWidth = modifiedLf.lfWidth * scale_factor / 10;

    printf("Change Font: Sucessful!\n\n");

    return TrueCreateFontIndirectA(&modifiedLf);
}


void hook_createfontindirectA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    config.ReadConfig("hook.ini");

    if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
        if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
            printf("Load Font %s: Sucessful!\n", fontfn.c_str());
        }
        else {
            printf("Fail to Load Font!\n");
        }
    }

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);

    DetourTransactionCommit();
}