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

const int maxbuffersize = 1000000;
const int charsize = 300;

WCHAR* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::wstring, std::wstring> readKeyValuePairsFromFile(const std::string& filename) {
    std::wifstream file(filename, std::ios::binary);
    std::map<std::wstring, std::wstring> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    file.imbue(std::locale(file.getloc(), new std::codecvt_utf16<wchar_t, 0x10ffff, std::consume_header>));
    std::wstring line;
    while (std::getline(file, line)) {
        size_t equalPos = line.find(L":::");
        if (equalPos != std::wstring::npos) {
            std::wstring key = line.substr(0, equalPos);
            std::wstring value = line.substr(equalPos + 3);
            transMap[key] = value;
        }
    }
    printf("Read %d trans!\n", transMap.size());
    file.close();
    return transMap;
}

wchar_t* wCharReplace(const wchar_t* str, wchar_t oriChar, wchar_t newChar) {
    size_t len = wcslen(str);
    wchar_t* newStr = new wchar_t[len + 1];

    for (size_t i = 0; i < len; i++) {
        if (str[i] == oriChar) {
            newStr[i] = newChar;
        }
        else {
            newStr[i] = str[i];
        }
    }
    newStr[len] = L'\0';
    return newStr;
}

void WriteToFile(const wchar_t* str)
{
    if (str == nullptr) return;
    const std::string& filename = "output.txt";
    std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
        std::wstring res(wCharReplace(str, L'\r', L'@'));
        //std::wstring res(str);
        printf("%ls\n", res.c_str());
        size_t len = wcslen(res.c_str());
        outFile.write(reinterpret_cast<const char*>(res.c_str()), len * sizeof(wchar_t));
        outFile.write(reinterpret_cast<const char*>(L"\n"), wcslen(L"\n") * sizeof(wchar_t));
        outFile.close();
    }
}


std::map<std::wstring, std::wstring> replacementMap = readKeyValuePairsFromFile("trans.dat");

wchar_t* ChangeText(wchar_t* str) {
    if (str == nullptr) return str;
    std::wstring originalStr(str);
    auto it = replacementMap.find(originalStr);
    if (it != replacementMap.end()) {
        const WCHAR* trans = it->second.c_str();
        //memset(strBuffer[stridx], 0, charsize);
        strBuffer[stridx] = new wchar_t[charsize];
        wcscpy_s(strBuffer[stridx], wcslen(trans) + 1, trans);
        WCHAR* res = strBuffer[stridx];
        stridx = stridx + 1;
        if (stridx == maxbuffersize - 2){
            stridx = 0; 
        }

        return res;
    }
    else {
        std::wcout << str << L" not found" << std::endl;
        WriteToFile(str);
        return str;
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        push esi
        push eax

        pushad
        pushfd

        push eax
        call ChangeText
        add esp, 4
        mov [esp + 0x24], eax

        popfd
        popad

        call dword ptr [edx + 0x04]

        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        push esi

        pushad
        pushfd

        push eax
        call WriteToFile
        add esp, 4

        popfd
        popad

        push eax
        call dword ptr ds : [edx + 0x04]

        jmp dword ptr[returnAddress]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    originalFuncAddr = 0x42a0f1;
    returnAddress = 0x42a0f6;

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

    originalFuncAddr = 0x42a0f1;  
    returnAddress = 0x42a0f6;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}