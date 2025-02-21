#include <winapi_def.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <map>
#include "text_process.h"
#include "convert.h"
#include "detours.h"
#include "textReplacer.h"
#include "regex"


DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD callAddress2;

const int maxbuffersize = 1000000;

char* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::string remove_8140(const std::string& str) {
    std::regex fullWidthSpaceRegex("\x81\x40"); 
    return std::regex_replace(str, fullWidthSpaceRegex, "");
}

std::string remove_8141(const std::string& str) {
    std::regex Regex("\x81\x41");
    return std::regex_replace(str, Regex, "");
}

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
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = remove_8141(remove_8140(line.substr(0, equalPos)));
            if (stridx < 100) {
				printf("%s\n", key.c_str());
            }
            std::string value = line.substr(equalPos + 3);
            strBuffer[stridx] = new char[strlen(value.c_str()) + 4];
            memset(strBuffer[stridx], 0, strlen(value.c_str()) + 4);
            strcpy_s(strBuffer[stridx], strlen(value.c_str()) + 4, value.c_str());
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
	printf("stridx: %d\n", stridx);
    return transMap;
}

std::map<std::string, int> replacementMap;

DWORD truePtrPos = 0x00000000;
BOOL isChangePtr = FALSE;

void ChangeText(char** text) {
	if (*text == nullptr) {
		return;
	}
    auto it = replacementMap.find(remove_8141(remove_8140(*text)));
    if (it != replacementMap.end()) {
		printf("MATCH: %s\n", *text);
        int oriLen = strlen(*text);
        truePtrPos = (DWORD)*text + oriLen + 1;
        isChangePtr = TRUE;
        int num_of_8140 = 0;
        for (int i = 0; i < oriLen; i++) {
            if ((*text)[i] == '\x81' && (*text)[i + 1] == '\x40') {
                num_of_8140++;
                i++;
            }
            else break;
        }
        int transidx = it->second;
        std::string trans = remove_8140(strBuffer[transidx]);
        if (num_of_8140) {
            for (int i = 0; i < num_of_8140; i++) {
                trans = "\x81\x40" + trans;
            }
            strBuffer[transidx] = new char[trans.size() + 1];
            strcpy_s(strBuffer[transidx], trans.size() + 1, trans.c_str());
        }
		*text = strBuffer[transidx];
        return;
    }
    else {
		printf("Not found: %s\n", *text);
        return;
    }
}


void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
		pushad
        pushfd

        mov eax, esp
        add eax, 0x24
		push eax
		call ChangeText
		add esp, 4

		popfd
		popad

        call callAddress

		test isChangePtr, 1
		jz jmpReturn
		mov eax, truePtrPos
        mov isChangePtr, 0
        jmp returnAddress

	jmpReturn :
		jmp returnAddress
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
    __asm
    {
        pushad
        pushfd

        mov eax, esp
        add eax, 0x24
        push eax
        call ChangeText
        add esp, 4

        popfd
        popad

        call callAddress2

        test isChangePtr, 1
        jz jmpReturn
        mov eax, truePtrPos
        mov isChangePtr, 0
        jmp returnAddress2

        jmpReturn :
        jmp returnAddress2
    }
}

void InstallHook_replacetext() {
	replacementMap = readKeyValuePairsFromFile("data1.bin");
    DWORD oldProtect;
	DWORD baseAddr = (DWORD)GetModuleHandle(NULL);
    originalFuncAddr = 0x4290d0;
    returnAddress = 0x4290d5;
	callAddress = 0x429870;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr = 0x0042912A;
    returnAddress2 = 0x0042912F;
    callAddress2 = 0x4294c0;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    // 写入跳转指令
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr - 5;
    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    charReplaceMap = readReplaceMap("data2.bin", "\0");
    DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
    DetourTransactionCommit();
}
