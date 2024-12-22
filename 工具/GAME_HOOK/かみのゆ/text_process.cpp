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

DWORD originalFuncAddr;
DWORD returnAddress;

const int maxbuffersize = 1000000;

WCHAR* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<int, std::wstring> readKeyValuePairsFromFile(const std::string& filename) {
    std::wifstream file(filename, std::ios::binary);
    std::map<int, std::wstring> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    file.imbue(std::locale(file.getloc(), new std::codecvt_utf16<wchar_t, 0x10ffff, std::consume_header>));
    std::wstring line;

    while (std::getline(file, line, L'|')) {
        size_t equalPos = line.find(L":::");
        if (equalPos != std::wstring::npos) {
            std::wstring keystr = line.substr(0, equalPos);
            int key = std::stoi(keystr);
            std::wstring value = line.substr(equalPos + 3);
            transMap[key] = value;
        }
    }

    //MessageBoxA(NULL, std::to_string(transMap.size()).c_str(), NULL, NULL);
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


std::map<int, std::wstring> replacementMap = readKeyValuePairsFromFile("trans.dat");

void ChangeText(WCHAR** textbuffer, DWORD* len, int offset) {
    auto it = replacementMap.find(offset);
    if (it != replacementMap.end()) {
        std::wstring trans = it->second;
        strBuffer[stridx] = new wchar_t[trans.length() + 20];
        memset(strBuffer[stridx], 0, (trans.length() + 20) * sizeof(wchar_t));
        
        const wchar_t* transData = trans.data();
        size_t transSize = trans.size() * sizeof(wchar_t);
        strBuffer[stridx] = new wchar_t[transSize];
        memcpy(strBuffer[stridx], transData, transSize);

        *textbuffer = strBuffer[stridx];
        *len = static_cast <DWORD>(trans.length() / 2 + trans.length() % 2);
        stridx = stridx + 1;
        if (stridx == maxbuffersize - 2){
            stridx = 0; 
        }
        return;
    }
    else {
        return;
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        add esi, ebx
        shr ecx, 2
        pushfd
        pushad

        push ebx//偏移
        mov ebx, esp
        add ebx, 0x1c
        push ebx //ecx, 长度
        mov ebx, esp
        add ebx, 0xc
        push ebx //esp+24+4+4: esi, 源文本
        call ChangeText
        add esp, 12

        popad
        popfd

        jmp dword ptr[returnAddress]
    }
}

void InstallHook_replacetext() {
    DWORD oldProtect;

    originalFuncAddr = 0x54bd3a;  
    returnAddress = 0x54bd3f;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}