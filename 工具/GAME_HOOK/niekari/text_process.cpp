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

DWORD originalFuncAddr;
DWORD returnAddress; 
typedef void (*FuncPtr)();
FuncPtr FuncAddr = (FuncPtr)0x42b7f0;
const char* filenames[102] = {
"r_001", "r_003", "r_003_02", "r_003_03", "r_003_04", "r_004", "r_005", "r_006", "r_007", "r_008", "r_009", "r_010", "r_011", "r_012", "r_013", "r_014", 
"r_015", "r_016", "r_017", "r_018", "r_019", "r_019_02", "r_019_03", "r_019_04", "r_020", "r_021", "r_022", "r_023", "r_024", "r_024_02", "r_025", "r_025_02", 
"r_026", "r_027", "r_027_02", "r_027_03", "r_027_04", "r_028", "r_028_02", "r_029", "r_029_02", "r_029_03", "r_029_04", "r_029_05", "r_030", "r_030_02", "r_030_03", 
"r_030_04", "r_031", "r_032", "r_032_02", "r_033", "r_034", "r_035", "r_036", "r_037", "r_038", "r_039", "r_040", "r_040_02", "r_040_03", "r_041", "r_041_02", "r_042",
"r_042_02", "r_043", "r_043_02", "r_043_03", "r_044", "r_045", "r_045_02", 
"s-roll", "start",  
"rec0_00", "rec1_00", "rec1_01", "rec1_02", "rec1_03", "rec1_04", "rec2_00", "rec2_01", "rec2_02", "rec2_03", "rec2_04", "rec2_05","rec3_00", "rec3_01", "rec3_02",
"rec3_03", "rec3_04", "rec3_05", "rec3_06", "rec3_07", "rec4_00", "rec4_01", "rec4_02", "rec4_03", "rec4_04", "rec4_05", "rec4_06","rec5_00", "rec5_01",
};
int fileidx = 0;
const char* filename;
char filebuffer[0x50000];

void WriteToFile(int* size, const void** buffer)
{
    //printf("write to %s\n", outPath);
    FILE* file;
	std::string outPath = "dec\\" + std::string(filename);
    if (fopen_s(&file, outPath.c_str(), "wb") == 0) {
        if (file != nullptr) {
            fwrite(*buffer, 1, *size, file);
            fclose(file);
        }
    }
	fileidx++;
    if (fileidx < 102) filename = filenames[fileidx];
}

void ChangeFile(int* size, const void** buffer)
{
    //printf("write to %s\n", outPath);
    FILE* file;
    std::string transfilePath = "trans\\" + std::string(filename);

    if (fopen_s(&file, transfilePath.c_str(), "rb") == 0) {
        if (file != nullptr) {
            fseek(file, 0, SEEK_END);
            long filesize = ftell(file);
            fseek(file, 0, SEEK_SET);
			memset(filebuffer, 0, sizeof(filebuffer));
            fread(filebuffer, 1, sizeof(filebuffer), file);
            fclose(file);
			*size = filesize;
			*buffer = filebuffer;
        }
    }
    
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        pushfd
        pushad

        cmp fileidx, 102
        jne dumpfunc

            popad
            popfd
            push esi
            mov eax, edx
            push 0x43CA9C
            shl edx, 0x04
            add edx, eax
            lea esi, [ecx + edx * 8 + 0x238]
            lea edx, [ecx + 0x14]
            add ecx, 0x04
            lea eax, [esi + 0x04]
            push eax
            push edx
            push ebx
            call FuncAddr
            jmp dword ptr[returnAddress]

        dumpfunc:
            push esi
            mov eax, edx
            push 0x43CA9C
            shl edx, 0x04
            add edx, eax
            lea esi, [ecx + edx * 8 + 0x238]
            lea edx, [ecx + 0x14]
            add ecx, 0x04
            lea eax, [esi + 0x04]
            push eax
            push edx
		    push filename
            call FuncAddr //
            add esi, 8
            push esi
            add esi, 4
            push esi
		    call WriteToFile
		    add esp, 0xc

            popad
            popfd
            jmp dword ptr[originalFuncAddr]
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        mov filename, ebx

        call FuncAddr

        pushfd
        pushad
        
        add esi, 8
        push esi
        add esi, 4
        push esi
        call ChangeFile
        add esp, 0x8

        popad
        popfd
        jmp dword ptr[returnAddress]
    }
}

void InstallHook_dumptext()
{
	filename = filenames[fileidx];
    DWORD oldProtect;

    originalFuncAddr = 0x40993f;
    returnAddress = 0x409964;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext() {
    DWORD oldProtect;
    originalFuncAddr = 0x40995f;
    returnAddress = 0x409964;
    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}