#include <winapi_def.h>
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
#include "detours.h"


DWORD originalFuncAddr;
DWORD returnAddress;

const int maxbuffersize = 1000000;

std::string* strBuffer[maxbuffersize] = {};
int stridx = 0;
std::string key = "VERMILION";

std::map<int, int> readKeyValuePairsFromFile(const std::string& filename, std::string enc) {
    std::ifstream file(filename, std::ios::binary);
    std::map<int, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }

    std::stringstream buffer;
    buffer << file.rdbuf();
    std::string transData = buffer.str();
    for (size_t i = 0; i < transData.size(); ++i) {
        transData[i] ^= enc[i % enc.size()];
    }
    std::stringstream ss(transData);
    int count;
    ss.read(reinterpret_cast<char*>(&count), sizeof(count));
    for (int i = 0; i < count; ++i) {
        int flag, size;
        ss.read(reinterpret_cast<char*>(&flag), sizeof(flag));
        ss.read(reinterpret_cast<char*>(&size), sizeof(size));
		char* transdata = new char[size];
		ss.read(transdata, size);
		strBuffer[stridx] = new std::string(transdata, size);
        transMap[flag] = stridx;
		stridx++;
    }
    return transMap;
}

std::map<int, int> replacementMap = readKeyValuePairsFromFile("data1.bin", key);

void ChangeText(WCHAR** textbuffer, DWORD* len, int offset) {
    auto it = replacementMap.find(offset);
    if (it != replacementMap.end()) {
        int transidx = it->second;
		*textbuffer = (WCHAR*)strBuffer[transidx]->c_str();
		*len = (strBuffer[transidx]->size());
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
        add esp, 8

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

        mov eax, ecx
        jmp dword ptr[returnAddress]
    }
}

pLoadLibraryW TrueLoadLibraryW = LoadLibraryW;
HMODULE WINAPI HookedLoadLibraryW(LPCWSTR lpLibFileName) {
    HMODULE hModule = TrueLoadLibraryW(lpLibFileName);
	//MessageBoxW(NULL, lpLibFileName, L"Hooked", MB_OK);
	std::wstring libFileName = lpLibFileName;
    if (libFileName == L"ole32.dll") {
		InstallHook_replacetext();
    }
    return hModule;
}

void InstallHook_replacetext() {
    DWORD oldProtect;
	DWORD baseAddr = (DWORD)GetModuleHandle(NULL);
    originalFuncAddr = baseAddr + 0x122d52;
    returnAddress = baseAddr + 0x122d5c;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext_LL() {
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourAttach(&(PVOID&)TrueLoadLibraryW, HookedLoadLibraryW);
	DetourTransactionCommit();
}