#include "textReplacer.h"
#include "text_process.h"
#include "hook_def.h"
#include "VFS.h"
#include "HookTitle.h"
#pragma comment(lib, "Msimg32.lib")

#define _DWORD DWORD

INIT_PACK_INFO("AI5WIN_CHS.CPK", "kaigo")

char graph_buffer[0x500] = { 0 };
char graph_buffer2[0x2000] = { 0 };
int replace_grh;
std::string charlist;
std::string grhlist;
std::string grhlist2;

BITMAPINFO bmi = { 0 };

MAKE_GLOBAL_ADDR(1)
MAKE_GLOBAL_ADDR(2)
MAKE_GLOBAL_ADDR(3)
MAKE_GLOBAL_ADDR(4)
MAKE_GLOBAL_ADDR(5)
MAKE_GLOBAL_ADDR(6)
MAKE_GLOBAL_ADDR(7)
MAKE_GLOBAL_ADDR(8)
MAKE_GLOBAL_ADDR(9)
MAKE_GLOBAL_ADDR(10)

int _stdcall sub_419460(
    int this_,
    char* replace_grh,
    unsigned __int16 a2, 
    unsigned __int16 y, 
    unsigned __int16 a4,// 截取的宽度
    unsigned __int16 a5,// 截取的高度
    int a6,
    unsigned __int16 cy,// 源图片的x
    unsigned __int16 x)// 源图片的y
{
    char* v9; // ebp
    char* v10; // ebx
    int result; // eax


    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = a4;
    bmi.bmiHeader.biHeight = a5;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 24;
    bmi.bmiHeader.biCompression = BI_RGB;

    v9 = (char*)(*(_DWORD*)(a6 + 4184)
        + cy
        + *(unsigned __int16*)(a6 + 4144) * (*(unsigned __int16*)(a6 + 4146) - x - 1));
    v10 = (char*)(a2
        + *(_DWORD*)(this_ + 4184)
        + *(unsigned __int16*)(this_ + 4144) * (*(unsigned __int16*)(this_ + 4146) - y - 1));
    //BitBlt(*(HDC*)(this_ + 12), a2, y, a4, a5, *(HDC*)(a6 + 12), cy, x, 0xCC0020u);
    SetDIBitsToDevice(*(HDC*)(this_ + 12), a2, y, a4, a5, 0, 0, 0, a5, graph_buffer2, &bmi, DIB_RGB_COLORS);
    result = *(_DWORD*)(a6 + 4184);
    if (result)
    {
        result = *(_DWORD*)(this_ + 4184);
        if (result)
        {
            if (a5)
            {
                result = a5;
                do
                {
                    memcpy(v10, replace_grh, a4);
                    v10 -= *(unsigned __int16*)(this_ + 4144);
                    v9 -= *(unsigned __int16*)(a6 + 4144);
                    replace_grh -= a4;
                    --result;
                } while (result);
            }
        }
    }
    return result;
}


