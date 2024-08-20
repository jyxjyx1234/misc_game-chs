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
    if (file.is_open())
    {
        file << text << std::endl;
        file.close();
    }
}

void WriteNameToFile(const char* text)
{
    if (text == nullptr) return;
    std::ofstream file("output.txt", std::ios::app);
    if (file.is_open())
    {
        file << "@" << text << std::endl;
        file.close();
    }
}

std::map<std::string, std::string> replacementMap = readKeyValuePairsFromFile("trans.dat");

void ChangeText(char* text)
{
    if (text == nullptr) return;
    printf("%s\n",text);
    std::string str(text);
    str.erase(std::remove(str.begin(), str.end(), '\n'), str.end());
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        printf("%s Repalce: sucess!\n", it->second.c_str());
        strcpy_s(text, it->second.length() + 1, it->second.c_str());
    }
    else {
        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            file << text << std::endl;
            file.close();
        }
    }
}

void ChangeText_addname(char* text, char* name)
{
    if (text == nullptr) return;
    printf("%s\n", text);
    std::string str(text);
    str.erase(std::remove(str.begin(), str.end(), '\n'), str.end());
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        std::string n;
        std::string transstr;
        if (name == nullptr) { n = ""; transstr = n + it->second; }
        else {
            n = name;
            auto n_trans = replacementMap.find(n);
            if (n_trans != replacementMap.end()) {

                transstr = n_trans->second + ANSIToANSI("　「", 936, 932) + it->second + ANSIToANSI("」", 936, 932);
                transstr = replaceSubString(transstr, ANSIToANSI("「「", 936, 932), ANSIToANSI("「", 936, 932));
                transstr = replaceSubString(transstr, ANSIToANSI("」」", 936, 932), ANSIToANSI("」", 936, 932));
            }
            else {
                transstr = n + it->second;
            }
        }
        printf("%s Repalce: sucess!\n", transstr.c_str());
        strcpy_s(text, transstr.length() + 1, transstr.c_str());
    }
    else {
        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            file << text << std::endl;
            file.close();
        }
    }
}

void ChangeName(char* text)
{
    if (text == nullptr) return;
    printf("%s\n", text);
    std::string str(text);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        printf("%s Repalce: sucess!\n", it->second.c_str());
        strcpy_s(text, it->second.length() + 1, it->second.c_str());
    }
}

const char* n = "";

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, [esp + 0x2C]  
        push eax
        call ChangeName
        add esp, 4

        popfd
        popad

        pushad
        pushfd

        mov eax, [esp + 0x30]
        push eax
        call ChangeText
        add esp, 4

        popfd
        popad

        call callAddress
        test bl,bl
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext_removename()
{
    __asm
    {
        pushad
        pushfd

        mov ebx, [esp + 0x2C]
        mov eax, [esp + 0x30]
        push ebx
        push eax
        call ChangeText_addname
        add esp, 8

        popfd
        popad

        pushad
        pushfd

        mov eax,esp
        add eax,0x2c
        mov ebx,dword ptr[n]
        mov dword ptr[eax], ebx

        popfd
        popad


        call callAddress
        test bl, bl
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, [esp + 0x2C]
        push eax
        call WriteNameToFile
        add esp, 4

        popfd
        popad

        pushad
        pushfd

        mov eax, [esp + 0x30]
        push eax
        call WriteToFile
        add esp, 4

        popfd
        popad

        call callAddress
        test bl, bl
        jmp dword ptr[returnAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int oriOffset = config.ReadInt("HOOK", "ORIOFFSET", 0);
    int returnOffset = config.ReadInt("HOOK", "RETOFFSET", 0);
    int callOffset = config.ReadInt("HOOK", "CALLOFFSET", 0);
    int ifremovename = config.ReadInt("TEXTPROCESS", "REMOVENAME", 0);

    originalFuncAddr = baseAddress + oriOffset;  
    returnAddress = baseAddress + returnOffset;  
    callAddress = baseAddress + callOffset;

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

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int oriOffset = config.ReadInt("HOOK", "ORIOFFSET", 0);
    int returnOffset = config.ReadInt("HOOK", "RETOFFSET", 0);
    int callOffset = config.ReadInt("HOOK", "CALLOFFSET", 0);
    int ifremovename = config.ReadInt("TEXTPROCESS", "REMOVENAME", 0);

    originalFuncAddr = baseAddress + oriOffset;  
    returnAddress = baseAddress + returnOffset;  
    callAddress = baseAddress + callOffset;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    if (ifremovename != 0) {
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext_removename - originalFuncAddr - 5;
    }
    else {
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    }

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}