#include <Windows.h>
#include "detours.h"
#include <fstream>
#pragma comment(lib, "detours.lib")
#include "hook_createfontindrectA.h"
#include "hook_createfontA.h"
#include "readconfig.h"

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;


HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;
    int cHeight = lplf->lfHeight;
    int cWeight = lplf->lfWeight;
    int cWidth = lplf->lfWeight;
    LPCSTR pszFaceName = lplf->lfFaceName;
    int iOutPrecision = lplf->lfOutPrecision;

    rr::RConfig config;
    config.ReadConfig("hook.ini");

    std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    std::string fontn = config.ReadString("FONT", "FONTNAME", "");

    if (config.ReadInt("FONT", "PRINTINFO", 0) == 1) printf("Create font info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %s\niOutPrecision: %d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision);

    if (config.ReadInt("FONT", "ConditCHANGEFONT", 0) == 1) {
        if (!ifchange(cHeight, cWidth, cWeight, pszFaceName)) {
            printf("FONT NOT CHANGE!\n\n");
            return TrueCreateFontIndirectA(lplf);
        }
    }

    if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
        std::string fontn = config.ReadString("FONT", "FONTNAME", "");

        if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
            printf("Load Font %s: Sucessful!\n", fontfn.c_str());
            strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());
        }
        else {
            printf("Fail to Load Font!\n");
        }
    }

    if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        modifiedLf.lfCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }

    printf("Change Font: Sucessful!\n\n");

    return TrueCreateFontIndirectA(&modifiedLf);
}


void hook_createfontindirectA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);

    DetourTransactionCommit();
}