#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>
#include "CHS_PACK_LIB.h"

int mode = 1;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;

std::string enc = "AISHIMAI";

std::string TBL;
std::string FNT;
std::string MSK;

void changeFont(hook_stack& s) {
    if (s.oesp_30 != 0x1c) return;
    int orichar_ = s.oesp & 0xffff;
	char* charlist = (char*)(TBL.c_str() + 0x02);
    int charnum = (static_cast<unsigned char>(TBL[0]) << 8) | static_cast<unsigned char>(TBL[1]);
	for (int i = 0; i < charnum; i++) {
        int currentChar = static_cast<unsigned char>(charlist[2 * i]) | (static_cast<unsigned char>(charlist[2 * i + 1]) << 8);
        if (currentChar == orichar_) {
			s.pebx = (DWORD)(FNT.c_str() + i * 0x1c * 0x1c);
			s.pebp = (DWORD)(MSK.c_str() + i * 0x1c * 0x1c);
            return;
		}
	}
}

void changeFont2(hook_stack& s) {
    if (s.oesp_34 != 0x1c) return;
    s.oesp = (DWORD)TBL.c_str();
}

void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {
        sub esp, 4

        pushad
        pushfd

        push esp
        call changeFont
        add esp, 4

        popfd
        popad

        add esp, 4

        mov[esp + 0x14], ebx
        lea eax, [eax + eax * 2]

		jmp retAddAddr
    }
}

void __declspec(naked) HookFunction_replaceText2()
{
    __asm
    {
        pushad
        pushfd

        push esp
        call changeFont2
        add esp, 4

        popfd
        popad

        call callAddress

        jmp returnAddress2
    }
}

void InstallHook_replacetext()
{
    TBL = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "FONT.TBL");
    FNT = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "FONT.FNT");
    MSK = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "FONT.MSK");

    DWORD oldProtect;
    originalFuncAddr = 0x0040c837;
	retAddAddr = 0x0040c83E;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x0040C7CF;
    returnAddress2 = 0x0040C7CF + 5;
    callAddress = 0x40105f;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(2, "data2.bin", enc);
    //install_hook_textreplaceFromPackEx(2, "HAPLOVE_CHS.cpk", "data2.bin", enc);
    //newFontName = L"SimSun";
	//newCharset = 134;
    //installFontHook_main(1, 1, 1, 0);
}

