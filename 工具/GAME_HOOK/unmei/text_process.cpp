//#include "textReplacer.h"
#include "hookFont.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>
# include "CHS_PACK_LIB.h"
# pragma comment(lib, "CHS_PACK_LIB.lib")
# pragma comment(lib, "zlib.lib")

std::string enc = "Gackoh";
std::string packname = "Gackoh_CHS.CPK";


DWORD originalFuncAddr;
DWORD pHookedCreateFileW;
DWORD pHookedGetFileSize;
DWORD pHookedReadFile;
DWORD pHookedCloseHandle;

pCreateFileW TrueCreateFileW;
pGetFileSize TrueGetFileSize;
pReadFile TrueReadFile;
pCloseHandle TrueCloseHandle;

std::map<std::string, int> FileMap;
std::vector<std::string> FileNames;
std::string FileBuffer[0x1000];
int pFileBuffer = 0;

void initPackage() {
	CustomPack::readPackHeader(packname, FileNames);
	for (const auto& fileName : FileNames) {
		if (CustomPack::isInPack(packname, fileName)) {
			std::cout << "Loading file: " << fileName << std::endl;
			FileBuffer[pFileBuffer] = CustomPack::getFile(packname, enc, fileName);
			FileMap[fileName] = pFileBuffer;
			pFileBuffer++;
		}
	}
}

HANDLE WINAPI HookedCreateFileW(LPCWSTR lpFileName,  
   DWORD dwDesiredAccess,  
   DWORD dwShareMode,  
   LPSECURITY_ATTRIBUTES lpSecurityAttributes,  
   DWORD dwCreationDisposition,  
   DWORD dwFlagsAndAttributes,  
   HANDLE hTemplateFile) {  
	//std::wcout << L"Hooked CreateFileW: " << lpFileName << std::endl;
	if (lpFileName != nullptr) {
	   std::wstring fullPath(lpFileName);  
	   std::wstring fileName = std::filesystem::path(fullPath).filename().wstring(); 
	   std::string fileNameA = WideStringToGBKLPCSTR(fileName);
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

   return TrueCreateFileW(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);  
}

BOOL WINAPI HookedReadFile(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped) {
	//std::cout << "Hooked ReadFile: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			std::cout << "Replace Reading file: " << FileNames[i] << std::endl;
			std::string data = FileBuffer[i];
			if (nNumberOfBytesToRead > data.size()) {
				nNumberOfBytesToRead = data.size();
			}
			memcpy(lpBuffer, data.c_str(), nNumberOfBytesToRead);
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
			std::cout << "Closing handle for file: " << FileNames[i] << std::endl;
			return TRUE;
		}
	}
	return TrueCloseHandle(hObject);
}

DWORD WINAPI HookedGetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh) {
	//std::cout << "Hooked GetFileSize: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			DWORD size = FileBuffer[i].size();
			if (lpFileSizeHigh) {
				*lpFileSizeHigh = 0;
			}
			return size;
		}
	}
	return TrueGetFileSize(hFile, lpFileSizeHigh);
}


void InstallHook_replacetext()
{
	initPackage();
	//DetourTransactionBegin();
	//DetourUpdateThread(GetCurrentThread());
	//DetourAttach(&(PVOID&)TrueCreateFileW, HookedCreateFileW);
	//DetourAttach(&(PVOID&)TrueGetFileSize, HookedGetFileSize);
	//DetourAttach(&(PVOID&)TrueReadFile, HookedReadFile);
	//DetourAttach(&(PVOID&)TrueCloseHandle, HookedCloseHandle);
	//DetourTransactionCommit();


	DWORD oldProtect;
	originalFuncAddr = 0x0047CE51;
	TrueCreateFileW = **(pCreateFileW**)(originalFuncAddr + 2);
	VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	pHookedCreateFileW = (DWORD)&HookedCreateFileW;
	*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedCreateFileW;
	VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

	originalFuncAddr = 0x0047D035;
	TrueGetFileSize = **(pGetFileSize**)(originalFuncAddr + 2);
	VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	pHookedGetFileSize = (DWORD)&HookedGetFileSize;
	*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedGetFileSize;
	VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

	originalFuncAddr = 0x0047D0B3;
	TrueReadFile = **(pReadFile**)(originalFuncAddr + 2);
	VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	pHookedReadFile = (DWORD)&HookedReadFile;
	*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedReadFile;
	VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);

	originalFuncAddr = 0x0047D0DC;
	TrueCloseHandle = **(pCloseHandle**)(originalFuncAddr + 2);
	VirtualProtect((LPVOID)originalFuncAddr, 6, PAGE_EXECUTE_READWRITE, &oldProtect);
	pHookedCloseHandle = (DWORD)&HookedCloseHandle;
	*(DWORD*)(originalFuncAddr + 2) = (DWORD)&pHookedCloseHandle;
	VirtualProtect((LPVOID)originalFuncAddr, 6, oldProtect, &oldProtect);


    newFontName = L"Simsun";
    installFontHook_main(1, 1, 1, 0);
	//MessageBoxW(NULL, L"1", L"提示", MB_OK | MB_ICONINFORMATION);
}

