#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>

int mode;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;

std::string enc = "Nekura";

const int maxbuffersize = 0x2000000;
char* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();

    std::string transData = buffer.str();
    for (size_t i = 0; i < transData.size(); ++i) {
        transData[i] ^= k[i % k.size()];
    }
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value = line.substr(equalPos + 3);
            strBuffer[stridx] = new char[strlen(value.c_str()) + 4];
            memset(strBuffer[stridx], 0, strlen(value.c_str()) + 4);
            strcpy_s(strBuffer[stridx], strlen(value.c_str()) + 4, value.c_str());
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    file.close();
    return transMap;
}

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("Nekura_CHS.dat", enc);

void write2File(char* text) {
    //std::ofstream file("output.txt", std::ios::app);
    //if (file.is_open()) {
    //    file << "<line>" << text << "<endline>" << std::endl;
    //    file.close();
    //}
}

void write2File2(char* text) {
    //std::ofstream file("sptext.txt", std::ios::app);
    //if (file.is_open()) {
    //    file << "<line>" << text << "<endline>" << std::endl;
    //    file.close();
    //}
}


void replace_text(hook_stack& s) {
    int length = s.oesp_1c;
    char* text;
    if (length <= 0xf) {
        text = (char*)s.peax;
    }
    else {
        text = *(char**)s.peax;
    }
    if (!text) {
        write2File(text);
        return;
    }
    printf("text: %s\n", text);
    auto it = replacementMap.find(text);
    if (it != replacementMap.end()) {
        UINT new_length = strlen(strBuffer[it->second]);
        if (new_length > 0xf) {
            strBuffer[stridx] = new char[new_length + 4];
            memset(strBuffer[stridx], 0, new_length + 4);
            strcpy_s(strBuffer[stridx], new_length + 4, strBuffer[it->second]);
            *(char**)s.peax = strBuffer[stridx];
            s.oesp_1c = new_length;
            s.oesp_20 = new_length;
            stridx++;
        }
        else {
            strcpy_s((char*)s.peax, 0x10, strBuffer[it->second]);
            s.oesp_1c = new_length;
            s.oesp_20 = 0x0f;
        }
    }
    else {
        printf("Not Found: %s\n", text);
        write2File(text);
    }
}


void replace_text2(hook_stack& s) {
    int length = *((int*)s.peax + 0x4);
    char* text;
    if (length <= 0xf) {
        text = (char*)s.peax;
    }
    else {
        text = *(char**)s.peax;
    }
    if (!text) {
        //write2File2(text);
        return;
    }
    printf("text: %s\n", text);
    auto it = replacementMap.find(text);
    if (it != replacementMap.end()) {
        UINT new_length = strlen(strBuffer[it->second]);
        if (new_length > 0xf) {
            strBuffer[stridx] = new char[new_length + 4];
            memset(strBuffer[stridx], 0, new_length + 4);
            strcpy_s(strBuffer[stridx], new_length + 4, strBuffer[it->second]);
            *(char**)s.peax = strBuffer[stridx];
            *((int*)s.peax + 0x4) = new_length;
            *((int*)s.peax + 0x5) = new_length;
            stridx++;
        }
        else {
            strcpy_s((char*)s.peax, 0x10, strBuffer[it->second]);
            *((int*)s.peax + 0x4) = new_length;
            *((int*)s.peax + 0x5) = 0x0f;
        }
    }
    else {
        printf("Not Found: %s\n", text);
        write2File2(text);
    }
}

void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {
        call callAddress

        pushad
        pushfd

        push esp
        call replace_text
        add esp, 0x04

        popfd
        popad

        jmp retAddAddr
    }
}

void __declspec(naked) HookFunction_replaceText2()
{
    __asm
    {
        mov esp, ebp
        pop ebp

        pushad
        pushfd

        push esp
        call replace_text2
        add esp, 0x04

        popfd
        popad

        ret 4
    }
}

void InstallHook_replacetext()
{
    DWORD oldProtect;

    originalFuncAddr = 0x007DF927;
	retAddAddr = originalFuncAddr + 5;
    callAddress = 0x0043A130;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr = 0x005A7D03;
    returnAddress2 = originalFuncAddr + 5;
    //callAddress2 = 0x005a7cc0;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    newFontName = L"Microsoft YaHei UI";
    installFontHook_main(1, 1, 1, 1);
}

