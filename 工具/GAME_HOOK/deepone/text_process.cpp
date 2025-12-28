#include "textReplacer.h"
#include "text_process.h"
#include <fstream>
#include <iostream>
#include "hook_def.h"

MAKE_GLOBAL_ADDR(1)
MAKE_GLOBAL_ADDR(2)
MAKE_GLOBAL_ADDR(3)
MAKE_GLOBAL_ADDR(4)
MAKE_GLOBAL_ADDR(5)

INIT_PACK_INFO("ryokai_CHS.CPK", "ryokai")

INIT_TRANSBUFFER(0x200000)

READ_REPLACE_MAP_FROM_PACK_REPLACE_NEWLINE_FUNCDEF

GEN_REPLACE_MAP(1)
GEN_REPLACE_MAP(2)
GEN_REPLACE_MAP(3)

char* strBuffer2[0x200000] = {};
int stridx2 = 0;

//std::ofstream file1("output2.txt", std::ios::app);
//void write2File(std::string text, int fromfunc) {
//    if (file1.is_open()) {
//        file1 << "<line:"<< fromfunc << ">" << text << "<endline>" << std::endl;
//    }
//}
//
//std::ofstream file2("sptext2.txt", std::ios::app);
//void write2File2(std::string text, int fromfunc) {
//    if (file2.is_open()) {
//        file2 << "<line:" << fromfunc << ">" << text << "<endline>" << std::endl;
//    }
//}


void replace_text(hook_stack& s) {
    int length1 = ((int*)s.oesp)[4];
    if (length1 == 0) {
        return;
    }
    int length2 = ((int*)s.oesp)[5];
    DWORD fromfunc = ((DWORD*)s.pebp)[1];
    if (!(fromfunc == 6620137 || fromfunc == 6620311 || fromfunc == 6620692 || fromfunc == 6619508 || fromfunc == 6613952 || fromfunc == 6620352 || fromfunc == 6620178)) {
        return;
    }
    std::string text;
    if (length2 <= 0xf) {
        text = std::string((char*)s.oesp, length1);
    }
    else {
        text = std::string(*(char**)s.oesp, length1);
    }
    //if (text != "") {
    //    write2File(text, fromfunc);
    //    return;
    //}
    //printf("text: %s\n", text);
    auto it = replacementMap1.find(text);
    if (it != replacementMap1.end()) {
        UINT new_length = strBuffer[it->second].size();
        if (new_length > 0xf) {
            if (new_length % 0xf) {
                new_length = new_length + 0xf - new_length % 0xf;
            }
            strBuffer2[stridx2] = new char[new_length + 1];
            memset(strBuffer2[stridx2], 0, new_length + 1);
            strcpy_s(strBuffer2[stridx2], new_length + 1, strBuffer[it->second].c_str());
            *(char**)s.oesp = strBuffer2[stridx2];
            ((int*)s.oesp)[4] = strBuffer[it->second].size();
            ((int*)s.oesp)[5] = new_length;
            stridx2++;
            if (stridx2 > 0x200000 - 1) {
                stridx2 = 0;
            }
        }
        else {
            strcpy_s((char*)s.oesp, 0x10, strBuffer[it->second].c_str());
            ((int*)s.oesp)[4] = new_length;
            ((int*)s.oesp)[5] = 0x0f;
        }
    }
    else {
        //printf("Not Found: %s\n", text);
        //write2File(text);
    }
}

void replace_text2(hook_stack& s) {
    int length1 = ((int*)s.pedi)[4];
    if (length1 == 0) {
        return;
    }
    int length2 = ((int*)s.pedi)[5];
    //DWORD fromfunc = ((DWORD*)s.pebp)[1];
    std::string text;
    if (length2 <= 0xf) {
        text = std::string((char*)s.pedi, length1);
    }
    else {
        text = std::string(*(char**)s.pedi, length1);
    }
    //if (text != "") {
    //    write2File2(text, fromfunc);
    //    return;
    //}
    auto it = replacementMap1.find(text);
    if (it != replacementMap1.end()) {
        UINT new_length = strBuffer[it->second].size();
        if (new_length > 0xf) {
            if (new_length % 0xf) {
                new_length = new_length + 0xf - new_length % 0xf;
            }
            strBuffer2[stridx2] = new char[new_length + 1];
            memset(strBuffer2[stridx2], 0, new_length + 1);
            strcpy_s(strBuffer2[stridx2], new_length + 1, strBuffer[it->second].c_str());
            *(char**)s.pedi = (char*)(strBuffer2[stridx2]);
            ((int*)s.pedi)[4] = strBuffer[it->second].size();
            ((int*)s.pedi)[5] = new_length;
            stridx2++;
            if (stridx2 > 0x200000 - 1) {
                stridx2 = 0;
            }
        }
        else {
            strcpy_s((char*)s.pedi, 0x10, strBuffer[it->second].c_str());
            ((int*)s.pedi)[4] = new_length;
            ((int*)s.pedi)[5] = 0xf;
        }
    }
    else {
        //printf("Not Found: %s\n", text);
        //write2File(text);
    }
}

