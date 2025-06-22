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

//DWORD STRLEN_ADDR = (DWORD)lstrlenA;

std::string enc = "MACHI";

const int maxbuffersize = 0x1000000;
std::wstring strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::wstring, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::wstring, int> transMap;
    std::wstring transData = (WCHAR*)(CustomPack::getFile("machi_CHS.CPK", k, filename).c_str());
    //printf("transdata:%s", transData.c_str());
    size_t pos = 0;
    size_t start = 0;
    std::wstring delimiter = L"[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::wstring line = transData.substr(start, pos - start);
        size_t equalPos = line.find(L"[=]");
        if (equalPos != std::wstring::npos) {
            std::wstring key = line.substr(0, equalPos);
            std::wstring value = line.substr(equalPos + 3);
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

std::map<std::wstring, int> replacementMap;

struct custom_wstring {
    int unk;
    WCHAR* text;
	int len;
};

void replace_text(hook_stack& s) {
    //return;
    custom_wstring oristr = *(custom_wstring*)(s.oesp_4);
	if (oristr.len == 0 || oristr.text == nullptr) {
		return;
	}
	std::wstring oris(oristr.text, oristr.len);
    auto it = replacementMap.find(oris);
	if (it != replacementMap.end()) {
        //std::cout << 3 << std::endl;
		//std::cout << "Replacing text: " << oritext << std::endl;
		int idx = it->second;
		int new_length = strBuffer[idx].length();
		wcscpy_s(oristr.text, new_length + 1, strBuffer[idx].c_str());
        //wcscpy_s(oristr2.text, new_length + 1, strBuffer[idx].c_str());
        ((custom_wstring*)(s.oesp_4))->len = new_length;
        //((custom_wstring*)(s.pesi))->len = new_length;
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

        push ebp
        mov ebp, esp
        push esi
        push edi

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
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

    originalFuncAddr = 0x00471F70;
    returnAddress = originalFuncAddr + 5;
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
    newFontName = L"宋体";
	//newCharset = 134;
    installFontHook_main(1, 1, 1, 0);
}

