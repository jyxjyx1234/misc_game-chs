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

char app[ 1024 ] = { 0 };
std::string a(GetAppPath(app, sizeof(app)));

void removeWideCharacter(std::string& str, const std::string& wideChar) {
    // 寻找全角字符，并一一删除
    size_t pos = 0;
    while ( ( pos = str.find(wideChar, pos) ) != std::string::npos ) {
        str.erase(pos, wideChar.length());
    }
}

std::map<std::string, std::string> readKeyValuePairsFromFile(const std::string& filename) {
    std::map<std::string, std::string> result;
    std::ifstream file(a + "\\" + filename);
    std::string line;
    while ( std::getline(file, line) ) {
        std::istringstream iss(line);
        std::string key, value;

        if ( std::getline(iss, key, '=') && std::getline(iss, value) ) {
            // 去除可能存在的首尾空格
            key.erase(0, key.find_first_not_of(" \t"));
            key.erase(key.find_last_not_of(" \t") + 1);
            value.erase(0, value.find_first_not_of(" \t"));
            value.erase(value.find_last_not_of(" \t") + 1);

            result[ key ] = value;
        }
    }
    printf("Read %d trans!\n", result.size());
    file.close();
    return result;
}

void WriteToFile(const char* text)
{
    if ( text == nullptr ) return;
    std::ofstream file("output.txt", std::ios::app);
    if ( file.is_open() )
    {
        file << text << std::endl;
        file.close();
    }
}

std::map<std::string, std::string> replacementMap;



void ChangeText(int* lengthPtr, char** textPtr)
{
    std::string originalText(*textPtr, *lengthPtr);

    removeWideCharacter(originalText, ANSIToANSI("　", 936, 932));
    printf("%s\n", ANSIToANSI(originalText.c_str(),932,936).c_str());

    auto it = replacementMap.find(originalText);
    if ( it != replacementMap.end() ) {
        const std::string& newText = it->second;
        char* newMemory = new char[ newText.size() + 1 ];
        memcpy(newMemory, newText.data(), newText.size() + 1);
        *textPtr = newMemory;
        *lengthPtr = newText.size();
    }
    else printf("NOT FOUND!\n\n");
}

void __declspec( naked ) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        mov eax, esp
        add eax, 0x28
        push eax//文本指针的指针
        add eax, 4
        push eax//长度的指针
        call ChangeText
        add esp, 8

        popfd
        popad

        call dword ptr ds : [ecx + 0x8C]

        jmp dword ptr[ returnAddress ]
    }
}

void InstallHook_replacetext() {

    replacementMap = readKeyValuePairsFromFile("trans.dat");

    DWORD oldProtect;

    DWORD baseAddress = ( DWORD ) GetModuleHandle(L"Text Asset.x32");
 
    originalFuncAddr = baseAddress + 0x8688;
    returnAddress = baseAddress + 0x868e;

    // 修改内存保护
    VirtualProtect(( LPVOID ) originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *( BYTE* ) originalFuncAddr = 0xE9;  // JMP
    *( DWORD* ) ( originalFuncAddr + 1 ) = ( DWORD ) HookFunction_replacetext - originalFuncAddr - 5;

    // 恢复内存保护
    VirtualProtect(( LPVOID ) originalFuncAddr, 5, oldProtect, &oldProtect);
}