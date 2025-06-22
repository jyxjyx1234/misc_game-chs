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
DWORD callAddress3;
DWORD returnAddress3;
DWORD callAddress4;
DWORD returnAddress4;
DWORD callAddress5;
DWORD returnAddress5;
DWORD callAddress6;
DWORD returnAddress6;
DWORD callAddress7;
DWORD returnAddress7;
DWORD callAddress8;
DWORD returnAddress8;
DWORD callAddress9;
DWORD returnAddress9;
DWORD callAddress10;
DWORD returnAddress10;
std::string enc = "AISHIMAI";

std::string TBL;
std::string TBL2;
std::string FNT;
std::string MSK;
std::string FNT2;
std::string MSK2;
std::string FNT3;
std::string MSK3;
std::string FNT4;
std::string MSK4;

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


void changeFont3(hook_stack& s) {
    if (s.oesp_20 != 0x2f && s.oesp_20 != 0x31) return;
    s.oesp = (DWORD)TBL2.c_str();
}

DWORD MSK2_TEMP;

void changeFont4(hook_stack& s) {
    if (s.oesp_20 != 0x2f && s.oesp_20 != 0x31) return;
    
    int orichar_ = s.oesp & 0xffff;
    char* charlist = (char*)(TBL2.c_str() + 0x02);
    int charnum = (static_cast<unsigned char>(TBL2[0]) << 8) | static_cast<unsigned char>(TBL2[1]);
    
    for (int i = 0; i < charnum; i++) {
        int currentChar = static_cast<unsigned char>(charlist[2 * i]) | (static_cast<unsigned char>(charlist[2 * i + 1]) << 8);
        if (currentChar == orichar_) {
            if (s.oesp_20 == 0x2f) {
                s.pedx = (DWORD)(FNT2.c_str() + i * 0x2f * 0x2f);
                MSK2_TEMP = (DWORD)(MSK2.c_str() + i * 0x2f * 0x2f);
            }
            if (s.oesp_20 == 0x31) {
                s.pedx = (DWORD)(FNT3.c_str() + i * 0x31 * 0x31);
                MSK2_TEMP = (DWORD)(MSK3.c_str() + i * 0x31 * 0x31);
            }
            return;
        }
    }
	MessageBoxA(NULL, "Font not found in TBL2", "Error", MB_OK | MB_ICONERROR);
}


void changeFont5(hook_stack& s) {
    if (s.oesp_20 != 0x2f && s.oesp_20 != 0x31) return;
    s.peax = MSK2_TEMP;
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


void __declspec(naked) HookFunction_replaceText3()
{
    __asm
    {
        pushad
        pushfd

        push esp
        call changeFont3
        add esp, 4

        popfd
        popad

        call callAddress3

        jmp returnAddress3
    }
}


void __declspec(naked) HookFunction_replaceText4()
{
    __asm
    {
        push edi

        pushad
        pushfd

        push esp
        call changeFont4
        add esp, 4

        popfd
        popad

        mov [esp + 0x34] , edx

        jmp returnAddress4
    }
}


void __declspec(naked) HookFunction_replaceText5()
{
    __asm
    {
        add eax, edx
        pushad
        pushfd

        push esp
        call changeFont5
        add esp, 4

        popfd
        popad

        mov [esp + 0x24] , eax
        jmp returnAddress5
    }
}

void InstallHook_replacetext()
{
    TBL = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "FONT.TBL");
    FNT = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "FONT.FNT");
    MSK = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "FONT.MSK");


    TBL2 = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "SELECT.TBL");
	FNT2 = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "SELECT1.FNT");
	MSK2 = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "SELECT1.MSK");
    FNT3 = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "SELECT2.FNT");
    MSK3 = CustomPack::getFile("AI5WIN_CHS.CPK", enc, "SELECT2.MSK");

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


    originalFuncAddr = 0x0040C5DA;
    returnAddress3 = originalFuncAddr + 5;
    callAddress3 = 0x40105f;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText3 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr = 0x0040C617;
    returnAddress4 = 0x0040C61c;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText4 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr = 0x0040C624;
    returnAddress5 = 0x0040C62A;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText5 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(2, "data2.bin", enc);
    //install_hook_textreplaceFromPackEx(2, "HAPLOVE_CHS.cpk", "data2.bin", enc);
    //newFontName = L"SimSun";
	//newCharset = 134;
    //installFontHook_main(1, 1, 1, 0);
}

