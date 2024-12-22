#include <fstream>
#include <string>
#include <locale>
#include <iostream>
#include <map>
#include <Windows.h>
#include "process_text.h"
#include <unordered_set>
#include <chrono>
#include <codecvt>
#include <locale>
#include <regex>

std::string getPath() {
    char buffer[MAX_PATH];
    GetModuleFileNameA(NULL, buffer, MAX_PATH);
    int i;
    for (i = strlen(buffer); i >= 0; i--)
    {
        if (buffer[i] == '\\')
        {
            break;
        }
    }
    buffer[i + 1] = '\0';
    return std::string(buffer);
}

std::string appPath = getPath();

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

std::unordered_set<std::wstring> uniqueStrings;
void appendToFile(const wchar_t* str) {
    const std::string& filename = appPath + "output.txt";
    std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
        std::wstring res(wCharReplace(str, L'\r', L'@'));
        //std::wstring res(str);
        printf("%ls\n", res.c_str());
        if (uniqueStrings.find(res) == uniqueStrings.end()) {
            uniqueStrings.insert(res);
            size_t len = wcslen(res.c_str());
            outFile.write(reinterpret_cast<const char*>(res.c_str()), len * sizeof(wchar_t));
            outFile.write(reinterpret_cast<const char*>(L"\n"), wcslen(L"\n") * sizeof(wchar_t));
        }
        outFile.close();
    }
}

// 保存原始 call 的目标地址
DWORD originalCallTarget;
DWORD ReturnAddress;

// Hook函数
void __declspec(naked) HookFunction_dump()
{
    __asm
    {
        call MultiByteToWideChar
        // 保存所有寄存器
        pushad
        pushfd

        // 保存 edi
        push edi
        call appendToFile
        add esp, 4 

        // 恢复所有寄存器
        popfd
        popad

        jmp ReturnAddress
    }
}

// 替换
// 定义原始函数类型
typedef void (*OriginalFunction)(wchar_t* str);

// 保存原始函数地址
OriginalFunction originalFunction = nullptr;

std::map <std::wstring, std::wstring> t_map;

std::wstring removeTagsFromString(const std::wstring& input) {
    // 创建一个宽字符正则表达式对象
    std::wregex pattern(L"<.*?>");
    // 使用空字符串替换所有匹配的标签
    return std::regex_replace(input, pattern, L"");
}
// 自定义的替换函数
void ReplaceString(wchar_t* str) {
    std::wstring originalStr(wCharReplace(str, L'\r', L'@'));
    originalStr = removeTagsFromString(originalStr);
    auto it = t_map.find(originalStr);
    if (it != t_map.end()) {
        wchar_t* transText = wCharReplace(it->second.c_str(), L'@', L'\r');
        wcscpy_s(str, wcslen(transText) + 1, transText);
    }
    else {
        std::wcout << str << L"not found" << std::endl;
        appendToFile(str);
    }
}


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
            key = removeTagsFromString(key);
            std::wstring value = line.substr(equalPos + 3);
            transMap[key] = value;
        }
    }
    printf("Read %d trans!\n", transMap.size());
    file.close();
    return transMap;
}


void __declspec(naked) HookFunction_replace()
{
    __asm {
        call MultiByteToWideChar
        // 保存所有寄存器
        pushad
        pushfd

        // 保存 edi
        push edi
        call ReplaceString
        add esp, 4

        // 恢复所有寄存器
        popfd
        popad

        jmp ReturnAddress
    }
}


void replace_text_main()
{
    t_map = readKeyValuePairsFromFile(appPath + "trans.dat");
    DWORD baseAddress = (DWORD)GetModuleHandle(L"Flash Asset.x32");
    // 计算Hook地址
    DWORD hookAddress = baseAddress + 0x3D517;

    // 保存返回地址（原始指令序列之后的地址）
    ReturnAddress = hookAddress + 6;

    // 修改内存保护
    DWORD oldProtect;
    VirtualProtect((LPVOID)hookAddress, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)hookAddress = 0xE9;  // JMP指令
    *(DWORD*)(hookAddress + 1) = (DWORD)HookFunction_replace - hookAddress - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)hookAddress, 5, oldProtect, &oldProtect);
}


void dump_text_main() {
    DWORD baseAddress = (DWORD)GetModuleHandle(L"Flash Asset.x32");
    // 计算Hook地址
    DWORD hookAddress = baseAddress + 0x3D517;

    // 保存返回地址（原始指令序列之后的地址）
    ReturnAddress = hookAddress + 6;

    // 修改内存保护
    DWORD oldProtect;
    VirtualProtect((LPVOID)hookAddress, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)hookAddress = 0xE9;  // JMP指令
    *(DWORD*)(hookAddress + 1) = (DWORD)HookFunction_dump - hookAddress - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)hookAddress, 5, oldProtect, &oldProtect);
}
