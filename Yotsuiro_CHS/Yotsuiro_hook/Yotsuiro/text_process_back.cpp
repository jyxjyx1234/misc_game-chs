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
    // ���Ƚ� UTF-8 ת��Ϊ UTF-16
    int wideSize = MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, NULL, 0);
    if (wideSize == 0) return "";

    std::vector<wchar_t> wstr(wideSize);
    MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, &wstr[0], wideSize);

    // Ȼ�� UTF-16 ת��Ϊ Shift-JIS
    int shiftJisSize = WideCharToMultiByte(932, 0, &wstr[0], -1, NULL, 0, NULL, NULL);
    if (shiftJisSize == 0) return "";

    std::vector<char> shiftJisStr(shiftJisSize);
    WideCharToMultiByte(932, 0, &wstr[0], -1, &shiftJisStr[0], shiftJisSize, NULL, NULL);

    return std::string(shiftJisStr.begin(), shiftJisStr.end() - 1);  // ȥ����β�� null �ַ�
}

std::string utf8ToGBK(const std::string& utf8Str) {
    // ���Ƚ� UTF-8 ת��Ϊ UTF-16
    int wideSize = MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, NULL, 0);
    if (wideSize == 0) return "";

    std::vector<wchar_t> wstr(wideSize);
    MultiByteToWideChar(CP_UTF8, 0, utf8Str.c_str(), -1, &wstr[0], wideSize);

    // Ȼ�� UTF-16 ת��Ϊ gbk
    int gbkSize = WideCharToMultiByte(936, 0, &wstr[0], -1, NULL, 0, NULL, NULL);
    if (gbkSize == 0) return "";

    std::vector<char> gbkStr(gbkSize);
    WideCharToMultiByte(936, 0, &wstr[0], -1, &gbkStr[0], gbkSize, NULL, NULL);

    return std::string(gbkStr.begin(), gbkStr.end() - 1);  // ȥ����β�� null �ַ�
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

            // �Ƴ�ǰ��Ŀհ��ַ�
            key.erase(0, key.find_first_not_of(" \t"));
            key.erase(key.find_last_not_of(" \t") + 1);
            value.erase(0, value.find_first_not_of(" \t"));
            value.erase(value.find_last_not_of(" \t") + 1);

            // �� UTF-8 ת��Ϊ Shift-JIS
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
        // ����Ĵ���
        pushad
        pushfd

        // ��ȡesp+4����ָ��
        mov eax, [esp + 0x28]  

        // ���ebp�Ƿ�Ϊ0
        test ebp, ebp
        jnz non_zero_ebp

        // ebpΪ0�����
        push 1  // addAtSign = true
        push eax
        call WriteToFile
        add esp, 8  // �����ջ
        jmp end_write

        non_zero_ebp :
        // ebp��Ϊ0�����
        push 0  // addAtSign = false
            push eax
            call WriteToFile
            add esp, 8  // �����ջ

            end_write :
            // �ָ��Ĵ���
            popfd
            popad

        // ִ��ԭʼָ��
        sub esp, 8
        push ebx
        push ebp

        

        // ����ԭ����
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        // ����Ĵ���
        pushad
        pushfd

        // ��ȡesp+4����ָ��
        mov eax, [esp + 0x28]  // 32��pushad�Ĵ�С��4��pushfd�Ĵ�С
        push eax
        call ChangeText
        add esp, 4

        // �ָ��Ĵ���
        popfd
        popad

        // ִ��ԭʼ��ָ��
        sub esp, 8
        push ebx
        push ebp

        // ����ԭʼ����
        jmp[returnAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress+0x4B7F0;  // resident.dll��ַ + 0x4B7F0
    returnAddress = baseAddress+0x4B7F5;  // resident.dll��ַ + 0x4B7F0

    // �޸��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // д����תָ��
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;

    // �ָ��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext() {
    std::map<std::string, std::string> replacementMap = readKeyValuePairsFromFile("trans.dat");

    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress + 0x4B7F0;  // resident.dll��ַ + 0x4B7F0
    returnAddress = baseAddress + 0x4B7F5;  // resident.dll��ַ + 0x4B7F0

    // �޸��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // д����תָ��
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    printf("Replacetext HOOKED!\n");

    // �ָ��ڴ汣��
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}