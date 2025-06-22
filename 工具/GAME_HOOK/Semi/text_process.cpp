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
DWORD returnAddress2;
DWORD returnAddress3;
DWORD returnAddress4;

DWORD STRLEN_ADDR = (DWORD)lstrlenA;

std::string enc = "SEMI";

const int maxbuffersize = 0x1000000;
std::string strBuffer[maxbuffersize] = {};
int stridx = 0;

std::string replace_newline_tag(std::string text) {
    text = std::regex_replace(text, std::regex("\r\n"), "");
    text = std::regex_replace(text, std::regex("^乽"), "");
    return text;
}

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;
    std::string transData = CustomPack::getFile("SEMI_CHS.CPK", k, filename);
    //printf("transdata:%s", transData.c_str());
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = replace_newline_tag(line.substr(0, equalPos));
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


//void WriteTextToFile(char* text) {
//    std::ofstream file("output.txt", std::ios::app | std::ios::binary);
//    if (file.is_open()) {
//		file << "<msg>";
//        file.write(text, strlen(text));
//		file << "<msg;>";
//        file.close();
//    }
//}

std::map<std::string, int> replacementMap;

void replace_text(hook_stack& s) {
    //return;
	if ((char*)s.oesp == nullptr)
		return;
	std::string oritext = (char*)s.oesp;
    auto it = replacementMap.find(replace_newline_tag(oritext));
	if (it != replacementMap.end()) {
        //std::cout << 3 << std::endl;
		//std::cout << "Replacing text: " << oritext << std::endl;
		int idx = it->second;
        int len = strBuffer[idx].length();
		memcpy((void*)s.oesp, strBuffer[idx].c_str(), len);
		((char*)s.oesp)[len] = '\0'; // Ensure null-termination
		std::cout << "Replaced text: " << strBuffer[idx] << std::endl;
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

        call STRLEN_ADDR
		jmp returnAddress
    }
}
void __declspec(naked) HookFunction_replaceText2()
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

        call STRLEN_ADDR
        jmp returnAddress2
    }
}
void __declspec(naked) HookFunction_replaceText3()
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

        call STRLEN_ADDR
        jmp returnAddress3
    }
}
void __declspec(naked) HookFunction_replaceText4()
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

        call STRLEN_ADDR
        jmp returnAddress4
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
    install_hook_textreplaceFromPackEx(1, "SEMI_CHS.CPK", "data2.bin", enc);
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

    originalFuncAddr = 0x404cdb;
    returnAddress = originalFuncAddr + 6;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x404d79;
    returnAddress2 = originalFuncAddr + 6;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x40aaad;
    returnAddress3 = originalFuncAddr + 6;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText3 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x404AE1;
    returnAddress4 = originalFuncAddr + 6;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText4 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //originalFuncAddr = 0x00442A7F;
    //returnAddress2 = 0x442A8B;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(1, "data2.bin", enc);
    //newFontName = L"SimSun";
	//newCharset = 134;
    //installFontHook_main(1, 1, 1, 0);
}