int _stdcall sub_419460_(
    int this_,
    char* replace_grh,
    unsigned __int16 a2,//目标的x
    unsigned __int16 y,//目标的y
    unsigned __int16 a4,// 截取的宽度
    unsigned __int16 a5,// 截取的高度
    int a6,
    unsigned __int16 cy,// 源图片的x
    unsigned __int16 x)// 源图片的y
{
    char* v9; // ebp
    char* v10; // ebx
    int result; // eax


    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi.bmiHeader.biWidth = 1;
    bmi.bmiHeader.biHeight = 1;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount = 24;
    bmi.bmiHeader.biCompression = BI_RGB;

    v9 = (char*)(*(_DWORD*)(a6 + 4184)
        + cy
        + *(unsigned __int16*)(a6 + 4144) * (*(unsigned __int16*)(a6 + 4146) - x - 1));
    v10 = (char*)(a2
        + *(_DWORD*)(this_ + 4184)
        + *(unsigned __int16*)(this_ + 4144) * (*(unsigned __int16*)(this_ + 4146) - y - 1));
    //BitBlt(*(HDC*)(this_ + 12), a2, y, a4, a5, *(HDC*)(a6 + 12), cy, x, 0xCC0020u);
    char gray[3] = { 0xe0, 0xe0, 0xe0};
    int x1, y1;
	for (y1 = 0; y1 < a5; y1++) {
		for (x1 = 0; x1 < a4; x1++) {
			char alpha = graph_buffer[y1 * a4 + x1];
            std::cout << (unsigned __int8)alpha << std::endl;
            if ((unsigned __int8)alpha > 0x20) {
                if ((unsigned __int8)alpha > 0x9f) {
                    SetDIBitsToDevice(*(HDC*)(this_ + 12), a2 + x1, y + (a5 - y1), 1, 1, 0, 0, 0, 1, graph_buffer2 + (y1 * a4 + x1) * 3, &bmi, DIB_RGB_COLORS);
                }
                //else {
                //    SetDIBitsToDevice(*(HDC*)(this_ + 12), a2 + x1, y + (a5 - y1), 1, 1, 0, 0, 0, 1, gray, &bmi, DIB_RGB_COLORS);
                //}
                //SetDIBitsToDevice(*(HDC*)(this_ + 12), a2 + x1, y + (a5 - y1), 1, 1, 0, 0, 0, 1, graph_buffer2 + (y1 * a4 + x1) * 3, &bmi, DIB_RGB_COLORS);
            }
		}
	}
    //SetDIBitsToDevice(*(HDC*)(this_ + 12), a2, y, a4, a5, 0, 0, 0, a5, graph_buffer2, &bmi, DIB_RGB_COLORS);
    result = *(_DWORD*)(a6 + 4184);
    if (result)
    {
        result = *(_DWORD*)(this_ + 4184);
        if (result)
        {
            if (a5)
            {
                result = a5;
                do
                {
                    memcpy(v10, replace_grh, a4);
                    v10 -= *(unsigned __int16*)(this_ + 4144);
                    v9 -= *(unsigned __int16*)(a6 + 4144);
                    replace_grh -= a4;
                    --result;
                } while (result);
            }
        }
    }
    return result;
}

typedef int(_stdcall* pGetChar)(
	char* _,
	DWORD orichar
);
pGetChar ori_get_char;

int _stdcall custom_get_char(char* _, DWORD orichar) {
    char t[2];
	t[0] = orichar & 0xFF;
    t[1] = (orichar & 0xFF00) >> 8;
	for (size_t i = 0; i < charlist.size() / 2; i++) {
		if (charlist[i * 2] == t[0] && charlist[i * 2 + 1] == t[1]) {
			memcpy(graph_buffer, grhlist.c_str() + i * 0x14 * 0x18, 0x14 * 0x18);
            //memset(graph_buffer, 0xff, 0x14 * 0x18);
            replace_grh = (int)graph_buffer + 0x14 * 0x18;
            memcpy(graph_buffer2, grhlist2.c_str() + i * 0x14 * 0x18 * 3, 0x14 * 0x18 * 3);
			return 1;
		}
	}
    replace_grh = 0;
    return 0xFFFF;
}

int _stdcall custom_get_char_2(char* _, DWORD orichar) {
    char t[2];
    t[0] = orichar & 0xFF;
    t[1] = (orichar & 0xFF00) >> 8;
    if (t[0] == '\x81') {
        replace_grh = 0;
        return ori_get_char(_, orichar);
    }
    for (size_t i = 0; i < charlist.size() / 2; i++) {
        if (charlist[i * 2] == t[0] && charlist[i * 2 + 1] == t[1]) {
            memcpy(graph_buffer, grhlist.c_str() + i * 0x14 * 0x18, 0x14 * 0x18);
            //memset(graph_buffer, 0xff, 0x14 * 0x18);
            replace_grh = (int)graph_buffer + 0x14 * 0x18;
            memcpy(graph_buffer2, grhlist2.c_str() + i * 0x14 * 0x18 * 3, 0x14 * 0x18 * 3);
            return 1;
        }
    }
    replace_grh = 0;
    return 0xFFFF;
}

