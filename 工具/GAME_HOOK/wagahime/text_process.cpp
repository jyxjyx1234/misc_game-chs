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
#include <psapi.h>
#include <regex>

DWORD returnAddress1;
DWORD returnAddress2;

std::string removeNewlines(const std::string& input) {
    std::regex pattern("[\r\n]");
    return std::regex_replace(input, pattern, "");
}

const int maxbuffersize = 1000000;

char* strBuffer[maxbuffersize] = {};
int stridx = 0;

DWORD GetTextSectionAddress()
{

    wchar_t processName[MAX_PATH] = {0};
    GetModuleFileName(NULL, processName, MAX_PATH);
	std::wcout << processName << std::endl;
    HMODULE hModule = GetModuleHandle(processName);
    MODULEINFO moduleInfo;
	if (hModule == NULL) {
		std::wcerr << L"GetModuleHandle failed" << std::endl;
		return 0;
	}
    else {
        GetModuleInformation(GetCurrentProcess(), hModule, &moduleInfo, sizeof(moduleInfo));
    }
    // 获取.text段的起始地址和大小
    BYTE* baseAddress = static_cast<BYTE*>(moduleInfo.lpBaseOfDll);
    IMAGE_DOS_HEADER* dosHeader = reinterpret_cast<IMAGE_DOS_HEADER*>(baseAddress);
    IMAGE_NT_HEADERS* ntHeaders = reinterpret_cast<IMAGE_NT_HEADERS*>(baseAddress + dosHeader->e_lfanew);
    IMAGE_SECTION_HEADER* sectionHeader = IMAGE_FIRST_SECTION(ntHeaders);

    for (int i = 0; i < ntHeaders->FileHeader.NumberOfSections; ++i, ++sectionHeader) {
        if (memcmp(sectionHeader->Name, ".text", 5) == 0) {
            DWORD textSectionAddress = reinterpret_cast<DWORD>(baseAddress + sectionHeader->VirtualAddress);
            return textSectionAddress;
        }
    }
}


//char* CharReplace(const char* str, char oriChar, char newChar) {
//    size_t len = strlen(str);
//    char* newStr = new char[len + 1];
//
//    for (size_t i = 0; i < len; i++) {
//        if (str[i] == oriChar) {
//            newStr[i] = newChar;
//        }
//        else {
//            newStr[i] = str[i];
//        }
//    }
//    newStr[len] = '\0';
//    return newStr;
//}

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
	buffer << file.rdbuf();
	std::string transData = buffer.str(); 
    size_t pos = 0;
    size_t start = 0;
	std::string delimiter = "|||";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find(":::");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            key = removeNewlines(key);
            std::string value = line.substr(equalPos + 3);
            strBuffer[stridx] = new char[strlen(value.c_str()) + 2];
            strcpy_s(strBuffer[stridx], strlen(value.c_str()) + 1, value.c_str());
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
	std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    file.close();

    /*for (const auto& pair : transMap) {
        std::cout << "Key: " << pair.first << std::endl << "Value: " << pair.second << std::endl << std::endl;
    }*/
    return transMap;
}


void WriteToFile(const char* str)
{
    if (str == nullptr) return;
    const std::string& filename = "output.txt";
    std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
        //std::wstring res(wCharReplace(str, L'\r', L'@'));
        std::string res(str);
		std::cout << "write to output:" << res << std::endl << std::endl;
        size_t len = strlen(res.c_str());
        outFile.write(reinterpret_cast<const char*>("========\n"), strlen("========\n"));
        outFile.write(reinterpret_cast<const char*>(res.c_str()), len);
        outFile.write(reinterpret_cast<const char*>("\n"), strlen("\n"));
        outFile.close();
    }
    else {
		std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
    }
}


std::map<std::string, int> replacementMap;

const char* ChangeText(char* str, int* length) {
    if (str == nullptr) return str;
    std::string originalStr(str);
	originalStr = removeNewlines(originalStr);
    auto it = replacementMap.find(originalStr);
    if (it != replacementMap.end()) {
        int transidx = it->second;
        //memset(strBuffer[stridx], 0, charsize);
        
		*length = strlen(strBuffer[transidx]);
        std::cout << originalStr << " is repalced to" << strBuffer[transidx] <<std::endl << std::endl;
        return strBuffer[transidx];
    }
    else {
        std::cout << originalStr << " not found" << std::endl << std::endl;
        //WriteToFile(str);
        return str;
    }
} 

