#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>

int mode;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD callAddress2;
DWORD originalFuncAddr3;
DWORD returnAddress3;
DWORD callAddress3;
DWORD originalFuncAddr4;
DWORD returnAddress4;
DWORD callAddress4;

int stridx = 0;
int fileLen = 0;
std::vector<std::string> filenameList;
std::string enc = "NECO";

std::map<std::string, int> offsetMap;

BOOL readFilenamesFromFile() {
    std::ifstream file("filelist.txt");
    if (!file.is_open()) {
        std::cerr << "Failed to open filelist.txt" << std::endl;
        return false;
    }
    std::string line;
    while (std::getline(file, line)) {
        filenameList.push_back(line);
    }
    file.close();
	return true;
}

void setFileName(char** filename) {
	if (stridx < filenameList.size()) {
		strcpy_s(*filename, filenameList[stridx].size() + 1, filenameList[stridx].c_str());
	}
    else {
		MessageBoxA(NULL, "DONE!", "Info", MB_OK);
        exit(0);
    }
}

void dump_text() {
	if (!std::filesystem::exists("dump")) std::filesystem::create_directory("dump");
    std::string filename = "dump\\" + filenameList[stridx++] + ".txt";
    std::ofstream file(filename, std::ios::ate|std::ios::out|std::ios::binary);
    if (!file.is_open()) {
        std::cerr << "Failed to open dump.txt" << std::endl;
        return;
    }
    file.write((char*)0x71dd40, fileLen);
    file.close();
}


void replace_file(char** filename) {
	offsetMap = {};
	std::filesystem::path fn = *filename;
    std::filesystem::path transdir = "trans";
	std::ifstream file(transdir / fn, std::ios::in | std::ios::binary);
	if (!file.is_open()) {
		return;
	}
	std::string content((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
	for (size_t i = 0; i < content.size(); ++i) {
		content[i] ^= enc[i % enc.size()];
	}
	file.close();

    std::string ptr_name;
	int ptr_offset;
	for (size_t i = 0; i < content.size(); ++i) {
		if (content[i] == '$') {
			ptr_offset = i;
			i++;
            while (content[i] != '\x0a' && content[i] != '\x0d' && i < content.size())
            {
                ptr_name += content[i];
				i++;
            }
			ptr_name += '\0';
			offsetMap[ptr_name] = ptr_offset;
			printf("Add Map: file：%s, offset: %d, name: %s\n", *filename, ptr_offset, ptr_name.c_str());
			ptr_name = "";
		}
	}
	memcpy((char*)0x71dd40, content.c_str(), content.size());
}

void replace_offset(char** key, int orioffset, int* offset) {
	printf("call key: %s\n", *key);
	std::string keystr = *key;
	keystr += '\0';

	auto it = offsetMap.find(keystr);
	if (it != offsetMap.end()) {
		printf("new offset: %d\n", it->second);
		*offset = it->second;
	}
    else {
        std::cout << "not found key: " << keystr << std::endl << " len: " << keystr.size();
        std::cout << std::endl;
        for (const auto& pair : offsetMap) {
			std::cout << pair.first << " len:" << pair.first.size() << std::endl;
        }
        *offset = orioffset;
    }
}

void __declspec(naked) HookFunction_dump_setFileName()
{
    __asm
    {
        pushad
        pushfd

        mov eax, esp
		add eax, 0x24 + 0x04
        push eax
		call setFileName
		add esp, 4

        popfd
        popad

        sub esp, 0x188
     
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_dump_getFileLen()
{
    __asm
    {
        mov fileLen, ecx
        mov esi, 0xA1B880
        jmp dword ptr[returnAddress2]
    }
}


void __declspec(naked) HookFunction_dump_saveFile()
{
    __asm
    {
        pushad
        pushfd
        
		call dump_text

		popfd
		popad
		jmp dword ptr[returnAddress3]
    }
}

void __declspec(naked) HookFunction_replace_replaceFile()
{
    __asm
    {
        pushad
        pushfd

        mov eax, esp
        add eax, 0x24 + 0x04
		push eax
        call replace_file
        add esp, 4

        popfd
        popad

        ret
    }
}


void __declspec(naked) HookFunction_replace_replaceOffset()
{
    __asm
    {
        pushad
        pushfd

        push eax
        push edx
        mov eax, esp
		add eax, 0x24 + 0x08 + 0x04
		push eax
		call replace_offset
		add esp, 0x0c

        popfd
        popad

        mov eax, 1

        ret
    }
}

void InstallHook_replacetext()
{
    DWORD oldProtect;
	if (readFilenamesFromFile()) {
        originalFuncAddr = 0x00413C20;
		returnAddress = originalFuncAddr + 6;
        VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
        *(BYTE*)originalFuncAddr = 0xE9;
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dump_setFileName - originalFuncAddr - 5;
        VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

        originalFuncAddr = 0x00413CB8;
        returnAddress2 = originalFuncAddr + 5;
        VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
        *(BYTE*)originalFuncAddr = 0xE9;
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dump_getFileLen - originalFuncAddr - 5;
        VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


        originalFuncAddr = 0x00413E09;
        returnAddress3 = 0x00413C20;
        VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
        *(BYTE*)originalFuncAddr = 0xE9;
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dump_saveFile - originalFuncAddr - 5;
        VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
        return;
	}

    originalFuncAddr = 0x00413E09;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replace_replaceFile - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr = 0x0041413F;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replace_replaceOffset - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    install_hook_textreplaceEx(2, "trans\\data.bin", enc);
    newFontName = L"SimSun";
    installFontHook_main(1, 1, 1, 0);
}

