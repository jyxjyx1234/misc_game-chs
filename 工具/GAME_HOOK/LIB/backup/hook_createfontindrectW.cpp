#include "winapi_def.h"
#include "detours.h"
#include <fstream>
#include "hook_createfontindrectW.h"
#include "hook_createfontW.h"
#include "hook_createfontA.h"
#include "readconfig.h"
#include "convert.h"

pCreateFontIndirectW TrueCreateFontIndirectW = CreateFontIndirectW;

rr::RConfig configW;

HFONT WINAPI HookedCreateFontIndirectW(CONST LOGFONTW* lplf)
{
    std::string fontfn = configW.ReadString("FONT", "FONTFILENAME", "");
    addfontres(fontfn);
    std::string fontn_ = configW.ReadString("FONT", "FONTNAME", "");
    std::wstring fontn = sjisStringToWString(fontn_);
    LOGFONTW modifiedLf = *lplf;

    if (configW.ReadInt("FONT", "PRINTINFO", 0) == 1) {
        int cHeight = lplf->lfHeight;
        int cWeight = lplf->lfWeight;
        int cWidth = lplf->lfWeight;
        LPCWSTR pszFaceName = lplf->lfFaceName;
        int iOutPrecision = lplf->lfOutPrecision;
        printf("CreateIndirectFontW info:\ncHeight: %d\ncWidth: %d\ncWeight: %d\npszFaceName: %ls\n\n\n", cHeight, cWidth, cWeight, pszFaceName);
    }

    if (configW.ReadInt("FONT", "ConditCHANGEFONT", 0) == 1) {
        int cHeight = lplf->lfHeight;
        int cWeight = lplf->lfWeight;
        int cWidth = lplf->lfWeight;
        LPCWSTR pszFaceName = lplf->lfFaceName;
        if (!ifchangeW(cHeight, cWidth, cWeight, pszFaceName)) {
            printf("FONT NOT CHANGE!\n\n");
            return TrueCreateFontIndirectW(lplf);
        }
    }

    if (configW.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
        std::string fontfn = configW.ReadString("FONT", "FONTFILENAME", "");
        std::string fontn_ = configW.ReadString("FONT", "FONTNAME", "");
        std::wstring fontn = sjisStringToWString(fontn_);
        wcscpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());
    }

    if (configW.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
        modifiedLf.lfCharSet = GB2312_CHARSET;
        printf("Change Charset sucess!\n");
    }

    int h_scale_factor = configW.ReadInt("FONT", "HeightScaleFactor", 100);
    int w_scale_factor = configW.ReadInt("FONT", "WidthScaleFactor", 100);

    modifiedLf.lfHeight = modifiedLf.lfHeight * h_scale_factor / 100;
    modifiedLf.lfWidth = modifiedLf.lfWidth * w_scale_factor / 100;

    printf("Change Font: Sucessful!\n\n");

    return TrueCreateFontIndirectW(&modifiedLf);
}


void hook_createfontindirectW_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectW, HookedCreateFontIndirectW);

    DetourTransactionCommit();
}