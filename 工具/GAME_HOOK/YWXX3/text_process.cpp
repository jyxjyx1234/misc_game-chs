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
#include "convert.h"
#include "readconfig.h"

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD textAddress;


std::map<std::string, std::string> readKeyValuePairsFromFile(const std::string& filename) {
    std::map<std::string, std::string> result;
    std::ifstream file(filename);
    std::string line;
    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::string key, value;

        if (std::getline(iss, key, '=') && std::getline(iss, value)) {
            // 去除可能存在的首尾空格
            key.erase(0, key.find_first_not_of(" \t"));
            key.erase(key.find_last_not_of(" \t") + 1);
            value.erase(0, value.find_first_not_of(" \t"));
            value.erase(value.find_last_not_of(" \t") + 1);
            result[key] = value;
        }
    }
    printf("Read %d trans!\n", result.size());
    file.close();
    return result;
}

std::map<std::string, std::string> replacementMap = readKeyValuePairsFromFile("trans.dat");

void ChangeText(char* text)
{
    if (text == nullptr) return;
    if (text == "") return;
    if (text == "\n") return;
    std::string str(text);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        printf("%s\n", text);
        printf("Repalce sucess!\n");
        replacementMap[it->second] = it->second;
        strcpy_s(text, it->second.length() + 1, it->second.c_str());
        replacementMap[it->second] = it->second;
    }
    else {
        printf("%s\n", text);
        printf("Not found!\n");
        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            file << text << std::endl;
            file.close();
        }
        replacementMap[str] = str;
    }
}

void __declspec(naked) HookFunction_ChangeText()
{
    __asm
    {
        pushfd
        pushad

        mov eax,dword ptr[textAddress]
        push eax
        call ChangeText
        add esp,4

        popad
        popfd

        push ecx
        push ebx
        push ebp
        push esi
        mov esi, dword ptr ss : [esp + 0x20]

        jmp dword ptr[returnAddress]
    }
}


void InstallHook_ChangeText()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    DWORD oldProtect;


    originalFuncAddr = 0x411160;
    returnAddress = 0x411168;
    textAddress = 0x4477c8;


    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_ChangeText - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);
}
