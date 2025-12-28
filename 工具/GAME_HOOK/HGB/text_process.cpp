#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>
#include "hook_def.h"
#include "CHS_PACK_LIB.h"

int retAddAddr = 5;
DWORD originalFuncAddr;
DWORD returnAddress;
DWORD oriFunc;

INIT_PACK_INFO("HGB_CHS.CPK", "HelloGoodBye")

void CustomReadFile(char** outBuffer, char** packageName, char** fileName, int* eax) {
    //std::string filePath = "trans\\" + std::string(*fileName);
    if (strstr(*packageName, "syssnd") != NULL) {
        return;
    }
    if (CustomPack::isInPack(packname, std::string(*fileName))) {
        std::string filedata = CustomPack::getFile(packname, enc, *fileName);
        memcpy(*outBuffer, filedata.c_str(), filedata.size());
        *eax = filedata.size();
    }
}

void __declspec(naked) replace_file() {
    __asm {
        call oriFunc
        pushad
        pushfd
        mov eax, esp

        add eax, 0x20
        push eax
        add eax, 0x0c
        push eax
        sub eax, 0x04
        push eax
        sub eax, 0x04
        push eax
        call CustomReadFile
		add esp, 0x10
		popfd
		popad
		jmp returnAddress
    }
}

void InstallHook_replacetext()
{
    DWORD oldProtect;

    originalFuncAddr = 0x0044630d;
	returnAddress = originalFuncAddr + retAddAddr;
    oriFunc = 0x446060;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)replace_file - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    install_hook_textreplaceFromPackEx(1, packname, "data2.bin", enc);
    newFontName = L"SimHei";
    HeightScaleFactor = 90;
    WidthScaleFactor = 75;
    installFontHook_main(1, 1, 1, 0);
}

