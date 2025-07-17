#include "textReplacer.h"
#include <filesystem>
#include <iostream>
#include "HookTitle.h"
#include "text_process.h"
#include "CHS_PACK_LIB.h"

DWORD originalFuncAddr;
DWORD callAddress;
DWORD returnAddress;
DWORD returnAddress2;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

std::string strBuffer[maxbuffersize] = {};

std::string enc = "POCHI";

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::map<std::string, int> transMap;
    std::string transData = CustomPack::getFile("EXHIBIT_CHS.CPK", k, filename);
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
            strBuffer[stridx] = value;
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    return transMap;
}

void replace_text(char** text1, char** text2) {//普通文本
	if (*text1 != nullptr) {
        auto it = replacementMap.find(std::string(*text1));
	    if (it != replacementMap.end()) {
		    int idx = it->second;
		    strcpy_s(*text1, strlen(strBuffer[idx].c_str()) + 1, strBuffer[idx].c_str());
	    }
	}
    if (*text2 != nullptr) {
        auto it = replacementMap.find(std::string(*text2));
        if (it != replacementMap.end()) {
            int idx = it->second;
            strcpy_s(*text2, strlen(strBuffer[idx].c_str()) + 1, strBuffer[idx].c_str());
        }
    }
}

void replace_text2(char* text) {
    if (text == nullptr) return;
    auto it = replacementMap.find(std::string(text));
    if (it != replacementMap.end()) {
        int idx = it->second;
        strcpy_s(text, strlen(strBuffer[idx].c_str()) + 1, strBuffer[idx].c_str());
    }
}

void __declspec(naked) HookFunction_replacetext1()//普通文本
{
    __asm
    {
        pushad
        pushfd

        mov eax, esp
        add eax, 0x24 + 0xc
        push eax
        add eax, 0x4
        push eax
        call replace_text
        add esp, 0x8

        popfd
        popad

        push 0xFFFFFFFF
        push 0x4017697
     
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext2()//选项
{
    __asm
    {
        pushad
        pushfd

        push eax
        call replace_text2
		add esp, 0x4

        popfd
        popad

        call callAddress

        jmp dword ptr[returnAddress2]
    }
}

DWORD pHookedCreateFileW;
DWORD pHookedGetFileSize;
DWORD pHookedReadFile;
DWORD pHookedCloseHandle;

pCreateFileA TrueCreateFileA = CreateFileA;
pGetFileSize TrueGetFileSize = GetFileSize;
pReadFile TrueReadFile = ReadFile;
pCloseHandle TrueCloseHandle = CloseHandle;
pGetFileAttributesA TrueGetFileAttributesA = GetFileAttributesA;
pGetFileType TrueGetFileType = GetFileType;
pSetFilePointer TrueSetFilePointer = SetFilePointer;

struct string_with_pointer {
	int ptr = 0;
	std::string content = "";
};

std::map<std::string, int> FileMap;
std::vector<std::string> FileNames;
string_with_pointer FileBuffer[0x1000];
int pFileBuffer = 0;

std::string packname = "EXHIBIT_CHS.CPK";

void initPackage() {
	CustomPack::readPackHeader(packname, FileNames);
	for (const auto& fileName : FileNames) {
		if (CustomPack::isInPack(packname, fileName)) {
			std::cout << "Loading file: " << fileName << std::endl;
			FileBuffer[pFileBuffer].ptr = 0;
			FileBuffer[pFileBuffer].content = CustomPack::getFile(packname, enc, fileName);
			FileMap[fileName] = pFileBuffer;
			pFileBuffer++;
		}
	}
}

HANDLE WINAPI HookedCreateFileA(LPCSTR lpFileName,
	DWORD dwDesiredAccess,
	DWORD dwShareMode,
	LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	DWORD dwCreationDisposition,
	DWORD dwFlagsAndAttributes,
	HANDLE hTemplateFile) {
	std::cout << "Hooked CreateFileA: " << lpFileName << std::endl;
	if (lpFileName != nullptr) {
		std::string fullPath(lpFileName);
		if (fullPath == "yscfg.ybn") {
			return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
		}
		std::string fileNameA = std::filesystem::path(fullPath).filename().string();
		//std::string fileNameA = WideStringToGBKLPCSTR(fileName);
		std::transform(fileNameA.begin(), fileNameA.end(), fileNameA.begin(), ::tolower);
		auto it = FileMap.find(fileNameA);
		if (it != FileMap.end()) {
			int index = it->second;
			if (index < pFileBuffer) {
				std::cout << "Replace: " << fileNameA << std::endl;
				return reinterpret_cast<HANDLE>(&FileBuffer[index]);
			}
		}
		std::cout << "Not found in pack: " << fileNameA << std::endl;
	}

	return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
}

BOOL WINAPI HookedReadFile(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped) {
	//std::cout << "Hooked ReadFile: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			std::cout << "Replace Reading file: " << FileNames[i] << std::endl;
			std::string data = FileBuffer[i].content;
			if (nNumberOfBytesToRead + FileBuffer[i].ptr > data.size()) {
				nNumberOfBytesToRead = data.size() - FileBuffer[i].ptr;
			}
			memcpy(lpBuffer, data.c_str() + FileBuffer[i].ptr, nNumberOfBytesToRead);
			*lpNumberOfBytesRead = nNumberOfBytesToRead;
			FileBuffer[i].ptr += nNumberOfBytesToRead; // Update pointer position
			return TRUE;
		}
	}
	return TrueReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
}

