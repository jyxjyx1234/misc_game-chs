#include <windows.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <map>
#include <codecvt>
#include <locale>
#include <vector>
#include "text_process.h"
#include "readconfig.h"
#include "convert.h"

DWORD originalFuncAddr1;
DWORD returnAddress1;
DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD originalFuncAddr3;
DWORD returnAddress3;
DWORD originalFuncAddr4;
DWORD returnAddress4;

char strBuffer[0x1600] = {0};
int strlength = 0;
int strlength2 = 0;
        
void readtext(const char* path) {
    std::ifstream file(path, std::ios::binary);
    if (file) {
        file.read(strBuffer, sizeof(strBuffer));
        strlength = (file.gcount() + 3) / 4; // 向上取整
        strlength2 = strlength * 2;
        file.close();
    } else {
        std::cerr << "Failed to open file: " << path << std::endl;
    }
}

void __declspec(naked) HookFunction_replacecharmap1()
{
    __asm
    {
        mov cl, byte ptr [strBuffer + eax]
        mov edi, dword ptr ds : [esi + 0x11E50]
        mov byte ptr ss : [esp + 0x14] , cl
		mov al, byte ptr[strBuffer + eax + 1]
        jmp returnAddress1
    }
}

void __declspec(naked) HookFunction_replacecharmap2()
{
    __asm
    {
        mov cl, byte ptr[strBuffer + eax]
        mov byte ptr ss : [esp + ebx * 1 + 0x28] , cl
        mov dl, byte ptr[strBuffer + eax + 1]
        jmp returnAddress2
    }
}

void __declspec(naked) HookFunction_replacecharmap3()
{
    __asm
    {
        mov cl, byte ptr ds : [eax + strBuffer] 
        mov byte ptr ss : [esp + esi * 1 + 0x70] , cl
        mov dl, byte ptr[strBuffer + eax + 1]
        jmp returnAddress3
    }
}


void __declspec(naked) HookFunction_replacecharmap4()
{
    __asm
    {
        mov cl, byte ptr ds : [eax + strBuffer] 
        mov byte ptr ss : [esp + ebx * 1 + 0x26] , cl
        mov dl, byte ptr[strBuffer + eax + 1]
        jmp returnAddress4
    }
}

void InstallHook_replacecharmap() {
    DWORD oldProtect;
    readtext("char.bin");
    originalFuncAddr1 = 0x4067be;
    returnAddress1 = 0x4067d6;
    VirtualProtect((LPVOID)originalFuncAddr1, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr1 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr1 + 1) = (DWORD)HookFunction_replacecharmap1 - originalFuncAddr1 - 5;
    VirtualProtect((LPVOID)originalFuncAddr1, 5, oldProtect, &oldProtect);

    originalFuncAddr2 = 0x407942;
    returnAddress2 = 0x407954;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr2 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_replacecharmap2 - originalFuncAddr2 - 5;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);

    originalFuncAddr3 = 0x00408637;
    returnAddress3 = 0x00408649;
    VirtualProtect((LPVOID)originalFuncAddr3, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr3 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr3 + 1) = (DWORD)HookFunction_replacecharmap3 - originalFuncAddr3 - 5;
    VirtualProtect((LPVOID)originalFuncAddr3, 5, oldProtect, &oldProtect);


    originalFuncAddr4 = 0x0040799A;
    returnAddress4 = 0x004079AC;
    VirtualProtect((LPVOID)originalFuncAddr4, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr4 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr4 + 1) = (DWORD)HookFunction_replacecharmap4 - originalFuncAddr4 - 5;
    VirtualProtect((LPVOID)originalFuncAddr4, 5, oldProtect, &oldProtect);
}