void __declspec(naked) HookFunction_replacetext1()
{
    __asm
    {
        pushad
        pushfd

        mov edx, esp
        add edx, 0x24 + 0x28
        push edx
        push eax
        call ChangeText
        add esp, 8
        mov[esp + 0x20], eax
        mov[esp + 0x28], eax

        popfd
        popad

        add esp, 0x14
        mov dword ptr[ebp - 0x18], 0x0

        jmp returnAddress1
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
    __asm
    {
        pushad
        pushfd

        mov edx, esp
        add edx, 0x24 + 0x1c
        push edx
        push eax
        call ChangeText
        add esp, 8
		mov[esp + 0x20], eax

        popfd
        popad

        add esp, 0xc
        mov dword ptr[esp + 0x14], eax

        jmp returnAddress2
    }
}

void __declspec(naked) HookFunction_dumptext1()
{
    __asm
    {
        pushad
        pushfd

        push eax
        call WriteToFile
        add esp, 4

        popfd
        popad

        add esp, 0x14
		mov dword ptr [ebp - 0x18], 0x0

        jmp returnAddress1
    }
}

void __declspec(naked) HookFunction_dumptext2()
{
    __asm
    {
        pushad
        pushfd

        push eax
        call WriteToFile
        add esp, 4

        popfd
        popad

        add esp, 0xc
        mov dword ptr [esp + 0x14], eax

        jmp returnAddress2
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;
    //Sleep(1000);

    DWORD baseAddr = GetTextSectionAddress();
	// baseAddr = 0x4c1000;
    DWORD originalFuncAddr1 = baseAddr + 0xd16B6;
    DWORD originalFuncAddr2 = baseAddr + 0x98c81;
	//MessageBoxA(NULL, std::to_string(baseAddr).c_str(), "Base Address", MB_OK);

    returnAddress1 = baseAddr + 0xd16c0;
    returnAddress2 = baseAddr + 0x98c88;
    std::cout << std::hex << baseAddr << std::endl;
    std::cout << std::hex << originalFuncAddr1 << std::endl;
    std::cout << std::hex << originalFuncAddr2 << std::endl;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr1, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr1 = 0xE9;  // JMP
    *(BYTE*)originalFuncAddr2 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr1 + 1) = (DWORD)HookFunction_dumptext1 - originalFuncAddr1 - 5;
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_dumptext2 - originalFuncAddr2 - 5;
    std::cout << std::hex << (DWORD)HookFunction_dumptext1 - originalFuncAddr1 - 5 << std::endl;
    std::cout << std::hex << (DWORD)HookFunction_dumptext2 - originalFuncAddr2 - 5 << std::endl;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr1, 5, oldProtect, &oldProtect);
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);

    std::cout << "HOOK MODE DUMP Done." << std::endl;
	//MessageBoxA(NULL, "Hooked!", "Hook", MB_OK);
}

void InstallHook_replacetext() {
	replacementMap = readKeyValuePairsFromFile("trans.dat");
    DWORD oldProtect;
    //Sleep(1000);

    DWORD baseAddr = GetTextSectionAddress();
    // baseAddr = 0x4c1000;
    DWORD originalFuncAddr1 = baseAddr + 0xd16B6;
    DWORD originalFuncAddr2 = baseAddr + 0x98c81;
    //MessageBoxA(NULL, std::to_string(baseAddr).c_str(), "Base Address", MB_OK);

    returnAddress1 = baseAddr + 0xd16c0;
    returnAddress2 = baseAddr + 0x98c88;
    std::cout << std::hex << baseAddr << std::endl;
    std::cout << std::hex << originalFuncAddr1 << std::endl;
    std::cout << std::hex << originalFuncAddr2 << std::endl;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr1, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr1 = 0xE9;  // JMP
    *(BYTE*)originalFuncAddr2 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr1 + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr1 - 5;
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr2 - 5;
    std::cout << std::hex << (DWORD)HookFunction_replacetext1 - originalFuncAddr1 - 5 << std::endl;
    std::cout << std::hex << (DWORD)HookFunction_replacetext2 - originalFuncAddr2 - 5 << std::endl;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr1, 5, oldProtect, &oldProtect);
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);

    std::cout << "HOOK MODE REPLACE Done." << std::endl;
}