void __declspec(naked) HookFunction1() {
    __asm {call custom_get_char}
    __asm {jmp returnAddress1}
}
void __declspec(naked) HookFunction2() {
    __asm {
        cmp replace_grh, 0
        je NOT_REPLACE
            
        push replace_grh
        push ecx
        call sub_419460
        jmp returnAddress2

        NOT_REPLACE:
        call callAddress2
        jmp returnAddress2
    }
}
void __declspec(naked) HookFunction3() {
    __asm {call custom_get_char}
    __asm {jmp returnAddress3}
}
void __declspec(naked) HookFunction4() {
    __asm {
        cmp replace_grh, 0
        je NOT_REPLACE

        push replace_grh
        push ecx
        call sub_419460
        jmp returnAddress4

        NOT_REPLACE :
        call callAddress4
        jmp returnAddress4
    }
}
void __declspec(naked) HookFunction5() {
    __asm {
        cmp replace_grh, 0
        je NOT_REPLACE

        push replace_grh
        push ecx
        call sub_419460_
        jmp returnAddress5

        NOT_REPLACE :
        call callAddress5
            jmp returnAddress5
    }
}
void __declspec(naked) HookFunction6() {
    __asm {
        cmp replace_grh, 0
        je NOT_REPLACE

        push replace_grh
        push ecx
        call sub_419460_
        jmp returnAddress6

        NOT_REPLACE :
        call callAddress6
            jmp returnAddress6
    }
}
void __declspec(naked) HookFunction7() {
    __asm {call custom_get_char_2}
    __asm {jmp returnAddress7}
}
void __declspec(naked) HookFunction8() {
    __asm {
        cmp replace_grh, 0
        je NOT_REPLACE

        push replace_grh
        push ecx
        call sub_419460
        jmp returnAddress8

        NOT_REPLACE :
        call callAddress8
            jmp returnAddress8
    }
}
void __declspec(naked) HookFunction9() {
    __asm {call custom_get_char_2}
    __asm {jmp returnAddress9}
}

pRegQueryValueExA TrueRegQueryValueExA = RegQueryValueExA;

LSTATUS HookedRegQueryValueExA(HKEY    hKey,
    LPCSTR  lpValueName,
    LPDWORD lpReserved,
    LPDWORD lpType,
    LPBYTE  lpData,
    LPDWORD   lpcbData) {
	std::string oriValueName(lpValueName);
    if (oriValueName == "InstallExe") {
        std::string currentpath = std::filesystem::current_path().string();
		std::string installPath = currentpath + "/AI5WIN_CHS.exe";
		strcpy_s((char*)lpData, installPath.size() + 1, installPath.c_str());
        return 0;
    }
    else if(oriValueName == "InstallDir") {
        std::string currentpath = std::filesystem::current_path().string();
        strcpy_s((char*)lpData, currentpath.size() + 1, currentpath.c_str());
        return 0;
    }
    else {
		return TrueRegQueryValueExA(hKey, lpValueName, lpReserved, lpType, lpData, lpcbData);
    }
}

void InstallHook_replacetext() {
	InstallVFS(packname, enc);

    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueRegQueryValueExA, HookedRegQueryValueExA);
    DetourTransactionCommit();

    if (CustomPack::isInPack(packname, "charlist.bin") && CustomPack::isInPack(packname, "fontmsk.bin")) {
		charlist = CustomPack::getFile(packname, enc, "charlist.bin");
		grhlist = CustomPack::getFile(packname, enc, "fontmsk.bin");
        grhlist2 = CustomPack::getFile(packname, enc, "font.bin");
        changeWindowCfg.isCheckOri = true;
        changeWindowCfg.oriWindowName = "奴隷介護";
        changeWindowCfg.newWindowName = L"奴隷介護";
        changeWindowCfg.modeltype = "Claude-3.7-sonnet";
        hookTitle_main();
        //memset(graph_buffer2, 0xff, 0x2000);
        ATTACH_HOOK(1, 0x0040D611, 5, 0x0040105f)
        ATTACH_HOOK(2, 0x0040D679, 5, 0x00401D66)
        ATTACH_HOOK(3, 0x0040D6F8, 5, 0x0040105f)
        ATTACH_HOOK(4, 0x0040D787, 5, 0x00401D66)
        ATTACH_HOOK(5, 0x0040D7E1, 5, 0x00401D66)
        ATTACH_HOOK(6, 0x0040D6D6, 5, 0x00401D66)
        ATTACH_HOOK(7, 0x0040D97c, 5, 0x0040105f)
        ATTACH_HOOK(8, 0x0040DA59, 5, 0x00401D66)
        ATTACH_HOOK(9, 0x0040D9D5, 5, 0x0040105f)

        ori_get_char = (pGetChar)callAddress1;
        install_hook_textreplaceFromPackEx(1, packname, "data2.bin", enc);
    }
}
