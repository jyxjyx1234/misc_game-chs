#include <Windows.h>
#include "detours.h"
#include <fstream>
#include "convert.h"
#pragma comment(lib, "detours.lib")
#include "hook_createfontA.h"

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;


HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;

    std::string oriFont = modifiedLf.lfFaceName;
    /*
    std::string targetFont1 = ANSIToANSI("£Í£Ó Ã÷³¯", 936, 932);
    std::string targetFont2 = ANSIToANSI("£Í£Ó £ÐÃ÷³¯", 936, 932);
    std::string targetFont3 = ANSIToANSI("Microsoft YaHei UI", 936, 932);
    if (targetFont1 != oriFont && targetFont2 != oriFont && targetFont3 != oriFont) return TrueCreateFontIndirectA(lplf);
    */
    if (oriFont.front() == '@') return TrueCreateFontIndirectA(lplf);
    strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, "syyh");

    return TrueCreateFontIndirectA(&modifiedLf);
}


void hook_createfontA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    AddFontResourceExA("syyh.ttf", FR_PRIVATE, 0);

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);

    DetourTransactionCommit();
}