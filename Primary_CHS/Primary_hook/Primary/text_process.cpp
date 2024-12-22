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
        file <<"@"<< text << std::endl;
        file.close();
    }
}

std::map<std::string, std::string> replacementMap;

void ChangeText(char* input) {
    std::string result;
    std::istringstream iss(input);
    std::string line;

    while (std::getline(iss, line)) {
        bool replaced = false;
        for (const auto& pair : replacementMap) {
            if (line == pair.first) {
                result += pair.second + "\n";
                replaced = true;
                break;
            }
        }
        if (!replaced) {
            result += line + "\n";
        }
    }

    // 移除最后一个多余的换行符（如果有的话）
    if (!result.empty() && result.back() == '\n') {
        result.pop_back();
    }

    strcpy_s(input, result.length() + 1, result.c_str());
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        pushad
        pushfd

        push esi
        call WriteNameToFile
        add esp, 4

        popfd
        popad

        pushad
        pushfd

        // 获取esp+4处的指针
        mov eax, [esp + 0x28]  

        push eax
        call WriteToFile
        add esp, 4  // 清理堆栈

        popfd
        popad

        // 执行原始指令
        push ecx
        push ebx
        xor ebx,ebx
        cmp dword ptr ss : [esp + 0x10] , ebx

        // 跳回原函数
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, [esp + 0x30]

        push eax
        call ChangeText
        add esp, 4  // 清理堆栈

        popfd
        popad

        mov dword ptr[esp + 8], 0

        call dword ptr[callAddress]

        // 跳回原函数
        jmp dword ptr[returnAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress+ 0x394d0;  // resident.dll基址 + 0x4B7F0
    returnAddress = baseAddress+ 0x394d8;  // resident.dll基址 + 0x4B7F0

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext() {
    replacementMap = readKeyValuePairsFromFile("trans.dat");

    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress + 0xE9BFE;  // resident.dll基址 + 0x4B7F0
    returnAddress = baseAddress + 0xe9c03;  // resident.dll基址 + 0x4B7F0
    callAddress = baseAddress + 0x3F950;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}