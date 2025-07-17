//#include "textReplacer.h"
#include "hookFont.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include "textReplacer.h"
#include <iostream>
# include "CHS_PACK_LIB.h"
# pragma comment(lib, "CHS_PACK_LIB.lib")
# pragma comment(lib, "zlib.lib")

std::string enc = "sentinel_hd";
std::string packname = "sentinel_hd_CHS.CPK";


DWORD originalFuncAddr;
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
	int ptr;
	std::string content;
};

std::map<std::string, int> FileMap;
std::vector<std::string> FileNames;
string_with_pointer FileBuffer[0x1000];
int pFileBuffer = 0;

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


	//DWORD oldProtect;
	//originalFuncAddr = 0x0047CE51;
	//TrueCreateFileW = **(pCreateFileW**)(originalFuncAddr + 2);
	//VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	//pHookedCreateFileW = (DWORD)&HookedCreateFileW;
	//*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedCreateFileW;
	//VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

	//originalFuncAddr = 0x0047D035;
	//TrueGetFileSize = **(pGetFileSize**)(originalFuncAddr + 2);
	//VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	//pHookedGetFileSize = (DWORD)&HookedGetFileSize;
	//*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedGetFileSize;
	//VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

	//originalFuncAddr = 0x0047D0B3;
	//TrueReadFile = **(pReadFile**)(originalFuncAddr + 2);
	//VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	//pHookedReadFile = (DWORD)&HookedReadFile;
	//*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedReadFile;
	//VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

	//originalFuncAddr = 0x0047D0DC;
	//TrueCloseHandle = **(pCloseHandle**)(originalFuncAddr + 2);
	//VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	//pHookedCloseHandle = (DWORD)&HookedCloseHandle;
	//*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedCloseHandle;
	//VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);


    newFontName = L"Simsun";
    installFontHook_main(1, 1, 1, 0);
	//MessageBoxW(NULL, L"1", L"提示", MB_OK | MB_ICONINFORMATION);
	install_hook_textreplaceFromPackEx(1, packname, "data2.bin", enc);
}

