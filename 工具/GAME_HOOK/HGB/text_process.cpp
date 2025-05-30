#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>

int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD oriFunc;

std::string enc = "HelloGoodBye";

//typedef int (WINAPI* pOriReadFile)(char* outBuffer, char* packageName, char* fileName);
//pOriReadFile OriReadFile = (pOriReadFile)0x446060;
//
//int CustomReadFile(char* outBuffer, char* packageName, char* fileName) {
//    auto res = OriReadFile(outBuffer, packageName, fileName);
//    std::string filePath = "trans\\" + std::string(fileName);
//    if (std::filesystem::exists(filePath)) {
//        std::ifstream file(filePath, std::ios::binary);
//        if (file) {
//            file.seekg(0, std::ios::end);
//            std::streamsize size = file.tellg();
//            file.seekg(0, std::ios::beg);
//            if (size > 0 && file.read(outBuffer, size)) {
//                for (int i = 0; i < size; i++) {
//                    *(BYTE*)(outBuffer + i) ^= enc[i % enc.size()];
//                }
//                res = size;
//            }
//        }
//    }
//	return res;
//}

void CustomReadFile(char** outBuffer, char** packageName, char** fileName, int* eax) {
    std::string filePath = "trans\\" + std::string(*fileName);
    if (std::filesystem::exists(filePath)) {
        std::ifstream file(filePath, std::ios::binary);
        if (file) {
            file.seekg(0, std::ios::end);
            std::streamsize size = file.tellg();
            file.seekg(0, std::ios::beg);
            if (size > 0 && file.read(*outBuffer, size)) {
                for (int i = 0; i < size; i++) {
                    *(BYTE*)(*outBuffer + i) ^= enc[i % enc.size()];
                }
				*eax = size;
            }
        }
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


    //DetourTransactionBegin();
    //DetourUpdateThread(GetCurrentThread());
    //DetourAttach(&(PVOID&)OriReadFile, CustomReadFile);
    //DetourTransactionCommit();

    install_hook_textreplaceEx(1, "trans\\data2.bin", enc);
    newFontName = L"SimHei";
    HeightScaleFactor = 90;
    WidthScaleFactor = 75;
    installFontHook_main(1, 1, 1, 0);
}

