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
#include "readconfig.h"

DWORD returnAddress1;
DWORD returnAddress2;
DWORD returnAddress3;

int ifconverttogbk = 0;

int countGBKCharacters(const char* str) {
    int count = 0;
    for (int i = 0; str[i] != '\0';) {
        // 如果是ASCII字符（0x00-0x7F），只占用一个字节
        if ((unsigned char)str[i] <= 0x7F) {
            i++;
        }
        else {
            // 否则，假定是GBK编码的中文字符，占用两个字节
            i += 2;
        }
        count++;
    }
    return count;
}

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

std::map<std::string, std::string> replacementMap = readKeyValuePairsFromFile("trans.dat");

void ChangeText(char* text)
{
    if (text == nullptr) return;
    if (text == "\n") return;
    std::string str(text);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        printf("%s\n", text);
        printf("Repalce sucess!\n");
        replacementMap[it->second] = it->second;
        strcpy_s(text, it->second.length() + 1, it->second.c_str());
    }
    else {
        if (strncmp(text, ANSIToANSI("好感度", 936, 932).c_str(), 6) == 0)  return;
        if (strncmp(text, ANSIToANSI("好感度", 936, 936).c_str(), 6) == 0)  return;
        if (strncmp(text, ANSIToANSI("回想\\", 936, 932).c_str(), 6) == 0)  return;
        if (strncmp(text, ANSIToANSI("達成率", 936, 932).c_str(), 6) == 0)  return;
        if (strncmp(text, ANSIToANSI(" ( ", 936, 932).c_str(), 6) == 0)  return;
        if (isalpha(static_cast<unsigned char>(*text))) return;
        if (isdigit(static_cast<unsigned char>(*text))) return;
        if (str.find(ANSIToANSI("　x", 936, 932).c_str()) != std::string::npos) return;
        if (str.find(ANSIToANSI("ロード", 936, 932).c_str()) != std::string::npos) return;
        if (str.find(ANSIToANSI("データ", 936, 932).c_str()) != std::string::npos) return;
        if (str.find(ANSIToANSI("を入手しました", 936, 932).c_str()) != std::string::npos) return;

        printf("%s\n", text);
        printf("Repalce Fail!\n");

        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            file << text << std::endl;
            file.close();
        }
        replacementMap[str] = str;
        if (ifconverttogbk == 1) {
            std::string gbk_text = ANSIToANSI(text, 932, 936);
            replacementMap[gbk_text] = gbk_text;
            strcpy_s(text, gbk_text.length() + 1, gbk_text.c_str());
        }
    }
}

void ChangeText_foropt(char* text)
{
    if (text == nullptr) return;
    if (text == "\n") return;
    if (strncmp(text, ANSIToANSI("達成率", 936, 932).c_str(), 6) == 0)  return;
    if (strncmp(text, ANSIToANSI("御門台", 936, 932).c_str(), 6) == 0)  return;
    //if (strncmp(text, ANSIToANSI("白", 936, 932).c_str(), 2) == 0)  return;
    //if (strncmp(text, ANSIToANSI("黒", 936, 932).c_str(), 2) == 0)  return;
    std::string str(text);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
        printf("%s\n", text);
        printf("Repalce sucess!\n");
        replacementMap[it->second] = it->second;
        strcpy_s(text, it->second.length() + 1, it->second.c_str());
    }
    else {
        if (strncmp(text, ANSIToANSI("好感度", 936, 932).c_str(), 6) == 0)  return;
        if (strncmp(text, ANSIToANSI("好感度", 936, 936).c_str(), 6) == 0)  return;
        if (strncmp(text, ANSIToANSI("回想\\", 936, 932).c_str(), 5) == 0)  return;
        if (strncmp(text, ANSIToANSI(" ( ", 936, 932).c_str(), 3) == 0)  return;
        if (isalpha(static_cast<unsigned char>(*text))) return;
        if (isdigit(static_cast<unsigned char>(*text))) return;
        if (str.find(ANSIToANSI("　x", 936, 932).c_str()) != std::string::npos) return;
        if (str.find(ANSIToANSI("ロード", 936, 932).c_str()) != std::string::npos) return;
        if (str.find(ANSIToANSI("データ", 936, 932).c_str()) != std::string::npos) return;
        if (str.find(ANSIToANSI("を入手しました", 936, 932).c_str()) != std::string::npos) return;

        printf("%s\n", text);
        printf("Repalce Fail!\n");
        replacementMap[str] = str;

        std::ofstream file("output.txt", std::ios::app);
        if (file.is_open())
        {
            file << text << std::endl;
            file.close();
        }
        if (ifconverttogbk == 1) {
            std::string gbk_text = ANSIToANSI(text, 932, 936);
            replacementMap[gbk_text] = gbk_text;
            strcpy_s(text, gbk_text.length() + 1, gbk_text.c_str());
        }
    }
}


void __declspec(naked) HookFunction_place_onlymessage()
{
    __asm
    {
        pushfd
        pushad

        mov eax,[esp + 0x24]
        push eax
        call ChangeText
        add esp,4

        popad
        popfd
        call dword ptr ds:[0x004D41B4]
        jmp dword ptr[returnAddress1]
    }
}


void __declspec(naked) HookFunction_place_name()
{
    __asm
    {
        pushfd
        pushad

        mov eax, [esp + 0x24]
        push eax
        call ChangeText
        add esp, 4

        popad
        popfd
        call dword ptr ds : [0x004D41B4]
        jmp dword ptr[returnAddress2]
    }
}

void __declspec(naked) HookFunction_place_opt()
{
    __asm
    {
        pushfd
        pushad

        mov eax, [esp + 0x24]
        push eax
        call ChangeText_foropt
        add esp, 4

        popad
        popfd
        call dword ptr ds : [0x004D41B4]
        jmp dword ptr[returnAddress3]
    }
}


void InstallHook_ifmessage()
{
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    ifconverttogbk = config.ReadInt("FONT", "CONVERTUNKNOWNTEXT", 0);
    DWORD oldProtect;

    DWORD originalFuncAddr = 0x00491b58;
    returnAddress1 = 0x491b5e;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_place_onlymessage - originalFuncAddr - 5;
    *(char*)(originalFuncAddr + 5) = (char)0x90;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

    originalFuncAddr = 0x490c66;
    returnAddress2 = 0x490c6c;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_place_name - originalFuncAddr - 5;
    *(char*)(originalFuncAddr + 5) = (char)0x90;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

    originalFuncAddr = 0x004901DA;
    returnAddress3 = 0x004901E0;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_place_opt - originalFuncAddr - 5;
    *(char*)(originalFuncAddr + 5) = (char)0x90;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);
}
