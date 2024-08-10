#include <Windows.h>
#include "detours.h"
#include <fstream>
#pragma comment(lib, "detours.lib")
#include "hook_createfontindrectA.h"

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;


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
    if (AddFontResourceExA("nyanfont.ttf", FR_PRIVATE, 0) != 0) {
        printf("Load Font: Sucessful!\n");
    }
    else {
        printf("Fail to Load Font!\n");
    }

    LOGFONTA modifiedLf = *lplf;

    strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, "nyanfont");

    printf("Change Font: Sucessful!\n");
    // 调用原始函数，但使用修改后的 LOGFONTA
    return TrueCreateFontIndirectA(&modifiedLf);
}

void hook_createfontindirectA_changecharset_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA_changecharset);

    DetourTransactionCommit();
}

void hook_createfontindirectA_changefont_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA_changefont);

    DetourTransactionCommit();
}