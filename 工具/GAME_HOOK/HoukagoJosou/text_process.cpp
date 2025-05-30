#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>
#include "CHS_PACK_LIB.h"

int mode;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

std::string enc = "HoukagoJosou";

const int maxbuffersize = 0x1000000;
char* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;
    std::string transData = CustomPack::getFile("NETIDOL_CHS.CPK", k, filename);
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
    return transMap;
}

std::map<std::string, int> replacementMap;

void replace_text(char* text) {
	auto it = replacementMap.find(text);
	std::cout << text << std::endl;
	if (it != replacementMap.end()) {
		strcpy_s(text, strlen(strBuffer[it->second]) + 1, strBuffer[it->second]);
		std::cout << "Replaced: " << text << std::endl;
	}
}

void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {
        call callAddress

        pushad
        pushfd

        push eax
		call replace_text
		add esp, 0x04

        popfd
        popad

		jmp retAddAddr
    }
}

void InstallHook_replacetext()
{
    install_hook_textreplaceFromPackEx(2, "NETIDOL_CHS.CPK", "data2.bin", enc);
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);

    DWORD oldProtect;

    originalFuncAddr = 0x0040EBB7;
	retAddAddr = originalFuncAddr + 5;
    callAddress = 0x00440690;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(2, "data2.bin", enc);
    newFontName = L"SimSun";
    installFontHook_main(1, 1, 1, 0);
}

