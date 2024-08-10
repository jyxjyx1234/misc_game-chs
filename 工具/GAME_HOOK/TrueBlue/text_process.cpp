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
DWORD originalOptFuncAddr;
DWORD returnOptAddress;
DWORD calloptAddress;

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

void WriteToFile(const char* text)
{
    if (text == nullptr) return;
    std::ofstream file("output.txt", std::ios::app);
    std::string str(text);
    str.erase(std::remove(str.begin(), str.end(), '\n'), str.end());
    if (file.is_open())
    {
        file << str.c_str() << "\n" << std::endl;
        file.close();
    }
}

std::map<std::string, std::string> replacementMap;

void ChangeText(char* text, int f)
{
    if (text == nullptr) return;
    printf("%s\n",text);
    std::string str(text);
    str.erase(std::remove(str.begin(), str.end(), '\n'), str.end());
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        std::string res = it->second;
        if (f == 0) res = res + "\n";
        printf("%s Repalce: sucess!\n", res.c_str());
        strcpy_s(text, res.length() + 1, res.c_str());
    }
    else {
        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            std::string res = ANSIToANSI(str.c_str(), 932, 936);
            strcpy_s(text, res.length() + 1, res.c_str());
            file << text << std::endl << std::endl;
            printf("Not Found!\n");
            file.close();
        }
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, dword ptr ds : [esp + 0x24]
        push 0x00000000
        push eax
        call ChangeText
        add esp, 8

        popfd
        popad

        call callAddress
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replaceopttext()
{
    __asm
    {
        call lstrcpyA

        sub esp,8

        pushad
        pushfd

        mov eax, dword ptr ds : [esp + 0x24]
        push 0x00000001
        push eax
        call ChangeText
        add esp, 8

        popfd
        popad

        add esp,8
        
        jmp dword ptr[returnOptAddress]
    }
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, dword ptr ds :[esp + 0x24]
        push eax
        call WriteToFile
        add esp,4

        popfd
        popad

        call callAddress
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_dumpopttext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, dword ptr ds : [esp + 0x28]
        push eax
        call WriteToFile
        add esp, 4

        popfd
        popad

        call lstrcpyA
        jmp dword ptr[returnOptAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int oriOffset = config.ReadInt("HOOK", "ORIOFFSET", 0);
    int returnOffset = config.ReadInt("HOOK", "RETOFFSET", 0);
    int callOffset = config.ReadInt("HOOK", "CALLOFFSET", 0);
    int oriOptOffset = config.ReadInt("HOOK", "ORIOPTOFFSET", 0);
    int returnOptOffset = config.ReadInt("HOOK", "RETOPTOFFSET", 0);
    int calloptOffset = config.ReadInt("HOOK", "CALLOPTOFFSET", 0);

    originalFuncAddr = oriOffset;
    returnAddress = returnOffset;
    callAddress = callOffset;
    originalOptFuncAddr = oriOptOffset;
    returnOptAddress = returnOptOffset;
    calloptAddress = calloptOffset;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    // 修改内存保护
    VirtualProtect((LPVOID)originalOptFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalOptFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalOptFuncAddr + 1) = (DWORD)HookFunction_dumpopttext - originalOptFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalOptFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext() {
    DWORD oldProtect;

    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int oriOffset = config.ReadInt("HOOK", "ORIOFFSET", 0);
    int returnOffset = config.ReadInt("HOOK", "RETOFFSET", 0);
    int callOffset = config.ReadInt("HOOK", "CALLOFFSET", 0);
    int oriOptOffset = config.ReadInt("HOOK", "ORIOPTOFFSET", 0);
    int returnOptOffset = config.ReadInt("HOOK", "RETOPTOFFSET", 0);
    int calloptOffset = config.ReadInt("HOOK", "CALLOPTOFFSET", 0);

    originalFuncAddr = oriOffset;  
    returnAddress = returnOffset;  
    callAddress = callOffset;
    originalOptFuncAddr = oriOptOffset;
    returnOptAddress = returnOptOffset;
    calloptAddress = calloptOffset;

    replacementMap = readKeyValuePairsFromFile("trans.dat");
    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;


    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    // 修改内存保护
    VirtualProtect((LPVOID)originalOptFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalOptFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalOptFuncAddr + 1) = (DWORD)HookFunction_replaceopttext - originalOptFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalOptFuncAddr, 5, oldProtect, &oldProtect);
}