#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>
#include "CHS_PACK_LIB.h"

int mode = 1;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;

std::string enc = "MIKA";

const int maxbuffersize = 0x1000000;
std::string strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;
    std::string transData = CustomPack::getFile("MIKA_CHS.CPK", k, filename);
    //printf("transdata:%s", transData.c_str());
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value = line.substr(equalPos + 3);
			strBuffer[stridx] = value;
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    return transMap;
}


void WriteTextToFile(char* text) {
    std::ofstream file("output.txt", std::ios::app | std::ios::binary);
    if (file.is_open()) {
		file << "<msg>";
        file.write(text, strlen(text));
		file << "<msg;>";
        file.close();
    }
}

std::map<std::string, int> replacementMap;

void replace_text(hook_stack& s) {
    //return;
    int len = s.pedx;
    if (len == 0) return;
    //std::cout << std::hex << s.oesp_4 << std::endl;
    std::string oritext((char*)s.oesp_4, len);
    //std::cout << std::hex << oritext << std::endl;
    if (oritext == "\0") return;
	auto it = replacementMap.find(oritext);
	if (it != replacementMap.end()) {
        //std::cout << 3 << std::endl;
		//std::cout << "Replacing text: " << oritext << std::endl;
		int idx = it->second;
		memcpy((void*)s.oesp_4, strBuffer[idx].c_str(), strBuffer[idx].length());
	}
	else {
		//WriteTextToFile((char*)oritext.c_str());
	}
}

void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {
        pushad
        pushfd

        push esp
		call replace_text
		add esp, 0x04

        popfd
        popad

		ret 8
    }
}

//void __declspec(naked) HookFunction_replaceText2()
//{
//    __asm
//    {
//        push eax
//        call ebp
//        pushad
//        pushfd
//
//        push eax
//        call replace_text2
//        add esp, 0x04
//
//        popfd
//        popad
//
//        jmp returnAddress2
//    }
//}

void InstallHook_replacetext()
{
    install_hook_textreplaceFromPackEx(1, "MIKA_CHS.CPK", "data2.bin", enc);
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

    originalFuncAddr = 0x4685b7;
	//retAddAddr = originalFuncAddr + 6;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //originalFuncAddr = 0x00442A7F;
    //returnAddress2 = 0x442A8B;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(1, "data2.bin", enc);
    newFontName = L"SimSun";
	//newCharset = 134;
    installFontHook_main(1, 1, 1, 0);
}

