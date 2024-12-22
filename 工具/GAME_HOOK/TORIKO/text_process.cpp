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
DWORD callAddress;

std::map<std::string, std::string> readKeyValuePairsFromFile(const std::string& filename) {
    std::map<std::string, std::string> result;
    std::ifstream file(filename);
    std::string line;
    while (std::getline(file, line, '*')) {
        std::istringstream iss(line);
        std::string key, value;

        if (std::getline(iss, key, '=') && std::getline(iss, value)) {
            result[key] = value;
        }
    }
    printf("Read %d trans!\n", result.size());
    file.close();
    return result;
}

void WriteToFile(const char* text)
{
    if (text == nullptr) return;
    std::ofstream file("output.txt", std::ios::app);
    if (file.is_open())
    {
        file << text << std::endl;
        file.close();
    }
}

std::map<std::string, std::string> replacementMap = readKeyValuePairsFromFile("trans.dat");

char* ChangeText(char* text)
{
    if (text == nullptr) return text;
    printf("%s\n",text);
    std::string str(text);

    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        printf("%s Repalce: sucess!\n", it->second.c_str());
        std::string new_s = it->second;
        char* result = new char[new_s.size() + 1];
        memcpy(result, new_s.c_str(), new_s.size() + 1);
        return result;
    }
    else {
        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            file << text << std::endl;
            file.close();
        }
        return text;
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        push edi
        pushad
        pushfd

        push edi              
        call ChangeText       
        add esp, 4            
        mov dword ptr [esp + 36], eax

        popfd
        popad
        pop edi

        call callAddress
        jmp dword ptr[returnAddress]
    }
}


void InstallHook_replacetext() {
    DWORD oldProtect;

    rr::RConfig config;
    config.ReadConfig("hook.ini");

    originalFuncAddr = 0x40f534;  
    returnAddress = 0x40f539;  
    callAddress = 0x40f6e0;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP

    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}