#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>

int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD returnAddress2;
DWORD oriFunc;

std::string enc = "unmei";

//typedef int (WINAPI* pOriReadFile)(char* outBuffer, char* packageName, char* fileName);
//pOriReadFile OriReadFile = (pOriReadFile)0x446060;
//
//int CustomReadFile(char* outBuffer, char* packageName, char* fileName) {
//    auto res = OriReadFile(outBuffer, packageName, fileName);
//    std::string filePath = "trans\\" + std::string(fileName);
//    if (std::filesystem::exists(filePath)) {
//        std::ifstream file(filePath, std::ios::binary);
//        if (file) {
//            file.seekg(0, std::ios::end);
//            std::streamsize size = file.tellg();
//            file.seekg(0, std::ios::beg);
//            if (size > 0 && file.read(outBuffer, size)) {
//                for (int i = 0; i < size; i++) {
//                    *(BYTE*)(outBuffer + i) ^= enc[i % enc.size()];
//                }
//                res = size;
//            }
//        }
//    }
//	return res;
//}

std::string lower(std::string str) {
    for (int i = 0; i < strlen(str.c_str()); i++) {
        if (str[i] >= 'A' && str[i] <= 'Z') {
            str[i] += 32;
        }
    }
    return str;
}

std::map<std::string, std::string> fileBuffers;
void initFileBuffer() {
    std::string path = "trans";
    for (const auto& entry : std::filesystem::directory_iterator(path)) {
        if (entry.is_regular_file()) {
            std::ifstream file(entry.path(), std::ios::binary);
            if (file) {
                file.seekg(0, std::ios::end);
                std::streamsize size = file.tellg();
                file.seekg(0, std::ios::beg);
                std::vector<char> buffer(size);
                if (file.read(buffer.data(), size)) {
                    std::string fileName = entry.path().filename().string();
					for (int i = 0; i < size; i++) {
						buffer[i] ^= enc[i % enc.size()];
					}
                    fileBuffers[lower(fileName)] = std::string(buffer.begin(), buffer.end());
                }
            }
        }
    }
}

void CustomReadFile(char** outBuffer, char** fileName, char** packagename, int* eax) {
    //std::string filePath = "trans\\" + std::string(*fileName);
    //if (std::filesystem::exists(filePath)) {
    //    std::ifstream file(filePath, std::ios::binary);
    //    if (file) {
    //        file.seekg(0, std::ios::end);
    //        std::streamsize size = file.tellg();
    //        file.seekg(0, std::ios::beg);
    //        if (size > 0 && file.read(*outBuffer, size)) {
    //            for (int i = 0; i < size; i++) {
    //                *(BYTE*)(*outBuffer + i) ^= enc[i % enc.size()];
    //            }
				//*eax = size;
    //        }
    //    }
    //}
	std::string fn = *fileName;
	fn = lower(fn);
	auto it = fileBuffers.find(fn);
	if (it != fileBuffers.end()) {
		std::string fileContent = it->second;
		int size = fileContent.size();
		memcpy(*outBuffer, fileContent.c_str(), size);
		*eax = size;
	}
}

void __declspec(naked) replace_file() {
    __asm {
        call oriFunc
        pushad
        pushfd
        mov eax, esp

        add eax, 0x20
        push eax
        add eax, 0x08
        push eax
        sub eax, 0x04
        push eax
        push ecx
        call CustomReadFile
		add esp, 0x10
		popfd
		popad
		jmp returnAddress
    }
}

//void changecharset(int* func, int* charset) {
//	if (*charset == 932) {
//		if (*func == 0x4858B6 || *func == 0x4D1452 || *func == 0x44EA04 || *func == 0x4858B6) {
//			*charset = 936;
//		}
//	}
//}
//
//void __declspec(naked) change_charset() {
//    __asm {
//        pushad
//        pushfd
//
//        mov eax, esp
//        add eax, 0x24
//		push eax
//        add eax, 0x2c
//        push eax
//		call changecharset
//		add esp, 0x08
//
//        popfd
//        popad
//
//        call MultiByteToWideChar
//        jmp returnAddress2
//    }
//}

//void __declspec(naked) replace_file() {
//    __asm {
//        add esp, 0x0c
//		pop ecx
//        pop ebp
//
//        pushad
//        pushfd
//        mov eax, esp
//
//        add eax, 0x20
//        push eax
//        add eax, 0x0c
//        push eax
//        sub eax, 0x04
//        push eax
//        push ecx
//        call CustomReadFile
//		add esp, 0x10
//		popfd
//		popad
//		jmp returnAddress
//    }
//}


void InstallHook_replacetext()
{
	printf("InstallHook_replacetext\n");
	initFileBuffer();
    DWORD oldProtect;

    originalFuncAddr = 0x004C38DC;
    //originalFuncAddr = 0x004C2090;
	returnAddress = originalFuncAddr + retAddAddr;
    oriFunc = 0x4C2080;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)replace_file - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    //originalFuncAddr = 0x004F5108;
    //returnAddress2 = originalFuncAddr + retAddAddr + 1;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    //*(BYTE*)originalFuncAddr = 0xE9;
    //*(DWORD*)(originalFuncAddr + 1) = (DWORD)change_charset - originalFuncAddr - 5;
    //VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //DetourTransactionBegin();
    //DetourUpdateThread(GetCurrentThread());
    //DetourAttach(&(PVOID&)OriReadFile, CustomReadFile);
    //DetourTransactionCommit();

    install_hook_textreplaceEx(5, "trans\\data2.bin", enc);
    newFontName = L"Simsun";
	//newCharset = 134;
    installFontHook_main(1, 1, 1, 0);
}