void replace_text3(hook_stack& s) {
    DWORD textbase = s.pebp - 0x90;
    int length1 = ((int*)textbase)[4];
    if (length1 == 0) {
        return;
    }
    int length2 = ((int*)textbase)[5];
    //DWORD fromfunc = ((DWORD*)s.pebp)[1];
    std::string text;
    if (length2 <= 0xf) {
        text = std::string((char*)textbase);
    }
    else {
        text = std::string(*(char**)textbase, length1);
    }
    auto it = replacementMap2.find(text);
    if (it != replacementMap2.end()) {
        UINT new_length = strBuffer[it->second].size();
        if (new_length > 0xf) {
            if (new_length % 0xf) {
                new_length = new_length + 0xf - new_length % 0xf;
            }
            strBuffer2[stridx2] = new char[new_length + 1];
            memset(strBuffer2[stridx2], 0, new_length + 1);
            strcpy_s(strBuffer2[stridx2], new_length + 1, strBuffer[it->second].c_str());
            *(char**)textbase = (char*)(strBuffer2[stridx2]);
            ((int*)textbase)[4] = strBuffer[it->second].size();
            ((int*)textbase)[5] = new_length;
            stridx2++;
            if (stridx2 > 0x200000 - 1) {
                stridx2 = 0;
            }
        }
        else {
            strcpy_s((char*)textbase, new_length + 1, strBuffer[it->second].c_str());
            ((int*)textbase)[4] = new_length;
            ((int*)textbase)[5] = 0xf;
        }
        s.oesp_4 = new_length;
    }
}

void replace_text4(hook_stack& s) {
    WCHAR* ori = (WCHAR*)s.oesp_4;
    if (ori == nullptr) {
        return;
    }
    std::wstring oristring(ori);
    if (oristring == L"ゲームを終了しますか？") {
        std::wstring newstring = L"要结束游戏吗？";
        wcscpy_s(ori, wcslen(newstring.c_str()) + 1, newstring.c_str());
    }
}

void replace_text5(hook_stack& s) {
    int length1 = ((int*)s.oesp)[4];
    if (length1 == 0) {
        return;
    }
    int length2 = ((int*)s.oesp)[5];
    DWORD fromfunc = ((DWORD*)s.pebp)[1];
    if (!(fromfunc == 5896024 || fromfunc == 6869907)) {
        return;
    }
    std::string text;
    if (length2 <= 0xf) {
        text = std::string((char*)s.oesp, length1);
    }
    else {
        text = std::string(*(char**)s.oesp, length1);
    }
    //if (text != "") {
    //    write2File(text, fromfunc);
    //    return;
    //}
    auto it = replacementMap3.find(text);
    if (it != replacementMap3.end()) {
        UINT new_length = strBuffer[it->second].size();
        if (new_length > 0xf) {
            if (new_length % 0xf) {
                new_length = new_length + 0xf - new_length % 0xf;
            }
            strBuffer2[stridx2] = new char[new_length + 1];
            memset(strBuffer2[stridx2], 0, new_length + 1);
            strcpy_s(strBuffer2[stridx2], new_length + 1, strBuffer[it->second].c_str());
            *(char**)s.oesp = strBuffer2[stridx2];
            ((int*)s.oesp)[4] = strBuffer[it->second].size();
            ((int*)s.oesp)[5] = new_length;
            stridx2++;
            if (stridx2 > 0x200000 - 1) {
                stridx2 = 0;
            }
        }
        else {
            strcpy_s((char*)s.oesp, 0x10, strBuffer[it->second].c_str());
            ((int*)s.oesp)[4] = new_length;
            ((int*)s.oesp)[5] = 0x0f;
        }
    }
    else {
    }
}

GEN_HOOK_FUNC_POSTCALL(1, replace_text)
GEN_HOOK_FUNC_POSTCALL(2, replace_text2)
#define POST_CODE_3 __asm{cmp dword ptr [ebp-0x7c], 0xf} __asm{lea ecx, dword ptr [ebp-0x90]}
GEN_HOOK_FUNC_EX(3, replace_text3, __asm {nop}, POST_CODE_3)
GEN_HOOK_FUNC_EX(4, replace_text4, __asm {nop}, __asm {call MessageBoxW})
GEN_HOOK_FUNC_POSTCALL(5, replace_text5)

struct cfg {
    int WidthScaleFactor = 100;
    std::wstring fontname = L"思源黑体 CN Medium";
};

bool GetFontNameFromFile(cfg& fontcfg) {
    std::ifstream file("ryokai_CHS.cfg");
    if (!file.is_open()) {
        return FALSE;
    }
    std::string line;
    while (std::getline(file, line)) {
        if (line.rfind("font=", 0) == 0) {
            std::string fontValue = line.substr(5);
            int wideLen = MultiByteToWideChar(CP_UTF8, 0, fontValue.c_str(), -1, nullptr, 0);
            WCHAR* _ = new WCHAR[wideLen + 1];
            MultiByteToWideChar(CP_UTF8, 0, fontValue.c_str(), -1, _, wideLen);
            fontcfg.fontname = _;
        }
        if (line.rfind("WidthScaleFactor=", 0) == 0) {
            std::string WidthScaleFactor = line.substr(17);
            try {
                fontcfg.WidthScaleFactor = std::stoi(WidthScaleFactor);
            }
            catch (...) {

            }
        }
    }
    return TRUE;
}

void InstallHook_replacetext()
{
    DWORD oldProtect;

    ATTACH_HOOK(1, 0x005ea080, 5, 0x00439a30)
    ATTACH_HOOK(2, 0x006A6E60, 5, 0x006a8ea0)
    ATTACH_HOOK(3, 0x00637200, 0xa, 0x00642d90)
    ATTACH_HOOK(4, 0x007df52d, 0x6, 0x00642ca0)
    ATTACH_HOOK(5, 0x007DBB8B, 0x5, 0x00439A30)

    AddFontResourceExW(L"ryokai_CHS.FNT", FR_PRIVATE, 0);
    cfg fontcfg;
    GetFontNameFromFile(fontcfg);
    newFontName = fontcfg.fontname;
    WidthScaleFactor = fontcfg.WidthScaleFactor;
    newCharset = 134;
    installFontHook_main(1, 1, 1, 1);
}
