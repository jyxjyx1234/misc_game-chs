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
DWORD callAddress;
DWORD returnAddress;
DWORD returnAddress2;
DWORD returnAddress3;
DWORD returnAddress4;

//DWORD STRLEN_ADDR = (DWORD)lstrlenA;

std::string enc = "SEMI";

//const int maxbuffersize = 0x1000000;
//std::string strBuffer[maxbuffersize] = {};
//int stridx = 0;


//std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
//    std::map<std::string, int> transMap;
//    std::string transData = CustomPack::getFile("SEMI_CHS.CPK", k, filename);
//    //printf("transdata:%s", transData.c_str());
//    size_t pos = 0;
//    size_t start = 0;
//    std::string delimiter = "[n]";
//    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
//        std::string line = transData.substr(start, pos - start);
//        size_t equalPos = line.find("[=]");
//        if (equalPos != std::wstring::npos) {
//            std::string key = replace_newline_tag(line.substr(0, equalPos));
//            std::string value = line.substr(equalPos + 3);
//			strBuffer[stridx] = value;
//            transMap[key] = stridx;
//            stridx++;
//        }
//        start = pos + delimiter.length();
//    }
//    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
//    return transMap;
//}


//void WriteTextToFile(char* text) {
//    std::ofstream file("output.txt", std::ios::app | std::ios::binary);
//    if (file.is_open()) {
//		file << "<msg>";
//        file.write(text, strlen(text));
//		file << "<msg;>";
//        file.close();
//    }
//}

//std::map<std::string, int> replacementMap;

void replace_text(hook_stack& s) {
	if ((WCHAR*)s.oesp_c == nullptr) {
		return;
	}
    std::wstring oriFileNamew = (WCHAR*)s.oesp_c;
	std::string oriFileName = WideStringToCPLPCSTR(oriFileNamew, 936);
    if (CustomPack::isInPack("haahaa_chs.CPK", oriFileName)) {
		std::string newFileData = CustomPack::getFile("haahaa_chs.CPK", enc, oriFileName);
        int fileSplitCount = *(int*)(s.peax + 0x14);
		for (int i = 0; i < fileSplitCount; i++) {
            int copysize = 0x4000;
			if (i == fileSplitCount - 1) {
				copysize = newFileData.length() - i * 0x4000;
			}
            std::cout << std::hex << ((DWORD******)(s.peax))[4][i][2][2][4] << std::endl;
			memcpy(((char******)(s.peax))[4][i][2][2][4], newFileData.c_str() + i * 0x4000, copysize);
		}
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

        jmp returnAddress
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
    //install_hook_textreplaceFromPackEx(1, "SEMI_CHS.CPK", "data2.bin", enc);
    //replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

	DWORD baseAddr = (DWORD)GetModuleHandleA(NULL);

    originalFuncAddr = baseAddr + 0x2812a8;
    returnAddress = originalFuncAddr + 5;
	callAddress = baseAddr + 0x27FD80;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //originalFuncAddr = 0x404d79;
    //returnAddress2 = originalFuncAddr + 6;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //originalFuncAddr = 0x40aaad;
    //returnAddress3 = originalFuncAddr + 6;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText3 - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //originalFuncAddr = 0x404AE1;
    //returnAddress4 = originalFuncAddr + 6;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText4 - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //originalFuncAddr = 0x00442A7F;
    //returnAddress2 = 0x442A8B;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(1, "data2.bin", enc);
    newFontName = L"黑体";
    
	//newCharset = 134;
    HeightScaleFactor = 110;
    installFontHook_main(1, 1, 1, 0);
}

