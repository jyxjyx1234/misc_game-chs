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

std::string utf8ToShiftJIS(const std::string& utf8Str) {
    // 首先将 UTF-8 转换为 UTF-16
    int wideSize = MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, NULL, 0);
    if (wideSize == 0) return "";

    std::vector<wchar_t> wstr(wideSize);
    MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, &wstr[0], wideSize);

    // 然后将 UTF-16 转换为 Shift-JIS
    int shiftJisSize = WideCharToMultiByte(932, 0, &wstr[0], -1, NULL, 0, NULL, NULL);
    if (shiftJisSize == 0) return "";

    std::vector<char> shiftJisStr(shiftJisSize);
    WideCharToMultiByte(932, 0, &wstr[0], -1, &shiftJisStr[0], shiftJisSize, NULL, NULL);

    return std::string(shiftJisStr.begin(), shiftJisStr.end() - 1);  // 去掉结尾的 null 字符
}

std::string utf8ToGBK(const std::string& utf8Str) {
    // 首先将 UTF-8 转换为 UTF-16
    int wideSize = MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, NULL, 0);
    if (wideSize == 0) return "";

    std::vector<wchar_t> wstr(wideSize);
    MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, &wstr[0], wideSize);

    // 然后将 UTF-16 转换为 gbk
    int gbkSize = WideCharToMultiByte(936, 0, &wstr[0], -1, NULL, 0, NULL, NULL);
    if (gbkSize == 0) return "";

    std::vector<char> gbkStr(gbkSize);
    WideCharToMultiByte(936, 0, &wstr[0], -1, &gbkStr[0], gbkSize, NULL, NULL);

    return std::string(gbkStr.begin(), gbkStr.end() - 1);  // 去掉结尾的 null 字符
}

std::map<std::string, std::string> readKeyValuePairsFromFile(const std::string& filename) {
    std::map<std::string, std::string> result;
    std::ifstream file(filename, std::ios::in | std::ios::binary);

    if (!file.is_open()) {
        printf("Error: Unable to open trans file\n");
        return result;
    }

    std::string line;
    while (std::getline(file, line)) {
        size_t equalPos = line.find('=');
        if (equalPos != std::string::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value = line.substr(equalPos + 1);

            // 移除前后的空白字符
            key.erase(0, key.find_first_not_of(" \t"));
            key.erase(key.find_last_not_of(" \t") + 1);
            value.erase(0, value.find_first_not_of(" \t"));
            value.erase(value.find_last_not_of(" \t") + 1);

            // 将 UTF-8 转换为 Shift-JIS
            std::string shiftJisKey = utf8ToShiftJIS(key);
            std::string shiftJisValue = utf8ToShiftJIS(value);

            result[shiftJisKey] = shiftJisValue;
        }
    }
    int n = result.size();
    printf("Get %d trans data!\n",n);

    file.close();
    return result;
}

void WriteToFile(const char* text, bool addAtSign)
{
    std::ofstream file("output.txt", std::ios::app);
    if (file.is_open())
    {
        if (addAtSign)
            file << "@";
        file << text << std::endl;
        file.close();
    }
}

std::map<std::string, std::string> replacementMap;

void ChangeText(char* text)
{
    if (text == nullptr) return;
    printf("%s\n",text);
    std::string str(text);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        //printf("%s Repalce: sucess!\n", it->second.c_str());
        strcpy_s(text, it->second.length() + 1, it->second.c_str());
    }
    else {
        printf("Text not find!\n");
    }
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        // 保存寄存器
        pushad
        pushfd

        // 获取esp+4处的指针
        mov eax, [esp + 0x28]  

        // 检查ebp是否为0
        test ebp, ebp
        jnz non_zero_ebp

        // ebp为0的情况
        push 1  // addAtSign = true
        push eax
        call WriteToFile
        add esp, 8  // 清理堆栈
        jmp end_write

        non_zero_ebp :
        // ebp不为0的情况
        push 0  // addAtSign = false
            push eax
            call WriteToFile
            add esp, 8  // 清理堆栈

            end_write :
            // 恢复寄存器
            popfd
            popad

        // 执行原始指令
        sub esp, 8
        push ebx
        push ebp

        

        // 跳回原函数
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        // 保存寄存器
        pushad
        pushfd

        // 获取esp+4处的指针
        mov eax, [esp + 0x28]  // 32是pushad的大小，4是pushfd的大小
        push eax
        call ChangeText
        add esp, 4

        // 恢复寄存器
        popfd
        popad

        // 执行原始的指令
        sub esp, 8
        push ebx
        push ebp

        // 跳回原始函数
        jmp[returnAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress+0x4B7F0;  // resident.dll基址 + 0x4B7F0
    returnAddress = baseAddress+0x4B7F5;  // resident.dll基址 + 0x4B7F0

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext() {
    std::map<std::string, std::string> replacementMap = readKeyValuePairsFromFile("trans.dat");

    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress + 0x4B7F0;  // resident.dll基址 + 0x4B7F0
    returnAddress = baseAddress + 0x4B7F5;  // resident.dll基址 + 0x4B7F0

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    printf("Replacetext HOOKED!\n");

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}