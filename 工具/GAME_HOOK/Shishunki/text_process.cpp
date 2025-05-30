#include "textReplacer.h"
#include "text_process.h"
#include <regex>
#include <filesystem>

int mode;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

const int maxbuffersize = 0x1000000;
int stridx = 0;

std::string fileContent;
void replace_file_path(char** name) {
    std::string fn(*name);
    std::filesystem::path filename = std::filesystem::path(fn).filename();
    std::filesystem::path new_filename = std::filesystem::path("trans") / filename;
    if (std::filesystem::exists(new_filename)) {
        strcpy_s(*name, new_filename.string().size() + 1, new_filename.string().c_str());
    }
}

void __declspec(naked) HookFunction_replacePath()
{
    __asm
    {
        push ebp
        push eax

        pushad
        pushfd

        mov eax, esp
		add eax, 0x24
        push eax
		call replace_file_path
		add esp, 4

        popfd
        popad

        call [edx + 0x28]
     
        jmp dword ptr[returnAddress]
    }
}

void InstallHook_replacetext()
{
    DWORD oldProtect;
    originalFuncAddr = 0x04977C8;
    returnAddress = originalFuncAddr + 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacePath - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

