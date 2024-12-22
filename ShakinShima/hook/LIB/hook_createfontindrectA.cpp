#include <Windows.h>
#include "detours.h"
#include <fstream>
#pragma comment(lib, "detours.lib")
#include "convert.h"
#include "hook_createfontindrectA.h"

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;

std::string fontn("");
std::string fontfn("");

HFONT WINAPI HookedCreateFontIndirectA_changecharset(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;

    // 修改字符集
    modifiedLf.lfCharSet = GB2312_CHARSET; // 或其他你想要的字符集

    printf("Change Charset: Sucessful!\n");

    // 调用原始函数，但使用修改后的 LOGFONTA
    return TrueCreateFontIndirectA(&modifiedLf);
}

HFONT WINAPI HookedCreateFontIndirectA_changefont(CONST LOGFONTA* lplf)
{
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        //printf("Load Font: Sucessful!\n");
    }
    else {
        //printf("Fail to Load Font!\n");
    }

    LOGFONTA modifiedLf = *lplf;

    printf("Change Font From: %s\n", ANSIToANSI(modifiedLf.lfFaceName,932,936).c_str());

    strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());

    return TrueCreateFontIndirectA(&modifiedLf);
}

void hook_createfontindirectA_changecharset_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA_changecharset);

    DetourTransactionCommit();
}

void hook_createfontindirectA_changefont_main(std::string fontname, std::string fontfilename) {

    fontn = fontname;
    fontfn = fontfilename;

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA_changefont);

    DetourTransactionCommit();
}