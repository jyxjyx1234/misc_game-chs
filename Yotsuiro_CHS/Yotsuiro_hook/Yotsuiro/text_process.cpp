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
            // ȥ�����ܴ��ڵ���β�ո�
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

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, [esp + 0x2C]  
        push eax
        call ChangeText
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

        jmp dword ptr[returnAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress+ 0x12B6D1;  // resident.dll��ַ + 0x4B7F0
    returnAddress = baseAddress+ 0x12B6D6;  // resident.dll��ַ + 0x4B7F0
    callAddress = baseAddress + 0x49A50;

    // �޸��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // д����תָ��
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;

    // �ָ��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext() {
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress + 0x12B6D1;  // resident.dll��ַ + 0x4B7F0
    returnAddress = baseAddress + 0x12B6D6;  // resident.dll��ַ + 0x4B7F0
    callAddress = baseAddress + 0x49A50;

    // �޸��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // д����תָ��
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    // �ָ��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}