BOOL WINAPI HookedCloseHandle(HANDLE hObject) {
	//std::cout << "Hooked CloseHandle: " << hObject << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hObject) {
			FileBuffer[i].ptr = 0;
			std::cout << "Closing handle for file: " << FileNames[i] << std::endl;
			return TRUE;
		}
	}
	return TrueCloseHandle(hObject);
}

DWORD WINAPI HookedGetFileType(HANDLE hFile) {
	//std::cout << "GetFileType: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			return FILE_TYPE_DISK; // Assuming disk type for files in the pack
		}
	}
	return TrueGetFileType(hFile);
}

DWORD WINAPI HookedGetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh) {
	//std::cout << "Hooked GetFileSize: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			DWORD size = FileBuffer[i].content.size();
			if (lpFileSizeHigh) {
				*lpFileSizeHigh = 0;
			}
			return size;
		}
	}
	return TrueGetFileSize(hFile, lpFileSizeHigh);
}

DWORD WINAPI HookedGetFileAttributesA(LPCSTR lpFileName) {
	std::string fullPath(lpFileName);
	std::string fileNameA = std::filesystem::path(fullPath).filename().string();
	std::transform(fileNameA.begin(), fileNameA.end(), fileNameA.begin(), ::tolower);
	std::cout << "GetFileAttributesA: " << fileNameA.c_str() << std::endl;
	if (CustomPack::isInPack(packname, fileNameA)) {
		std::cout << "File found in pack: " << fileNameA << std::endl;
		return FILE_ATTRIBUTE_NORMAL; // Assuming normal attributes for files in the pack
	}
	return TrueGetFileAttributesA(lpFileName);
}

DWORD WINAPI HookedSetFilePointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod) {
	//std::cout << "Hooked SetFilePointer: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			//std::cout << "Setting file pointer for: " << FileNames[i] << std::endl;
			if (lpDistanceToMoveHigh) {
				*lpDistanceToMoveHigh = 0;
			}
			if (dwMoveMethod == FILE_BEGIN) {
				FileBuffer[i].ptr = lDistanceToMove; // Set pointer to the new position
			}
			else if (dwMoveMethod == FILE_CURRENT) {
				FileBuffer[i].ptr += lDistanceToMove; // Move pointer relative to current position
			}
			else if (dwMoveMethod == FILE_END) {
				FileBuffer[i].ptr = FileBuffer[i].content.size() + lDistanceToMove; // Move pointer relative to end of file
			}
			return FileBuffer[i].ptr; // Adjust pointer based on distance
		}
	}
	return TrueSetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);
}


void InstallHook_replacetext()
{
    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");
    //普通文本
    DWORD oldProtect;
    originalFuncAddr = baseAddress + 0x4a640;
    returnAddress = originalFuncAddr + 7;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr = baseAddress + 0x7B9E6;
    returnAddress2 = originalFuncAddr + 5;
    callAddress = baseAddress + 0x188860;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

	//MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);
    //newFontName = L"黑体";
    //installFontHook_main(1, 1, 1, 0);
    install_hook_textreplaceFromPackEx(2, "EXHIBIT_CHS.CPK", "data2.bin", enc);

	initPackage();
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourAttach(&(PVOID&)TrueCreateFileA, HookedCreateFileA);
	DetourAttach(&(PVOID&)TrueGetFileSize, HookedGetFileSize);
	DetourAttach(&(PVOID&)TrueReadFile, HookedReadFile);
	DetourAttach(&(PVOID&)TrueCloseHandle, HookedCloseHandle);
	DetourAttach(&(PVOID&)TrueGetFileAttributesA, HookedGetFileAttributesA);
	DetourAttach(&(PVOID&)TrueGetFileType, HookedGetFileType);
	DetourAttach(&(PVOID&)TrueSetFilePointer, HookedSetFilePointer);
	DetourTransactionCommit();
}

