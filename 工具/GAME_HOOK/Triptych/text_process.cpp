#include <winapi_def.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <map>
#include <codecvt>
#include <locale>
#include <vector>
#include "text_process.h"
#include "convert.h"
#include "detours.h"
#include <filesystem>
#include "textReplacer.h"


DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

const int maxbuffersize = 1000;

std::string* fileBuffer[maxbuffersize] = {};
int stridx = 0;
std::string key = "Triptych";

std::map<std::string, int> fileBufferMap;

void init_fileBuffer() {
    std::string path = "patch";
    if (!std::filesystem::exists(path)) {
        MessageBoxA(NULL, "Patch does not exist!", "Error", MB_OK | MB_ICONERROR);
        exit(EXIT_FAILURE);
    }
    for (const auto& entry : std::filesystem::directory_iterator(path)) {
        if (entry.path().extension() == ".asb") {
            std::ifstream file(entry.path(), std::ios::binary);
            if (file) {
                std::ostringstream oss;
                oss << file.rdbuf();
                std::string content = oss.str();
                for (size_t i = 0; i < content.size(); ++i) {
                    content[i] ^= key[i % key.size()];
                }
                fileBuffer[stridx] = new std::string(content);
                fileBufferMap[entry.path().filename().string()] = stridx;
				std::cout << "Loaded file: " << entry.path().filename().string() << std::endl;
                stridx++;
            }
        }
    }
}


void replaceFile(int* size, char** filecontent, char** filename, int* size2) {
    if (fileBufferMap.find(std::string(*filename)) != fileBufferMap.end()) {
        int idx = fileBufferMap[std::string(*filename)];
		memcpy(*filecontent, fileBuffer[idx]->c_str(), fileBuffer[idx]->size());
		*size = fileBuffer[idx]->size();
		*size2 = fileBuffer[idx]->size();
    }
}

void __declspec(naked) HookFunction_replaceFile()
{
    __asm
    {
        call callAddress

        pushfd
        pushad

        mov eax, esp
        add eax, 0x24 + 0x20 
        push eax //int*, 文件大小
        add eax, 0x24
        push eax // char**, filename
        mov eax, esp
        add eax, 8 // edi, char**, 文件内容
        push eax
		add eax, 28 //eax, int*, 文件大小
		push eax
        call replaceFile
        add esp, 16

        popad
        popfd

        jmp dword ptr[returnAddress]
    }
}

void InstallHook_replaceFile() {
    init_fileBuffer();
    DWORD oldProtect;
    originalFuncAddr = 0x44a5fd;
    returnAddress = originalFuncAddr + 5;
    callAddress = 0x40ef10;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceFile - originalFuncAddr - 5;
    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    charReplaceMap = readReplaceMap("data1.bin", key);
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
    DetourTransactionCommit();
}
