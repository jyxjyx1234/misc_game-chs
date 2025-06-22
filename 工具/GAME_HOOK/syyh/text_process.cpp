#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>
#include "CHS_PACK_LIB.h"
# pragma comment(lib, "CHS_PACK_LIB.lib")
# pragma comment(lib, "zlib.lib")

int mode = 1;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;

std::string enc = "syyh";

const int maxbuffersize = 0x1000000;
std::string strBuffer[maxbuffersize] = {};
int stridx = 0;
std::string strBuffer2[0x10000] = {};
int stridx2 = 0;
struct syyh_str {
    int unk;
    int len;
    char content[0x200];
};

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;
    std::string transData = CustomPack::getFile("syyh_chs.CPK", k, filename);
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
            int len = value.length();
			syyh_str strData;
            strData.unk = 3;
            strData.len = len;
			memset(strData.content, 0, sizeof(strData.content));
            memcpy(strData.content, value.c_str(), len);
			//strcpy_s(strData.content, len, value.c_str());
            value = std::string((char*)&strData, len + 2 + 8);
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
    int oriLen = *((int*)(s.peax) - 1);
    std::string oriText = std::string((char*)s.peax, oriLen);
    std::cout << oriLen << std::endl;
	auto it = replacementMap.find(oriText);
	if (it != replacementMap.end()) {
        strBuffer2[stridx2] = strBuffer[it->second];
        strBuffer2[stridx2][0] = *((char*)(s.peax - 8));
		*(char**)(s.pebx + 0x10) = (char*)(strBuffer2[stridx2].c_str()) + 8;
        s.peax = (DWORD)(strBuffer2[stridx2].c_str()) + 8;
        stridx2++;
        if (stridx2 > 0xffff) {
            stridx2 = 0;
        }
  //      std::cout << std::hex << (DWORD)((char*)(newText.c_str()) + 8) <<std::endl;
  //      std::cout << std::hex << s.pebx + 0x10 << std::endl;
		//memcpy((void*)(s.peax-4), strBuffer[it->second].c_str() + 4, strBuffer[it->second].length()-4);
		//std::cout << "Replaced text: " << oriText << " with " << (char*)(newText.c_str()) + 8 << std::endl;
	}
	else {
		//std::cout << "Text not found in replacement map: " << oriText << std::endl;
	}
}

void replace_text2(hook_stack& s) {
    int oriLen = *((int*)(s.peax) - 1);
    std::string oriText = std::string((char*)s.peax, oriLen);
    std::cout << oriLen << std::endl;
    auto it = replacementMap.find(oriText);
    if (it != replacementMap.end()) {
        strBuffer2[stridx2] = strBuffer[it->second];
        strBuffer2[stridx2][0] = *((char*)(s.peax - 8));
        *(char**)(s.pebp - 0X24) = (char*)(strBuffer2[stridx2].c_str()) + 8;
        s.peax = (DWORD)(strBuffer2[stridx2].c_str()) + 8;
        stridx2++;
        if (stridx2 > 0xffff) {
            stridx2 = 0;
        }
        //std::cout << std::hex << (DWORD)((char*)(newText.c_str()) + 8) <<std::endl;
        //std::cout << std::hex << s.pebx + 0x10 << std::endl;
        //memcpy((void*)(s.peax - 4), strBuffer[it->second].c_str() + 4, strBuffer[it->second].length() - 4);
        //std::cout << "Replaced text: " << oriText << " with " << (char*)(newText.c_str()) + 8 << std::endl;
    }
    else {
        //std::cout << "Text not found in replacement map: " << oriText << std::endl;
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
        add esp, 4

        popfd
        popad

        call callAddress
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
        add esp, 4

        popfd
        popad

        call callAddress
        jmp returnAddress2
    }
}

void InstallHook_replacetext()
{
    install_hook_textreplaceFromPackEx(2, "syyh_chs.CPK", "data2.bin", enc);
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

	DWORD baseAddr = (DWORD)GetModuleHandleA(NULL);
    originalFuncAddr = baseAddr + 0x00FDCA6;
	retAddAddr = originalFuncAddr + 5;
    callAddress = baseAddr + 0x5eeac;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = baseAddr + 0x00FE0C4;
	//originalFuncAddr = baseAddr + 0x00Fe108;
    returnAddress2 = originalFuncAddr + 5;
    //callAddress2 = baseAddr + 0x5f4b4;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(2, "data2.bin", enc);
    newFontName = L"SimSun";
    installFontHook_main(1, 1, 1, 0);
}

