#include <Windows.h>
#include "detours.h"
#include <fstream>
#pragma comment(lib, "detours.lib")
#include "hook_createfontindrectA.h"

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;

std::string fontn("");
std::string fontfn("");

HFONT WINAPI HookedCreateFontIndirectA_changecharset(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;

    // �޸��ַ���
    modifiedLf.lfCharSet = GB2312_CHARSET; // ����������Ҫ���ַ���

    printf("Change Charset: Sucessful!\n");

    // ����ԭʼ��������ʹ���޸ĺ�� LOGFONTA
    return TrueCreateFontIndirectA(&modifiedLf);
}

HFONT WINAPI HookedCreateFontIndirectA_changefont(CONST LOGFONTA* lplf)
{
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        printf("Load Font: Sucessful!\n");
    }
    else {
        printf("Fail to Load Font!\n");
    }

    LOGFONTA modifiedLf = *lplf;

    strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());

    printf("Change Font: Sucessful!\n");
    // ����ԭʼ��������ʹ���޸ĺ�� LOGFONTA
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