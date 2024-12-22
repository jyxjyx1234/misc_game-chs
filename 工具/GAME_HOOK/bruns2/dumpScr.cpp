#include <windows.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <map>
#include <codecvt>
#include <locale>
#include <vector>
#include "dumpScr.h"
#include "readconfig.h"
#include "convert.h"
#include<list>
#define _CRT_SECURE_NO_WARNINGS

int oriOffset;
int returnOffset;
int callOffset;
std::string filenameBuffer;
BOOL isChangeScr = true;
std::string newFile;
int idx = 0;
std::list <LPCSTR> files{ "brs000100.bso", "brs000000.bso","brs000101.bso", "brs000900.bso", "brs000999.bso", "brs001000.bso", "brs009000.bso", "brs009001.bso", "brs009002.bso", "brs009003.bso", "brs009004.bso", "brs009005.bso", "brs009006.bso", "brs009007.bso", "brs009008.bso", "brs009009.bso", "brs009010.bso", "brs009011.bso", "brs009012.bso", "brs009013.bso", "brs009014.bso", "brs009015.bso", "brs009016.bso", "brs009017.bso", "brs009018.bso", "brs009019.bso", "brs009020.bso", "brs009021.bso", "brs009023.bso", "brs009025.bso", "brs009999.bso" };

void WriteToFile(const void* buffer, size_t size)
{
    std::string outPath = filenameBuffer + ".dec" + std::to_string(idx++);
    printf("write to %s\n", outPath.c_str()); 
    FILE* file = fopen(outPath.c_str(), "wb");
    if (file != nullptr) {
        fwrite(buffer, 1, size, file);
        fclose(file);
    }
}

std::string getFileName() {
    if (files.size() == 0) {
        MessageBoxA(NULL, "FINISH", NULL, NULL);
        exit(0);
    }
    std::string res(files.front());
    res = "scene/" + res;
    files.pop_front();
    return res;
}


void ChangeFilename(WCHAR* text)
{
    //MessageBox(NULL, NULL, NULL, NULL);
    filenameBuffer = getFileName();
    printf("change read file from %ls to %s\n", text, filenameBuffer.c_str());
    std::wstring wfilename_ = StringToWString(filenameBuffer);
    wcscpy_s(text, 20, wfilename_.c_str());
}

void GetNowFilename(WCHAR* text)
{
    //MessageBox(NULL, NULL, NULL, NULL);
    filenameBuffer = WideStringToGBKLPCSTR(text);
}


void getNewFile(const WCHAR* filename) {
    std::wstring newFilename(L".dec");
    newFilename = filename + newFilename;
    printf("Try to read %ls\n", newFilename.c_str());
    std::ifstream file(newFilename, std::ios::binary | std::ios::ate);
    if (!file.is_open()) {
        printf("not process %ls\n", filename);
        isChangeScr = false;
        return;
    }
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);
    char* buffer = new char[size];
    file.read(buffer, size);
    //buffer[size] = '\0';
    file.close();
    newFile = buffer;
    isChangeScr = true;
}


void ChangeFile(char** start, char** end1, char** end2, const WCHAR* filename)
{
    std::wstring newFilename(L".dec");
    newFilename = filename + newFilename;
    printf("Try to read %ls\n", newFilename.c_str());
    std::ifstream file(newFilename, std::ios::binary | std::ios::ate);
    if (!file.is_open()) {
        printf("not process %ls\n", filename);
        return;
    }
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);
    char* buffer = new char[size];
    file.read(buffer, size);
    std::cout << buffer;
    //MessageBoxA(NULL, "", NULL, NULL);
    memcpy(*start, buffer, size);
    *end1 = *start + size;
    *end2 = *start + size;
}

void __declspec(naked) HookFunction_dumpScr() {
    __asm
    {
        pushfd
        pushad

        mov eax, [esp + 0x6c]
        push eax
        call ChangeFilename
        
        add esp, 4
        popad
        popfd

        call callOffset
        sub esp, 0x10

        pushfd
        pushad

        mov eax, [esp + 0x5c]
        mov ebx, [esp + 0x60]
        sub ebx, eax
        push ebx
        push eax
        call WriteToFile
        add esp, 8  // 清理栈

        popad
        popfd

        jmp dword ptr[oriOffset]
    }
}

void __declspec(naked) HookFunction_debug() {
    __asm
    {
        pushfd
        pushad

        mov eax, [esp + 0x6c]
        push eax
        call GetNowFilename

        add esp, 4
        popad
        popfd

        call callOffset

        pushfd
        pushad

        mov eax, [esp + 0x4c]
        mov ebx, [esp + 0x50]
        sub ebx, eax
        push ebx
        push eax
        call WriteToFile
        add esp, 8  // 清理栈

        popad
        popfd

        jmp dword ptr[returnOffset]
    }
}

void __declspec(naked) HookFunction_changeScr() {
    __asm
    {
        call callOffset

        pushfd
        pushad

        lea eax, [esp + 0x4c]  // 获取esp + 0x4c的地址
        lea ebx, [esp + 0x50]  // 获取esp + 0x50的地址
        lea ecx, [esp + 0x54]  // 获取esp + 0x50的地址
        mov edx, [esp + 0x5c]  // 文件名
        push edx
        push ecx
        push ebx
        push eax
        call ChangeFile
        add esp, 0x10  // 清理栈

        popad
        popfd

        jmp dword ptr[returnOffset]
    }
}


void InstallHook_dumpScr()
{
    DWORD oldProtect;

    rr::RConfig config;
    config.ReadConfig("hook.ini");

    oriOffset = 0x44e311;
    returnOffset = 0x44e316;
    callOffset = 0x436290;

    // 修改内存保护
    VirtualProtect((LPVOID)oriOffset, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    if (config.ReadInt("DUMP", "MODE", 0) == 1) {
        *(BYTE*)oriOffset = 0xE9;  // JMP
        *(DWORD*)(oriOffset + 1) = (DWORD)HookFunction_dumpScr - oriOffset - 5;
    }

    if (config.ReadInt("DUMP", "MODE", 0) == 2) {
        *(BYTE*)oriOffset = 0xE9;  // JMP
        *(DWORD*)(oriOffset + 1) = (DWORD)HookFunction_changeScr - oriOffset - 5;
    }
    if (config.ReadInt("DUMP", "MODE", 0) == 3) {
        *(BYTE*)oriOffset = 0xE9;  // JMP
        *(DWORD*)(oriOffset + 1) = (DWORD)HookFunction_debug - oriOffset - 5;
    }

    // 恢复内存保护
    VirtualProtect((LPVOID)oriOffset, 5, oldProtect, &oldProtect);

}
