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

std::string enc = "HAPLOVE";

const int maxbuffersize = 0x1000000;
std::string strBuffer[maxbuffersize] = {};
int stridx = 0;

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;

    std::string transData = CustomPack::getFile("HAPLOVE_CHS.cpk", k, filename);
    printf("transdata:%s", transData.c_str());

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


struct f1 {
	char* text;
	int length;
};

void WriteTextToFile(f1* f1) {
    if (f1 == nullptr || f1->text == nullptr || f1->length <= 0) return;
    std::ofstream file("output.txt", std::ios::app | std::ios::binary);
    if (file.is_open()) {
		file << "<msg>";
        file.write(f1->text, f1->length);
		file << "<msg;>";
        file.close();
    }
}

void WriteNameToFile(const char* text)
{
    if (text == nullptr) return;
    std::ofstream file("output.txt", std::ios::app);
    std::string str(text);
    if (file.is_open())
    {
        file << "<name>" << str.c_str() << "<name;>";
        file.close();
    }
}

std::map<std::string, int> replacementMap;


void replace_text(f1* f1) {
	char* text = new char[f1->length + 1];
	memset(text, 0, f1->length + 1);
	memcpy(text, f1->text, f1->length);
	std::cout << text << std::endl;
	auto it = replacementMap.find(std::string(text, f1->length));
	if (it != replacementMap.end()) {
		memcpy(f1->text, strBuffer[it->second].c_str(), strBuffer[it->second].size());
		f1->length = strBuffer[it->second].size();
        f1->text[f1->length] = '\0';
		std::cout << "Replaced: " << text << std::endl;
	}
    else {
		WriteTextToFile(f1);
    }
	delete[] text;
}

void replace_text2(char* text) {
	auto it = replacementMap.find(text);
	std::cout << text << std::endl;
	if (it != replacementMap.end()) {
		strcpy_s(text, strlen(strBuffer[it->second].c_str()) + 1, strBuffer[it->second].c_str());
		std::cout << "Replaced: " << text << std::endl;
	}
    else {
        WriteNameToFile(text);
    }
}

void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {

        pushad
        pushfd

        mov eax, esp
		add eax, 0x24
        push eax
		call replace_text
		add esp, 0x04

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
        push eax
        call ebp
        pushad
        pushfd

        push eax
        call replace_text2
        add esp, 0x04

        popfd
        popad

        jmp returnAddress2
    }
}

void InstallHook_replacetext()
{
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    DWORD oldProtect;

    originalFuncAddr = 0x004421CF;
	retAddAddr = originalFuncAddr + 5;
    callAddress = 0x00448df0;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x00442A7F;
    returnAddress2 = 0x442A8B;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //install_hook_textreplaceEx(2, "data2.bin", enc);
    install_hook_textreplaceFromPackEx(2, "HAPLOVE_CHS.cpk", "data2.bin", enc);
    newFontName = L"SimSun";
	//newCharset = 134;
    installFontHook_main(1, 1, 1, 0);
}

