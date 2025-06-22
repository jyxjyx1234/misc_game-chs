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

std::string enc = "Ryokan";

const int maxbuffersize = 0x1000000;
std::string strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;
    std::string transData = CustomPack::getFile("Ryokan_CHS.CPK", k, filename);
    //printf("transdata:%s", transData.c_str());
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value = line.substr(equalPos + 3) + "\0";
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

BOOL isNeedRepair = false;
char* oriText = new char[0x1000];
char* oriPos;
int oriLen = 0;

void replace_text(hook_stack& s) {
    std::string oriText = (char*)s.oesp_4;
	auto it = replacementMap.find(oriText);
	if (it != replacementMap.end()) {
		std::string newText = strBuffer[it->second];
		newText += "\0"; 
        //s.peax = newText.length() + 1;
		memcpy((char*)s.oesp_4, newText.c_str(), newText.length() + 1);
	}
	else {
		//std::cout << "Text not found in replacement map: " << oriText << std::endl;
	}
}

void replace_text2(hook_stack& s) {
    std::string oriText = (char*)s.pesi;
    auto it = replacementMap.find(oriText);
    if (it != replacementMap.end()) {
        //std::string newText = strBuffer[it->second];
        //newText += "\0";
        //s.peax = newText.length() + 1;
		s.pesi = (DWORD)strBuffer[it->second].c_str();
		s.pecx = strBuffer[it->second].length() + 1;
    }
    else {
        //std::cout << "Text not found in replacement map: " << oriText << std::endl;
    }
}
//void replace_text2(char* text) {
//	auto it = replacementMap.find(text);
//	std::cout << text << std::endl;
//	if (it != replacementMap.end()) {
//		strcpy_s(text, strlen(strBuffer[it->second].c_str()) + 1, strBuffer[it->second].c_str());
//		std::cout << "Replaced: " << text << std::endl;
//	}
//    else {
//        WriteNameToFile(text);
//    }
//}

void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {
        call callAddress
        pushad
        pushfd

        push esp
        call replace_text
        add esp, 4

        popfd
        popad

		jmp retAddAddr
    }
}

void __declspec(naked) HookFunction_replaceText2()
{
    __asm
    {
        pushad
        pushfd

        push esp
        call replace_text2
        add esp, 0x04

        popfd
        popad

        shr ecx, 2
        rep movsd

        jmp returnAddress2
    }
}

void InstallHook_replacetext()
{
    install_hook_textreplaceFromPackEx(1, "Ryokan_CHS.CPK", "data2.bin", enc);
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

	//DWORD baseAddr = (DWORD)GetModuleHandleA("Vm60.dll");
    originalFuncAddr = 0x4275bc;
	retAddAddr = originalFuncAddr + 5;
    callAddress = 0x427e40;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x00042AB99;
    returnAddress2 = originalFuncAddr + 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(2, "data2.bin", enc);
    newFontName = L"SimSun";
	//newCharset = 134;
    installFontHook_main(1, 1, 1, 0);
}

