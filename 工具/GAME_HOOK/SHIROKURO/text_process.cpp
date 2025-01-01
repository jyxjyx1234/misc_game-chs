#include <windows.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <map>
#include <codecvt>
#include <locale>
#include <vector>
#include "text_process.h"
#include "readconfig.h"
#include "convert.h"
#include <regex>

uint64_t originalFuncAddr;

extern "C" uint64_t returnAddress;
extern "C" uint64_t call_addr1;
extern "C" void _hook_replace_text();
uint64_t returnAddress;
uint64_t call_addr1;
WCHAR* fileBuffer;
BOOL fileFlag;
rr::RConfig config;
BOOL isRemoveTimeLimit = FALSE;
struct mono_string
{
    uint64_t pMonoOBJ;
    uint64_t unk1;
    DWORD length;
    wchar_t str[1];
};

extern "C" void get_file(uint64_t mono_strP) {
	mono_string* mono_str = (mono_string*)mono_strP;
	WCHAR filename[1024];
	memcpy(filename, mono_str->str, mono_str->length * 2);
	filename[mono_str->length] = 0;
	std::wcout << "filename: " << filename << std::endl;
	std::wstring filepath = std::wstring(L"trans\\") + filename;

	std::ifstream file(filepath, std::ios::binary | std::ios::ate);
	if (!file) {
		fileFlag = FALSE;
		return;
	}
	std::streamsize size = file.tellg();
	file.seekg(0, std::ios::beg);

	fileBuffer = new WCHAR[size / sizeof(WCHAR) + 1];
	if (file.read((char*)fileBuffer, size)) {
		fileBuffer[size / sizeof(WCHAR)] = 0;
		if (isRemoveTimeLimit) {
			std::wstring fileContent = fileBuffer;
			std::wregex selExRegex(L"selEx\(.*\)");
			fileContent = std::regex_replace(fileContent, selExRegex, L"sel(\"\",item)");
			delete[] fileBuffer;
			fileBuffer = new WCHAR[fileContent.length() + 1];
			memcpy(fileBuffer, fileContent.c_str(), fileContent.length() * 2);
			fileBuffer[fileContent.length()] = 0;
		}
		fileFlag = TRUE;
	} else {
		delete[] fileBuffer;
		fileBuffer = nullptr;
		fileFlag = FALSE;
	}
}

extern "C" void change_text(mono_string** mono_strPP) {
	mono_string* mono_str = *mono_strPP;
	if (fileFlag) {
		memcpy(mono_str->str, fileBuffer, wcslen(fileBuffer) * 2);
		mono_str->length = wcslen(fileBuffer);
		mono_str->str[mono_str->length] = 0;
	}
}

uint8_t trampolineCode[] = {
		0x50, // push rax
        0x48, 0xB8, // mov rax
        0, 0, 0, 0, 0, 0, 0, 0, // 跳转的地址，用memcpy改
        0xFF, 0xE0  // jmp rax
};

void InstallHook_replace_text()
{
	config.ReadConfig("hook.ini");
	if (config.ReadInt("UNITY", "REMOVE_TIME_LIMIT", 0) == 1) isRemoveTimeLimit = true;

	std::cout << "logger mode." << std::endl;
    DWORD oldProtect;
	uint64_t baseAddr = (uint64_t)GetModuleHandleA("GameAssembly.dll");
    std::cout << "baseAddr: " << std::hex << baseAddr << std::endl;
	if (config.ReadString("UNITY", "VERSION", "1.1") != "1.1") {
		originalFuncAddr = baseAddr + 0x462CE0;
		returnAddress = baseAddr + 0x462CED;
		call_addr1 = baseAddr + 0x5061E0;
	}
	else {
		originalFuncAddr = baseAddr + 0x462CE0;
		returnAddress = baseAddr + 0x462CED;
		call_addr1 = baseAddr + 0x506230;
	}

    VirtualProtect((LPVOID)originalFuncAddr, 13, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(uint64_t*)&trampolineCode[3] = (uint64_t)_hook_replace_text;
    memcpy((void *)originalFuncAddr, trampolineCode, sizeof(trampolineCode));
    VirtualProtect((LPVOID)originalFuncAddr, 13, oldProtect, &oldProtect);

    //MessageBoxA(NULL, "hook done!", NULL, NULL);
}
