#include "winapi_def.h"
#include "detours.h"
#include <fstream>
#include "hook_createfontindrectA.h"
#include "hook_createfontA.h"
#include "readconfig.h"
#include <iostream>


pCreateFontIndirectA TrueCreateFontIndirectA = CreateFontIndirectA;

rr::RConfig config;

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    addfontres(fontfn);
    std::string fontn = config.ReadString("FONT", "FONTNAME", "");
    LOGFONTA modifiedLf = *lplf;
    if (modifiedLf.lfFaceName == nullptr) return TrueCreateFontIndirectA(&modifiedLf);
	config.ReadConfig("hook.ini");

    if (config.ReadInt("FONT", "PRINTINFO", 0) == 1) {
        int cHeight = lplf->lfHeight;
        int cWeight = lplf->lfWeight;
        int cWidth = lplf->lfWidth;
        LPCSTR pszFaceName = lplf->lfFaceName;
        int iOutPrecision = lplf->lfOutPrecision;
        printf("CreateFontIndirectA info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %s\niOutPrecision: %d\n\n", cHeight, cWidth, cWeight, pszFaceName, iOutPrecision);
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
        if (modifiedLf.lfFaceName != nullptr) strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());
		std::cout << "Try to Change Font to" << modifiedLf.lfFaceName << std::endl;
    }

    if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        modifiedLf.lfCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }

    int h_scale_factor = config.ReadInt("FONT", "HeightScaleFactor", 100);
    int w_scale_factor = config.ReadInt("FONT", "WidthScaleFactor", 100);

    modifiedLf.lfHeight = modifiedLf.lfHeight * h_scale_factor / 100;
    modifiedLf.lfWidth = modifiedLf.lfWidth * w_scale_factor / 100;
    modifiedLf.lfWeight = config.ReadInt("FONT", "cWeight", modifiedLf.lfWeight);

    printf("Change Font: Sucessful!\n\n");

    return TrueCreateFontIndirectA(&modifiedLf);
}


void hook_createfontindirectA_main() {



    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);

    DetourTransactionCommit();
}