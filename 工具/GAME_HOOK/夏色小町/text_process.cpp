#include "textReplacer.h"
#include <filesystem>
#include <iostream>
#include "HookTitle.h"
#include "text_process.h"
#include "CHS_PACK_LIB.h"
#include "hookFont.h"

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

std::string enc = "NTK";

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
pModifyMenuA TrueModifyMenuA = ModifyMenuA;

struct string_with_pointer {
	int ptr = 0;
	std::string content = "";
};

std::map<std::string, int> FileMap;
std::vector<std::string> FileNames;
string_with_pointer FileBuffer[0x1000];
int pFileBuffer = 0;

std::string packname = "NTK_CHS.CPK";

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
		//if (fullPath == "yscfg.ybn") {
		//	return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
		//}
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

BOOL WINAPI HookedModifyMenuA(HMENU hMenu, UINT uPosition, UINT uFlags, UINT_PTR uIDNewItem, LPCSTR lpNewItem) {
	if (!(uFlags&MF_BITMAP) && !(uFlags& MF_OWNERDRAW)) {
		std::string ori(lpNewItem);
		std::wstring new_str = changeText(ori);
		return ModifyMenuW(hMenu, uPosition, uFlags, uIDNewItem, new_str.c_str());
	}
	return TrueModifyMenuA(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem);
}


void InstallHook_replacetext()
{
    install_hook_textreplaceFromPackEx(1, "NTK_CHS.CPK", "data2.bin", enc);

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
	DetourAttach(&(PVOID&)TrueModifyMenuA, HookedModifyMenuA);
	DetourTransactionCommit();

	//newCharset = 0x86;
	//newFontName = L"Simsun";
	//installFontHook_main(1, 1, 1, 0);
}

