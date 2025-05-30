#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;

std::string enc = "JII";

std::map<int, std::map<int, std::string>> fileMap;

std::map<int, std::string> readKeyValuePairsFromFile(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary);
    std::map<int, std::string> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();

    std::string transData = buffer.str();
    for (size_t i = 0; i < transData.size(); ++i) {
        transData[i] ^= enc[i % enc.size()];
    }
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value = line.substr(equalPos + 3);
			transMap[std::stoi(key)] = value;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    file.close();
    return transMap;
}

std::map<int, std::map<int, std::string>> readFiles() {
    std::string path = "trans";
    for (const auto& entry : std::filesystem::directory_iterator(path)) {
        if (entry.is_regular_file()) {
            std::string filename = entry.path().string();
            int fileIndex = std::stoi(entry.path().stem().string());
            fileMap[fileIndex] = readKeyValuePairsFromFile(filename);
        }
    }
}


struct scrinfo {
    int unk;
    int offset;
    int scr_start;
    int scr_size;
};


char oriscr[0x1000]; // 存储原本的脚本
int ori_start;
int trans_size;
int new_end; // 覆盖后的末尾
int isChanged = 0; // 判断是否处于脚本被修改的状态

void replace_text(scrinfo *info) {
    if (isChanged == 0) {
        //MessageBoxA(NULL, std::to_string(info->scr_size).c_str(), "Info", MB_OK);
        auto it = fileMap.find(info->scr_size);
        if (it != fileMap.end()) {
            auto transmap = it->second;
            auto it = transmap.find(info->offset);
            if (it != transmap.end()) {
                std::string trans = it->second;
                ori_start = info->offset;
                trans_size = strlen(trans.c_str());
                memcpy(oriscr, (char*)(info->scr_start + info->offset), trans_size);
                memcpy((char*)(info->scr_start + info->offset), trans.c_str(), trans_size);
                new_end = info->offset + trans_size;
                isChanged = info->scr_size;
            }
        }
    }
	else if (isChanged != 0 && isChanged == info->scr_size) {
        if (info->offset == new_end) {
            memcpy((char*)(info->scr_start + ori_start), oriscr, trans_size);
            info->offset = ori_start + strlen((char*)(info->scr_start + ori_start));
            isChanged = 0;
        }
    }
}

void replace_text2(int* len, int* len2, scrinfo* info) {
    auto it = fileMap.find(info->scr_size);
    if (it != fileMap.end()) {
        auto transmap = it->second;
        auto it = transmap.find(info->offset);
        if (it != transmap.end()) {
            std::string trans = it->second;
            ori_start = info->offset;
            trans_size = strlen(trans.c_str());
            *len = trans_size + 1;
            *len2 = trans_size + 1;
            memcpy(oriscr, (char*)(info->scr_start + info->offset), trans_size + 1);
            memcpy((char*)(info->scr_start + info->offset), trans.c_str(), trans_size);
            *(byte*)(info->scr_start + info->offset + trans_size) = '\0';
            new_end = info->offset + trans_size;
            isChanged = info->scr_size;
        }
    }
}

void recover_text(scrinfo* info) {
    if (isChanged != 0 && isChanged == info->scr_size) {
        memcpy((char*)(info->scr_start + ori_start), oriscr, trans_size + 1);
        info->offset = ori_start + strlen((char*)(info->scr_start + ori_start));
        isChanged = 0;
    }
}

void __declspec(naked) HookFunction_replace()
{
    __asm
    {
        pushad
        pushfd

        push ecx
        call replace_text
        add esp, 4

        popfd
        popad

        call callAddress
     
        jmp dword ptr[returnAddress]
    }
}


void __declspec(naked) HookFunction_replace2()
{
    __asm
    {
        pushad
        pushfd

        push ecx
        mov ecx, esp
        add ecx, 0x20 + 0x04
        push ecx
        add ecx, 0x04 + 0x04
        push ecx
        call replace_text2
        add esp, 12

        popfd
        popad

        call callAddress2

        pushad
        pushfd

        push esi
		call recover_text
        add esp, 4

        popfd
        popad

        jmp dword ptr[returnAddress2]
    }
}


void InstallHook_replacetext()
{
	readFiles();
    DWORD oldProtect;

    //originalFuncAddr = 0x00406983;//pkg
    originalFuncAddr = 0x004064EC;
	returnAddress = originalFuncAddr + 5;
    //callAddress = 0x436E30;//pkg
    callAddress = 0x4380b0;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replace - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    //originalFuncAddr = 0x00436EA5;//pkg
    originalFuncAddr = 0x00438125;
    returnAddress2 = originalFuncAddr + 5;
    //callAddress2 = 0x436EC0;//pkg
    callAddress2 = 0x00438140;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replace2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    install_hook_textreplaceEx(3, "data.bin", enc);
    newFontName = L"SimSun";
    installFontHook_main(1, 1, 1, 0);
}
